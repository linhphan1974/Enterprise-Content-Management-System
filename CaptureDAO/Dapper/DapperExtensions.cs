// <auto-generated />
using Dapper;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Data;
using System.Dynamic;
using System.Globalization;
using System.Linq.Expressions;
using System.Linq;
using System.Reflection;
using System.Text;
using System;

// Dapper Extensions
// Extensions for Dapper to handle basic CRUD operations

// Generated: 11/30/2011 14:41:58
// Website: https://github.com/tmsmith/Dapper-Extensions
// License: http://www.apache.org/licenses/LICENSE-2.0

namespace DapperExtensions
{
    // Begin DapperExtensions\ClassMapper.cs

    public interface IClassMapper
    {
        string SchemaName { get; }
        string TableName { get; }
        IList<IPropertyMap> Properties { get; }
    }

    public interface IClassMapper<T> : IClassMapper where T : class
    {
    }

    public class ClassMapper<T> : IClassMapper<T> where T : class
    {
        public string SchemaName { get; private set; }
        public string TableName { get; private set; }
        public IList<IPropertyMap> Properties { get; private set; }

        public ClassMapper()
        {
            Properties = new List<IPropertyMap>();
            Table(typeof(T).Name);
        }

        public virtual void Schema(string schemaName)
        {
            SchemaName = schemaName;
        }

        public virtual void Table(string tableName)
        {
            TableName = tableName;
        }

        protected virtual void AutoMap()
        {
            Type type = typeof(T);
            bool keyFound = Properties.Any(p => p.KeyType != KeyType.NotAKey);
            foreach (var propertyInfo in type.GetProperties())
            {
                if (Properties.Any(p => p.Name.Equals(propertyInfo.Name, StringComparison.InvariantCultureIgnoreCase)))
                {
                    continue;
                }

                PropertyMap map = Map(propertyInfo);

                if (!keyFound && map.PropertyInfo.Name.EndsWith("id", true, CultureInfo.InvariantCulture))
                {
                    if (map.PropertyInfo.PropertyType == typeof(int))
                    {
                        map.Key(KeyType.Identity);
                    }
                    else if (map.PropertyInfo.PropertyType == typeof(Guid))
                    {
                        map.Key(KeyType.Guid);
                    }
                    else
                    {
                        map.Key(KeyType.Assigned);
                    }

                    keyFound = true;
                }
            }
        }

        protected PropertyMap Map(Expression<Func<T, object>> expression)
        {
            PropertyInfo propertyInfo = ReflectionHelper.GetProperty(expression) as PropertyInfo;
            return Map(propertyInfo);
        }

        protected PropertyMap Map(PropertyInfo propertyInfo)
        {
            PropertyMap result = new PropertyMap(propertyInfo);
            Properties.Add(result);
            return result;
        }
    }

    public class AutoClassMapper<T> : ClassMapper<T> where T : class
    {
        public AutoClassMapper()
        {
            Type type = typeof(T);
            Table(type.Name);
            AutoMap();
        }
    }

    public class PlurizedAutoClassMapper<T> : AutoClassMapper<T> where T : class
    {
        public override void Table(string tableName)
        {
            base.Table(tableName + "s");
        }
    }
    // End DapperExtensions\ClassMapper.cs
    // Begin DapperExtensions\DapperExtensions.cs

    public static class DapperExtensions
    {
        public static bool IsUsingSqlCe { get; set; }
        public static Type DefaultMapper { get; private set; }

        private static readonly List<Type> _simpleTypes;
        private static readonly ConcurrentDictionary<Type, IClassMapper> _classMaps = new ConcurrentDictionary<Type, IClassMapper>();

        static DapperExtensions()
        {
            DefaultMapper = typeof(AutoClassMapper<>);

            _simpleTypes = new List<Type>
                               {
                                   typeof(byte),
                                   typeof(sbyte),
                                   typeof(short),
                                   typeof(ushort),
                                   typeof(int),
                                   typeof(uint),
                                   typeof(long),
                                   typeof(ulong),
                                   typeof(float),
                                   typeof(double),
                                   typeof(decimal),
                                   typeof(bool),
                                   typeof(string),
                                   typeof(char),
                                   typeof(Guid),
                                   typeof(DateTime),
                                   typeof(DateTimeOffset),
                                   typeof(byte[])
                               };
        }

        public static T Get<T>(this IDbConnection connection, dynamic id, IDbTransaction transaction = null, int? commandTimeout = null) where T : class
        {
            IClassMapper classMap = GetMap<T>();
            string sql = SqlGenerator.Get(classMap);
            bool isSimpleType = IsSimpleType(id.GetType());
            IDictionary<string, object> paramValues = null;
            if (!isSimpleType)
            {
                paramValues = ReflectionHelper.GetObjectValues(id);
            }

            DynamicParameters parameters = new DynamicParameters();
            var keys = classMap.Properties.Where(p => p.KeyType != KeyType.NotAKey);
            foreach (var key in keys)
            {
                object value = id;
                if (!isSimpleType)
                {
                    value = paramValues[key.Name];
                }

                parameters.Add("@" + key.Name, value);
            }

            
            T result = connection.Query<T>(sql, parameters, transaction, true, commandTimeout, CommandType.Text).SingleOrDefault();
            return result;
        }

        public static dynamic Insert<T>(this IDbConnection connection, T entity, IDbTransaction transaction = null, int? commandTimeout = null) where T : class
        {
            IClassMapper classMap = GetMap<T>();
            string sql = SqlGenerator.Insert(classMap);
            connection.Execute(sql, entity, transaction, commandTimeout, CommandType.Text);
            IDictionary<string, object> keyValues = new ExpandoObject();

            foreach (var column in classMap.Properties.Where(p => p.KeyType != KeyType.NotAKey))
            {
                if (column.KeyType == KeyType.Identity)
                {
                    string identitySql = SqlGenerator.IdentitySql(classMap);
                    var identityId = connection.Query(identitySql, null, transaction, true, commandTimeout, CommandType.Text);
                    keyValues.Add(column.Name, (int)identityId.First().Id);
                }

                if (column.KeyType == KeyType.Guid)
                {
                    Guid comb = GetNextGuid();
                    keyValues.Add(column.Name, comb);
                }

                if (column.KeyType == KeyType.Assigned)
                {
                    keyValues.Add(column.Name, column.PropertyInfo.GetValue(entity, null));
                }
            }

            if (keyValues.Count == 1)
            {
                return keyValues.First().Value;
            }

            return keyValues;
        }

        public static bool Update<T>(this IDbConnection connection, T entity, IDbTransaction transaction = null, int? commandTimeout = null) where T : class
        {
            IClassMapper classMap = GetMap<T>();
            string sql = SqlGenerator.Update(classMap);
            return connection.Execute(sql, entity, transaction, commandTimeout, CommandType.Text) > 0;
        }

        public static bool Delete<T>(this IDbConnection connection, T entity, IDbTransaction transaction = null, int? commandTimeout = null) where T : class
        {
            IClassMapper classMap = GetMap<T>();
            string sql = SqlGenerator.Delete(classMap);
            return connection.Execute(sql, entity, transaction, commandTimeout, CommandType.Text) > 0;
        }

        public static bool Delete<T>(this IDbConnection connection, IPredicate predicate, IDbTransaction transaction = null, int? commandTimeout = null) where T : class
        {
            IClassMapper classMap = GetMap<T>();
            Dictionary<string, object> parameters = new Dictionary<string, object>();
            string sql = SqlGenerator.Delete(classMap, predicate, parameters);
            DynamicParameters dynamicParameters = new DynamicParameters();
            foreach (var parameter in parameters)
            {
                dynamicParameters.Add(parameter.Key, parameter.Value);
            }

            return connection.Execute(sql, dynamicParameters, transaction, commandTimeout, CommandType.Text) > 0;
        }

        public static IEnumerable<T> GetList<T>(this IDbConnection connection, IPredicate predicate = null, IList<ISort> sort = null, IDbTransaction transaction = null, int? commandTimeout = null, bool buffered = false) where T : class
        {
            IClassMapper classMap = GetMap<T>();
            Dictionary<string, object> parameters = new Dictionary<string, object>();
            string sql = SqlGenerator.GetList(classMap, predicate, sort, parameters);
            DynamicParameters dynamicParameters = new DynamicParameters();
            foreach (var parameter in parameters)
            {
                dynamicParameters.Add(parameter.Key, parameter.Value);
            }

            return connection.Query<T>(sql, dynamicParameters, transaction, buffered, commandTimeout, CommandType.Text);
        }

        public static IEnumerable<T> GetPage<T>(this IDbConnection connection, IPredicate predicate, IList<ISort> sort, int page, int resultsPerPage, IDbTransaction transaction = null, int? commandTimeout = null, bool buffered = false) where T : class
        {
            IClassMapper classMap = GetMap<T>();
            Dictionary<string, object> parameters = new Dictionary<string, object>();
            string sql = SqlGenerator.GetPage(classMap, predicate, sort, page, resultsPerPage, parameters);
            DynamicParameters dynamicParameters = new DynamicParameters();
            foreach (var parameter in parameters)
            {
                dynamicParameters.Add(parameter.Key, parameter.Value);
            }

            return connection.Query<T>(sql, dynamicParameters, transaction, buffered, commandTimeout, CommandType.Text);
        }

        public static int Count<T>(this IDbConnection connection, IPredicate predicate, IDbTransaction transaction = null, int? commandTimeout = null, bool buffered = false) where T : class
        {
            IClassMapper classMap = GetMap<T>();
            Dictionary<string, object> parameters = new Dictionary<string, object>();
            string sql = SqlGenerator.Count(classMap, predicate, parameters);
            DynamicParameters dynamicParameters = new DynamicParameters();
            foreach (var parameter in parameters)
            {
                dynamicParameters.Add(parameter.Key, parameter.Value);
            }

            return (int)connection.Query(sql, dynamicParameters, transaction, buffered, commandTimeout, CommandType.Text).Single().Total;
        }

        public static IClassMapper GetMap<T>() where T : class
        {
            Type entityType = typeof(T);
            IClassMapper map;
            if (!_classMaps.TryGetValue(entityType, out map))
            {
                Type[] types = entityType.Assembly.GetTypes();
                Type mapType = (from type in types
                                let interfaceType = type.GetInterface(typeof(IClassMapper<>).FullName)
                                where interfaceType != null && interfaceType.GetGenericArguments()[0] == entityType
                                select type).SingleOrDefault();

                if (mapType == null)
                {
                    mapType = DefaultMapper.MakeGenericType(typeof(T));
                }

                map = Activator.CreateInstance(mapType) as IClassMapper;
                _classMaps[entityType] = map;
            }

            return map;
        }

        public static void ClearCache()
        {
            _classMaps.Clear();
        }

        public static bool IsSimpleType(Type type)
        {
            Type actualType = type;
            if (type.IsGenericType && type.GetGenericTypeDefinition() == typeof(Nullable<>))
            {
                actualType = type.GetGenericArguments()[0];
            }

            return _simpleTypes.Contains(actualType);
        }

        public static Guid GetNextGuid()
        {
            byte[] b = Guid.NewGuid().ToByteArray();
            DateTime dateTime = new DateTime(1900, 1, 1);
            DateTime now = DateTime.Now;
            TimeSpan timeSpan = new TimeSpan(now.Ticks - dateTime.Ticks);
            TimeSpan timeOfDay = now.TimeOfDay;
            byte[] bytes1 = BitConverter.GetBytes(timeSpan.Days);
            byte[] bytes2 = BitConverter.GetBytes((long)(timeOfDay.TotalMilliseconds / 3.333333));
            Array.Reverse(bytes1);
            Array.Reverse(bytes2);
            Array.Copy(bytes1, bytes1.Length - 2, b, b.Length - 6, 2);
            Array.Copy(bytes2, bytes2.Length - 4, b, b.Length - 4, 4);
            return new Guid(b);
        }

        private static string AppendStrings(this IEnumerable<string> list, string seperator = ", ")
        {
            return list.Aggregate(
                new StringBuilder(),
                (sb, s) => (sb.Length == 0 ? sb : sb.Append(seperator)).Append(s),
                sb => sb.ToString());
        }

        public static class SqlGenerator
        {
            public static string Get(IClassMapper classMap)
            {
                if (!classMap.Properties.Any(c => c.KeyType != KeyType.NotAKey))
                {
                    throw new ArgumentException("At least one Key column must be defined.");
                }

                return string.Format("SELECT {0} FROM {1} WHERE {2}",
                    BuildSelectColumns(classMap),
                    GetTableName(classMap),
                    BuildWhere(classMap));
            }

            public static string Insert(IClassMapper classMap)
            {
                if (classMap.Properties.Count(c => c.KeyType == KeyType.Identity) > 1)
                {
                    throw new ArgumentException("Can only set 1 property to Identity.");
                }

                var columns = classMap.Properties.Where(p => !(p.Ignored || p.IsReadOnly || p.KeyType == KeyType.Identity));
                var columnNames = columns.Select(p => GetColumnName(classMap, p, false));
                var parameters = columns.Select(p => "@" + p.Name);

                return string.Format("INSERT INTO {0} ({1}) VALUES ({2})",
                                     GetTableName(classMap),
                                     columnNames.AppendStrings(),
                                     parameters.AppendStrings());
            }

            public static string Update(IClassMapper classMap)
            {
                if (!classMap.Properties.Any(c => c.KeyType != KeyType.NotAKey))
                {
                    throw new ArgumentException("At least one Key column must be defined.");
                }

                var columns = classMap.Properties.Where(p => !(p.Ignored || p.IsReadOnly || p.KeyType == KeyType.Identity));
                var setSql = columns.Select(p => GetColumnName(classMap, p, false) + " = @" + p.Name);
                return string.Format("UPDATE {0} SET {1} WHERE {2}",
                    GetTableName(classMap),
                    setSql.AppendStrings(),
                    BuildWhere(classMap));
            }

            public static string Delete(IClassMapper classMap)
            {
                if (!classMap.Properties.Any(c => c.KeyType != KeyType.NotAKey))
                {
                    throw new ArgumentException("At least one Key column must be defined.");
                }

                return string.Format("DELETE FROM {0} WHERE {1}",
                    GetTableName(classMap),
                    BuildWhere(classMap));
            }

            public static string Delete(IClassMapper classMap, IPredicate predicate, IDictionary<string, object> parameters)
            {
                StringBuilder sql = new StringBuilder(string.Format("DELETE FROM {0}", GetTableName(classMap)));
                if (predicate != null)
                {
                    sql.Append(" WHERE ")
                        .Append(predicate.GetSql(parameters));
                }

                return sql.ToString();
            }

            public static string GetList(IClassMapper classMap, IPredicate predicate, IList<ISort> sort, IDictionary<string, object> parameters)
            {
                StringBuilder sql = new StringBuilder(string.Format("SELECT {0} FROM {1}",
                    BuildSelectColumns(classMap),
                    GetTableName(classMap)));
                if (predicate != null)
                {
                    sql.Append(" WHERE ")
                        .Append(predicate.GetSql(parameters));
                }

                if (sort != null && sort.Any())
                {
                    sql.Append(" ORDER BY ")
                        .Append(sort.Select(s => GetColumnName(classMap, s.PropertyName, false) + (s.Ascending ? " ASC" : " DESC")).AppendStrings());
                }

                return sql.ToString();
            }

            public static string GetPage(IClassMapper classMap, IPredicate predicate, IList<ISort> sort, int page, int resultsPerPage, IDictionary<string, object> parameters)
            {
                if (sort == null || !sort.Any())
                {
                    throw new ArgumentException("Sort must be supplied for GetPage.");
                }

                StringBuilder innerSql = new StringBuilder(string.Format("SELECT {0} FROM {1}",
                    BuildSelectColumns(classMap),
                    GetTableName(classMap)));
                if (predicate != null)
                {
                    innerSql.Append(" WHERE ")
                        .Append(predicate.GetSql(parameters));
                }

                string orderBy = sort.Select(s => GetColumnName(classMap, s.PropertyName, false) + (s.Ascending ? " ASC" : " DESC")).AppendStrings();
                string sql;
                if (IsUsingSqlCe)
                {
                    sql = string.Format("{0} ORDER BY {1} OFFSET @pageStartRowNbr ROWS FETCH NEXT @resultsPerPage ROWS ONLY", innerSql, orderBy);
                    int startValue = ((page - 1) * resultsPerPage);
                    parameters.Add("@pageStartRowNbr", startValue);
                    parameters.Add("@resultsPerPage", resultsPerPage);
                }
                else
                {
                    var projColumns = classMap.Properties.Select(p => "proj.[" + p.Name + "]");
                    sql = string.Format("SELECT {0} FROM ({1} ORDER BY {2}) proj WHERE proj.[RowNbr] BETWEEN @pageStartRowNbr AND @pageStopRowNbr ORDER BY proj.[RowNbr]",
                        projColumns.AppendStrings(), innerSql, orderBy);

                    int startValue = (page * resultsPerPage) + 1;
                    parameters.Add("@pageStartRowNbr", startValue);
                    parameters.Add("@pageStopRowNbr", startValue + resultsPerPage);
                }

                return sql;
            }

            public static string IdentitySql(IClassMapper classMap)
            {
                if (IsUsingSqlCe)
                {
                    return "SELECT @@IDENTITY AS [Id]";
                }

                return string.Format("SELECT IDENT_CURRENT('{0}') AS [Id]", GetTableName(classMap));
            }

            public static string Count(IClassMapper classMap, IPredicate predicate, IDictionary<string, object> parameters)
            {
                return string.Format("SELECT COUNT(*) Total FROM {0} WHERE {1}",
                    GetTableName(classMap),
                    predicate.GetSql(parameters));
            }

            public static string GetTableName(IClassMapper map)
            {
                string result = (string.IsNullOrWhiteSpace(map.SchemaName) ? null : "[" + map.SchemaName + "].") + "[" + map.TableName + "]";
                return result;
            }

            public static string GetColumnName(IClassMapper map, IPropertyMap property, bool includeAlias)
            {
                string result = GetTableName(map) + ".[" + property.ColumnName + "]";
                if (property.ColumnName == property.Name || !includeAlias)
                {
                    return result;
                }

                return result + " AS [" + property.Name + "]";
            }

            public static string GetColumnName(IClassMapper map, string propertyName, bool includeAlias)
            {
                IPropertyMap propertyMap = map.Properties.Where(p => p.Name.Equals(propertyName, StringComparison.InvariantCultureIgnoreCase)).SingleOrDefault();
                if (propertyMap == null)
                {
                    throw new ArgumentException(string.Format("Could not find '{0}' in Mapping.", propertyName));
                }

                return GetColumnName(map, propertyMap, includeAlias);
            }

            private static string BuildSelectColumns(IClassMapper classMap)
            {
                var columns = classMap.Properties.Where(p => !p.Ignored).Select(p => GetColumnName(classMap, p, true));
                return columns.AppendStrings();
            }

            private static string BuildWhere(IClassMapper classMap)
            {
                var where = classMap.Properties
                    .Where(p => p.KeyType != KeyType.NotAKey)
                    .Select(p => GetColumnName(classMap, p, false) + " = @" + p.Name);
                return where.AppendStrings(" AND ");
            }
        }
    }
    // End DapperExtensions\DapperExtensions.cs
    // Begin DapperExtensions\Predicates.cs

    public static class Predicates
    {
        public static IFieldPredicate<T> Field<T>(Expression<Func<T, object>> expression, Operator op, object value, bool not = false) where T : class
        {
            PropertyInfo propertyInfo = ReflectionHelper.GetProperty(expression) as PropertyInfo;
            return new FieldPredicate<T>
                       {
                           PropertyName = propertyInfo.Name,
                           Operator = op,
                           Value = value,
                           Not = not
                       };
        }

        public static IPredicateGroup Group<T>(GroupOperator op, params IFieldPredicate<T>[] predicate) where T : class
        {
            return new PredicateGroup
                       {
                           Operator = op,
                           Predicates = predicate
                       };
        }

        public static ISort Sort<T>(Expression<Func<T, object>> expression, bool ascending = true)
        {
            PropertyInfo propertyInfo = ReflectionHelper.GetProperty(expression) as PropertyInfo;
            return new Sort
                       {
                           PropertyName = propertyInfo.Name,
                           Ascending = ascending
                       };
        }
    }

    public interface IPredicate
    {
        string GetSql(IDictionary<string, object> parameters);
    }

    public interface IFieldPredicate<T> : IPredicate
    {
        string PropertyName { get; set; }
        Operator Operator { get; set; }
        object Value { get; set; }
        bool Not { get; set; }
    }

    public class FieldPredicate<T> : IFieldPredicate<T> where T : class
    {
        public string PropertyName { get; set; }
        public Operator Operator { get; set; }
        public object Value { get; set; }
        public bool Not { get; set; }

        public string GetSql(IDictionary<string, object> parameters)
        {
            IClassMapper map = DapperExtensions.GetMap<T>();
            IPropertyMap propertyMap = map.Properties.Single(p => p.Name == PropertyName);
            string columnName = DapperExtensions.SqlGenerator.GetColumnName(map, propertyMap, false);
            if (Value == null)
            {
                return string.Format("({0} IS {1}NULL)", columnName, Not ? "NOT " : string.Empty);
            }

            string parameterName = string.Format("@{0}p{1}", PropertyName, parameters.Count);
            parameters.Add(parameterName, Value);
            return string.Format("({0} {1} {2})", columnName, GetOperatorString(), parameterName);
        }

        public string GetOperatorString()
        {
            switch (Operator)
            {
                case Operator.Gt:
                    return Not ? "<=" : ">";
                case Operator.Ge:
                    return Not ? "<" : ">=";
                case Operator.Lt:
                    return Not ? ">=" : "<";
                case Operator.Le:
                    return Not ? ">" : "<=";
                case Operator.Like:
                    return Not ? "NOT LIKE" : "LIKE";
                default:
                    return Not ? "<>" : "=";
            }
        }
    }

    public enum Operator
    {
        Eq,
        Gt,
        Ge,
        Lt,
        Le,
        Like
    }

    public interface IPredicateGroup : IPredicate
    {
        GroupOperator Operator { get; set; }
        IList<IPredicate> Predicates { get; set; }
    }

    public class PredicateGroup : IPredicateGroup
    {
        public GroupOperator Operator { get; set; }
        public IList<IPredicate> Predicates { get; set; }
        public string GetSql(IDictionary<string, object> parameters)
        {
            string seperator = Operator == GroupOperator.And ? " AND " : " OR ";
            return "(" + Predicates.Aggregate(new StringBuilder(),
                                        (sb, p) => (sb.Length == 0 ? sb : sb.Append(seperator)).Append(p.GetSql(parameters)),
                                        sb => sb.ToString()) + ")";
        }
    }

    public interface ISort
    {
        string PropertyName { get; set; }
        bool Ascending { get; set; }
    }

    public class Sort : ISort
    {
        public string PropertyName { get; set; }
        public bool Ascending { get; set; }
    }

    public enum GroupOperator
    {
        And,
        Or
    }
    // End DapperExtensions\Predicates.cs
    // Begin DapperExtensions\PropertyMap.cs

    public interface IPropertyMap
    {
        string Name { get; }
        string ColumnName { get; }
        bool Ignored { get; }
        bool IsReadOnly { get; }
        KeyType KeyType { get; }
        PropertyInfo PropertyInfo { get; }
    }

    public class PropertyMap : IPropertyMap
    {
        public PropertyMap(PropertyInfo propertyInfo)
        {
            PropertyInfo = propertyInfo;
            ColumnName = PropertyInfo.Name;
        }

        public string Name
        {
            get { return PropertyInfo.Name; }
        }

        public string ColumnName { get; private set; }
        public KeyType KeyType { get; private set; }
        public bool Ignored { get; private set; }
        public bool IsReadOnly { get; private set; }
        public PropertyInfo PropertyInfo { get; private set; }

        public PropertyMap Column(string columnName)
        {
            ColumnName = columnName;
            return this;
        }

        public PropertyMap Key(KeyType keyType)
        {
            if (Ignored)
            {
                throw new ArgumentException(string.Format("'{0}' is ignored and cannot be made a key field. ", Name));
            }

            if (Ignored)
            {
                throw new ArgumentException(string.Format("'{0}' is readonly and cannot be made a key field. ", Name));
            }

            KeyType = keyType;
            return this;
        }

        public PropertyMap Ignore()
        {
            if (KeyType != KeyType.NotAKey)
            {
                throw new ArgumentException(string.Format("'{0}' is a key field and cannot be ignored.", Name));
            }

            Ignored = true;
            return this;
        }

        public PropertyMap ReadOnly()
        {
            if (KeyType != KeyType.NotAKey)
            {
                throw new ArgumentException(string.Format("'{0}' is a key field and cannot be marked readonly.", Name));
            }

            IsReadOnly = true;
            return this;
        }
    }

    public enum KeyType
    {
        NotAKey,
        Identity,
        Guid,
        Assigned
    }
    // End DapperExtensions\PropertyMap.cs
    // Begin DapperExtensions\ReflectionHelper.cs

    public static class ReflectionHelper
    {
        public static MemberInfo GetProperty(LambdaExpression lambda)
        {
            Expression expr = lambda;
            for (; ; )
            {
                switch (expr.NodeType)
                {
                    case ExpressionType.Lambda:
                        expr = ((LambdaExpression)expr).Body;
                        break;
                    case ExpressionType.Convert:
                        expr = ((UnaryExpression)expr).Operand;
                        break;
                    case ExpressionType.MemberAccess:
                        MemberExpression memberExpression = (MemberExpression)expr;
                        MemberInfo mi = memberExpression.Member;
                        return mi;
                    default:
                        return null;
                }
            }
        }

        public static IDictionary<string, object> GetObjectValues(object obj)
        {
            IDictionary<string, object> result = new Dictionary<string, object>();
            if (obj == null)
            {
                return result;
            }


            foreach (var propertyInfo in obj.GetType().GetProperties())
            {
                string name = propertyInfo.Name;
                object value = propertyInfo.GetValue(obj, null);
                if (value == null)
                {
                    continue;
                }

                result[name] = value;
            }

            return result;
        }
    }
    // End DapperExtensions\ReflectionHelper.cs
}

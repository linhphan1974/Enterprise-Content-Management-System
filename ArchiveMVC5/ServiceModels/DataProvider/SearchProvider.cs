using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Ecm.Domain;
using System.Threading;

namespace ArchiveMVC5.Models.DataProvider
{
    public class SearchProvider : ProviderBase
    {
        public SearchProvider(string userName, string password)
        {
            Configure(userName, password);
        }

        /// <summary>
        /// </summary>
        /// <param name="pageIndex">pageIndex</param>
        /// <param name="docTypeId">docTypeId </param>
        /// <param name="searchQuery">searchQuery</param>
        /// <returns></returns>
        public SearchResultModel RunAdvanceSearch(int pageIndex, int pageSize, string sortColumn, string sortDir, Guid docTypeId, SearchQueryModel searchQuery)
        {
            using (var client = GetArchiveClientChannel())
            {
                var result = client.Channel.RunAdvanceSearch(docTypeId, ObjectMapper.GetSearchQuery(searchQuery), pageIndex, pageSize, sortColumn, sortDir);
                var resultModel = GetSearchResult(result, searchQuery, null);
                if (resultModel != null)
                {
                    resultModel.SearchQuery = searchQuery;
                }

                return resultModel;
            }
        }


        /// <summary>
        /// </summary>
        /// <param name="keyword"></param>
        /// <param name="pageIndex"></param>
        /// <returns></returns>
        public List<SearchResultModel> RunGlobalSearch(string keyword, int pageIndex, int pageSize)
        {
            using (var client = GetArchiveClientChannel())
            {
                var results = client.Channel.RunGlobalSearch(keyword, pageIndex, pageSize);
                if (results != null && results.Count > 0)
                {
                    return results.Select(result => GetSearchResult(result, null, keyword)).ToList();
                }

                return null;
            }
        }
        /// <summary>
        /// </summary>
        /// <param name="pageIndex"></param>
        /// <param name="docTypeId"></param>
        /// <param name="text"></param>
        /// <returns></returns>
        public SearchResultModel RunContentSearch(int pageIndex, int pageSize, Guid docTypeId, string text)
        {
            using (var client = GetArchiveClientChannel())
            {
                var result = client.Channel.RunContentSearch(docTypeId, text, pageIndex, pageSize);
                result.Documents = result.Documents.Where(p => p.BinaryType == Common.NATIVE_DOCUMENT || p.BinaryType == Common.COMPOUND_DOCUMENT).ToList();
                result.TotalCount = result.Documents.Count();

                var resultModel = GetSearchResult(result, null, null);
                if (resultModel != null)
                {
                    resultModel.SearchQuery = null;
                }

                return resultModel;
            }
        }
        /// <summary>
        /// </summary>
        /// <param name="pageIndex"></param>
        /// <param name="docTypeId"></param>
        /// <returns></returns>
        public SearchResultModel SearchDocForDeletedDocType(int pageIndex, Guid docTypeId)
        {
            using (var client = GetArchiveClientChannel())
            {
                List<DocumentVersion> docVersions = client.Channel.GetDocumentVersionsByDeletedDocType(docTypeId).ToList();
                DocumentTypeVersion docTypeVersion = client.Channel.GetDocumentTypeVersions().First(d => d.Id == docTypeId);

                SearchResultModel result = new SearchResultModel();
                DocumentTypeModel docType = new DocumentTypeModel
                {
                    CreateBy = docTypeVersion.CreatedBy,
                    CreatedDate = docTypeVersion.CreatedDate,
                    Id = docTypeVersion.Id,
                    ModifiedBy = docTypeVersion.ModifiedBy,
                    ModifiedDate = docTypeVersion.ModifiedDate,
                    Name = docTypeVersion.Name
                };

                result.DocumentType = docType;
                result.DataResult = GetData(docTypeVersion, docVersions);
                return result;
            }
        }
        /// <summary>
        /// </summary>
        /// <param name="docTypeId"></param>
        /// <returns></returns>
        public SearchResultModel SearchDeletedDocument(Guid docTypeId)
        {
            using (var client = GetArchiveClientChannel())
            {
                List<DocumentVersion> docVersions = client.Channel.GetDeletedDocWithExistingDocType(docTypeId).ToList();

                if (docVersions.Count == 0)
                {
                    return null;
                }

                DocumentType docType = client.Channel.GetDocumentType(docVersions[0].DocTypeId);
                SearchResultModel result = new SearchResultModel();
                DocumentTypeModel docTypeModel = ObjectMapper.GetDocumentTypeModel(docType);
                result.DocumentType = docTypeModel;
                result.DataResult = GetDataForDeletedDocument(docType, docVersions);

                return result;
            }
        }
        /// <summary>
        /// </summary>
        /// <returns></returns>
        public SearchResultModel SearchAllDeletedDocument()
        {
            using (var client = GetArchiveClientChannel())
            {
                List<DocumentType> documentTypes = client.Channel.GetDocumentTypes();
                List<DocumentVersion> docVersions = new List<DocumentVersion>();

                foreach (var documentType in documentTypes)
                {
                    List<DocumentVersion> documentVersions = client.Channel.GetDeletedDocWithExistingDocType(documentType.Id).ToList();
                    docVersions.AddRange(documentVersions);
                }

                if (docVersions.Count == 0)
                {
                    return null;
                }

                DocumentType docType = client.Channel.GetDocumentType(docVersions[0].DocTypeId);
                SearchResultModel result = new SearchResultModel();
                DocumentTypeModel docTypeModel = ObjectMapper.GetDocumentTypeModel(docType);
                result.DocumentType = docTypeModel;
                result.DataResult = GetDataForDeletedDocument(docType, docVersions);

                return result;
            }
        }
        /// <summary>
        /// </summary>
        /// <param name="searchResult"></param>
        /// <param name="searchQuery"></param>
        /// <param name="globalSearchText"></param>
        /// <returns></returns>
        private SearchResultModel GetSearchResult(SearchResult searchResult, SearchQueryModel searchQuery, string globalSearchText)
        {
            if (searchResult != null && searchResult.DocumentType != null)
            {
                return new SearchResultModel
                           {
                               DocumentType = ObjectMapper.GetDocumentTypeModel(searchResult.DocumentType),
                               DataResult = GetData(searchResult.DocumentType, searchResult.Documents),
                               SearchQuery = searchQuery,
                               GlobalSearchText = globalSearchText,
                               IsGlobalSearch = !string.IsNullOrEmpty(globalSearchText),
                               TotalCount = searchResult.TotalCount,
                               Paging = new PagingModel()

                           };
            }
            else
            {
                using (var client = GetArchiveClientChannel())
                {
                    SearchResultModel result = new SearchResultModel();
                    DocumentType docType = client.Channel.GetDocumentType(searchQuery.DocTypeId);
                    result.DocumentType = ObjectMapper.GetDocumentTypeModel(docType);
                    result.TotalCount = 0;
                    result.ResultCount = 0;
                    result.DataResult = GetData(docType, new List<Document>());
                    return result;
                }
            }
        }
        /// <summary>
        /// </summary>
        /// <param name="documentType"></param>
        /// <param name="documents">Document</param>
        /// <returns></returns>
        private DataTable GetData(DocumentType documentType, IEnumerable<Document> documents)
        {
            try
            {
                DataTable dataTable = BuildSchema(documentType);
                foreach (var document in documents)
                {
                    var dataRow = dataTable.NewRow();
                    dataRow[Common.COLUMN_CHECKED] = false;
                    dataRow[Common.COLUMN_SELECTED] = false;
                    dataRow[Common.COLUMN_CREATED_BY] = document.CreatedBy;
                    dataRow[Common.COLUMN_CREATED_ON] = document.CreatedDate;
                    dataRow[Common.COLUMN_VERSION] = document.Version;
                    dataRow[Common.COLUMN_MODIFIED_BY] = document.ModifiedBy;
                    dataRow[Common.COLUMN_MODIFIED_ON] = (object)document.ModifiedDate ?? DBNull.Value;
                    dataRow[Common.COLUMN_PAGE_COUNT] = document.PageCount;
                    dataRow[Common.COLUMN_DOCUMENT_ID] = document.Id;
                    dataRow[Common.COLUMN_DOCUMENT_TYPE_ID] = documentType.Id;
                    dataRow[Common.COLUMN_BINARY_TYPE] = (FileTypeModel)Enum.Parse(typeof(FileTypeModel), document.BinaryType == "" ? "Image":document.BinaryType, true);

                    foreach (var fieldValue in document.FieldValues)
                    {
                        if (fieldValue.FieldMetaData.DataTypeEnum == FieldDataType.Table ||
                            fieldValue.FieldMetaData.IsSystemField)
                        {
                            continue;
                        }

                        dataRow[fieldValue.FieldMetaData.Name] = ConvertData(fieldValue.Value, fieldValue.FieldMetaData.DataTypeEnum);
                    }

                    dataTable.Rows.Add(dataRow);
                }
            return dataTable;
            }
            catch (Exception ex)
            {
            }
            return null;
        }
        /// <summary>
        /// </summary>
        /// <param name="documentType"></param>
        /// <param name="documents">DocumentVersion </param>
        /// <returns></returns>
        private DataTable GetDataForDeletedDocument(DocumentType documentType, IEnumerable<DocumentVersion> documents)
        {
            DataTable dataTable = BuildSchema(documentType);
            foreach (var document in documents)
            {
                var dataRow = dataTable.NewRow();
                dataRow[Common.COLUMN_CHECKED] = false;
                dataRow[Common.COLUMN_SELECTED] = false;
                dataRow[Common.COLUMN_CREATED_BY] = document.CreatedBy;
                dataRow[Common.COLUMN_CREATED_ON] = document.CreatedDate;
                dataRow[Common.COLUMN_VERSION] = document.Version;
                dataRow[Common.COLUMN_MODIFIED_BY] = document.ModifiedBy;
                dataRow[Common.COLUMN_MODIFIED_ON] = (object)document.ModifiedDate ?? DBNull.Value;
                dataRow[Common.COLUMN_PAGE_COUNT] = document.PageCount;
                dataRow[Common.COLUMN_DOCUMENT_ID] = document.Id;
                dataRow[Common.COLUMN_DOCUMENT_TYPE_ID] = documentType.Id;
                dataRow[Common.COLUMN_DOCUMENT_VERSION_ID] = document.Id;

                foreach (var fieldValue in document.DocumentFieldVersions)
                {
                    if (fieldValue.FieldMetadataVersion.DataTypeEnum == FieldDataType.Table ||
                        fieldValue.FieldMetadataVersion.IsSystemField)
                    {
                        continue;
                    }

                    dataRow[fieldValue.FieldMetadataVersion.Name] = ConvertData(fieldValue.Value, fieldValue.FieldMetadataVersion.DataTypeEnum);
                }

                dataTable.Rows.Add(dataRow);
            }

            return dataTable;
        }
        /// <summary>
        /// lấy dữ liệu dựa vào DocumentTypeVersion, DocumentVersion
        /// </summary>
        /// <param name="documentType">DocumentTypeVersion</param>
        /// <param name="documents">DocumentVersion</param>
        /// <returns></returns>
        private DataTable GetData(DocumentTypeVersion documentType, IEnumerable<DocumentVersion> documents)
        {
            DataTable dataTable = BuildSchema(documentType);
            foreach (var document in documents)
            {
                var dataRow = dataTable.NewRow();
                dataRow[Common.COLUMN_CHECKED] = false;
                dataRow[Common.COLUMN_SELECTED] = false;
                dataRow[Common.COLUMN_CREATED_BY] = document.CreatedBy;
                dataRow[Common.COLUMN_CREATED_ON] = document.CreatedDate;
                dataRow[Common.COLUMN_VERSION] = document.Version;
                dataRow[Common.COLUMN_MODIFIED_BY] = document.ModifiedBy;
                dataRow[Common.COLUMN_MODIFIED_ON] = (object)document.ModifiedDate ?? DBNull.Value;
                dataRow[Common.COLUMN_PAGE_COUNT] = document.PageCount;
                dataRow[Common.COLUMN_DOCUMENT_ID] = document.DocId;
                dataRow[Common.COLUMN_DOCUMENT_TYPE_ID] = documentType.Id;
                dataRow[Common.COLUMN_DOCUMENT_VERSION_ID] = document.Id;

                foreach (var fieldValue in document.DocumentFieldVersions)
                {
                    if (fieldValue.FieldMetadataVersion.DataTypeEnum == FieldDataType.Table ||
                        fieldValue.FieldMetadataVersion.IsSystemField)
                    {
                        continue;
                    }

                    dataRow[fieldValue.FieldMetadataVersion.Name] = ConvertData(fieldValue.Value, fieldValue.FieldMetadataVersion.DataTypeEnum);
                }

                dataTable.Rows.Add(dataRow);
            }

            return dataTable;
        }
        /// <summary>
        /// BuildSchema dựa vào DocumentType
        /// </summary>
        /// <param name="documentType"></param>
        /// <returns></returns>
        private DataTable BuildSchema(DocumentType documentType)
        {
            var table = new DataTable(documentType.Name);
            table.Columns.Add(GetColumn(Common.COLUMN_SELECTED, FieldDataType.Boolean));
            table.Columns.Add(GetColumn(Common.COLUMN_CHECKED, FieldDataType.Boolean));
            foreach (var field in documentType.FieldMetaDatas)
            {
                if (field.DataTypeEnum == FieldDataType.Table ||
                    field.DataTypeEnum == FieldDataType.Folder ||
                    field.IsSystemField)
                {
                    continue;
                }

                table.Columns.Add(GetColumn(field.Name, field.DataTypeEnum));
            }

            table.Columns.Add(Common.COLUMN_CREATED_BY, typeof(string));
            table.Columns.Add(Common.COLUMN_CREATED_ON, typeof(DateTime));
            table.Columns.Add(Common.COLUMN_MODIFIED_BY, typeof(string));
            table.Columns.Add(Common.COLUMN_MODIFIED_ON, typeof(DateTime));
            table.Columns.Add(Common.COLUMN_PAGE_COUNT, typeof(int));
            table.Columns.Add(Common.COLUMN_VERSION, typeof(int));
            table.Columns.Add(Common.COLUMN_DOCUMENT_ID, typeof(Guid));
            table.Columns.Add(Common.COLUMN_DOCUMENT_TYPE_ID, typeof(Guid));
            table.Columns.Add(Common.COLUMN_BINARY_TYPE, typeof(FileTypeModel));
            table.Columns.Add(Common.COLUMN_DOCUMENT, typeof(DocumentModel));
            table.Columns.Add(Common.COLUMN_DOCUMENT_VERSION_ID, typeof(Guid));
            return table;
        }
        /// <summary>
        /// BuildSchema dựa vào DocumentTypeVersion
        /// </summary>
        /// <param name="documentType"></param>
        /// <returns></returns>
        private DataTable BuildSchema(DocumentTypeVersion documentType)
        {
            var table = new DataTable(documentType.Name);
            table.Columns.Add(GetColumn(Common.COLUMN_CHECKED, FieldDataType.Boolean));
            table.Columns.Add(GetColumn(Common.COLUMN_SELECTED, FieldDataType.Boolean));
            foreach (var field in documentType.FieldMetaDataVersions)
            {
                if (field.DataTypeEnum == FieldDataType.Table ||
                    field.DataTypeEnum == FieldDataType.Folder ||
                    field.IsSystemField)
                {
                    continue;
                }

                table.Columns.Add(GetColumn(field.Name, field.DataTypeEnum));
            }

            table.Columns.Add(Common.COLUMN_CREATED_BY, typeof(string));
            table.Columns.Add(Common.COLUMN_CREATED_ON, typeof(DateTime));
            table.Columns.Add(Common.COLUMN_MODIFIED_BY, typeof(string));
            table.Columns.Add(Common.COLUMN_MODIFIED_ON, typeof(DateTime));
            table.Columns.Add(Common.COLUMN_PAGE_COUNT, typeof(int));
            table.Columns.Add(Common.COLUMN_VERSION, typeof(int));
            table.Columns.Add(Common.COLUMN_DOCUMENT_ID, typeof(long));
            table.Columns.Add(Common.COLUMN_DOCUMENT_TYPE_ID, typeof(long));
            table.Columns.Add(Common.COLUMN_BINARY_TYPE, typeof(FileTypeModel));
            table.Columns.Add(Common.COLUMN_DOCUMENT, typeof(DocumentModel));
            table.Columns.Add(Common.COLUMN_DOCUMENT_VERSION_ID, typeof(long));
            return table;
        }
        /// <summary>
        /// lấy cột dựa trên tên và kiểu trường dữ liệu
        /// </summary>
        /// <param name="name">tên cột</param>
        /// <param name="dataType">kiểu dữ liệu</param>
        /// <returns></returns>
        private DataColumn GetColumn(string name, FieldDataType dataType)
        {
            Type type = typeof(string);
            switch (dataType)
            {
                case FieldDataType.Boolean:
                    type = typeof(bool);
                    break;
                case FieldDataType.Date:
                    type = typeof(DateTime);
                    break;
                case FieldDataType.Decimal:
                    type = typeof(decimal);
                    break;
                case FieldDataType.Integer:
                    type = typeof(long);
                    break;
            }

            return new DataColumn(name, type);
        }
        /// <summary>
        /// chuyển đổi dữ liệu sang kiểu dữ liệu khác
        /// </summary>
        /// <param name="value">giá trị cần chuyển đổi</param>
        /// <param name="dataType">kiểu dữ liệu cần chuyển</param>
        /// <returns></returns>
        public static object ConvertData(string value, FieldDataType dataType)
        {
            if (string.IsNullOrEmpty(value))
            {
                return DBNull.Value;
            }

            switch (dataType)
            {
                case FieldDataType.Boolean:
                    if (value == "on")
                    {
                        value = "true";
                    }
                    if (value == "off")
                    {
                        value = "false";
                    }

                    return Convert.ToBoolean(value);
                case FieldDataType.Date:
                    DateTime dateValue;
                    if (DateTime.TryParse(value, out dateValue))
                    {
                        return dateValue;
                    }

                    return DateTime.ParseExact(value, "yyyyMMdd HH:mm:ss", Thread.CurrentThread.CurrentCulture); // From lucene
                case FieldDataType.Decimal:
                    return Convert.ToDecimal(value);
                case FieldDataType.Integer:
                    return Convert.ToInt64(value);
            }

            return value;
        }
    }
}

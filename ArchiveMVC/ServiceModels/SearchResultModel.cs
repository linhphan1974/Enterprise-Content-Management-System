using System.Collections.Generic;
using System.Data;
using System.Linq;
using Ecm.Mvvm;
using ArchiveMVC.Models.DataProvider;

namespace ArchiveMVC.Models
{
    public class SearchResultModel
    {
        private bool _isSelected;
        private bool _isChecked;
        private DataTable _dataResult;
        private bool _internalChanged;
        private DocumentTypeModel _documentType;
        private bool _hasMoreResult;
        private string _documentTypeName;
        private int _resultCount;
        private int _totalCount;
        private bool _isGlobalSearch;

        public string DocumentTypeName
        {
            get { return _documentTypeName; }
            set
            {
                _documentTypeName = value;
            }
        }

        public int ResultCount
        {
            get { return _resultCount; }
            set
            {
                _resultCount = value;
            }
        }

        public int TotalCount
        {
            get { return _totalCount; }
            set
            {
                _totalCount = value;
            }
        }

        public DocumentTypeModel DocumentType
        {
            get { return _documentType; }
            set
            {
                _documentType = value;
                if (value != null)
                {
                    DocumentTypeName = _documentType.Name;
                }
            }
        }

        public DataTable DataResult
        {
            get { return _dataResult; }
            set
            {
                _dataResult = value;
                _dataResult.RowChanged += SearchResultRowChanged;
                _dataResult.RowDeleted += SearchResultRowDeleted;
                _dataResult.TableNewRow += SearchResultRowAdded;
                UpdateResultCount();
            }
        }

        public bool IsSelected
        {
            get { return _isSelected; }
            set
            {
                _isSelected = value;
            }
        }

        public bool IsChecked
        {
            get { return _isChecked; }
            set
            {
                _isChecked = value;

                if (!_internalChanged)
                {
                    _internalChanged = true;
                    foreach (DataRow row in DataResult.Rows)
                    {
                        row[Common.COLUMN_CHECKED] = value;
                    }

                    _internalChanged = false;
                }
            }
        }

        public int PageIndex { get; set; }

        public bool HasMoreResult
        {
            get { return _hasMoreResult; }
            set
            {
                _hasMoreResult = value;
            }
        }

        public SearchQueryModel SearchQuery { get; set; }

        public string GlobalSearchText { get; set; }

        public bool IsGlobalSearch
        {
            get { return _isGlobalSearch; }
            set
            {
                _isGlobalSearch = value;
            }
        }

        public void LoadMoreResult(UserModel user)
        {
            if (HasMoreResult)
            {
                if (!IsGlobalSearch)
                {
                    SearchResultModel searchResult = new SearchProvider(user.Username, user.Password).RunAdvanceSearch(++PageIndex, DocumentType.Id,
                                                                                           SearchQuery);
                    if (searchResult != null)
                    {
                        HasMoreResult = searchResult.HasMoreResult;
                        foreach (DataRow row in searchResult.DataResult.Rows)
                        {
                            DataResult.ImportRow(row);
                        }
                    }
                }
            }
        }

        private void SearchResultRowChanged(object sender, DataRowChangeEventArgs e)
        {
            if (e.Action == DataRowAction.Change && !_internalChanged)
            {
                e.Row.AcceptChanges();
                RefreshChanges();
            }
            else if (e.Action == DataRowAction.Add)
            {
                UpdateResultCount();
            }
        }

        private void SearchResultRowDeleted(object sender, DataRowChangeEventArgs e)
        {
            DataResult.AcceptChanges();
            RefreshChanges();
            UpdateResultCount();
        }

        private void SearchResultRowAdded(object sender, DataTableNewRowEventArgs e)
        {
            UpdateResultCount();
        }

        private void RefreshChanges()
        {
            _internalChanged = true;

            List<DataRow> rows = DataResult.Rows.OfType<DataRow>().ToList();
            IsSelected = rows.Count > 0 && rows.All(p => (bool)p[Common.COLUMN_SELECTED]);

            _internalChanged = false;
        }

        private void UpdateResultCount()
        {
            if (DataResult != null)
            {
                ResultCount = DataResult.Rows.Count;
            }
            else
            {
                ResultCount = 0;
            }
        }
    }
}

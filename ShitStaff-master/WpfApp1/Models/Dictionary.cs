using System;
using System.Collections.Generic;

namespace WpfApp1
{
    public partial class Dictionary : BaseViewModel
    {
        private int _dictionaryId;
        private int _staffId;
        private DateTime _dateOfIncoming;
        private int _accountingId;

        public int DictionaryId
        {
            get { return _dictionaryId; }
            set { _dictionaryId = value; OnPropertyChanged("DictionaryId"); }
        }

        public int StaffId
        {
            get { return _staffId; }
            set { _staffId = value; OnPropertyChanged("StaffId"); }
        }
       
        public DateTime DateOfIncoming
        {
            get { return _dateOfIncoming; }
            set { _dateOfIncoming = value; OnPropertyChanged("DateOfIncoming"); }
        }

        public int AccountingId
        {
            get { return _accountingId; }
            set { _accountingId = value; OnPropertyChanged("AccountingId"); }
        }

        public virtual Accounting Accounting { get; set; } = null!;
        public virtual staff Staff { get; set; } = null!;
    }
}

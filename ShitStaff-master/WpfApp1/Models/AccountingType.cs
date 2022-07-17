using System;
using System.Collections.Generic;

namespace WpfApp1
{
    public partial class AccountingType : BaseViewModel
    {
        private int _accountingTypeId;
        private string _method;
        public AccountingType()
        {
            Accountings = new HashSet<Accounting>();
        }

        public int AccountingTypeId
        {
            get { return _accountingTypeId; }
            set { _accountingTypeId = value; OnPropertyChanged("AccountingTypeId"); }
        }

        public string Method
        {
            get { return _method; }
            set { _method = value; OnPropertyChanged("Method"); }
        }
        public virtual ICollection<Accounting> Accountings { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
namespace WpfApp1
{
    public partial class Accounting : BaseViewModel
    {
        private int _accountingId;
        private int _accountingTypeId;
        private int _userId;
        private DateTime _dateOfAccounting;
        public Accounting()
        {
            Dictionaries = new HashSet<Dictionary>();
        }

        public int AccountingId
        {
            get { return _accountingId; }
            set { _accountingId = value; OnPropertyChanged("AccountingId");}
        }
        public int AccountingTypeId
        {
            get { return _accountingTypeId; }
            set { _accountingTypeId = value; OnPropertyChanged("AccountingTypeId"); }
        }

        public int UserId
        {
            get { return _userId; }
            set { _userId = value; OnPropertyChanged("UserId"); }
        }
        
        public DateTime DateOfAccounting
        {
            get { return _dateOfAccounting; }
            set { _dateOfAccounting = value; OnPropertyChanged("DateOfAccounting"); }
        }

        public virtual AccountingType AccountingType { get; set; } = null!;
        public virtual User User { get; set; } = null!;
        public virtual ICollection<Dictionary> Dictionaries { get; set; }
    }
}

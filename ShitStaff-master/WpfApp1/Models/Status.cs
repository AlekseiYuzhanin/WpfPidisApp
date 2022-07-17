using System;
using System.Collections.Generic;

namespace WpfApp1
{
    public partial class Status : BaseViewModel
    {
        private int _statusId;
        private string _currentStatus;
        public Status()
        {
            Orders = new HashSet<Order>();
        }
        public int StatusId
        {
            get { return _statusId; }
            set { _statusId = value; OnPropertyChanged("StatusId");}
        }

        public string CurrentStatus
        {
            get { return _currentStatus; }
            set { _currentStatus = value; OnPropertyChanged("CurrentStatus");}
        }
        
        public virtual ICollection<Order> Orders { get; set; }
    }
}

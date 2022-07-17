using System;
using System.Collections.Generic;

namespace WpfApp1
{
    public partial class Order : BaseViewModel
    {
        private int _orderId;
        private int _userId;
        private int _staffId;
        private DateTime _dateOfСoming;
        private int _statusId;

        public int OrderId
        {
            get { return _orderId; }
            set { _orderId = value; OnPropertyChanged("OrderId"); }
        }

        public int UserId
        {
            get { return _userId;}
            set { _userId = value; OnPropertyChanged("UserId");}
        }

        public int StaffId
        {
            get { return _staffId; }
            set { _staffId = value; OnPropertyChanged("StaffId"); }
        }

        public DateTime DateOfComing
        {
            get { return _dateOfСoming; }
            set { _dateOfСoming = value; OnPropertyChanged("DateOfIncoming");}
        }
  
        public int StatusId
        {
            get { return _statusId; }
            set { _statusId = value; OnPropertyChanged("StatusId");}
        }
        

        public virtual staff Staff { get; set; } = null!;
        public virtual Status Status { get; set; } = null!;
        public virtual User User { get; set; } = null!;
    }
}

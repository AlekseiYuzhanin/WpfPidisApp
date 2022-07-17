using System;
using System.Collections.Generic;

namespace WpfApp1
{
    public partial class staff : BaseViewModel
    {
        private int _staffId;
        private string _title;
        private string _amount;
        private int _article;
        private decimal _price;
        private int _cathegoryId;
        public staff()
        {
            Dictionaries = new HashSet<Dictionary>();
            Orders = new HashSet<Order>();
        }

        public int StaffId
        {
            get { return _staffId; }
            set { _staffId = value; OnPropertyChanged("StaffId"); }
        }

        public string Title
        {
            get { return _title; }
            set { _title = value; OnPropertyChanged("Title"); }
        }
        
        public string Amount
        {
            get { return _amount;}
            set { _amount = value; OnPropertyChanged("Amount"); }
        }

        public int Article
        {
            get { return _article; }
            set { _article = value; OnPropertyChanged("Article");}
        }
        
        public decimal Price
        {
            get { return _price; }
            set { _price = value; OnPropertyChanged("Price"); }
        }

        public int CathegoryId
        {
            get { return _cathegoryId; }
            set { _cathegoryId = value; OnPropertyChanged("CathegoryId"); }
        }

        public virtual Cathegory Cathegory { get; set; } = null!;
        public virtual ICollection<Dictionary> Dictionaries { get; set; }
        public virtual ICollection<Order> Orders { get; set; }
    }
}

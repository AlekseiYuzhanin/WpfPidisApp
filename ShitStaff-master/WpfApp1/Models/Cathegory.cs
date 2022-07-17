using System;
using System.Collections.Generic;

namespace WpfApp1
{
    public partial class Cathegory : BaseViewModel
    {
        private int _cathegoryId;
        private string _type;
        public Cathegory()
        {
            staff = new HashSet<staff>();
        }

        public int CathegoryId
        {
            get { return _cathegoryId; }
            set { _cathegoryId = value; OnPropertyChanged("CathegoryId"); }
        }

        public string Type
        {
            get { return _type; }
            set { _type = value; OnPropertyChanged("Type"); }
        }

        public virtual ICollection<staff> staff { get; set; }
    }
}

using System;
using System.Collections.Generic;

namespace WpfApp1
{
    public partial class Role : BaseViewModel
    {
        private int _roleId;
        private string _type;

        public Role()
        {
            Users = new HashSet<User>();
        }

        public int RoleId
        {
            get { return _roleId; }
            set { _roleId = value; OnPropertyChanged("RoleId");}
        }

        public string Type
        {
            get { return _type; }
            set { _type = value; OnPropertyChanged();}
        }

     

        public virtual ICollection<User> Users { get; set; }
    }
}

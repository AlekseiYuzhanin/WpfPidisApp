using System;
using System.Collections.Generic;
using WpfApp1.ViewModels;

namespace WpfApp1
{
    public partial class User : BaseViewModel
    {
        private int _userId;
        private int _roleId;
        private string _firstName;
        private string _lastName;
        private string _middleName;
        private string _login;
        private string _password;
        private DateTime _birthDate;
        private string _numberPhone;
        private string _email;
        public User()
        {
            Accountings = new HashSet<Accounting>();
            Orders = new HashSet<Order>();
      
        }

        public int UserId
        {
            get { return _userId; }
            set { _userId = value; OnPropertyChanged("UserId");}
        }
        public int RoleId
        {
            get { return _roleId; }
            set { _roleId = value; OnPropertyChanged("RoleId"); }
        }
        public string FirstName
        {
            get { return _firstName; }
            set { _firstName = value; OnPropertyChanged("FirstName"); }
        }
        public string LastName
        {
            get { return _lastName; }
            set { _lastName = value; OnPropertyChanged("LastName"); }
        }
        public string MiddleName
        {
            get { return _middleName; }
            set { _middleName = value; OnPropertyChanged("MiddleName"); }
        }
        public string Login
        {
            get { return _login; }
            set { _login = value; OnPropertyChanged("Login"); }
        }
        public string Password
        {
            get { return _password; }
            set { _password = value; OnPropertyChanged("Password"); }
        }
        public DateTime BirthDate
        {
            get { return _birthDate; }
            set { _birthDate = value; OnPropertyChanged("BirthDate"); }
        }
        public string NumberPhone
        {
            get { return _numberPhone; }
            set { _numberPhone = value; OnPropertyChanged("NumberPhone"); }
        }
        public string Email
        {
            get { return _email; }
            set { _email = value; OnPropertyChanged("Email"); }
        }

        public virtual Role? Role { get; set; }
        public virtual ICollection<Accounting> Accountings { get; set; }
        public virtual ICollection<Order> Orders { get; set; }
    }
}

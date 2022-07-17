using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApp1.ViewModels
{
    public class StoreKeeperJrWindowViewModel : BaseViewModel
    {
        private User _user = Connection.userAuth;
        private ObservableCollection<User> _users;

        public User User
        {
            get => _user;
            set => Set(ref _user, value);
        }


        public ObservableCollection<User> Users
        {
            get { return _users; }
            set { _users = value; OnPropertyChanged(); }
        }
    }
}

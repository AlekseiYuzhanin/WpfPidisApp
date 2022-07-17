using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace WpfApp1.ViewModels
{
    public class AuthorizationWindowViewModel : BaseViewModel
    {
        private User _user;
        private RelayCommand _authCommand;

        public User User
        {
            get => _user;
            set => Set(ref _user, value);
        }

        public AuthorizationWindowViewModel()
        {
            _user = new User();
        }

        public void CloseWindow()
        {
            foreach(var vin in App.Current.Windows)
            {
                if(vin is AuthorizationWindow authorization)
                {
                    authorization.Close();
                }
            }
        }

        public RelayCommand AuthCommand
        {
            get
            {
                return _authCommand ?? (_authCommand = new RelayCommand(x =>
                {
                    var password = (x as PasswordBox).Password;
                    _user.Password = password;

                    var user = Connection.GetContext().Users.SingleOrDefault(x => x.Login == _user.Login && x.Password == _user.Password);
                    if (user.RoleId == 1)
                    {
                        Connection.userAuth = user;
                        new StoreKeeperWindow().Show();
                        CloseWindow();
                    }

                    else if (user.RoleId == 2)
                    {
                        Connection.userAuth = user;
                        new ManagerWindow().Show();
                        CloseWindow();
                    }

                    else if (user.RoleId == 3)
                    {
                        Connection.userAuth = user;
                        new CleintWindow().Show();
                        CloseWindow();
                    }

                    else if (user.RoleId == 4)
                    {
                        Connection.userAuth = user;
                        new StoreKeeperJr().Show();
                        CloseWindow();
                    }
                }, x=>
                {
                    return !string.IsNullOrWhiteSpace(_user.Login);
                })) ;
            }
        }
    }
}

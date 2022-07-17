using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using WpfApp1.Views;

namespace WpfApp1.ViewModels
{
    public class ClientWindowViewModel : BaseViewModel
    {
        private User _user = Connection.userAuth;
        private RelayCommand _exitCommand;
        private ObservableCollection<staff> _staffs;
        private ObservableCollection<Order> _myOrders;
        private RelayCommand _logOutCommand;
        private RelayCommand _makeOrderCommand;
        private Order _newOrder;

        public User User
        {
            get => _user;
            set => Set(ref _user, value);
        }

        public Order NewOrder
        {
            get { return _newOrder; }
            set
            {
                _newOrder = value;
                OnPropertyChanged();
            }
        }

        private void _closeWindow()
        {
            foreach(var item in App.Current.Windows)
            {
                if(item is CleintWindow clientWindow)
                {
                    clientWindow.Close();
                }
            }
        }
        public ObservableCollection<staff> Staffs
        {
            get { return _staffs; }
            set { _staffs = value; OnPropertyChanged();}
        }

        public ObservableCollection<Order> MyOrders
        {
            get { return _myOrders; }
            set { _myOrders = value; OnPropertyChanged(); }
        }

        public ClientWindowViewModel()
        {
            Staffs = new ObservableCollection<staff>(Connection.GetContext().staff
                .Include(x=>x.Cathegory));
            MyOrders = new ObservableCollection<Order>(Connection.GetContext().Orders
                .Include(x=>x.Staff)
                .Include(x=>x.Status)
                .Include(x=>x.User));
        }

        public RelayCommand ExitCommand
        {
            get
            {
                return _exitCommand ?? (_exitCommand = new RelayCommand(x =>
                {
                    Application.Current.Shutdown();
                }));
            }
        }

        public RelayCommand LogOutCommand
        {
            get
            {
                return _logOutCommand ?? (_logOutCommand = new RelayCommand(x =>
                {
                    new AuthorizationWindow().Show();
                    _closeWindow();
                }));
            }
        }

        public RelayCommand MakeOrderCommand
        {
            get
            {
                return _makeOrderCommand ?? (_makeOrderCommand = new RelayCommand(x =>
                {
                    new NewClientOrder().ShowDialog();
                    _closeWindow();
                }));
            }
        }
  
    }
}

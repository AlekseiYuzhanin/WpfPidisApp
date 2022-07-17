using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApp1.ViewModels
{
    public class NewClientOrderViewModel : BaseViewModel
    {
        private Order _newOrder;
        private RelayCommand _makeNewOrderCommand;
        private ObservableCollection<staff> _staff;
        private staff _selectedStaff;

        public ObservableCollection<staff> CBoxStaff
        {
            get => _staff;
            set => Set(ref _staff, value);
        }

        public staff SelectedStaff
        {
            get => _selectedStaff;
            set => Set(ref _selectedStaff, value);
        }


        public Order NewOrder
        {
            get => _newOrder;
            set => Set(ref _newOrder,value);
        }
           
        
        public NewClientOrderViewModel()
        {
            CBoxStaff = new ObservableCollection<staff>(Connection.GetContext().staff);
        }

        public RelayCommand MakeNewOrderCommand
        {
            get
            {
                return _makeNewOrderCommand ?? (_makeNewOrderCommand = new RelayCommand(x =>
                {

                }));
            }
        }
    }
}

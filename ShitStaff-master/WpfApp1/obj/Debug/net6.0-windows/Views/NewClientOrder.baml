   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp1.ViewsWpfApp1.Views  5   	   7 clr-namespace:WpfApp1.ViewModelsWpfApp1.ViewModels  5   	   "    WpfApp1.Views.NewClientOrder   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:WpfApp1.Views     5   	   /vm clr-namespace:WpfApp1.ViewModels     5   	     � Title$  NewClientOrder��5	   	   $	��600��6    $	��450��6-   
�������
��� � � � DataContext 5
      0   *WpfApp1.ViewModels.NewClientOrderViewModel  5   
   .��5      � -   5        $��NewOrderGrid��5       � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      �� 5      .+�5   
   �� $��	New order��6   $��20(�6%   $��Center=�63   $��2��6N   $��Center=�6b   �� 5    
   $��Manager Info :��6   $��1��6*   $��18(�67   $��Bottom=�6E   $��2��6`   $��Center=�6t   �� 5!   
   $��2��6   
������ $��1��6c   $��Center=�6t   
������ 
���  ����6   �� *NewOrder.User.FirstName+6�   �� 5"   
   $
��Name��6   $��2��6    $��18(�6-   $��Center=�6;   $��Center=�6V   �� 5#   
   $��Surname��6   $��3��6#   $��18(�60   $��Center=�6>   $��Center=�6Y   �� 5$   
   $��3��6   $��1��6   
������ $��Center=�6p   
������ 
���  ����6/   �� *NewOrder.User.LastName+6�   �� 5%   
   $��
Patronymic��6   $��4��6&   $��18(�63   $��Center=�6A   $��Center=�6\   �� 5&   
   $��4��6   $��1��6   
������ $��Center=�6r   
������ 
���  ����6/   �� *NewOrder.User.MiddleName+6�   �� 5'   
   $��
Staff info��6   $��5��6&   $��20(�63   $��Center=�6A   $��Bottom=�6^   $��2��6y   �� 5(   
   $��Title��6   $��6��6!   $��18(�6.   $��Center=�6<   $��Center=�6Y   �� 5)   
   $��6��6   $��1��6!   $��Center=�61    �� SelectedValuePath$ Id��5,       �� SelectedValue$ Title��5-       �� DisplayMemberPath$ Title��6)   ��5*      �� *	CBoxStaff+ �� SelectedItem 5+      �� *SelectedStaff+ �� UpdateSourceTrigger$ PropertyChanged=�5-   )   �� 5.   
   $��Price��6   $��7��6!   $��Center=�6.   $��Center=�6I   $��18(�6f   �� 5/   
   $��7��6   $��1��6   
������ $��Center=�6�   
������ 
���  ����6/   �� *NewOrder.Staff.Price+	 �� StringFormat$	 {0:C0}��6�   �� 50   
   $��8��6   $��Date Of Delivery��6!   $��Center=�69   $��18(�6T   $��Center=�6b   �� 51   
   $��8��6   $��1��6   $��Center=�6n   
������ 
���  ����6/   �� *NewOrder.DateOfComing+$	 
dd-MMMM-yy��6�   �� 52   
   $��Order��6   $��9��6!   $��30��6.   $	��100��6:   $��2��6F   $��2��6Z   �� 53   
   -   5        $��9��53      $��Center=�6    $��Center=�6;   $��Print Check��6X   6n   �� 54   
   $��9��6   $��1��6!   $��80��61   $��50��6<   .H�55      �� $&�� Images/1357482852_1814017829.jpg��6   56      �� 57   
   $��20��6   $��	Signature��6    $��9��61   $��1��6>   $��50��6N   $
��Left=�6Y   58      59      
   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:WpfApp1.ViewModelsWpfApp1.ViewModels  5   	   !clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.StoreKeeperWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /vm clr-namespace:WpfApp1.ViewModels     5   	   'localclr-namespace:WpfApp1     5   	     � Title$  StoreKeeperJr��5	   	   $	��600��6   $	��920��6,   
�������
��� � � � DataContext 5
      3   -WpfApp1.ViewModels.StoreKeeperWindowViewModel  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $��75 �6   �� 5       � ColumnDefinitions 5   
   �� 5      $	��200 �6   �� 5      .+�5   
   o� $��25��6   $	��Top=�6   .@�5      m� $��Profile Control��6   .@�5      m� $��Log out��6    m� Command$  ��6,   m� 5      $
��Exit��6   $  ��6)   5      5      �� 5   
   $��Welcome,��6   $��	0 0 165 2q�6$   $��1��67   $��0��6G   $��20(�6T   $��Center=�6b   $��Center=�6}   �� 5   
   $��1��64   $��0��6D   $��20(�6Q   $��Center=�6_   $��Center=�6z   ��6   �� *User.FirstName+6z   �� 5   
   -   5         ��Name$ ClientTabControl��5      $��1��6/   $��1��6<   
������ 
��� � �
�������.@�5      �� -   5         ��Name$ 
MyInfoTabC��5      
���������5       �� 5!       �� Orientation$ 
Horizontal=�6!   .+�5"      �� $��3q�6$   	My Info68   5#      ��5%      � 5&       5'      �� 5(      �� 5)      �� 5*      �� 5+      �� 5,      �� 5-      �� 5.      �� 5/      �� 50       52      �� 53      $	��82* �6/   �� 54      $
��275* �6/   �� 55      $
��357* �6/   .+�57      �� $��My Employee��6$   $	��200��67   $��Center=�6C   $
��Left=�6^   $��1��6y   $��75,0,0,0q�6�   �� 58      $	��200��6"    �� 
IsReadOnly$
 True��6.   $��2��6A   $��Center=�6Q   $
��Left=�6�   
������ 
������ ��6l   �� *User.Role.Type+6�   �� 59      $��My First Name��6$   $	��200��69   $��Center=�6E   $��1��6`   $
��Left=�6m   $��1��6�   $��75,0,0,0q�6�   �� 5:      $	��200��6"   $
 True��6.   $��1��6@   $��2��6M   
������ 
������ $��Center=�6�   $
��Left=�6�   ��6]   �� *User.FirstName+6�   �� 5;      $��My Last Name��6$   $	��200��68   $��2��6D   $��Center=�6Q   $
��Left=�6l   $��1��6�   $��75,0,0,0q�6�   �� 5<      $	��200��6"   $
 True��6.   $��2��6@   $��2��6M   
������ 
������ $��Center=�6�   $
��Left=�6�   ��6]   �� *User.LastName+6�   �� 5=      $��My Middle Name��6$   $	��200��6:   $��3��6F   $��Center=�6S   $
��Left=�6n   $��1��6�   $��75,0,0,0q�6�   �� 5>      $	��200��6"   $
 True��6.   $��2��6@   $��3��6P   
������ 
������ $��Center=�6�   $
��Left=�6�   ��6]   �� *User.MiddleName+6�   �� 5?      $��My Login��6$   $	��200��64   $��4��6@   $��Center=�6M   $
��Left=�6h   $��1��6�   $��75,0,0,0q�6�   �� 5@      $	��200��6"   $
 True��6.   $��4��6@   $��2��6M   
������ 
������ $��Center=�6�   $
��Left=�6�   ��6]   �� *
User.Login+6�   �� 5A      $��My Password��6$   $	��200��67   $��5��6C   $��Center=�6P   $
��Left=�6k   $��1��6�   $��75,0,0,0q�6�   �� 5B      $	��200��6"   $
 True��6.   $��5��6@   $��2��6M   
������ 
������ $��Center=�6�   $
��Left=�6�   ��6]   �� *User.Password+6�   �� 5C      $��My BirthDate��6$   $	��200��68   $��6��6D   $��Center=�6Q   $
��Left=�6l   $��1��6�   $��75,0,0,0q�6�   �� 5D      $	��200��6"   $
 True��6.   $��6��6@   $��2��6M   
������ 
������ $��Center=�6�   $
��Left=�6�   ��6]   �� *User.BirthDate+	 �� StringFormat$	 
dd-MMMM-yy��6�   �� 5E      $	��200��6%   $��My Phone Number��61   $��7��6H   $��Center=�6U   $
��Left=�6p   $��1��6�   $��75,0,0,0q�6�   �� 5F      $	��200��6"   $
 True��6.   $��7��6@   $��2��6M   
������ 
������ $��Center=�6�   $
��Left=�6�   ��6]   �� *User.NumberPhone+6�   �� 5G      $	��200��6$   $��My Email��60   $��8��6A   $��Center=�6N   $
��Left=�6i   $��1��6�   $��75,0,0,0q�6�   �� 5H      $	��200��6"   $
 True��6.   $��8��6@   
������ 
������ $��2��6�   $��Center=�6�   $
��Left=�6�   ��6M   �� *
User.Email+6�   5I      5K      �� 5L      -   5        $ AvalibaleStaffSKJ��5L      ��5M      �� 5N      $ 
Horizontal=�6!   .+�5O      �� $��3q�6$   Avalibale Staff6@   5P      ��5R      &   System.Windows.Controls.DataGrid  5S      -   5        
  Name$
 AvalibaleStaffDGrid��5S         Columns 5T      0  *System.Windows.Controls.DataGridTextColumn  5U      ,  &System.Windows.Controls.DataGridColumn   Header$	 №��61      Width5  /System.Windows.Controls.DataGridLengthConverter$ 30 6<     5V      $ Title��61   $ * 6@     5W      $ Amount��61   $ * 6A     5X      $ Aricle��61   $ * 6A     5Y      $ Price��61   $ * 6@     5Z      $ 	Cathegory��61   $ * 6D   5\      5^      �� 5_      ��5`      �� 5a      $ 
Horizontal=�6!   .+�5b      �� $��3q�6$   Accountings6<   5c      5e      �� 5f      ��5g      �� 5h      $ 
Horizontal=�6!   .+�5i      �� $��3q�6$   
Dictionary6;   5j      5l      5m      �� 5n   
   $��1��6   $
��Exit��6   $��0��6-   $��30��6=   $��0 0 0 10q�6I   $	��100��6[   $��Center=�6g   $��Bottom=�6�   �� 5o   
   $��1��6   $��0��6   $��Log Out��6.   $��30��6@   $��	0 0 0 70 q�6L   $	��100��6_   $��Bottom=�6k   �� 5p   
   $��1��6   $��0��6   $��	Add Staff��6.   $��30��6B   $��	0 200 0 0q�6N   $	��100��6a   $��Center=�6m   �� 5q   
   $��1��6   $��0��6   $��Make Accounting��6.   $��30��6H   $��	0 100 0 0q�6T   $	��100��6g   $��Center=�6s   �� 5r   
   $��1��6   $��0��6   $��Accounting Check��6.   $��30��6I   $	��100��6U   $��Center=�6a   �� 5s   
   $��1��6   $��0��6   $��Add to Dictionary��6.   $��30��6J   $	��100��6V   $��Center=�6b   $��	0 0 0 100q�6   5t      5u      
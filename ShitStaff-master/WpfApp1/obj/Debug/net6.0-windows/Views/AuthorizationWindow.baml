   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	   7 clr-namespace:WpfApp1.ViewModelsWpfApp1.ViewModels  5   	   !    WpfApp1.AuthorizationWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	   /vm clr-namespace:WpfApp1.ViewModels     5   	     � Title$  AuthorizationWindow��5	   	   $	��450��6%   $	��450��62   
�������
��� � � � DataContext 5
      5   /WpfApp1.ViewModels.AuthorizationWindowViewModel  5   
   .��5      �  � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   �� $��Authorization��6   $��Center=�6*   $��Center=�6E   �� 5   
   $��Login��6   $��2��6!   $
��Left=�6.   $��Center=�6I   $��	100 0 0 0q�6d   �� 5   
   -   5        $��Login��5   .   $��2��6;   $	��150��6H   $��20��6T   $��	100 0 0 0q�6`   ��6   �� *
User.Login+6`   �� 5   
   $��Password��6   $��3��6$   $
��Left=�61   $��Center=�6L   $��	100 0 0 0q�6g   G� 5   
   -   5        $��Password��5      $��3��6&   $��20��63   $	��150��6?   $��	100 0 0 0q�6K   �� 5   
   -   5        $��InputLog��5   c   $��Log in��6s   $	��100��6�   $��25 0 0 0q�6�   $��20��6�   $��4��6�   ��6   �� *AuthCommand+��61   ��  �� ElementName$ Password��6�   5      5       
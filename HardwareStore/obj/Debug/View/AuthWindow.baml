   M S B A M L   `   `   `  ����H  DHardwareStore, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:HardwareStore.ViewHardwareStore.View  5   	   A%clr-namespace:HardwareStore.ViewModelHardwareStore.ViewModel  5   	   #    HardwareStore.View.AuthWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:HardwareStore.View     5   	   ;	viewmodel%clr-namespace:HardwareStore.ViewModel     5   	     � Title$  Authorization Window��5	   	   $	��400��6&   $	��400��63    � WindowStartupLocation$ CenterScreen=�5
   	    � 
ResizeMode$ NoResize=�5   	    � DataContext 5      $   HardwareStore.ViewModel.AuthVM  5   
   .��5      � $��Center=�6   $��Center=�6&    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   �� $��Center=�5      $��0��6*   $��Center=�67   $A��;E:/УП 03.01/Programm/HardwareStore/HardwareStore/logo.png��5      $	��100��5      �� 5   
   $��Hardware Store��6   $��Comic Sans MS)�6)   $��20(�6D   
��� d �$��1��5      $��Center=�6   $��Center=�6:   �� 5   
   $��10q�6   $��2��6!   .+�5      �� $��Login��6   $��Comic Sans MS)�6$   
��� d �6?   �� 5      ��6   �� *Login+5       �� 5!   
   $��3��6   $��10q�6"   .+�5"      �� $��Password��6   $��Comic Sans MS)�6'   
��� d �6B   G� 5#      -   5         G�Name$ 
pbPassword��5#      5$      �� 5%   
   -   5         ��Name$ btnLogin��5%      $��Comic Sans MS)�6#   
���   �
���"�"�$	��180��5&   *   $��30��66   $
��Left=�6B   $��4��6]   $��10q�5'   0   ��6   �� *
BtnContent+6<   5)      5*      
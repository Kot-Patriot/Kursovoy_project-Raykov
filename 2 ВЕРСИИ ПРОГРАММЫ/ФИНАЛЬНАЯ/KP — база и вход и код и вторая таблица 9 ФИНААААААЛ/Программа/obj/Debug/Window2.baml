   M S B A M L   `   `   `  ����S  OПриложушечка, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:ПриложушечкаПриложушечка  5   	   &     Приложушечка.Window2   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:Приложушечка     5   	   -   5          � WindowStartupLocation$  CenterScreen=�5   	    � Title$ Сотрудники��5
   	   $	��720��6   $
��1280��6)   .��5      � ���	#FFE6E2E2 � RowDefinitions 5   
   �� 5      $	��135 �6   �� 5      �� 5      $��60 �6   .+�5   
   �� -   5         ��Name$ glavnaya��5      $��Главная��6#   $
��Left=�65   $��252,83,0,10q�6P   $	��153��6z   
�������6�   �� 5   
   -   5        $ 
sotrudniki��5      $��Сотрудники��6%   $
��Left=�6:   $��442,83,0,10q�6U   $	��153��6j   
�������6v   �� 5   
   -   5        $ prikazy��5      $��Новости��6"   $
��Left=�64   $��631,83,0,10q�6O   $	��153��6d   
�������6�   �� 5   
   -   5        $ prikazy1��5      $��Отчёты��6#   $
��Left=�64   $��1275,10,0,121q�6O   $��0��6f   
������� J� RenderTransformOrigin$ 0.5,0.5&�6�   z�5      V� 5      .~�5      ��  �� ScaleY$ -1Q�6%   �� 5      �� 5      T� 5      5      5      �� 5   
   -   5        $ 
raspisanye��5      $��Расписание��6%   $
��Left=�6:   $��816,83,0,10q�6U   $	��153��6j   
�������6�   �� 5   
   -   5        $ settings��5      $��Настройки��6#   $
��Left=�67   $��1005,83,0,10q�6R   $	��153��6h   
�������6�   �� 5    
   $
��Left=�6   $��403,-1,0,72q�6/   $
��Wrap=�6D   $��48(�6X   �� 6g    � Language$ ru-ru�6k   $#�АИС ПОЛИКЛИНИКА��6|   6�   �� 5!   
   $�� ��6   $��Center=�6   $��	0,134,0,0q�69   $	��Top=�6L   $
��1280��6d   $��1��6q   
���   �
���   �$ 0.5,0.5&�6�   z�5"      V� 5#      .~�5$      �� $ -1Q�6%   �� 5%      �� 5&      T� 5'      5(      5*      �� 5+   
   $��1167,10,10,96q�6   $
��Wrap=�6+   $��18(�6?   �� 6N   $ ru-ru�6R   $�Сотрудники��6c   6x   &   System.Windows.Controls.DataGrid  5,   
   -   5          Name$ 	UsersGrid��5.      $��1��5,         AutoGenerateColumns .  	   Columns	 5/      0  *System.Windows.Controls.DataGridTextColumn  50      ,  &System.Windows.Controls.DataGridColumn
   Header$
 ID��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 61   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6;   �� *ID+  51      $
 Пользователь��6%   $ * 6;    6E   �� *Login+  52      $
 Пароль��6%   $ * 65    6?   �� *
Password+  53      $
 Роль��6%   $ * 63    6=   �� *
Role.Title+55      �� 56   
   $��2��6   $��Center=�57       �� Orientation$ 
Horizontal=�58      $��Center=�59      .+�5:      �� -	   5        $
 Add1��5<      $��24��5:      $+��%Добавить запись в бд��5=      $	��150��5>      
�������5?      �� 5@      -
   5        $ Edit1��5B      $��24��5@      $
��10 0q�5C      $#��Изменить запись��5D      $	��150��5E      
�������5F      �� 5G      -   5        $
 Rem1��5I      $��24��5G      $��Удалить��5J      $	��150��5K      
�������5L      5M      �� 5N   
   -   5        $�� ��5N      $��1229,40,0,0q�6   $��2��61   ���	#FFE6E2E2���	#FFE6E2E26f   �� 5O   
   -   5        $#��Выполнить отчёт��5O      $
��Left=�6+   $��	884,0,0,0q�6F   $��2��6Y   $��Center=�6f   $��24��6�   $	��150��6�   
�������6�   �� 5P   
   $��	10,0,0,81q�6   $��	/poli.png��6#   $
��Fill=�66   $ 
0.496,0.09&�6E   $��49��6h   $��Bottom=�6t   $
��Left=�6�   $	��190��6�   5Q      5R      
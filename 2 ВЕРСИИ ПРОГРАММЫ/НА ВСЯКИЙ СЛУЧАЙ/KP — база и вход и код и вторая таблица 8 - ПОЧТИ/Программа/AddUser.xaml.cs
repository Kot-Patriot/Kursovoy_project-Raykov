using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using Приложушечка.Model;

namespace Приложушечка
{
    /// <summary>
    /// Логика взаимодействия для AddUser.xaml
    /// </summary>
    public partial class AddUser : Window
    {
        public AddUser()
        {
            InitializeComponent();
            RoleTxb1.ItemsSource = AppData.db.Role.ToList();
        }

        private void SaveClick(object sender, RoutedEventArgs e)
        {
            User user = new User();

            user.Login = LoginTxb1.Text;
            user.Password = PassTxb1.Text;

            var CurrectRole = RoleTxb1.SelectedItem as Role;
            user.RoleID = CurrectRole.ID;

            AppData.db.User.Add(user);
            AppData.db.SaveChanges();
            MessageBox.Show("Пользователь был добавлен в базу");
        }

        private void Goba_Click(object sender, RoutedEventArgs e)
        {
            Window2 winUs = new Window2();
            winUs.Show();
            this.Close();
        }
    }
}

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
    /// Логика взаимодействия для Edit2.xaml
    /// </summary>
    public partial class Edit2 : Window
    {
        public User currectUser = new User();
        MedTestEntities db = new MedTestEntities();
        public Edit2(User selectedUser)
        {
            currectUser = selectedUser;
            InitializeComponent();
            DataContext = currectUser;
            LoginTxb2.Text = currectUser.Login;
            PassTxb2.Text = currectUser.Password;
            RoleTXB2.Text = Convert.ToString(currectUser.RoleID);

        }
        private void Update_Btn(object sender, RoutedEventArgs e)
        {
            //db.SaveChanges();
            //MedTestEntities.GetContext().SaveChanges();
            MessageBox.Show("Данные успешно изменены");
            Close();
        }
        private void Cancel_Btn(object sender, RoutedEventArgs e)
        {
            Close();
        }

    }
}

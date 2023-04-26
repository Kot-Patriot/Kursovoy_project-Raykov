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
    /// Логика взаимодействия для AddBtn.xaml
    /// </summary>
    public partial class AddBtn : Window
    {
        public AddBtn()
        {
            InitializeComponent();

            StatusCmb.ItemsSource = AppData.db.Information.ToList();
        }

        private void Save_Btn_Click(object sender, RoutedEventArgs e)
        {
            Information information = new Information();

            information.ID = IdTxb.TabIndex;
            information.FIO = FIOTxb.Text;
            information.NumberBase = Number_of_baseTxb.TabIndex;
            information.DateRecive = DataReciveCal.SelectedDate.Value;
            information.History = A_brief_historyTxb.Text;
            var currectStatus = StatusCmb.SelectedItem as Information;
            information.Status = currectStatus.Status;
            information.Birthday = Date_of_birthCal.SelectedDate.Value;

            AppData.db.Information.Add(information);
            AppData.db.SaveChanges();
            MessageBox.Show("Пациент был добавлен в базу");

        }

        private void GoBa_Btn_Click(object sender, RoutedEventArgs e)
        {
            Window1 win1 = new Window1();
            win1.Show();
            this.Close();
        }
    }
}

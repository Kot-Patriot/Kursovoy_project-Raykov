using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;
using Приложушечка;
using Приложушечка.Model;

namespace Avtorizaciya
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        DispatcherTimer timer = new DispatcherTimer();
        string code;
        public MainWindow()
        {
            InitializeComponent();
        }

        public static class Globals
        {
            public static int Role;

            public static User userinfo { get; set; }
        }

        private void gencode()
        {
            code = null;
            Random random = new Random();
            string[] massiveCharacter = new string[] {"1", "2","3","4","5","6","7", "8", "9", "a", "B", "c", "d", "E", "F", "j", "f", "z", "f", "S",
            "t", "T", "Y","y","D","d","l","L","H","h","A","m","M","n","N",};
            for (int i = 0; i < 4; i++)
            {
                code += massiveCharacter[random.Next(0, massiveCharacter.Length)];
            }
            if (MessageBox.Show(code.ToString(), "Code", MessageBoxButton.OK, MessageBoxImage.Warning) == MessageBoxResult.OK)
            {
                timer.Interval = TimeSpan.FromSeconds(10);
                timer.Tick += Timer_Tick;
                timer.Start();

                CodeBox.IsEnabled = true;
                Login.IsEnabled = false;
                RefreshKnopka.IsEnabled = true;

            }
        }

        private void Login_KeyUp(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                using (var db = new MedTestEntities())
                {
                    var login = db.User.AsNoTracking().FirstOrDefault(l => l.Login == Login.Text.Trim());
                    if (login == null)
                    {
                        MessageBox.Show("Неверный логин");
                    }
                    else
                    {
                        Password.IsEnabled = true;
                        Login.IsEnabled = false;
                        CodeBox.IsEnabled = false;
                        Password.Focus();
                    }
                    Globals.Role = login.RoleID;
                    Globals.userinfo = login;
                }
            }
        }



        private void Password_KeyUp(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                using (var db = new MedTestEntities())
                {
                    var login1 = db.User.AsNoTracking().FirstOrDefault(l => l.Login == Login.Text.Trim() & l.Password == Password.Password);
                    if (login1 == null)
                    {
                        MessageBox.Show("Неверный пароль");
                    }
                    else
                    {
                        Password.IsEnabled = false;
                        CodeBox.IsEnabled = true;
                        Login.IsEnabled = false;
                        gencode();
                        CodeBox.Focus();
                    }
                    Globals.Role = login1.RoleID;
                    Globals.userinfo = login1;
                }
            }
        }
        void Timer_Tick(Object sender, EventArgs e)
        {
            code = null;
            MessageBox.Show("Время написания кода вышло. Повторите попытку");
            timer.Stop();
        }

        private void Sign_In(object sender, RoutedEventArgs e)
        {
            using (var db = new MedTestEntities())
            {

                var auth = db.User.AsNoTracking().FirstOrDefault(m => m.Login == Login.Text && m.Password == Password.Password);
                if (auth != null & code == CodeBox.Text)
                {
                    timer.Stop();
                    Globals.Role = auth.RoleID;
                    Globals.userinfo = auth;
                    Window1 winavto = new Window1();
                    winavto.Show();
                    Close();
                }
                else
                {
                    MessageBox.Show("Неверный код, повторите попытку!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Warning);
                    timer.Stop();
                }
            }
        }

        private void Refresh(object sender, RoutedEventArgs e)
        {
            timer.Stop();
            gencode();
            CodeBox.Focus();
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void Codek(object sender, TextChangedEventArgs e)
        {

        }

        private void CodeBox_KeyUp(object sender, KeyEventArgs e)
        {
        }
    }
}

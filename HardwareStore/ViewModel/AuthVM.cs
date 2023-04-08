using HardwareStore.Model.Database;
using System;
using System.Data.Entity;
using System.Threading.Tasks;
using System.Windows;

namespace HardwareStore.ViewModel
{
    public class AuthVM : BaseVM
    {
        private string _login;
        private string _password;
        private string _btnContent = "Login";

        public string Login
        {
            get => _login;
            set
            {
                _login = value;
                OnPropertyChanged(nameof(Login));
            }
        }

        public string Password
        {
            get => _password;
            set
            {
                _password = value;
                OnPropertyChanged(nameof(Password));
            }
        }

        public string BtnContent
        {
            get => _btnContent;
            set
            {
                _btnContent = value;
                OnPropertyChanged(nameof(BtnContent));
            }
        }

        public async Task<bool> ValidateAuthorizationAsync()
        {
            try
            {
                BtnContent = "Wait...";

                using (var context = new TradeEntities())
                {
                    var user = await context.User.FirstOrDefaultAsync(u => u.UserLogin == Login &&  u.UserPassword == Password);
                    if(user != null) 
                    { 
                        return true;                    
                    }
                    else
                    {
                        return false;
                    }
                }
            }
            catch (Exception ex) 
            {
                MessageBox.Show(ex.Message,"Bug",MessageBoxButton.OK,MessageBoxImage.Stop);
            }
            finally
            {
                BtnContent = "Login";
            }
            return false;
        }

    }
}

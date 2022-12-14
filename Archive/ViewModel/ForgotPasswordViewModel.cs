using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Ecm.Mvvm;
using System.Windows.Input;
using System.ComponentModel;
using Ecm.Utility;
using System.Resources;
using System.Reflection;
using Ecm.Archive.View;
using Ecm.Model.DataProvider;

namespace Ecm.Archive.ViewModel
{
    public class ForgotPasswordViewModel : ComponentViewModel
    {
        private SecurityProvider _securityProvier = new SecurityProvider();
        private string _username;
        private bool _hasError;
        private RelayCommand _okCommand;
        private RelayCommand _cancelCommand;

        public string Username
        {
            get { return _username; }
            set
            {
                _username = value;
                OnPropertyChanged("Username");
            }
        }

        public DialogBaseView Dialog { get; set; }

        public ICommand OkCommand
        {
            get
            {
                if (_okCommand == null)
                {
                    _okCommand = new RelayCommand(p => ResetPassword(), p => CanReset());
                }

                return _okCommand;
            }
        }

        public ICommand CancelCommand
        {
            get
            {
                if (_cancelCommand == null)
                {
                    _cancelCommand = new RelayCommand(p => Cancel());
                }

                return _cancelCommand;
            }
        }

        //Private methods
        private void Cancel()
        {
            Dialog.Close();
        }

        private bool CanReset()
        {
            return !_hasError && !string.IsNullOrEmpty(Username) && !string.IsNullOrWhiteSpace(Username);
        }

        private void ResetPassword()
        {
            try
            {
                _securityProvier.ResetPassword(Username);
                DialogService.ShowMessageDialog(new ResourceManager("Ecm.Archive.LoginView", Assembly.GetExecutingAssembly()).GetString("uiResetPasswordSuccessfully"));
                Dialog.Close();
            }
            catch (Exception ex)
            {
                ProcessHelper.ProcessException(ex);
            }
        }
    }
}

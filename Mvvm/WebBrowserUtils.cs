using System;
using System.Windows;
using System.Windows.Controls;

namespace Ecm.Mvvm
{
    /// <summary>
    ///   The purpose of this class is to ....
    /// </summary>
    public static class WebBrowserUtility
    {
        public static void BindableSourcePropertyChanged(DependencyObject o, DependencyPropertyChangedEventArgs e)
        {
            var browser = o as WebBrowser;
            if (browser != null)
            {
                string uri = e.NewValue as string;
                browser.Source = uri != null ? new Uri(uri) : null;
            }
        }

        public static string GetBindableSource(DependencyObject obj)
        {
            return (string)obj.GetValue(BindableSourceProperty);
        }

        public static void SetBindableSource(DependencyObject obj, string value)
        {
            obj.SetValue(BindableSourceProperty, value);
        }

        public static readonly DependencyProperty BindableSourceProperty =
            DependencyProperty.RegisterAttached(
                "BindableSource",
                typeof(string),
                typeof(WebBrowserUtility),
                new UIPropertyMetadata(null, BindableSourcePropertyChanged));
    }
}
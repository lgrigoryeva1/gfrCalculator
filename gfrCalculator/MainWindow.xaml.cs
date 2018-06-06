using System;
using System.Collections.Generic;
using System.Globalization;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace gfrCalculator
{
    public class KidneyData
    {
        public int Height { get; set; }
        public double SerumValue { get; set; }
    }

    
    public partial class MainWindow : Window
    {       
        int height;
        double serum;
        double rate;
        
        KidneyData Patient;

        public MainWindow()
        {
            InitializeComponent();
            Patient = new KidneyData();
            this.DataContext = Patient;

            App.LanguageChanged += LanguageChanged;

            CultureInfo currLang = App.Language;

            menuLanguage.Items.Clear();
            foreach (var lang in App.Languages)
            {
                MenuItem menuLang = new MenuItem();
                menuLang.Header = lang.DisplayName;
                menuLang.Tag = lang;
                menuLang.IsChecked = lang.Equals(currLang);
                menuLang.Click += ChangeLanguageClick;
                menuLanguage.Items.Add(menuLang);
            }

            heightValue.MaxLength = 3;
            serumValue.MaxLength = 3;
        }

        private void LanguageChanged(Object sender, EventArgs e)
        {
            CultureInfo currLang = App.Language;

            foreach (MenuItem i in menuLanguage.Items)
            {
                CultureInfo ci = i.Tag as CultureInfo;
                i.IsChecked = ci != null && ci.Equals(currLang);
            }
        }

        private void ChangeLanguageClick(Object sender, EventArgs e)
        {
            MenuItem mi = sender as MenuItem;
            if (mi != null)
            {
                CultureInfo lang = mi.Tag as CultureInfo;
                if (lang != null)
                {
                    App.Language = lang;
                }
            }
        }

        private void resetButton_Click(object sender, RoutedEventArgs e)
        {
            heightValue.Clear();
            serumValue.Clear();
            resultLabel.Content = "";
        }

        private void calculateButton_Click(object sender, RoutedEventArgs e)
        {
            height = Int32.Parse(heightValue.Text);
            serum = Double.Parse(serumValue.Text);

            if (mgButton.IsChecked == true)
            {
                rate = 0.413 * height / serum;
                resultLabel.Content = String.Format("{0:0.00}", rate);
            }

            else if (molButton.IsChecked == true)
            {
                rate = 0.36 * height / serum;
                resultLabel.Content = String.Format("{0:0.00}", rate);
            }
        }
    }

    public class StringToIntValidationRule : ValidationRule
    {
        public override ValidationResult Validate(object value, System.Globalization.CultureInfo cultureInfo)
        {
            int i;
            if (int.TryParse(value.ToString(), out i))
                return new ValidationResult(true, null);

            return new ValidationResult(false, "Please enter a valid integer value");
        }
    }

    public class StringToDoubleValidationRule : ValidationRule
    {
        public override ValidationResult Validate(object value, System.Globalization.CultureInfo cultureInfo)
        {
            double j;
            if (double.TryParse(value.ToString(), out j))
                return new ValidationResult(true, null);

            return new ValidationResult(false, "Please enter a valid numerical value");
        }
    }
}

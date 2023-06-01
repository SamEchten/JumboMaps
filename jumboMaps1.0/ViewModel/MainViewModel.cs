

using CommunityToolkit.Mvvm.ComponentModel;
using System.ComponentModel;

namespace jumboMaps1._0.ViewModel
{
    public partial class MainViewModel : ObservableObject
    {
        [ObservableProperty]
        public string underTitle;

        public MainViewModel()
        {
            underTitle = "Hello world";
        }
    }
}

using jumboMaps1._0.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace jumboMaps1._0.ViewModel
{
    public class Store
    {
        public String Name { get; set; }
        public StoreAdmin StoreAdmin { get; set; }
        public Blueprint Blueprint { get; set; }
        public List<Section> Sections { get; set; }
        
        public Store(string name) {
            this.Name = name;
        }
    }
}

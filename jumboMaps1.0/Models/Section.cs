using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace jumboMaps1._0.Models
{
    public class Section
    {
        public String Name { get; set; }
        public int NrOfRacks { get; set; }
        public Dictionary<Product, Location> Products { get; set; }

        public Section(string name, int nrOfRacks)
        {
            Name = name;
            NrOfRacks = nrOfRacks;
            Products = new Dictionary<Product, Location>();
        }

        //Inserts product into product dictionary paired with its location
        public void AddProduct(Product product, Location location)
        {
            this.Products.Add(product, location);
        }

        //Removes provided product from products dictionary
        public void RemoveProduct(Product product)
        {
            this.Products.Remove(product);
        }
    }
}

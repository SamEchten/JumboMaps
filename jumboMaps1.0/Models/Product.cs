using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace jumboMaps1._0.Models
{
    public class Product
    {
        public int Id { get; set; }
        public String Name { get; set; }
        public String Description { get; set; }
        public String ImageUrl { get; set; }
        public Double Price { get; set; }
        public Product(int id, String name, string description, string imageUrl, Double Price) { 
            this.Id = id;
            this.Name = name;
            this.Description = description;
            this.ImageUrl = imageUrl;
            this.Price = Price;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace jumboMaps1._0.Models
{
    public class Location
    {
        public int Rack { get; set; }
        public int Row { get; set; }
        public int Position { get; set; }

        public Location(int rack, int row, int position) { 
            this.Rack = rack;
            this.Row = row;
            this.Position = position;
        }
    }
}

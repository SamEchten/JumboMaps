using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace jumboMaps1._0.Models
{
    public class StoreAdmin
    {
        public int Id { get; set; }
        public String Email { get; set; }
        public StoreAdmin(int id, String email)
        {
            this.Id = id;
            this.Email = email;
        }
    }
}

using jumboMaps1._0.Models.Positioning;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace jumboMaps1._0.Models
{
    public class Blueprint
    {
        public Bitmap Background { get; set; }
        public Dictionary<String, SectionPosition> Sections { get; set; }
        public Blueprint(Bitmap background, Dictionary<String, SectionPosition> sections ) {
            this.Background = background;
            this.Sections = sections;
        }

    }
}

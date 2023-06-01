using jumboMaps1._0.Models.Positioning;
using System.Drawing;

namespace jumboMaps1._0.Models
{
    public class Blueprint
    {
        public Bitmap Background { get; set; }
        public Dictionary<String, SectionPosition> Sections { get; set; }
        public Blueprint(Bitmap background) {
            this.Background = background;
            this.Sections = new Dictionary<string, SectionPosition>();
        }

        public void AddSection(string name, SectionPosition position)
        {
            this.Sections.Add(name, position);
        }

        public void RemoveSection(string name)
        {
            this.Sections.Remove(name);
        }

    }
}

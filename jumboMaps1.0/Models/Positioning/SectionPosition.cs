using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace jumboMaps1._0.Models.Positioning
{
    public class SectionPosition
    {
        public Position TopLeftPos { get; set; }
        public Position TopRightPos { get; set; }
        public Position BottomLeftPos { get; set; }
        public Position BottomRightPos { get; set; }

        public SectionPosition(
            Position topLeftPos,
            Position topRightPos,
            Position bottomLeftPos,
            Position bottomRightPos
            ) 
        { 
            this.TopLeftPos = topLeftPos;
            this.TopRightPos = topRightPos;
            this.BottomLeftPos = bottomLeftPos;
            this.BottomRightPos = bottomRightPos;
        }
    }
}

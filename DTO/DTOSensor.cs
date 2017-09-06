using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
   public class DTOSensor
    {
        public int Id_sen;

        public int Id_sen1
        {
            get { return Id_sen; }
            set { Id_sen = value; }
        }
        private string Magnitud_sen;

        public string Magnitud_sen1
        {
            get { return Magnitud_sen; }
            set { Magnitud_sen = value; }
        }
        private string Caracteristica_sen;

        public string Caracteristica_sen1
        {
            get { return Caracteristica_sen; }
            set { Caracteristica_sen = value; }
        }
    }
}

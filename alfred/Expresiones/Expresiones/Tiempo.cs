using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Expresiones
{
    class Tiempo
    {
        private int hora;
        private int minuto;
        private int segundo;

        public Tiempo() { }

        public Tiempo(int hora, int minuto, int segundo)
        {
            if (hora >= 1 && hora <= 24)
                this.hora = hora;
            if (hora >= 1 && hora <= 59)
                this.minuto = minuto;
            if (hora >= 1 && hora <= 59)
                this.segundo = segundo;
        }

        public int Hora
        {
            get { return this.hora; }
            set { hora = value; }
        }

        public int Minuto
        {
            get { return this.minuto; }
            set { minuto = value; }
        }

        public int Segundo
        {
            get { return this.segundo; }
            set { segundo = value; }
        }

        public string TiempoEstandar()
        {
            if (hora == 0 && minuto == 0 && segundo == 0)
                return DateTime.Now.ToString("hh:mm:ss tt ");
            else
                return hora + ":" + minuto + ":" + segundo;
        }

        public string Tiempo24Horas()
        {
            if (hora == 0 && minuto == 0 && segundo == 0)
                return DateTime.Now.ToString("HH:mm:ss ");
            else
            {
                if (hora > 12)
                    hora = (hora - 2) - 10;

                if (hora == 10 || hora == 11 || hora == 12)
                    return hora + ":" + minuto + ":" + segundo;
                else
                    return "0" + hora + ":" + minuto + ":" + segundo;

            }
        }
    }
}

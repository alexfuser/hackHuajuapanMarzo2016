using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;
using System.Collections.Specialized;

namespace Expresiones
{
    class Program
    {
        static void Main(string[] args)
        {
            string cadena1 = string.Empty;

            cadena1 = "Ir al Hackathon a las 02:40 de la tarde";

            #region Ejemplos_Eventos
            /*Eventos simples*/
            //cadena1 = "ir al super a las 3:30";

            //cadena1 = "a las 11:01 de la noche enviar el correo a la profesora";
            //*cadena1 = "a la profesora enviar el correo a las 11:20 de la noche.";
            //cadena1 = "Entregar el proyecto de Teoría de la computación a las 12:30 de mañana";
            //cadena1 = "a partir de la 01:20 de la tarde, la profesora va a recibir los trabajos.";                     
            //*cadena1 = "La maestra de Programación va a recibir los proyectos a las 04 de la tarde de cada mes.";
            //cadena1 =  "La cita con el doctor es el domingo a las 4:40.";
            //cadena1 = "el domingo a las 09 de la noche es el partido del Manchester United";
            //cadena1 = "para los compañeros de Psicología, entregar a mas tardar el 14 de este mes el CD con la presentación.";
            //cadena1 = "Ir a Liverpool a las 04 de la tarde";
            #endregion

            //var regexHora1 = new Regex(@"([a-z]*?[A-Z]*?[A-z]*?\ba la(s)?\b[ ]*\d[0-9]*[:]?[.]?[0-9]*)");
            Console.WriteLine("Entrada: " + cadena1);
            var regexHora2 = new Regex(@"(([01]?[0-9]|2[0-3]):[0-5][0-9](:[0-5][0-9])?)|([0-9]+)");
            string cadena2 = string.Empty;

            Filtros filtros = new Filtros();
            filtros.FiltrarHorario(cadena1);
            Console.ReadKey();
        }

    }

    public class Filtros
    {
        Match coincidencia;
        Match coincidenciaHoraMin;
        Match coincidenciaMomentoDelDia;

        public void FiltrarHorario(string cadena)
        {
            var regexCompleto = new Regex(@"(([ ]?(a la(s)?|para la(s)?|a partir de la(s)?|a m(á|a)s tardar (el|a la(s)?)|es el|para el)[ ]))((([ ]*?(0[1-9]|1[1-9]|2[0-3])([:/.](0[1-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9]))[ ]*?)|([ ]*?(0[1-9]|1[1-9]|2[0-3])[ ]*?(hora(s)?|hr(s)?)?[ ]*?)|([ ]*?(0[1-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9])( minuto(s)?| min(s)?)?[ ]?))([ ]*?(por la|de la|en la)[ ]*?(mañana|tarde|noche)[ ]*?)?)?((([ ]*?(de(l)?|de el|de la)[ ]*?)([ ]*?(pr(ó|o)xim(o|a)(s)?[ ]*?))?)?(([ ]*?(19|20)[0-9]{2}[- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[ ]*?)|([ ]*?(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.]((19|20)[0-9]{2})[ ]*?)|([ ]*?(0[1-9]|[12][0-9]|3[01])( de )(enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre)( de(l)? )((19|20)[0-9]{2})[ ]*?)|([ ]*?(0[1-9]|[12][0-9]|3[01])( de )(enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre)[ ]*?)([ ]*?(por la|de la|en la)[ ]*?(mañana|tarde|noche)[ ]*?)?))?((([ ]*?(de(l)?|de el|de la|de cada|cada|de est(a|e))[ ]*?)([ ]*?(pr(ó|o)xim(o|a)(s)?[ ]*?))?)?(([ ]*?(hoy|mañana|pasado (mañana)?|la pr(ó|o)xima semana|dentro de [0-9] semanas|lunes|martes|mi(é|e)rcoles|jueves|viernes|s(á|a)bado(s)?|domingo(s)?)|(semana(s)?)|(mes(es)?)[ ]*?))([ ]*?(por la|de la|en la)[ ]*?(mañana|tarde|noche)[ ]*?)?)?", RegexOptions.IgnoreCase);
            coincidencia = regexCompleto.Match(cadena);

            var regexHoraMin = new Regex(@"(([01]?[0-9]|2[0-3]):[0-5][0-9](:[0-5][0-9])?)|([0-9]+)");
            var regexMomentoDelDia = new Regex(@"(mañana|tarde|noche)");

            int hora;
            int minuto;

            if (coincidencia.ToString().Equals(null)) 
                throw new Exception();
            else
            {
                var horario = string.Empty;
                Console.WriteLine("Filtro /ER/: " + coincidencia.ToString());

                //filtra a solo la hora(Hora+Min)
                coincidenciaHoraMin = regexHoraMin.Match(coincidencia.ToString());

                string[] temp = coincidenciaHoraMin.ToString().Split(':');
                hora = Convert.ToInt32(temp[0]);
                minuto = Convert.ToInt32(temp[1]);

                coincidenciaMomentoDelDia = regexMomentoDelDia.Match(coincidencia.ToString());
                Console.WriteLine("Momento del dia: " + coincidenciaMomentoDelDia);
            }


            //determina si es am o pm.
            //if(regex3.Match(match))
            Console.WriteLine("Hora: " + hora);
            Console.WriteLine("Minuto: " + minuto);

        }

        public void CoincidenciaRegex(Match match)
        {
          
        }

        public void EstablecerFecha(int cadenaFiltrada, int hora, int minuto)
        {
            var tiempo = new Tiempo();
            int horaActual;
            int minutoActual;

            string tiempoActual = tiempo.Tiempo24Horas();
            DateTime tiempoA = DateTime.Now;

            Console.WriteLine("Tiempo Actual: ", tiempoA);

            var tiemporegex = new DateTime();

            horaActual = tiemporegex.Date.Hour;
            minutoActual = tiemporegex.Date.Minute;


        }

        public void DetallesEvento(DateTime horaInicio, DateTime horaFin)
        {

        }

    }
}




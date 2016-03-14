using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text.RegularExpressions;

public partial class _Default : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        //EntradaTexto.Text = "Ir al Hackaton a las 02:30 de la tarde";
    }

    public void Agregar_Click(object sender, EventArgs e)
    {
        Match coincidencia;
        Match coincidenciaHoraMin;
        Match coincidenciaMomentoDelDia;

        var regexCompleto = new Regex(@"(([ ]?(a la(s)?|para la(s)?|a partir de la(s)?|a m(á|a)s tardar (el|a la(s)?)|es el|para el)[ ]))((([ ]*?(0[1-9]|1[1-9]|2[0-3])([:/.](0[1-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9]))[ ]*?)|([ ]*?(0[1-9]|1[1-9]|2[0-3])[ ]*?(hora(s)?|hr(s)?)?[ ]*?)|([ ]*?(0[1-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9])( minuto(s)?| min(s)?)?[ ]?))([ ]*?(por la|de la|en la)[ ]*?(mañana|tarde|noche)[ ]*?)?)?((([ ]*?(de(l)?|de el|de la)[ ]*?)([ ]*?(pr(ó|o)xim(o|a)(s)?[ ]*?))?)?(([ ]*?(19|20)[0-9]{2}[- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[ ]*?)|([ ]*?(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.]((19|20)[0-9]{2})[ ]*?)|([ ]*?(0[1-9]|[12][0-9]|3[01])( de )(enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre)( de(l)? )((19|20)[0-9]{2})[ ]*?)|([ ]*?(0[1-9]|[12][0-9]|3[01])( de )(enero|febrero|marzo|abril|mayo|junio|julio|agosto|septiembre|octubre|noviembre|diciembre)[ ]*?)([ ]*?(por la|de la|en la)[ ]*?(mañana|tarde|noche)[ ]*?)?))?((([ ]*?(de(l)?|de el|de la|de cada|cada|de est(a|e))[ ]*?)([ ]*?(pr(ó|o)xim(o|a)(s)?[ ]*?))?)?(([ ]*?(hoy|mañana|pasado (mañana)?|la pr(ó|o)xima semana|dentro de [0-9] semanas|lunes|martes|mi(é|e)rcoles|jueves|viernes|s(á|a)bado(s)?|domingo(s)?)|(semana(s)?)|(mes(es)?)[ ]*?))([ ]*?(por la|de la|en la)[ ]*?(mañana|tarde|noche)[ ]*?)?)?", RegexOptions.IgnoreCase);
        coincidencia = regexCompleto.Match(EntradaTexto.Text.ToString());

        var regexHoraMin = new Regex(@"(([01]?[0-9]|2[0-3]):[0-5][0-9](:[0-5][0-9])?)|([0-9]+)");
        var regexMomentoDelDia = new Regex(@"(mañana|tarde|noche)");

        var regexEvento = new Regex(@"(Hackathon|Autobus|recibir los trabajos|cita con el doctor|partido del Manchester United|entregar la presentacion|Entregar el proyecto|cine|mercado|super)");
        var coincidenciaEvento = regexEvento.Match(EntradaTexto.Text.ToString());

        int hora;
        int minuto;

        if (coincidencia.ToString().Equals(null))
            throw new Exception();
        else
        {
            var horario = string.Empty;
            //Console.WriteLine("Filtro /ER/: " + coincidencia.ToString());

            //filtra a solo la hora(Hora+Min)
            coincidenciaHoraMin = regexHoraMin.Match(coincidencia.ToString());

            string[] temp = coincidenciaHoraMin.ToString().Split(':');
            hora = Convert.ToInt32(temp[0]);
            minuto = Convert.ToInt32(temp[1]);

            coincidenciaMomentoDelDia = regexMomentoDelDia.Match(coincidencia.ToString());
            TxtBoxMomentoDia.Text = "" + coincidenciaMomentoDelDia;

            coincidenciaEvento = regexEvento.Match(coincidenciaEvento.ToString());
            TxtBoxEvento.Text = "" + coincidenciaEvento;
        }


        //determina si es am o pm.
        //if(regex3.Match(match))
        TxtBoxHora.Text = "" + hora;
        TxtBoxMinuto.Text = "" + minuto;

    }
    protected void LeerXML_Click(object sender, EventArgs e)
    {

    }
    protected void GuardarXML_Click(object sender, EventArgs e)
    {
    }
}
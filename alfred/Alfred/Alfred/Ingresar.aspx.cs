using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class Ingresar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }


  
    protected void btnIniciar_Click(object sender, ImageClickEventArgs e)
    {
        string usuario = TextBox1.Text.Replace(";", "").Replace("--", "");
        string contraseña = TextBox2.Text.Replace(";", "").Replace("--", "");

        if (usuario == "chococuate" && contraseña == "pass")
        {
            //lblMensaje.Text = "Usuario/Contraseña correcta.";
            Response.Redirect("index.aspx");
        }

        else
        {

            Label1.Text = "Usuario/Contraseña incorrecta verifique por favor.";
        }
    }


    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}
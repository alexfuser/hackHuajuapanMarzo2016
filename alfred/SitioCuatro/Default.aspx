<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="es">
<head runat="server">
    <title>Tabla</title>
    <style type="text/css">
        #form1 { height: 348px; }
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

	<link href="content/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="content/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
	<link href="content/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
    <link href="Content/css/mi-css.css" rel="Stylesheet" type="text/css" />

	<script type="text/javascript" src="scripts/js/bootstrap.js"></script>
	<script type="text/javascript" src="scripts/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="scripts/js/npm.js"></script>

</head>

    <body>
    <form id="form1" runat="server" class="form-horizontal">
    <div style="height: 420px">
    
        <asp:Image ID="Image1" runat="server" Height="168px" ImageUrl="~/Img/Logo.png" Width="455px" ImageAlign="Middle"/>
        <br />
        <br />
        
        <asp:TextBox ID="EntradaTexto" runat="server" Height="30px" Width="736px"></asp:TextBox>
        <br /> <br />  
        <div class="col-lg-3">
            	<section class="container">
				<section class="login-form">
                <div align="center">
                <asp:Button ID="Agregar" runat="server" Text="Agregar"
                onclick="Agregar_Click" class="btn btn-lg btn-primary btn-block " Height="45px" Width="436px"/>
                   </div>
               </section>
                    </section>
        </div>

    </div>

		<section class="container">
				<section class="login-form">
						<!-- <img src="../img/logo.png" class="img-responsive" alt="" /> -->
						<center><h2><font color="white">Evento</font>  </h2>
                            <asp:TextBox ID="TxtBoxEvento" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                            <asp:TextBox ID="TxtBoxMomentoDia" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                            <asp:TextBox ID="TxtBoxHora" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                            <asp:TextBox ID="TxtBoxMinuto" runat="server" CssClass="form-control input-lg"></asp:TextBox>
                        </center>
				</section>
		</section>


    </form>

    </body>
</html>

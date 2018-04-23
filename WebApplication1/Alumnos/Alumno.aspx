<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Alumno.aspx.vb" Inherits="WebApplication1.Alumno" %>
<%@ Register Src="~/CabeceraInicio.ascx" TagPrefix="uc1" TagName="CabeceraInicio" %>

<%@ Register src="../UsuariosLogueados.ascx" tagname="UsuariosLogueados" tagprefix="uc2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Panel de Control: ALUMNO</title>
    <style type="text/css">
        #columnaIZQ {
            height: 550px;
        }
    </style>
</head>
<body>
    <form ID="columnaIZQ" runat="server">
    <div id="cabecera" style="text-align:center;background-color:Highlight;">
        <h1 style="color:lightcyan">Bienvenido <asp:Label ID="Label1" runat="server" Text=" "></asp:Label></h1>
    </div>
    <div id="cabecera2" style="float:right;text-align:left;width:10%">
        <asp:ImageButton ID="ImageButton2" runat="server" Height="53px" ImageUrl="https://cdn2.iconfinder.com/data/icons/snipicons/500/logout-256.png" Width="57px" />
        Logout
    </div>
<div style="text-align:center;float:left;background-color:cornflowerblue;width:25%; height: 500px;">
    
     <br /><br /<br /><br /><br /><br /><br /><br /><!-- AGRANDAR-->
        <asp:HyperLink ID="HLTareasGenericas" style="font-size:35px" runat="server" NavigateUrl="~/Alumnos/TareasAlumno.aspx">Tareas Genéricas</asp:HyperLink>
    <br /><br />
        <asp:HyperLink ID="HLTareasPropias"  style="font-size:35px" runat="server" NavigateUrl="">Tareas Propias</asp:HyperLink> 
    <br /><br />
     <asp:HyperLink ID="HLGrupos"  style="font-size:35px" runat="server" NavigateUrl="">Grupos</asp:HyperLink>
    <br /><br />
    
</div>
<div style="text-align:center;float:right;background-color:Highlight;width:74%; height: 450px;">
    <br /><br /><br /><br /><br /><br />
    <h1>Gestión Web de Tareas-Dedicación</h1>
    <br /><br />
    <h1>Alumnos</h1>
</div>

     <br /><br /><br /><br /><br /><br />
        <uc2:UsuariosLogueados ID="UsuariosLogueados1" runat="server" />
 
    
        </form>
</body>
</html>

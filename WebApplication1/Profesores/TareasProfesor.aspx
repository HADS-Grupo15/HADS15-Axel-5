<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TareasProfesor.aspx.vb" Inherits="WebApplication1.TareasProfesor" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Tareas</title>
</head>
<body id="UpdatePanel">
    <div style="text-align:center;background-color:Highlight;">
        <h1 style="color:lightcyan">TAREAS DE <asp:Label ID="Label1" runat="server" Text=" "></asp:Label></h1>
    </div>
    <form id="formTareas" runat="server">
     <div style="width:17%; float:left;text-align:right;">
        <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="https://i.imgur.com/hxHRLGM.png" Width="69px" ForeColor="#0099FF" />
    </div>
    <div style="width:17%; float:right;text-align:left;">
        <asp:ImageButton ID="ImageButton2" runat="server" Height="53px" ImageUrl="https://cdn2.iconfinder.com/data/icons/snipicons/500/logout-256.png" Width="57px" />
    </div>
        <br /><br /><br />
   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <p style="text-align:center">
                    <asp:Label ID="Label2" runat="server" ForeColor="#0066FF" Text="Seleccione una asignatura" Visible="True" Font-Size="Larger" />
                </p>
                <p style="text-align:center;font-size:17px">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"  Height="27px" Width="95px" DataTextField="codigo" DataValueField="codigo" AutoPostBack="true"/>
                </p>   
                <p style="text-align:center">
                     <asp:Button ID="Button1" runat="server" Text="Crear Tarea"  style="border-radius:3px" BackColor="#0099FF" BorderColor="#0033CC" BorderStyle="Double" ForeColor="White" Height="35px" />
                </p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HADS-15-TareasConnectionString %>" SelectCommand="SELECT Asignaturas.codigo FROM Asignaturas 
                                                                                                                                         INNER JOIN GruposClase ON GruposClase.codigoasig = Asignaturas.codigo 
                                                                                                                                         INNER JOIN ProfesoresGrupo ON ProfesoresGrupo.codigogrupo = GruposClase.codigo
                                                                                                                                         WHERE ProfesoresGrupo.email = @email ">
                    <SelectParameters>
                        <asp:SessionParameter Name="email" SessionField="UserID" />
                    </SelectParameters>
                </asp:SqlDataSource>
               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HADS-15-TareasConnectionString %>" SelectCommand="SELECT TareasGenericas.Codigo, TareasGenericas.Descripcion, TareasGenericas.CodAsig, TareasGenericas.HEstimadas, TareasGenericas.Explotacion, TareasGenericas.TipoTarea FROM TareasGenericas INNER JOIN GruposClase ON TareasGenericas.CodAsig = GruposClase.codigoasig INNER JOIN ProfesoresGrupo ON GruposClase.codigo = ProfesoresGrupo.codigogrupo WHERE (TareasGenericas.CodAsig = @codasig) AND (ProfesoresGrupo.email = @email) " >

                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="codasig" PropertyName="SelectedValue" />
                        <asp:SessionParameter Name="email" SessionField="UserID" DefaultValue="" />
                    </SelectParameters>
                </asp:SqlDataSource>            
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Codigo" DataSourceID="SqlDataSource2" AllowSorting="True" HorizontalAlign="Center"  
                    EmptyDataText="No hay tareas de esta asignatura"  Height="328px" Width="841px" BackColor="#C0FAE2" 
                    BorderColor="White">
                    <EditRowStyle BorderColor="#0099FF" Font-Size="Large" />
                    <HeaderStyle BackColor="#aed6f1" />
                    <Columns>
                        <asp:BoundField DataField="Codigo" HeaderText="Codigo" ReadOnly="True" SortExpression="Codigo" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                        <asp:BoundField DataField="CodAsig" HeaderText="CodAsig" SortExpression="CodAsig" />
                        <asp:BoundField DataField="HEstimadas" HeaderText="HEstimadas" SortExpression="HEstimadas" />
                        <asp:CheckBoxField DataField="Explotacion" HeaderText="Explotacion" SortExpression="Explotacion" />
                        <asp:BoundField DataField="TipoTarea" HeaderText="TipoTarea" SortExpression="TipoTarea" />
                    </Columns>
                </asp:GridView>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
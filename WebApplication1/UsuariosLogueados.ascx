<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="UsuariosLogueados.ascx.vb" Inherits="WebApplication1.UsuariosLogueados" %>
  <p>
        Usuarios que han hecho login actualmente:</p>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <a style="width: 98px">
        PROFESORES</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a style="width: 98px">
        ALUMNOS</a>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Interval="3000"></asp:Timer>
            <asp:ListBox ID="ListBoxProfesores" runat="server" Width="212px"></asp:ListBox>
            <asp:ListBox ID="ListBoxAlumnos" runat="server" Width="212px"></asp:ListBox>
            <br />
            <a style="width: 98px">Total:</a><asp:Label ID="LabelNumProfesores" runat="server" Text="0"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a style="width: 98px">Total:</a><asp:Label ID="LabelNumAlumnos" runat="server" Text="0"></asp:Label>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
Public Class Alumno
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click
        FormsAuthentication.SignOut()
        eliminarAlumno(Session("UserID"))
        Session.Abandon()

        Response.Redirect("../Inicio.aspx")
    End Sub
End Class
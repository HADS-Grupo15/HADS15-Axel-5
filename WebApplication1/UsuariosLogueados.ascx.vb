Public Class UsuariosLogueados
    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ActualizarListaUsuarios()
    End Sub

    Protected Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        ActualizarListaUsuarios()
    End Sub

    Protected Sub ActualizarListaUsuarios()
        LabelNumAlumnos.Text = getNumAlumnos()
        ListBoxAlumnos.Items.Clear()
        For i As Integer = 0 To getNumAlumnos() - 1
            ListBoxAlumnos.Items.Add(getAlumno(i))
        Next

        LabelNumProfesores.Text = getNumProfesores()
        ListBoxProfesores.Items.Clear()
        For i As Integer = 0 To getNumProfesores() - 1
            ListBoxProfesores.Items.Add(getProfesor(i))
        Next
    End Sub
End Class
Imports Lista
Public Class Global_asax
    Inherits HttpApplication

    Sub Application_Start(sender As Object, e As EventArgs)
        ListaUsuariosLogueados.crearListas()
    End Sub

End Class
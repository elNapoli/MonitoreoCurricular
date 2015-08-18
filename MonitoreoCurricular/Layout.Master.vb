Public Class Layout
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Btn_Logout.Attributes.Add("data-placement", "bottom")
        Btn_Logout.Attributes.Add("data-original-title", "Logout")
        Btn_Logout.Attributes.Add("data-toggle", "tooltip")



    End Sub

    Protected Sub Btn_Logout_Click(sender As Object, e As EventArgs)

        Session.Abandon()
        Response.Redirect("/Login.aspx", True)
    End Sub
End Class
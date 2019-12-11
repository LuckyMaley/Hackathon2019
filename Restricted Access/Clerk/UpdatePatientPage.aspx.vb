Public Class UpdatePatientPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DetailsView1.DataBind()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        DetailsView1.DataBind()
        Label2.Visible = True
        TextBox2.Visible = True
        Button2.Visible = True
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        SqlDataSource2.Update()
        DetailsView1.DataBind()
    End Sub
End Class
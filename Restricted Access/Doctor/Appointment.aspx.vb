Public Class Appointment
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txbName.Text = Session("FName")
        txbP_RegNo.Text = Session("FP_RegNo")
        txbABy.Text = Session("FBye")
    End Sub

    
    Protected Sub btnPrintDischarge_Click(sender As Object, e As EventArgs) Handles btnPrintDischarge.Click
        Response.Redirect("~/Restricted Access/Doctor/BillDR.aspx")

    End Sub
End Class
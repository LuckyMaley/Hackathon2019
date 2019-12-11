Public Class Triage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub SubmitButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles SubmitButton.Click
        Dim DSTriage As New DataSet1
        Dim TATriage As New DataSet1TableAdapters.tblTriageTableAdapter
        TATriage.Fill(DSTriage.tblTriage)
        TATriage.InsertTriage(txtmobility.Text, txtrespiratory.Text, txtheartrate.Text, systBP.Text, txttemp.Text, txtmental.Text, txtO2.Text, ddlcolour.SelectedItem.ToString, Date.Now, "Sne")
        GVLatest.DataBind()
        txbTriNoP.Text = GVLatest.Rows(0).Cells(0).Text
        txbTriDateP.Text = Date.Now
        panelTicket.Visible = True
    End Sub
End Class
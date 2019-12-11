Public Class NewPatientPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ddlmedaid_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles ddlmedaid.SelectedIndexChanged
        If ddlmedaid.SelectedValue = "No" Then
            txtMedAidNo.Enabled = False
        Else
            txtMedAidNo.Enabled = True
        End If
    End Sub


    Protected Sub SubmitButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles SubmitButton.Click
        Dim DS As New DataSet1
        Dim patientTA As New DataSet1TableAdapters.tblPatientTableAdapter
        If ddlmedaid.SelectedValue = "No" Then
            patientTA.InsertNewPat(txtfname.Text, txtSurname.Text, txtid.Text, txtdob.Text, ddltitle.SelectedValue, ddlrace.SelectedValue, ddlnationality.SelectedValue,
                                   txtaddress.InnerText, txttel.Text, txtcell.Text, ddlmarital.SelectedValue, txtgross.Text, Date.Today.ToString(),
                                  0, txtMedAidNo.Text, txtdebtor.Text, txtemployer.Text, ddlcategory.SelectedValue, txtNofKin.Text, ddlrelationship.SelectedValue, NOKAddress.InnerText, txtNoKTel.Text)
            Response.Write("<script>alert('Patient Have been Registered')</scrpit>")
            Response.Redirect("~/Restricted Access/Clerk/DashboardClerk.aspx")
        Else
            patientTA.InsertNewPat(txtfname.Text, txtSurname.Text, txtid.Text, txtdob.Text, ddltitle.SelectedValue, ddlrace.SelectedValue, ddlnationality.SelectedValue,
                                               txtaddress.InnerText, txttel.Text, txtcell.Text, ddlmarital.SelectedValue, txtgross.Text, Date.Today.ToString(),
                                               1, txtMedAidNo.Text, txtdebtor.Text, txtemployer.Text, ddlcategory.SelectedValue, txtNofKin.Text, ddlrelationship.SelectedValue, NOKAddress.InnerText, txtNoKTel.Text)
            Response.Write("<script>alert('Patient Have been Registered')</scrpit>")
            Response.Redirect("~/Restricted Access/Clerk/DashboardClerk.aspx")
        End If
    End Sub
End Class
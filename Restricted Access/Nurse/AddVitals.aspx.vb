Public Class AddVitals
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txbNurse.Text = "100"


    End Sub

    Protected Sub btnAddVitals_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnAddVitals.Click
        Dim DSPatientRecord As New DataSet1
        Dim TAPatientRecord As New DataSet1TableAdapters.tblPatientRecordTableAdapter
        TAPatientRecord.Fill(DSPatientRecord.tblPatientRecord)
        TAPatientRecord.InsertVital(txbWeight.Text, txbHeight.Text, txbCholesterol.Text, txbUrineGlu.Text, txbBP.Text, chPHypertension.Checked, chPDiabetes.Checked, chSHypertension.Checked, chSDiabetes.Checked, Date.Now, TimeOfDay, dblDoctor.SelectedValue, GridView1.Rows(GridView1.SelectedIndex).Cells(1).Text, dblClinic.SelectedValue, 100) ' the logged in nurse
        Response.Write("<script>alert('Vital Added')</script>")
        Response.Redirect("~/Restricted Access/Nurse/DashboardNurse.aspx")
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GridView1.SelectedIndexChanged
        lblRegNo.Text = GridView1.Rows(GridView1.SelectedIndex).Cells(1).Text
    End Sub

    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSearch.Click
        GridView1.DataBind()
    End Sub
End Class
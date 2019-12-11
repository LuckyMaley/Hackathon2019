Public Class AddVitalsDoctor1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txbTodayDate.Text = Date.Now
    End Sub

    Protected Sub btnAppointment_Click(sender As Object, e As EventArgs) Handles btnAppointment.Click
        Session("FName") = GVPatient.Rows(GVPatient.SelectedIndex).Cells(2).Text + " " + GVPatient.Rows(GVPatient.SelectedIndex).Cells(3).Text
        Session("FP_RegNo") = GVPatient.Rows(GVPatient.SelectedIndex).Cells(1).Text
        Session("FBye") = GVToPass.Rows(0).Cells(0).Text
        Response.Redirect("~/Restricted Access/Doctor/Appointment.aspx")
    End Sub

    Protected Sub btnDischarge_Click(sender As Object, e As EventArgs) Handles btnDischarge.Click
        Dim DSPatientRecord As New DataSet1
        Dim TAPatientRecord As New DataSet1TableAdapters.tblPatientRecordTableAdapter
        TAPatientRecord.Fill(DSPatientRecord.tblPatientRecord)
        TAPatientRecord.UpdatePatientRecord(txbFindings.Text, txbProgress.Text, txbTreatment.Text, txbDiagnosis.Text, "Discharged", txbP_RecNO.Text)
        'popup for added
        Response.Redirect("~/Restricted Access/Doctor/BillDR.aspx")
    End Sub

    Protected Sub btnAdmit_Click(sender As Object, e As EventArgs) Handles btnAdmit.Click
        Dim DSPatientRecord As New DataSet1
        Dim TAPatientRecord As New DataSet1TableAdapters.tblPatientRecordTableAdapter
        TAPatientRecord.Fill(DSPatientRecord.tblPatientRecord)
        TAPatientRecord.UpdatePatientRecord(txbFindings.Text, txbProgress.Text, txbTreatment.Text, txbDiagnosis.Text, "Admited", txbP_RecNO.Text)
        'Session("PassedRegNo") = GVPatient.Rows(GVPatient.SelectedIndex).Cells(1).Text
        Session("PassedP_RegNo") = GVPatient.Rows(GVPatient.SelectedIndex).Cells(1).Text
        Session("PassedDiagnosis") = txbDiagnosis.Text
        Session("PassedRegards") = GVToPass.Rows(0).Cells(0).Text & vbCrLf & GVToPass.Rows(0).Cells(1).Text
        Response.Redirect("~/Restricted Access/Doctor/AdmissionDR.aspx")
    End Sub

    Protected Sub GVVitals_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GVVitals.SelectedIndexChanged
        txbP_RecNO.Text = GVVitals.Rows(GVVitals.SelectedIndex()).Cells(5).Text
        GVToPass.DataBind()
    End Sub

    Protected Sub GVHistory_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GVHistory.SelectedIndexChanged
        sqlDSXrays.DataBind()
    End Sub

    Protected Sub GVPatient_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GVPatient.SelectedIndexChanged
        lblRegNo.Text = GVPatient.Rows(GVPatient.SelectedIndex).Cells(1).Text
        GVVitals.DataBind()
        GVHistory.DataBind()
    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
        GVPatient.DataBind()
    End Sub

    Protected Sub chXRayRequest_CheckedChanged(sender As Object, e As EventArgs) Handles chXRayRequest.CheckedChanged
        If chXRayRequest.Checked = True Then
            Dim ex As String = "The X-ray request has been sent Radiology and now the patient can proceed to Radiology."
            Response.Write("<script>alert('" + ex + "')</script>")
        End If
    End Sub
End Class
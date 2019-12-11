Public Class AdmissionDR
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txbPassDiagnosis.Text = Session("PassedDiagnosis")
        txbPassRegNo.Text = Session("PassedP_RegNo")
        txbPassSurname.Text = Session("PassedRegards")
    End Sub

    Protected Sub GVWards_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GVWards.SelectedIndexChanged
        Dim text As String = "Good day" + vbCrLf + vbCrLf + " Please admit patient " + Session("PassedP_RegNo") + " in ward " + GVWards.Rows(GVWards.SelectedIndex).Cells(2).Text + " for " & Session("PassedDiagnosis") + " ." + vbCrLf + "Regards" + vbCrLf + vbCrLf + Session("PassedRegards")
        txbText.Text = text
        Dim myMail As New Net.Mail.SmtpClient()
        myMail.EnableSsl = True
        myMail.Send("umngungundlovunorthdale@gmail.com", "makurumureleenane@gmail.com", "Admission Notification", text)
        Response.Redirect("~/Restricted Access/Doctor/DasboardDoctor.aspx")
    End Sub

    Protected Sub dblDistrict_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles dblDistrict.SelectedIndexChanged
        dblHospital.DataBind()
    End Sub
End Class
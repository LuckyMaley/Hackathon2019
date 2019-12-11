Public Class AdmissionClerk
    Inherits System.Web.UI.Page

    Public Sub setGridView(ByVal btn As String)
        'for loop of the query changing the number in the text box
        txbBedNO.Text = btn
        GVCheck.DataBind()
    End Sub

    Public Sub setAllButtons()
        setGridView("1")
        If GVCheck.Rows.Count > 0 Then
            btn1.BackColor = Drawing.Color.Red
        Else
            btn1.BackColor = Drawing.Color.Green
        End If

        setGridView("2")
        If GVCheck.Rows.Count > 0 Then
            btn2.BackColor = Drawing.Color.Red
        Else
            btn2.BackColor = Drawing.Color.Green
        End If

        setGridView("3")
        If GVCheck.Rows.Count > 0 Then
            btn3.BackColor = Drawing.Color.Red
        Else
            btn3.BackColor = Drawing.Color.Green
        End If

        setGridView("4")
        If GVCheck.Rows.Count > 0 Then
            btn4.BackColor = Drawing.Color.Red
        Else
            btn4.BackColor = Drawing.Color.Green
        End If

        setGridView("5")
        If GVCheck.Rows.Count > 0 Then
            btn5.BackColor = Drawing.Color.Red
        Else
            btn5.BackColor = Drawing.Color.Green
        End If

        setGridView("6")
        If GVCheck.Rows.Count > 0 Then
            btn6.BackColor = Drawing.Color.Red
        Else
            btn6.BackColor = Drawing.Color.Green
        End If

        setGridView("7")
        If GVCheck.Rows.Count > 0 Then
            btn7.BackColor = Drawing.Color.Red
        Else
            btn7.BackColor = Drawing.Color.Green
        End If

        setGridView("8")
        If GVCheck.Rows.Count > 0 Then
            btn8.BackColor = Drawing.Color.Red
        Else
            btn8.BackColor = Drawing.Color.Green
        End If

        setGridView("9")
        If GVCheck.Rows.Count > 0 Then
            btn9.BackColor = Drawing.Color.Red
        Else
            btn9.BackColor = Drawing.Color.Green
        End If

        setGridView("10")
        If GVCheck.Rows.Count > 0 Then
            btn10.BackColor = Drawing.Color.Red
        Else
            btn10.BackColor = Drawing.Color.Green
        End If
    End Sub

    Public Sub makeVisible()
        btn1.Visible = True
        btn2.Visible = True
        btn3.Visible = True
        btn4.Visible = True
        btn5.Visible = True
        btn6.Visible = True
        btn7.Visible = True
        btn8.Visible = True
        btn9.Visible = True
        btn10.Visible = True
    End Sub

    Public Sub makeInvisible()
        btn1.Visible = False
        btn2.Visible = False
        btn3.Visible = False
        btn4.Visible = False
        btn5.Visible = False
        btn6.Visible = False
        btn7.Visible = False
        btn8.Visible = False
        btn9.Visible = False
        btn10.Visible = False
    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txbDate.Text = Date.Now
    End Sub

    Protected Sub GVWards_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles GVWards.SelectedIndexChanged
        GVCheck.DataBind()
        makeVisible()
        setAllButtons()
    End Sub

    Protected Sub btn1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn1.Click
        Dim DSAdmitPatient As New DataSet1
        Dim TAAdmitPatient As New DataSet1TableAdapters.tblAdmissionTableAdapter
        TAAdmitPatient.Fill(DSAdmitPatient.tblAdmission)
        If btn1.BackColor = Drawing.Color.Green Then
            GVIsAdmited.DataBind()
            If GVIsAdmited.Rows.Count > 0 Then
                TAAdmitPatient.UpdateDischarge(txbP_RegNo.Text)
            End If
            TAAdmitPatient.AdmitPatient(1, Date.Now, TimeOfDay, txbDiagnosis.Text, False, GVWards.Rows(GVWards.SelectedIndex).Cells(1).Text, txbP_RegNo.Text)
        Else
            Response.Write("<script>alert('Bed Is already occupied')</script>")
        End If
        setAllButtons()
    End Sub

    Protected Sub btn2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn2.Click
        Dim DSAdmitPatient As New DataSet1
        Dim TAAdmitPatient As New DataSet1TableAdapters.tblAdmissionTableAdapter
        TAAdmitPatient.Fill(DSAdmitPatient.tblAdmission)
        If btn2.BackColor = Drawing.Color.Green Then
            GVIsAdmited.DataBind()
            If GVIsAdmited.Rows.Count > 0 Then
                TAAdmitPatient.UpdateDischarge(txbP_RegNo.Text)
            End If
            TAAdmitPatient.AdmitPatient(2, Date.Now, TimeOfDay, txbDiagnosis.Text, False, GVWards.Rows(GVWards.SelectedIndex).Cells(1).Text, txbP_RegNo.Text)
        Else
            Response.Write("<script>alert('Bed Is already occupied')</script>")
        End If
        setAllButtons()
    End Sub

    Protected Sub btn3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn3.Click
        Dim DSAdmitPatient As New DataSet1
        Dim TAAdmitPatient As New DataSet1TableAdapters.tblAdmissionTableAdapter
        TAAdmitPatient.Fill(DSAdmitPatient.tblAdmission)
        If btn3.BackColor = Drawing.Color.Green Then
            GVIsAdmited.DataBind()
            If GVIsAdmited.Rows.Count > 0 Then
                TAAdmitPatient.UpdateDischarge(txbP_RegNo.Text)
            End If
            TAAdmitPatient.AdmitPatient(3, Date.Now, TimeOfDay, txbDiagnosis.Text, False, GVWards.Rows(GVWards.SelectedIndex).Cells(1).Text, txbP_RegNo.Text)
        Else
            Response.Write("<script>alert('Bed Is already occupied')</script>")
        End If
        setAllButtons()
    End Sub

    Protected Sub btn4_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn4.Click
        Dim DSAdmitPatient As New DataSet1
        Dim TAAdmitPatient As New DataSet1TableAdapters.tblAdmissionTableAdapter
        TAAdmitPatient.Fill(DSAdmitPatient.tblAdmission)
        If btn4.BackColor = Drawing.Color.Green Then
            GVIsAdmited.DataBind()
            If GVIsAdmited.Rows.Count > 0 Then
                TAAdmitPatient.UpdateDischarge(txbP_RegNo.Text)
            End If
            TAAdmitPatient.AdmitPatient(4, Date.Now, TimeOfDay, txbDiagnosis.Text, False, GVWards.Rows(GVWards.SelectedIndex).Cells(1).Text, txbP_RegNo.Text)
        Else
            Response.Write("<script>alert('Bed Is already occupied')</script>")
        End If
        setAllButtons()
    End Sub

    Protected Sub btn5_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn5.Click
        Dim DSAdmitPatient As New DataSet1
        Dim TAAdmitPatient As New DataSet1TableAdapters.tblAdmissionTableAdapter
        TAAdmitPatient.Fill(DSAdmitPatient.tblAdmission)
        If btn5.BackColor = Drawing.Color.Green Then
            GVIsAdmited.DataBind()
            If GVIsAdmited.Rows.Count > 0 Then
                TAAdmitPatient.UpdateDischarge(txbP_RegNo.Text)
            End If
            TAAdmitPatient.AdmitPatient(5, Date.Now, TimeOfDay, txbDiagnosis.Text, False, GVWards.Rows(GVWards.SelectedIndex).Cells(1).Text, txbP_RegNo.Text)
        Else
            Response.Write("<script>alert('Bed Is already occupied')</script>")
        End If
        setAllButtons()
    End Sub

    Protected Sub btn6_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn6.Click
        Dim DSAdmitPatient As New DataSet1
        Dim TAAdmitPatient As New DataSet1TableAdapters.tblAdmissionTableAdapter
        TAAdmitPatient.Fill(DSAdmitPatient.tblAdmission)
        If btn6.BackColor = Drawing.Color.Green Then
            GVIsAdmited.DataBind()
            If GVIsAdmited.Rows.Count > 0 Then
                TAAdmitPatient.UpdateDischarge(txbP_RegNo.Text)
            End If
            TAAdmitPatient.AdmitPatient(6, Date.Now, TimeOfDay, txbDiagnosis.Text, False, GVWards.Rows(GVWards.SelectedIndex).Cells(1).Text, txbP_RegNo.Text)
        Else
            Response.Write("<script>alert('Bed Is already occupied')</script>")
        End If
        setAllButtons()
    End Sub

    Protected Sub btn7_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn7.Click
        Dim DSAdmitPatient As New DataSet1
        Dim TAAdmitPatient As New DataSet1TableAdapters.tblAdmissionTableAdapter
        TAAdmitPatient.Fill(DSAdmitPatient.tblAdmission)
        If btn7.BackColor = Drawing.Color.Green Then
            GVIsAdmited.DataBind()
            If GVIsAdmited.Rows.Count > 0 Then
                TAAdmitPatient.UpdateDischarge(txbP_RegNo.Text)
            End If
            TAAdmitPatient.AdmitPatient(7, Date.Now, TimeOfDay, txbDiagnosis.Text, False, GVWards.Rows(GVWards.SelectedIndex).Cells(1).Text, txbP_RegNo.Text)
        Else
            Response.Write("<script>alert('Bed Is already occupied')</script>")
        End If
        setAllButtons()
    End Sub

    Protected Sub btn8_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn8.Click
        Dim DSAdmitPatient As New DataSet1
        Dim TAAdmitPatient As New DataSet1TableAdapters.tblAdmissionTableAdapter
        TAAdmitPatient.Fill(DSAdmitPatient.tblAdmission)
        If btn8.BackColor = Drawing.Color.Green Then
            GVIsAdmited.DataBind()
            If GVIsAdmited.Rows.Count > 0 Then
                TAAdmitPatient.UpdateDischarge(txbP_RegNo.Text)
            End If
            TAAdmitPatient.AdmitPatient(8, Date.Now, TimeOfDay, txbDiagnosis.Text, False, GVWards.Rows(GVWards.SelectedIndex).Cells(1).Text, txbP_RegNo.Text)
        Else
            Response.Write("<script>alert('Bed Is already occupied')</script>")
        End If
        setAllButtons()
    End Sub

    Protected Sub btn9_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn9.Click
        Dim DSAdmitPatient As New DataSet1
        Dim TAAdmitPatient As New DataSet1TableAdapters.tblAdmissionTableAdapter
        TAAdmitPatient.Fill(DSAdmitPatient.tblAdmission)
        If btn9.BackColor = Drawing.Color.Green Then
            GVIsAdmited.DataBind()
            If GVIsAdmited.Rows.Count > 0 Then
                TAAdmitPatient.UpdateDischarge(txbP_RegNo.Text)
            End If
            TAAdmitPatient.AdmitPatient(9, Date.Now, TimeOfDay, txbDiagnosis.Text, False, GVWards.Rows(GVWards.SelectedIndex).Cells(1).Text, txbP_RegNo.Text)
        Else
            Response.Write("<script>alert('Bed Is already occupied')</script>")
        End If
        setAllButtons()
    End Sub

    Protected Sub btn10_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn10.Click
        Dim DSAdmitPatient As New DataSet1
        Dim TAAdmitPatient As New DataSet1TableAdapters.tblAdmissionTableAdapter
        TAAdmitPatient.Fill(DSAdmitPatient.tblAdmission)
        If btn10.BackColor = Drawing.Color.Green Then
            GVIsAdmited.DataBind()
            If GVIsAdmited.Rows.Count > 0 Then
                TAAdmitPatient.UpdateDischarge(txbP_RegNo.Text)
            End If
            TAAdmitPatient.AdmitPatient(10, Date.Now, TimeOfDay, txbDiagnosis.Text, False, GVWards.Rows(GVWards.SelectedIndex).Cells(1).Text, txbP_RegNo.Text)
        Else
            Response.Write("<script>alert('Bed Is already occupied')</script>")
        End If
        setAllButtons()
    End Sub

    Protected Sub dblDistrict_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles dblDistrict.SelectedIndexChanged
        makeInvisible()
        dblHospital.DataBind()
        GVWards.DataBind()
    End Sub

    Protected Sub dblHospital_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles dblHospital.SelectedIndexChanged
        makeInvisible()
        btn1.Visible = False
        GVWards.DataBind()
    End Sub
End Class
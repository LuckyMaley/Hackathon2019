Public Class Register
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        RegisterUser.ContinueDestinationPageUrl = Request.QueryString("ReturnUrl")

    End Sub

    Protected Sub RegisterUser_CreatedUser(sender As Object, e As EventArgs) Handles RegisterUser.CreatedUser
        Try
            FormsAuthentication.SetAuthCookie(RegisterUser.UserName, False)
            Dim tbFirstName As TextBox = RegisterUserWizardStep.ContentTemplateContainer.FindControl("tbName")
            Dim tbSurName As TextBox = RegisterUserWizardStep.ContentTemplateContainer.FindControl("tbSurname")
            Dim tbIDNum As TextBox = RegisterUserWizardStep.ContentTemplateContainer.FindControl("tbIDnum")
            Dim Username As TextBox = RegisterUserWizardStep.ContentTemplateContainer.FindControl("UserName")
            Dim email As TextBox = RegisterUserWizardStep.ContentTemplateContainer.FindControl("Email")
            Dim DdlOccupation As DropDownList = RegisterUserWizardStep.ContentTemplateContainer.FindControl("ddlOccupation")
            Dim DdlDistrict As DropDownList = RegisterUserWizardStep.ContentTemplateContainer.FindControl("ddlDistrict")
            Dim DdlHospital As DropDownList = RegisterUserWizardStep.ContentTemplateContainer.FindControl("ddlHospital")
            Dim tbCell As TextBox = RegisterUserWizardStep.ContentTemplateContainer.FindControl("tbcell")
            Dim tbaddress As TextBox = RegisterUserWizardStep.ContentTemplateContainer.FindControl("tbAddress")
            Dim password As TextBox = RegisterUserWizardStep.ContentTemplateContainer.FindControl("Password")
            Dim confirmPassword As TextBox = RegisterUserWizardStep.ContentTemplateContainer.FindControl("ConfirmPassword")
            Dim DS As New DataSet1
            Dim userTA As New DataSet1TableAdapters.UserTableAdapter
            Dim clerkTA As New DataSet1TableAdapters.ClerkTableAdapter
            Dim doctorTA As New DataSet1TableAdapters.tblDoctorTableAdapter
            Dim nurseTA As New DataSet1TableAdapters.tblNurseTableAdapter

            userTA.InsertUser(DdlDistrict.SelectedValue, DdlHospital.SelectedValue, DdlOccupation.Text, Username.Text)
            userTA.Fill(DS.User)
            If DdlOccupation.Text = "Clerk" Then
                If DS.User.Rows.Count <> 0 Then
                    clerkTA.InsertClerk(DS.User.Rows(DS.User.Rows.Count - 1).Item(0), tbIDNum.Text, tbFirstName.Text, tbSurName.Text, email.Text, tbCell.Text, tbaddress.Text, Username.Text, password.Text)
                    Roles.AddUserToRole(RegisterUser.UserName, "Clerk")
                Else
                    clerkTA.InsertClerk(0, tbIDNum.Text, tbFirstName.Text, tbSurName.Text, email.Text, tbCell.Text, tbaddress.Text, Username.Text, password.Text)
                    Roles.AddUserToRole(RegisterUser.UserName, "Clerk")
                End If
            ElseIf DdlOccupation.Text = "Doctor" Then
                If DS.User.Rows.Count <> 0 Then
                    doctorTA.Insert(DS.User.Rows(DS.User.Rows.Count - 1).Item(0), tbFirstName.Text, tbSurName.Text, tbIDNum.Text, tbCell.Text, tbaddress.Text, email.Text, Username.Text, password.Text)
                    Roles.AddUserToRole(RegisterUser.UserName, "Doctor")
                Else
                    doctorTA.Insert(0, tbFirstName.Text, tbSurName.Text, tbIDNum.Text, tbCell.Text, tbaddress.Text, email.Text, Username.Text, password.Text)
                    Roles.AddUserToRole(RegisterUser.UserName, "Doctor")
                End If
            ElseIf DdlOccupation.Text = "Nurse" Then
                If DS.User.Rows.Count <> 0 Then
                    nurseTA.Insert(tbFirstName.Text, tbSurName.Text, DS.User.Rows(DS.User.Rows.Count - 1).Item(0), tbIDNum.Text, tbCell.Text, tbaddress.Text, email.Text, Username.Text, password.Text)
                    Roles.AddUserToRole(RegisterUser.UserName, "Nurse")
                Else
                    nurseTA.Insert(tbFirstName.Text, tbSurName.Text, DS.User.Rows(DS.User.Rows.Count - 1).Item(0), tbIDNum.Text, tbCell.Text, tbaddress.Text, email.Text, Username.Text, password.Text)
                    Roles.AddUserToRole(RegisterUser.UserName, "Nurse")
                End If
            End If

            Dim continueUrl As String = "~/"
            If String.IsNullOrEmpty(continueUrl) Then
                continueUrl = "~/"
            End If

            Response.Redirect(continueUrl)

        Catch ex As Exception
            Mess.Text = ex.Message
        End Try
    End Sub
End Class
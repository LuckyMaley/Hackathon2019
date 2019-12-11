<%@ Page Title="Log In" Language="vb" MasterPageFile="~/Site1.master" AutoEventWireup="true"
    CodeBehind="Login.aspx.vb" %>

<%@ Import Namespace="System.Drawing" %>

<%@ Import Namespace="System.Net" %>

<%@ Import Namespace="System.Net.Mail" %>

<%@ Import Namespace="Hackathon2019" %><asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    
<script runat="server" type = "text/VB">
    Protected Sub LoginButton_Click(sender As Object, e As System.EventArgs)
        Try
            Dim DS As New DataSet1
            Dim clerkTA As New DataSet1TableAdapters.ClerkTableAdapter
            Dim nurseTA As New DataSet1TableAdapters.tblNurseTableAdapter
            Dim doctorTA As New DataSet1TableAdapters.tblDoctorTableAdapter
        
            clerkTA.FillByCred(DS.Clerk, LoginUser.UserName, LoginUser.Password)
            nurseTA.FillByNCred(DS.tblNurse, LoginUser.UserName, LoginUser.Password)
            doctorTA.FillByDrCred(DS.tblDoctor, LoginUser.UserName, LoginUser.Password)
                If DS.Clerk.Rows.Count = 1 Then
                    Session("UserID") = DS.Clerk.Rows(0).Item(0)
                    LoginUser.DestinationPageUrl = "~/Restricted Access/Clerk/DefaultClerk.aspx"
                ElseIf DS.tblNurse.Rows.Count = 1 Then
                    Session("UserID") = DS.tblNurse.Rows(0).Item(0)
                    LoginUser.DestinationPageUrl = "~/Restricted Access/Nurse/DefaultNurse.aspx"
                ElseIf DS.tblDoctor.Rows.Count = 1 Then
                    Session("UserID") = DS.tblDoctor.Rows(0).Item(0)
                    LoginUser.DestinationPageUrl = "~/Restricted Access/Doctor/DefaultDoc.aspx"
                Else
                    LoginUser.FailureText = "Username or Password is invalid"
                End If
        Catch ex As Exception
            LoginUser.FailureText = ex.Message
        End Try
    End Sub

    Protected Sub btnLink_Click(sender As Object, e As System.EventArgs)
        PanelForgot.Visible = True
        PanelLogin.Visible = False
    End Sub

    Protected Sub SubmitButton_Click(sender As Object, e As System.EventArgs)
        Dim DS As New DataSet1
        Dim clerkTA As New DataSet1TableAdapters.ClerkTableAdapter
        Dim doctorTA As New DataSet1TableAdapters.tblDoctorTableAdapter
        Dim nurseTA As New DataSet1TableAdapters.tblNurseTableAdapter
        'clerkTA.FillByClerkUser(DS.Clerk, UserName.Text)
        'doctorTA.FillByDrUser(DS.tblDoctor, UserName.Text)
        'nurseTA.FillByNUser(DS.tblNurse, UserName.Text)
        'If DS.Clerk.Rows.Count > 0 Then
        ' Dim mm As New MailMessage("Earlshawboss@gmail.com", DS.Clerk.Rows(0).Item(6).ToString())
        ' mm.Subject = "Password Recovery"
        ' mm.Body = String.Format("Hi user {0},<br /><br />Your password is {1}.<br /><br />Thank You.", UserName.Text, DS.Clerk.Rows(0).Item(10))
        ' mm.IsBodyHtml = True
        ' Dim smtp As New SmtpClient()
        ' smtp.Host = "smtp.gmail.com"
        ' smtp.EnableSsl = True
        ' Dim NetworkCred As New NetworkCredential()
        ' NetworkCred.UserName = "Earlshawboss@gmail.com"
        ' NetworkCred.Password = "istn2ipproj"
        ' smtp.UseDefaultCredentials = True
        ' smtp.Credentials = NetworkCred
        ' smtp.Port = 587
        ' smtp.Send(mm)
        '   Label1.ForeColor = Color.Green
        '  Label1.Visible = True
        '  Label1.Text = "Password has been sent to your email address."
        ' Else
        ' Label1.ForeColor = Color.Red
        ' Label1.Text = "This email address does not match our records."
        ' End If
    End Sub

   
</script><style type="text/css">
        .style1
        {
            height: 32px;
        }
        .style2
        {
            height: 50px;
        }
        .style3
        {
            height: 70px;
        }
        .style4
        {
            height: 70px;
            width: 234px;
        }
        .style5
        {
            height: 50px;
            width: 234px;
        }
        .style6
        {
            width: 250px;
        }
        .style7
        {
            width: 113px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div align="center" style="margin: 130px width: 100%">
   <p></p>
    
    <div align="center" style="width: 100%">
        <asp:panel runat="server" HorizontalAlign="Center" ScrollBars="Auto" 
            Width="600px" ID="PanelLogin" Height="528px" BackColor="White" 
            BorderColor="#339933" BorderStyle="Solid" CssClass="img-rounded">
        <h2 align="center">
        Log In
        </h2>
        <h5><p align="center" style="width: 100%">
       <b> Please enter your username and password.
        <asp:HyperLink ID="RegisterHyperLink" runat="server" 
                NavigateUrl="~/Account/Register.aspx">Register </asp:HyperLink> if you don't have an account.</b>
    </p>
           
            <asp:Login ID="LoginUser" runat="server" EnableViewState="false" 
                RenderOuterTable="false">
                <LayoutTemplate>
                    <span class="failureNotification">
                    <asp:Literal ID="FailureText1" runat="server"></asp:Literal>
                    </span>
                    <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" 
                        CssClass="failureNotification" ValidationGroup="LoginUserValidationGroup" />
                    <br />
                    <div align="center" class="accountInfo">
                        <fieldset class="login">
                            <table align="center">
                                <tr>
                                    <td align="center" colspan="2">
                                        <b style="font-size: large">Account Information</b></td>
                                </tr>
                                <tr>
                                    <td class="style4">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Username:</asp:Label>
                                    </td>
                                    <td class="style3">
                                        <b><asp:TextBox ID="UserName" runat="server" CssClass="textEntry form-control" 
                                            Height="36px" Width="234px" placeholder="Persal Number"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired1" runat="server" 
                                            ControlToValidate="UserName" CssClass="failureNotification" 
                                            ErrorMessage="User Name is required." ToolTip="User Name is required." 
                                            ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator></b>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                    </td>
                                    <td class="style2">
                                       <b> <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry form-control" 
                                            Height="37px" TextMode="Password" Width="234px" placeholder= "Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                            ControlToValidate="Password" CssClass="failureNotification" 
                                            ErrorMessage="Password is required." ToolTip="Password is required." 
                                            ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator></b>
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td align="center" class="style6" colspan="2">
                                        <asp:CheckBox ID="RememberMe" runat="server" />
                                        <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" 
                                            CssClass="inline">Keep me logged in</asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                        <table>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" CssClass="btn" 
                                        Text="Log In" ValidationGroup="LoginUserValidationGroup" Height="44px"
                                        onclick="LoginButton_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <b>Forgot your password?<asp:LinkButton ID="btnLink" runat="server" 
                                        onclick="btnLink_Click">Click Here</asp:LinkButton>
                                    </b>
                                </td>
                            </tr>
                        </table>
                    </div>
                </LayoutTemplate>
            </asp:Login>
            <h5>
            </h5>            <h5>
            </h5>
           
            <h5>
            </h5>
           
    </h5>
    
    </asp:panel>
    <div align="center">
                <asp:Panel id="PanelForgot" runat="server" Visible="False" Width="601px" 
                    HorizontalAlign="Center" align="center">
    <asp:label runat="server" ID="Label1"></asp:label>
        <asp:Panel ID="Panel1" runat="server" Visible="False">
                    
            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    
                    <td>
                        <table cellpadding="0" style="height:178px;width:292px;">
                            <tr>
                                <td>
                                    Your password has been sent to you.<br /> Please check your emails 
                                    <br /><asp:Button ID="Button1" runat="server" 
                                         Text="Back to Login" CssClass="btn" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </asp:Panel>
                    <asp:Panel ID="Panel2" runat="server">
                    
            <table cellpadding="4" cellspacing="0" style="border-collapse:collapse;" 
                align="center">
                <tr>
                    <td>
                        <table cellpadding="0" style="height:206px; width:445px;" align="center">
                            <tr>
                                <td align="center" colspan="2" 
                                    
                                    style="color:White;background-color:#009933; font-size:0.9em;font-weight:bold;" 
                                    class="style1">
                                    Enter your User Name to receive your password.</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Black;font-style:italic;">
                                    Forgot Your Password?</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="style7">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User 
                                    Name:</asp:Label>
                                </td>
                                <td>
                                    &nbsp;&nbsp;&nbsp;
                                    <b><asp:TextBox ID="UserName" runat="server" Font-Size="0.8em" Height="34px" 
                                        Width="183px" CssClass="form-control" placeholder="Persal Number" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                        ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                        ToolTip="User Name is required." ValidationGroup="ctl09$PasswordRecovery1">*</asp:RequiredFieldValidator></b>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="SubmitButton" runat="server" BackColor="#FFFBFF" 
                                        BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
                                        CommandName="Submit" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" 
                                        Height="43px" Text="Submit" ValidationGroup="ctl09$PasswordRecovery1" 
                                        Width="87px" CssClass="btn" onclick="SubmitButton_Click" />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </td>
                </tr>
            </table>
            </asp:Panel>
                </asp:Panel>
                <br />
    </div>
</div>
    </div>
</asp:Content>

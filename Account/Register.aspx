<%@ Page Title="Register" Language="vb" MasterPageFile="~/Site1.master" AutoEventWireup="true"
    CodeBehind="Register.aspx.vb" Inherits="Hackathon2019.Register" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link href="../Styles/Contact.css" rel="Stylesheet" />
    <style type="text/css">
        .style1
        {
            height: 47px;
            width: 118px;
        }
        .style2
        {
            height: 56px;
            width: 118px;
        }
        .style3
        {
            height: 46px;
            width: 118px;
        }
        .style4
        {
            height: 55px;
            width: 118px;
        }
        .style5
        {
            height: 52px;
            width: 118px;
        }
        .style8
        {
            height: 47px;
            width: 225px;
        }
        .style9
        {
            width: 225px;
        }
        .style10
        {
            height: 46px;
            width: 225px;
        }
        .style11
        {
            height: 55px;
            width: 225px;
        }
        .style12
        {
            height: 52px;
            width: 225px;
        }
        .style14
        {
            height: 45px;
            width: 225px;
        }
        .style15
        {
            width: 118px;
        }
    </style>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div  align="center" style="margin: 0px; ">
    <div  align="center">
    &nbsp;<br />
   
    
    
    <p align="center" style="width: 100%">
        <b style="color: #FF0000">
            <asp:Label ID="Mess" runat="server" ></asp:Label>
            
        </b>
    </p>
    <asp:CreateUserWizard ID="RegisterUser" runat="server" EnableViewState="false">
        <LayoutTemplate>
            <asp:PlaceHolder ID="wizardStepPlaceholder" runat="server"></asp:PlaceHolder>
            <asp:PlaceHolder ID="navigationPlaceholder" runat="server"></asp:PlaceHolder>
        </LayoutTemplate>
        <WizardSteps>
            <asp:CreateUserWizardStep ID="RegisterUserWizardStep" runat="server">
                <ContentTemplate>
                    <h2>
                        Create a New Account
                    </h2>
    
                    
                    
                    <div class="accountInfo" style="width: 100%">
                        <fieldset class="register">
                            <legend>Account Information</legend>
                              <b>
   <table style="width: 470px">
        <tr>
            <td colspan ="2"> <span class="failureNotification">
                        <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                    </span>
                    <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification" 
                         ValidationGroup="RegisterUserValidationGroup"/></td>
        </tr>
        <tr>
            <td class="style1" style="width: 300px">
                <asp:Label ID="lblName" runat="server" Text="FirstName"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="tbName" runat="server" CssClass="form-control" placeholder="FirstName"></asp:TextBox> 
                <asp:RequiredFieldValidator runat="server" id="reqvalName" 
                    controltovalidate="tbName" errormessage="Please enter name" 
                    ForeColor="#FF3300" /></td>
            
        </tr>
         <tr>
            <td class="style2" style="width: 300px">
                <asp:Label ID="lblSurname" runat="server" Text="Surname" ></asp:Label>
            </td>
            <td class="style9">
                <asp:TextBox ID="tbSurname" runat="server" CssClass="form-control" placeholder = "Surname"></asp:TextBox>
           <asp:RequiredFieldValidator runat="server" id="reqvalSurname" 
                    controltovalidate="tbSurname" errormessage="Please enter surname" 
                    ForeColor="#FF3300" /></td>
        </tr>
        <tr>
            <td class="style1" style="width: 300px">
                <asp:Label ID="lblIDnum" runat="server" Text="ID number"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="tbIDnum" runat="server" CssClass="form-control" placeholder="ID number"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" id="reqvalID" 
                    controltovalidate="tbIDnum" errormessage="Please enter ID number" 
                    ForeColor="#FF3300" /></td>
        </tr>
         
         <tr>
            <td class="style4" style="width: 300px">
                <asp:Label ID="lblOccupation" runat="server" Text="Occupation"></asp:Label>
            </td>
            <td class="style11">
                <asp:DropDownList ID="ddlOccupation" runat="server" CssClass="form-control">
                    <asp:ListItem>Clerk</asp:ListItem>
                    <asp:ListItem>Nurse</asp:ListItem>
                    <asp:ListItem>Doctor</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
         <tr>
            <td class="style5" style="width: 300px">
                <asp:Label ID="lblDistrict" runat="server" Text="District"></asp:Label>
            </td>
            <td class="style12"><asp:DropDownList runat="server" CssClass="form-control" 
                    ID="ddlDistrict" AutoPostBack="True" DataSourceID="SqlDataSource1" 
                    DataTextField="District_Name" DataValueField="District_ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
                    SelectCommand="SELECT * FROM [tblDistrict]"></asp:SqlDataSource>
            </td>
        </tr>
         <tr>
            <td class="style1" style="width: 300px">
                <asp:Label ID="lblHostipal" runat="server" Text="Hospital Branch"></asp:Label>
            </td>
            <td class="style8">
                <asp:DropDownList ID="ddlHospital" runat="server" CssClass="form-control" 
                    DataSourceID="SqlDataSource2" DataTextField="Hospital_Name" 
                    DataValueField="Hospital_No">
                </asp:DropDownList>
                
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
                    SelectCommand="SELECT * FROM [tblHospital] WHERE ([District_ID] = @District_ID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlDistrict" Name="District_ID" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                
            </td>
         </tr>
             <tr>
                <td class="style1" style="width: 300px">
                    <asp:Label ID="lblCellphone" runat="server" Text="Cell. Number"></asp:Label>
                </td>
                <td class="style8">
                    <asp:TextBox ID="tbcell" runat="server" CssClass="form-control" placeholder = "Cellphone"></asp:TextBox>
               <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" 
                        controltovalidate="tbcell" errormessage="Please enter cell number" 
                        ForeColor="#FF3300" /></td>
             </tr>
            <tr>
            <td class="style1" style="width: 300px">
                <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="tbAddress" runat="server" CssClass="form-control" placeholder="Address"></asp:TextBox>
           <asp:RequiredFieldValidator runat="server" id="reqvalAddress" 
                    controltovalidate="tbAddress" errormessage="Please enter address" 
                    ForeColor="#FF3300" /></td>
            </tr>
        <tr>
            <td class="style15" style="width: 300px">
            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Persal Number:</asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="UserName" runat="server" CssClass="textEntry form-control" placeholder="Persal Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" 
                    runat="server" ControlToValidate="UserName" 
                                     CssClass="failureNotification" 
                    ErrorMessage="User Name is required." ToolTip="User Name is required." 
                                     ValidationGroup="RegisterUserValidationGroup" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        
         <tr>
            <td class="style1" style="width: 300px">
                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="Email" runat="server" CssClass="textEntry form-control" placeholder="Email Address"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" 
                                     CssClass="failureNotification" 
                    ErrorMessage="E-mail is required." ToolTip="E-mail is required." 
                                     ValidationGroup="RegisterUserValidationGroup" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
            </tr>
             <tr>
            <td class="style1" style="width: 300px">
                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry form-control" placeholder="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" 
                    runat="server" ControlToValidate="Password" 
                                     CssClass="failureNotification" 
                    ErrorMessage="Password is required." ToolTip="Password is required." 
                                     ValidationGroup="RegisterUserValidationGroup" 
                    ForeColor="Red">*</asp:RequiredFieldValidator></td>
            </tr>
             <tr>
            <td class="style1" style="width: 300px">
                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="passwordEntry form-control" placeholder="Confirm Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" 
                    CssClass="failureNotification" Display="Dynamic" 
                                     ErrorMessage="Confirm Password is required." 
                    ID="ConfirmPasswordRequired" runat="server" 
                                     ToolTip="Confirm Password is required." 
                    ValidationGroup="RegisterUserValidationGroup" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="PasswordCompare" runat="server" 
                    ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                     CssClass="failureNotification" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match."
                                     ValidationGroup="RegisterUserValidationGroup" 
                    ForeColor="Red">*</asp:CompareValidator>
            
            </td>
            </tr>
             <tr>
            <td align="center" colspan ="2">
            <asp:Button ID="CreateUserButton" runat="server" CommandName="MoveNext" Text="Create User" 
                                 ValidationGroup="RegisterUserValidationGroup"/>
            </td> 
            
        </tr>
   </table></b>
                        </fieldset>
                        
                      
                      
                    </div>
                </ContentTemplate>
                <CustomNavigationTemplate>
                </CustomNavigationTemplate>
            </asp:CreateUserWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>


  </div>
    <div class="content3" align="center">
    </div>
    </div>
    
</asp:Content>

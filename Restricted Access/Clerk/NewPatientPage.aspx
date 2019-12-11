<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Restricted Access/Clerk/SiteClerk.Master" CodeBehind="NewPatientPage.aspx.vb" Inherits="Hackathon2019.NewPatientPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
       <style type="text/css">
        .style4
        {
            width: 250px;
            height: 52px;
        }
        .style5
        {
            height: 52px;
        }
     </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <h1 align="center">&nbsp;</h1>
       <h1 align="center">Patient Registration</h1>
   <div align = "center">
   <b>
    <table align = "center" style="width: 480px">
        <tr>
            <td class="style4" >
                <asp:Label ID="Label1" runat="server" Text="First Name(s)" ></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtfname" runat="server" CssClass="form-control" 
                    placeholder="First name" Height="35px" ></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="reqname" 
                    controltovalidate="txtfname" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" />
            </td>
        </tr>
        <tr>
            <td class="style4" >
                <asp:Label ID="Label2" runat="server" Text="Surname"></asp:Label>
            </td>
            <td class="style5" >
                <asp:TextBox ID="txtSurname" runat="server" placeholder="Surname" 
                    CssClass="form-control" Height="32px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" 
                    controltovalidate="txtSurname" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" />
            </td>
        </tr>
        <tr>
            <td class="style4" >
                <asp:Label ID="Label3" runat="server" Text="ID Number"></asp:Label>
            </td>
            <td class="style5" >
                <asp:TextBox ID="txtid" runat="server" placeholder="ID Number" 
                    CssClass="form-control" Height="32px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" 
                    controltovalidate="txtid" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label4" runat="server" Text="Date of Birth"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtdob" runat="server" placeholder="yyyy/mm/dd" 
                    CssClass="form-control" Height="32px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" 
                    controltovalidate="txtdob" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label5" runat="server" Text="Title"></asp:Label>
            </td>
            <td class="style5">
                <asp:DropDownList ID="ddltitle" runat="server" CssClass="form-control" 
                    Height="39px">
                <asp:ListItem Value="">Select Option</asp:ListItem>
                <asp:ListItem Value="Mr">Mr</asp:ListItem>
                <asp:ListItem Value="Miss">Miss</asp:ListItem>
                <asp:ListItem Value="Mrs">Mrs</asp:ListItem>
                <asp:ListItem Value="Dr">Dr</asp:ListItem>
                <asp:ListItem Value="Prof">Prof</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator4" 
                    controltovalidate="ddltitle" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" InitialValue="" />
            </td>
        </tr>
                <tr>
            <td class="style4">
                <asp:Label ID="Label6" runat="server" Text="Race"></asp:Label>
            </td>
            <td class="style5">
                <asp:DropDownList ID="ddlrace" runat="server" CssClass="form-control" 
                    Height="38px">
                <asp:ListItem Value="">Select Option</asp:ListItem>
                <asp:ListItem Value="African">African</asp:ListItem>
                <asp:ListItem Value="White">White</asp:ListItem>
                <asp:ListItem Value="Indian">Indian</asp:ListItem>
                <asp:ListItem Value="Coloured">Coloured</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator5" 
                    controltovalidate="ddlrace" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" InitialValue="" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label7" runat="server" Text="Nationality"></asp:Label>
            </td>
            <td class="style5">
                <asp:DropDownList ID="ddlnationality" runat="server" CssClass="form-control">
                <asp:ListItem Value="">Select Option</asp:ListItem>
                <asp:ListItem Value="South African">South African</asp:ListItem>
                <asp:ListItem Value="Non-South African">Non-South African</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator6" 
                    controltovalidate="ddlnationality" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" InitialValue="" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="style5">
                <TextArea ID="txtaddress" runat="server" placeholder="Address" 
                    CssClass="form-control" style="width: 100%; height: 150px"></TextArea>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator7" 
                    controltovalidate="txtaddress" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" />
            </td>
            </tr>
            <tr>
            <td class="style4">
                <asp:Label ID="Label9" runat="server" Text="Telephone Number"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txttel" runat="server" placeholder="Telephone Number" 
                    CssClass="form-control" Height="32px"></asp:TextBox>
            </td>
            <td class="style5">
                
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label10" runat="server" Text="Cellphone Number"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtcell" runat="server" placeholder="Cellphone Number" 
                    CssClass="form-control" Height="32px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator9" 
                    controltovalidate="txtcell" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label11" runat="server" Text="Marital Status"></asp:Label>
            </td>
            <td class="style5">
                <asp:DropDownList ID="ddlmarital" runat="server" CssClass="form-control" 
                    Height="39px">
                <asp:ListItem Value="">Select Option</asp:ListItem>
                <asp:ListItem Value="Married">Married</asp:ListItem>
                <asp:ListItem Value="Single">Single</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator10" 
                    controltovalidate="ddlmarital" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" InitialValue="" />
            </td>
        </tr>
         <tr>
            <td class="style4">
                <asp:Label ID="Label12" runat="server" Text="Gross Income"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtgross" runat="server" placeholder="Gross Income" 
                    CssClass="form-control" Height="32px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator11" 
                    controltovalidate="txtgross" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" />
            </td>
        </tr>
         
        <tr>
            <td class="style4">
                <asp:Label ID="Label14" runat="server" Text="Medical Aid"></asp:Label>
            </td>
            <td class="style5">
                <asp:DropDownList ID="ddlmedaid" runat="server" CssClass="form-control" 
                    AutoPostBack="True" Height="39px">
                <asp:ListItem Value="">Select Option</asp:ListItem>
                <asp:ListItem Value="Yes">Yes</asp:ListItem>
                <asp:ListItem Value="No">No</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator13" 
                    controltovalidate="ddlmedaid" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" InitialValue="" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label15" runat="server" Text="Medical Aid Number"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtMedAidNo" runat="server" placeholder="Medical Aid Number" 
                    CssClass="form-control" Height="32px" Enabled="False"></asp:TextBox>
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label16" runat="server" Text="Debtor's Name"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtdebtor" runat="server" placeholder="Debtor's Name" 
                    CssClass="form-control" Height="32px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator15" 
                    controltovalidate="txtdebtor" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label17" runat="server" Text="Employer"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtemployer" runat="server" placeholder="Employer" 
                    CssClass="form-control" Height="32px"></asp:TextBox>
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label18" runat="server" Text="Category"></asp:Label>
            </td>
            <td class="style5">
                <asp:DropDownList ID="ddlcategory" runat="server" CssClass="form-control" 
                    Height="39px">
                <asp:ListItem Value="">Select Option</asp:ListItem>
                <asp:ListItem Value="H0">H0</asp:ListItem>
                <asp:ListItem Value="H1">H1</asp:ListItem>
                <asp:ListItem Value="H2">H2</asp:ListItem>
                <asp:ListItem Value="H3">H3</asp:ListItem>
                <asp:ListItem Value="PHP">PHP</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator17" 
                    controltovalidate="ddlcategory" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" InitialValue="" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label19" runat="server" Text="Next Of Kin"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtNofKin" runat="server" placeholder="Next of Kin" 
                    CssClass="form-control" Height="32px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator18" 
                    controltovalidate="txtNofKin" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label21" runat="server" Text="Relationship to Patient"></asp:Label>
            </td>
            <td class="style5">
                <asp:DropDownList ID="ddlrelationship" runat="server" CssClass="form-control" 
                    Height="39px">
                <asp:ListItem Value="">Select Option</asp:ListItem>
                <asp:ListItem Value="H0">Sibling</asp:ListItem>
                <asp:ListItem Value="H1">Spouse</asp:ListItem>
                <asp:ListItem Value="H2">Parent</asp:ListItem>
                <asp:ListItem Value="H3">Friend</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator20" 
                    controltovalidate="ddlrelationship" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" InitialValue="" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="lblNOKAddress" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="style5">
                <TextArea ID="NOKAddress" runat="server" placeholder="Next of Kin Address" 
                    CssClass="form-control" style="width: 100%; height: 150px" ></TextArea>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator12" 
                    controltovalidate="txtaddress" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" />
            </td>
            </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label20" runat="server" Text="Telephone Number"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtNoKTel" runat="server" placeholder="Telephone Number" 
                    CssClass="form-control" Height="32px"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator19" 
                    controltovalidate="txtNoKTel" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" />
            </td>
        </tr>
         <tr><td align="center" colspan="3">
         <asp:Button ID="SubmitButton" runat="server" BackColor="#FFFBFF" 
         BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
         CommandName="Submit" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" 
         Height="43px" Text="Submit" Width="87px" CssClass="btn" />
         </td></tr>
        
    </table></b>
    </div>
</asp:Content>

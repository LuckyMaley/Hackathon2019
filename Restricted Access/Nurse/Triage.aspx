<%@ Page Title="Triage" Language="vb" AutoEventWireup="false" MasterPageFile="SiteNurse.Master" CodeBehind="Triage.aspx.vb" Inherits="Hackathon2019.Triage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
         <script language="javascript" type="text/javascript">
             function BtnPrint_onclick() {
                 var prtContent = document.getElementById("printArea");
                 var WinPrint = window.open('', '', 'letf=0,top=0,toolbar=0,sta­tus=0');
                 WinPrint.document.write(prtContent.innerHTML);
                 WinPrint.document.close();
                 WinPrint.focus();
                 WinPrint.print();
             }
        

    </script>
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
       <h1 align="center">Triage Form</h1>
   <div align = "center">
   <b>
    <table align = "center" style="width: 480px">
       
        <tr>
            <td class="style4" >
                <asp:Label ID="Label1" runat="server" Text="Mobility" ></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtmobility" runat="server" CssClass="form-control" placeholder="Mobility" ></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="reqname" 
                    controltovalidate="txtmobility" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" />
            </td>
        </tr>
        <tr>
            <td class="style4" >
                <asp:Label ID="Label2" runat="server" Text="Respiratory"></asp:Label>
            </td>
            <td class="style5" >
                <asp:TextBox ID="txtrespiratory" runat="server" placeholder="Respiratory" CssClass="form-control"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" 
                    controltovalidate="txtrespiratory" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" />
            </td>
        </tr>
        <tr>
            <td class="style4" >
                <asp:Label ID="Label3" runat="server" Text="Heart Rate"></asp:Label>
            </td>
            <td class="style5" >
                <asp:TextBox ID="txtheartrate" runat="server" placeholder="Heart Rate" CssClass="form-control"></asp:TextBox>
            </td>
            <td class="style5">
            <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" 
                    controltovalidate="txtheartrate" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label4" runat="server" Text="Systolic Blood Pressure"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="systBP" runat="server" placeholder="Systolic Blood Pressure" CssClass="form-control"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" 
                    controltovalidate="systBP" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" />
            </td>
        </tr>
            <tr>
            <td class="style4">
                <asp:Label ID="Label9" runat="server" Text="Temperature"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txttemp" runat="server" placeholder="Temperature" CssClass="form-control"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator8" 
                    controltovalidate="txttemp" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label10" runat="server" Text="Mental State"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtmental" runat="server" placeholder="Mental State" CssClass="form-control"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator9" 
                    controltovalidate="txtmental" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" />
            </td>
        </tr>
         <tr>
            <td class="style4">
                <asp:Label ID="Label12" runat="server" Text="O2 Saturation"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="txtO2" runat="server" placeholder="O2 Saturation" CssClass="form-control"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator11" 
                    controltovalidate="txtO2" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" />
            </td>
        </tr>
         <tr>
            <td class="style4">
                <asp:Label ID="Label5" runat="server" Text="Colour"></asp:Label>
            </td>
            <td class="style5">
                <asp:DropDownList ID="ddlcolour" runat="server" CssClass="form-control">
                <asp:ListItem Value="">Select Option</asp:ListItem>
                <asp:ListItem Value="Red">Red</asp:ListItem>
                <asp:ListItem Value="Yellow">Yellow</asp:ListItem>
                <asp:ListItem Value="Green">Green</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator4" 
                    controltovalidate="ddlcolour" errormessage="*" Font-Bold="True" 
                    Font-Size="X-Large" ForeColor="#FF3300" InitialValue="" />
            </td>

       
  
     
         <tr><td align="center" colspan="2">
         <asp:Button ID="SubmitButton" runat="server" BackColor="#FFFBFF" 
         BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
         CommandName="Submit" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" 
         Height="43px" Text="Submit" Width="87px" CssClass="btn" />
         </td></tr>
        
    </table></b>
        
    <asp:GridView ID="GVLatest" runat="server" AutoGenerateColumns="False" 
           DataKeyNames="Tri_No" DataSourceID="sqlDSLates" Visible="False">
        <Columns>
            <asp:BoundField DataField="Tri_No" HeaderText="Tri_No" InsertVisible="False" 
                ReadOnly="True" SortExpression="Tri_No" />
        </Columns>
    </asp:GridView>
           <asp:SqlDataSource ID="sqlDSLates" runat="server" 
           ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
           SelectCommand="SELECT [Tri_No] FROM [tblTriage] ORDER BY [Tri_No] DESC"></asp:SqlDataSource>
           
               <asp:Panel ID="panelTicket" runat="server" Visible="False">
                
                              <div align = "center" id="printArea">
                              <h4>Triage Ticket<h4>
            <table>
                <tr>
                        <td> <asp:Label ID="Label6" runat="server" Text="Date of Triage"></asp:Label> </td>
                        <td><asp:TextBox ID="txbTriDateP" runat="server" Width="144px"></asp:TextBox></td>
                </tr>
                <tr>
                     <td><asp:Label ID="Label7" runat="server" Text="Triage Number "></asp:Label></td>
                        <td><asp:TextBox ID="txbTriNoP" runat="server"></asp:TextBox></td>
                </tr>

            </table>

               
             </div> 

             <div align = "center">
                <tr><td align="center" colspan="2">
                    <asp:Button ID="Button1" runat="server" BackColor="#FFFBFF" 
                        BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
                        CommandName="Submit" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" 
                        Height="43px" Text="Print" Width="87px" CssClass="btn" OnClientClick="return BtnPrint_onclick()" />
                </td></tr>
             </div>
               </asp:Panel>

          
    </div>
</asp:Content>

<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Restricted Access/Doctor/SiteDoc.Master" CodeBehind="BillDR.aspx.vb" Inherits="Hackathon2019.BillDR" %>
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
    <div align = "center" id="printArea">
    <h1 align="center">Billing Document</h1>
    <table align = "center" style="width: 480px">
        <tr>
            <td class="style4" >
                <asp:Label ID="Label1" runat="server" Text="First Name(s)" ></asp:Label>
            </td>
            <td class="style5">
                <asp:Label ID="Label6" runat="server" Text="Sihle" ></asp:Label>
            </td>

        </tr>
        <tr>
            <td class="style4" >
                <asp:Label ID="Label2" runat="server" Text="Surname"></asp:Label>
            </td>
            <td class="style5" >
                <asp:Label ID="Label7" runat="server" Text="Ndlovu" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4" >
                <asp:Label ID="Label3" runat="server" Text="ID Number"></asp:Label>
            </td>
            <td class="style5" >
                <asp:Label ID="Label8" runat="server" Text="9204050977081" ></asp:Label>
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label4" runat="server" Text="Patient Category"></asp:Label>
            </td>
            <td class="style5"><asp:Label ID="Label5" runat="server" Text="H1"></asp:Label>
            </td>

        </tr>
         <tr>
            <td class="style4">
                <asp:Label ID="Label9" runat="server" Text="Debtor Name"></asp:Label>
            </td>
            <td class="style5"><asp:Label ID="Label10" runat="server" Text="Sihle Ndlovu"></asp:Label>
            </td>

        </tr>
         <tr>
            <td class="style4">
                <asp:Label ID="Label11" runat="server" Text="Date"></asp:Label>
            </td>
            <td class="style5"><asp:Label ID="Label12" runat="server" Text="11-12-2019"></asp:Label>
            </td>

        </tr>
         <tr>
            <td class="style4">
                <asp:Label ID="Label13" runat="server" Text="Facility Fee"></asp:Label>
            </td>
            <td class="style5"><asp:Label ID="Label14" runat="server" Text="R20,00"></asp:Label>
            </td>

        </tr>
         <tr>
            <td class="style4">
                <asp:Label ID="Label15" runat="server" Text="Professional Fee"></asp:Label>
            </td>
            <td class="style5"><asp:Label ID="Label16" runat="server" Text="R15,00"></asp:Label>
            </td>

        </tr>
         <tr>
            <td class="style4">
                <asp:Label ID="Label17" runat="server" Text="Total Cost"></asp:Label>
            </td>
            <td class="style5"><asp:Label ID="Label18" runat="server" Text="R35,00"></asp:Label>
            </td>

        </tr>
        
        
    </table>
    </div>
    <br />
    <div align = "center">
     <tr><td align="center" colspan="2">
         <asp:Button ID="SubmitButton" runat="server" BackColor="#FFFBFF" 
         BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" 
         CommandName="Submit" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" 
         Height="43px" Text="Print" Width="87px" CssClass="btn" OnClientClick="return BtnPrint_onclick()" />
         </td></tr></div>
</asp:Content>

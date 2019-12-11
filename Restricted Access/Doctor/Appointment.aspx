<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Appointment.aspx.vb" Inherits="Hackathon2019.Appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-color:#666; padding:30px; text-align:center; font-size:35px;color:white"> Appointment Note</div>
            <div style="text-align:center; width:97%; float: inherit;" align="center">
                <div>
                    <asp:Label ID="Label1" runat="server" Text="Patient Name"></asp:Label><asp:TextBox ID="txbName"
                    runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="Label2" runat="server" Text="Patient Reg No"></asp:Label><asp:TextBox ID="txbP_RegNo"
                    runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="Label3" runat="server" Text="Treated By"></asp:Label><asp:TextBox ID="txbABy"
                    runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="Label4" runat="server" Text="Date"></asp:Label>
                    <asp:Calendar ID="calAppointment"
                        runat="server"></asp:Calendar>
                </div>
                <div>
                    <asp:Button ID="btnPrintDischarge" runat="server" Text="Print Appointment Card and Discharge" />
                </div>
            </div>
</asp:Content>

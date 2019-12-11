<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="SiteDoc.Master" CodeBehind="DashboardDoctor.aspx.vb" Inherits="Hackathon2019.DashboardDoctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-color:#666; padding:30px; text-align:center; font-size:35px;color:white" 
        align="center"> Dashboard </div>
     <div style="text-align:center; width:97%; float: inherit;" align="center">
        <div class=" col-md-3 col-md-4" align="center">
            
            <a style="text-decoration:none; background-color: #FFFFFF;" href="AddVitalsDoctor.aspx">
            <div class="thumbnail">
                <div align="center" style="width: 100%; height: 30%">
                
                    <asp:Image ID="imgs" ImageUrl="~/Resources/patient record.png"  Width="100%" Height="300px" ImageAlign="Middle" runat="server"></asp:Image>
                </div>
                <div class= "caption">
                    <h1>Patient Record</h1>
                    
                </div>
            </div></a>
        </div>

     </div>
</asp:Content>

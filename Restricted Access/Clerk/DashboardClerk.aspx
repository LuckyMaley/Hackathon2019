<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="SiteClerk.Master" CodeBehind="DashboardClerk.aspx.vb" Inherits="Hackathon2019.DashboardClerk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <div style="background-color:#666; padding:30px; text-align:center; font-size:35px;color:white"><br /> Dashboard </div>
     <div style="text-align:center; width:97%; float: inherit;" align="center">
            <div class=" col-md-3 col-md-4" align="center">
            
            <a style="text-decoration:none; background-color: #FFFFFF;" href="NewPatientPage.aspx">
            <div class="thumbnail">
                <div align="center" style="width: 100%; height: 30%">
                
                    <asp:Image ID="imgs" ImageUrl="~/Resources/93a8e9899d.png"  Width="100%" Height="300px" ImageAlign="Middle" runat="server"></asp:Image>
                </div>
                <div class= "caption">
                    <h1>New Patient</h1>
                    
                </div>
            </div></a>
        </div><div class=" col-md-3 col-md-4" align="center">
            
            <a style="text-decoration:none; background-color: #FFFFFF;" href="UpdatePatientPage.aspx">
            <div class="thumbnail">
                <div align="center" style="width: 100%; height: 30%">
                
                    <asp:Image ID="Image1" ImageUrl="~/Resources/edit patient.png"  Width="100%" Height="300px" ImageAlign="Middle" runat="server"></asp:Image>
                </div>
                <div class= "caption">
                    <h1>Edit Patient Profile</h1>
                    
                </div>
            </div></a>
        </div>
        <div class=" col-md-3 col-md-4" align="center">
            
            <a style="text-decoration:none; background-color: #FFFFFF;" href="AdmissionClerk.aspx">
            <div class="thumbnail">
                <div align="center" style="width: 100%; height: 30%">
                
                    <asp:Image ID="Image2" ImageUrl="~/Resources/admit patient.png"  Width="100%" Height="300px" ImageAlign="Middle" runat="server"></asp:Image>
                </div>
                <div class= "caption">
                    <h1>Admit Patient</h1>
                    
                </div>
            </div></a>
        </div>
     </div>
</asp:Content>

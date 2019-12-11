<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Restricted Access/Nurse/SiteNurse.Master" CodeBehind="ViewTriages.aspx.vb" Inherits="Hackathon2019.ViewTriages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
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
       <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>


       <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
           AllowPaging="True" AutoGenerateRows="False" DataKeyNames="P_RegNo,Tri_No" 
           DataSourceID="SqlDataSource1">
           <Fields>
               <asp:BoundField DataField="P_RegNo" HeaderText="P_RegNo" InsertVisible="False" 
                   ReadOnly="True" SortExpression="P_RegNo" />
               <asp:BoundField DataField="P_Firstname" HeaderText="P_Firstname" 
                   SortExpression="P_Firstname" />
               <asp:BoundField DataField="P_Surname" HeaderText="P_Surname" 
                   SortExpression="P_Surname" />
               <asp:BoundField DataField="Tri_No" HeaderText="Tri_No" InsertVisible="False" 
                   ReadOnly="True" SortExpression="Tri_No" />
               <asp:BoundField DataField="Mobility" HeaderText="Mobility" 
                   SortExpression="Mobility" />
               <asp:BoundField DataField="Heart_Rate" HeaderText="Heart_Rate" 
                   SortExpression="Heart_Rate" />
               <asp:BoundField DataField="Respiratory" HeaderText="Respiratory" 
                   SortExpression="Respiratory" />
               <asp:BoundField DataField="Systolic_Blood_Pressure" 
                   HeaderText="Systolic_Blood_Pressure" SortExpression="Systolic_Blood_Pressure" />
               <asp:BoundField DataField="Temperature" HeaderText="Temperature" 
                   SortExpression="Temperature" />
               <asp:BoundField DataField="Tri_Date" HeaderText="Tri_Date" 
                   SortExpression="Tri_Date" />
               <asp:BoundField DataField="Colour" HeaderText="Colour" 
                   SortExpression="Colour" />
               <asp:BoundField DataField="O2_Saturation" HeaderText="O2_Saturation" 
                   SortExpression="O2_Saturation" />
               <asp:BoundField DataField="Mental_State" HeaderText="Mental_State" 
                   SortExpression="Mental_State" />
               <asp:ImageField DataImageUrlField="Tri_No" 
                   DataImageUrlFormatString="~\Pics\{0}.jpg" HeaderText="Document Scan">
                   <ControlStyle Height="200px" Width="200px" />
               </asp:ImageField>
           </Fields>
       </asp:DetailsView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
           
           SelectCommand="SELECT tblPatient.P_RegNo, tblPatient.P_Firstname, tblPatient.P_Surname, tblTriage.Tri_No, tblTriage.Mobility, tblTriage.Heart_Rate, tblTriage.Respiratory, tblTriage.Systolic_Blood_Pressure, tblTriage.Temperature, tblTriage.Tri_Date, tblTriage.Colour, tblTriage.O2_Saturation, tblTriage.Mental_State FROM tblPatient INNER JOIN tblTriage ON tblPatient.Tri_No = tblTriage.Tri_No WHERE (tblTriage.Tri_Date = @FDate)">
           <SelectParameters>
               <asp:ControlParameter ControlID="Calendar1" Name="FDate" 
                   PropertyName="SelectedDate" />
           </SelectParameters>
       </asp:SqlDataSource>
   </div>
</asp:Content>

<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Restricted Access/Clerk/SiteClerk.Master" CodeBehind="UpdatePatientPage.aspx.vb" Inherits="Hackathon2019.UpdatePatientPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
      <h1 align="center">Patient Registration</h1>
   <div align = "center">
   <b>
    <table align = "center" style="width: 480px">
       <tr> <td>
   <b>
           <asp:Label ID="Label1" runat="server" Text="Patient:"></asp:Label>
           </b>
           </td><td >
               <asp:TextBox ID="TextBox1" runat="server" Width="181px" placeholder="ID Number" 
                   CssClass="form-control"></asp:TextBox>
           </td><td>
               <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Search" />
           </td></tr>
         <tr><td align="center" colspan="3">
             <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                 CellPadding="4" DataKeyNames="P_RegNo" DataSourceID="SqlDataSource1" 
                 ForeColor="#333333" GridLines="None" Height="50px" Width="455px">
                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                 <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                 <EditRowStyle BackColor="#999999" />
                 <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                 <Fields>
                     <asp:BoundField DataField="P_RegNo" HeaderText="P_RegNo" InsertVisible="False" 
                         ReadOnly="True" SortExpression="P_RegNo" />
                     <asp:BoundField DataField="P_Firstname" HeaderText="P_Firstname" 
                         SortExpression="P_Firstname" />
                     <asp:BoundField DataField="P_Surname" HeaderText="P_Surname" 
                         SortExpression="P_Surname" />
                     <asp:BoundField DataField="P_ID" HeaderText="P_ID" SortExpression="P_ID" />
                     <asp:BoundField DataField="P_DOB" HeaderText="P_DOB" SortExpression="P_DOB" />
                     <asp:BoundField DataField="P_Title" HeaderText="P_Title" 
                         SortExpression="P_Title" />
                     <asp:BoundField DataField="P_Race" HeaderText="P_Race" 
                         SortExpression="P_Race" />
                     <asp:BoundField DataField="P_Nationality" HeaderText="P_Nationality" 
                         SortExpression="P_Nationality" />
                     <asp:BoundField DataField="P_Address" HeaderText="P_Address" 
                         SortExpression="P_Address" />
                     <asp:BoundField DataField="P_TellNo" HeaderText="P_TellNo" 
                         SortExpression="P_TellNo" />
                     <asp:BoundField DataField="P_CellNo" HeaderText="P_CellNo" 
                         SortExpression="P_CellNo" />
                     <asp:BoundField DataField="P_MaritalStatus" HeaderText="P_MaritalStatus" 
                         SortExpression="P_MaritalStatus" />
                     <asp:BoundField DataField="P_GrossIncome" HeaderText="P_GrossIncome" 
                         SortExpression="P_GrossIncome" />
                     <asp:BoundField DataField="Reg_Date" HeaderText="Reg_Date" 
                         SortExpression="Reg_Date" />
                     <asp:CheckBoxField DataField="Medical_Aid" HeaderText="Medical_Aid" 
                         SortExpression="Medical_Aid" />
                     <asp:BoundField DataField="Medical_AidNo" HeaderText="Medical_AidNo" 
                         SortExpression="Medical_AidNo" />
                     <asp:BoundField DataField="DebtorName" HeaderText="DebtorName" 
                         SortExpression="DebtorName" />
                     <asp:BoundField DataField="Employer" HeaderText="Employer" 
                         SortExpression="Employer" />
                     <asp:BoundField DataField="P_Category" HeaderText="P_Category" 
                         SortExpression="P_Category" />
                     <asp:BoundField DataField="NextOfKin" HeaderText="NextOfKin" 
                         SortExpression="NextOfKin" />
                     <asp:BoundField DataField="NOK_Relationship" HeaderText="NOK_Relationship" 
                         SortExpression="NOK_Relationship" />
                     <asp:BoundField DataField="NOK_Address" HeaderText="NOK_Address" 
                         SortExpression="NOK_Address" />
                     <asp:BoundField DataField="NOK_Cell_No" HeaderText="NOK_Cell_No" 
                         SortExpression="NOK_Cell_No" />
                     <asp:BoundField DataField="Tri_No" HeaderText="Tri_No" 
                         SortExpression="Tri_No" />
                     <asp:BoundField DataField="FingerprintID" HeaderText="FingerprintID" 
                         SortExpression="FingerprintID" />
                     <asp:BoundField DataField="AccidentEmergencyID" 
                         HeaderText="AccidentEmergencyID" SortExpression="AccidentEmergencyID" />
                     <asp:BoundField DataField="LabourWardID" HeaderText="LabourWardID" 
                         SortExpression="LabourWardID" />
                     <asp:CommandField ShowEditButton="True" />
                 </Fields>
                 <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                 <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
             </asp:DetailsView>
         </td></tr>
          
       <tr> <td>
   <b>
           <asp:Label ID="Label2" runat="server" Text="Triage No:" Visible="False"></asp:Label>
           </b>
           </td><td >
               <asp:TextBox ID="TextBox2" runat="server" Width="181px"  
                   CssClass="form-control" placeholder="Link to patient" Visible="False"></asp:TextBox>
           </td><td>
               <asp:Button ID="Button2" runat="server" CssClass="btn" Text="Link" 
                   Visible="False" />
           </td></tr> </table></b>
    
    <br />
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConflictDetection="CompareAllValues" 
           ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
           DeleteCommand="DELETE FROM [tblPatient] WHERE [P_RegNo] = @original_P_RegNo AND [P_Firstname] = @original_P_Firstname AND [P_Surname] = @original_P_Surname AND [P_ID] = @original_P_ID AND (([P_DOB] = @original_P_DOB) OR ([P_DOB] IS NULL AND @original_P_DOB IS NULL)) AND (([P_Title] = @original_P_Title) OR ([P_Title] IS NULL AND @original_P_Title IS NULL)) AND (([P_Race] = @original_P_Race) OR ([P_Race] IS NULL AND @original_P_Race IS NULL)) AND (([P_Nationality] = @original_P_Nationality) OR ([P_Nationality] IS NULL AND @original_P_Nationality IS NULL)) AND (([P_Address] = @original_P_Address) OR ([P_Address] IS NULL AND @original_P_Address IS NULL)) AND (([P_TellNo] = @original_P_TellNo) OR ([P_TellNo] IS NULL AND @original_P_TellNo IS NULL)) AND (([P_CellNo] = @original_P_CellNo) OR ([P_CellNo] IS NULL AND @original_P_CellNo IS NULL)) AND (([P_MaritalStatus] = @original_P_MaritalStatus) OR ([P_MaritalStatus] IS NULL AND @original_P_MaritalStatus IS NULL)) AND (([P_GrossIncome] = @original_P_GrossIncome) OR ([P_GrossIncome] IS NULL AND @original_P_GrossIncome IS NULL)) AND (([Reg_Date] = @original_Reg_Date) OR ([Reg_Date] IS NULL AND @original_Reg_Date IS NULL)) AND (([Medical_Aid] = @original_Medical_Aid) OR ([Medical_Aid] IS NULL AND @original_Medical_Aid IS NULL)) AND (([Medical_AidNo] = @original_Medical_AidNo) OR ([Medical_AidNo] IS NULL AND @original_Medical_AidNo IS NULL)) AND (([DebtorName] = @original_DebtorName) OR ([DebtorName] IS NULL AND @original_DebtorName IS NULL)) AND (([Employer] = @original_Employer) OR ([Employer] IS NULL AND @original_Employer IS NULL)) AND (([P_Category] = @original_P_Category) OR ([P_Category] IS NULL AND @original_P_Category IS NULL)) AND (([NextOfKin] = @original_NextOfKin) OR ([NextOfKin] IS NULL AND @original_NextOfKin IS NULL)) AND (([NOK_Relationship] = @original_NOK_Relationship) OR ([NOK_Relationship] IS NULL AND @original_NOK_Relationship IS NULL)) AND (([NOK_Address] = @original_NOK_Address) OR ([NOK_Address] IS NULL AND @original_NOK_Address IS NULL)) AND (([NOK_Cell_No] = @original_NOK_Cell_No) OR ([NOK_Cell_No] IS NULL AND @original_NOK_Cell_No IS NULL)) AND (([Tri_No] = @original_Tri_No) OR ([Tri_No] IS NULL AND @original_Tri_No IS NULL)) AND (([FingerprintID] = @original_FingerprintID) OR ([FingerprintID] IS NULL AND @original_FingerprintID IS NULL)) AND (([AccidentEmergencyID] = @original_AccidentEmergencyID) OR ([AccidentEmergencyID] IS NULL AND @original_AccidentEmergencyID IS NULL)) AND (([LabourWardID] = @original_LabourWardID) OR ([LabourWardID] IS NULL AND @original_LabourWardID IS NULL))" 
           InsertCommand="INSERT INTO [tblPatient] ([P_Firstname], [P_Surname], [P_ID], [P_DOB], [P_Title], [P_Race], [P_Nationality], [P_Address], [P_TellNo], [P_CellNo], [P_MaritalStatus], [P_GrossIncome], [Reg_Date], [Medical_Aid], [Medical_AidNo], [DebtorName], [Employer], [P_Category], [NextOfKin], [NOK_Relationship], [NOK_Address], [NOK_Cell_No], [Tri_No], [FingerprintID], [AccidentEmergencyID], [LabourWardID]) VALUES (@P_Firstname, @P_Surname, @P_ID, @P_DOB, @P_Title, @P_Race, @P_Nationality, @P_Address, @P_TellNo, @P_CellNo, @P_MaritalStatus, @P_GrossIncome, @Reg_Date, @Medical_Aid, @Medical_AidNo, @DebtorName, @Employer, @P_Category, @NextOfKin, @NOK_Relationship, @NOK_Address, @NOK_Cell_No, @Tri_No, @FingerprintID, @AccidentEmergencyID, @LabourWardID)" 
           OldValuesParameterFormatString="original_{0}" 
           SelectCommand="SELECT * FROM [tblPatient] WHERE ([P_ID] = @P_ID)" 
           UpdateCommand="UPDATE [tblPatient] SET [P_Firstname] = @P_Firstname, [P_Surname] = @P_Surname, [P_ID] = @P_ID, [P_DOB] = @P_DOB, [P_Title] = @P_Title, [P_Race] = @P_Race, [P_Nationality] = @P_Nationality, [P_Address] = @P_Address, [P_TellNo] = @P_TellNo, [P_CellNo] = @P_CellNo, [P_MaritalStatus] = @P_MaritalStatus, [P_GrossIncome] = @P_GrossIncome, [Reg_Date] = @Reg_Date, [Medical_Aid] = @Medical_Aid, [Medical_AidNo] = @Medical_AidNo, [DebtorName] = @DebtorName, [Employer] = @Employer, [P_Category] = @P_Category, [NextOfKin] = @NextOfKin, [NOK_Relationship] = @NOK_Relationship, [NOK_Address] = @NOK_Address, [NOK_Cell_No] = @NOK_Cell_No, [Tri_No] = @Tri_No, [FingerprintID] = @FingerprintID, [AccidentEmergencyID] = @AccidentEmergencyID, [LabourWardID] = @LabourWardID WHERE [P_RegNo] = @original_P_RegNo AND [P_Firstname] = @original_P_Firstname AND [P_Surname] = @original_P_Surname AND [P_ID] = @original_P_ID AND (([P_DOB] = @original_P_DOB) OR ([P_DOB] IS NULL AND @original_P_DOB IS NULL)) AND (([P_Title] = @original_P_Title) OR ([P_Title] IS NULL AND @original_P_Title IS NULL)) AND (([P_Race] = @original_P_Race) OR ([P_Race] IS NULL AND @original_P_Race IS NULL)) AND (([P_Nationality] = @original_P_Nationality) OR ([P_Nationality] IS NULL AND @original_P_Nationality IS NULL)) AND (([P_Address] = @original_P_Address) OR ([P_Address] IS NULL AND @original_P_Address IS NULL)) AND (([P_TellNo] = @original_P_TellNo) OR ([P_TellNo] IS NULL AND @original_P_TellNo IS NULL)) AND (([P_CellNo] = @original_P_CellNo) OR ([P_CellNo] IS NULL AND @original_P_CellNo IS NULL)) AND (([P_MaritalStatus] = @original_P_MaritalStatus) OR ([P_MaritalStatus] IS NULL AND @original_P_MaritalStatus IS NULL)) AND (([P_GrossIncome] = @original_P_GrossIncome) OR ([P_GrossIncome] IS NULL AND @original_P_GrossIncome IS NULL)) AND (([Reg_Date] = @original_Reg_Date) OR ([Reg_Date] IS NULL AND @original_Reg_Date IS NULL)) AND (([Medical_Aid] = @original_Medical_Aid) OR ([Medical_Aid] IS NULL AND @original_Medical_Aid IS NULL)) AND (([Medical_AidNo] = @original_Medical_AidNo) OR ([Medical_AidNo] IS NULL AND @original_Medical_AidNo IS NULL)) AND (([DebtorName] = @original_DebtorName) OR ([DebtorName] IS NULL AND @original_DebtorName IS NULL)) AND (([Employer] = @original_Employer) OR ([Employer] IS NULL AND @original_Employer IS NULL)) AND (([P_Category] = @original_P_Category) OR ([P_Category] IS NULL AND @original_P_Category IS NULL)) AND (([NextOfKin] = @original_NextOfKin) OR ([NextOfKin] IS NULL AND @original_NextOfKin IS NULL)) AND (([NOK_Relationship] = @original_NOK_Relationship) OR ([NOK_Relationship] IS NULL AND @original_NOK_Relationship IS NULL)) AND (([NOK_Address] = @original_NOK_Address) OR ([NOK_Address] IS NULL AND @original_NOK_Address IS NULL)) AND (([NOK_Cell_No] = @original_NOK_Cell_No) OR ([NOK_Cell_No] IS NULL AND @original_NOK_Cell_No IS NULL)) AND (([Tri_No] = @original_Tri_No) OR ([Tri_No] IS NULL AND @original_Tri_No IS NULL)) AND (([FingerprintID] = @original_FingerprintID) OR ([FingerprintID] IS NULL AND @original_FingerprintID IS NULL)) AND (([AccidentEmergencyID] = @original_AccidentEmergencyID) OR ([AccidentEmergencyID] IS NULL AND @original_AccidentEmergencyID IS NULL)) AND (([LabourWardID] = @original_LabourWardID) OR ([LabourWardID] IS NULL AND @original_LabourWardID IS NULL))">
           <DeleteParameters>
               <asp:Parameter Name="original_P_RegNo" Type="Int32" />
               <asp:Parameter Name="original_P_Firstname" Type="String" />
               <asp:Parameter Name="original_P_Surname" Type="String" />
               <asp:Parameter Name="original_P_ID" Type="String" />
               <asp:Parameter DbType="Date" Name="original_P_DOB" />
               <asp:Parameter Name="original_P_Title" Type="String" />
               <asp:Parameter Name="original_P_Race" Type="String" />
               <asp:Parameter Name="original_P_Nationality" Type="String" />
               <asp:Parameter Name="original_P_Address" Type="String" />
               <asp:Parameter Name="original_P_TellNo" Type="String" />
               <asp:Parameter Name="original_P_CellNo" Type="String" />
               <asp:Parameter Name="original_P_MaritalStatus" Type="String" />
               <asp:Parameter Name="original_P_GrossIncome" Type="String" />
               <asp:Parameter DbType="Date" Name="original_Reg_Date" />
               <asp:Parameter Name="original_Medical_Aid" Type="Boolean" />
               <asp:Parameter Name="original_Medical_AidNo" Type="String" />
               <asp:Parameter Name="original_DebtorName" Type="String" />
               <asp:Parameter Name="original_Employer" Type="String" />
               <asp:Parameter Name="original_P_Category" Type="String" />
               <asp:Parameter Name="original_NextOfKin" Type="String" />
               <asp:Parameter Name="original_NOK_Relationship" Type="String" />
               <asp:Parameter Name="original_NOK_Address" Type="String" />
               <asp:Parameter Name="original_NOK_Cell_No" Type="String" />
               <asp:Parameter Name="original_Tri_No" Type="Int32" />
               <asp:Parameter Name="original_FingerprintID" Type="Int32" />
               <asp:Parameter Name="original_AccidentEmergencyID" Type="Int32" />
               <asp:Parameter Name="original_LabourWardID" Type="Int32" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="P_Firstname" Type="String" />
               <asp:Parameter Name="P_Surname" Type="String" />
               <asp:Parameter Name="P_ID" Type="String" />
               <asp:Parameter DbType="Date" Name="P_DOB" />
               <asp:Parameter Name="P_Title" Type="String" />
               <asp:Parameter Name="P_Race" Type="String" />
               <asp:Parameter Name="P_Nationality" Type="String" />
               <asp:Parameter Name="P_Address" Type="String" />
               <asp:Parameter Name="P_TellNo" Type="String" />
               <asp:Parameter Name="P_CellNo" Type="String" />
               <asp:Parameter Name="P_MaritalStatus" Type="String" />
               <asp:Parameter Name="P_GrossIncome" Type="String" />
               <asp:Parameter DbType="Date" Name="Reg_Date" />
               <asp:Parameter Name="Medical_Aid" Type="Boolean" />
               <asp:Parameter Name="Medical_AidNo" Type="String" />
               <asp:Parameter Name="DebtorName" Type="String" />
               <asp:Parameter Name="Employer" Type="String" />
               <asp:Parameter Name="P_Category" Type="String" />
               <asp:Parameter Name="NextOfKin" Type="String" />
               <asp:Parameter Name="NOK_Relationship" Type="String" />
               <asp:Parameter Name="NOK_Address" Type="String" />
               <asp:Parameter Name="NOK_Cell_No" Type="String" />
               <asp:Parameter Name="Tri_No" Type="Int32" />
               <asp:Parameter Name="FingerprintID" Type="Int32" />
               <asp:Parameter Name="AccidentEmergencyID" Type="Int32" />
               <asp:Parameter Name="LabourWardID" Type="Int32" />
           </InsertParameters>
           <SelectParameters>
               <asp:ControlParameter ControlID="TextBox1" Name="P_ID" PropertyName="Text" 
                   Type="String" />
           </SelectParameters>
           <UpdateParameters>
               <asp:Parameter Name="P_Firstname" Type="String" />
               <asp:Parameter Name="P_Surname" Type="String" />
               <asp:Parameter Name="P_ID" Type="String" />
               <asp:Parameter DbType="Date" Name="P_DOB" />
               <asp:Parameter Name="P_Title" Type="String" />
               <asp:Parameter Name="P_Race" Type="String" />
               <asp:Parameter Name="P_Nationality" Type="String" />
               <asp:Parameter Name="P_Address" Type="String" />
               <asp:Parameter Name="P_TellNo" Type="String" />
               <asp:Parameter Name="P_CellNo" Type="String" />
               <asp:Parameter Name="P_MaritalStatus" Type="String" />
               <asp:Parameter Name="P_GrossIncome" Type="String" />
               <asp:Parameter DbType="Date" Name="Reg_Date" />
               <asp:Parameter Name="Medical_Aid" Type="Boolean" />
               <asp:Parameter Name="Medical_AidNo" Type="String" />
               <asp:Parameter Name="DebtorName" Type="String" />
               <asp:Parameter Name="Employer" Type="String" />
               <asp:Parameter Name="P_Category" Type="String" />
               <asp:Parameter Name="NextOfKin" Type="String" />
               <asp:Parameter Name="NOK_Relationship" Type="String" />
               <asp:Parameter Name="NOK_Address" Type="String" />
               <asp:Parameter Name="NOK_Cell_No" Type="String" />
               <asp:Parameter Name="Tri_No" Type="Int32" />
               <asp:Parameter Name="FingerprintID" Type="Int32" />
               <asp:Parameter Name="AccidentEmergencyID" Type="Int32" />
               <asp:Parameter Name="LabourWardID" Type="Int32" />
               <asp:Parameter Name="original_P_RegNo" Type="Int32" />
               <asp:Parameter Name="original_P_Firstname" Type="String" />
               <asp:Parameter Name="original_P_Surname" Type="String" />
               <asp:Parameter Name="original_P_ID" Type="String" />
               <asp:Parameter DbType="Date" Name="original_P_DOB" />
               <asp:Parameter Name="original_P_Title" Type="String" />
               <asp:Parameter Name="original_P_Race" Type="String" />
               <asp:Parameter Name="original_P_Nationality" Type="String" />
               <asp:Parameter Name="original_P_Address" Type="String" />
               <asp:Parameter Name="original_P_TellNo" Type="String" />
               <asp:Parameter Name="original_P_CellNo" Type="String" />
               <asp:Parameter Name="original_P_MaritalStatus" Type="String" />
               <asp:Parameter Name="original_P_GrossIncome" Type="String" />
               <asp:Parameter DbType="Date" Name="original_Reg_Date" />
               <asp:Parameter Name="original_Medical_Aid" Type="Boolean" />
               <asp:Parameter Name="original_Medical_AidNo" Type="String" />
               <asp:Parameter Name="original_DebtorName" Type="String" />
               <asp:Parameter Name="original_Employer" Type="String" />
               <asp:Parameter Name="original_P_Category" Type="String" />
               <asp:Parameter Name="original_NextOfKin" Type="String" />
               <asp:Parameter Name="original_NOK_Relationship" Type="String" />
               <asp:Parameter Name="original_NOK_Address" Type="String" />
               <asp:Parameter Name="original_NOK_Cell_No" Type="String" />
               <asp:Parameter Name="original_Tri_No" Type="Int32" />
               <asp:Parameter Name="original_FingerprintID" Type="Int32" />
               <asp:Parameter Name="original_AccidentEmergencyID" Type="Int32" />
               <asp:Parameter Name="original_LabourWardID" Type="Int32" />
           </UpdateParameters>
       </asp:SqlDataSource>
    
    <br />
       <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
           ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
           SelectCommand="SELECT * FROM [tblPatient] " 
           UpdateCommand="UPDATE tblPatient SET Tri_No = @Tri_No WHERE (P_ID = @P_ID)">
           <UpdateParameters>
               <asp:ControlParameter ControlID="TextBox2" Name="Tri_No" PropertyName="Text" />
               <asp:ControlParameter ControlID="TextBox1" Name="P_ID" PropertyName="Text" />
           </UpdateParameters>
       </asp:SqlDataSource>
    
    </div>
      
</asp:Content>

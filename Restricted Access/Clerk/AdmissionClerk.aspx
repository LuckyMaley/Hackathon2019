<%@ Page Title="Admission" Language="vb" AutoEventWireup="false" MasterPageFile="SiteClerk.Master" CodeBehind="AdmissionClerk.aspx.vb" Inherits="Hackathon2019.AdmissionClerk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-color:#666; padding:30px; text-align:center; font-size:35px;color:white"> Admission </div>
     <table style=" width:100%;" align="center">
     <tr><td>
        <table align="center" width="480px">
        <tr>
        <td>
         <asp:GridView ID="GVIsAdmited" runat="server" AutoGenerateColumns="False" 
             DataKeyNames="Expr1" DataSourceID="sqlDSIsAdmited" BackColor="White" 
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                ForeColor="Black" GridLines="Horizontal" Height="169px" Width="467px" 
                Visible="False">
             <Columns>
                 <asp:BoundField DataField="Expr1" HeaderText="Expr1" InsertVisible="False" 
                     ReadOnly="True" SortExpression="Expr1" />
                 <asp:BoundField DataField="Bed_No" HeaderText="Bed_No" 
                     SortExpression="Bed_No" />
                 <asp:CheckBoxField DataField="Discharged" HeaderText="Discharged" 
                     SortExpression="Discharged" />
                 <asp:BoundField DataField="Ward_No" HeaderText="Ward_No" 
                     SortExpression="Ward_No" />
                 <asp:BoundField DataField="P_RegNo" HeaderText="P_RegNo" 
                     SortExpression="P_RegNo" />
             </Columns>
             <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
             <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
             <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F7F7F7" />
             <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
             <SortedDescendingCellStyle BackColor="#E5E5E5" />
             <SortedDescendingHeaderStyle BackColor="#242121" />
         </asp:GridView>
         <asp:SqlDataSource ID="sqlDSIsAdmited" runat="server" 
             ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
             SelectCommand="SELECT P_AdmissionNo AS Expr1, Bed_No, Discharged, Ward_No, P_RegNo FROM tblAdmission WHERE (P_RegNo = @P_RegNo) AND (Discharged = 0)">
             <SelectParameters>
                 <asp:ControlParameter ControlID="txbP_RegNo" Name="P_RegNo" 
                     PropertyName="Text" />
             </SelectParameters>
         </asp:SqlDataSource>
         </td>
         </tr>
         </table>
         

         <table align ="center">
         <tr><td colspan="2">
         <asp:TextBox ID="txbDate" runat="server" Visible="False"></asp:TextBox> 
         
         </td>
         </tr>
                 <tr><td>
            <asp:Label ID="Label1" runat="server" Text="Patient Registration Number : "></asp:Label> </td><td> 
                         <asp:TextBox ID="txbP_RegNo" runat="server" CssClass="form-control"></asp:TextBox> 
         </td></tr>
         <tr>
         <td>
            <asp:Label ID="Label2" runat="server" Text="Diagnosis : "></asp:Label> </td><td> 
                 <asp:TextBox ID="txbDiagnosis" runat="server" CssClass="form-control"></asp:TextBox> 
         </td>
         </tr>
         <tr>
         <td>
                    <asp:Label ID="Label3" runat="server" Text="Choose District : "></asp:Label></td>
                   <td> 
                       <asp:DropDownList ID="dblDistrict" runat="server" AutoPostBack="True" 
                        DataSourceID="sqlDSDistrict" DataTextField="District_Name" 
                        DataValueField="District_ID" CssClass="form-control">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="sqlDSDistrict" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
                        SelectCommand="SELECT * FROM [tblDistrict]"></asp:SqlDataSource>
                </td></tr>
                <tr>

                <td>
                    <asp:Label ID="Label4" runat="server" Text="Choose Hospital : "></asp:Label></td>
                  <td>  
                      <asp:DropDownList ID="dblHospital" runat="server" AutoPostBack="True" 
                        DataSourceID="sqlDSHospital" DataTextField="Hospital_Name" 
                        DataValueField="Hospital_No" CssClass="form-control">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="sqlDSHospital" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
                        SelectCommand="SELECT * FROM [tblHospital] WHERE ([District_ID] = @District_ID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="dblDistrict" Name="District_ID" 
                                PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource></td>
                </tr>
                </table> 
                <table align="center">
                    <tr><td colspan="2" align="center">
                    <h3>Available wards in selected district and hospital</h3></td></tr>
                    <tr><td colspan="2"><asp:GridView ID="GVWards" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="Ward_No" DataSourceID="sqlDSWards" BackColor="White" 
                            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                            ForeColor="Black" GridLines="Horizontal" Height="166px" Width="421px">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Ward_No" HeaderText="Ward_No" InsertVisible="False" 
                                ReadOnly="True" SortExpression="Ward_No" />
                            <asp:BoundField DataField="Ward_Name" HeaderText="Ward_Name" 
                                SortExpression="Ward_Name" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    </td></tr>
                    <tr><td><asp:TextBox ID="txbBedNO" runat="server" Width="215px" Height="45px" 
                            Visible="False"></asp:TextBox>
                    <asp:SqlDataSource ID="sqlDSWards" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
                        
                        
                            SelectCommand="SELECT Ward_No, Ward_Name FROM tblWard WHERE (Hospital_No = @Hospital_No)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="dblHospital" Name="Hospital_No" 
                                PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
</td></tr>
                </table>
                <table align="center"> 
                <tr><td>
         <asp:GridView ID="GVCheck" runat="server" AutoGenerateColumns="False" 
             DataSourceID="sqlDSCheck" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" 
                        BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" 
                        Height="193px" Width="393px">
             <Columns>
                 <asp:BoundField DataField="Bed_No" HeaderText="Bed_No" 
                     SortExpression="Bed_No" />
                 <asp:CheckBoxField DataField="Discharged" HeaderText="Discharged" 
                     SortExpression="Discharged" />
                 <asp:BoundField DataField="Ward_No" HeaderText="Ward_No" 
                     SortExpression="Ward_No" />
             </Columns>
             <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
             <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
             <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F7F7F7" />
             <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
             <SortedDescendingCellStyle BackColor="#E5E5E5" />
             <SortedDescendingHeaderStyle BackColor="#242121" />
         </asp:GridView>

         <asp:SqlDataSource ID="sqlDSCheck" runat="server" 
             ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
             SelectCommand="SELECT Bed_No, Discharged, Ward_No FROM tblAdmission WHERE (Bed_No = @Bed_No) AND (Ward_No = @ward_No) AND (Discharged = 0)">
             <SelectParameters>
                 <asp:ControlParameter ControlID="txbBedNO" Name="Bed_No" PropertyName="Text" />
                 <asp:ControlParameter ControlID="GVWards" Name="ward_No" 
                     PropertyName="SelectedValue" />
             </SelectParameters>
         </asp:SqlDataSource></td></tr>
         </table>
            <table align="center">
            <tr><td>
            <div align="center" style="margin-left: 200px; padding-right: 100px;">
            <div align="center">
                <div style="margin: 40px; float: left; width: 100px; height: 100px;">
                    <asp:Button ID="btn1" runat="server" Text="Bed 1" Width="100px" 
                        Height="150px" Visible="False" />
                </div>
                 <div style="margin: 40px; float: left; width: 100px; height: 100px;">
                    <asp:Button ID="btn2" runat="server" Text="Bed 2" Width="100px" Height="150px" 
                         Visible="False" />
                </div>
                 <div style="margin: 40px; float: left; width: 100px; height: 100px;">
                    <asp:Button ID="btn3" runat="server" Text="Bed 3" Width="100px" Height="150px" 
                         Visible="False" />
                </div>
                <div style="margin: 40px; float: left; width: 100px; height: 100px;">
                    <asp:Button ID="btn4" runat="server" Text="Bed 4" Width="100px" Height="150px" 
                        Visible="False" />
                </div>
                 <div style="margin: 40px; float: left; width: 100px; height: 100px;">
                    <asp:Button ID="btn5" runat="server" Text="Bed 5" Width="100px" Height="150px" 
                         Visible="False" />

               </div>
               </div> 
                </div>
          </td></tr>
          </table>
          <br />
           <table align="center">
           <tr><td>
                <div style="margin: 40px; float: left; width: 100px; height: 100px;">
                    <asp:Button ID="btn6" runat="server" Text="Bed 6" Width="100px" Height="150px" 
                        Visible="False" />
                </div>
                 <div style="margin: 40px; float: left; width: 100px; height: 100px;">
                    <asp:Button ID="btn7" runat="server" Text="Bed 7" Width="100px" Height="150px" 
                         Visible="False" />
                </div>
                 <div style="margin: 40px; float: left; width: 100px; height: 100px;">
                    <asp:Button ID="btn8" runat="server" Text="Bed 8" Width="100px" Height="150px" 
                         Visible="False" />
                </div>
                <div style="margin: 40px; float: left; width: 100px; height: 100px;">
                    <asp:Button ID="btn9" runat="server" Text="Bed 9" Width="100px" Height="150px" 
                        Visible="False" />
                </div>
                 <div style="margin: 40px; float: left; width: 100px; height: 100px;">
                    <asp:Button ID="btn10" runat="server" Text="Bed 10" Width="100px" Height="150px" 
                         Visible="False" />
                </div>

                <div style="margin: 100px">
                    
                </div>
                </td></tr>
          </table>
  </td></tr>

            </table>
            <br /><br />
</asp:Content>

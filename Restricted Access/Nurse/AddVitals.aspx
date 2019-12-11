<%@ Page Title="Vitals" Language="vb" AutoEventWireup="false" MasterPageFile="SiteNurse.Master" CodeBehind="AddVitals.aspx.vb" Inherits="Hackathon2019.AddVitals" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        
        <div style="background-color:#666; padding:30px; text-align:center; font-size:35px;color:white">Add Patient Vitals</div>
            <div style="text-align:center; width:97%; float: inherit;" align="center">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
                    SelectCommand="SELECT [P_RegNo], [P_Firstname], [P_Surname], [P_ID], [P_CellNo] FROM [tblPatient] WHERE ([P_Surname] LIKE '%' + @P_Surname + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txbSurname" Name="P_Surname" 
                            PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="Label1" runat="server" Text="Patient Surname    "></asp:Label>
                <asp:TextBox ID="txbSurname" runat="server" Width="202px"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" />
                <br>
                <div align="center">
                <asp:GridView ID="GridView1"
                    runat="server" AllowPaging="True" AutoGenerateColumns="False" 
                    DataKeyNames="P_RegNo" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="P_RegNo" HeaderText="P_RegNo" ReadOnly="True" 
                            SortExpression="P_RegNo" />
                        <asp:BoundField DataField="P_Firstname" HeaderText="P_Firstname" 
                            SortExpression="P_Firstname" />
                        <asp:BoundField DataField="P_Surname" HeaderText="P_Surname" 
                            SortExpression="P_Surname" />
                        <asp:BoundField DataField="P_ID" HeaderText="P_ID" SortExpression="P_ID" />
                        <asp:BoundField DataField="P_CellNo" HeaderText="P_CellNo" 
                            SortExpression="P_CellNo" />
                    </Columns>
                </asp:GridView>
                <br>
                <div align="center">
                    <asp:Label ID="lblRegNo" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:TextBox ID="txbNurse" runat="server" Visible="False"></asp:TextBox>

                    <div align="center"
                        <asp:Label ID="Label11" runat="server" Text="Select Clinic"></asp:Label>

                        <asp:DropDownList ID="dblClinic" runat="server" DataSourceID="sqlDSClinic" 
                            DataTextField="Clinic_Name" DataValueField="Clinic_No">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="sqlDSClinic" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
                            SelectCommand="SELECT * FROM [tblClinic] ORDER BY [Clinic_Name]"></asp:SqlDataSource>
                    </div>
                    <br>
                    <div align="center">
                        <asp:Label ID="Label12" runat="server" Text="Select Doctor"></asp:Label>
                        
                        <asp:DropDownList ID="dblDoctor" runat="server" DataSourceID="sqlDSDoctor" 
                            DataTextField="Dr_Surname" DataValueField="Dr_RegNo">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="sqlDSDoctor" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
                            SelectCommand="SELECT * FROM [tblDoctor] ORDER BY [Dr_Surname]"></asp:SqlDataSource>
                    </div>
                    <br>
                    <div align="center"><asp:Label ID="Label2" runat="server" Text="Weight"></asp:Label><asp:TextBox ID="txbWeight"
                        runat="server"></asp:TextBox>
                    </div>
                    <br>
                    <div align="center">
                        <asp:Label ID="Label3" runat="server" Text="Height"></asp:Label><asp:TextBox ID="txbHeight"
                            runat="server"></asp:TextBox>
                    </div>
                    <br>
                     <div align="center"> 
                        <asp:Label ID="Label4" runat="server" Text="Cholesterol"></asp:Label><asp:TextBox ID="txbCholesterol"
                        runat="server"></asp:TextBox>
                    </div>
                    <br>
                    <div align="center">
                        <asp:Label ID="Label5" runat="server" Text="Urine Glucose"></asp:Label><asp:TextBox ID="txbUrineGlu"
                        runat="server"></asp:TextBox>
                    </div>
                    <br>
                    <div align="center">
                        <asp:Label ID="Label10" runat="server" Text="BP"></asp:Label><asp:TextBox ID="txbBP"
                            runat="server"></asp:TextBox>
                    </div>
                    <div align="center">
                        <asp:Label ID="Label6" runat="server" Text="Do you have hypertension? "></asp:Label><asp:CheckBox ID="chPHypertension" runat="server" />
                    </div>
                    <div align="center">
                        <asp:Label ID="Label7" runat="server" Text="Do you have Diabetes? "></asp:Label><asp:CheckBox ID="chPDiabetes" runat="server" />
                    </div>
                    <div align="center">
                        <asp:Label ID="Label8" runat="server" Text="Do anyone in your family have hypertension? "></asp:Label><asp:CheckBox ID="chSHypertension" runat="server" />
                    </div>
                    <div align="center">
                        <asp:Label ID="Label9" runat="server" Text="Do anyone in your family have Diabetes? "></asp:Label><asp:CheckBox ID="chSDiabetes" runat="server" />
                    </div>
                    <div align="center">
                        <asp:Button ID="btnAddVitals" runat="server" Text="Add Vitals" />

                    </div>

                </div>
                </div>
            </div>
        </div>
</asp:Content>

<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Restricted Access/Doctor/SiteDoc.Master" CodeBehind="AddVitalsDoctor.aspx.vb" Inherits="Hackathon2019.AddVitalsDoctor1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <br />
        <div style="background-color:#666; padding:30px; text-align:center; font-size:35px;color:white"> Add to Patient File</div>
            <div style="text-align:center; width:97%; float: inherit;" align="center">
                <asp:Label ID="Label1" runat="server" Text="Patient Surname    "></asp:Label>
                <asp:TextBox ID="txbSurname" runat="server" Width="202px"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" />
                <asp:Label ID="lblRegNo" runat="server" Text="Label"></asp:Label>
                <br>
                <div align="center">
                    <asp:GridView ID="GVPatient" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataKeyNames="P_RegNo" 
                        DataSourceID="sqlDSPatient" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" Height="164px" Width="983px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="P_RegNo" HeaderText="P_RegNo" ReadOnly="True" 
                                SortExpression="P_RegNo" />
                            <asp:BoundField DataField="P_Firstname" HeaderText="P_Firstname" 
                                SortExpression="P_Firstname" />
                            <asp:BoundField DataField="P_Surname" HeaderText="P_Surname" 
                                SortExpression="P_Surname" />
                            <asp:BoundField DataField="P_DOB" HeaderText="P_DOB" SortExpression="P_DOB" />
                            <asp:BoundField DataField="P_Race" HeaderText="P_Race" 
                                SortExpression="P_Race" />
                            <asp:BoundField DataField="P_Nationality" HeaderText="P_Nationality" 
                                SortExpression="P_Nationality" />
                            <asp:BoundField DataField="P_GrossIncome" HeaderText="P_GrossIncome" 
                                SortExpression="P_GrossIncome" />
                            <asp:CheckBoxField DataField="Medical_Aid" HeaderText="Medical_Aid" 
                                SortExpression="Medical_Aid" />
                            <asp:BoundField DataField="P_Category" HeaderText="P_Category" 
                                SortExpression="P_Category" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="sqlDSPatient" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
                        SelectCommand="SELECT [P_RegNo], [P_Firstname], [P_Surname], [P_DOB], [P_Race], [P_Nationality], [P_GrossIncome], [Medical_Aid], [P_Category] FROM [tblPatient] WHERE ([P_Surname] LIKE '%' + @P_Surname + '%')">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txbSurname" Name="P_Surname" 
                                PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <div align="center">
                    <h1>Today's Vitals</h1>
                    <h3>Select one before adding your entries</h3>
                    <asp:GridView ID="GVVitals" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="P_RecNo" DataSourceID="sqlDSVitals" CellPadding="4" 
                        ForeColor="#333333" GridLines="None" Height="236px" Width="990px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Weight" HeaderText="Weight" 
                                SortExpression="Weight" />
                            <asp:BoundField DataField="Height" HeaderText="Height" 
                                SortExpression="Height" />
                            <asp:BoundField DataField="Cholesterol" HeaderText="Cholesterol" 
                                SortExpression="Cholesterol" />
                            <asp:BoundField DataField="Urine_Glucose" HeaderText="Urine_Glucose" 
                                SortExpression="Urine_Glucose" />
                            <asp:BoundField DataField="P_RecNo" HeaderText="P_RecNo" InsertVisible="False" 
                                ReadOnly="True" SortExpression="P_RecNo" />
                            <asp:BoundField DataField="BP" HeaderText="BP" SortExpression="BP" />
                            <asp:CheckBoxField DataField="P_Hypertension" HeaderText="P_Hypertension" 
                                SortExpression="P_Hypertension" />
                            <asp:CheckBoxField DataField="P_Diabetes" HeaderText="P_Diabetes" 
                                SortExpression="P_Diabetes" />
                            <asp:CheckBoxField DataField="S_Hypertension" HeaderText="S_Hypertension" 
                                SortExpression="S_Hypertension" />
                            <asp:CheckBoxField DataField="S_Diabetes" HeaderText="S_Diabetes" 
                                SortExpression="S_Diabetes" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="sqlDSVitals" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
                        
                        SelectCommand="SELECT Weight, Height, Cholesterol, Urine_Glucose, P_RecNo, BP, P_Hypertension, P_Diabetes, S_Hypertension, S_Diabetes, Date FROM tblPatientRecord WHERE (P_RegNo = @P_RegNo) AND (Date = @Date)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GVPatient" Name="P_RegNo" 
                                PropertyName="SelectedValue" Type="Decimal" />
                            <asp:ControlParameter ControlID="txbTodayDate" DbType="Date" Name="Date" 
                                PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:TextBox ID="txbTodayDate" runat="server" Visible="False"></asp:TextBox>

                    <asp:GridView ID="GVToPass" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="P_RecNo" DataSourceID="sqlDSToPass" BackColor="White" 
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                        ForeColor="Black" GridLines="Horizontal" Height="145px" Width="399px" 
                        Visible="False">
                        <Columns>
                            <asp:BoundField DataField="Dr_Surname" HeaderText="Dr_Surname" 
                                SortExpression="Dr_Surname" />
                            <asp:BoundField DataField="Dr_CellNo" HeaderText="Dr_CellNo" 
                                SortExpression="Dr_CellNo" />
                            <asp:BoundField DataField="P_RecNo" HeaderText="P_RecNo" InsertVisible="False" 
                                ReadOnly="True" SortExpression="P_RecNo" />
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
                    <asp:SqlDataSource ID="sqlDSToPass" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
                        SelectCommand="SELECT tblDoctor.Dr_Surname, tblDoctor.Dr_CellNo, tblPatientRecord.P_RecNo FROM tblDoctor INNER JOIN tblPatientRecord ON tblDoctor.Dr_RegNo = tblPatientRecord.Dr_RegNo WHERE (tblPatientRecord.P_RecNo = @P_RecNo)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GVVitals" Name="P_RecNo" 
                                PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                </div>

                <div style="width: 100%">
                    <h1>Patient's History</h1>
                    <h3>Select a record to view test orders and results<h3>
                    <asp:GridView ID="GVHistory" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="sqlHistory" AllowPaging="True" DataKeyNames="P_RecNo" 
                        Width="100%" Height="597px">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:CheckBoxField DataField="P_Hypertension" HeaderText="P_Hypertension" 
                                SortExpression="P_Hypertension" />
                            <asp:CheckBoxField DataField="P_Diabetes" HeaderText="P_Diabetes" 
                                SortExpression="P_Diabetes" />
                            <asp:CheckBoxField DataField="S_Hypertension" HeaderText="S_Hypertension" 
                                SortExpression="S_Hypertension" />
                            <asp:CheckBoxField DataField="S_Diabetes" HeaderText="S_Diabetes" 
                                SortExpression="S_Diabetes" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                            <asp:BoundField DataField="Findings" HeaderText="Findings" 
                                SortExpression="Findings" />
                            <asp:BoundField DataField="Diagnosis" HeaderText="Diagnosis" 
                                SortExpression="Diagnosis" />
                            <asp:BoundField DataField="Treatment" HeaderText="Treatment" 
                                SortExpression="Treatment" />
                            <asp:BoundField DataField="Progress" HeaderText="Progress" 
                                SortExpression="Progress" />
                            <asp:BoundField DataField="Dr_Firstname" HeaderText="Dr_Firstname" 
                                SortExpression="Dr_Firstname" />
                            <asp:BoundField DataField="Dr_Surname" HeaderText="Dr_Surname" 
                                SortExpression="Dr_Surname" />
                            <asp:BoundField DataField="Dr_CellNo" HeaderText="Dr_CellNo" 
                                SortExpression="Dr_CellNo" />
                            <asp:BoundField DataField="Clinic_Name" HeaderText="Clinic_Name" 
                                SortExpression="Clinic_Name" />
                            <asp:BoundField DataField="P_RecNo" HeaderText="P_RecNo" InsertVisible="False" 
                                ReadOnly="True" SortExpression="P_RecNo" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="sqlHistory" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
                        
                        SelectCommand="SELECT tblPatientRecord.P_Hypertension, tblPatientRecord.P_Diabetes, tblPatientRecord.S_Hypertension, tblPatientRecord.S_Diabetes, tblPatientRecord.Date, tblPatientRecord.Findings, tblPatientRecord.Diagnosis, tblPatientRecord.Treatment, tblPatientRecord.Progress, tblDoctor.Dr_Firstname, tblDoctor.Dr_Surname, tblDoctor.Dr_CellNo, tblClinic.Clinic_Name, tblPatientRecord.P_RecNo FROM tblClinic INNER JOIN tblPatientRecord ON tblClinic.Clinic_No = tblPatientRecord.Clinic_No CROSS JOIN tblDoctor WHERE (tblPatientRecord.P_RegNo = @P_RegNo)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GVPatient" Name="P_RegNo" 
                                PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                </div>
                <div align="center">
                    <h1>Test Results</h1>
                    <asp:DetailsView ID="DVXrays" runat="server" Height="64px" Width="356px" 
                        AllowPaging="True" AutoGenerateRows="False" DataKeyNames="X_Ray_No" 
                        DataSourceID="sqlDSXrays" BackColor="White" BorderColor="#336666" 
                        BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:BoundField DataField="X_Ray_No" HeaderText="X_Ray_No" 
                                InsertVisible="False" ReadOnly="True" SortExpression="X_Ray_No" />
                            <asp:BoundField DataField="X_Date" HeaderText="X_Date" 
                                SortExpression="X_Date" />
                            <asp:BoundField DataField="X_Parts" HeaderText="X_Parts" 
                                SortExpression="X_Parts" />
                            <asp:BoundField DataField="P_RecNo" HeaderText="P_RecNo" 
                                SortExpression="P_RecNo" />
                            <asp:BoundField DataField="X_RayScan" HeaderText="X_RayScan" 
                                SortExpression="X_RayScan" />
                            <asp:ImageField DataImageUrlField="X_RayScan" 
                                DataImageUrlFormatString="~\Resources\{0}.jpg" HeaderText="X Ray Scan">
                                <ControlStyle Height="200px" Width="200px" />
                            </asp:ImageField>
                        </Fields>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="sqlDSXrays" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
                        
                        SelectCommand="SELECT X_Ray_No, X_Date, X_Parts, P_RecNo, X_RayScan FROM tblXRay WHERE (P_RecNo = @P_RecNo)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GVHistory" Name="P_RecNo" 
                                PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                </div>
                    <br>
                <div>
                    <h1>Your Entries</h1>
                    <asp:Label ID="Label6" runat="server" Text="Entry for Patient Record :"></asp:Label>
                    <asp:TextBox ID="txbP_RecNO" runat="server"></asp:TextBox>
                    <br>
                    <asp:Label ID="Label2" runat="server" Text="Findings :"></asp:Label> <asp:TextBox ID="txbFindings" runat="server" Height="89px" TextMode="MultiLine" 
                        Width="272px"></asp:TextBox>
                </div>
                    <br>
                <div>
                        <asp:Label ID="Label3" runat="server" Text="Diagnosis :"></asp:Label> <asp:TextBox ID="txbDiagnosis" runat="server" Height="89px" TextMode="MultiLine" 
                        Width="272px"></asp:TextBox>
                </div>
                    <br>
                <div>
                        <asp:Label ID="Label4" runat="server" Text="Treatment :"></asp:Label> <asp:TextBox ID="txbTreatment" runat="server" Height="89px" TextMode="MultiLine" 
                        Width="272px"></asp:TextBox>
                </div>
                    <br>
                <div>
                        <asp:Label ID="Label5" runat="server" Text="Progress :"></asp:Label> <asp:TextBox ID="txbProgress" runat="server" Height="89px" TextMode="MultiLine" 
                        Width="272px"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="Label7" runat="server" Text="Send XRay request to radiology?"></asp:Label><asp:CheckBox ID="chXRayRequest"
                        runat="server" />
                </div>
                    <br>
                <asp:Button ID="btnAppointment" runat="server" Text="Follow Up Appointment" />
                <asp:Button ID="btnDischarge" runat="server" Text="Finalise and Discharge" />
                <asp:Button ID="btnAdmit" runat="server" Text="Finalise and Admit" />

                <br />

            </div>
</asp:Content>

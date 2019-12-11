<%@ Page Title="Admission" Language="vb" AutoEventWireup="false" MasterPageFile="SiteDoc.Master" CodeBehind="AdmissionDR.aspx.vb" Inherits="Hackathon2019.AdmissionDR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <div style="background-color:#666; padding:30px; text-align:center; font-size:35px;color:white"> Admission </div>
            <div style="text-align:center; width:97%; float: inherit;" align="center">
                <h3>Select a ward and confirm admission</h3>

                <asp:TextBox ID="txbPassSurname" runat="server" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="txbPassRegNo" runat="server" Visible="False"></asp:TextBox>
                <asp:TextBox ID="txbPassDiagnosis" runat="server" Visible="False"></asp:TextBox>
                <div>
                    <asp:Label ID="Label1" runat="server" Text="Choose District : "></asp:Label>
                    <asp:DropDownList ID="dblDistrict" runat="server" AutoPostBack="True" 
                        DataSourceID="sqlDSDistrict" DataTextField="District_Name" 
                        DataValueField="District_ID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="sqlDSDistrict" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
                        SelectCommand="SELECT * FROM [tblDistrict]"></asp:SqlDataSource>
                </div>
                <br>

                <div>
                    <asp:Label ID="Label2" runat="server" Text="Choose Hospital : "></asp:Label>
                    <asp:DropDownList ID="dblHospital" runat="server" AutoPostBack="True" 
                        DataSourceID="sqlDSHospital" DataTextField="Hospital_Name" 
                        DataValueField="Hospital_No">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="sqlDSHospital" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
                        SelectCommand="SELECT * FROM [tblHospital] WHERE ([District_ID] = @District_ID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="dblDistrict" Name="District_ID" 
                                PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>

                <div align="center">
                    <h3>Available wards in selected district and hospital</h3>
                    <asp:GridView ID="GVWards" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="Ward_No" DataSourceID="sqlDSWards">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Ward_No" HeaderText="Ward_No" InsertVisible="False" 
                                ReadOnly="True" SortExpression="Ward_No" />
                            <asp:BoundField DataField="Ward_Name" HeaderText="Ward_Name" 
                                SortExpression="Ward_Name" />
                            <asp:BoundField DataField="Available_No_Of_Beds" 
                                HeaderText="Available_No_Of_Beds" SortExpression="Available_No_Of_Beds" />
                            <asp:BoundField DataField="Hospital_No" HeaderText="Hospital_No" 
                                SortExpression="Hospital_No" />
                            <asp:BoundField DataField="No_Of_Beds" HeaderText="No_Of_Beds" 
                                SortExpression="No_Of_Beds" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="sqlDSWards" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
                        SelectCommand="SELECT * FROM [tblWard] WHERE ([Hospital_No] = @Hospital_No)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="dblHospital" Name="Hospital_No" 
                                PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:TextBox ID="txbText" runat="server" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="txbClerkEmail" runat="server" Visible="False"></asp:TextBox>

                </div>

            </div>
       
</asp:Content>

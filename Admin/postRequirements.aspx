<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="postRequirements.aspx.cs" Inherits="Admin_AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <br />
    
   
        <table>
            <tr>
                <th>
         <asp:Label runat="server"> Patient Requirement</asp:Label>
                </th>
            </tr>
            <tr><td><hr /></td></tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bbmsConnectionString %>" SelectCommand="SELECT * FROM [admin_table]"></asp:SqlDataSource> 
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Patient Name" SortExpression="patient_name" />
                <asp:BoundField DataField="BloodGroup" HeaderText="Blood Group" SortExpression="blood_group" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="Hospital" HeaderText="Hospital Name" SortExpression="hospital_name" />
                <asp:BoundField DataField="Doctor" HeaderText="Doctor Name" SortExpression="doctor_name" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="date_time" />
                <asp:BoundField DataField="Address" HeaderText="Hospital Address" SortExpression="hospital_address" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="mobile" />
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
                </td>
            </tr>
            <tr>
                <td>

                     <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" />
                </td>
            </tr>
        </table>

</asp:Content>


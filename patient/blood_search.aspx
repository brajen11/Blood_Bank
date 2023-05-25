<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="blood_search.aspx.cs" Inherits="patient_blood_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table width="550px">
        <tr>
            <th colspan="5"> Blood Search </th>
        </tr>
        <tr>
            <td colspan="5"><hr /></td>
        </tr>
        <tr>
            <td>  City    </td>
            <td style="padding-left:50px;padding-right:20px"> 
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bbmsConnectionString %>" SelectCommand="SELECT DISTINCT [city] FROM [Donor_Details]"></asp:SqlDataSource>
    
                <asp:DropDownList ID="DropDownList1" Width="150px" runat="server" DataSourceID="SqlDataSource1" DataTextField="city" DataValueField="city">
               </asp:DropDownList></td>
            <td>     Blood Group     </td>
            <td style="padding-left:50px;padding-right:20px"> <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>A+</asp:ListItem>
            <asp:ListItem>A-</asp:ListItem>
            <asp:ListItem>B+</asp:ListItem>
            <asp:ListItem>B-</asp:ListItem>
            <asp:ListItem>O+</asp:ListItem>
            <asp:ListItem>O-</asp:ListItem>
        </asp:DropDownList></td>
            <td style="padding-left:20px;">  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" style="height: 26px" /></td>
        </tr>
        <tr></tr>
        <tr></tr>
        <tr></tr>
        <tr >

     <td colspan="5">
    
    <asp:GridView ID="GridView1" Width="550px" runat="server" ForeColor="#333333" AutoGenerateColumns="False" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
         <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="Name" SortExpression="donor" />
                <asp:BoundField DataField="Email" HeaderText="Email Address" SortExpression="email" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
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
    </table>

    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
     
    <br />
    <br />
    <br />
    <br />
    
    <div>
     <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" />
        </div>
</asp:Content>


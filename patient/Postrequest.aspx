<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Postrequest.aspx.cs" Inherits="patient_Postrequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        
        
       <asp:Table runat="server">
           <asp:TableHeaderRow > <asp:TableHeaderCell ColumnSpan="2" >  Post Requirement </asp:TableHeaderCell>  </asp:TableHeaderRow>
           <asp:TableRow> <asp:TableCell ColumnSpan="2"><hr /></asp:TableCell> </asp:TableRow>
           
           <asp:TableRow>
            <asp:TableCell> Patient Name:</asp:TableCell>
            <asp:TableCell> <asp:TextBox ID="name" runat="server" Height="21px" Width="148px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="*"></asp:RequiredFieldValidator>
          </asp:TableCell>

                </asp:TableRow>
           <asp:TableRow>
            <asp:TableCell>  Blood Group Required :</asp:TableCell>
             <asp:TableCell> 
                <asp:TextBox ID="blood_group" runat="server" Height="21px" Width="148px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="blood_group" ErrorMessage="*"></asp:RequiredFieldValidator>
                </asp:TableCell>      
    </asp:TableRow>

           <asp:TableRow>
            <asp:TableCell>  City:</asp:TableCell>
             <asp:TableCell> 
                 <asp:TextBox ID="city" runat="server" Height="21px" Width="148px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="city" ErrorMessage="*"></asp:RequiredFieldValidator>
                </asp:TableCell>      
    </asp:TableRow>

           <asp:TableRow>
            <asp:TableCell>   Hospital Name:</asp:TableCell>
             <asp:TableCell> 
                 <asp:TextBox ID="hospital" runat="server" Height="21px" Width="148px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="hospital" ErrorMessage="*"></asp:RequiredFieldValidator>
                </asp:TableCell>      
    </asp:TableRow>

           <asp:TableRow>
            <asp:TableCell>   Doctor Name:</asp:TableCell>
             <asp:TableCell> 
                   <asp:TextBox ID="doctor" runat="server" Height="21px" Width="148px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="doctor" ErrorMessage="*"></asp:RequiredFieldValidator>
                </asp:TableCell>      
    </asp:TableRow>

           <asp:TableRow>
            <asp:TableCell>   Date :</asp:TableCell>
             <asp:TableCell> 
               
                 <table>
                     <tr>
                         <td>   <asp:TextBox ID="date" runat="server" Height="21px" Width="148px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="date" ErrorMessage="*"></asp:RequiredFieldValidator>

                         </td>
                         <td>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="150px" NextPrevFormat="ShortMonth" OnSelectionChanged="Calendar1_SelectionChanged" Width="200px">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
            <DayStyle BackColor="#CCCCCC" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
            <TodayDayStyle BackColor="#999999" ForeColor="White" />
        </asp:Calendar>
                         </td>
                     </tr>
                 </table>      
            

                </asp:TableCell>      
    </asp:TableRow>

           <asp:TableRow>
               <asp:TableCell>
                   Address of Hospital :

               </asp:TableCell>
               <asp:TableCell>

                   &nbsp;<asp:TextBox ID="address" runat="server" Height="70px" Rows="5" TextMode="MultiLine" Width="239px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="address" ErrorMessage="*"></asp:RequiredFieldValidator>

               </asp:TableCell>
           </asp:TableRow>

            <asp:TableRow>
               <asp:TableCell>
                   Mobile:
               </asp:TableCell>
               <asp:TableCell>
                    <asp:TextBox ID="mobile" runat="server" Height="21px" Width="148px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="mobile" ErrorMessage="*"></asp:RequiredFieldValidator>

               </asp:TableCell>
           </asp:TableRow>

            <asp:TableRow>
               <asp:TableCell>
                    <asp:Label ID="Label1" runat="server" Text="Please fill all the * "></asp:Label>

               </asp:TableCell>    
    <asp:TableCell>
         <asp:Label ID="Label2" runat="server"></asp:Label>
    </asp:TableCell>
           </asp:TableRow>
       
<asp:TableRow>
               <asp:TableCell>
                         <asp:Button ID="Button1" runat="server" Height="32px" OnClick="Button1_Click" Text="submit" Width="119px" />

               </asp:TableCell>  
    <asp:TableCell>
         <asp:Button ID="btnBack" runat="server" Height="32px" Width="119px" OnClick="btnBack_Click" Text="Back" />
    </asp:TableCell>
           </asp:TableRow>
       </asp:Table>

</div>
 
  
</asp:Content>


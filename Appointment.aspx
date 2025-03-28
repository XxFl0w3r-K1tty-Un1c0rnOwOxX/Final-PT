<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="WebApplication1.Appointment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="header">
        <img src="Images/header2.png" />
				
			</div>
    <div>
    
 
        <asp:Panel ID="one" runat="server">


            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="Appointment Code" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Appointment Code" HeaderText="Appointment Code" 
                        ReadOnly="True" SortExpression="Appointment Code" InsertVisible="False" />
                    <asp:BoundField DataField="Student Lastname" HeaderText="Student Lastname" 
                        SortExpression="Student Lastname" />
                    <asp:BoundField DataField="Student Firstname" HeaderText="Student Firstname" 
                        SortExpression="Student Firstname" />
                    <asp:BoundField DataField="Student Middlename" HeaderText="Student Middlename" 
                        SortExpression="Student Middlename" />
                    <asp:BoundField DataField="Name of Parent or Guardian" 
                        HeaderText="Name of Parent or Guardian" 
                        SortExpression="Name of Parent or Guardian" />
                    <asp:BoundField DataField="Class Adviser" HeaderText="Class Adviser" 
                        SortExpression="Class Adviser" />
                    <asp:BoundField DataField="Date of Appointment" 
                        HeaderText="Date of Appointment" SortExpression="Date of Appointment" />
                    <asp:BoundField DataField="Schedule" HeaderText="Schedule" 
                        SortExpression="Schedule" />
                    <asp:BoundField DataField="Purpose of Appointment" 
                        HeaderText="Purpose of Appointment" SortExpression="Purpose of Appointment" />
                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" 
                        SortExpression="Remarks" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Appointment]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Appointment]"></asp:SqlDataSource>
        </asp:Panel>

        <asp:Panel ID="Panel2" runat="server">

         <table>
        
          <tr> <td class="style1"> Last Name: </td>
         <td> 
             <asp:TextBox ID="txtLname" runat="server"></asp:TextBox></td></tr>
             <tr> <td class="style1"> First Name: </td>
             <td>
                 <asp:TextBox ID="txtFname" runat="server"></asp:TextBox> </td></tr>
                 <tr> <td class="style1"> Middle Name: </td>
                 <td>
                     <asp:TextBox ID="txtMname" runat="server"></asp:TextBox> </td> </tr>
                     <tr> <td class="style1"> Name of the Parent or Guardian: </td><td> 
                         <asp:TextBox ID="txtParent" runat="server"></asp:TextBox></td></tr>
                         <tr> <td class="style1"> Class Adviser</td> <td>
                             <asp:TextBox ID="txtAdviser" runat="server"></asp:TextBox> </td></tr>
                             <tr> <td class="style1"> Date of Appointment: </td><td>
                                 <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                               </td></tr>
                                 <tr> <td class="style1"> Schedule: </td>
                                 <td>  
                                     <asp:RadioButtonList ID="rbtSchedule" runat="server">
                                         <asp:ListItem>Morning</asp:ListItem>
                                         <asp:ListItem>Afternoon</asp:ListItem>
                                     </asp:RadioButtonList> </td></tr>
                                 <tr> <td class="style1"> Purpose of Appointment: </td> <td>
                                     <asp:TextBox ID="txtPurpose" runat="server"></asp:TextBox> </td></tr>
                                     <tr> <td> 
                                         <asp:Button ID="btnAppoint" runat="server" Text="Appoint" Height="54px" 
                                             onclick="btnAppoint_Click" Width="161px" /></td></tr>
            
            </table>
                                     
        </asp:Panel>
         
      
    </div>
    </form>
</body>
</html>

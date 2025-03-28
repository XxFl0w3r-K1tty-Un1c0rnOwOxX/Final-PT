<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="WebApplication1.Delete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="C:/Creative Technology 8/PT 2/appointment.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="one" runat="server">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="Appointment Code" DataSourceID="SqlDataSource1" 
                Height="128px" Width="625px">
                <Columns>
                    <asp:BoundField DataField="Appointment Code" HeaderText="Appointment Code" 
                        InsertVisible="False" ReadOnly="True" SortExpression="Appointment Code" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Appointment]"></asp:SqlDataSource>
        </asp:Panel>
        <br />
         <br />
          <br />
        <asp:Panel ID="Panel2" runat="server">
        <table> <tr> <td> Appointment Code: </td>
        <td>
            <asp:DropDownList ID="drpCode" runat="server" DataSourceID="SqlDataSource2" 
                DataTextField="Appointment_Code" DataValueField="Appointment_Code">
            </asp:DropDownList> 
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [Appointment Code] AS Appointment_Code FROM [Appointment]">
            </asp:SqlDataSource>
            </td></tr>
            <tr> <td>
                <asp:Button ID="btnDelete" runat="server" Text="Delete" 
                    onclick="btnDelete_Click" /> </td></tr></table>
        </asp:Panel>
        
    </div>
    </form>
</body>
</html>

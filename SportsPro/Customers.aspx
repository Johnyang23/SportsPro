<%@ Page Title="Sports Pro | Customers" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"  CodeFile="Customers.aspx.cs" Inherits="Customers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Customers - Search and view your customer contact information</h2>

    <div><table style="width: 554px; height: 283px;">
        <tr>
        <td class="auto-style3">
            <asp:Label ID="Label1" runat="server" Text="Select a customer:  " Width="156px"></asp:Label>
        </td>
        <td class="auto-style1"></td><td class="style1"></td>
        <td class="style1">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CustomerID" Width="146px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
        </td>        
        </tr>
        <tr>
        <td class="auto-style4">
            <asp:Label ID="Label2" runat="server" Text="Address:  "></asp:Label>
            </td>
            <td class="auto-style2">
            </td>
            <td></td>
            <td>
                <asp:Label ID="lbladdress" runat="server" Text=""></asp:Label>
            </td>
        
        </tr>
        <tr>
        <td class="auto-style4">
        </td>
        <td class="auto-style2">
        </td>
        <td>
        </td>
        <td>
            <asp:Label ID="lblcity" runat="server" Text=""></asp:Label>
        </td>
        </tr>
        <tr>
        <td class="auto-style4">
            <asp:Label ID="Label5" runat="server" Text="Phone: "></asp:Label>
        </td>
        <td class="auto-style2">
        </td>
        <td></td>
        <td>
            <asp:Label ID="lblphone" runat="server" Text=""></asp:Label>
        </td>
        </tr>
        <tr>
        <td class="auto-style4">
            <asp:Label ID="Label7" runat="server" Text="Email: "></asp:Label>
        </td>
        <td class="auto-style2">
        </td><td></td>
        <td>
            <asp:Label ID="lblemail" runat="server" Text=""></asp:Label>
        </td>
        </tr>
        <tr><td class="auto-style4"></td>
        </tr>
        <tr><td class="auto-style4">
         <asp:Button ID="Button1" runat="server" Text="Add to Contact List" 
        Width="191px" Font-Bold="True" onclick="Button1_Click" />
        </td>
        <td class="auto-style2"></td><td></td>
        <td>
            <asp:Button ID="Button2" runat="server" Text="Display Contact List" 
                Font-Bold="True" PostBackUrl="~/Contactlist.aspx" 
                onclick="Button2_Click" />
        </td>
        </tr>
        <tr><td class="auto-style4">
            <asp:Label ID="Label9" runat="server" 
                Text="This Customer is already in Contact List. Please Select another Customer. " 
                Font-Bold="True" ForeColor="Red"></asp:Label>
        
        </td>
        
        </tr>
        
        </table>
        </div>

</asp:Content>
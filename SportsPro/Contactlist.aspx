<%@ Page Title="Sports Pro | Contact List" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Contactlist.aspx.cs" Inherits="Contactlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Contact List - Manage your contact list</h2>

    <div>
            <table>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label3" runat="server" Text="Contact List:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td rowspan="2" class="auto-style4">
                        
                        <asp:ListBox ID="listContacts" runat="server" Width="484px" Height="150px"></asp:ListBox>
                        
                    </td>
                    <td class="auto-style3">

                        &nbsp;</td>
                    <td class="auto-style2">

                        <asp:Button ID="btnRemoveContact" runat="server" Text="Remove Contact" OnClick="btnRemoveContact_Click" Width="140px" />

                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">

                        &nbsp;</td>
                    <td class="auto-style2">

                        <asp:Button ID="btnEmptyList" runat="server" Text="Empty List" OnClick="btnEmptyList_Click" TabIndex="2" Width="140px"/>

                    &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">

                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">

                        <asp:Button ID="btnReturn" runat="server" Text="Select Additional Customers" OnClick="btnReturn_Click"/>

                    </td>
                </tr>
            </table>
        </div>

</asp:Content>

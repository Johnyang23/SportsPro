<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductsAdmin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
            width: 122px;
        }
        .auto-style3 {
            width: 486px;
        }
        .auto-style4 {
            height: 26px;
            width: 486px;
        }
        .auto-style5 {
            width: 122px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductCode] = @original_ProductCode AND [Name] = @original_Name AND [Version] = @original_Version AND [ReleaseDate] = @original_ReleaseDate" InsertCommand="INSERT INTO [Products] ([ProductCode], [Name], [Version], [ReleaseDate]) VALUES (@ProductCode, @Name, @Version, @ReleaseDate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Version] = @Version, [ReleaseDate] = @ReleaseDate WHERE [ProductCode] = @original_ProductCode AND [Name] = @original_Name AND [Version] = @original_Version AND [ReleaseDate] = @original_ReleaseDate">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductCode" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Version" Type="Decimal" />
            <asp:Parameter Name="original_ReleaseDate" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductCode" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Version" Type="Decimal" />
            <asp:Parameter Name="ReleaseDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Version" Type="Decimal" />
            <asp:Parameter Name="ReleaseDate" Type="DateTime" />
            <asp:Parameter Name="original_ProductCode" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Version" Type="Decimal" />
            <asp:Parameter Name="original_ReleaseDate" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>
     <asp:Label ID="lblGridViewError" runat="server"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProductCode" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowEditing="GridView1_RowEditing" OnRowUpdated="GridView1_RowEdited">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" ReadOnly="True" SortExpression="ProductCode" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Version" HeaderText="Version" SortExpression="Version" />
            <asp:BoundField DataField="ReleaseDate" HeaderText="ReleaseDate" SortExpression="ReleaseDate" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" CausesValidation="False" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>

    <table class="auto-style1">
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" Text="Product Code:"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtProdCode" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="The product code is required" ControlToValidate="txtProdCode" Display="Dynamic" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Product name is required" ControlToValidate="txtName" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label3" runat="server" Text="Version:"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtVersion" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Version is required" ControlToValidate="txtVersion" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Version must be a decimal" Operator="GreaterThanEqual" Type="Double" ControlToValidate="txtVersion" ValueToCompare="0"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="Release Date:"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtRelease" runat="server"></asp:TextBox>
                 <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Release date must be in a date format" ControlToValidate="txtRelease" Display="Dynamic" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Release Date is required" Display="Dynamic" ControlToValidate="txtRelease"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />

</asp:Content>


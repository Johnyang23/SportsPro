<%@ Page Title="Sports Pro" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceholderID="head" runat="server">



</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>SportsPro-Sports management software for the sports enthusiast</h1>
    <h2>Welcome to SportsPro Support Portal</h2>

    <p>
        <asp:Label ID="Label1" runat="server" Text="1. Getting Started"></asp:Label>
        
    
    </p>
    <p>
                     <asp:Label ID="Label2" runat="server" Text="Go to"></asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/Customers.aspx">Customers</asp:HyperLink>
&nbsp;
                     <asp:Label ID="Label3" runat="server" Text="section to search for your customer information."></asp:Label>
                     

                 </p>
                 <p>
                     <asp:Label ID="Label4" runat="server" Text="2. What do you think about our service?"></asp:Label>
                     

                 </p>
                 <p>
                     <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" NavigateUrl="~/Surveys.aspx">Submit a survey</asp:HyperLink>
&nbsp;<asp:Label ID="Label5" runat="server" Text="to provide your feedback for any support we have provided to you recently."></asp:Label>
                     

                 </p>
                 <p>
                     <asp:Label ID="Label6" runat="server" Text="Group Members:"></asp:Label>
                     

                 </p>
                 <p>
                     <asp:Label ID="Label7" runat="server" Text="John Yang 100941170, Thomas Ian Del Rosario 101017215, Alvin Santiago 101011029"></asp:Label>
                     

                 </p>

</asp:Content>
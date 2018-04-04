<%@ Page Title="Sports Pro | Survey Complete" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="SurveysComplete.aspx.cs" Inherits="SurveysCompleteaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2> Surveys Complete</h2>
    <p> Thank you for your feedback!</p>

    <p> 
        <asp:Label ID="lblcustomercontact" runat="server" Text="A customer service representative will contact you within 24 hours"></asp:Label>
        </p>
    <p> 
        &nbsp;</p>

        <asp:Button ID="btnReturn" runat="server" Text="Return to Survey" OnClick="Button1_Click" />
        <p>
            <br />
        </p>

</asp:Content>

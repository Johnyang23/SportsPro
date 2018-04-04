<%@ Page Title="Sports Pro | Surveys" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Surveys.aspx.cs" Inherits="Surveysaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   

    <h2> Surveys- Collect feedback from customers</h2>

    <p> 
        <!-- The textbox txtcustid has the onkeydown property where it will restrict the user to only entering numerical values. Spaces and non numerical values are not allowed to be written inside.
            A required field validator ensures that a customer will enter a value into the textbox. The button Get incidents will receive the value and perform the method assigned to it
          -->
        <asp:Label ID="Label1" runat="server" Text="Enter your customer id"></asp:Label>
        <asp:TextBox ID="txtcustid" runat="server" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);"></asp:TextBox>
        <asp:Button ID="btnIncidents" runat="server" Text="Get Incidents" OnClick="Button3_Click"  ValidationGroup="Validate"/>
        <asp:RequiredFieldValidator ID="reqCustomerId" runat="server" ControlToValidate="txtcustid" Display="Dynamic" ErrorMessage="Please enter a customer id" ValidationGroup="Validate"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="cmpCustomerId" runat="server" ControlToValidate="txtcustid"  Operator="DataTypeCheck" ErrorMessage="Customer Id only consists of numbers!"  Display="Dynamic" Type="Integer"></asp:CompareValidator>
        <br />
        <!-- This label's visibility is determined if the customer has any incidents related to them-->
        <asp:Label ID="lblNoIncidents" runat="server"></asp:Label>
          </p>
        
    <div>
    
    </div>
         <p>
        <asp:ListBox ID="lstIncident" runat="server" Width="442px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="CustomerID" DataValueField="CustomerID">
        </asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Incidents]"></asp:SqlDataSource>
      
        <asp:RequiredFieldValidator ID="reqIncidents" runat="server" ErrorMessage="Please write the incidents that you have encountered" ControlToValidate="lstIncident" Display="Dynamic" ValidationGroup="Validate" Enabled="False"></asp:RequiredFieldValidator>

        <br />
        <asp:Label ID="Label2" runat="server" Text="Please rate this incident by the following categories"></asp:Label>

     
        
        &nbsp; &nbsp;
   
     <br />
     <!--
         Three radio button groups have been provided to the customer to allow them to rate their experience with the service.
         Each column is assigned a value ranging between 1 to 4 with 1 corresponding to low satisfcation and 4 meaning that the customer was very satisfied 

         -->

   <asp:Label ID="lblResponse" runat="server" cssclass="labelText" Text="Response time:"></asp:Label>  <br />
     

             <asp:RadioButtonList ID="rdbtnlstResponse" runat="server" RepeatDirection="Horizontal" >
            <asp:ListItem Value="1">Not satisfied</asp:ListItem>
            <asp:ListItem Value="2">Somewhat satisfied</asp:ListItem>
            <asp:ListItem Value="3">Satisfied</asp:ListItem>
            <asp:ListItem Value="4">Completely Satisfied</asp:ListItem>
        </asp:RadioButtonList>
             <asp:RequiredFieldValidator ID="reqResponse" runat="server" ErrorMessage="Please select a rating for the Response Time" ControlToValidate="rdbtnlstResponse" Display="Dynamic"></asp:RequiredFieldValidator>
         <br />
      
             <asp:Label ID="lblTechnician" runat="server" cssclass="labelText"  Text="Technician efficiency:" ></asp:Label>
             
       
        
      
        &nbsp;&nbsp;&nbsp;<asp:RadioButtonList ID="rdnbtnlstTechnician" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="1">Not Satisfied</asp:ListItem>
                <asp:ListItem Value="2">Somewhat satisfied</asp:ListItem>
                <asp:ListItem Value="3">Satisfied</asp:ListItem>
                <asp:ListItem Value="4">Completely Satisfied</asp:ListItem>
            </asp:RadioButtonList>
             <br /> 
             <asp:RequiredFieldValidator ID="reqTechnician" runat="server" ErrorMessage="Please select a rating for the Technician Efficiency" ControlToValidate="rdnbtnlstTechnician" Display="Dynamic"></asp:RequiredFieldValidator>
        <br />
             <asp:Label ID="lblProblem" runat="server" cssclass="labelText" Text="Problem resolution:"></asp:Label> <br />
        
        
            &nbsp;<asp:RadioButtonList ID="rdbtnlstProblem" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="1">Not Satisfied</asp:ListItem>
                <asp:ListItem Value="2">Somewhat Satisfied</asp:ListItem>
                <asp:ListItem Value="3">Satisfied</asp:ListItem>
                <asp:ListItem Value="4">Completely Satisfied</asp:ListItem>
            </asp:RadioButtonList>
             <asp:RequiredFieldValidator ID="reqProblem" runat="server" ErrorMessage="Please select a rating for the Problem Resolution" ControlToValidate="rdbtnlstProblem" Display="Dynamic"></asp:RequiredFieldValidator>
            
        <br />
             <!--
                 Before the customer submits their survey, they get to chose if and how they want to be contacted 

                 -->
         &nbsp;<asp:Label ID="Label6" runat="server" cssclass="labelText" Text="Addtional comments"></asp:Label>
            &nbsp;<asp:TextBox ID="txtComments" runat="server" Height="60px" Width="432px"></asp:TextBox>
        <br />
        <asp:CheckBox ID="chkbxContact" runat="server" cssclass="labelText" Text="Please contact me to discuss this incident" />
        <br />
        <asp:RadioButton ID="rdbtnEmail" runat="server" cssclass="labelText" Text="Contact by email" />
        <asp:RadioButton ID="rdbtnPhone" runat="server" cssclass="labelText" Text="Contact by phone" />
              </p>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="Button2_Click" />

</asp:Content>


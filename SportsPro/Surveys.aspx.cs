using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Surveysaspx : System.Web.UI.Page
{
    //Unobtrusive validation is disabled as jQuery wasnt used to validate user input
    protected void Page_Load(object sender, EventArgs e)
    {
        SetFocus(txtcustid);
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;



    }
    /*The get incidents button was programmed to call the FindSelectedCustomers method after customer id has been validated
     * If the entered customer id has incidents related to them, the pagenable function is called and the listbox is populated with the incidents corresponding to them
     * A message is displayed for customers without incidents
     * 
     */

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            int customerID = int.Parse(txtcustid.Text);
            lstIncident.Items.Clear();
            this.FindSelectedCustomers();
            if (lstIncident.Items.Count > 1)
            {
                this.PageEnable();
                lstIncident.SelectedIndex = 1;



            }
            else
            {
                lblNoIncidents.Text = ("No Incidents for this customer");
            }




        }


    }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    private void PageEnable()
    {
        if (Page.IsValid)
        {
            Label1.Enabled = true;
            Label2.Enabled = true;
            lblTechnician.Enabled = true;
            lblProblem.Enabled = true;
            Label6.Enabled = true;
            lblResponse.Enabled = true;
            lstIncident.Enabled = true;
            rdbtnlstResponse.Enabled = true;
            rdnbtnlstTechnician.Enabled = true;
            rdbtnlstProblem.Enabled = true;
            chkbxContact.Enabled = true;
            btnSubmit.Enabled = true;
            txtComments.Enabled = true;



        }
        else
        {
            lstIncident.Items.Clear();
            lblNoIncidents.Text = ("No Incidents for this customer");


        }

    }
    /*The FindSelectedCustomers method is responsible for iterating through the incident table
     * An instance of the incident class is created to hold the different attributes of the customer incidents
      * a foreach is utilized to traverse through the incident table
      * The customerincidentdisplay from the incident class displays the result
      */
    private void FindSelectedCustomers()
    {

        DataView IncidentTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        IncidentTable.RowFilter = "DateClosed is not null and customerID='" + int.Parse(txtcustid.Text) + "' ";
        Incident incident = new Incident();
        int rowIndex = 0;
        lstIncident.Items.Add(new ListItem("--Select and Incident--", null));
        foreach (DataRowView incidentRows in IncidentTable)
        {
            DataRowView incidentRow = IncidentTable[0];
            incident.customerID = (int)incidentRows["CustomerID"];
            incident.incidentId = (int)incidentRows["IncidentID"];
            incident.productCode = incidentRows["ProductCode"].ToString();
            incident.techID = (int)incidentRows["TechId"];
            incident.title = (string)incidentRows["Title"];
            incident.dateOpened = (DateTime)incidentRows["DateOpened"];
            incident.dateClosed = (DateTime)incidentRows["DateClosed"];
            rowIndex = rowIndex + 1;


            lstIncident.Items.Add(incident.CustomerIncidentDisplay());



        }




    }
    /* The submit button creates an instance of the survey class to hold the values submitted from the form
     * The boolean variable contactMethod checks to see if the customer requested to be contacted about their incident
      * Along with the values obtained, the control of the application is transfered to the SurveysComplete.aspx
      * 
      */

    protected void Button2_Click(object sender, EventArgs e)
    {
        Survey survey = new Survey();
        survey.customerId = int.Parse(txtcustid.Text.ToString());
        survey.incidentId = lstIncident.SelectedIndex;
        survey.responseTime = int.Parse(rdbtnlstResponse.SelectedValue);
        survey.techEfficiency = int.Parse(rdnbtnlstTechnician.SelectedValue);
        survey.problemResolution = int.Parse(rdbtnlstProblem.SelectedValue);
        survey.comments = txtComments.Text;
        bool contactMethod;
      
        if (chkbxContact.Checked)
        {
            contactMethod = true;

        }
        else
        {
            contactMethod = false;

        }
        Session.Add("SessioncontactMethod", contactMethod);
        Response.Redirect("SurveysComplete.aspx");



    }
    
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
     
    protected void btnDefault_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void btnCustomer_Click(object sender, EventArgs e)
    {
        Response.Redirect("Customers.aspx");
    }
}
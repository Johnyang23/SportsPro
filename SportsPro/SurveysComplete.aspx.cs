using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SurveysCompleteaspx : System.Web.UI.Page
{
    /*When the page loads the sessioncontactmethod is checked to see if the customer has requested attention from a customer service representative
     * This determines if the label will post the message on the page.
    * 
     * 
     */
    protected void Page_Load(object sender, EventArgs e)
    {
    
        if ((bool)(Session["SessioncontactMethod"]))
        {
            lblcustomercontact.Visible = true;

        }
        else
        {
            lblcustomercontact.Visible = false;

        }


    }
    /*Returns the control of the application to the Surveys.apsx page and allows the customer to partake in another survey
    * 
     * 
     * 
     */
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Surveys.aspx");

    }
}
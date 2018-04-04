using System;
using System.Data;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Customers : System.Web.UI.Page
{
    private Customer selectedCustomer;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.DataBind();
            Label9.Visible = false;

        }
        selectedCustomer = this.GetSelectedCustomer();
        lbladdress.Text = "<br />" + selectedCustomer.Address;
        lblcity.Text = selectedCustomer.City + ",  " + selectedCustomer.State + ", " + selectedCustomer.ZipCode;
        lblphone.Text = selectedCustomer.Phone;
        lblemail.Text = selectedCustomer.Email;

    }

    private Customer GetSelectedCustomer()
    {

        DataView CustomerTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        CustomerTable.RowFilter = "CustomerID ='" + DropDownList1.SelectedValue + "'";
        DataRowView customerRow = CustomerTable[0];
        Customer Customer = new Customer();
        Customer.CustomerID = customerRow["CustomerID"].ToString();
        Customer.Name = customerRow["Name"].ToString();
        Customer.Address = customerRow["Address"].ToString();
        Customer.City = customerRow["City"].ToString();
        Customer.State = customerRow["State"].ToString();
        Customer.ZipCode = customerRow["ZipCode"].ToString();
        Customer.Phone = customerRow["Phone"].ToString();
        Customer.Email = customerRow["Email"].ToString();
        return Customer;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        CustomerList list = CustomerList.getCustomers();

        if (list != null) {
            // Check if the customer already exists in list
            if (list[selectedCustomer.Name] == null)
            {

                list.addItem(selectedCustomer);
                Response.Redirect("Contactlist.aspx");

            }
            else {

                Label9.Visible = true;
            
            }
        
        }
        
    }
    private SortedList GetCustomer()
    {
        if (Session["ContactDisplay"] == null)
        {
            Session.Add("ContactDisplay", new SortedList());
        }
        return (SortedList)Session["Contactdisplay"];
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Contactlist.aspx");
    }
    protected void btnDefault_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void btnSurvey_Click(object sender, EventArgs e)
    {
        Response.Redirect("Surveys.aspx");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contactlist : System.Web.UI.Page
{
    CustomerList contacts;

    protected void Page_Load(object sender, EventArgs e)
    {
        contacts = CustomerList.getCustomers();
        if (!IsPostBack) {

            this.displayContacts();
        
        }
    }

    private void displayContacts() {
        // Reset listContacts first
        listContacts.Items.Clear();

        for (int i = 0; i < contacts.Count(); i++ ) {

            listContacts.Items.Add(contacts[i].Name + ": " + contacts[i].Phone + "; " + contacts[i].Email);
        }
        
    
    }

    protected void btnReturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Customers.aspx");
    }
    protected void btnRemoveContact_Click(object sender, EventArgs e)
    {
        contacts.removeAt(listContacts.SelectedIndex);
        Response.Redirect("Contactlist.aspx");
    }
    protected void btnEmptyList_Click(object sender, EventArgs e)
    {
        contacts.clear();
        Response.Redirect("Contactlist.aspx");
    }
}
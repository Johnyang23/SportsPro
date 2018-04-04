using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["ProductCode"].DefaultValue = txtProdCode.Text;
        SqlDataSource1.InsertParameters["Name"].DefaultValue = txtName.Text;
        SqlDataSource1.InsertParameters["Version"].DefaultValue = txtVersion.Text;
        SqlDataSource1.InsertParameters["ReleaseDate"].DefaultValue = txtRelease.Text;

        try
        {
            SqlDataSource1.Insert();
            txtProdCode.Text = txtName.Text = txtVersion.Text = txtRelease.Text = "";
        }
        catch (Exception except)
        {
            lblError.Text = "Please check your data and rety.";
        }
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void GridView1_RowEdited(object sender, GridViewUpdatedEventArgs e)
    {

        if (e.Exception != null)
        {

            lblError.Text = "Error updating database. Please try again. " + "Error: " + e.Exception.Message;
            e.ExceptionHandled = true;


        }
        else if (e.AffectedRows == 0)
        {

            lblError.Text = "Entry not updated, please try again later.";

        }
        else
        {

            GridView1.DataBind();
        }
    }
}
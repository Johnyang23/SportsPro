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
        GridView1.DataBind();
        DetailsView1.DataBind();
    }

    protected void updateValidation(object sender, DetailsViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {

            lblError.Text = "Error updating database. Please try again." + "Error: " + e.Exception.Message;
            e.ExceptionHandled = true;
            e.KeepInEditMode = true;

        }
        else if (e.AffectedRows == 0)
        {

            lblError.Text = "Entry not updated, please try again later.";

        }
        else
        {

            GridView1.DataBind();
            DetailsView1.DataBind();

        }
    }
    protected void deleteValidation(object sender, DetailsViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {

            lblError.Text = "Error updating database. Please try again." + "Error: " + e.Exception.Message;
            e.ExceptionHandled = true;


        }
        else if (e.AffectedRows == 0)
        {

            lblError.Text = "Entry not updated, please try again later.";

        }
        else
        {

            GridView1.DataBind();
            DetailsView1.DataBind();

        }
    }
    protected void insertValidation(object sender, DetailsViewInsertedEventArgs e)
    {

        if (e.Exception != null)
        {

            lblError.Text = "Error updating database. Please try again. " + "Error: " + e.Exception.Message;
            e.ExceptionHandled = true;
            e.KeepInInsertMode = true;

        }
        else if (e.AffectedRows == 0)
        {

            lblError.Text = "Entry not updated, please try again later.";

        }
        else
        {

            GridView1.DataBind();
            DetailsView1.DataBind();
        }

    }

    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
}

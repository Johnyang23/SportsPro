using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Customer
    {

        //
        // TODO: Add constructor logic here
        //
        public String CustomerID;
        public String Name;
        public String Address;
        public String City;
        public String State;
        public String ZipCode;
        public String Phone;
        public String Email;

        public String DisplayContact()
        {
            //return Name + ": " + Phone + ", " + Email;
            Customer Selectedcustomer;
            Selectedcustomer = (Customer)System.Web.HttpContext.Current.Session["SessionCustomer"];
            return Selectedcustomer.Name + ": " + Selectedcustomer.Phone + ", " + Selectedcustomer.Email;
        }

        internal object getCustomerId()
        {
            throw new NotImplementedException();
        }

        public System.Web.UI.WebControls.ListItem toString()
        {
            throw new NotImplementedException();
        }
    }



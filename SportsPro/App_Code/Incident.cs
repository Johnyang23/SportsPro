using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Incident
{
		public int incidentId;
        public int customerID;
        public string productCode;
        public int techID;
        public DateTime dateOpened;
        public DateTime dateClosed;
        public string title;
        public string description;

    public string CustomerIncidentDisplay()
    {
        return "The incident For " + productCode + " Closed " + dateClosed + "(" + title + ")";
    }
}
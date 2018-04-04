using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Survey
/// </summary>
public class Survey
{
    public int customerId;
    public int incidentId;
    public int responseTime;
    public int techEfficiency;
    public int problemResolution;
    public string comments;
    public bool contact;
    public string contactBy;

	public Survey()
	{
		
	}
    /*
    public int CustomerID
    {
        get
        {
            return this.customerId;
        }
        set
        {
            this.customerId = value;

        }


    }
    public int IndcidentID
    {
        get
        {
            return this.incidentId;
        }
        set
        {
            this.incidentId = value;
        }


    }
    public int ReponseTime
    {
        get
        {
            return this.responseTime;
        }
        set
        {
            this.responseTime = value;
        }



    }
    public int TechEfficiency
    {
        get
        {
            return this.techEfficiency;
        }
        set
        {
            this.techEfficiency = value;
        }
    }
    public int Resolution
    {
        get
        {
            return this.problemResolution;
        }
        set
        {
            this.problemResolution = value;

        }


    }
    public string Comments
    {
        get
        {
            return this.comments;

        }
        set
        {
            this.comments = value;
        }

    }

    public string ContactBy
    {
        get
        {
            return this.contactBy;

        }
        set
        {
            this.contactBy = value;
        }

    }


    */
}
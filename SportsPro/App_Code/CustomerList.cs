using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>

/// </summary>
public class CustomerList
{

    private List<Customer> list;

    public Customer this[string name] {

        get {

            foreach (Customer cust in list)
            {
                if (cust.Name == name)
                {

                    return cust;

                }
            } return null;

        
        }
    
    }

    public Customer this[int index] {

        get { return list.ElementAt(index); }
    
    }

	public CustomerList()
	{
        list = new List<Customer>();
	}

    public int Count()
    {
        return list.Count;
    }

    public static CustomerList getCustomers() {

        CustomerList customers = (CustomerList)HttpContext.Current.Session["Customers"];
        if (customers == null) {

            HttpContext.Current.Session["Customers"] = new CustomerList();

        } return (CustomerList)HttpContext.Current.Session["Customers"];
    
    }

    public void addItem(Customer customer) {

        list.Add(customer);
    
    }

    public void removeAt(int index) {

        list.RemoveAt(index);
    
    }

    public void clear() {

        list.Clear();
    
    }

}
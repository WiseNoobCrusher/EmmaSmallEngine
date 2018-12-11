using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;


namespace EmmaSmallEngine
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                lblWelcome.Text = User.Identity.GetUserName();
            }

            this.ddlManagement.Items[0].Attributes.Add("style", "color:#009900");
            this.ddlManagement.Items[0].Attributes.Add("disabled", "disabled");
        }

        protected void btnSales_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Sales.aspx");
        }
        protected void btnInventory_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Inventory.aspx");
        }
        protected void btnOrdering_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Ordering.aspx");
        }
        protected void btnAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin.aspx");
        }

        protected void ddlManagement_SelectedIndexChanged(object sender, EventArgs e)
        {
            string temp = this.ddlManagement.SelectedValue;

            this.ddlManagement.Items[0].Attributes.Add("style", "color:#009900");
            this.ddlManagement.Items[0].Attributes.Add("disabled", "disabled");

            this.ddlManagement.Items[0].Selected = true;

            Response.Redirect("~/" + temp + ".aspx");
        }
    }
}
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
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Login.aspx");
            }

            this.ddlManagement.Items[0].Attributes.Add("style", "color:#009900");
            this.ddlManagement.Items[0].Attributes.Add("disabled", "disabled");
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
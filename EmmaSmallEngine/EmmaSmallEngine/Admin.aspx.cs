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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Login.aspx");
            }

            this.hi.Visible = false;
        }

        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            this.hi.Visible = true;
            this.hi.Text = "I am sorry Peter.";
        }
    }
}
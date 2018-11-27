using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace EmmaSmallEngine
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();
            UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);
            IdentityUser user = new IdentityUser(txtUser.Text);
            IdentityResult idResult = manager.Create(user, txtPass.Text);
            if (idResult.Succeeded)
            {
                lblMessage.Text = "User " + user.UserName + " was created successfully!";
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                authenticationManager.SignIn(userIdentity);
                Response.Redirect("~/Home.aspx");
            }
            else
                lblMessage.Text = idResult.Errors.FirstOrDefault();

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            this.txtConfirm.Text = "";
            this.txtPass.Text = "";
            this.txtUser.Text = "";

            Response.Redirect("~/Login.aspx");
        }
    }
}
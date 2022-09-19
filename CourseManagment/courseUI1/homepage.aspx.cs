using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace courseUI1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BUTLOGIN_Click(object sender, EventArgs e)
        {
            if(TXTADMIN.Text=="gantahemanth75@gmail.com" && TXTPWD.Text=="123456")
            {
                Session["Adminname"] = "WELCOME" + TXTADMIN.Text;
                Response.Redirect("Admin.aspx");

            }
            else
            {
                LABMSG.Text = "falied login details";
            }
        }
    }
}
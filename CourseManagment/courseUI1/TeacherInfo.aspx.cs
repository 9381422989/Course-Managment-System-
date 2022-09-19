using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace courseUI1
{
    public partial class CourseInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Lnkback3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace courseUI1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Adminname"]!=null)
            {
                LabUserLogin.Text= Session["Adminname"].ToString();

            }
            else
            {
                Response.Redirect("homepage.aspx");
            }
        }

        protected void LnkCourse_Click(object sender, EventArgs e)
        {
            Response.Redirect("course.aspx");
        }

        protected void LnkStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student_UI.aspx");
        }

        protected void LnkLogout_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("homepage.aspx");
        }

        protected void Lnkteacher_Click(object sender, EventArgs e)
        {
            Response.Redirect("teacher_UI.aspx");
        }

        protected void LnkAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}
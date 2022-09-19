using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using course.businesslayer;
using course.entites;

namespace courseUI1
{
    public partial class course : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {



                coursetable course = new coursetable();
                course.cid = int.Parse(TXTCID.Text);
                course.cname = TXTCNAME.Text;
                course.duration = TXTCDURATION.Text;
                course.cfees = int.Parse(TXTCFEES.Text);
                courseservice courseservice = new courseservice();
                courseservice.Addcourse(course);
                Label1.Text = "recorde added";
                TXTCID.Text = "";
                TXTCNAME.Text = "";
                TXTCFEES.Text = "";
                TXTCDURATION.Text = "";
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;

            }

        }
    }
}
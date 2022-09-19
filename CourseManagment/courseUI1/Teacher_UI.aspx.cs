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
    public partial class Teacher_UI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {



                teacher Teacher = new teacher();
                Teacher.tid = int.Parse(TXTID.Text);
                Teacher.tname = TXTNAME.Text;
                Teacher.temail = TXTEMAIL.Text;
                Teacher.tphone = TXTPHONE.Text;
                Teacher.tcourse = DropDownList1.Text;
                Teacher.tqualification = TXTQUALIFICATION.Text;


                teacherservice teacherservice = new teacherservice();
                teacherservice.Addteacher(Teacher);
                Label1.Text = "recorde added";
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;

            }

        }
    }
}
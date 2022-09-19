using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using course.businesslayer;
using course.entites;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace courseUI1
{
    public partial class Student_UI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {



                student Student = new student();
                Student.stid = int.Parse(TXTID.Text);
                Student.stfname =TXTFNAME.Text;
                Student.stlname = TXTLNAME.Text;
                Student.stfathername = TXTFANAME.Text;
                Student.stfatherphone = TXTFPHONE.Text;
                Student.stemail=TXTSEMAIL.Text;
                Student.stphone = TXTPHONE.Text;
                Student.coursejoin = DropDownList1.Text;
                Student.coursefees= int.Parse(Labcoursefees.Text);
                Student.fristinstallment= int.Parse(TXTFINS.Text);
                Student.feesdues = int.Parse(LaBFEESDUES.Text);
               
                studentservice studentservice = new studentservice();
                studentservice.Addstudent(Student);
                Label1.Text = "recorde added";
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;

            }





        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["course"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select * from [dbo].[coursetable] where cname=@cname";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@cname", DropDownList1.SelectedItem.Text);
            SqlDataReader sdr = sqlcomm.ExecuteReader();
            while (sdr.Read())
            {
                Labcoursefees.Text = sdr["cfees"].ToString();
            }
            sqlconn.Close();
        }

        protected void TXTFINS_TextChanged(object sender, EventArgs e)
        {
            int balance = Convert.ToInt32(Labcoursefees.Text) - Convert.ToInt32(TXTFINS.Text);
            LaBFEESDUES.Text = balance.ToString();
        }
    }
}

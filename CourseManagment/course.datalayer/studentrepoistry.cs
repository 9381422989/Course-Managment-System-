using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using course.entites;


namespace course.datalayer
{
    public  class studentrepoistry
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["course"].ConnectionString);
        SqlCommand command = null;
        SqlDataReader reader = null;
        DataSet dataSet = null;

        public void Addstudent(student  Student)
        {
            try
            {
                command = new SqlCommand($"insert into student values({Student.stid},'{Student.stfname}','{Student.stlname}','{Student.stfathername}','{Student.stfatherphone}','{Student.stemail}','{Student.stphone}','{Student.coursejoin}',{Student.coursefees},{Student.fristinstallment},{Student.feesdues})", connection);

                connection.Open();
                command.ExecuteReader();
            }
            catch (Exception)
            {
                throw;

            }
            finally
            {
                connection.Close();
            }



        }
        public void Deletestudent(int stid)
        {
            try
            {
                command = new SqlCommand($"Delete from student where stid={stid}", connection);
                connection.Open();
                command.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;

            }
            finally
            {
                connection.Close();
            }

        }
        public void updatestudent(int stid,string stfname,string stlname,string stfathername,string stfatherphone,string stemail, string stphone,string coursejoin,int coursefees,int fristinstallment,int feesdues)
        {
            try
            {
                command = new SqlCommand($"update student set stfname='{stfname}',stlname='{stlname}',stfathername='{stfathername}',stfatherphone='{stfatherphone}',stemail='{stemail}',stphone='{stphone}',coursejoin='{coursejoin}',coursefees={coursefees},fristinstallment={fristinstallment},feesdues={feesdues} where stid ={stid}", connection);
                connection.Open();
                command.ExecuteNonQuery();


            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                connection.Close();
            }
        }

        public student GetstudentById(int studentid)
        {
            student student = null;
            command = new SqlCommand($"select * from student where stid={studentid}", connection);
            connection.Open();
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                student = new student()
                {

                    stid = (int)dr[0],
                    stfname = dr[1].ToString(),
                    stlname = dr[2].ToString(),
                    stfathername = dr[3].ToString(),
                    stfatherphone = dr[4].ToString(),
                    stemail = dr[5].ToString(),
                    stphone = dr[6].ToString(),
                    coursejoin = dr[7].ToString(),
                    coursefees = (int)dr[8],
                    fristinstallment = (int)dr[9],
                    feesdues = (int)dr[10],
                };
            }
            return student;
        }
        public List<student> GetAllstudents()
        {
            List<student> students= new List<student>();
            command = new SqlCommand($"select * from student", connection);
            connection.Open();
            SqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                student student = new student();

                student.stid = (int)dr[0];
                student.stfname = dr[1].ToString();
                student.stlname = dr[2].ToString();
                student.stfathername = dr[3].ToString();
                student.stfatherphone = dr[4].ToString();
                student.stemail = dr[5].ToString();
                student.stphone = dr[6].ToString();
                student.coursejoin = dr[7].ToString();
                student.coursefees = (int)dr[8];
                student.fristinstallment = (int)dr[9];
                student.feesdues = (int)dr[10];
                
                students.Add(student);

            }
            return students;
        }















    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using course.entites;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace course.datalayer
{
    public class teacherrepoistry
    {

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["course"].ConnectionString);
        SqlCommand command = null;
        SqlDataReader reader = null;
        DataSet dataSet = null;

        public void Addteacher(teacher Teacher)
        {
            try
            {
                command = new SqlCommand($"insert into teacher values({Teacher.tid},'{Teacher.tname}','{Teacher.temail}','{Teacher.tphone}','{Teacher.tcourse}','{Teacher.tqualification}')", connection);

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
        public void Deleteteacher(int teacherid)
        {
            try
            {
                command = new SqlCommand($"Delete from teacher  where tid={teacherid}", connection);
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
        public void updateteacher(int tid,string tname,string temail,string tphone,string tcourse,string tqualification)
        {
            try
            {
                command = new SqlCommand($"update teacher set tname='{tname}',temail='{temail}',tphone='{tphone}',tcourse='{tcourse}',tqualification='{tqualification}' where tid={tid}", connection);
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

        public teacher GetteacherById(int teacherid)
        {
            teacher Teacher = null;
            command = new SqlCommand($"select * from teacher where tid={teacherid}", connection);
            connection.Open();
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Teacher = new teacher()
                {

                    tid = (int)dr[0],
                    tname = dr[1].ToString(),
                    temail = dr[2].ToString(),
                    tphone = dr[3].ToString(),
                   tcourse = dr[4].ToString(),
                    tqualification = dr[5].ToString(),
                   
                };
            }
            return Teacher;
        }
        public List<teacher> GetAllteachers()
        {
            List<teacher>teachers  = new List<teacher>();
            command = new SqlCommand($"select * from teacher", connection);
            connection.Open();
            SqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                teacher Teacher = new teacher();

                Teacher.tid = (int)dr[0];
                Teacher.tname = dr[1].ToString();
                Teacher.temail = dr[2].ToString();
                Teacher.tphone = dr[3].ToString();
                Teacher.tcourse = dr[4].ToString();
                Teacher.tqualification = dr[5].ToString();

                

                teachers.Add(Teacher);

            }
            return teachers;
        }















    }
}
    
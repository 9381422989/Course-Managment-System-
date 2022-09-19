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
    public class courserepoistry
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["course"].ConnectionString);
        SqlCommand command = null;
        SqlDataReader reader = null;
        DataSet dataSet = null;

        public void Addcourse(coursetable course)
        {
            try
            {
                command = new SqlCommand($"insert into coursetable values({course.cid},'{course.cname}','{course.duration}',{course.cfees})", connection);
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
        public void Deletecourse(int courseid)
        {
            try
            {
                command = new SqlCommand($"Delete from coursetable where cid={courseid}", connection);
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

        public void updatecourse(int cid,string cname,string duration,int cfees )
        {
            try
            {
                command = new SqlCommand($"update coursetable set cname='{cname}',duration='{duration}',cfees={cfees} where cid={cid}", connection);
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
        public coursetable GetcourseById(int courseid)
        {
            coursetable course = null;
            command = new SqlCommand($"select * from coursetable where cid={courseid}", connection);
            connection.Open();
            SqlDataReader dr = command.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                course = new coursetable()
                {
                    cid = (int)dr[0],
                    cname = dr["cname"].ToString(),
                    duration = dr["duration"].ToString(),
                    cfees = (int)dr["cfees"]

                };
                


            }
            return course;

        }


        public List<coursetable> GetAllcourses()
        {
            try
            {


                List<coursetable> courses = new List<coursetable>();
                command = new SqlCommand($"select * from coursetable", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    coursetable course = new coursetable();
                    course.cid = (int)dr[0];
                    course.cname = dr["cname"].ToString();
                    course.duration = dr["duration"].ToString();
                    course.cfees = (int)dr["cfees"];
                    courses.Add(course);

                }
                return courses;
            }
            catch(Exception)
            {
                throw;
            }

        }
    }
}

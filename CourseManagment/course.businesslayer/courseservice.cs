using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using course.entites;
using course.datalayer;


namespace course.businesslayer
{
    public class courseservice
    {
        courserepoistry repoistry;
        public courseservice()
        {
            repoistry = new courserepoistry();
        }
        public void Addcourse(coursetable course)
        {
            try
            {
                repoistry.Addcourse(course);
            }
            catch (Exception)
            {
                throw;
            }
        }
        public void Deletecourse(int cid)
        {
            try
            {
                repoistry.Deletecourse(cid);
            }
            catch (Exception)
            {
                throw;
            }
        }
        public void updatecourse(int cid,string cname,string duration,int cfees)
        {
            try
            {
                repoistry.updatecourse(cid,cname,duration,cfees);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public coursetable GetcourseById(int courseid)
        {
            try
            {
                return repoistry.GetcourseById(courseid);
            }
            catch (Exception)
            {
                throw;

            }
        }
        public List<coursetable> GetAllcourses()
        {
            try
            {
                return repoistry.GetAllcourses();   

            }
            catch(Exception)
            {
                throw;
            }
        }

    }

}

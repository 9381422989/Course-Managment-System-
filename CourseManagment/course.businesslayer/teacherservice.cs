using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using course.datalayer;
using System.Data;
using System.Configuration;
using course.entites;



namespace course.businesslayer
{
    public class teacherservice
    {
        teacherrepoistry repoistry;
        
        public teacherservice()
        {
            repoistry = new teacherrepoistry();

        }
        public void Addteacher(teacher Teacher)
        {
            try
            {
                repoistry.Addteacher(Teacher);
            }
            catch(Exception)
            {
                throw;

            }
        }

        public void Deleteteacher(int tid)
        {
            try
            {
                repoistry.Deleteteacher(tid);
            }
            catch (Exception)
            {
                throw;
            }
        }
        public void updateteacher(int tid, string tname, string temail, string tphone, string tcourse, string tqualification)
        {
            try
            {
                repoistry.updateteacher(tid,tname,temail,tphone,tcourse,tqualification);
            }
            catch (Exception)
            {
                throw;
            }
        }
        public teacher GetteacherById(int teacherid)
        {
            try
            {
                return repoistry.GetteacherById(teacherid);
            }
            catch (Exception)
            {
                throw;

            }
        }
        public List<teacher> Getteachers()
        {
            try
            {
                return repoistry.GetAllteachers();

            }
            catch (Exception)
            {
                throw;
            }
        }











    }
} 
       






  

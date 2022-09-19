using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using course.entites;
using course.datalayer;
using System.Data;
using System.Configuration;


namespace course.businesslayer
{
    public class studentservice
    {
        studentrepoistry repoistry;
        
        public studentservice()
        {
            repoistry = new studentrepoistry();

        }
        public void Addstudent(student Student)
        {
            try
            {
                repoistry.Addstudent(Student);
            }
            catch(Exception)
            {
                throw;

            }
        }

        public void Deletestudent(int stid)
        {
            try
            {
                repoistry.Deletestudent(stid);
            }
            catch (Exception)
            {
                throw;
            }
        }
        public void updatestudent(int stid, string stfname, string stlname, string stfathername, string stfatherphone, string stemail, string stphone, string coursejoin, int coursefees, int fristinstallment, int feesdues)
        {
            try
            {
                repoistry.updatestudent(stid,stfname,stlname,stfathername,stfatherphone,stemail,stphone,coursejoin,coursefees,fristinstallment,feesdues);
            }
            catch (Exception)
            {
                throw;
            }
        }
        public student GetstudentById(int studentid)
        {
            try
            {
                return repoistry.GetstudentById(studentid);
            }
            catch (Exception)
            {
                throw;

            }
        }
        public List<student> Getstudents()
        {
            try
            {
                return repoistry.GetAllstudents();

            }
            catch (Exception)
            {
                throw;
            }
        }











    }
} 
       

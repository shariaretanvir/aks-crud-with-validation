using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessObject;


namespace DataLogicLayer
{
    public class DataLayer
    {
        public void AddData(UserInformation bobject)
        {

            RegistrationEntities mypro1 = new RegistrationEntities();
            UserInformation uinfo = new UserInformation();
            uinfo.Name = bobject.Name;
            uinfo.Email= bobject.Email;
            uinfo.Age = bobject.Age;
            uinfo.Address = bobject.Address;
            uinfo.Gender = bobject.Gender;
            uinfo.Country = bobject.Country;
            uinfo.PhoneNumber = bobject.PhoneNumber;
            uinfo.DateOfBirth = bobject.DateOfBirth;
            uinfo.Salary = bobject.Salary;
            mypro1.UserInformations.Add(uinfo);
            mypro1.SaveChanges();
            

        }

        public List<UserInformation> ShowAllData(UserInformation bobject)
        {
            RegistrationEntities mypro1 = new RegistrationEntities();
            return mypro1.UserInformations.ToList();
        }
        public List<UserInformation> ShowEditedData(int id)
        {
            RegistrationEntities mypro1 = new RegistrationEntities();
            return mypro1.UserInformations.Where(x => x.Id == id).ToList();
        }

        public void SaveEditedData(UserInformation bobject)
        {
            RegistrationEntities mypro1 = new RegistrationEntities();
            var result = mypro1.UserInformations.SingleOrDefault(x => x.Id == bobject.Id);
            if (result != null)
            {

                result.Name = bobject.Name ;
                result.Email =bobject.Email ;
                result.Age = bobject.Age;
                result.Address = bobject.Address ;
                result.Gender = bobject.Gender ;
                result.Country = bobject.Country;
                result.PhoneNumber =bobject.PhoneNumber;
                result.DateOfBirth = bobject.DateOfBirth;
                result.Salary = bobject.Salary;
                mypro1.SaveChanges();

            }
        }

        public int DeleteById(int id)
        {
            RegistrationEntities mypro = new RegistrationEntities();
            UserInformation uinfo = new UserInformation();
            uinfo.Id = id;
            mypro.UserInformations.Attach(uinfo);
            mypro.UserInformations.Remove(uinfo);
            mypro.SaveChanges();
            return mypro.SaveChanges();
        }
    }
}

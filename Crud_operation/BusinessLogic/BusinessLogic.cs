using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessObject;
using DataLogicLayer;

namespace BusinessLogic
{
    public class BusinessLogic
    {
        public void AddInfo(UserInformation bobject)
        {
            DataLayer DDL = new DataLayer();
            DDL.AddData(bobject);
        }

        public List<UserInformation> ShowData(UserInformation bobject)
        {
            DataLayer DDL = new DataLayer();
            return DDL.ShowAllData(bobject);
        }

        public UserInformation ShowEditData(int id)
        {
            DataLayer DDL = new DataLayer();
             return DDL.ShowEditedData(id).SingleOrDefault();
        }

        public void SaveEdit(UserInformation bobject)
        {
            DataLayer DDL = new DataLayer();
            DDL.SaveEditedData(bobject);
        }

        public int DeleteData(int id)
        {
            DataLayer DDL = new DataLayer();
            return DDL.DeleteById(id);
        }
    }
}

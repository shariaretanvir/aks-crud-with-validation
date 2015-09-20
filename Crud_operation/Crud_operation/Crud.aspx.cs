using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogic;
using BusinessObject;
using DataLogicLayer;

namespace Crud_operation
{
    public partial class Crud : System.Web.UI.Page
    {
        
        UserInformation bobject=null;
        BusinessLogic.BusinessLogic blogic =null; 
        protected void Page_Load(object sender, EventArgs e)
        {
            BindData();
            if(!IsPostBack)
            { 
            if (Request.QueryString["Id"] != null)
            {
                bobject = new UserInformation();
                blogic = new BusinessLogic.BusinessLogic(); 
                bobject.Id = Convert.ToInt32(Request.QueryString["Id"]);
                UserInformation uinfo = new UserInformation(); 
                uinfo =  blogic.ShowEditData(bobject.Id);
                TxtName.Text = uinfo.Name;
                TxtEmail.Text = uinfo.Email;
                TxtAge.Text = uinfo.Age;
                TxtAddress.Text = uinfo.Address;
                TxtGender.Text = uinfo.Gender;
                TxtCountry.Text = uinfo.Country;
                TxtPhone.Text =( uinfo.PhoneNumber).ToString();
                TxtDateOfBirth.Text = uinfo.DateOfBirth;
                TxtSalary.Text = uinfo.Salary;
                BtnAdd.Text = "Update";
                
            }
            if (Request.QueryString["DId"] != null)
            {
                DeleteData();
            }
        }
        }
        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            if (BtnAdd.Text == "Add New")
            {
                bobject = new UserInformation();
                blogic = new BusinessLogic.BusinessLogic();
                bobject.Id = Convert.ToInt32(Request.QueryString["Id"]);
                bobject.Name = TxtName.Text;
                bobject.Email = TxtEmail.Text;
                bobject.Age = TxtAge.Text;
                bobject.Address = TxtAddress.Text;
                bobject.Gender = TxtGender.Text;
                bobject.Country = TxtCountry.Text;
                bobject.PhoneNumber = TxtPhone.Text;
                bobject.DateOfBirth = TxtDateOfBirth.Text;
                bobject.Salary = TxtSalary.Text;
                blogic.AddInfo(bobject);
                BindData();
                ClearFeild();
            }
            else 
            {
                bobject = new UserInformation();
                blogic = new BusinessLogic.BusinessLogic();
                bobject.Id = Convert.ToInt32(Request.QueryString["Id"]);
                bobject.Name = TxtName.Text;
                bobject.Email = TxtEmail.Text;
                bobject.Age = TxtAge.Text;
                bobject.Address = TxtAddress.Text;
                bobject.Gender = TxtGender.Text;
                bobject.Country = TxtCountry.Text;
                bobject.PhoneNumber = TxtPhone.Text;
                bobject.DateOfBirth = TxtDateOfBirth.Text;
                bobject.Salary = TxtSalary.Text;
                blogic.SaveEdit(bobject);
                BindData();
                ClearFeild();
                BtnAdd.Text = "Add New";
            }
        }
        //protected void BtnUpdate_Click(object sender, EventArgs e)
        //{
        //    bobject = new UserInformation();
        //    blogic = new BusinessLogic.BusinessLogic();
        //    bobject.Id = Convert.ToInt32(Request.QueryString["Id"]);
        //    bobject.Name = TxtName.Text;
        //    bobject.Email = TxtEmail.Text;
        //    bobject.Address = TxtAddress.Text;
        //    bobject.Gender = TxtGender.Text;
        //    bobject.Country = TxtCountry.Text;
        //    bobject.PhoneNumber = Convert.ToInt32(TxtPhone.Text);
        //    blogic.SaveEdit(bobject);
        //    BindData();
        //    ClearFeild();
        //}

        public void BindData()
        {
            bobject = new UserInformation();
            blogic = new BusinessLogic.BusinessLogic();
            List<UserInformation> lst = blogic.ShowData(bobject);
            grd_show.DataSource = lst;
            grd_show.DataBind();
        }

        public void DeleteData()
        {
            bobject = new UserInformation();
            blogic = new BusinessLogic.BusinessLogic();

            bobject.Id = Convert.ToInt32(Request.QueryString["DId"]);
            blogic.DeleteData(bobject.Id);
            BindData();

        }

        protected void BtnCancle_Click(object sender, EventArgs e)
        {
            ClearFeild();
            Response.Redirect("~/Crud.aspx");
        }
        public void ClearFeild()
        {
            TxtName.Text = string.Empty;
            TxtEmail.Text = string.Empty;
            TxtAge.Text = string.Empty;
            TxtAddress.Text = string.Empty;
            TxtGender.Text = string.Empty;
            TxtCountry.Text = string.Empty;
            TxtPhone.Text = string.Empty;
            TxtDateOfBirth.Text = string.Empty;
            TxtSalary.Text = string.Empty;
        }

    }
}
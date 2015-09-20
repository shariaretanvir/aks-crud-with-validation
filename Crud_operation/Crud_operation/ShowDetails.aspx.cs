using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataLogicLayer;


namespace Crud_operation
{
    public partial class ShowDetails : System.Web.UI.Page
    {
        UserInformation bobject = null;
        BusinessLogic.BusinessLogic blogic = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
            if(Request.QueryString["Id"]!=null)
            { 
            DeleteData();
            }
        }
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
            
            bobject.Id = Convert.ToInt32(Request.QueryString["Id"]);
            blogic.DeleteData(bobject.Id);
            BindData();
            
        }
       

       
        }

       

        



       
    }

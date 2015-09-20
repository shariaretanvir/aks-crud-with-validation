using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessObject;
using BusinessLogic;

namespace Crud_operation
{
    public partial class CrudMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Crud.aspx");
        }

        protected void ButtonShow_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ShowDetails.aspx");
        }

        
    }
}
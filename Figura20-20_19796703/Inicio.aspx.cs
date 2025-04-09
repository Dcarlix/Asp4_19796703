using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Figura20_20_19796703
{
	public partial class Inicio : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Button1_Click(object sender, EventArgs e)
        {
			Session["intCategoryID"] = txtCategory.Text;
			Response.Redirect("SqlDataSourceClassSessionParameter.aspx");
        }
    }
}
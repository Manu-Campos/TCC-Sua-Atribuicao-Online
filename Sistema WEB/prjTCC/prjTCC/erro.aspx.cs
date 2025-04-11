using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjTCC
{
    public partial class erro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cargo"] != null)
            {
                if (!String.IsNullOrEmpty(Session["cargo"].ToString()))
                {
                    Response.Redirect($"paginas_{Session["cargo"].ToString().ToLower()}/erro.aspx");
                    return;
                }
            } 
        }
    }
}
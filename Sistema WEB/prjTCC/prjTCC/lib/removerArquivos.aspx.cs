using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace prjTCC.lib
{
    public partial class removerArquivos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.ContentType = "application/json";

            string resposta = "";

            if (Request["codigo"] == null)
            {
                resposta = "{'erro':'true'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }

            if (String.IsNullOrEmpty(Request["codigo"].ToString()))
            {
                resposta = "{'erro':'true'}";
                Response.Write(resposta.Replace("'", "\""));
                return;
            }

            try
            {
                int codigo = int.Parse(Request["codigo"]);
                string[] arquivosTemp = Directory.GetFiles((Request.PhysicalApplicationPath + @"imagens\temporario\"));
                File.Delete(arquivosTemp[codigo]);

            }
            catch
            {
                resposta = "{'erro':'true'}";
                Response.Write(resposta.Replace("'", "\""));
            }



        }
    }
}
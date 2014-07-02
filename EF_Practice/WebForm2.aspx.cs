using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EF_Practice
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected bool IsAlert { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Click(object sender, EventArgs e)
        {
            Label.Text = "Ajax";
            ScriptManager.GetCurrent(this).RegisterDataItem(myUP, "ajax");

        }
    }
}
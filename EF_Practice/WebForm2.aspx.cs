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

        protected void Btn1_Click(object sender, EventArgs e)
        {
            Label1.Text = "Ajax";
            IsAlert = true;
            ScriptManager.GetCurrent(this).RegisterDataItem(myUP1, "ajax");

        }

        protected void Btn22_Click(object sender, EventArgs e)
        {
            TB2.Text = "from 22";
            Label1.Text = "from 22";
            myUP1.Update();
        }

        protected void Btn2_Click(object sender, EventArgs e)
        {
            TB22.Text = "from 2";
        }
    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EF_Practice
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            WebUserControl1.Btn111.Click += (o, args) => Response.Write("webform1");
        }


        protected void Page_LoadComplete(object sender, EventArgs e)
        {

        }
    }
}
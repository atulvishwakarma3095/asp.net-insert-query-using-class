using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Users
{
    public partial class users : System.Web.UI.Page
    {

 

       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            Controller cn = new Controller();
            cn.fullname = txtfullname.Text;
            cn.username = txtusername.Text;
            cn.password = txtpasswd.Text;
           
            cn.active = 1;
            bool res = cn.saveuser();
            if (res == true)
            {
                lbmsg.Text = "Successfully Submitted..!!";
            }
            else
            {
                lbmsg.Text = "Failed to submit";
            }
           


        }
    }
}
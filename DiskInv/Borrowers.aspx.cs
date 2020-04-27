/**********************************************************************************/
/*  Date	Name	Description                                                   */
/*  ----------------------------------------------------------------------------- */
/*                                                                                */
/*  4/27/2020 Eric   Initial deployment of borrower page                  */
/**********************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DiskInv
{
    public partial class Borrowers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                lblmessage.Text = txtFirst.Text + " " + txtLast.Text + " is added to the database.";
                txtFirst.Text = "";
                txtLast.Text = "";
                txtPhone.Text = "";
            }
        }
    }
}
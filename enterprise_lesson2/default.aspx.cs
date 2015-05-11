using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace enterprise_lesson2
{
    public partial class _default : System.Web.UI.Page
    {
        public int x;


        protected void Page_Load(object sender, EventArgs e)
        {
            //increment x by 1 when page loads
            //only increment x if page is not being reloaded
            if(!IsPostBack){
                x = 0;   
                x++;
                lblx.Text = x.ToString();
            }
        }

        protected void btnFirstname_Click(object sender, EventArgs e)
        {
            //get the current value of x
            x = Convert.ToInt32(lblx.Text);

            //when user hits submit will also execute x by 1
            x++;

            //increment label value by 1 or just write x back to the label
            lblx.Text = x.ToString();

            //copy the value from the text box to the label
            lblFirstname.Text = txtFirstname.Text;

            //also copy the value to the literal
            ltlFirstname.Text = txtFirstname.Text;

            //remove the text from the textbox
            txtFirstname.Text = "";
        }

        protected void btnSelections_Click(object sender, EventArgs e)
        {
            //show the selected country in the literal control
            ltlFirstname.Text = ddlCountry.SelectedValue + " " + ddlCountry.SelectedItem.Text;

            //first clear the toppings literal
            ltlToppings.Text = " ";

            //loop through the toppings and print out the selected topping list
            foreach(ListItem item in cblToppings.Items)
            {
                if(item.Selected)
                {
                    ltlToppings.Text += item.Text + " ";
                }
            }
        }
    }
}
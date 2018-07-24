using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            setimageurl();
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        setimageurl();
    }

    private void setimageurl()
    {
        Random ran = new Random();
        int i = ran.Next(1, 4);
        Image1.ImageUrl = "~/images/" + i.ToString() + ".JPG";

    }
}
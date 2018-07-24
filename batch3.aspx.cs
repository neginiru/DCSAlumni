using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
public partial class batch3 : System.Web.UI.Page
{

    string constr = "Data Source=LAPTOP-TQEA7JJN\\SQLEXPRESS01;Initial Catalog=alumnidata;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            CommFun.BindDropDownListWithStaticNumbers(ref ddlyear, 2007, 2013, 1, "select year");
            this.BindListView();

        }


    }

    private void BindListView()
    {
        SqlConnection con = new SqlConnection(constr);

        SqlCommand cmd = new SqlCommand();
        if (TextBox1.Text.Trim().Equals("") && ddlyear.SelectedIndex == 0)
        {
            SqlDataSource1.SelectCommand = "select * from alumnidetails where batch between 2007 and 2013 order by name";
        }
        else if (TextBox1.Text.Trim().Equals("") && ddlyear.SelectedIndex > 0)
        {
            SqlDataSource1.SelectCommand = "select * from alumnidetails where batch=" + ddlyear.SelectedItem.Text;
        }
        else if (!TextBox1.Text.Trim().Equals("") && ddlyear.SelectedIndex == 0)
        {
            SqlDataSource1.SelectCommand = "select * from alumnidetails where name like '%" + TextBox1.Text + "%'";
        }
        else
        {
            SqlDataSource1.SelectCommand = "select * from alumnidetails where batch=" + ddlyear.SelectedItem.Text + " and name='" + TextBox1.Text + "'";
        }

        cmd.CommandText = SqlDataSource1.SelectCommand;
        cmd.Connection = con;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();
        sda.Fill(dt);
        lvCustomers.DataSource = dt;
        lvCustomers.DataBind();


    }
    protected void OnPagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        (lvCustomers.FindControl("DataPager1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
        this.BindListView();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM [alumnidetails] WHERE (([batch] = @batch) AND ([name] = @name))";
        BindListView();
    }

}

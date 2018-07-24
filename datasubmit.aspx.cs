using System;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class datasubmit : System.Web.UI.Page
{
    string ConString = "Data Source=LAPTOP-TQEA7JJN\\SQLEXPRESS01;Initial Catalog=alumnidata;Integrated Security=True";
   
    
    protected void Button1_Click(object sender, EventArgs e)
    {


        SqlConnection SqlCon = new SqlConnection(ConString);
        SqlCon.Open();

        SqlCommand cmd = new SqlCommand();

        
            string strname = FileUpload1.FileName.ToString();
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/") + strname);
        string query = "insert into alumnidetails(name,batch,email,workplace,link,campus_com,imagepath) values('" + TextBox1.Text + "','" + TextBox4.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + ComboBox1.Text + "','" + strname + "')";
        cmd.CommandText = query;
        cmd.CommandType = CommandType.Text;
        cmd.Connection = SqlCon;
        
        TextBox1.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox6.Text = "";
        TextBox5.Text = "";
        
        Label1.Text = "Your Data has been saved. ";
        cmd.ExecuteNonQuery();
        SqlCon.Close();

    }

   
}

  
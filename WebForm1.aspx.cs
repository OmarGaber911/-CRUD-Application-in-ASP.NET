using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //datadirectory to work form any directry
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\dbmdf.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();

            }
            con.Open();
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           SqlCommand cmd = con.CreateCommand(); 
           cmd.CommandType = CommandType.Text;   

           cmd.CommandText ="insert into table1 values('"+firstname.Text+"','"+lastname.Text+"','"+city.Text+"')";
            cmd.ExecuteNonQuery();
            firstname.Text = "";
            lastname.Text = "";
            city.Text = "";



        }
        public void  disp_data()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "select * from table1 ";
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt; 
            GridView1.DataBind();   
            cmd.ExecuteNonQuery();
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "delete from table1 where firstname='"+firstname.Text+"'";
            cmd.ExecuteNonQuery();
            firstname.Text = "";//as there is no clear function
            //disp after deletion
        }
        protected void Button3_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            cmd.CommandText = "update table1 set firstname='"+firstname.Text+"',lastname='"+lastname.Text+"',city='"+city.Text+"' where id='" +Convert.ToInt32(oldid.Text) + "'";
            cmd.ExecuteNonQuery();
            firstname.Text = "";
            lastname.Text = "";
            city.Text = "";
           
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            disp_data();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ck : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Show_User();
            
        }
    }
    public void Show_User()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from country  order by countryname", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        dg1.DataSource = dt;
        dg1.DataBind();
        con.Close();
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd2 = new SqlCommand("select * from country where  countryname='" + txt1.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();

        if (dt.Rows.Count == 0)
        {
            try
            {
                con.Open();//Activation of connection object
                SqlCommand cmd = new SqlCommand("insert into country(countryname) values ('" + txt1.Text + "')", con);
                int i = cmd.ExecuteNonQuery();
                con.Close();
                if (i > 0)
                {
                    lbl_caption.Text = "Succesfully Registerd";
                }
            }
            catch
            {
                lbl_caption.Text = "Error occured";
            }
            txt1.Text = "";
            Show_User();

            

        }
        else
        {
            lbl_caption.Visible = true;
            lbl_caption.Text = "Data exists";
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }
}
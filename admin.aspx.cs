using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admint : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Show_Country();
        }
    }
    public void Show_Country()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from country order by countryname", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        DataRow dr = dt.NewRow();
        dr["countryid"] = "-1";
        dr["countryname"] = "[Select One]";
        dt.Rows.InsertAt(dr, 0);
        ddl.DataSource = dt;

        ddl.DataValueField = "countryid";
        ddl.DataTextField = "countryname";
        ddl.DataBind();
    }
    
    protected void bt_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd2 = new SqlCommand("select * from usr_table where  email='" + txtEmail.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();

        if (dt.Rows.Count == 0)
        {
            try
            {
                con.Open();//Activation of connection object
                SqlCommand cmd = new SqlCommand("insert into usr_table(Email,Password,Fname,Lname,Phone,Country) values ('" + txtEmail.Text + "','" + txtPassword.Text + "','" + txtFName.Text + "','" + txtLName.Text + "','" + txtPhone.Text + "','" + ddl.SelectedValue + "')", con);
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
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtFName.Text = "";
            txtLName.Text = "";
            txtPhone.Text = "";
        }
        else
        {
            lbl_caption.Visible = true;
            lbl_caption.Text = "Data exists";
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/Login/Login.aspx");
    }
}
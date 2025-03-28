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
    public partial class Appointment : System.Web.UI.Page
    {
        private static string conn = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Gabby\Desktop\PT 2\School Appointment System\WebApplication1\App_Data\Appointment.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(conn);


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAppoint_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Appointment([Student Lastname], [Student Firstname], [Student Middlename], [Name of Parent or Guardian], [Class Adviser], [Date of Appointment], Schedule, [Purpose of Appointment]) VALUES(@Lname, @Fname, @Mname, @Parent, @Adviser, @Date, @Schedule, @Purpose)", con);
            cmd.Parameters.Add("@Lname", SqlDbType.NVarChar).Value = txtLname.Text;
            cmd.Parameters.Add("@Fname", SqlDbType.NVarChar).Value = txtFname.Text;
            cmd.Parameters.Add("@Mname", SqlDbType.NVarChar).Value = txtMname.Text;
            cmd.Parameters.Add("@Parent", SqlDbType.NVarChar).Value = txtParent.Text;
            cmd.Parameters.Add("@Adviser", SqlDbType.NVarChar).Value = txtAdviser.Text;
            cmd.Parameters.Add("@Date", SqlDbType.NVarChar).Value = txtDate.Text; 
            cmd.Parameters.Add("@Schedule", SqlDbType.NVarChar).Value = rbtSchedule.SelectedValue;
            cmd.Parameters.Add("@Purpose", SqlDbType.NVarChar).Value = txtPurpose.Text;
            
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("Appointment.aspx");

        
            

        }
    }
}

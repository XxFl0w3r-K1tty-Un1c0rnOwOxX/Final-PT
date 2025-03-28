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
    public partial class Delete : System.Web.UI.Page
    {

        private static string conn = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Gabby\Desktop\PT 2\School Appointment System\WebApplication1\App_Data\Appointment.mdf;Integrated Security=True;User Instance=True";
        SqlConnection con = new SqlConnection(conn);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM Appointment WHERE [Appointment Code] = @Code", con);
            cmd.Parameters.Add("@Code", SqlDbType.BigInt).Value = drpCode.SelectedValue;
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("Delete.aspx");
        
        }
    }
}
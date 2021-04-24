using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial_2
{
    public partial class EditarProductos : System.Web.UI.Page
    {
        SqlConnection conex = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda;
        DataTable data = new DataTable();
        DataSet daset = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            conex.ConnectionString = "Data Source=" +
                "(LocalDB)\\MSSQLLocalDB;" +
                "AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True";
            conex.Open();
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                data = new DataTable();

                cmd.CommandText = "update Producto set nombre='" + tb_1b.Text+"', precio='"+tb_1c.Text.ToString()+"', existencias='"+tb_1d.Text.ToString()+"' "+                     
                    "where codigo =" + tb_1a.Text.ToString();
                cmd.Connection = conex;
                cmd.ExecuteNonQuery();

                Clear();
                GridView1.DataBind();
                Label15.Text = "Modificación Exitosa";
            }
        }

        private void Clear()
        {          
            tb_1a.Text = "";
            tb_1b.Text = "";
            tb_1c.Text = "";
            tb_1d.Text = "";            
        }

    }
}
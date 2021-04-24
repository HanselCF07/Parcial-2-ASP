using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial_2
{
    public partial class Clientes : System.Web.UI.Page
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

                cmd.CommandText = "insert into Cliente (cedula, nombre, apellido, direccion, telefono, correo, edad, sexo, forma_pago) " +
                    "values('" + tb_1a.Text.ToString()+"', '"+tb_1b.Text+"', '"+tb_1c.Text+"', '"+tb_1d.Text+"', '"+tb_1e.Text.ToString()+"' "+
                    ", '"+tb_1f.Text+"', '"+tb_1g.Text.ToString()+"', '"+tb_1h.Text+"', '"+DropDownList1.Text+"'); ";
                cmd.Connection = conex;
                cmd.ExecuteNonQuery();

                Clear();
                GridView1.DataBind();
                Label15.Text = "Registro Exitoso";
            }
        }

        private void Clear()
        {
            tb_1a.Text = "";
            tb_1b.Text = "";
            tb_1c.Text = "";
            tb_1d.Text = "";
            tb_1e.Text = "";
            tb_1f.Text = "";
            tb_1g.Text = "";
            tb_1h.Text = "";
        }
    }
}
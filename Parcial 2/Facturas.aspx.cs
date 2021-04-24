using System;
using System.Data;
using System.Data.SqlClient;

namespace Parcial_2
{
    public partial class Facturas : System.Web.UI.Page
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
                int existencia1=0, existencia2=0;
                double precio1=0, precio2=0, total=0, iva=0.19;

                //Producto 1
                cmd.CommandText = "Select * from Producto where codigo =" + tb_2a.Text.ToString();
                cmd.Connection = conex;
                cmd.ExecuteNonQuery();

                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    existencia1 = int.Parse(sdr["existencias"].ToString());
                    precio1 = double.Parse(sdr["precio"].ToString());
                }
                sdr.Close();
                precio1 = precio1 * int.Parse(tb_2b.Text);
                existencia1 = existencia1 - int.Parse(tb_2b.Text);
                

                cmd.CommandText = "update Producto set existencias='" +existencia1.ToString()+ "' " +
                    "where codigo =" + tb_2a.Text.ToString();
                cmd.ExecuteNonQuery();

                //Producto 2
                cmd.CommandText = "Select * from Producto where codigo =" + tb_2c.Text.ToString();
                cmd.Connection = conex;
                cmd.ExecuteNonQuery();

                SqlDataReader sdr2 = cmd.ExecuteReader();
                if (sdr2.Read())
                {
                    existencia2 = int.Parse(sdr2["existencias"].ToString());
                    precio2 = double.Parse(sdr2["precio"].ToString());
                }
                sdr2.Close();
                precio2 = precio2 * int.Parse(tb_2d.Text);
                existencia2 = existencia2 - int.Parse(tb_2d.Text);


                cmd.CommandText = "update Producto set existencias='" + existencia2.ToString() + "' " +
                    "where codigo =" + tb_2c.Text.ToString();
                cmd.ExecuteNonQuery();


                //FACTURA
                total = ((precio1+precio2) * 0.19) + (precio1+precio2);


                cmd.CommandText = "insert into Factura (factura_id, cliente_id, estado, total) " +
                   "values('" + tb_1a.Text.ToString() + "', '" + tb_1b.Text.ToString() + "', '" + DropDownList1.Text + "', '"+total+"'); ";
                cmd.Connection = conex;
                cmd.ExecuteNonQuery();

                cmd.CommandText = "insert into Detalle_Factura (factura_id, codigo_id, cantidad) " +
                    "values('" + tb_1a.Text.ToString() + "', '" + tb_2a.Text.ToString() + "', '" + tb_2b.Text.ToString() + "'); ";
                cmd.Connection = conex;
                cmd.ExecuteNonQuery();

                cmd.CommandText = "insert into Detalle_Factura (factura_id, codigo_id, cantidad) " +
                    "values('" + tb_1a.Text.ToString() + "', '" + tb_2c.Text.ToString() + "', '" + tb_2d.Text.ToString() + "'); ";
                cmd.Connection = conex;
                cmd.ExecuteNonQuery();



                Clear();
                GridView1.DataBind();
                GridView2.DataBind();
                GridView3.DataBind();
                Label15.Text = "Registro Exitoso";
            }
        }

        private void Clear()
        {
            tb_1a.Text = "";
            tb_1b.Text = "";
            tb_2a.Text = "";
            tb_2b.Text = "";
            tb_2c.Text = "";
            tb_2d.Text = "";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
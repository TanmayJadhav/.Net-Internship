using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Product_List
{
    public partial class AddProduct : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-2L882E0;Initial Catalog=product_details;Integrated Security=True;User ID=sa;Password=Tanmay11");
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Click(object sender, EventArgs e)
        {
            string query = $"insert into product (product_name,product_stock,product_category) values('{ProductName.Text}',{Convert.ToInt32(Quantity.Text)},'{Category.SelectedValue}')";
            cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}
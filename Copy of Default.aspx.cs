using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;




public partial class _Default : System.Web.UI.Page 



{
   


    protected void Page_Load(object sender, EventArgs e)
    {
       
        //GridView1.Columns[0].HeaderText = "chu";
        //GridView1.Columns[1].HeaderText = "chu";
        //GridView1.Columns[2].HeaderText = "chu";
        //GridView1.Columns[3].HeaderText = "chu";
        //GridView1.Columns[4].HeaderText = "chu";
        //GridView1.Columns[5].HeaderText = "chu";
        //GridView1.Columns[6].HeaderText = "chu";
        //GridView1.Columns[7].HeaderText = "chu";
        //GridView1.Columns[8].HeaderText = "chu";
        //GridView1.Columns[9].HeaderText = "chu";

        
   
       

    }



    //protected void Button1_Click(object sender, EventArgs e)
    //{

      
   
       
    //    string ketnoi;

    //    ketnoi = "select * from sinhvien where (mssv="+mssv.Text+")";

    //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

    //    SqlCommand sql = new SqlCommand(ketnoi, con);

    //    DataSet ds = new DataSet();
    //    SqlDataAdapter sda = new SqlDataAdapter(sql);
    //    sda.Fill(ds, "sinhvien");
    //    DataTable dt = ds.Tables["sinhvien"];
    //    GridView1.DataSource = dt.DefaultView;
    //    GridView1.DataBind();
     
    //}

   protected void loadheadertext()
    {
        GridView1.Columns[0].HeaderText = "chu";
    
    }
   protected void Button2_Click(object sender, EventArgs e)
   {

 
   
    GridView1.Dispose();
           GridView1.DataBind();
       }

        

   

   protected void Button3_Click(object sender, EventArgs e)
   {

       GridView1.Dispose();
       GridView1.DataBind();

       khoi.Text = khoi.SelectedItem.Text;

       string ketnoi;

       ketnoi = "SELECT     SOBAODANH, HOTEN, NGAYSINH, DM1, DM2, DM3, DTC, KHOI FROM KQ where  ((KHOI=" + khoi.SelectedValue.ToString() + ") and (SOBAODANH=" + mssv.Text + "))";


       SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

       SqlCommand sql = new SqlCommand(ketnoi, con);

       DataSet ds = new DataSet();
       SqlDataAdapter sda = new SqlDataAdapter(sql);
       sda.Fill(ds, "KQ");
       DataTable dt = ds.Tables["KQ"];
       GridView1.DataSource = dt.DefaultView;
       GridView1.DataBind();

       
          
     
   }








   
}

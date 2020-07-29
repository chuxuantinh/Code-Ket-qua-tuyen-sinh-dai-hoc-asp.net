using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;





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



        Label myLabel2 = this.FindControl("label1") as Label;
        myLabel2.Text = "";

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

   
  

 




   //private void checknumber()
   //{

   //    string Str = textBox1.Text.Trim();

   //    double Num;

   //    bool isNum = double.TryParse(Str, out Num);

   //    if (isNum)

   //        MessageBox.Show(Num.ToString());

   //    else

   //        MessageBox.Show("Invalid number");
   
   //}



   //protected void khoi_SelectedIndexChanged(object sender, EventArgs e)
   //{
   //    Button2.Text = "Tra cứu";
   //    Label myLabel1 = this.FindControl("label1") as Label;
   //    myLabel1.Text = "";
   //    if (khoi.SelectedIndex == 8)
   //    {


   //        Label myLabel = this.FindControl("label1") as Label;
   //        myLabel.Text = "Thí sinh tốt nghiệp 2014 nộp học bạ và chứng nhận TN tạm thời (photo công chứng).Thí sinh TN trước năm 2014 nộp học bạ và giấy xác nhận điểm thi TN môn văn ( photo công chứng). Thời hạn nộp trước 5/08/2014";
   //    }

   //    if (khoi.SelectedIndex == 10)
   //    {


   //        Label myLabel = this.FindControl("label1") as Label;
   //        myLabel.Text = "Thí sinh tốt nghiệp 2014 nộp học bạ và chứng nhận TN tạm thời (photo công chứng).Thí sinh TN trước năm 2014 nộp học bạ và giấy xác nhận điểm thi TN môn văn ( photo công chứng). Thời hạn nộp trước 5/08/2014";
   //    }
   //    if (khoi.SelectedIndex == 9)
   //    {


   //        Label myLabel = this.FindControl("label1") as Label;
   //        myLabel.Text = "Thí sinh tốt nghiệp 2014 nộp học bạ và chứng nhận TN tạm thời (photo công chứng).Thí sinh TN trước năm 2014 nộp học bạ và giấy xác nhận điểm thi TN môn văn ( photo công chứng). Thời hạn nộp trước 5/08/2014";
   //    }
   //    if (khoi.SelectedIndex == 6)
   //    {


   //        Label myLabel = this.FindControl("label1") as Label;
   //        myLabel.Text = "Thí sinh tốt nghiệp 2014 nộp học bạ và chứng nhận TN tạm thời (photo công chứng).Thí sinh TN trước năm 2014 nộp học bạ và giấy xác nhận điểm thi TN môn văn ( photo công chứng). Thời hạn nộp trước 5/08/2014";
   //    }
   //    if (khoi.SelectedIndex == 7)
   //    {


   //        Label myLabel = this.FindControl("label1") as Label;
   //        myLabel.Text = "Thí sinh tốt nghiệp 2014 nộp học bạ và chứng nhận TN tạm thời (photo công chứng).Thí sinh TN trước năm 2014 nộp học bạ và giấy xác nhận điểm thi TN môn văn ( photo công chứng). Thời hạn nộp trước 5/08/2014";
   //    }
   //}

   //private void checkhoso()
   //{
   //    Button2.Text = "Tra cứu";
   //    Label myLabel1 = this.FindControl("label1") as Label;
   //    myLabel1.Text = "";
   //    if (khoi.SelectedIndex == 8)
   //    {


   //        Label myLabel = this.FindControl("label1") as Label;
   //        myLabel.Text = "Thí sinh tốt nghiệp 2014 nộp học bạ và chứng nhận TN tạm thời (photo công chứng).Thí sinh TN trước năm 2014 nộp học bạ và giấy xác nhận điểm thi TN môn văn ( photo công chứng). Thời hạn nộp trước 5/08/2014";
   //    }

   //    if (khoi.SelectedIndex == 10)
   //    {


   //        Label myLabel = this.FindControl("label1") as Label;
   //        myLabel.Text = "Thí sinh tốt nghiệp 2014 nộp học bạ và chứng nhận TN tạm thời (photo công chứng).Thí sinh TN trước năm 2014 nộp học bạ và giấy xác nhận điểm thi TN môn văn ( photo công chứng). Thời hạn nộp trước 5/08/2014";
   //    }
   //    if (khoi.SelectedIndex == 9)
   //    {


   //        Label myLabel = this.FindControl("label1") as Label;
   //        myLabel.Text = "Thí sinh tốt nghiệp 2014 nộp học bạ và chứng nhận TN tạm thời (photo công chứng).Thí sinh TN trước năm 2014 nộp học bạ và giấy xác nhận điểm thi TN môn văn ( photo công chứng). Thời hạn nộp trước 5/08/2014";
   //    }
   //    if (khoi.SelectedIndex == 6)
   //    {


   //        Label myLabel = this.FindControl("label1") as Label;
   //        myLabel.Text = "Thí sinh tốt nghiệp 2014 nộp học bạ và chứng nhận TN tạm thời (photo công chứng).Thí sinh TN trước năm 2014 nộp học bạ và giấy xác nhận điểm thi TN môn văn ( photo công chứng). Thời hạn nộp trước 5/08/2014";
   //    }
   //    if (khoi.SelectedIndex == 7)
   //    {


   //        Label myLabel = this.FindControl("label1") as Label;
   //        myLabel.Text = "Thí sinh tốt nghiệp 2014 nộp học bạ và chứng nhận TN tạm thời (photo công chứng).Thí sinh TN trước năm 2014 nộp học bạ và giấy xác nhận điểm thi TN môn văn ( photo công chứng). Thời hạn nộp trước 5/08/2014";
   //    }
   //}
  
   protected void Button1_Click1(object sender, EventArgs e)
   {
       GridView2.Dispose();
       GridView2.DataBind();

       //  khoi.Text = khoi.SelectedItem.Text;

       string ketnoi;
       //nv1
              ketnoi = "SELECT SOPHIEU, HOVATEN, PHAI, NGAYSINH FROM  NOPNV1 WHERE ((HOVATEN = N'" + mssv.Text + "') and (NGAYSINH= N'" + mssv0.Text + "'))";
       SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TSConnectionString"].ConnectionString);
       SqlCommand sql = new SqlCommand(ketnoi, con);
       DataSet ds = new DataSet();
       SqlDataAdapter sda = new SqlDataAdapter(sql);
       sda.Fill(ds, "NOPNV1");
       DataTable dt = ds.Tables["NOPNV1"];
       GridView2.DataSource = dt.DefaultView;
       GridView2.DataBind();
   }
}

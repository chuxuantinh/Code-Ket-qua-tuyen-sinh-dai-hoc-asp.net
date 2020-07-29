<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Defaultnv1.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>saigonact.edu.vn tra cuu diem thi tuyen sinh dai hoc cao dang nam 2013</title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            font-weight: bold;
            color: #006666;
            font-size: x-large;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            color: #CC3300;
        }
        .style4
        {
            color: #FF3300;
        }
        .auto-style1 {
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <span class="auto-style1">TRƯỜNG CAO ĐẲNG VĂN HÓA NGHỆ THUẬT VÀ DU LỊCH SÀI GÒN</span><span class="style3"><span class="auto-style1"><br />
        TRA CỨU THÔNG TIN THÍ SINH TRÚNG&nbsp; TUYỂN NGUYỆN VỌNG 1- NĂM 2015</span><br />
        </span>
        <br />
    
    </div>
    
    <div class="style2">
  
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Họ và tên: <asp:TextBox ID="mssv" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp; Ngày sinh: <asp:TextBox ID="mssv0" runat="server"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID ="RequiredFieldValidator1" runat="server"  
            ErrorMessage="Bạn chưa nhập họ và tên" ControlToValidate="mssv" ></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID ="RequiredFieldValidator2" runat="server"  
            ErrorMessage="Chưa nhập ngày sinh định dạng dd/mm/yyyy" ControlToValidate="mssv0" ></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        </b>
        &nbsp;
       
        
        

       
        
        -Lưu ý thí sinh nhập đầy đủ họ và tên (có dấu)- ngày sinh theo định dạng (dd/mm/yyy-ngày/tháng/năm)<br />
       
        
        

       
        
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Tra cứu" />
       
        
        

       
        
        &nbsp;&nbsp;<b>
        </b>

        <br />
       
        
        

       
        
        <div align="center">
        
        
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" EnableModelValidation="True">
                <Columns>
                    <asp:BoundField DataField="SOPHIEU" HeaderText="Số phiếu" />
                    <asp:BoundField DataField="HOVATEN" HeaderText="Họ và Tên" />
                    <asp:BoundField DataField="PHAI" HeaderText="Phái" />
                    <asp:BoundField DataField="NGAYSINH" HeaderText="Ngày sinh" />
                </Columns>
            </asp:GridView>
        
        
        &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TSConnectionString %>" 
            SelectCommand="SELECT SOPHIEU, HOVATEN, PHAI, NGAYSINH FROM NOPNV1 WHERE (HOVATEN = @HOVATEN) AND (NGAYSINH = @ngaysinh)" ProviderName="System.Data.SqlClient" >
            <SelectParameters>
                <asp:ControlParameter ControlID="mssv" Name="HOVATEN" PropertyName="Text"  DbType="String" />
                
                <asp:ControlParameter ControlID="mssv0" Name="ngaysinh" PropertyName="Text" />
                
            </SelectParameters>
        </asp:SqlDataSource>
        
   
          
    </div>

   
   

    

    </div>
    
   <div>
      
       
   </div>
   

   <div align="center">
    
     <asp:Label ID="Label1" runat="server" style="color: #CC3300;" Text="Label"></asp:Label>
       <br />
       <div style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8000001907349px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
           Thí sinh chưa nhận GIẤY BÁO TRÚNG TUYỂN, hoàn tất các yêu cầu theo qui định và đến trường làm thủ tục nhập học bình thường<br />
           <span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 12.8000001907349px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">Từ ngày 4/9/2015- 11/9/2015 ( trừ chủ nhật)</span><br />
       </div>

       <a href="http://saigonact.edu.vn/doc/hoso2015/mauhosonhaphoc.pdf">1. Mẫu hồ sơ nhập học </a><br />
<a href="http://saigonact.edu.vn/doc/hoso2015/BAN TU KHAI LY LICH - SAIGONACT-2015.doc">2. Bản tự khai lý lịch </a><a href="http://saigonact.edu.vn/doc/hoso2015/Mau ho so nhap hoc.docx"></a>
    </div>
        
   
   

    </form>

          
</body>
</html>

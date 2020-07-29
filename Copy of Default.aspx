<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <span class="style3">TRA CỨU KẾT QUẢ THI TUYỂN SINH CAO ĐẲNG NĂM 2013
        <br />
        </span>TẠI TRƯỜNG CAO ĐẲNG VĂN HÓA NGHỆ THUẬT VÀ DU LỊCH SÀI GÒN<br />
        <br />
    
    </div>
    
    <div class="style2">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> 
        Số báo danh<asp:TextBox ID="mssv" runat="server"></asp:TextBox>
        </b>
        &nbsp;<asp:RequiredFieldValidator ID ="RequiredFieldValidator1" runat="server"  
            ErrorMessage="Chưa nhập mã số sinh viên" ControlToValidate="mssv" ></asp:RequiredFieldValidator>
       
        <br />
        <b>Khối
        
         <asp:DropDownList ID="khoi" runat="server" AutoPostBack="True">
            <asp:ListItem>A</asp:ListItem>
            <asp:ListItem Value="B"></asp:ListItem>
            <asp:ListItem Value="C"></asp:ListItem>
            <asp:ListItem Value="D"></asp:ListItem>
            <asp:ListItem Value="A1"></asp:ListItem>
            <asp:ListItem Value="D1"></asp:ListItem>
            <asp:ListItem Value="N"></asp:ListItem>
            <asp:ListItem Value="H"></asp:ListItem>
            <asp:ListItem Value="S"></asp:ListItem>
        </asp:DropDownList>
        </b>
       
        <br />
       
        <br />
        
        <div>
        
         &nbsp;<br />
            <span class="style4">* Thí sinh vui lòng nhập chính xác số báo danh và khối 
            thi&nbsp;&nbsp;&nbsp;
        <br />
        <br />
       
<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Tra cứu" 
            Font-Bold="True" ForeColor="#CC6600" style="height: 26px" />
    
    <table class style>
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        style="text-align: left" BackColor="White" BorderColor="#DEDFDE" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
            GridLines="Vertical" DataKeyNames="SOBAODANH,KHOI" 
            DataSourceID="SqlDataSource1">
        <RowStyle BackColor="#F7F7DE" />
        <Columns>
          
            <asp:BoundField DataField="SOBAODANH" HeaderText="Số báo danh" ReadOnly="True" 
                SortExpression="SOBAODANH">
                <HeaderStyle BackColor="#FF9900" BorderColor="#CC3300" />
            </asp:BoundField>
            <asp:BoundField DataField="HOTEN" HeaderText="Họ và tên" 
                SortExpression="HOTEN" >
          
                <HeaderStyle BackColor="#FF9900" />
            </asp:BoundField>
          
            <asp:BoundField DataField="NGAYSINH" HeaderText="Ngày sinh" 
                SortExpression="NGAYSINH" >
                <HeaderStyle BackColor="#FF9900" />
            </asp:BoundField>
            <asp:BoundField DataField="DM1" HeaderText="Diểm môn 1" SortExpression="DM1" >
                <HeaderStyle BackColor="#FF9900" />
            </asp:BoundField>
            <asp:BoundField DataField="DM2" HeaderText="Điểm môn 2" SortExpression="DM2" >
                <HeaderStyle BorderColor="#FF9900" BackColor="#FF9900" />
            </asp:BoundField>
            <asp:BoundField DataField="DM3" HeaderText="Điểm môn 3" SortExpression="DM3" >
                <HeaderStyle BackColor="#FF9900" />
            </asp:BoundField>
            <asp:BoundField DataField="DTC" HeaderText="Điểm tổng" SortExpression="DTC" >
                <HeaderStyle BackColor="#FF9900" />
            </asp:BoundField>
            <asp:BoundField HeaderText="Khối thi" DataField="KHOI" ReadOnly="True" 
                SortExpression="KHOI" >
                <HeaderStyle BackColor="#FF9900" />
            </asp:BoundField>
          
        </Columns>
   
  
        <FooterStyle BackColor="#CCCC99" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
   
  
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TSConnectionString %>" 
            SelectCommand="SELECT [SOBAODANH], [HOTEN], [NGAYSINH], [DM1], [DM2], [DM3], [DTC], [KHOI] FROM [KQ] WHERE (([SOBAODANH] = @SOBAODANH) AND ([KHOI] = @KHOI))">
            <SelectParameters>
                <asp:ControlParameter ControlID="mssv" Name="SOBAODANH" PropertyName="Text" 
                    Type="Int32" />
                <asp:ControlParameter ControlID="khoi" Name="KHOI" PropertyName="SelectedValue" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </table>
    </div>

    </form>
</body>
</html>

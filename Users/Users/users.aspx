<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="Users.users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Users</title>
     <link href="CSS/Style.css" rel="stylesheet" />
    <link href="CSS/css/bootstrap.main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
      <div class="container">
          <div class="row">
              <div class="col-lg-4">
                  <div class="form-group">
                      <asp:Label runat="server">Fullname</asp:Label>
                      <asp:TextBox ID="txtfullname" runat="server" CssClass="form-control"></asp:TextBox>
                  </div>
              </div>
              <div class="col-lg-4">
                  <div class="form-group">
                      <asp:Label runat="server">Username</asp:Label>
                      <asp:TextBox ID="txtusername" runat="server" CssClass="form-control"></asp:TextBox>
                  </div>
              </div>
              <div class="col-lg-4">
                  <div class="form-group">
                      <asp:Label runat="server">Password</asp:Label>
                      <asp:TextBox ID="txtpasswd" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                  </div>
              </div>
              <div class="col-lg-12">
                  <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-block btn-danger" OnClick="Button1_Click" />
              </div>
              <div class="col-lg-12">
                  
                  <asp:Label ID="lbmsg" Font-Bold="true" ForeColor="red" runat="server"/>
              </div>
          </div>
      </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HardwareShopConnectionString %>" SelectCommand="SELECT * FROM [users] ORDER BY [id] DESC"></asp:SqlDataSource>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="93px" Width="670px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="fullname" HeaderText="Fullname" SortExpression="fullname" />
                        <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                        <asp:BoundField DataField="passwd" HeaderText="Password" SortExpression="passwd" />
                        <asp:BoundField DataField="createdate" HeaderText="Date" SortExpression="createdate" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                </div>
            </div>

        </div>
     
    </form>

</body>
</html>

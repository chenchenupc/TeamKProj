<%@ Page Title="" Language="C#" MasterPageFile="~/adminSite.master" AutoEventWireup="true" CodeFile="recordview.aspx.cs" Inherits="recordview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="submitButton">
    <asp:Button ID="Button1" runat="server" Text="新增维修记录" onclick="Button1_Click" />
        </p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
    DataKeyNames="recordid" DataSourceID="SqlDataSource4" ForeColor="#333333" 
    GridLines="None" style="margin-left: 43px" Width="845px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="recordid" HeaderText="记录编号" InsertVisible="False" 
            ReadOnly="True" SortExpression="recordid" />
        <asp:BoundField DataField="equipid" HeaderText="设备编号" 
            SortExpression="equipid" />
        <asp:BoundField DataField="adminname" HeaderText="管理员姓名" 
            SortExpression="adminname" />
        <asp:BoundField DataField="recorddate" HeaderText="维修日期" 
            SortExpression="recorddate" />
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
<asp:SqlDataSource ID="SqlDataSource4" runat="server" 
    ConflictDetection="CompareAllValues" 
    ConnectionString="<%$ ConnectionStrings:myDBConnectionString %>" 
    DeleteCommand="DELETE FROM [equiprecord] WHERE [recordid] = @original_recordid AND [equipid] = @original_equipid AND [adminname] = @original_adminname AND [recorddate] = @original_recorddate" 
    InsertCommand="INSERT INTO [equiprecord] ([equipid], [adminname], [recorddate]) VALUES (@equipid, @adminname, @recorddate)" 
    OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT * FROM [equiprecord]" 
    UpdateCommand="UPDATE [equiprecord] SET [equipid] = @equipid, [adminname] = @adminname, [recorddate] = @recorddate WHERE [recordid] = @original_recordid AND [equipid] = @original_equipid AND [adminname] = @original_adminname AND [recorddate] = @original_recorddate">
    <DeleteParameters>
        <asp:Parameter Name="original_recordid" Type="Int64" />
        <asp:Parameter Name="original_equipid" Type="Int64" />
        <asp:Parameter Name="original_adminname" Type="String" />
        <asp:Parameter Name="original_recorddate" Type="DateTime" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="equipid" Type="Int64" />
        <asp:Parameter Name="adminname" Type="String" />
        <asp:Parameter Name="recorddate" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="equipid" Type="Int64" />
        <asp:Parameter Name="adminname" Type="String" />
        <asp:Parameter Name="recorddate" Type="DateTime" />
        <asp:Parameter Name="original_recordid" Type="Int64" />
        <asp:Parameter Name="original_equipid" Type="Int64" />
        <asp:Parameter Name="original_adminname" Type="String" />
        <asp:Parameter Name="original_recorddate" Type="DateTime" />
    </UpdateParameters>
</asp:SqlDataSource>
   
</asp:Content>


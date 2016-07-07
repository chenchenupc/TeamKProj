<%@ Page Title="" Language="C#" MasterPageFile="~/userSite.master" AutoEventWireup="true" CodeFile="bookview.aspx.cs" Inherits="bookview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <p class="submitButton">
         <asp:Button ID="Button1" runat="server" Text="新增预约" onclick="Button1_Click" />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="Button2" runat="server" Text="删除预约" onclick="Button2_Click" />

      </p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="bookid" DataSourceID="SqlDataSource3" ForeColor="#333333" 
        GridLines="None" style="margin-left: 43px" Width="845px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="bookid" HeaderText="bookid" InsertVisible="False" 
                ReadOnly="True" SortExpression="bookid" />
            <asp:BoundField DataField="roomid" HeaderText="roomid" 
                SortExpression="roomid" />
            <asp:BoundField DataField="username" HeaderText="申请人" 
                SortExpression="username" />
            <asp:BoundField DataField="adminname" HeaderText="审核人" 
                SortExpression="adminname" />
            <asp:CheckBoxField DataField="review" HeaderText="是否通过审核" 
                SortExpression="review" />
            <asp:BoundField DataField="begintime" HeaderText="会议开始时间" 
                SortExpression="begintime" />
            <asp:BoundField DataField="endtime" HeaderText="会议结束时间" 
                SortExpression="endtime" />
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:myDBConnectionString %>" 
        SelectCommand="SELECT * FROM [roombook]" 
        ConflictDetection="CompareAllValues" 
        DeleteCommand="DELETE FROM [roombook] WHERE [bookid] = @original_bookid AND [roomid] = @original_roomid AND [username] = @original_username AND (([adminname] = @original_adminname) OR ([adminname] IS NULL AND @original_adminname IS NULL)) AND [review] = @original_review AND [begintime] = @original_begintime AND [endtime] = @original_endtime" 
        InsertCommand="INSERT INTO [roombook] ([roomid], [username], [adminname], [review], [begintime], [endtime]) VALUES (@roomid, @username, @adminname, @review, @begintime, @endtime)" 
        OldValuesParameterFormatString="original_{0}" 
        UpdateCommand="UPDATE [roombook] SET [roomid] = @roomid, [username] = @username, [adminname] = @adminname, [review] = @review, [begintime] = @begintime, [endtime] = @endtime WHERE [bookid] = @original_bookid AND [roomid] = @original_roomid AND [username] = @original_username AND (([adminname] = @original_adminname) OR ([adminname] IS NULL AND @original_adminname IS NULL)) AND [review] = @original_review AND [begintime] = @original_begintime AND [endtime] = @original_endtime">
        <DeleteParameters>
            <asp:Parameter Name="original_bookid" Type="Int64" />
            <asp:Parameter Name="original_roomid" Type="String" />
            <asp:Parameter Name="original_username" Type="String" />
            <asp:Parameter Name="original_adminname" Type="String" />
            <asp:Parameter Name="original_review" Type="Boolean" />
            <asp:Parameter Name="original_begintime" Type="DateTime" />
            <asp:Parameter Name="original_endtime" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="roomid" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="adminname" Type="String" />
            <asp:Parameter Name="review" Type="Boolean" />
            <asp:Parameter Name="begintime" Type="DateTime" />
            <asp:Parameter Name="endtime" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="roomid" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="adminname" Type="String" />
            <asp:Parameter Name="review" Type="Boolean" />
            <asp:Parameter Name="begintime" Type="DateTime" />
            <asp:Parameter Name="endtime" Type="DateTime" />
            <asp:Parameter Name="original_bookid" Type="Int64" />
            <asp:Parameter Name="original_roomid" Type="String" />
            <asp:Parameter Name="original_username" Type="String" />
            <asp:Parameter Name="original_adminname" Type="String" />
            <asp:Parameter Name="original_review" Type="Boolean" />
            <asp:Parameter Name="original_begintime" Type="DateTime" />
            <asp:Parameter Name="original_endtime" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>
   
   
    <br />
</asp:Content>


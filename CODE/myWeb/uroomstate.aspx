<%@ Page Title="" Language="C#" MasterPageFile="~/userSite.master" AutoEventWireup="true" CodeFile="uroomstate.aspx.cs" Inherits="uroomstate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="roomid" DataSourceID="SqlDataSource2" ForeColor="#333333" 
        GridLines="None" style="margin-left: 43px" Width="845px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="roomid" HeaderText="会议室地点" ReadOnly="True" 
                SortExpression="roomid" />
            <asp:BoundField DataField="roomnum" HeaderText="容纳人数" 
                SortExpression="roomnum" />
            <asp:CheckBoxField DataField="roomfree" HeaderText="是否空闲" 
                SortExpression="roomfree" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:myDBConnectionString %>" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [room]">
    </asp:SqlDataSource>
</asp:Content>


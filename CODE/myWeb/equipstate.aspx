<%@ Page Title="" Language="C#" MasterPageFile="~/adminSite.master" AutoEventWireup="true" CodeFile="equipstate.aspx.cs" Inherits="equipstate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="equipid" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None" style="margin-left: 43px; margin-right: 0px" Width="845px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="equipid" HeaderText="设备编号" InsertVisible="False" 
                ReadOnly="True" SortExpression="equipid" />
            <asp:BoundField DataField="equipname" HeaderText="设备名称" 
                SortExpression="equipname" />
            <asp:CheckBoxField DataField="equipfree" HeaderText="是否完好" 
                SortExpression="equipfree" />
            <asp:BoundField DataField="roomid" HeaderText="所属会议室" SortExpression="roomid" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:myDBConnectionString %>" 
        DeleteCommand="DELETE FROM [equip] WHERE [equipid] = @original_equipid AND [equipname] = @original_equipname AND [equipfree] = @original_equipfree AND [roomid] = @original_roomid" 
        InsertCommand="INSERT INTO [equip] ([equipname], [equipfree], [roomid]) VALUES (@equipname, @equipfree, @roomid)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [equip]" 
        
        UpdateCommand="UPDATE [equip] SET [equipname] = @equipname, [equipfree] = @equipfree, [roomid] = @roomid WHERE [equipid] = @original_equipid AND [equipname] = @original_equipname AND [equipfree] = @original_equipfree AND [roomid] = @original_roomid">
        <DeleteParameters>
            <asp:Parameter Name="original_equipid" Type="Int64" />
            <asp:Parameter Name="original_equipname" Type="String" />
            <asp:Parameter Name="original_equipfree" Type="Boolean" />
            <asp:Parameter Name="original_roomid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="equipname" Type="String" />
            <asp:Parameter Name="equipfree" Type="Boolean" />
            <asp:Parameter Name="roomid" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="equipname" Type="String" />
            <asp:Parameter Name="equipfree" Type="Boolean" />
            <asp:Parameter Name="roomid" Type="String" />
            <asp:Parameter Name="original_equipid" Type="Int64" />
            <asp:Parameter Name="original_equipname" Type="String" />
            <asp:Parameter Name="original_equipfree" Type="Boolean" />
            <asp:Parameter Name="original_roomid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>


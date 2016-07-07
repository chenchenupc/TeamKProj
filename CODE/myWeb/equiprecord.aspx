<%@ Page Title="" Language="C#" MasterPageFile="~/adminSite.master" AutoEventWireup="true" CodeFile="equiprecord.aspx.cs" Inherits="equiprecord"  Debug="true"%>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:Label ID="Label1" runat="server">设备编号：</asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" CssClass="textEntry"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server">管理员姓名：</asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="textEntry"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server">维修日期：</asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" CssClass="textEntry"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="提交" onclick="Button1_Click" 
            style="text-align: center" />
    &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="取消" onclick="Button2_Click" />
    </p>
    </asp:Content>



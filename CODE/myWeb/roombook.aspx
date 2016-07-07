<%@ Page Title="" Language="C#" MasterPageFile="~/userSite.master" AutoEventWireup="true" CodeFile="roombook.aspx.cs" Inherits="roombook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="accountInfo"> 
    <fieldset class="login">
     <legend>我要申请：</legend>
    <p>
        <asp:Label ID="Label1" runat="server" >申请人姓名：</asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="textEntry"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server">申请会议室：</asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="textEntry"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server">申请开始时间：</asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="textEntry"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server">申请结束时间：</asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="textEntry"></asp:TextBox>
    </p>
   </fieldset>
    <p class="submitButton">
        <asp:Button ID="add" runat="server" Text="提交申请" onclick="add_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="Button1" runat="server" Text="取消" onclick="Button1_Click" />
    </p>
</div>  
</asp:Content>


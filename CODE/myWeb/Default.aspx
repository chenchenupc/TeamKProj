<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    
    <p>
        请输入用户名和密码。
        如果您没有帐户，请<a id="registerLink" runat="server" href="~/Register.aspx">注册</a>
    </p>
            <span class="failureNotification">
             <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            </span>
            <div class="accountInfo">
            <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification" 
                 ValidationGroup="LoginUserValidationGroup"/>
             <fieldset class="login">
                 <legend>登录</legend>
                    <p>
                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">用户名：</asp:Label>
                        <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                             CssClass="failureNotification" ErrorMessage="必须填写“用户名”。" ToolTip="必须填写“用户名”。" 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">密码：</asp:Label>
                        <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                             CssClass="failureNotification" ErrorMessage="必须填写“密码”。" ToolTip="必须填写“密码”。" 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                    <%--<asp:Label ID="SortLabel1" runat="server" AssociatedControlID="Sort"></asp:Label>--%>
                       用户类型: <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="0">管理员</asp:ListItem>
                            <asp:ListItem Value="1">用户</asp:ListItem>
                        </asp:DropDownList>
                  </p>
            </fieldset>
                <p class="submitButton">
                    <asp:Button ID="Button1" runat="server" Text="登录" onclick="Button1_Click" 
                        Width="40px" style="margin-top: 0px"/> 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:Button ID="Button2" runat="server" Text="取消" onclick="Button2_Click" Width="40px"/> 

                </p>
            </div>       
</asp:Content>
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .新建样式1 {
            font-family: 宋体;
            font-size: large;
            font-style: normal;
            font-variant: normal;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
               <div class="accountInfo">
                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>
                    <fieldset class="login">
                        <legend>注册</legend>
                       
                            <p>
                                <asp:Label ID="Label1" runat="server" AssociatedControlID="UserName">用户名：</asp:Label>
                                <asp:TextBox runat="server" ID="UserName" CssClass="textEntry" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="用户名字段是必填字段。" />
                            </p>
                   
                            <p>
                                <asp:Label ID="Label2" runat="server" AssociatedControlID="Phone">联系电话：</asp:Label>
                                <asp:TextBox runat="server" ID="Phone" CssClass="textEntry"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Phone"
                                    CssClass="field-validation-error" ErrorMessage="联系电话字段是必需的。" />
                            </p>

                            <p>
                                <asp:Label ID="Label3" runat="server" AssociatedControlID="Password">密码：</asp:Label>
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="textEntry"/>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Password"
                                    CssClass="field-validation-error" ErrorMessage="密码字段是必填字段。" />
                            </p>

                            <p>
                                <asp:Label ID="Label4" runat="server" AssociatedControlID="ConfirmPassword">确认密码：</asp:Label>
                                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="textEntry" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="确认密码字段是必填字段。" />
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="密码和确认密码不匹配。" />
                            </p>
                         </fieldset>
                     <p class="submitButton">
                        <asp:Button ID="Button1" runat="server" CommandName="MoveNext" Text="注册" OnClick="Button1_Click" />
                     </p>
               </div>               
</asp:Content>



using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (UserName.Text.Trim() == "")
        {
            ComTool.Alert("请输入用户名！");
        }
        else if (Password.Text.Trim() == "")
        {
            ComTool.Alert("请输入密码！");
        }
        else
        {
            if (Int32.Parse(DropDownList1.SelectedItem.Value) == 0)
            {
                Admin obj = new Admin();
                obj.adminname = UserName.Text;
                obj.adminkey = Password.Text;
                if (Admin.ifLogin(obj))
                {
                    ComTool.Alert("登陆成功！");
                    ComTool.Redirect("aroomstate.aspx");
                }
                else
                {
                    ComTool.Alert("登陆失败！");
                }
            }
            else if (Int32.Parse(DropDownList1.SelectedItem.Value) == 1)
            {
                myUser obj = new myUser();
                obj.username = UserName.Text;
                obj.userkey = Password.Text;
                if (myUser.ifLogin(obj))
                {
                    ComTool.Alert("登陆成功！");
                    ComTool.Redirect("uroomstate.aspx");
                }
                else
                {
                    ComTool.Alert("登陆失败！");
                }

            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        ComTool.Redirect("Default.aspx");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{   
        
    protected void Button1_Click(object sender, EventArgs e)
    {
        myUser obj = new myUser();
        obj.username = UserName.Text.Trim();
        obj.userkey = Password.Text.Trim();
        obj.userphone = Phone.Text.Trim();
        if (myUser.selectDataTable(obj).Rows.Count != 0)
        {
            ComTool.Alert("注册失败，该用户名已存在！");
        }
        else if (myUser.insertRecord(obj) == 1)
        {
            ComTool.Alert("注册成功！");
            ComTool.Redirect(" Default.aspx");
        }  
    }
}
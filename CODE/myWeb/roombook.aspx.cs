using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class roombook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void add_Click(object sender, EventArgs e)
    {
        if (TextBox3.Text.Trim() == "")
        {
            ComTool.Alert("请输入用户名！");
        }
        else if (TextBox4.Text.Trim() == "")
        {
            ComTool.Alert("请输入要预约的会议室！");
        }
        else if (TextBox1.Text.Trim() == "")
        {
            ComTool.Alert("请输入会议开始时间！");
        }
        else if (TextBox2.Text.Trim() == "")
        {
            ComTool.Alert("请输入会议结束时间！");
        }
        else
        {
            roomBook obj = new roomBook();
            obj.username = TextBox3.Text;
            obj.roomid = TextBox4.Text;
            obj.begintime = DateTime.Parse(TextBox1.Text);
            obj.endtime = DateTime.Parse(TextBox2.Text);
            if (roomBook.insertRecord(obj) == 1)
            {
                ComTool.Alert("预约成功！");
                ComTool.Redirect("bookview.aspx");
            }
            else
            {
                ComTool.Alert("预约失败！");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ComTool.Redirect("bookview.aspx");
    }
}
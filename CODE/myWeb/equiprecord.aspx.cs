using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class equiprecord : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Trim() == "")
        {
            ComTool.Alert("请输入设备编号");
        }
        else if (TextBox2.Text.Trim() == "")
        {
            ComTool.Alert("请输入管理员姓名！");
        }
        else if (TextBox3.Text.Trim() == "")
        {
            ComTool.Alert("请输入维修日期！");
        }
        else
        {
            Equiprecord obj = new Equiprecord();
            obj.equipid = Convert.ToInt64(TextBox1.Text);
            obj.adminname = TextBox2.Text;
            obj.recorddate = DateTime.Parse(TextBox3.Text);
            if (Equiprecord.insertRecord(obj) == 1)
            {
                ComTool.Alert("新增成功！");
                ComTool.Redirect("recordview.aspx");
            }
            else
            {
                ComTool.Alert("新增失败！");
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        ComTool.Redirect("recordview.aspx");
    }
}
        
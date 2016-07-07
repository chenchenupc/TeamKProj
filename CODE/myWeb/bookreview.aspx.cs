using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class roomreview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            BindData1();
        }
    }
   
    private void BindData1()
    {
        //roomBook obj = new roomBook();
        DataTable dt = roomBook.selectDataTable1();
        gvcourse.DataSource = dt;
        gvcourse.DataBind();
    }
    //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    //{
        
    //}
    protected void gvclass_RowDataBound(object sender, GridViewRowEventArgs e)
    {
    //    if (e.Row.RowType == DataControlRowType.DataRow)
    //    {
    //        Label lb = (Label)e.Row.FindControl("Label1");
    //        Button bt = (Button)e.Row.FindControl("Button1");
    //        if (lb.Text == "未预约")
    //            bt.Visible = false;
    //        else
    //            bt.Visible = true;

    //        e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor='#d0e5f5'");
    //        e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor='#ffffff'");
    //        e.Row.Attributes.Add("style", "height:22px;background-color:#ffffff");

    //    }
    //    if (e.Row.RowType == DataControlRowType.Header)
    //    {
    //        e.Row.Attributes.Add("style", "background-image:url('../image/ht_10.gif');height:22px");
    //    }
    }
    protected void gvcourse_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        roomBook obj = new roomBook();
        int i = roomBook.updateRecord(" update roombook set review='true' where bookid=" + e.CommandArgument.ToString());
        int j = roomBook.updateRecord(" update roombook set adminname='管理员' where bookid=" + e.CommandArgument.ToString());
        if (i == 1 & j == 1)
        {
            ComTool.Alert("审核成功！");
            BindData1();
            ComTool.Redirect("bookreview.aspx");
        }
        else
        {
            ComTool.Alert("审核失败！");
            ComTool.Redirect("bookreview.aspx");
        }

    }

}
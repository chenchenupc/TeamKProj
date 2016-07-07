using System;
using System.Collections.Generic;
using System.Web;
using System.Data;

/// <summary>
///Admin 的摘要说明
/// </summary>
public class Admin
{
    public Admin()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    public string adminname;
    public string adminkey;
    public string adminphone;

    public static bool ifLogin(Admin obj)
    {
        bool blRet = true;
        string strSQL = "select * from admin where adminname='" + obj.adminname + "' "
            + " and adminkey='" + obj.adminkey + "'";
        DataTable dt = DBOper.execQueryBySQLText(strSQL);
        try
        {
            if (dt.Rows.Count > 0)
            {
                blRet = true;
            }
            else
            {
                blRet = false;
            }
        }
        catch
        {
            blRet = false;
        }
        return blRet;
    }

    public static DataTable selectDataTable(Admin obj)
    {
        string strSQL = "select * from admin where 1=1 ";
        if (obj.adminname != "" && obj.adminname != null)
            strSQL = strSQL + "and adminname='" + obj.adminname + "'";

        DataTable dt = DBOper.execQueryBySQLText(strSQL);

        return dt;
    }

    public static int insertRecord(Admin obj)
    {
        string strSQL = "insert into admin(adminname,adminkey,adminphone) values('" + obj.adminname + "','" + obj.adminkey + "','" + obj.adminphone + "'";
        int iRet = DBOper.execNonQueryBySQLText(strSQL);
        return iRet;
    }
    public static int deleteRecord(Admin obj)
    {
        string strSQL = "delete from admin where adminid='" + obj.adminname + "'";
        int iRet = DBOper.execNonQueryBySQLText(strSQL);
        return iRet;
    }

}

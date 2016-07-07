using System;
using System.Collections.Generic;
using System.Web;
using System.Data;

/// <summary>
///Users 的摘要说明
/// </summary>
public class myUser
{
	public myUser()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public string username;
    public string userkey;
    public string userphone;

    public static bool ifLogin(myUser obj)
    {
        bool blRet = true;
        string strSQL = "select * from myuser where username='" + obj.username + "' "
            + " and userkey='"+obj.userkey+"'";
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

    public static DataTable selectDataTable(myUser obj)
    {
        string strSQL = "select * from myuser where 1=1 ";
        if (obj.username != "" && obj.username != null)
            strSQL = strSQL + "and username='" + obj.username + "'";

        DataTable dt = DBOper.execQueryBySQLText(strSQL);

        return dt;
    }

    public static int insertRecord(myUser obj)
    {
        string strSQL = "insert into myuser(username,userkey,userphone) values('"+obj.username+"','"+obj.userkey+"','"+obj.userphone +"')";
        int iRet = DBOper.execNonQueryBySQLText(strSQL);
        return iRet;
    }
    public static int deleteRecord(myUser obj)
    {
        string strSQL = "delete from myuser where userid='"+ obj.username + "'";
        int iRet = DBOper.execNonQueryBySQLText(strSQL);
        return iRet;
    }
    
}

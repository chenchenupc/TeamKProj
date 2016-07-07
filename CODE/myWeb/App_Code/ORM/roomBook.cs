using System;
using System.Collections.Generic;
using System.Web;
using System.Data;

/// <summary>
///Users 的摘要说明
/// </summary>
public class roomBook
{
    public roomBook()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public string roomid;
    public string username;
    public string adminname;
    public bool review;
    public DateTime begintime;
    public DateTime endtime;


    public static bool ifLogin(myUser obj)
    {
        bool blRet = true;
        string strSQL = "select * from myuser where username='" + obj.username + "' "
            + " and userkey='" + obj.userkey + "'";
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

    public static DataTable selectDataTable(roomBook obj)
    {
       string strSQL = "select roomid,roomnum from room where roomid in(select roomid from roombook where ( datediff(s,begintime, '"+obj.begintime+"' )<0)and(datediff(s,endtime,'"+obj.begintime+"')>0)and (datediff(s,begintime,'"+obj.endtime+"')<0) and (datediff(s,endtime,'"+obj.endtime+"')>0))";
        //string strSQL = "select * from room where roomid in (select)"
        //string strSQL = "select * from room where 1=1 ";
        //if (obj.begintime != "" && obj.username != null)
        //    strSQL = strSQL + "and ='" + obj.username + "'";
       //string strSQL = "select roomid,roomnum from room";
        DataTable dt = DBOper.execQueryBySQLText(strSQL);

        return dt;
    }
    public static DataTable selectDataTable1()
    {
        string strSQL = "select* from roombook";
        DataTable dt = DBOper.execQueryBySQLText(strSQL);
        return dt;
    }
    public static int insertRecord(roomBook obj)
    {
        string strSQL = "insert into roombook(username,roomid,begintime,endtime) values('" + obj.username + "','" + obj.roomid + "','" + obj.begintime + "','" + obj.endtime + "')";
        int iRet = DBOper.execNonQueryBySQLText(strSQL);
        return iRet;
    }
    public static int deleteRecord(roomBook obj)
    {
        string strSQL = "delete from roombook where username='"+ obj.username + "' and roomid = '"+ obj.roomid +"' and begintime = '"+ obj.begintime +"' and endtime = '"+ obj.endtime +"'"  ;
        int iRet = DBOper.execNonQueryBySQLText(strSQL);
        return iRet;
    }
    public static int updateRecord(string strSQL)
    {
        int iRet = DBOper.execNonQueryBySQLText(strSQL);
        return iRet;
    }
   
}

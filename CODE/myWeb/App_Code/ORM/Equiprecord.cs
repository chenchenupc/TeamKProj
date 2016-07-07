using System;
using System.Collections.Generic;
using System.Web;
using System.Data;

/// <summary>
///Users 的摘要说明
/// </summary>
public class Equiprecord
{
    public Equiprecord()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public Int64 equipid;
    public string adminname;
    public DateTime recorddate;




    public static int insertRecord(Equiprecord obj)
    {
        string strSQL = "insert into equiprecord(equipid,adminname,recorddate) values('" + obj.equipid + "','" + obj.adminname + "','" + obj.recorddate + "')";
        int iRet = DBOper.execNonQueryBySQLText(strSQL);
        return iRet;
    }
   
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
 using System.Data;
using System.Configuration;
using System.Web; 
using System.Data.Sql;
using System.Data.SqlClient;

namespace DAL
{  /// <summary>
        ///数据库服务助手类
        /// </summary> 
    public class SqlHelper
    {
      
            //获取数据库连接字符串，其属于静态变量且只读，项目中所有文档可以直接使用，但不能修改
            public static readonly string ConnectionStringLocalTransaction =
             ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
            //ConfigurationManager.AppSettings["DBConnectionKey"].ToString();
            public  SqlConnection CreateConnetion(){
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConnectionStringLocalTransaction;
                if (conn.State == ConnectionState.Closed)
                { conn.Open(); }
                return conn;
            }

            ///<summary>
            /// 查询数据是否存在
            /// </summary>
            /// <param name="sqlstr">操作语句</param>
            /// <returns></returns>
            public  int ScanData(string sqlstr)
            {
                SqlConnection conn = CreateConnetion();
                if (conn.State == ConnectionState.Closed)
                { conn.Open(); }
                SqlCommand comm = new SqlCommand(sqlstr, conn);
                return Convert.ToInt32(comm.ExecuteScalar());
            }

            /// <summary>
            /// 
            /// </summary>
            /// <returns></returns>
            public SqlDataAdapter GetDataAdapter(string strSql)
            {
                SqlConnection conn = CreateConnetion();
                if (conn.State == ConnectionState.Closed)
                { conn.Open(); }
                SqlDataAdapter da = new SqlDataAdapter(strSql, conn);
                return da;
            }
            /// <summary>
            ///  用来查询记录，以SqlDataReader对象形式返回
            /// </summary>
            /// <param name="sqlstr"></param>
            /// <returns></returns>
            public SqlDataReader GetDataReader(string sqlstr)
            { 
                SqlConnection conn = CreateConnetion();
                SqlCommand comm = new SqlCommand(sqlstr, conn);
                SqlDataReader dr = comm.ExecuteReader();
                return dr;
            }
            /// <summary>
            /// 用来查询记录，以DataSet对象形式返回
            /// </summary>
            /// <param name="sqlstr"></param>
            /// <returns></returns>
            public DataSet GetdataSet(string sqlstr)
            {
                SqlConnection conn = CreateConnetion();
                SqlDataAdapter da = new SqlDataAdapter(sqlstr, conn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }

            /// <summary>
            /// 执行Sql命令
            /// </summary>
            /// <param name="strSql">查询字符串</param>
            /// <returns></returns>
            public  void ExCommand(string strSql)
            {
                SqlConnection conn = CreateConnetion();
                SqlTransaction st = conn.BeginTransaction();
                if (conn.State == ConnectionState.Closed)
                { conn.Open(); }
                SqlCommand comm = conn.CreateCommand();
                comm.Transaction = st;
                try
                {
                    comm.CommandText = strSql;
                    comm.ExecuteNonQuery();
                    conn.Close();
                    comm.Dispose();
                }
                catch
                {
                    st.Rollback();
                }
                finally { }
            }

            /// <summary>
            /// 返回DataRowView对象
            /// </summary>
            /// <returns></returns>
            public DataRowView GetTableValue(string strSql)
            {
                SqlConnection conn = CreateConnetion();
                if (conn.State == ConnectionState.Closed)
                { conn.Open(); }
                SqlDataAdapter da = new SqlDataAdapter(strSql, conn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DataRowView drv = ds.Tables["table"].DefaultView[0];
                return drv;
            }

            /// <summary>
            /// 返回DataRowView对象
            /// </summary>
            /// <returns></returns>
            public DataRowView GetTableValue(DataSet ds)
            {
                DataRowView drv = ds.Tables["table"].DefaultView[0];
                return drv;
            }


            /// <summary>
            /// 执行Sql命令,并返受影响行数
            /// </summary>
            /// <param name="strSql">查询字符串</param>
            /// <returns></returns>
            public int ExcuteCommandInt(string strSql)
            {
                int counter = 0;
                SqlConnection conn = CreateConnetion();
                SqlTransaction st = conn.BeginTransaction();
                if (conn.State == ConnectionState.Closed)
                { conn.Open(); }
                SqlCommand comm = conn.CreateCommand();
                comm.Transaction = st;
                try
                {
                    comm.CommandText = strSql;
                    counter = comm.ExecuteNonQuery();
                    st.Commit();//提交事务
                    conn.Close();
                    comm.Dispose();
                    return counter;
                }
                catch
                {
                    st.Rollback();//事务回滚
                    return counter;
                }
            }
            /*

            //public int ExcuteParamCommand( string storeName, string Param,string paramValue)
            //{
            //    try
            //    {
            //        SqlConnection conn = CreateConnetion();
            //        SqlTransaction st = conn.BeginTransaction();

            //        SqlCommand comm = new SqlCommand(storeName, conn);
            //        comm.Transaction = st;
            //        comm.CommandType = CommandType.StoredProcedure;
            //        comm.Parameters.Add(Param, SqlDbType.VarChar).Value = paramValue;
            //        return (int)comm.ExecuteNonQuery();
            //    }
            //    catch
            //    { }
            //}

            public int ParamScanData(string Param, string storeName, string paramValue)
            {
                SqlConnection conn = CreateConnetion();
                SqlCommand comm = new SqlCommand(storeName, conn);
                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.Add(Param, SqlDbType.VarChar).Value = paramValue;
                int counter = Convert.ToInt32(comm.ExecuteScalar());
                comm.Parameters.Clear();
                return counter;
            }

            public int ParamScanDataTwo(string Param1, string storeName, string paramValue1, string Param2, string paramValue2)
            {
                SqlConnection conn = CreateConnetion();
                SqlCommand comm = new SqlCommand(storeName, conn);
                comm.CommandType = CommandType.StoredProcedure;

                comm.Parameters.Add(Param1, SqlDbType.VarChar).Value = paramValue1;
                comm.Parameters.Add(Param2, SqlDbType.VarChar).Value = paramValue2;

                int counter = Convert.ToInt32(comm.ExecuteScalar());
                comm.Parameters.Clear();
                return counter;
            }

            public SqlDataReader ParamGetDataReader(string Param, string storeName, string paramValue)
            {
                SqlConnection conn = CreateConnetion();
                SqlCommand comm = new SqlCommand(storeName, conn);

                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.Add(Param, SqlDbType.VarChar).Value = paramValue;
                SqlDataReader dr = comm.ExecuteReader();
                comm.Parameters.Clear();
                return dr;
            }
            /// 执行查询存储过程
            /// </summary>
            /// <param name="strproc">存储过程名称</param>
            /// <returns></returns>
            public DataSet ParamGetDataSet(string Param, string storeName, string paramValue, string Table)
            {
                SqlConnection conn = CreateConnetion();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = storeName;
                comm.CommandType = CommandType.StoredProcedure;
                SqlParameter sqlParam = new SqlParameter(Param, SqlDbType.VarChar);
                sqlParam.Value = paramValue;
                comm.Parameters.Add(sqlParam);

                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = comm;
                DataSet ds = new DataSet();
                da.Fill(ds, Table);
                comm.Parameters.Clear();
                return ds;
            }
            /// <summary>
            /// 
            /// </summary>
            /// <param name="Param"></param>
            /// <param name="storeName"></param>
            /// <param name="paramValue"></param>
            /// <param name="Param2"></param>
            /// <param name="paramValue2"></param>
            /// <returns></returns>
            public DataSet ParamGetDataSet(string Param1, string storeName, string paramValue1, string Param2, string paramValue2, string Table)
            {
                SqlConnection conn = CreateConnetion();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = storeName;
                comm.CommandType = CommandType.StoredProcedure;

                //comm.Parameters.Add(Param1, SqlDbType.Int).Value = paramValue1;
                //comm.Parameters.Add(Param2, SqlDbType.VarChar).Value = paramValue2;


                SqlParameter sqlParam1 = new SqlParameter(Param1, SqlDbType.Int);
                //sqlParam1.Direction = ParameterDirection.InputOutput;
                sqlParam1.Value = paramValue1;
                comm.Parameters.Add(sqlParam1);

                SqlParameter sqlParam2 = new SqlParameter(Param2, SqlDbType.VarChar);
                //sqlParam2.Direction = ParameterDirection.InputOutput;
                sqlParam2.Value = paramValue2;
                comm.Parameters.Add(sqlParam2);


                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = comm;
                DataSet ds = new DataSet();
                da.Fill(ds, Table);
                comm.Parameters.Clear();
                return ds;
            }
            ///// <summary>
            ///// 
            ///// </summary>
            ///// <param name="Param"></param>
            ///// <param name="storeName"></param>
            ///// <param name="paramValue"></param>
            ///// <param name="Param2"></param>
            ///// <param name="paramValue2"></param>
            ///// <returns></returns>
            //public DataSet ParamGetDataSet(string storeName, string Param1, string paramValue1,SqlDbType type1,string Param2, string paramValue2,SqlDbType type2,string Param3, string paramValue3,SqlDbType type3)
            //{
            //    SqlConnection conn = CreateConnetion();
            //    SqlCommand comm = new SqlCommand();
            //    comm.Connection = conn;
            //    comm.CommandText = storeName;
            //    comm.CommandType = CommandType.StoredProcedure;

            //    SqlParameter sqlParam = new SqlParameter(Param1,type1);
            //    sqlParam.Value = paramValue1;
            //    comm.Parameters.Add(sqlParam);

            //    sqlParam = new SqlParameter(Param2, type2);
            //    sqlParam.Value = paramValue2;
            //    comm.Parameters.Add(sqlParam);

            //    sqlParam = new SqlParameter(Param3,type3);
            //    sqlParam.Value = paramValue3;
            //    comm.Parameters.Add(sqlParam);

            //    SqlDataAdapter da = new SqlDataAdapter();
            //    da.SelectCommand = comm;
            //    DataSet ds = new DataSet();
            //    da.Fill(ds);
            //    comm.Parameters.Clear();
            //    return ds;
            //}


            public DataRowView ParamGetDataRowView(string Param, string storeName, string paramValue, string tabel)
            {
                SqlConnection conn = CreateConnetion();
                SqlCommand comm = new SqlCommand();
                comm.Connection = conn;
                comm.CommandText = storeName;
                comm.CommandType = CommandType.StoredProcedure;
                SqlParameter sqlParam = new SqlParameter(Param, SqlDbType.VarChar);
                sqlParam.Value = paramValue;
                comm.Parameters.Add(sqlParam);

                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = comm;
                DataSet ds = new DataSet();
                da.Fill(ds);

                DataRowView drv = ds.Tables[tabel].DefaultView[0];
                comm.Parameters.Clear();
                return drv;
            }
         


            /// <summary>
            ///执行一个不需要返回值的SqlCommand命令，通过指定专用的连接字符串。
            /// 使用参数数组形式提供参数列表 
            /// </summary>
            /// <remarks>
            /// 使用示例：
            ///  int result = ExecuteNonQuery(connString, CommandType.StoredProcedure, "PublishOrders", new SqlParameter("@prodid", 24));
            /// </remarks>
            /// <param name="connectionString">一个有效的数据库连接字符串</param>
            /// <param name="commandType">SqlCommand命令类型 (存储过程， T-SQL语句， 等等。)</param>
            /// <param name="commandText">存储过程的名字或者 T-SQL 语句</param>
            /// <param name="commandParameters">以数组形式提供SqlCommand命令中用到的参数列表</param>
            /// <returns>返回一个数值表示此SqlCommand命令执行后影响的行数</returns>
            public static int ExecuteNonQuery(string connectionString, CommandType cmdType, string cmdText, params SqlParameter[] commandParameters)
            {

                SqlCommand cmd = new SqlCommand();

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    //通过PrePareCommand方法将参数逐个加入到SqlCommand的参数集合中
                    PrepareCommand(cmd, conn, null, cmdType, cmdText, commandParameters);
                    int val = cmd.ExecuteNonQuery();

                    //清空SqlCommand中的参数列表
                    cmd.Parameters.Clear();
                    return val;
                }
            }

            /// <summary>
            /// 执行一条返回结果集的SqlCommand命令，通过专用的连接字符串。
            /// 使用参数数组提供参数
            /// </summary>
            /// <remarks>
            /// 使用示例：  
            ///  SqlDataReader r = ExecuteReader(connString, CommandType.StoredProcedure, "PublishOrders", new SqlParameter("@prodid", 24));
            /// </remarks>
            /// <param name="connectionString">一个有效的数据库连接字符串</param>
            /// <param name="commandType">SqlCommand命令类型 (存储过程， T-SQL语句， 等等。)</param>
            /// <param name="commandText">存储过程的名字或者 T-SQL 语句</param>
            /// <param name="commandParameters">以数组形式提供SqlCommand命令中用到的参数列表</param>
            /// <returns>返回一个包含结果的SqlDataReader</returns>
            public static SqlDataReader ExecuteReader(string connectionString, CommandType cmdType, string cmdText, params SqlParameter[] commandParameters)
            {
                SqlCommand cmd = new SqlCommand();
                SqlConnection conn = new SqlConnection(connectionString);

                // 在这里使用try/catch处理是因为如果方法出现异常，则SqlDataReader就不存在，
                //CommandBehavior.CloseConnection的语句就不会执行，触发的异常由catch捕获。
                //关闭数据库连接，并通过throw再次引发捕捉到的异常。
                try
                {
                    PrepareCommand(cmd, conn, null, cmdType, cmdText, commandParameters);
                    SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                    cmd.Parameters.Clear();
                    return rdr;
                }
                catch
                {
                    conn.Close();
                    throw;
                }
            }

            ///<summary>
            /// 执行一条返回第一条记录第一列的SqlCommand命令，通过专用的连接字符串。 
            /// 使用参数数组提供参数
            /// </summary>
            /// <remarks>
            /// 使用示例：  
            ///  Object obj = ExecuteScalar(connString, CommandType.StoredProcedure, "PublishOrders", new SqlParameter("@prodid", 24));
            /// </remarks>
            /// <param name="connectionString">一个有效的数据库连接字符串</param>
            /// <param name="commandType">SqlCommand命令类型 (存储过程， T-SQL语句， 等等。)</param>
            /// <param name="commandText">存储过程的名字或者 T-SQL 语句</param>
            /// <param name="commandParameters">以数组形式提供SqlCommand命令中用到的参数列表</param>
            /// <returns>返回一个object类型的数据，可以通过 Convert.To{Type}方法转换类型</returns>
            public static object ExecuteScalar(string connectionString, CommandType cmdType, string cmdText, params SqlParameter[] commandParameters)
            {
                SqlCommand cmd = new SqlCommand();

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    PrepareCommand(cmd, connection, null, cmdType, cmdText, commandParameters);
                    object val = cmd.ExecuteScalar();
                    cmd.Parameters.Clear();
                    return val;
                }
            }



            /// <summary>
            /// 为执行命令准备参数
            /// </summary>
            /// <param name="cmd">SqlCommand 命令</param>
            /// <param name="conn">已经存在的数据库连接</param>
            /// <param name="trans">数据库事物处理</param>
            /// <param name="cmdType">SqlCommand命令类型 (存储过程， T-SQL语句， 等等。)</param>
            /// <param name="cmdText">Command text，T-SQL语句 例如 Select * from Products</param>
            /// <param name="cmdParms">返回带参数的命令</param>
            private static void PrepareCommand(SqlCommand cmd, SqlConnection conn, SqlTransaction trans, CommandType cmdType, string cmdText, SqlParameter[] cmdParms)
            {

                //判断数据库连接状态
                if (conn.State != ConnectionState.Open)
                    conn.Open();

                cmd.Connection = conn;
                cmd.CommandText = cmdText;

                //判断是否需要事物处理
                if (trans != null)
                    cmd.Transaction = trans;

                cmd.CommandType = cmdType;

                if (cmdParms != null)
                {
                    foreach (SqlParameter parm in cmdParms)
                        cmd.Parameters.Add(parm);
                }
            }
            */
        } 
}

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AdminPortal.HelperCode.Common
{
    public class DAL
    {
        public static DataTable getTable(string query)
        {
            // Initialization.
            string strConn = "Data Source=zoocompanionwebapidbserver.database.windows.net;Initial Catalog=ZooCompanionWebApi_db;Persist Security Info=True;User ID=zooadmin;Password=Elephant!34";
            SqlConnection sqlConnection = new SqlConnection(strConn);
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqlAdapter;
            DataTable tbl = new DataTable();

            try
            {
                // Open.  
                sqlConnection.Open();

                // Settings.  
                sqlCommand.CommandText = query;
                sqlCommand.CommandType = CommandType.Text;
                sqlCommand.Connection = sqlConnection;
                sqlCommand.CommandTimeout = 12 * 3600; //// Setting timeeout for longer queries to 12 hours.  

                // Result.  
                sqlAdapter = new SqlDataAdapter(sqlCommand);
                sqlAdapter.Fill(tbl);

                // Close.  
                sqlConnection.Close();

                return tbl;
            }
            catch (Exception ex)
            {
                // Close.  
                sqlConnection.Close();

                throw ex;
            }
        }
        public static int getCount(string query)
        {
            // Initialization.  
            int count = 0;
            string strConn = "Data Source=zoocompanionwebapidbserver.database.windows.net;Initial Catalog=ZooCompanionWebApi_db;Persist Security Info=True;User ID=zooadmin;Password=Elephant!34";
            SqlConnection sqlConnection = new SqlConnection(strConn);
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqlAdapter;
            DataTable tbl = new DataTable();

            try
            {
                // Open.  
                sqlConnection.Open();

                // Settings.  
                sqlCommand.CommandText = query;
                sqlCommand.CommandType = CommandType.Text;
                sqlCommand.Connection = sqlConnection;
                sqlCommand.CommandTimeout = 12 * 3600; //// Setting timeeout for longer queries to 12 hours.  

                // Result.  
                sqlAdapter = new SqlDataAdapter(sqlCommand);
                sqlAdapter.Fill(tbl);
                sqlCommand.Dispose();

                // Close.  
                sqlConnection.Close();

                return count = tbl.Rows.Count;
            }
            catch (Exception ex)
            {
                // Close.  
                sqlConnection.Close();

                throw ex;
            }
        }

        public static int executeQuery(string query)
        {
            // Initialization.  
            int rowCount = 0;
            string strConn = "Data Source=zoocompanionwebapidbserver.database.windows.net;Initial Catalog=ZooCompanionWebApi_db;Persist Security Info=True;User ID=zooadmin;Password=Elephant!34";
            SqlConnection sqlConnection = new SqlConnection(strConn);
            SqlCommand sqlCommand = new SqlCommand();

            try
            {
                // Settings.  
                sqlCommand.CommandText = query;
                sqlCommand.CommandType = CommandType.Text;
                sqlCommand.Connection = sqlConnection;
                sqlCommand.CommandTimeout = 12 * 3600; //// Setting timeeout for longer queries to 12 hours.  

                // Open.  
                sqlConnection.Open();
                
                // Result.  
                rowCount = sqlCommand.ExecuteNonQuery();

                // Close.  
                sqlConnection.Close();
            }
            catch (Exception ex)
            {
                // Close.  
                sqlConnection.Close();

                throw ex;
            }

            return rowCount;
        }
    }
}
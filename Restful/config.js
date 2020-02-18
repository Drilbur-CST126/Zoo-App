/*In addition to being able to use a simple configuration object ...
{
  database: "db_name",
  server: "server_name",
  driver: "msnodesqlv8",
  options: {
    trustedConnection: true
  }
}
... there is an option to pass config as a connection string. 
Two formats of connection string are supported.
 
Server=localhost,1433;Database=database;User Id=username;Password=password;Encrypt=true
Driver=msnodesqlV8;Server=(local)\INSTANCE;Database=database;UID=DOMAIN\username;PWD=password;Encrypt=true
Driver=msnodesqlv8;Server=(local)\INSTANCE;Database=database;UID=DOMAIN\username;PWD=password;Encrypt=true
or 
//mssql://username:password@localhost:1433/database?encrypt=true
//mssql://username:password@localhost/INSTANCE/database?encrypt=true&domain=DOMAIN&driver=msnodesql
//mssql://username:password@localhost/INSTANCE/database?encrypt=true&domain=DOMAIN&driver=msnodesqlv8
*/
var config = {
  production: {
     driver: 'msnodesqlv8',
     connectionString: 'Driver=SQL Server Native Client 11.0;Server=MyServerName;Database=MyDatabase;UID=MyUserName;PWD=MyPassword'
     },
  development: {
     driver: 'msnodesqlv8',
     connectionString: 'Driver=SQL Server Native Client 11.0;Server=ServerName;Database=MyDatabase;Trusted_Connection=yes'
     }
 
};
module.exports = config;
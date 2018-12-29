string connectionString = @"Server=<ipAddress>;Database=<DBName>;User Id=<username>;Password=<password>;Trusted_Connection=true";
string databaseTable = "<yourDBTableName>";
string referenceAccountNumber = "0001134919";
string selectQuery = String.Format("SELECT * FROM {0} WHERE [Account_Number] = '{1}' ", databaseTable, referenceAccountNumber);
        try
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {                   
                //open connection
                connection.Open();

                SqlCommand command = new SqlCommand(selectQuery, connection);

                command.Connection = connection;
                command.CommandText = selectQuery;
                var result = command.ExecuteReader();
        //check if account exists
                var exists = result.HasRows;
            }
        }
        catch (Exception exception)
        {
            #region connection error
            AlertDialog.Builder connectionException = new AlertDialog.Builder(this);
            connectionException.SetTitle("Connection Error");
            connectionException.SetMessage(exception.ToString());
            connectionException.SetNegativeButton("Return", delegate { });
            connectionException.Create();
            connectionException.Show();
            #endregion
        }`
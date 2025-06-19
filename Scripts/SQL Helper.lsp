
(reference "Microsoft.Data.SqlClient") 
(using "System.Data"  
       "Microsoft.Data.SqlClient")

(defparam *connection-string* 
          "Server=cpbsql.database.windows.net,1433;Database=Sandbox;User ID=cpbappservice;Password=CpB.4pp.$ervice;")
  
(defmacro with-sql-connection (connection &body statements)
  `(with (,connection (new SqlConnection *connection-string*))
     (Open ,connection)
     ,@statements))

(defun execute-reader (connection row-processor sql-text)
  (with (command (new SqlCommand))
    (= command.Connection  connection
       command.CommandType CommandType.Text
       command.CommandText sql-text)
    (let reader (command.ExecuteReader)
      (while (reader.Read)             
        (row-processor reader)))))

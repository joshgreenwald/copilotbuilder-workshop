
(load "SQL Helper")

;; Pass along incoming prompt to the output 
(prl (ToString *message*))  

;; Function to process one ingredient row 
(defun add-ingredient (reader)   
  (let ((ingredient (reader.GetString 0))
        (quantity (reader.GetDecimal 1))
        (unit (reader.GetString 2)))
    (prl (String.Format "* {0}: {1} {2}" ingredient (Math.Round quantity 2) unit))))     
	
;; Append the ingredients list 
(prl "\n[Available Ingredients]") 

(with-sql-connection connection 
  (execute-reader connection #'add-ingredient
    "SELECT [Name], Quantity, Unit FROM dbo.Ingredients" ))
	
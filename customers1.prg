*- CUSTOMERS1.FMT
*  Basic customer report (report b�sico de clientes)
*

CLOSE ALL
CLEAR ALL
CLEAR

SET PROCEDURE TO VDP


SELECT * ;
  FROM Customers ;
 ORDER BY CustID ;
  INTO CURSOR qCustomers
  
SELECT qCustomers
GO TOP
  
LOCAL oDP
oDP=CREATEOBJECT("VFPDosPrint")
oDP.PrintFormat="CUSTOMERS1.FMT"
oDP.Run()

*oDP.PrintToFile("OUT.TXT")
oDP.Print("PDFCreator")
*MODIFY FILE OUT.TXT

RELEASE oDP
CLOSE ALL

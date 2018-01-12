$PBExportHeader$dce003_clicked.sra
$PBExportComments$Generated Application Object
forward
global type dce003_clicked from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type dce003_clicked from application
string appname = "dce003_clicked"
end type
global dce003_clicked dce003_clicked

on dce003_clicked.create
appname="dce003_clicked"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on dce003_clicked.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;/////////////////////////////////////////////////////////////////////
//Appeon Test Case for Appeon 2.5
//Test Content:DataWindow Event
//Designer: Deng weihua
//Date:		2003-06-09     
//Other:
/////////////////////////////////////////////////////////////////////
n_cst_config lnv_connect

if lnv_connect.of_Connect(SQLCA, lnv_connect.EN_SQL2000)=0 then
	Open(w_mdi)	
else
	MessageBox("Connection DB Failed", SQLCA.SQLErrText, StopSign!)
	Halt Close
end if

//// Profile AppeonTestCase
//SQLCA.DBMS = "MSS Microsoft SQL Server 6.x"
//SQLCA.Database = "AppeonTestCase"
//SQLCA.ServerName = "192.0.0.77"
//SQLCA.LogId = "appeon"
//SQLCA.AutoCommit = False
//SQLCA.DBParm = ""
//
//connect;
//if sqlca.sqlcode <> 0 then
//	MessageBox("Error","DataBase Connect Failed!")
//	halt Close
//else
//	open(w_mdi)
//end if
end event


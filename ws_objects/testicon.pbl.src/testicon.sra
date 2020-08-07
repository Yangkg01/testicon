$PBExportHeader$testicon.sra
$PBExportComments$Generated Application Object
forward
global type testicon from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type testicon from application
string appname = "testicon"
string themepath = "C:\Program Files (x86)\Appeon\PowerBuilder 19.0\IDE\theme"
string themename = "Do Not Use Themes"
boolean nativepdfvalid = false
boolean nativepdfincludecustomfont = false
string nativepdfappname = ""
long richtextedittype = 2
long richtexteditversion = 1
string richtexteditkey = ""
string appicon = "client.ico"
end type
global testicon testicon

on testicon.create
appname="testicon"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on testicon.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;//messagebox("Tips","Hello!")


// Profile EAS Demo DB V126
//SQLCA.DBMS = "ODBC"
//SQLCA.AutoCommit = False
//SQLCA.DBParm = "ConnectString='DSN=PB Demo DB V2019R3;UID=dba;PWD=sql'"

// Profile sql2000
SQLCA.DBMS = "SNC SQL Native Client(OLE DB)"
SQLCA.LogPass = "admin"
SQLCA.ServerName = "172.16.1.102"
SQLCA.LogId = "sa"
SQLCA.AutoCommit = False
SQLCA.DBParm = "Database='en_sql2000'"


connect;

open(w_1)
open(w_test)
//open(w_2)
end event

event close;disconnect;
end event


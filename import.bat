@ECHO OFF
ECHO ##############################################
ECHO ###              IMPORT @XE                ###
ECHO ##############################################

C:\oraclexe\app\oracle\product\11.2.0\server\bin\imp system/admin1234@XE file=rec_exp.dmp fromuser=rec touser=rec
 
PAUSE
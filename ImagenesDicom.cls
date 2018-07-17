VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "ImagenesDicom"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Private Const sBase As String = "C:\dicomserver\data\dbase\DICOMImages.DBF"
Private sSelect As String
            
Public Function Hay(ByVal RUT As String, ByVal Fecha As String) As Integer
        Dim sConn As String
        Dim H As Long
        sConn = "DRIVER={Microsoft Visual FoxPro Driver};SourceType=DBF;SourceDB=" & _
                "C:\dicomserver\data\dbase\" & ";"
                sSelect = "SELECT COUNT(OBJECTFILE) AS DP FROM DICOMImages WHERE IMAGEPAT='" & _
            RUT & "' AND STUDYDATE='" & Fecha & "';"
        Dim dbConn As ADODB.Connection
        Dim Dt As ADODB.Recordset
        
        Set dbConn = New ADODB.Connection
        Set Dt = New ADODB.Recordset
        
        dbConn.Open (sConn)
        Call Dt.Open(sSelect, dbConn, adOpenUnspecified, adLockUnspecified, -1)
        
        Hay = Dt.Fields(0)
        Dt.Close
        dbConn.Close

End Function


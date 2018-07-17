VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "ImgDICOM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Function Count(ByVal RUT As String) As Long
    
    Dim iDIR As String
    
    iDIR = "C:\Dicomserver\Data"
    iDIR = iDIR & "\" & RUT
    If FileFolderExists(Carpeta, iDIR) = True Then
        Dim FSO As New Scripting.FileSystemObject
        Dim oFolder As Scripting.Folder
        Set oFolder = FSO.GetFolder(iDIR)
        Count = oFolder.Files.Count
    Else
        Count = 0
    End If
    
End Function



      Private Function TestFunc(ByVal lVal As Long) As Integer
      'this function is necessary since the value returned by Shell is an
      'unsigned integer and may exceed the limits of a VB integer
         If (lVal And &H8000&) = 0 Then
           TestFunc = lVal And &HFFFF&
         Else
           TestFunc = &H8000 Or (lVal And &H7FFF&)
         End If
      End Function
            
            
Function DcmToJpg(ByVal Ruta As String) As Boolean
    lRet& = Shell(App.Path & "\dcmj2pnm.Exe" & " +oj +Wm --scale-x-size 1024 " & Ruta & " " & Left(Ruta, Len(Ruta) - 3) & "jpg")       ' Modify the path as necessary.
        X% = TestFunc(lRet&)
        While GetModuleHandle(X%) > 0    ' Has Shelled program finished?
           Z% = DoEvents()              ' If not, yield to Windows.
        Wend
    
    DcmToJpg = True
    
End Function

Function Imagenes(ByVal RUT As String) As String()

    Dim iDIR As String
    
    iDIR = "C:\Dicomserver\Data"
    iDIR = iDIR & "\" & RUT

    Dim Fls, F1
    Dim tArray() As String
    Dim Count As Integer
    Dim FSO As New Scripting.FileSystemObject
    Dim oFolder As Scripting.Folder
    Dim N As Integer
    
    N = 0
    
    Set oFolder = FSO.GetFolder(iDIR)
    Set Fls = oFolder.Files
    
    Count = oFolder.Files.Count
    
    ReDim Preserve tArray(Count - 1)
    
    For Each F1 In Fls
        tArray(N) = F1.Path
        N = N + 1
    Next F1
    
    Imagenes = tArray
    
End Function

Function FileFolderExists(ByVal Tpo As TpoObj, ByVal Ruta As String) As Boolean
    Dim FSO As New Scripting.FileSystemObject
    
    Select Case Tpo
        Case 0
            If Not FSO.FileExists(Ruta) Then
                FileFolderExists = False
            Else
                FileFolderExists = True
            End If
        Case 1
            If Not FSO.FolderExists(Ruta) Then
                FileFolderExists = False
            Else
                FileFolderExists = True
            End If
    End Select
End Function


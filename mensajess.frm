VERSION 5.00
Begin VB.Form mensajess 
   Caption         =   "Enviar informe por mail"
   ClientHeight    =   5685
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   6060
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   12
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   Moveable        =   0   'False
   ScaleHeight     =   5685
   ScaleWidth      =   6060
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton Command1 
      Caption         =   "Aceptar"
      Height          =   495
      Left            =   4440
      TabIndex        =   6
      Top             =   5040
      Width           =   1335
   End
   Begin VB.CheckBox Check2 
      Caption         =   "Con copia a profesional referente"
      Height          =   375
      Left            =   1320
      TabIndex        =   5
      Top             =   4320
      Width           =   3975
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Incluir Imágenes de paciente"
      Height          =   375
      Left            =   1320
      TabIndex        =   4
      Top             =   3840
      Width           =   3495
   End
   Begin VB.TextBox Text2 
      Height          =   2655
      Left            =   1200
      TabIndex        =   2
      Top             =   1080
      Width           =   4575
   End
   Begin VB.TextBox Text1 
      Height          =   390
      Left            =   1200
      TabIndex        =   1
      Top             =   240
      Width           =   4455
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Mensaje"
      Height          =   270
      Left            =   240
      TabIndex        =   3
      Top             =   1080
      Width           =   885
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "E-Mail"
      Height          =   270
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   675
   End
End
Attribute VB_Name = "mensajess"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Function envia_email(correo As String, Optional TextoL As String) As Integer
    Dim IDICOM As New ImgDICOM
    Dim i As Integer
    Dim archJpg As String
    Dim DirIMG() As String
    Dim nImg As Long
    
Dim DirIMGjpg() As String

On Error Resume Next

envia_email = 0
Const cdoSendUsingPort = 465
Const cdoSMTPServer = "http://schemas.microsoft.com/cdo/configuration/smtpserver"
Const cdoSendUsingMethod = "http://schemas.microsoft.com/cdo/configuration/sendusing"

    Dim Obj_Email As CDO.Message
    Set Obj_Email = New CDO.Message
    Dim Img As Integer
    Dim m As Integer
    Dim CADENA As String
    Obj_Email.Configuration.Fields(cdoSMTPServer) = "smtp.gmail.com"
    Obj_Email.Configuration.Fields(cdoSendUsingMethod) = 2
   
    ' Puerto. Por defecto se usa el puerto 25, en el caso de Gmail se usan los puertos _
      465 o  el puerto 587 ( este último me dio error )
   
    Obj_Email.Configuration.Fields.Item _
        ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = cdoSendUsingPort
    Obj_Email.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/" & _
    "configuration/smtpauthenticate") = True
    Obj_Email.Configuration.Fields.Item _
        ("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 30
    Obj_Email.Configuration.Fields.Item _
        ("http://schemas.microsoft.com/cdo/configuration/sendusername") = "consultaecografica@gmail.com"
    Obj_Email.Configuration.Fields.Item _
        ("http://schemas.microsoft.com/cdo/configuration/sendpassword") = "rlagossandoval"
    Obj_Email.Configuration.Fields.Item _
        ("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = True

    ' *********************************************************************************
    ' Estructura del mail
    '**********************************************************************************
   
    Obj_Email.To = correo
    Obj_Email.From = "consultaecografica@gmail.com"
    Obj_Email.BCC = "consultaecografica@gmail.com"
    Obj_Email.Subject = "Informe Ecografico"
   
    ' Cuerpo del mensaje
    CADENA = "<HTML><HEAD></HEAD><BODY><strong>Consulta Medica de Dr. Rudecindo Lagos S.<BR>Servicio de envio privado de imágenes ecográficas</strong><BR>"
    CADENA = CADENA & "<P><strong>Paciente Srta(Sra): " & NombreP & "</strong><BR>"
    CADENA = CADENA & "Fecha de envío: " & FormatDateTime(Date, vbShortDate) & "</P><BR>"
    CADENA = CADENA & "<P>" & TextoL & "</P>"
    CADENA = CADENA & "<BR><P>---- ADVERTENCIA ---- La información contenida en este correo electrónico, " & _
            "y en su caso, cualquier fichero anexo al mismo, son de carácter privado y confidencial siendo para uso exclusivo de su destinatario. " & _
            "Si usted no es el destinatario correcto, el empleado o agente responsable de entregar el mensaje al destinatario, o ha recibido esta " & _
            "comunicación por error, le informamos que está totalmente prohibida cualquier divulgación, distribución o reproducción de esta comunicación " & _
            "según la legislación vigente y le rogamos que nos lo notifique inmediatamente, procediendo a su destrucción sin continuar su lectura.<P></BODY>"
 
    Obj_Email.HTMLBody = CADENA
    
    Img = 0
    i = 0
    Obj_Email.AddAttachment (adjuntt)
    If Check1.Value = 1 Then
        nImg = IDICOM.Count(RUT)
        Dim H As Integer
        H = 0
        If nImg > 0 Then
            DirIMG = IDICOM.Imagenes(RUT)
            For i = 0 To UBound(DirIMG)
                archJpg = Left(DirIMG(i), Len(DirIMG(i)) - 3) & "jpg"
                If Right(DirIMG(i), 3) <> "jpg" Then
                    ReDim Preserve DirIMGjpg(H)
                    DirIMGjpg(H) = archJpg
                    H = H + 1
                End If
            Next i
            
            For i = 0 To UBound(DirIMGjpg)
                archJpg = DirIMGjpg(i)
                If IDICOM.FileFolderExists(archivo, archJpg) = False Then
                Call IDICOM.DcmToJpg(Left(DirIMGjpg(i), Len(DirIMGjpg(i)) - 3) & "dcm")
                Call Sleep(1000)
                End If
            Next i
            
            For H = 0 To UBound(DirIMGjpg)
                Obj_Email.AddAttachment (DirIMGjpg(i))
            Next H
        End If
    End If
    
    


    Obj_Email.Configuration.Fields.Update
   
    On Error Resume Next
    Obj_Email.Send
   Unload Me
   
    If Err.Number = 0 Then
       envia_email = 1
    Else
        'Debug.Print Err.Number
        Select Case Err.Number
            Case -2147220973
                MsgBox " No hay conexión a internet. Proceso cancelado.", vbCritical, "Error al enviar correo"
                envia_email = 0
            Case -2147220979
                MsgBox " Debe introducir en el formulario de Información" & vbCrLf _
                    & "del Condominio, un email de GMail y una contraseña." & vbCrLf _
                    & "Proceso cancelado.", vbCritical, "Error al enviar correo"
                envia_email = 0
            Case -2147220975
                MsgBox " La dirección de correo del condominio y/o la contraseña" & vbCrLf _
                    & "no son correctas. Revise el formulario de condominio.", vbCritical, " No se envió el correo "
                envia_email = 0
        Case Else
            MsgBox Err.Description, vbCritical, " No se envió el correo. "
        End Select
    End If
   
    If Not Obj_Email Is Nothing Then
        Set Obj_Email = Nothing
    End If
   
    On Error GoTo 0
End Function


Private Sub Command1_Click()
    Dim hi As Integer
    hi = envia_email(Text1.Text, Text2.Text)
End Sub

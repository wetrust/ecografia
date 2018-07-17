VERSION 5.00
Begin VB.Form SobreFrm 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Impresion de Sobre Carta"
   ClientHeight    =   3600
   ClientLeft      =   45
   ClientTop       =   495
   ClientWidth     =   8340
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   12
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3600
   ScaleWidth      =   8340
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton Bn 
      Caption         =   "Cerrar"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   1
      Left            =   6840
      TabIndex        =   6
      Top             =   2880
      Width           =   1335
   End
   Begin VB.CommandButton Bn 
      Caption         =   "Imprimir"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   0
      Left            =   5040
      TabIndex        =   5
      Top             =   2880
      Width           =   1575
   End
   Begin VB.Frame DIV 
      BackColor       =   &H00B96629&
      BorderStyle     =   0  'None
      Height          =   1095
      Left            =   0
      TabIndex        =   4
      Top             =   2520
      Width           =   8415
   End
   Begin VB.Label lbl 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "17-11-1990"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   3
      Left            =   6840
      TabIndex        =   3
      Top             =   1680
      Width           =   1230
   End
   Begin VB.Label lbl 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "Fecha:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   2
      Left            =   5640
      TabIndex        =   2
      Top             =   1680
      Width           =   795
   End
   Begin VB.Label lbl 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "Nombre"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   1
      Left            =   1800
      TabIndex        =   1
      Top             =   600
      Width           =   915
   End
   Begin VB.Label lbl 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "Sra. (rta):"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   0
      Left            =   600
      TabIndex        =   0
      Top             =   600
      Width           =   1050
   End
End
Attribute VB_Name = "SobreFrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Option Compare Binary

Private Sub Bn_Click(Index As Integer)
    
    Select Case Index
        Case 0
            frmEcoObs.CR.Reset
            frmEcoObs.CR.ReportFileName = App.Path & "\Sobre.rpt"
            frmEcoObs.CR.Destination = crptToPrinter
            frmEcoObs.CR.Formulas(0) = "nombre2='" + lbl(1).Caption + "'"
            frmEcoObs.CR.Formulas(1) = "fecha='" + lbl(3).Caption + "'"
            frmEcoObs.CR.Action = 1
            frmEcoObs.SetFocus
            Unload Me
        Case 1
            frmEcoObs.SetFocus
            Unload Me
    End Select
    
End Sub

Sub Load(ByVal Fecha As Date)

    lbl(1).Caption = frmEcoObs.lbl(0).Caption
    lbl(3).Caption = Fecha
    
End Sub

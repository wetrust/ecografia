VERSION 5.00
Object = "{00028C01-0000-0000-0000-000000000046}#1.0#0"; "DBGRID32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Object = "{65E121D4-0C60-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCHRT20.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{FAEEE763-117E-101B-8933-08002B2F4F5A}#1.1#0"; "DBLIST32.OCX"
Begin VB.Form frmEcoObs 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  'None
   Caption         =   "Protocolo de Ecografía Obstétrica"
   ClientHeight    =   9090
   ClientLeft      =   45
   ClientTop       =   795
   ClientWidth     =   15045
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9090
   ScaleWidth      =   15045
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame div 
      BackColor       =   &H00B96629&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3495
      Index           =   20
      Left            =   120
      TabIndex        =   610
      Top             =   3000
      Visible         =   0   'False
      Width           =   14775
      Begin VB.CommandButton Bn 
         BackColor       =   &H00B96629&
         Caption         =   "Cancelar"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   11.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Index           =   64
         Left            =   12720
         TabIndex        =   624
         Top             =   2760
         Width           =   1335
      End
      Begin VB.TextBox P 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         DataField       =   "NomApllAcom"
         DataSource      =   "Dt(7)"
         Height          =   315
         Index           =   159
         Left            =   6480
         MaxLength       =   64
         TabIndex        =   623
         Top             =   1800
         Width           =   3975
      End
      Begin VB.TextBox P 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         DataField       =   "RUTAcom"
         DataSource      =   "Dt(7)"
         Height          =   315
         Index           =   158
         Left            =   2280
         MaxLength       =   10
         TabIndex        =   622
         Top             =   1800
         Width           =   1695
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "Ecografista"
         DataSource      =   "Dt(7)"
         Height          =   330
         Index           =   105
         ItemData        =   "frmEcoObs.frx":0000
         Left            =   7560
         List            =   "frmEcoObs.frx":0002
         TabIndex        =   621
         Top             =   1320
         Width           =   2895
      End
      Begin VB.TextBox P 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         DataField       =   "Mtvo"
         DataSource      =   "Dt(7)"
         Enabled         =   0   'False
         Height          =   315
         Index           =   157
         Left            =   2280
         TabIndex        =   620
         Top             =   1320
         Width           =   2895
      End
      Begin VB.CommandButton Bn 
         BackColor       =   &H00B96629&
         Caption         =   "Continuar"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Index           =   63
         Left            =   11280
         TabIndex        =   619
         Top             =   2760
         Width           =   1335
      End
      Begin VB.TextBox P 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         DataField       =   "MinRserv"
         DataSource      =   "Dt(7)"
         Enabled         =   0   'False
         Height          =   315
         Index           =   156
         Left            =   4680
         MaxLength       =   2
         TabIndex        =   618
         Top             =   840
         Width           =   495
      End
      Begin VB.TextBox P 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         DataField       =   "HoraRserv"
         DataSource      =   "Dt(7)"
         Enabled         =   0   'False
         Height          =   315
         Index           =   155
         Left            =   3960
         MaxLength       =   2
         TabIndex        =   617
         Top             =   840
         Width           =   495
      End
      Begin VB.TextBox P 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         DataField       =   "FchRserv"
         DataSource      =   "Dt(7)"
         Enabled         =   0   'False
         Height          =   315
         Index           =   154
         Left            =   2280
         TabIndex        =   616
         Top             =   840
         Width           =   1095
      End
      Begin VB.CheckBox Chk 
         BackColor       =   &H00B96629&
         Caption         =   "No"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   270
         Index           =   1
         Left            =   5040
         TabIndex        =   615
         Top             =   360
         Width           =   615
      End
      Begin VB.TextBox P 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         DataField       =   "MnCon"
         DataSource      =   "Dt(7)"
         Enabled         =   0   'False
         Height          =   315
         Index           =   153
         Left            =   9960
         MaxLength       =   2
         TabIndex        =   614
         Top             =   840
         Width           =   495
      End
      Begin VB.TextBox P 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         DataField       =   "HrsCon"
         DataSource      =   "Dt(7)"
         Enabled         =   0   'False
         Height          =   315
         Index           =   152
         Left            =   9240
         MaxLength       =   2
         TabIndex        =   613
         Top             =   840
         Width           =   495
      End
      Begin VB.TextBox P 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         DataField       =   "FchCon"
         DataSource      =   "Dt(7)"
         Enabled         =   0   'False
         Height          =   315
         Index           =   151
         Left            =   7560
         TabIndex        =   612
         Top             =   840
         Width           =   1095
      End
      Begin VB.CheckBox Chk 
         BackColor       =   &H00B96629&
         Caption         =   "No"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   270
         Index           =   8
         Left            =   3360
         TabIndex        =   611
         Top             =   2280
         Width           =   615
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00B96629&
         Caption         =   "Nombre"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   225
         Index           =   238
         Left            =   5400
         TabIndex        =   636
         Top             =   1845
         Width           =   675
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00B96629&
         Caption         =   "RUT del Acompañante"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   225
         Index           =   237
         Left            =   120
         TabIndex        =   635
         Top             =   1845
         Width           =   1875
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00B96629&
         Caption         =   "Ecografista autorizado"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   225
         Index           =   236
         Left            =   5400
         TabIndex        =   634
         Top             =   1365
         Width           =   1830
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00B96629&
         Caption         =   "Motivo de Ecografía"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   225
         Index           =   235
         Left            =   120
         TabIndex        =   633
         Top             =   1365
         Width           =   1590
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00B96629&
         Caption         =   "Hora"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   225
         Index           =   234
         Left            =   3480
         TabIndex        =   632
         Top             =   885
         Width           =   405
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00B96629&
         Caption         =   "Fecha de reserva"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   225
         Index           =   233
         Left            =   120
         TabIndex        =   631
         Top             =   885
         Width           =   1425
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00B96629&
         Caption         =   ":"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   225
         Index           =   232
         Left            =   4560
         TabIndex        =   630
         Top             =   885
         Width           =   45
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00B96629&
         Caption         =   "¿La paciente consiente el exámen actual?"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Index           =   231
         Left            =   120
         TabIndex        =   629
         Top             =   360
         Width           =   4770
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00B96629&
         Caption         =   "Hora"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   225
         Index           =   230
         Left            =   8760
         TabIndex        =   628
         Top             =   885
         Width           =   405
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00B96629&
         Caption         =   "Fecha de consentimiento"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   225
         Index           =   229
         Left            =   5400
         TabIndex        =   627
         Top             =   885
         Width           =   2085
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00B96629&
         Caption         =   ":"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   225
         Index           =   228
         Left            =   9840
         TabIndex        =   626
         Top             =   885
         Width           =   45
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00B96629&
         Caption         =   "¿Autoriza Utilizar datos para estudio?"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   225
         Index           =   241
         Left            =   120
         TabIndex        =   625
         Top             =   2280
         Width           =   3180
      End
   End
   Begin VB.Frame div 
      BackColor       =   &H00B96629&
      BorderStyle     =   0  'None
      Caption         =   "Consentimiento informado"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3495
      Index           =   21
      Left            =   120
      TabIndex        =   637
      Top             =   3000
      Visible         =   0   'False
      Width           =   14775
      Begin VB.CommandButton Bn 
         BackColor       =   &H00B96629&
         Caption         =   "No"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   11.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Index           =   62
         Left            =   7200
         TabIndex        =   639
         Top             =   2640
         Width           =   1335
      End
      Begin VB.CommandButton Bn 
         BackColor       =   &H00B96629&
         Caption         =   "Si"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Index           =   61
         Left            =   5760
         TabIndex        =   638
         Top             =   2640
         Width           =   1335
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00B96629&
         Caption         =   "FUR Fuera de rango según ecografía"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Index           =   239
         Left            =   120
         TabIndex        =   641
         Top             =   360
         Width           =   4215
      End
      Begin VB.Label lbl 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00B96629&
         Caption         =   "¿Desea ajustar la FUR?"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   435
         Index           =   240
         Left            =   5145
         TabIndex        =   640
         Top             =   1200
         Width           =   4035
      End
   End
   Begin VB.Frame div 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   7935
      Index           =   40
      Left            =   20000
      TabIndex        =   846
      Top             =   960
      Width           =   15015
      Begin VB.Data Dt 
         BackColor       =   &H00F4F4E8&
         Caption         =   "Recorrer Exámenes"
         Connect         =   "Access"
         DatabaseName    =   ""
         DefaultCursorType=   0  'DefaultCursor
         DefaultType     =   2  'UseODBC
         Exclusive       =   0   'False
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   9
         Left            =   9000
         Options         =   0
         ReadOnly        =   0   'False
         RecordsetType   =   1  'Dynaset
         RecordSource    =   ""
         Top             =   4920
         Width           =   3000
      End
      Begin VB.Frame div 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Información"
         Enabled         =   0   'False
         ForeColor       =   &H00B96629&
         Height          =   5440
         Index           =   41
         Left            =   240
         TabIndex        =   861
         Top             =   240
         Width           =   12700
         Begin VB.ComboBox Cbx 
            DataField       =   "econucal"
            DataSource      =   "Dt(1)"
            Height          =   330
            Index           =   18
            ItemData        =   "frmEcoObs.frx":0004
            Left            =   2040
            List            =   "frmEcoObs.frx":0011
            TabIndex        =   898
            Top             =   3600
            Width           =   1935
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "VegF"
            DataSource      =   "Dt(1)"
            Height          =   330
            Index           =   19
            ItemData        =   "frmEcoObs.frx":0036
            Left            =   2040
            List            =   "frmEcoObs.frx":0046
            TabIndex        =   897
            Top             =   5040
            Width           =   1935
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "nasal"
            DataSource      =   "Dt(1)"
            Height          =   330
            Index           =   20
            ItemData        =   "frmEcoObs.frx":007E
            Left            =   2040
            List            =   "frmEcoObs.frx":008B
            TabIndex        =   896
            Top             =   4080
            Width           =   1935
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "DVenoso"
            DataSource      =   "Dt(1)"
            Height          =   330
            Index           =   21
            ItemData        =   "frmEcoObs.frx":00B0
            Left            =   2040
            List            =   "frmEcoObs.frx":00C0
            TabIndex        =   895
            Top             =   4560
            Width           =   1935
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "mednucal"
            DataSource      =   "Dt(1)"
            Height          =   315
            Index           =   30
            Left            =   4080
            MaxLength       =   4
            TabIndex        =   894
            Top             =   3600
            Visible         =   0   'False
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "mednasal"
            DataSource      =   "Dt(1)"
            Height          =   315
            Index           =   34
            Left            =   4080
            MaxLength       =   4
            TabIndex        =   893
            Top             =   4080
            Visible         =   0   'False
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "egeco1"
            DataSource      =   "Dt(9)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   224
            Left            =   4560
            TabIndex        =   875
            Top             =   360
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "feco1"
            DataSource      =   "Dt(9)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   223
            Left            =   2400
            TabIndex        =   874
            Top             =   360
            Width           =   1215
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "N"
            DataSource      =   "Dt(9)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   222
            Left            =   840
            TabIndex        =   873
            Top             =   360
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "uti"
            DataSource      =   "Dt(9)"
            Height          =   315
            Index           =   217
            Left            =   1635
            MaxLength       =   4
            TabIndex        =   872
            Top             =   1725
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "utrgo"
            DataSource      =   "Dt(9)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   216
            Left            =   2205
            TabIndex        =   871
            Top             =   1725
            Width           =   820
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pctuti"
            DataSource      =   "Dt(9)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   215
            Left            =   3120
            TabIndex        =   870
            Top             =   1725
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "utd"
            DataSource      =   "Dt(9)"
            Height          =   315
            Index           =   214
            Left            =   1635
            MaxLength       =   4
            TabIndex        =   869
            Top             =   1245
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "utrgo"
            DataSource      =   "Dt(9)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   213
            Left            =   2205
            TabIndex        =   868
            Top             =   1245
            Width           =   820
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pctutd"
            DataSource      =   "Dt(9)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   212
            Left            =   3120
            TabIndex        =   867
            Top             =   1245
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "promut"
            DataSource      =   "Dt(9)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   211
            Left            =   1635
            TabIndex        =   866
            Top             =   2160
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "utrgo"
            DataSource      =   "Dt(9)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   210
            Left            =   2205
            TabIndex        =   865
            Top             =   2160
            Width           =   820
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pctpromut"
            DataSource      =   "Dt(9)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   209
            Left            =   3120
            TabIndex        =   864
            Top             =   2160
            Width           =   495
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "dopmat"
            DataSource      =   "Dt(9)"
            Height          =   330
            Index           =   126
            ItemData        =   "frmEcoObs.frx":00FA
            Left            =   5040
            List            =   "frmEcoObs.frx":0107
            TabIndex        =   863
            Top             =   2160
            Width           =   1935
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "Cxmm"
            DataSource      =   "Dt(9)"
            Height          =   315
            Index           =   200
            Left            =   5280
            MaxLength       =   2
            TabIndex        =   862
            Top             =   2760
            Width           =   495
         End
         Begin MSChart20Lib.MSChart MSC 
            Height          =   4575
            Index           =   5
            Left            =   6960
            OleObjectBlob   =   "frmEcoObs.frx":012A
            TabIndex        =   876
            Top             =   120
            Width           =   5685
         End
         Begin VB.Label Label5 
            BackColor       =   &H00FFFFFF&
            Caption         =   "3.- Tamizaje cromosomo y cardiopatía"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   908
            Top             =   3240
            Width           =   3255
         End
         Begin VB.Label Label2 
            BackColor       =   &H00FFFFFF&
            Caption         =   "2.- Evaluación cervicometría"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   907
            Top             =   2760
            Width           =   2415
         End
         Begin VB.Label Label1 
            BackColor       =   &H00FFFFFF&
            Caption         =   "1.- Tamizaje de arterias uterinas"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   120
            TabIndex        =   906
            Top             =   960
            Width           =   3135
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Translucencia Nucal"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   63
            Left            =   240
            TabIndex        =   904
            Top             =   3645
            Width           =   1695
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Reflujo Tricúspideo"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   64
            Left            =   240
            TabIndex        =   903
            Top             =   5085
            Width           =   1605
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Hueso Nasal"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   65
            Left            =   240
            TabIndex        =   902
            Top             =   4125
            Width           =   1095
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Ductus Venoso"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   66
            Left            =   240
            TabIndex        =   901
            Top             =   4605
            Width           =   1260
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   67
            Left            =   8760
            TabIndex        =   900
            ToolTipText     =   "Milï¿½metros"
            Top             =   3525
            Visible         =   0   'False
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   69
            Left            =   8760
            TabIndex        =   899
            ToolTipText     =   "Milï¿½metros"
            Top             =   4005
            Visible         =   0   'False
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00E0E0E0&
            Caption         =   "sem"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   389
            Left            =   5115
            TabIndex        =   889
            Top             =   405
            Width           =   300
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00E0E0E0&
            Caption         =   "EG Eco"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   388
            Left            =   3840
            TabIndex        =   888
            Top             =   405
            Width           =   615
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00E0E0E0&
            Caption         =   "Fecha"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   387
            Left            =   1680
            TabIndex        =   887
            Top             =   405
            Width           =   510
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00E0E0E0&
            Caption         =   "N° Eco"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   386
            Left            =   120
            TabIndex        =   886
            Top             =   405
            Width           =   555
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Ut derecha"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   381
            Left            =   240
            TabIndex        =   885
            Top             =   1290
            Width           =   900
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Ut izquierda"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   380
            Left            =   240
            TabIndex        =   884
            Top             =   1770
            Width           =   975
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Promedio"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   379
            Left            =   240
            TabIndex        =   883
            Top             =   2205
            Width           =   810
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Comentario"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   378
            Left            =   3960
            TabIndex        =   882
            Top             =   2205
            Width           =   975
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Largo Cervical"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   371
            Left            =   3960
            TabIndex        =   881
            Top             =   2760
            Width           =   1185
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   370
            Left            =   5880
            TabIndex        =   880
            Top             =   2880
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   369
            Left            =   3645
            TabIndex        =   879
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   1680
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   368
            Left            =   3645
            TabIndex        =   878
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   1200
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   348
            Left            =   3645
            TabIndex        =   877
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   2115
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Shape Shape 
            BackColor       =   &H00E0E0E0&
            BackStyle       =   1  'Opaque
            BorderStyle     =   0  'Transparent
            Height          =   615
            Index           =   1
            Left            =   75
            Top             =   240
            Width           =   5700
         End
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Grabar"
         Enabled         =   0   'False
         Height          =   375
         Index           =   114
         Left            =   13080
         TabIndex        =   860
         Top             =   1080
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         BackColor       =   &H00E0E0E0&
         Caption         =   "Modificar"
         Height          =   375
         Index           =   113
         Left            =   13080
         TabIndex        =   859
         Top             =   2040
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Salir"
         Height          =   735
         Index           =   112
         Left            =   13080
         Picture         =   "frmEcoObs.frx":2B2C
         Style           =   1  'Graphical
         TabIndex        =   858
         Top             =   6840
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Cancelar"
         Enabled         =   0   'False
         Height          =   375
         Index           =   111
         Left            =   13080
         TabIndex        =   857
         Top             =   1560
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Principal"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   110
         Left            =   13080
         TabIndex        =   856
         Top             =   3960
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Sobre"
         Height          =   375
         Index           =   106
         Left            =   13080
         TabIndex        =   855
         Top             =   5880
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Eliminar"
         Height          =   375
         Index           =   105
         Left            =   13080
         TabIndex        =   854
         Top             =   2520
         Width           =   1575
      End
      Begin VB.Data Dt 
         BackColor       =   &H00F4F4E8&
         Caption         =   "Recorrer Exámenes"
         Connect         =   "Access"
         DatabaseName    =   ""
         DefaultCursorType=   0  'DefaultCursor
         DefaultType     =   2  'UseODBC
         Exclusive       =   0   'False
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   8
         Left            =   9120
         Options         =   0
         ReadOnly        =   0   'False
         RecordsetType   =   1  'Dynaset
         RecordSource    =   ""
         Top             =   5120
         Width           =   3000
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Uterinas"
         Enabled         =   0   'False
         Height          =   375
         Index           =   104
         Left            =   8400
         TabIndex        =   853
         Top             =   4680
         Width           =   975
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Art. Umbilical"
         Height          =   375
         Index           =   103
         Left            =   9720
         TabIndex        =   852
         Top             =   4680
         Width           =   1095
      End
      Begin VB.CommandButton Bn 
         Caption         =   "C. Media"
         Height          =   375
         Index           =   66
         Left            =   11160
         TabIndex        =   851
         Top             =   4680
         Width           =   975
      End
      Begin VB.CheckBox Chk 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Evaluación Cervicometría"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   23
         Left            =   360
         TabIndex        =   850
         Top             =   3000
         Width           =   2535
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Ver Documento"
         Height          =   375
         Index           =   65
         Left            =   13080
         TabIndex        =   849
         Top             =   6360
         Width           =   1575
      End
      Begin VB.TextBox P 
         DataField       =   "ObsAdDopp"
         DataSource      =   "Dt(3)"
         Enabled         =   0   'False
         Height          =   2535
         Index           =   170
         Left            =   360
         MaxLength       =   247
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   848
         Top             =   2760
         Visible         =   0   'False
         Width           =   3255
      End
      Begin VB.CheckBox Chk 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Observaciones y comentarios"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         Height          =   255
         Index           =   5
         Left            =   360
         TabIndex        =   847
         Top             =   5280
         Width           =   3375
      End
      Begin MSDBGrid.DBGrid Arry 
         Bindings        =   "frmEcoObs.frx":39C6
         Height          =   1215
         Index           =   6
         Left            =   240
         OleObjectBlob   =   "frmEcoObs.frx":39DA
         TabIndex        =   891
         Top             =   6360
         Width           =   12615
      End
      Begin VB.Shape Shp 
         BorderColor     =   &H00404040&
         BorderWidth     =   3
         Height          =   7620
         Index           =   19
         Left            =   120
         Top             =   120
         Width           =   14775
      End
      Begin VB.Label lbl 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         Caption         =   "Informes de Ecografía"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Index           =   390
         Left            =   13080
         TabIndex        =   890
         Top             =   3360
         Width           =   1515
         WordWrap        =   -1  'True
      End
   End
   Begin VB.CommandButton Bn 
      Caption         =   "Ver Imagenes"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   96
      Left            =   7200
      TabIndex        =   713
      Top             =   240
      Width           =   1575
   End
   Begin VB.Frame div 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Enabled         =   0   'False
      Height          =   1695
      Index           =   28
      Left            =   87600
      TabIndex        =   648
      Top             =   2520
      Visible         =   0   'False
      Width           =   3975
      Begin VB.Frame div 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   0  'None
         Height          =   320
         Index           =   33
         Left            =   5400
         TabIndex        =   666
         Top             =   1200
         Visible         =   0   'False
         Width           =   1400
         Begin VB.OptionButton Optn 
            BackColor       =   &H00FFFFFF&
            Caption         =   "Si"
            Height          =   210
            Index           =   9
            Left            =   720
            TabIndex        =   668
            Top             =   40
            Width           =   615
         End
         Begin VB.OptionButton Optn 
            BackColor       =   &H00FFFFFF&
            Caption         =   "No"
            Height          =   210
            Index           =   8
            Left            =   40
            TabIndex        =   667
            Top             =   40
            Width           =   615
         End
      End
      Begin VB.Frame div 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   0  'None
         Height          =   320
         Index           =   32
         Left            =   5400
         TabIndex        =   663
         Top             =   720
         Visible         =   0   'False
         Width           =   1400
         Begin VB.OptionButton Optn 
            BackColor       =   &H00FFFFFF&
            Caption         =   "Si"
            Height          =   210
            Index           =   5
            Left            =   720
            TabIndex        =   665
            Top             =   40
            Width           =   615
         End
         Begin VB.OptionButton Optn 
            BackColor       =   &H00FFFFFF&
            Caption         =   "No"
            Height          =   210
            Index           =   4
            Left            =   40
            TabIndex        =   664
            Top             =   40
            Width           =   615
         End
      End
      Begin VB.Frame div 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   0  'None
         Height          =   320
         Index           =   31
         Left            =   2280
         TabIndex        =   658
         Top             =   1200
         Width           =   1400
         Begin VB.OptionButton Optn 
            BackColor       =   &H00FFFFFF&
            Caption         =   "No"
            Height          =   210
            Index           =   6
            Left            =   40
            TabIndex        =   660
            Top             =   40
            Width           =   615
         End
         Begin VB.OptionButton Optn 
            BackColor       =   &H00FFFFFF&
            Caption         =   "Si"
            Height          =   210
            Index           =   7
            Left            =   720
            TabIndex        =   659
            Top             =   40
            Width           =   615
         End
      End
      Begin VB.Frame div 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   0  'None
         Height          =   320
         Index           =   30
         Left            =   2280
         TabIndex        =   655
         Top             =   720
         Width           =   1400
         Begin VB.OptionButton Optn 
            BackColor       =   &H00FFFFFF&
            Caption         =   "No"
            Height          =   210
            Index           =   2
            Left            =   40
            TabIndex        =   657
            Top             =   40
            Width           =   615
         End
         Begin VB.OptionButton Optn 
            BackColor       =   &H00FFFFFF&
            Caption         =   "Si"
            Height          =   210
            Index           =   3
            Left            =   720
            TabIndex        =   656
            Top             =   40
            Width           =   615
         End
      End
      Begin VB.Frame div 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   0  'None
         Height          =   320
         Index           =   29
         Left            =   2280
         TabIndex        =   652
         Top             =   240
         Width           =   1400
         Begin VB.OptionButton Optn 
            BackColor       =   &H00FFFFFF&
            Caption         =   "Si"
            Height          =   210
            Index           =   1
            Left            =   720
            TabIndex        =   654
            Top             =   40
            Width           =   615
         End
         Begin VB.OptionButton Optn 
            BackColor       =   &H00FFFFFF&
            Caption         =   "No"
            Height          =   210
            Index           =   0
            Left            =   40
            TabIndex        =   653
            Top             =   40
            Width           =   615
         End
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Anembrionado"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   321
         Left            =   3960
         TabIndex        =   662
         Top             =   1245
         Visible         =   0   'False
         Width           =   1215
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Anembrionado"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   320
         Left            =   3960
         TabIndex        =   661
         Top             =   780
         Visible         =   0   'False
         Width           =   1215
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Aborto > 10 semanas"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   319
         Left            =   240
         TabIndex        =   651
         Top             =   1240
         Width           =   1770
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Aborto <  10 semanas"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   318
         Left            =   240
         TabIndex        =   650
         Top             =   780
         Width           =   1815
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Embarazo ectópico"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   317
         Left            =   240
         TabIndex        =   649
         Top             =   285
         Width           =   1575
      End
      Begin VB.Shape Shp 
         BorderColor     =   &H00C0C0C0&
         BorderWidth     =   3
         Height          =   1500
         Index           =   14
         Left            =   120
         Top             =   120
         Width           =   3735
      End
   End
   Begin MSDBCtls.DBCombo DBCombo1 
      Bindings        =   "frmEcoObs.frx":4A45
      Height          =   330
      Left            =   11880
      TabIndex        =   644
      Top             =   720
      Width           =   2895
      _ExtentX        =   5106
      _ExtentY        =   582
      _Version        =   393216
      ListField       =   "App"
      Text            =   ""
   End
   Begin VB.Frame div 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   7900
      Index           =   25
      Left            =   20000
      TabIndex        =   584
      Top             =   960
      Width           =   13065
      Begin VB.Data Dt 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Cn"
         Connect         =   "Access"
         DatabaseName    =   ""
         DefaultCursorType=   0  'DefaultCursor
         DefaultType     =   2  'UseODBC
         Exclusive       =   0   'False
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   7
         Left            =   10200
         Options         =   0
         ReadOnly        =   0   'False
         RecordsetType   =   1  'Dynaset
         RecordSource    =   "Consent"
         Top             =   5760
         Visible         =   0   'False
         Width           =   1260
      End
      Begin VB.CommandButton Bn 
         Height          =   255
         Index           =   90
         Left            =   12720
         Picture         =   "frmEcoObs.frx":4A59
         Style           =   1  'Graphical
         TabIndex        =   609
         Top             =   120
         Width           =   255
      End
      Begin VB.Frame div 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00B96629&
         Height          =   3015
         Index           =   26
         Left            =   240
         TabIndex        =   586
         Top             =   1200
         Width           =   11295
         Begin VB.CheckBox Check2 
            BackColor       =   &H00FFFFFF&
            Caption         =   "NO"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   480
            TabIndex        =   758
            Top             =   2160
            Width           =   615
         End
         Begin VB.CheckBox Check1 
            BackColor       =   &H00FFFFFF&
            Caption         =   "NO"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   360
            TabIndex        =   757
            Top             =   960
            Width           =   615
         End
         Begin VB.Frame div 
            BackColor       =   &H00FFFFFF&
            Caption         =   "Consentimiento informado"
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   1215
            Index           =   2
            Left            =   5040
            TabIndex        =   591
            Top             =   240
            Visible         =   0   'False
            Width           =   5775
            Begin VB.TextBox P 
               Alignment       =   2  'Center
               Appearance      =   0  'Flat
               Enabled         =   0   'False
               Height          =   315
               Index           =   8
               Left            =   4680
               MaxLength       =   2
               TabIndex        =   598
               Top             =   720
               Width           =   495
            End
            Begin VB.TextBox P 
               Alignment       =   2  'Center
               Appearance      =   0  'Flat
               Enabled         =   0   'False
               Height          =   315
               Index           =   7
               Left            =   3960
               MaxLength       =   2
               TabIndex        =   597
               Top             =   720
               Width           =   495
            End
            Begin VB.TextBox P 
               Alignment       =   2  'Center
               Appearance      =   0  'Flat
               Enabled         =   0   'False
               Height          =   315
               Index           =   6
               Left            =   2280
               TabIndex        =   596
               Top             =   720
               Width           =   1095
            End
            Begin VB.CheckBox Chk 
               BackColor       =   &H00FFFFFF&
               Caption         =   "No"
               BeginProperty DataFormat 
                  Type            =   0
                  Format          =   ""
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   0
               EndProperty
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   210
               Index           =   0
               Left            =   3480
               TabIndex        =   595
               Top             =   360
               Width           =   615
            End
            Begin VB.TextBox P 
               Alignment       =   2  'Center
               Appearance      =   0  'Flat
               Enabled         =   0   'False
               Height          =   315
               Index           =   11
               Left            =   9960
               MaxLength       =   2
               TabIndex        =   594
               Top             =   720
               Width           =   495
            End
            Begin VB.TextBox P 
               Alignment       =   2  'Center
               Appearance      =   0  'Flat
               Enabled         =   0   'False
               Height          =   315
               Index           =   10
               Left            =   9240
               MaxLength       =   2
               TabIndex        =   593
               Top             =   720
               Width           =   495
            End
            Begin VB.TextBox P 
               Alignment       =   2  'Center
               Appearance      =   0  'Flat
               Enabled         =   0   'False
               Height          =   315
               Index           =   9
               Left            =   7560
               TabIndex        =   592
               Top             =   720
               Width           =   1095
            End
            Begin VB.Label lbl 
               AutoSize        =   -1  'True
               BackColor       =   &H00FFFFFF&
               Caption         =   "Hora"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   225
               Index           =   20
               Left            =   3480
               TabIndex        =   605
               Top             =   765
               Width           =   405
            End
            Begin VB.Label lbl 
               AutoSize        =   -1  'True
               BackColor       =   &H00FFFFFF&
               Caption         =   "Fecha Ultima reserva"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   225
               Index           =   19
               Left            =   120
               TabIndex        =   604
               Top             =   765
               Width           =   1755
            End
            Begin VB.Label lbl 
               AutoSize        =   -1  'True
               BackColor       =   &H00FFFFFF&
               Caption         =   ":"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   225
               Index           =   21
               Left            =   4560
               TabIndex        =   603
               Top             =   765
               Width           =   45
            End
            Begin VB.Label lbl 
               AutoSize        =   -1  'True
               BackColor       =   &H00FFFFFF&
               Caption         =   "La paciente consiente el exámen actual"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   225
               Index           =   18
               Left            =   120
               TabIndex        =   602
               Top             =   360
               Width           =   3255
            End
            Begin VB.Label lbl 
               AutoSize        =   -1  'True
               BackColor       =   &H00FFFFFF&
               Caption         =   "Hora"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   225
               Index           =   23
               Left            =   8760
               TabIndex        =   601
               Top             =   765
               Width           =   405
            End
            Begin VB.Label lbl 
               AutoSize        =   -1  'True
               BackColor       =   &H00FFFFFF&
               Caption         =   "Fecha de consentimiento"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   225
               Index           =   22
               Left            =   5400
               TabIndex        =   600
               Top             =   765
               Width           =   2085
            End
            Begin VB.Label lbl 
               AutoSize        =   -1  'True
               BackColor       =   &H00FFFFFF&
               Caption         =   ":"
               BeginProperty Font 
                  Name            =   "Arial"
                  Size            =   9
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   225
               Index           =   24
               Left            =   9840
               TabIndex        =   599
               Top             =   765
               Width           =   45
            End
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Formulario de consentimiento informado 2"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   289
            Left            =   1200
            TabIndex        =   763
            Top             =   2160
            Visible         =   0   'False
            Width           =   3510
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Formulario de consentimiento informado 1"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   31
            Left            =   1200
            TabIndex        =   762
            Top             =   960
            Visible         =   0   'False
            Width           =   3510
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "¿Autoriza uso de la información para investigación clínica?"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   240
            TabIndex        =   760
            Top             =   1680
            Width           =   4995
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "¿Autoriza la realización del exámen ecográfico?"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   240
            TabIndex        =   759
            Top             =   360
            Width           =   4080
         End
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Cerrar"
         Height          =   735
         Index           =   95
         Left            =   11520
         Picture         =   "frmEcoObs.frx":4B43
         Style           =   1  'Graphical
         TabIndex        =   585
         Top             =   6720
         Width           =   1215
      End
      Begin MSDBGrid.DBGrid Arry 
         Bindings        =   "frmEcoObs.frx":59DD
         Height          =   2775
         Index           =   0
         Left            =   240
         OleObjectBlob   =   "frmEcoObs.frx":59F1
         TabIndex        =   589
         Top             =   4920
         Width           =   11175
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Consentimientos de la paciente"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   25
         Left            =   240
         TabIndex        =   590
         Top             =   4560
         Width           =   2670
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Eco Obst. Precoz N° 1"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   301
         Left            =   360
         TabIndex        =   588
         Top             =   720
         Width           =   2040
      End
      Begin VB.Label lbl 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Consentimiento Informado y autorización para uso de datos en investigación clínica"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   164
         Left            =   360
         TabIndex        =   587
         Top             =   360
         Width           =   9555
         WordWrap        =   -1  'True
      End
      Begin VB.Shape Shp 
         BorderColor     =   &H00C0C0FF&
         BorderWidth     =   3
         Height          =   7740
         Index           =   13
         Left            =   120
         Top             =   120
         Width           =   12855
      End
   End
   Begin VB.Frame div 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Ingrese Fecha de ecografía"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3615
      Index           =   3
      Left            =   5280
      TabIndex        =   351
      Top             =   2160
      Visible         =   0   'False
      Width           =   3495
      Begin VB.CommandButton Bn 
         Caption         =   "Cerrar Calendario"
         Height          =   375
         Index           =   8
         Left            =   600
         TabIndex        =   353
         Top             =   3120
         Width           =   2295
      End
      Begin MSComCtl2.MonthView Cl 
         Height          =   2670
         Left            =   240
         TabIndex        =   352
         Top             =   360
         Width           =   2910
         _ExtentX        =   5133
         _ExtentY        =   4710
         _Version        =   393216
         ForeColor       =   -2147483630
         BackColor       =   16777215
         Appearance      =   1
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         StartOfWeek     =   31916034
         TitleBackColor  =   8421504
         TitleForeColor  =   16777215
         CurrentDate     =   41148
      End
   End
   Begin Crystal.CrystalReport CR 
      Left            =   11280
      Top             =   120
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      WindowControlBox=   -1  'True
      WindowMaxButton =   -1  'True
      WindowMinButton =   -1  'True
      PrintFileType   =   3
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame div 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   7935
      Index           =   19
      Left            =   20000
      TabIndex        =   368
      Top             =   960
      Width           =   15135
      Begin VB.CommandButton Bn 
         Caption         =   "Ver Documento"
         Height          =   375
         Index           =   82
         Left            =   13080
         TabIndex        =   567
         Top             =   6360
         Width           =   1575
      End
      Begin VB.TextBox P 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00F4F4E8&
         DataField       =   "cmaumed"
         DataSource      =   "Dt(4)"
         Enabled         =   0   'False
         Height          =   315
         Index           =   168
         Left            =   13320
         MaxLength       =   4
         TabIndex        =   565
         Top             =   4800
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.TextBox P 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         DataField       =   "cmaucom"
         DataSource      =   "Dt(4)"
         Enabled         =   0   'False
         Height          =   315
         Index           =   166
         Left            =   12720
         TabIndex        =   564
         Top             =   5160
         Visible         =   0   'False
         Width           =   1860
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Salir"
         Height          =   735
         Index           =   80
         Left            =   13080
         Picture         =   "frmEcoObs.frx":6DD8
         Style           =   1  'Graphical
         TabIndex        =   542
         Top             =   6840
         Width           =   1575
      End
      Begin VB.ListBox Lst 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1230
         Index           =   1
         ItemData        =   "frmEcoObs.frx":7C72
         Left            =   12480
         List            =   "frmEcoObs.frx":7C82
         TabIndex        =   372
         Top             =   2040
         Width           =   2295
      End
      Begin MSChart20Lib.MSChart MSC 
         Height          =   6855
         Index           =   2
         Left            =   360
         OleObjectBlob   =   "frmEcoObs.frx":7CD7
         TabIndex        =   369
         Top             =   600
         Width           =   12015
      End
      Begin VB.Label lbl 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         Caption         =   "Percentiles de referencia 5 a 95"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   480
         Index           =   287
         Left            =   12600
         TabIndex        =   566
         Top             =   840
         Width           =   2070
         WordWrap        =   -1  'True
      End
      Begin VB.Label lbl 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Cerebro / Placentario"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   278
         Left            =   12720
         TabIndex        =   563
         Top             =   4320
         Visible         =   0   'False
         Width           =   1830
      End
      Begin VB.Label lbl 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Cuociente"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   277
         Left            =   12720
         TabIndex        =   562
         Top             =   4080
         Visible         =   0   'False
         Width           =   960
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Seleccione Gráfico"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   226
         Left            =   12840
         TabIndex        =   373
         Top             =   1680
         Width           =   1635
      End
      Begin VB.Label lbl 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Gráfica Promedio Arterias Uterinas"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   225
         Left            =   1080
         TabIndex        =   371
         Top             =   360
         Width           =   10530
      End
      Begin VB.Shape Shp 
         BorderColor     =   &H00404040&
         BorderWidth     =   3
         Height          =   7620
         Index           =   11
         Left            =   120
         Top             =   120
         Width           =   14775
      End
      Begin VB.Label lbl 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         Caption         =   "Estándar de Biometría Fetal, Hadlock y col. Radiology 152 : 497 - 501. 1984"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   227
         Left            =   1080
         TabIndex        =   370
         Top             =   7440
         Width           =   10575
      End
   End
   Begin VB.Frame div 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   7815
      Index           =   17
      Left            =   20000
      TabIndex        =   355
      Top             =   960
      Width           =   15135
      Begin VB.CommandButton Bn 
         Caption         =   "Informe Dopler PDF"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Index           =   97
         Left            =   13080
         TabIndex        =   715
         Top             =   4920
         Visible         =   0   'False
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Gráfica de Dopler Materno-Fetal"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Index           =   93
         Left            =   13080
         TabIndex        =   669
         Top             =   3960
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Ver Documento"
         Height          =   375
         Index           =   85
         Left            =   13080
         TabIndex        =   578
         Top             =   6360
         Width           =   1575
      End
      Begin VB.Data Dt 
         BackColor       =   &H00F4F4E8&
         Caption         =   "Recorrer Exámenes"
         Connect         =   "Access"
         DatabaseName    =   "C:\Consulta Médica Hospital\Consultamedica.mdb"
         DefaultCursorType=   0  'DefaultCursor
         DefaultType     =   2  'UseODBC
         Exclusive       =   0   'False
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   4
         Left            =   9840
         Options         =   0
         ReadOnly        =   0   'False
         RecordsetType   =   1  'Dynaset
         RecordSource    =   "Doppler"
         Top             =   5040
         Width           =   3000
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "ecografista"
         DataSource      =   "Dt(4)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   104
         ItemData        =   "frmEcoObs.frx":A5AC
         Left            =   9840
         List            =   "frmEcoObs.frx":A5AE
         TabIndex        =   464
         Top             =   4560
         Width           =   3015
      End
      Begin VB.TextBox P 
         Appearance      =   0  'Flat
         DataField       =   "obs"
         DataSource      =   "Dt(4)"
         Enabled         =   0   'False
         Height          =   915
         Index           =   150
         Left            =   1680
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   393
         Top             =   4680
         Width           =   6495
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Informe Dopler"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   56
         Left            =   13080
         TabIndex        =   367
         Top             =   3480
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Cancelar"
         Enabled         =   0   'False
         Height          =   375
         Index           =   53
         Left            =   13080
         TabIndex        =   366
         Top             =   1560
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Salir"
         Height          =   735
         Index           =   60
         Left            =   13080
         Picture         =   "frmEcoObs.frx":A5B0
         Style           =   1  'Graphical
         TabIndex        =   365
         Top             =   6840
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Eliminar"
         Height          =   375
         Index           =   55
         Left            =   13080
         TabIndex        =   364
         Top             =   2520
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         BackColor       =   &H00E0E0E0&
         Caption         =   "Modificar"
         Height          =   375
         Index           =   54
         Left            =   13080
         TabIndex        =   363
         Top             =   2040
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Grabar"
         Enabled         =   0   'False
         Height          =   375
         Index           =   52
         Left            =   13080
         TabIndex        =   362
         Top             =   1080
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         BackColor       =   &H00F4F4E8&
         Caption         =   "Nuevo"
         Height          =   615
         Index           =   51
         Left            =   13080
         TabIndex        =   361
         Top             =   360
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Sobre"
         Height          =   375
         Index           =   57
         Left            =   13080
         TabIndex        =   360
         Top             =   4680
         Width           =   1575
      End
      Begin VB.Frame div 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Información"
         Enabled         =   0   'False
         ForeColor       =   &H00B96629&
         Height          =   4335
         Index           =   18
         Left            =   240
         TabIndex        =   356
         Top             =   240
         Width           =   12615
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "cmaupct"
            DataSource      =   "Dt(4)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   88
            Left            =   11685
            TabIndex        =   828
            Top             =   3120
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pctdv"
            DataSource      =   "Dt(4)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   149
            Left            =   11685
            TabIndex        =   480
            Top             =   3840
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "va6"
            DataSource      =   "Dt(4)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   148
            Left            =   10320
            TabIndex        =   479
            Top             =   3840
            Width           =   1215
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "cmaucom"
            DataSource      =   "Dt(4)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   146
            Left            =   10320
            TabIndex        =   478
            Top             =   3120
            Width           =   1215
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pctacm"
            DataSource      =   "Dt(4)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   144
            Left            =   11685
            TabIndex        =   477
            Top             =   2760
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "va5"
            DataSource      =   "Dt(4)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   143
            Left            =   10320
            TabIndex        =   476
            Top             =   2760
            Width           =   1215
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pctumbil"
            DataSource      =   "Dt(4)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   141
            Left            =   11685
            TabIndex        =   475
            Top             =   1920
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "va4"
            DataSource      =   "Dt(4)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   140
            Left            =   10320
            TabIndex        =   474
            Top             =   1920
            Width           =   1215
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pctpromut"
            DataSource      =   "Dt(4)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   138
            Left            =   11685
            TabIndex        =   473
            Top             =   1200
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "va3"
            DataSource      =   "Dt(4)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   137
            Left            =   10320
            TabIndex        =   472
            Top             =   1200
            Width           =   1215
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pctutizq"
            DataSource      =   "Dt(4)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   135
            Left            =   11685
            TabIndex        =   471
            Top             =   840
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "va2"
            DataSource      =   "Dt(4)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   134
            Left            =   10320
            TabIndex        =   470
            Top             =   840
            Width           =   1215
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pctutder"
            DataSource      =   "Dt(4)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   132
            Left            =   11685
            TabIndex        =   469
            Top             =   480
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "va1"
            DataSource      =   "Dt(4)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   131
            Left            =   10320
            TabIndex        =   468
            Top             =   480
            Width           =   1215
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "dvmed"
            DataSource      =   "Dt(4)"
            Height          =   315
            Index           =   147
            Left            =   9720
            MaxLength       =   4
            TabIndex        =   423
            Top             =   3840
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            DataField       =   "cmaumed"
            DataSource      =   "Dt(4)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   145
            Left            =   9720
            MaxLength       =   4
            TabIndex        =   420
            Top             =   3120
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "acmed"
            DataSource      =   "Dt(4)"
            Height          =   315
            Index           =   142
            Left            =   9720
            MaxLength       =   4
            TabIndex        =   419
            Top             =   2760
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "aumbilmed"
            DataSource      =   "Dt(4)"
            Height          =   315
            Index           =   139
            Left            =   9720
            MaxLength       =   4
            TabIndex        =   417
            Top             =   1920
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "promutmed"
            DataSource      =   "Dt(4)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   136
            Left            =   9720
            MaxLength       =   4
            TabIndex        =   413
            Top             =   1185
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "autizqmed"
            DataSource      =   "Dt(4)"
            Height          =   315
            Index           =   133
            Left            =   9720
            MaxLength       =   4
            TabIndex        =   412
            Top             =   825
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "autdermed"
            DataSource      =   "Dt(4)"
            Height          =   315
            Index           =   130
            Left            =   9720
            MaxLength       =   4
            TabIndex        =   411
            Top             =   480
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pctbvm"
            DataSource      =   "Dt(4)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   123
            Left            =   5520
            TabIndex        =   403
            TabStop         =   0   'False
            Top             =   3120
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pctila"
            DataSource      =   "Dt(4)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   129
            Left            =   5520
            TabIndex        =   402
            Top             =   3840
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "totila"
            DataSource      =   "Dt(4)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   128
            Left            =   4440
            TabIndex        =   401
            Top             =   3840
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "ila4"
            DataSource      =   "Dt(4)"
            Height          =   315
            Index           =   127
            Left            =   3600
            MaxLength       =   2
            TabIndex        =   400
            Top             =   3840
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "ila3"
            DataSource      =   "Dt(4)"
            Height          =   315
            Index           =   126
            Left            =   3000
            MaxLength       =   2
            TabIndex        =   399
            Top             =   3840
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "ila2"
            DataSource      =   "Dt(4)"
            Height          =   315
            Index           =   125
            Left            =   2400
            MaxLength       =   2
            TabIndex        =   398
            Top             =   3840
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "ila1"
            DataSource      =   "Dt(4)"
            Height          =   315
            Index           =   124
            Left            =   1800
            MaxLength       =   2
            TabIndex        =   397
            Top             =   3840
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "liqvmb"
            DataSource      =   "Dt(4)"
            Height          =   315
            Index           =   122
            Left            =   4440
            MaxLength       =   3
            TabIndex        =   396
            Top             =   3120
            Width           =   495
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "liqcuali"
            DataSource      =   "Dt(4)"
            Height          =   330
            Index           =   103
            ItemData        =   "frmEcoObs.frx":B44A
            Left            =   4680
            List            =   "frmEcoObs.frx":B457
            TabIndex        =   395
            Top             =   2520
            Width           =   1815
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "va7"
            DataSource      =   "Dt(4)"
            Height          =   330
            Index           =   102
            ItemData        =   "frmEcoObs.frx":B47A
            Left            =   5280
            List            =   "frmEcoObs.frx":B48A
            TabIndex        =   386
            Top             =   1920
            Width           =   1215
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "ubicpla"
            DataSource      =   "Dt(4)"
            Height          =   330
            Index           =   101
            ItemData        =   "frmEcoObs.frx":B49A
            Left            =   2760
            List            =   "frmEcoObs.frx":B4B0
            TabIndex        =   385
            Top             =   1920
            Width           =   1935
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "dorso"
            DataSource      =   "Dt(4)"
            Height          =   330
            Index           =   100
            ItemData        =   "frmEcoObs.frx":B4F8
            Left            =   240
            List            =   "frmEcoObs.frx":B508
            TabIndex        =   384
            Top             =   1920
            Width           =   1695
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "Presentacion"
            DataSource      =   "Dt(4)"
            Height          =   330
            Index           =   99
            ItemData        =   "frmEcoObs.frx":B536
            Left            =   5280
            List            =   "frmEcoObs.frx":B546
            TabIndex        =   383
            Top             =   1200
            Width           =   1455
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "Antecedentes"
            DataSource      =   "Dt(4)"
            Height          =   330
            Index           =   98
            ItemData        =   "frmEcoObs.frx":B577
            Left            =   2760
            List            =   "frmEcoObs.frx":B599
            TabIndex        =   382
            Top             =   1200
            Width           =   2295
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "Motex"
            DataSource      =   "Dt(4)"
            Height          =   330
            Index           =   97
            ItemData        =   "frmEcoObs.frx":B66D
            Left            =   240
            List            =   "frmEcoObs.frx":B69B
            TabIndex        =   381
            Top             =   1200
            Width           =   2295
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "num"
            DataSource      =   "Dt(4)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   119
            Left            =   1320
            TabIndex        =   376
            TabStop         =   0   'False
            Top             =   360
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "fecha"
            DataSource      =   "Dt(4)"
            Height          =   315
            Index           =   120
            Left            =   3000
            TabIndex        =   375
            Top             =   360
            Width           =   1215
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H00F4F4E8&
            DataField       =   "eg"
            DataSource      =   "Dt(4)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   121
            Left            =   5160
            TabIndex        =   374
            Top             =   360
            Width           =   495
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   269
            Left            =   12240
            TabIndex        =   502
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   3800
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   268
            Left            =   12240
            TabIndex        =   501
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   2720
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   267
            Left            =   12240
            TabIndex        =   500
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   1900
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   266
            Left            =   12240
            TabIndex        =   499
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   1200
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   265
            Left            =   12240
            TabIndex        =   498
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   840
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   264
            Left            =   12240
            TabIndex        =   497
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   440
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   263
            Left            =   6060
            TabIndex        =   496
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   3800
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   262
            Left            =   6060
            TabIndex        =   495
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   3120
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Label lbl 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "2 Evaluación grado de insuficiencia placentaria."
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   225
            Index           =   215
            Left            =   7680
            TabIndex        =   466
            Top             =   1605
            Width           =   4035
         End
         Begin VB.Label lbl 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "4 Deterioro de mecanismos compensatorios"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   225
            Index           =   220
            Left            =   7680
            TabIndex        =   462
            Top             =   3555
            Width           =   3795
         End
         Begin VB.Label lbl 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "3 Adaptación hemodinámica fetal a la hipoxia"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   225
            Index           =   217
            Left            =   7680
            TabIndex        =   461
            Top             =   2400
            Width           =   3840
         End
         Begin VB.Label lbl 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "1 Evaluación de placentación (IP de uterinas)."
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   225
            Index           =   198
            Left            =   7680
            TabIndex        =   460
            Top             =   240
            Width           =   3840
         End
         Begin VB.Label lbl 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Ductus Venoso:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   225
            Index           =   221
            Left            =   7920
            TabIndex        =   424
            Top             =   3885
            Width           =   1305
         End
         Begin VB.Label lbl 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Relacion CM / AU:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   225
            Index           =   219
            Left            =   7920
            TabIndex        =   422
            Top             =   3120
            Width           =   1470
         End
         Begin VB.Label lbl 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Art. Cerebral Media:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   225
            Index           =   218
            Left            =   7920
            TabIndex        =   421
            Top             =   2775
            Width           =   1605
         End
         Begin VB.Label lbl 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Arteria Umbilical:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   225
            Index           =   216
            Left            =   7920
            TabIndex        =   418
            Top             =   1965
            Width           =   1395
         End
         Begin VB.Label lbl 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Art. Uterina Der.:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   225
            Index           =   212
            Left            =   7920
            TabIndex        =   416
            Top             =   525
            Width           =   1335
         End
         Begin VB.Label lbl 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Art. Uterina Izq.:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   225
            Index           =   213
            Left            =   7920
            TabIndex        =   415
            Top             =   855
            Width           =   1260
         End
         Begin VB.Label lbl 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Promedio Uterinas:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   225
            Index           =   214
            Left            =   7920
            TabIndex        =   414
            Top             =   1215
            Width           =   1605
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "="
            Height          =   210
            Index           =   211
            Left            =   4200
            TabIndex        =   410
            Top             =   3885
            Width           =   90
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Percentil"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   209
            Left            =   5400
            TabIndex        =   409
            Top             =   2880
            Width           =   720
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   208
            Left            =   5040
            TabIndex        =   408
            Top             =   3165
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "BVM"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   207
            Left            =   3960
            TabIndex        =   407
            Top             =   3165
            Width           =   360
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "C.- Sumatoria de 4 cuadrantes (ILA)"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   210
            Left            =   240
            TabIndex        =   406
            Top             =   3525
            Width           =   2940
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "B.- Semi cuantitativa (BVM = medición única)"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   206
            Left            =   240
            TabIndex        =   405
            Top             =   3165
            Width           =   3645
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "A.- Evaluación Cualitativa del Líquido Amniótico"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   205
            Left            =   240
            TabIndex        =   404
            Top             =   2565
            Width           =   3870
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Grado"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   204
            Left            =   5280
            TabIndex        =   392
            Top             =   1680
            Width           =   510
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Pcta. Ubicación"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   203
            Left            =   2760
            TabIndex        =   391
            Top             =   1680
            Width           =   1275
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Motilidad fetal"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   202
            Left            =   240
            TabIndex        =   390
            Top             =   1680
            Width           =   1125
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Presentación"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   201
            Left            =   5280
            TabIndex        =   389
            Top             =   960
            Width           =   1095
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Antecedentes Obstétricos"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   200
            Left            =   2760
            TabIndex        =   388
            Top             =   960
            Width           =   2115
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Motivo de Exámen"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   199
            Left            =   240
            TabIndex        =   387
            Top             =   960
            Width           =   1485
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "N° Doppler"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   194
            Left            =   240
            TabIndex        =   380
            Top             =   405
            Width           =   900
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Fecha"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   195
            Left            =   2400
            TabIndex        =   379
            Top             =   405
            Width           =   510
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "EG"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   196
            Left            =   4680
            TabIndex        =   378
            Top             =   405
            Width           =   255
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "sem"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   197
            Left            =   5760
            TabIndex        =   377
            Top             =   405
            Width           =   300
         End
      End
      Begin MSDBGrid.DBGrid Arry 
         Bindings        =   "frmEcoObs.frx":B7BE
         Height          =   1935
         Index           =   4
         Left            =   240
         OleObjectBlob   =   "frmEcoObs.frx":B7D2
         TabIndex        =   359
         Top             =   5640
         Width           =   12615
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Informes de ecografía"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   224
         Left            =   12960
         TabIndex        =   465
         Top             =   3120
         Width           =   1875
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Ecografista Dr(a):"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   223
         Left            =   8280
         TabIndex        =   463
         Top             =   4680
         Width           =   1440
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Observaciones"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   222
         Left            =   360
         TabIndex        =   394
         Top             =   4680
         Width           =   1245
      End
      Begin VB.Shape Shp 
         BorderColor     =   &H00B96629&
         BorderWidth     =   3
         Height          =   7620
         Index           =   10
         Left            =   120
         Top             =   120
         Width           =   14775
      End
   End
   Begin VB.Frame div 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   7935
      Index           =   16
      Left            =   20000
      TabIndex        =   264
      Top             =   960
      Width           =   15015
      Begin VB.CommandButton Bn 
         Caption         =   "Screening morfológico de la SEGO"
         Height          =   855
         Index           =   83
         Left            =   13080
         TabIndex        =   570
         Top             =   5880
         Width           =   1575
      End
      Begin VB.Data Dt 
         BackColor       =   &H00F4F4E8&
         Caption         =   "Recorrer Pacientes"
         Connect         =   "Access"
         DatabaseName    =   ""
         DefaultCursorType=   0  'DefaultCursor
         DefaultType     =   2  'UseODBC
         Exclusive       =   0   'False
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   6
         Left            =   12600
         Options         =   0
         ReadOnly        =   0   'False
         RecordsetType   =   1  'Dynaset
         RecordSource    =   "OEM"
         Top             =   480
         Visible         =   0   'False
         Width           =   2100
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Sobre"
         Height          =   375
         Index           =   49
         Left            =   13080
         TabIndex        =   459
         Top             =   5400
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Informe 4"
         Height          =   375
         Index           =   48
         Left            =   13080
         TabIndex        =   458
         Top             =   4920
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Informe 3"
         Height          =   375
         Index           =   47
         Left            =   13080
         TabIndex        =   457
         Top             =   4440
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         BackColor       =   &H00E0E0E0&
         Caption         =   "Modificar"
         Height          =   375
         Index           =   44
         Left            =   13080
         TabIndex        =   455
         Top             =   2040
         Width           =   1575
      End
      Begin VB.TextBox P 
         Appearance      =   0  'Flat
         DataField       =   "obs4"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   915
         Index           =   118
         Left            =   10440
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   330
         Top             =   6360
         Width           =   2295
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "prof4"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   96
         Left            =   10440
         TabIndex        =   329
         Top             =   7320
         Width           =   2295
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var52"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   95
         ItemData        =   "frmEcoObs.frx":C9F1
         Left            =   10920
         List            =   "frmEcoObs.frx":CA01
         TabIndex        =   328
         Top             =   5880
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var51"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   94
         ItemData        =   "frmEcoObs.frx":CA2D
         Left            =   10920
         List            =   "frmEcoObs.frx":CA3D
         TabIndex        =   327
         Top             =   5520
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var50"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   93
         ItemData        =   "frmEcoObs.frx":CA69
         Left            =   10920
         List            =   "frmEcoObs.frx":CA79
         TabIndex        =   326
         Top             =   2040
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var49"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   92
         ItemData        =   "frmEcoObs.frx":CAA5
         Left            =   10920
         List            =   "frmEcoObs.frx":CAB5
         TabIndex        =   325
         Top             =   5160
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var46"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   89
         ItemData        =   "frmEcoObs.frx":CADF
         Left            =   10920
         List            =   "frmEcoObs.frx":CAEF
         TabIndex        =   324
         Top             =   4320
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var45"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   88
         ItemData        =   "frmEcoObs.frx":CB1B
         Left            =   10920
         List            =   "frmEcoObs.frx":CB2B
         TabIndex        =   323
         Top             =   3960
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var44"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   87
         ItemData        =   "frmEcoObs.frx":CB57
         Left            =   10920
         List            =   "frmEcoObs.frx":CB67
         TabIndex        =   322
         Top             =   3480
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var43"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   86
         ItemData        =   "frmEcoObs.frx":CB93
         Left            =   10920
         List            =   "frmEcoObs.frx":CBA3
         TabIndex        =   321
         Top             =   3000
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var42"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   85
         ItemData        =   "frmEcoObs.frx":CBCF
         Left            =   10920
         List            =   "frmEcoObs.frx":CBDF
         TabIndex        =   320
         Top             =   2520
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var41"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   84
         ItemData        =   "frmEcoObs.frx":CC0B
         Left            =   10920
         List            =   "frmEcoObs.frx":CC18
         TabIndex        =   319
         Top             =   1560
         Width           =   1815
      End
      Begin VB.TextBox P 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         DataField       =   "sem4"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   315
         Index           =   114
         Left            =   10920
         TabIndex        =   318
         Top             =   1080
         Width           =   495
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var40"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   83
         ItemData        =   "frmEcoObs.frx":CC36
         Left            =   10920
         List            =   "frmEcoObs.frx":CC46
         TabIndex        =   317
         Top             =   4680
         Width           =   1815
      End
      Begin VB.TextBox P 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         DataField       =   "fh4"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   315
         Index           =   110
         Left            =   10920
         TabIndex        =   316
         Top             =   600
         Width           =   1335
      End
      Begin VB.TextBox P 
         Appearance      =   0  'Flat
         DataField       =   "obs3"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   915
         Index           =   117
         Left            =   7560
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   315
         Top             =   6360
         Width           =   2295
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "prof3"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   82
         Left            =   7560
         TabIndex        =   314
         Top             =   7320
         Width           =   2295
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var39"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   81
         ItemData        =   "frmEcoObs.frx":CC7A
         Left            =   8040
         List            =   "frmEcoObs.frx":CC8A
         TabIndex        =   313
         Top             =   5880
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var38"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   80
         ItemData        =   "frmEcoObs.frx":CCB6
         Left            =   8040
         List            =   "frmEcoObs.frx":CCC6
         TabIndex        =   312
         Top             =   5520
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var37"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   79
         ItemData        =   "frmEcoObs.frx":CCF2
         Left            =   8040
         List            =   "frmEcoObs.frx":CD02
         TabIndex        =   311
         Top             =   2040
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var36"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   78
         ItemData        =   "frmEcoObs.frx":CD2E
         Left            =   8040
         List            =   "frmEcoObs.frx":CD3E
         TabIndex        =   310
         Top             =   5160
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var33"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   75
         ItemData        =   "frmEcoObs.frx":CD68
         Left            =   8040
         List            =   "frmEcoObs.frx":CD78
         TabIndex        =   309
         Top             =   4320
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var32"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   74
         ItemData        =   "frmEcoObs.frx":CDA4
         Left            =   8040
         List            =   "frmEcoObs.frx":CDB4
         TabIndex        =   308
         Top             =   3960
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var31"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   73
         ItemData        =   "frmEcoObs.frx":CDE0
         Left            =   8040
         List            =   "frmEcoObs.frx":CDF0
         TabIndex        =   307
         Top             =   3480
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var30"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   72
         ItemData        =   "frmEcoObs.frx":CE1C
         Left            =   8040
         List            =   "frmEcoObs.frx":CE2C
         TabIndex        =   306
         Top             =   3000
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var29"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   71
         ItemData        =   "frmEcoObs.frx":CE58
         Left            =   8040
         List            =   "frmEcoObs.frx":CE68
         TabIndex        =   305
         Top             =   2520
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var28"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   70
         ItemData        =   "frmEcoObs.frx":CE94
         Left            =   8040
         List            =   "frmEcoObs.frx":CEA1
         TabIndex        =   304
         Top             =   1560
         Width           =   1815
      End
      Begin VB.TextBox P 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         DataField       =   "sem3"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   315
         Index           =   113
         Left            =   8040
         TabIndex        =   303
         Top             =   1080
         Width           =   495
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var27"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   69
         ItemData        =   "frmEcoObs.frx":CEBF
         Left            =   8040
         List            =   "frmEcoObs.frx":CECF
         TabIndex        =   302
         Top             =   4680
         Width           =   1815
      End
      Begin VB.TextBox P 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         DataField       =   "fh3"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   315
         Index           =   109
         Left            =   8040
         TabIndex        =   301
         Top             =   600
         Width           =   1335
      End
      Begin VB.TextBox P 
         Appearance      =   0  'Flat
         DataField       =   "obs2"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   915
         Index           =   116
         Left            =   4680
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   300
         Top             =   6360
         Width           =   2295
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "prof2"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   68
         Left            =   4680
         TabIndex        =   299
         Top             =   7320
         Width           =   2295
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var26"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   67
         ItemData        =   "frmEcoObs.frx":CF03
         Left            =   5160
         List            =   "frmEcoObs.frx":CF13
         TabIndex        =   298
         Top             =   5880
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var25"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   66
         ItemData        =   "frmEcoObs.frx":CF3F
         Left            =   5160
         List            =   "frmEcoObs.frx":CF4F
         TabIndex        =   297
         Top             =   5520
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var24"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   65
         ItemData        =   "frmEcoObs.frx":CF7B
         Left            =   5160
         List            =   "frmEcoObs.frx":CF8B
         TabIndex        =   296
         Top             =   2040
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var23"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   64
         ItemData        =   "frmEcoObs.frx":CFB7
         Left            =   5160
         List            =   "frmEcoObs.frx":CFC7
         TabIndex        =   295
         Top             =   5160
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var20"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   61
         ItemData        =   "frmEcoObs.frx":CFF1
         Left            =   5160
         List            =   "frmEcoObs.frx":D001
         TabIndex        =   294
         Top             =   4320
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var19"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   60
         ItemData        =   "frmEcoObs.frx":D02D
         Left            =   5160
         List            =   "frmEcoObs.frx":D03D
         TabIndex        =   293
         Top             =   3960
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var18"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   59
         ItemData        =   "frmEcoObs.frx":D069
         Left            =   5160
         List            =   "frmEcoObs.frx":D079
         TabIndex        =   292
         Top             =   3480
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var16"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   58
         ItemData        =   "frmEcoObs.frx":D0A5
         Left            =   5160
         List            =   "frmEcoObs.frx":D0B5
         TabIndex        =   291
         Top             =   3000
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var16"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   57
         ItemData        =   "frmEcoObs.frx":D0E1
         Left            =   5160
         List            =   "frmEcoObs.frx":D0F1
         TabIndex        =   290
         Top             =   2520
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var15"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   56
         ItemData        =   "frmEcoObs.frx":D11D
         Left            =   5160
         List            =   "frmEcoObs.frx":D12A
         TabIndex        =   289
         Top             =   1560
         Width           =   1815
      End
      Begin VB.TextBox P 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         DataField       =   "sem2"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   315
         Index           =   112
         Left            =   5160
         TabIndex        =   288
         Top             =   1080
         Width           =   495
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var14"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   55
         ItemData        =   "frmEcoObs.frx":D148
         Left            =   5160
         List            =   "frmEcoObs.frx":D158
         TabIndex        =   287
         Top             =   4680
         Width           =   1815
      End
      Begin VB.TextBox P 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         DataField       =   "fh2"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   315
         Index           =   108
         Left            =   5160
         TabIndex        =   286
         Top             =   600
         Width           =   1335
      End
      Begin VB.TextBox P 
         Appearance      =   0  'Flat
         DataField       =   "obs1"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   915
         Index           =   115
         Left            =   1800
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   285
         Top             =   6360
         Width           =   2295
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "prof1"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   54
         ItemData        =   "frmEcoObs.frx":D18C
         Left            =   1800
         List            =   "frmEcoObs.frx":D18E
         TabIndex        =   284
         Top             =   7320
         Width           =   2295
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var13"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   53
         ItemData        =   "frmEcoObs.frx":D190
         Left            =   2280
         List            =   "frmEcoObs.frx":D1A0
         TabIndex        =   283
         Top             =   5880
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var12"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   52
         ItemData        =   "frmEcoObs.frx":D1CC
         Left            =   2280
         List            =   "frmEcoObs.frx":D1DC
         TabIndex        =   282
         Top             =   5520
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var11"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   51
         ItemData        =   "frmEcoObs.frx":D208
         Left            =   2280
         List            =   "frmEcoObs.frx":D218
         TabIndex        =   281
         Top             =   2040
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var10"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   50
         ItemData        =   "frmEcoObs.frx":D244
         Left            =   2280
         List            =   "frmEcoObs.frx":D254
         TabIndex        =   280
         Top             =   5160
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var7"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   47
         ItemData        =   "frmEcoObs.frx":D27E
         Left            =   2280
         List            =   "frmEcoObs.frx":D28E
         TabIndex        =   279
         Top             =   4320
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var6"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   46
         ItemData        =   "frmEcoObs.frx":D2BA
         Left            =   2280
         List            =   "frmEcoObs.frx":D2CA
         TabIndex        =   278
         Top             =   3960
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var5"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   45
         ItemData        =   "frmEcoObs.frx":D2F6
         Left            =   2280
         List            =   "frmEcoObs.frx":D306
         TabIndex        =   277
         Top             =   3480
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var4"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   44
         ItemData        =   "frmEcoObs.frx":D332
         Left            =   2280
         List            =   "frmEcoObs.frx":D342
         TabIndex        =   276
         Top             =   3000
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var3"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   43
         ItemData        =   "frmEcoObs.frx":D36E
         Left            =   2280
         List            =   "frmEcoObs.frx":D37E
         TabIndex        =   275
         Top             =   2520
         Width           =   1815
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var2"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   42
         ItemData        =   "frmEcoObs.frx":D3AA
         Left            =   2280
         List            =   "frmEcoObs.frx":D3B7
         TabIndex        =   274
         Top             =   1560
         Width           =   1815
      End
      Begin VB.TextBox P 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         DataField       =   "sem1"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   315
         Index           =   111
         Left            =   2280
         TabIndex        =   273
         Top             =   1080
         Width           =   495
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "var1"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   41
         ItemData        =   "frmEcoObs.frx":D3D5
         Left            =   2280
         List            =   "frmEcoObs.frx":D3E5
         TabIndex        =   272
         Top             =   4680
         Width           =   1815
      End
      Begin VB.TextBox P 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         DataField       =   "fh1"
         DataSource      =   "Dt(6)"
         Enabled         =   0   'False
         Height          =   315
         Index           =   107
         Left            =   2280
         TabIndex        =   270
         Top             =   600
         Width           =   1335
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Grabar"
         Enabled         =   0   'False
         Height          =   375
         Index           =   42
         Left            =   13080
         TabIndex        =   269
         Top             =   1080
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Salir"
         Height          =   735
         Index           =   50
         Left            =   13080
         Picture         =   "frmEcoObs.frx":D419
         Style           =   1  'Graphical
         TabIndex        =   268
         Top             =   6840
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Cancelar"
         Enabled         =   0   'False
         Height          =   375
         Index           =   43
         Left            =   13080
         TabIndex        =   267
         Top             =   1560
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Edad Gestacional"
         Height          =   375
         Index           =   45
         Left            =   13080
         TabIndex        =   266
         Top             =   3480
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Crecimiento Fetal"
         Height          =   375
         Index           =   46
         Left            =   13080
         TabIndex        =   265
         Top             =   3960
         Width           =   1575
      End
      Begin VB.Label lbl 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         Caption         =   "Informes de Ecografía"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Index           =   193
         Left            =   13080
         TabIndex        =   456
         Top             =   2880
         Width           =   1635
         WordWrap        =   -1  'True
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Dr(a):"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   192
         Left            =   9960
         TabIndex        =   450
         Top             =   7340
         Width           =   465
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Dr(a):"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   191
         Left            =   7080
         TabIndex        =   449
         Top             =   7340
         Width           =   465
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Dr(a):"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   190
         Left            =   4200
         TabIndex        =   448
         Top             =   7340
         Width           =   465
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "semanas"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808080&
         Height          =   225
         Index           =   174
         Left            =   11520
         TabIndex        =   447
         Top             =   1120
         Width           =   795
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "semanas"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808080&
         Height          =   225
         Index           =   173
         Left            =   8640
         TabIndex        =   446
         Top             =   1120
         Width           =   795
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "semanas"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808080&
         Height          =   225
         Index           =   172
         Left            =   5760
         TabIndex        =   445
         Top             =   1125
         Width           =   795
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "semanas"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808080&
         Height          =   225
         Index           =   171
         Left            =   2880
         TabIndex        =   444
         Top             =   1120
         Width           =   795
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Ecografista Dr(a):"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   189
         Left            =   240
         TabIndex        =   344
         Top             =   7340
         Width           =   1440
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Observaciones"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   188
         Left            =   240
         TabIndex        =   343
         Top             =   6380
         Width           =   1245
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Extremidad Inferior"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   187
         Left            =   240
         TabIndex        =   342
         Top             =   5920
         Width           =   1545
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Extremidad superior"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   186
         Left            =   240
         TabIndex        =   341
         Top             =   5540
         Width           =   1665
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Columna Fetal"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   185
         Left            =   240
         TabIndex        =   340
         Top             =   2085
         Width           =   1215
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Ecogenicidad intestinal"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   184
         Left            =   240
         TabIndex        =   339
         Top             =   5205
         Width           =   1920
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Tres Vasos"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   181
         Left            =   240
         TabIndex        =   338
         Top             =   4365
         Width           =   945
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Cuatro cámaras"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   180
         Left            =   240
         TabIndex        =   337
         Top             =   4005
         Width           =   1335
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Corazón"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   179
         Left            =   240
         TabIndex        =   336
         Top             =   3525
         Width           =   690
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Tórax"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   178
         Left            =   240
         TabIndex        =   335
         Top             =   3045
         Width           =   450
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Rostro"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   177
         Left            =   240
         TabIndex        =   334
         Top             =   2565
         Width           =   555
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Estruc. Encefálicas"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   176
         Left            =   240
         TabIndex        =   333
         Top             =   1605
         Width           =   1575
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Cámara Gástrica"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   175
         Left            =   240
         TabIndex        =   332
         Top             =   4680
         Width           =   1410
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "EG"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   170
         Left            =   240
         TabIndex        =   331
         Top             =   1120
         Width           =   255
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Fecha de exámen"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   169
         Left            =   240
         TabIndex        =   271
         Top             =   630
         Width           =   1470
      End
      Begin VB.Shape Shp 
         BorderColor     =   &H00404040&
         BorderWidth     =   3
         Height          =   7620
         Index           =   9
         Left            =   120
         Top             =   120
         Width           =   14775
      End
   End
   Begin VB.Frame div 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   7935
      Index           =   23
      Left            =   20000
      TabIndex        =   506
      Top             =   960
      Width           =   15015
      Begin VB.Frame div 
         BackColor       =   &H00FFFFFF&
         Enabled         =   0   'False
         Height          =   3615
         Index           =   35
         Left            =   9960
         TabIndex        =   692
         Top             =   960
         Visible         =   0   'False
         Width           =   2895
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            Enabled         =   0   'False
            Height          =   315
            Index           =   182
            Left            =   2040
            TabIndex        =   711
            Top             =   960
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            Enabled         =   0   'False
            Height          =   315
            Index           =   181
            Left            =   2040
            TabIndex        =   710
            Top             =   600
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            Enabled         =   0   'False
            Height          =   315
            Index           =   176
            Left            =   2040
            TabIndex        =   709
            Top             =   240
            Width           =   495
         End
         Begin VB.CheckBox Chk 
            BackColor       =   &H00FFFFFF&
            Caption         =   "No"
            DataField       =   "DMGA"
            DataSource      =   "Dt(5)"
            Height          =   255
            Index           =   17
            Left            =   2040
            TabIndex        =   708
            Top             =   3240
            Width           =   615
         End
         Begin VB.CheckBox Chk 
            BackColor       =   &H00FFFFFF&
            Caption         =   "No"
            DataField       =   "DMGP"
            DataSource      =   "Dt(5)"
            Height          =   255
            Index           =   16
            Left            =   2040
            TabIndex        =   707
            Top             =   2880
            Width           =   615
         End
         Begin VB.CheckBox Chk 
            BackColor       =   &H00FFFFFF&
            Caption         =   "No"
            DataField       =   "GEGP"
            DataSource      =   "Dt(5)"
            Height          =   255
            Index           =   15
            Left            =   2040
            TabIndex        =   706
            Top             =   2520
            Width           =   615
         End
         Begin VB.CheckBox Chk 
            BackColor       =   &H00FFFFFF&
            Caption         =   "No"
            DataField       =   "PEGP"
            DataSource      =   "Dt(5)"
            Height          =   255
            Index           =   14
            Left            =   2040
            TabIndex        =   705
            Top             =   2160
            Width           =   615
         End
         Begin VB.CheckBox Chk 
            BackColor       =   &H00FFFFFF&
            Caption         =   "No"
            DataField       =   "SHEPT"
            DataSource      =   "Dt(5)"
            Height          =   255
            Index           =   13
            Left            =   2040
            TabIndex        =   704
            Top             =   1800
            Width           =   615
         End
         Begin VB.CheckBox Chk 
            BackColor       =   &H00FFFFFF&
            Caption         =   "No"
            DataField       =   "SHEPP"
            DataSource      =   "Dt(5)"
            Height          =   255
            Index           =   12
            Left            =   2040
            TabIndex        =   703
            Top             =   1440
            Width           =   615
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Gestas Previas"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   279
            Left            =   120
            TabIndex        =   701
            Top             =   240
            Width           =   1260
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Partos Totales"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   285
            Left            =   120
            TabIndex        =   700
            Top             =   720
            Width           =   1200
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Perdida Reproductiva"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   339
            Left            =   120
            TabIndex        =   699
            Top             =   1080
            Width           =   1770
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "SHE Previo Precoz"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   340
            Left            =   120
            TabIndex        =   698
            Top             =   1440
            Width           =   1530
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "SHE Previo Tardio"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   341
            Left            =   120
            TabIndex        =   697
            Top             =   1800
            Width           =   1500
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "PEG Previo"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   342
            Left            =   120
            TabIndex        =   696
            Top             =   2160
            Width           =   930
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Geg Previo"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   343
            Left            =   120
            TabIndex        =   695
            Top             =   2520
            Width           =   900
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "DMG Previa"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   344
            Left            =   120
            TabIndex        =   694
            Top             =   2880
            Width           =   960
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "DMG Actual"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   345
            Left            =   120
            TabIndex        =   693
            Top             =   3240
            Width           =   945
         End
      End
      Begin VB.Frame Frame1 
         BackColor       =   &H00FFFFFF&
         Height          =   1575
         Left            =   9960
         TabIndex        =   830
         Top             =   1440
         Visible         =   0   'False
         Width           =   2775
         Begin VB.TextBox Text2 
            DataField       =   "adclinicoobs"
            DataSource      =   "Dt(5)"
            Height          =   1215
            Left            =   120
            MultiLine       =   -1  'True
            TabIndex        =   831
            Top             =   240
            Width           =   2535
         End
      End
      Begin VB.CommandButton Bn 
         Caption         =   "P. Aarterial"
         Enabled         =   0   'False
         Height          =   495
         Index           =   102
         Left            =   8760
         TabIndex        =   829
         Top             =   5520
         Width           =   975
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Ver IMC"
         Height          =   495
         Index           =   99
         Left            =   7680
         TabIndex        =   761
         Top             =   5520
         Width           =   855
      End
      Begin VB.CheckBox Chk 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Antecedentes Obstétricos"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         Height          =   255
         Index           =   11
         Left            =   9960
         TabIndex        =   702
         Top             =   600
         Width           =   2295
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Ver IMC"
         Height          =   375
         Index           =   59
         Left            =   13080
         TabIndex        =   583
         Top             =   6360
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Hb. glicocilada"
         Height          =   495
         Index           =   79
         Left            =   11160
         TabIndex        =   540
         Top             =   5520
         Width           =   975
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Glicemias"
         Height          =   495
         Index           =   78
         Left            =   9960
         TabIndex        =   539
         Top             =   5520
         Width           =   975
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Grabar"
         Enabled         =   0   'False
         Height          =   375
         Index           =   77
         Left            =   13080
         TabIndex        =   515
         Top             =   1080
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         BackColor       =   &H00E0E0E0&
         Caption         =   "Modificar"
         Height          =   375
         Index           =   76
         Left            =   13080
         TabIndex        =   514
         Top             =   2040
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Salir"
         Height          =   735
         Index           =   75
         Left            =   13080
         Picture         =   "frmEcoObs.frx":E2B3
         Style           =   1  'Graphical
         TabIndex        =   513
         Top             =   6840
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Cancelar"
         Enabled         =   0   'False
         Height          =   375
         Index           =   74
         Left            =   13080
         TabIndex        =   512
         Top             =   1560
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Edad Gestacional"
         Height          =   375
         Index           =   73
         Left            =   13080
         TabIndex        =   511
         Top             =   3960
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Crecimiento Fetal"
         Height          =   375
         Index           =   72
         Left            =   13080
         TabIndex        =   510
         Top             =   4440
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Gráfica IMC Materno - Doppler Uterina"
         Height          =   615
         Index           =   70
         Left            =   13080
         TabIndex        =   509
         Top             =   4920
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Sobre"
         Height          =   375
         Index           =   69
         Left            =   13080
         TabIndex        =   508
         Top             =   5880
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Eliminar"
         Height          =   375
         Index           =   68
         Left            =   13080
         TabIndex        =   507
         Top             =   2520
         Width           =   1575
      End
      Begin VB.Data Dt 
         BackColor       =   &H00F4F4E8&
         Caption         =   "Recorrer Exámenes"
         Connect         =   "Access"
         DatabaseName    =   ""
         DefaultCursorType=   0  'DefaultCursor
         DefaultType     =   2  'UseODBC
         Exclusive       =   0   'False
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   5
         Left            =   8160
         Options         =   0
         ReadOnly        =   0   'False
         RecordsetType   =   1  'Dynaset
         RecordSource    =   "ecografias"
         Top             =   2040
         Width           =   3000
      End
      Begin MSDBGrid.DBGrid Arry 
         Bindings        =   "frmEcoObs.frx":F14D
         Height          =   1335
         Index           =   5
         Left            =   240
         OleObjectBlob   =   "frmEcoObs.frx":F161
         TabIndex        =   533
         Top             =   6240
         Width           =   12615
      End
      Begin VB.Frame div 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Información"
         Enabled         =   0   'False
         ForeColor       =   &H00B96629&
         Height          =   5835
         Index           =   24
         Left            =   240
         TabIndex        =   516
         Top             =   240
         Width           =   12700
         Begin VB.CheckBox Check3 
            BackColor       =   &H00FFFFFF&
            Caption         =   "Observaciones para informe"
            Height          =   210
            Left            =   9720
            TabIndex        =   823
            Top             =   840
            Width           =   2535
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "ca"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   177
            Left            =   1320
            TabIndex        =   674
            Top             =   1800
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pctca"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   175
            Left            =   2640
            TabIndex        =   673
            Top             =   1800
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "imceco"
            DataSource      =   "Dt(5)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   15
            Left            =   5280
            TabIndex        =   670
            Top             =   840
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pctpeso"
            DataSource      =   "Dt(5)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   169
            Left            =   2640
            TabIndex        =   568
            Top             =   1440
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pesofe"
            DataSource      =   "Dt(5)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   163
            Left            =   1320
            TabIndex        =   557
            Top             =   1440
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "eg3"
            DataSource      =   "Dt(5)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   162
            Left            =   1200
            TabIndex        =   556
            Top             =   1080
            Width           =   495
         End
         Begin VB.TextBox Text1 
            Appearance      =   0  'Flat
            BorderStyle     =   0  'None
            CausesValidation=   0   'False
            Height          =   255
            Left            =   1440
            Locked          =   -1  'True
            MaxLength       =   1
            TabIndex        =   555
            TabStop         =   0   'False
            Text            =   "Categorización del IMC Materno según edad Gestacional"
            Top             =   5520
            Width           =   4095
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "HBG"
            DataSource      =   "Dt(5)"
            Height          =   315
            Index           =   68
            Left            =   8640
            TabIndex        =   536
            Top             =   1320
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "psomat"
            DataSource      =   "Dt(5)"
            Height          =   315
            Index           =   187
            Left            =   5280
            TabIndex        =   524
            Top             =   360
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "fecha3"
            DataSource      =   "Dt(5)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   186
            Left            =   1200
            TabIndex        =   523
            Top             =   720
            Width           =   1215
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "neco"
            DataSource      =   "Dt(5)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   185
            Left            =   1200
            TabIndex        =   522
            Top             =   360
            Width           =   495
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "PF"
            DataSource      =   "Dt(5)"
            Height          =   330
            Index           =   108
            ItemData        =   "frmEcoObs.frx":10A10
            Left            =   10560
            List            =   "frmEcoObs.frx":10A20
            TabIndex        =   521
            Top             =   120
            Visible         =   0   'False
            Width           =   1455
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "preSist"
            DataSource      =   "Dt(5)"
            Height          =   315
            Index           =   167
            Left            =   5280
            MaxLength       =   3
            TabIndex        =   520
            Top             =   1320
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "clicpcar"
            DataSource      =   "Dt(5)"
            Height          =   315
            Index           =   165
            Left            =   8640
            TabIndex        =   519
            Top             =   840
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "presDiast"
            DataSource      =   "Dt(5)"
            Height          =   315
            Index           =   164
            Left            =   5280
            MaxLength       =   3
            TabIndex        =   518
            Top             =   1800
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "GA"
            DataSource      =   "Dt(5)"
            Height          =   315
            Index           =   161
            Left            =   8640
            TabIndex        =   517
            Top             =   360
            Width           =   495
         End
         Begin MSChart20Lib.MSChart MSC 
            Height          =   3375
            Index           =   4
            Left            =   6360
            OleObjectBlob   =   "frmEcoObs.frx":10A52
            TabIndex        =   538
            Top             =   2040
            Width           =   6315
         End
         Begin MSChart20Lib.MSChart MSC 
            Height          =   3615
            Index           =   3
            Left            =   120
            OleObjectBlob   =   "frmEcoObs.frx":13FC0
            TabIndex        =   541
            Top             =   2160
            Width           =   6375
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "estnutri"
            DataSource      =   "Dt(5)"
            Height          =   315
            Index           =   179
            Left            =   3840
            TabIndex        =   691
            Top             =   2280
            Width           =   150
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00E0E0E0&
            Caption         =   "C. Abdómen"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   326
            Left            =   240
            TabIndex        =   676
            Top             =   1860
            Width           =   1020
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00E0E0E0&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   324
            Left            =   2040
            TabIndex        =   675
            Top             =   1860
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "IMC Materno"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   323
            Left            =   3840
            TabIndex        =   672
            Top             =   885
            Width           =   1020
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "kg/m2"
            Height          =   210
            Index           =   322
            Left            =   5880
            TabIndex        =   671
            ToolTipText     =   "Kilos"
            Top             =   885
            Width           =   420
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00E0E0E0&
            Caption         =   "Pct"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   291
            Left            =   2640
            TabIndex        =   569
            Top             =   1200
            Width           =   255
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00E0E0E0&
            Caption         =   "grs."
            Height          =   210
            Index           =   276
            Left            =   2040
            TabIndex        =   561
            ToolTipText     =   "Centï¿½metros"
            Top             =   1545
            Width           =   285
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00E0E0E0&
            Caption         =   "Peso fetal"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   275
            Left            =   240
            TabIndex        =   560
            Top             =   1485
            Width           =   825
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00E0E0E0&
            Caption         =   "Edad Gest."
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   274
            Left            =   240
            TabIndex        =   559
            Top             =   1155
            Width           =   915
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00E0E0E0&
            Caption         =   "Sem."
            Height          =   210
            Index           =   273
            Left            =   1800
            TabIndex        =   558
            ToolTipText     =   "Kilos"
            Top             =   1185
            Width           =   360
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Hb Glicocilada"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   270
            Left            =   6960
            TabIndex        =   537
            Top             =   1365
            Width           =   1200
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Glicemia PC 75 grs"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   12
            Left            =   6960
            TabIndex        =   535
            Top             =   885
            Width           =   1605
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "kg"
            Height          =   210
            Index           =   297
            Left            =   5880
            TabIndex        =   532
            ToolTipText     =   "Kilos"
            Top             =   405
            Width           =   165
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Peso Materno"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   296
            Left            =   3795
            TabIndex        =   531
            Top             =   405
            Width           =   1140
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00E0E0E0&
            Caption         =   "Fecha"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   295
            Left            =   240
            TabIndex        =   530
            Top             =   765
            Width           =   510
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00E0E0E0&
            Caption         =   "N° Eco"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   294
            Left            =   240
            TabIndex        =   529
            Top             =   405
            Width           =   555
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Volumen Uterino"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   283
            Left            =   9075
            TabIndex        =   528
            Top             =   165
            Visible         =   0   'False
            Width           =   1380
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "PA Sisitólica"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   282
            Left            =   3840
            TabIndex        =   527
            Top             =   1365
            Width           =   1020
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "PA Diastólica"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   281
            Left            =   3840
            TabIndex        =   526
            Top             =   1845
            Width           =   1095
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Glicemia Ayuna"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   280
            Left            =   6960
            TabIndex        =   525
            Top             =   405
            Width           =   1275
         End
         Begin VB.Shape Shape2 
            BackColor       =   &H00E0E0E0&
            BackStyle       =   1  'Opaque
            BorderStyle     =   0  'Transparent
            Height          =   1935
            Left            =   120
            Top             =   300
            Width           =   3255
         End
      End
      Begin VB.Shape Shp 
         BorderColor     =   &H00404040&
         BorderWidth     =   3
         Height          =   7620
         Index           =   12
         Left            =   120
         Top             =   120
         Width           =   14775
      End
      Begin VB.Label lbl 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         Caption         =   "Informes de Ecografía"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Index           =   298
         Left            =   13080
         TabIndex        =   534
         Top             =   3360
         Width           =   1515
         WordWrap        =   -1  'True
      End
   End
   Begin VB.Frame div 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   7935
      Index           =   14
      Left            =   20000
      TabIndex        =   204
      Top             =   960
      Width           =   15015
      Begin VB.CheckBox Chk 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Observaciones y comentarios"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         Height          =   255
         Index           =   10
         Left            =   360
         TabIndex        =   690
         Top             =   5280
         Width           =   3375
      End
      Begin VB.TextBox P 
         DataField       =   "ObsAdDopp"
         DataSource      =   "Dt(3)"
         Enabled         =   0   'False
         Height          =   2535
         Index           =   178
         Left            =   360
         MaxLength       =   247
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   689
         Top             =   2760
         Visible         =   0   'False
         Width           =   3255
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Ver Documento"
         Height          =   375
         Index           =   84
         Left            =   13080
         TabIndex        =   577
         Top             =   6360
         Width           =   1575
      End
      Begin VB.CheckBox Chk 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Evaluación Cervicometría"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   9
         Left            =   360
         TabIndex        =   575
         Top             =   3000
         Width           =   2535
      End
      Begin VB.CommandButton Bn 
         Caption         =   "C. Media"
         Height          =   375
         Index           =   41
         Left            =   11160
         TabIndex        =   505
         Top             =   4680
         Width           =   975
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Art. Umbilical"
         Height          =   375
         Index           =   40
         Left            =   9720
         TabIndex        =   504
         Top             =   4680
         Width           =   1095
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Uterinas"
         Enabled         =   0   'False
         Height          =   375
         Index           =   39
         Left            =   8400
         TabIndex        =   503
         Top             =   4680
         Width           =   975
      End
      Begin VB.Data Dt 
         BackColor       =   &H00F4F4E8&
         Caption         =   "Recorrer Exámenes"
         Connect         =   "Access"
         DatabaseName    =   ""
         DefaultCursorType=   0  'DefaultCursor
         DefaultType     =   2  'UseODBC
         Exclusive       =   0   'False
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   3
         Left            =   9000
         Options         =   0
         ReadOnly        =   0   'False
         RecordsetType   =   1  'Dynaset
         RecordSource    =   ""
         Top             =   5120
         Width           =   3000
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Eliminar"
         Height          =   375
         Index           =   32
         Left            =   13080
         TabIndex        =   467
         Top             =   2520
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Sobre"
         Height          =   375
         Index           =   37
         Left            =   13080
         TabIndex        =   350
         Top             =   5880
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Graficas Doppler Feto-Materna"
         Height          =   615
         Index           =   35
         Left            =   13080
         TabIndex        =   349
         Top             =   5160
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Informe 4"
         Height          =   375
         Index           =   36
         Left            =   13080
         TabIndex        =   348
         Top             =   7560
         Visible         =   0   'False
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Crecimiento Fetal"
         Height          =   495
         Index           =   34
         Left            =   13080
         TabIndex        =   228
         Top             =   4560
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Edad Gestacional"
         Height          =   495
         Index           =   33
         Left            =   13080
         TabIndex        =   227
         Top             =   3960
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Cancelar"
         Enabled         =   0   'False
         Height          =   375
         Index           =   30
         Left            =   13080
         TabIndex        =   226
         Top             =   1560
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Salir"
         Height          =   735
         Index           =   38
         Left            =   13080
         Picture         =   "frmEcoObs.frx":17598
         Style           =   1  'Graphical
         TabIndex        =   225
         Top             =   6840
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         BackColor       =   &H00E0E0E0&
         Caption         =   "Modificar"
         Height          =   375
         Index           =   31
         Left            =   13080
         TabIndex        =   224
         Top             =   2040
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Grabar"
         Enabled         =   0   'False
         Height          =   375
         Index           =   29
         Left            =   13080
         TabIndex        =   223
         Top             =   1080
         Width           =   1575
      End
      Begin VB.Frame div 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Información"
         Enabled         =   0   'False
         ForeColor       =   &H00B96629&
         Height          =   5440
         Index           =   15
         Left            =   240
         TabIndex        =   205
         Top             =   240
         Width           =   12700
         Begin VB.ComboBox Cbx 
            DataField       =   "UbPclnt"
            DataSource      =   "Dt(3)"
            Height          =   330
            Index           =   109
            ItemData        =   "frmEcoObs.frx":18432
            Left            =   5520
            List            =   "frmEcoObs.frx":1843F
            TabIndex        =   582
            Top             =   2280
            Width           =   1455
         End
         Begin VB.TextBox P 
            BorderStyle     =   0  'None
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   87
            Left            =   8640
            TabIndex        =   576
            Text            =   "Relación Cm / Au:"
            Top             =   3520
            Visible         =   0   'False
            Width           =   1575
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "cmau"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   83
            Left            =   10320
            TabIndex        =   216
            Top             =   3480
            Visible         =   0   'False
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "cmaucom"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   84
            Left            =   10920
            TabIndex        =   218
            Top             =   3480
            Visible         =   0   'False
            Width           =   1335
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "Cxmm"
            DataSource      =   "Dt(3)"
            Height          =   315
            Index           =   98
            Left            =   2040
            MaxLength       =   2
            TabIndex        =   262
            Top             =   3120
            Visible         =   0   'False
            Width           =   495
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "tpocx"
            DataSource      =   "Dt(3)"
            Height          =   330
            Index           =   40
            ItemData        =   "frmEcoObs.frx":1846A
            Left            =   120
            List            =   "frmEcoObs.frx":1847D
            TabIndex        =   261
            Top             =   3840
            Visible         =   0   'False
            Width           =   2535
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "sntmtlgia"
            DataSource      =   "Dt(3)"
            Height          =   330
            Index           =   39
            ItemData        =   "frmEcoObs.frx":184F5
            Left            =   120
            List            =   "frmEcoObs.frx":18508
            TabIndex        =   260
            Top             =   4680
            Visible         =   0   'False
            Width           =   1815
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "dopfet"
            DataSource      =   "Dt(3)"
            Height          =   330
            Index           =   38
            ItemData        =   "frmEcoObs.frx":18561
            Left            =   3480
            List            =   "frmEcoObs.frx":18586
            TabIndex        =   259
            Top             =   4560
            Width           =   3615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "cmaucom"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   106
            Left            =   5600
            TabIndex        =   258
            Top             =   3720
            Width           =   1375
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "cmau"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   105
            Left            =   5000
            TabIndex        =   257
            Top             =   3720
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pctcm"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   104
            Left            =   6480
            TabIndex        =   256
            Top             =   3240
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "cmrgo"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   103
            Left            =   5600
            TabIndex        =   255
            Top             =   3240
            Width           =   810
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "cm"
            DataSource      =   "Dt(3)"
            Height          =   315
            Index           =   102
            Left            =   5000
            MaxLength       =   4
            TabIndex        =   254
            Top             =   3240
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pctatrumb"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   101
            Left            =   6480
            TabIndex        =   253
            Top             =   2760
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "atrumbrgo"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   100
            Left            =   5600
            TabIndex        =   252
            Top             =   2760
            Width           =   810
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "atrumb"
            DataSource      =   "Dt(3)"
            Height          =   315
            Index           =   99
            Left            =   5000
            MaxLength       =   4
            TabIndex        =   251
            Top             =   2760
            Width           =   495
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "dopmat"
            DataSource      =   "Dt(3)"
            Height          =   330
            Index           =   37
            ItemData        =   "frmEcoObs.frx":186DD
            Left            =   5040
            List            =   "frmEcoObs.frx":186EA
            TabIndex        =   250
            Top             =   1800
            Width           =   1935
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pctpromut"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   97
            Left            =   6480
            TabIndex        =   249
            Top             =   1320
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "utrgo"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   96
            Left            =   5565
            TabIndex        =   248
            Top             =   1320
            Width           =   820
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "promut"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   95
            Left            =   4995
            TabIndex        =   247
            Top             =   1320
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pctutd"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   94
            Left            =   6480
            TabIndex        =   246
            Top             =   480
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "utrgo"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   93
            Left            =   5565
            TabIndex        =   245
            Top             =   480
            Width           =   820
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "utd"
            DataSource      =   "Dt(3)"
            Height          =   315
            Index           =   92
            Left            =   4995
            MaxLength       =   4
            TabIndex        =   244
            Top             =   480
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pctuti"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   91
            Left            =   6480
            TabIndex        =   243
            Top             =   885
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "utrgo"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   90
            Left            =   5565
            TabIndex        =   242
            Top             =   885
            Width           =   820
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "uti"
            DataSource      =   "Dt(3)"
            Height          =   315
            Index           =   89
            Left            =   4995
            MaxLength       =   4
            TabIndex        =   241
            Top             =   885
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pctpeso"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   82
            Left            =   2640
            TabIndex        =   217
            Top             =   1560
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pesofe"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   81
            Left            =   1440
            TabIndex        =   215
            Top             =   1560
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pctca"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   86
            Left            =   2640
            TabIndex        =   214
            Top             =   1920
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "ca"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   85
            Left            =   1440
            TabIndex        =   213
            Top             =   1920
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "neco"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   78
            Left            =   840
            TabIndex        =   208
            Top             =   360
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "fecha3"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   79
            Left            =   840
            TabIndex        =   207
            Top             =   720
            Width           =   1215
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "eg3"
            DataSource      =   "Dt(3)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   80
            Left            =   840
            TabIndex        =   206
            Top             =   1080
            Width           =   495
         End
         Begin MSChart20Lib.MSChart MSC 
            Height          =   4455
            Index           =   1
            Left            =   7335
            OleObjectBlob   =   "frmEcoObs.frx":1870D
            TabIndex        =   263
            Top             =   120
            Width           =   5325
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Ubicación Placentaria"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   154
            Left            =   3480
            TabIndex        =   581
            Top             =   2325
            Width           =   1800
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00E0E0E0&
            Caption         =   "PCT"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   150
            Left            =   2760
            TabIndex        =   579
            Top             =   1320
            Width           =   285
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   261
            Left            =   7005
            TabIndex        =   492
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   3195
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   260
            Left            =   7005
            TabIndex        =   491
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   2715
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   259
            Left            =   7005
            TabIndex        =   490
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   1275
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   258
            Left            =   7005
            TabIndex        =   489
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   435
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   255
            Left            =   7005
            TabIndex        =   488
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   840
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   166
            Left            =   2640
            TabIndex        =   240
            Top             =   3240
            Visible         =   0   'False
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Largo Cervical"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   165
            Left            =   120
            TabIndex        =   239
            Top             =   3135
            Visible         =   0   'False
            Width           =   1185
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Tipo de Cérvix Observado"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   167
            Left            =   120
            TabIndex        =   238
            Top             =   3525
            Visible         =   0   'False
            Width           =   2100
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Sintomatología de APP"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   163
            Left            =   120
            TabIndex        =   237
            Top             =   4365
            Visible         =   0   'False
            Width           =   1890
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Doppler Fetal"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   162
            Left            =   3480
            TabIndex        =   236
            Top             =   4245
            Width           =   1110
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Relación CM / AU"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   160
            Left            =   3480
            TabIndex        =   235
            Top             =   3765
            Width           =   1425
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Cerebral media"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   158
            Left            =   3480
            TabIndex        =   234
            Top             =   3285
            Width           =   1290
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Art. Umbilical"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   156
            Left            =   3480
            TabIndex        =   233
            Top             =   2805
            Width           =   1080
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Doppler Materno"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   161
            Left            =   3480
            TabIndex        =   232
            Top             =   1800
            Width           =   1410
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Promedio"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   159
            Left            =   3480
            TabIndex        =   231
            Top             =   1365
            Width           =   810
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Ut izquierda"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   155
            Left            =   3480
            TabIndex        =   230
            Top             =   930
            Width           =   975
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Ut derecha"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   157
            Left            =   3480
            TabIndex        =   229
            Top             =   525
            Width           =   900
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00E0E0E0&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   152
            Left            =   2100
            TabIndex        =   222
            Top             =   1980
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00E0E0E0&
            Caption         =   "grs"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   149
            Left            =   2100
            TabIndex        =   221
            Top             =   1590
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00E0E0E0&
            Caption         =   "Peso Estimado"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   148
            Left            =   120
            TabIndex        =   220
            Top             =   1590
            Width           =   1275
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00E0E0E0&
            Caption         =   "C. Abdómen"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   151
            Left            =   120
            TabIndex        =   219
            Top             =   1980
            Width           =   1020
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00E0E0E0&
            Caption         =   "N° Eco"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   144
            Left            =   120
            TabIndex        =   212
            Top             =   405
            Width           =   555
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00E0E0E0&
            Caption         =   "Fecha"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   145
            Left            =   120
            TabIndex        =   211
            Top             =   765
            Width           =   510
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00E0E0E0&
            Caption         =   "EG Eco"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   146
            Left            =   120
            TabIndex        =   210
            Top             =   1125
            Width           =   615
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00E0E0E0&
            Caption         =   "sem"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   147
            Left            =   1395
            TabIndex        =   209
            Top             =   1125
            Width           =   300
         End
         Begin VB.Shape Shape 
            BackColor       =   &H00E0E0E0&
            BackStyle       =   1  'Opaque
            BorderStyle     =   0  'Transparent
            Height          =   2175
            Index           =   0
            Left            =   75
            Top             =   240
            Width           =   3300
         End
      End
      Begin MSDBGrid.DBGrid Arry 
         Bindings        =   "frmEcoObs.frx":1B10F
         Height          =   1815
         Index           =   3
         Left            =   240
         OleObjectBlob   =   "frmEcoObs.frx":1B123
         TabIndex        =   892
         Top             =   5760
         Width           =   12615
      End
      Begin VB.Label lbl 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         Caption         =   "Informes de Ecografía"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Index           =   168
         Left            =   13080
         TabIndex        =   454
         Top             =   3360
         Width           =   1515
         WordWrap        =   -1  'True
      End
      Begin VB.Shape Shp 
         BorderColor     =   &H00404040&
         BorderWidth     =   3
         Height          =   7620
         Index           =   8
         Left            =   120
         Top             =   120
         Width           =   14775
      End
   End
   Begin VB.Frame div 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   7815
      Index           =   13
      Left            =   20000
      TabIndex        =   543
      Top             =   960
      Width           =   15015
      Begin VB.PictureBox Picture1 
         AutoSize        =   -1  'True
         BorderStyle     =   0  'None
         Height          =   1215
         Left            =   1080
         Picture         =   "frmEcoObs.frx":1CD46
         ScaleHeight     =   1215
         ScaleWidth      =   1665
         TabIndex        =   712
         Top             =   1080
         Width           =   1665
      End
      Begin VB.Frame div 
         BackColor       =   &H00FFFFFF&
         Height          =   1575
         Index           =   34
         Left            =   1320
         TabIndex        =   677
         Top             =   5040
         Visible         =   0   'False
         Width           =   2295
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "XX,X Cms."
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   338
            Left            =   840
            TabIndex        =   688
            Top             =   1680
            Width           =   855
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Talla   :"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   337
            Left            =   120
            TabIndex        =   687
            Top             =   1680
            Width           =   585
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Estado"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   336
            Left            =   840
            TabIndex        =   686
            Top             =   1320
            Width           =   585
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "XXX Gramos"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   335
            Left            =   840
            TabIndex        =   685
            Top             =   1080
            Width           =   1035
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Peso   :"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   334
            Left            =   120
            TabIndex        =   684
            Top             =   1080
            Width           =   615
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "[ XXXX - XXXX]"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   333
            Left            =   840
            TabIndex        =   683
            Top             =   720
            Width           =   1125
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Rango:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   331
            Left            =   120
            TabIndex        =   682
            Top             =   720
            Width           =   585
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "XX semanas"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   330
            Left            =   840
            TabIndex        =   681
            Top             =   480
            Width           =   1050
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "EG       :"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   329
            Left            =   120
            TabIndex        =   680
            Top             =   480
            Width           =   585
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "XX-XX-XXXX"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   328
            Left            =   840
            TabIndex        =   679
            Top             =   240
            Width           =   960
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Fecha :"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   327
            Left            =   120
            TabIndex        =   678
            Top             =   240
            Width           =   600
         End
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Líquido Amniótico"
         Height          =   330
         Index           =   89
         Left            =   13080
         TabIndex        =   608
         Top             =   6360
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Eco Dopppler"
         Height          =   330
         Index           =   88
         Left            =   13080
         TabIndex        =   607
         Top             =   5880
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Eco Crecimiento"
         Height          =   330
         Index           =   87
         Left            =   13080
         TabIndex        =   606
         Top             =   5400
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Salir"
         Height          =   735
         Index           =   81
         Left            =   13080
         Picture         =   "frmEcoObs.frx":237D8
         Style           =   1  'Graphical
         TabIndex        =   549
         Top             =   6840
         Width           =   1575
      End
      Begin VB.ListBox Lst 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2730
         Index           =   0
         ItemData        =   "frmEcoObs.frx":24672
         Left            =   12240
         List            =   "frmEcoObs.frx":2469A
         TabIndex        =   544
         Top             =   720
         Width           =   2535
      End
      Begin MSChart20Lib.MSChart MSC 
         Height          =   6855
         Index           =   0
         Left            =   240
         OleObjectBlob   =   "frmEcoObs.frx":24776
         TabIndex        =   545
         Top             =   600
         Width           =   12015
      End
      Begin VB.Shape Shp 
         BorderColor     =   &H00404040&
         BorderWidth     =   3
         Height          =   7620
         Index           =   7
         Left            =   120
         Top             =   120
         Width           =   14775
      End
      Begin VB.Label lbl 
         Alignment       =   2  'Center
         BackColor       =   &H00FFFFFF&
         Caption         =   "Biometrías Aisladas | Gráfico Percentil CC"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   141
         Left            =   1080
         TabIndex        =   548
         Top             =   360
         Width           =   10680
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Seleccione Gráfico"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   142
         Left            =   12600
         TabIndex        =   547
         Top             =   360
         Width           =   1815
      End
      Begin VB.Label lbl 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Estándar de Biometría Fetal, Hadlock y col. Radiology 152 : 497 - 501. 1984"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Index           =   143
         Left            =   1080
         TabIndex        =   546
         Top             =   7440
         Width           =   10575
      End
   End
   Begin VB.Data Dt 
      BackColor       =   &H00F4F4E8&
      Caption         =   "Recorrer Pacientes"
      Connect         =   "Access"
      DatabaseName    =   ""
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   0
      Left            =   11880
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "Reservas"
      Top             =   120
      Width           =   2940
   End
   Begin VB.Frame div 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   7815
      Index           =   8
      Left            =   20000
      TabIndex        =   108
      Top             =   960
      Width           =   15015
      Begin VB.PictureBox Picture2 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   5895
         Left            =   3600
         Picture         =   "frmEcoObs.frx":28107
         ScaleHeight     =   5895
         ScaleWidth      =   10455
         TabIndex        =   764
         Top             =   360
         Visible         =   0   'False
         Width           =   10455
      End
      Begin VB.Frame div 
         BackColor       =   &H00404040&
         BorderStyle     =   0  'None
         Height          =   1695
         Index           =   22
         Left            =   4440
         TabIndex        =   768
         Top             =   4680
         Visible         =   0   'False
         Width           =   6975
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00404040&
            Caption         =   "Grados de hiper ecogenicidad intestinal"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   11.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   270
            Index           =   242
            Left            =   1080
            TabIndex        =   776
            Top             =   120
            Width           =   4245
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00404040&
            Caption         =   "+ Grado I"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   240
            Index           =   243
            Left            =   1320
            TabIndex        =   775
            Top             =   600
            Width           =   885
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00404040&
            Caption         =   "+ Grado II"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   240
            Index           =   244
            Left            =   1320
            TabIndex        =   774
            Top             =   960
            Width           =   945
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00404040&
            Caption         =   "+ Grado III"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   240
            Index           =   245
            Left            =   1320
            TabIndex        =   773
            Top             =   1320
            Width           =   1005
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00404040&
            Caption         =   "Intestino con ecogenicidad similar al hígado"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   240
            Index           =   246
            Left            =   2520
            TabIndex        =   772
            Top             =   600
            Width           =   3795
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00404040&
            Caption         =   "Intestino con ecogenicidad > hígado < hueso"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   240
            Index           =   247
            Left            =   2520
            TabIndex        =   771
            Top             =   960
            Width           =   3900
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00404040&
            Caption         =   "Intestino con ecogenicidad similar al hueso"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   240
            Index           =   248
            Left            =   2520
            TabIndex        =   770
            Top             =   1320
            Width           =   3735
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00404040&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   72
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   1605
            Index           =   249
            Left            =   360
            TabIndex        =   769
            Top             =   120
            Width           =   420
         End
      End
      Begin VB.Frame div 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   0  'None
         Enabled         =   0   'False
         Height          =   2055
         Index           =   37
         Left            =   360
         TabIndex        =   716
         Top             =   3000
         Visible         =   0   'False
         Width           =   4905
         Begin VB.ComboBox Cbx 
            DataField       =   "cismtxt"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   113
            ItemData        =   "frmEcoObs.frx":491A5
            Left            =   1560
            List            =   "frmEcoObs.frx":491B8
            TabIndex        =   728
            Top             =   1320
            Width           =   2175
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "AtriTxt"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   112
            ItemData        =   "frmEcoObs.frx":491F0
            Left            =   1560
            List            =   "frmEcoObs.frx":49203
            TabIndex        =   727
            Top             =   360
            Width           =   2175
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "crbelotxt"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   111
            ItemData        =   "frmEcoObs.frx":4923B
            Left            =   1560
            List            =   "frmEcoObs.frx":4924E
            TabIndex        =   726
            Top             =   840
            Width           =   2175
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "cismval"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   188
            Left            =   3840
            MaxLength       =   4
            TabIndex        =   724
            Top             =   1320
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "cval"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   184
            Left            =   3840
            MaxLength       =   4
            TabIndex        =   722
            Top             =   840
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "Atrio"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   48
            Left            =   3840
            MaxLength       =   4
            TabIndex        =   719
            Top             =   360
            Width           =   495
         End
         Begin VB.Shape Shp 
            BorderColor     =   &H00404040&
            BorderWidth     =   3
            Height          =   1755
            Index           =   16
            Left            =   75
            Top             =   120
            Width           =   4695
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   351
            Left            =   4440
            TabIndex        =   725
            Top             =   1350
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   350
            Left            =   4440
            TabIndex        =   723
            Top             =   870
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Atrio posterior"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   106
            Left            =   240
            TabIndex        =   721
            Top             =   480
            Width           =   1140
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   107
            Left            =   4440
            TabIndex        =   720
            Top             =   390
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Cisterna M."
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   349
            Left            =   240
            TabIndex        =   718
            Top             =   1440
            Width           =   930
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Cerebelo"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   347
            Left            =   240
            TabIndex        =   717
            Top             =   960
            Width           =   765
         End
      End
      Begin VB.CheckBox Chk 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Evaluación de corazón fetal"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   13322
            SubFormatType   =   0
         EndProperty
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   210
         Index           =   4
         Left            =   480
         TabIndex        =   833
         Top             =   3120
         Width           =   3135
      End
      Begin VB.Frame div 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   0  'None
         Enabled         =   0   'False
         Height          =   3255
         Index           =   39
         Left            =   360
         TabIndex        =   832
         Top             =   3480
         Visible         =   0   'False
         Width           =   4305
         Begin VB.ComboBox Cbx 
            DataField       =   "Trvasos"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   121
            ItemData        =   "frmEcoObs.frx":49286
            Left            =   1800
            List            =   "frmEcoObs.frx":49296
            TabIndex        =   843
            Top             =   2640
            Width           =   2175
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "Trsalida"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   120
            ItemData        =   "frmEcoObs.frx":492C6
            Left            =   1800
            List            =   "frmEcoObs.frx":492D6
            TabIndex        =   842
            Top             =   2160
            Width           =   2175
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "Ccam"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   119
            ItemData        =   "frmEcoObs.frx":49306
            Left            =   1800
            List            =   "frmEcoObs.frx":49316
            TabIndex        =   837
            Top             =   1680
            Width           =   2175
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "Ejcard"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   118
            ItemData        =   "frmEcoObs.frx":49346
            Left            =   1800
            List            =   "frmEcoObs.frx":49350
            TabIndex        =   836
            Top             =   1200
            Width           =   2175
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "Ctam"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   117
            ItemData        =   "frmEcoObs.frx":49365
            Left            =   1800
            List            =   "frmEcoObs.frx":4936F
            TabIndex        =   835
            Top             =   720
            Width           =   2175
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "Cubic"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   116
            ItemData        =   "frmEcoObs.frx":49384
            Left            =   1800
            List            =   "frmEcoObs.frx":4938E
            TabIndex        =   834
            Top             =   240
            Width           =   2175
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Tractos de salida"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   303
            Left            =   240
            TabIndex        =   845
            Top             =   2280
            Width           =   1425
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Tres Vasos"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   302
            Left            =   240
            TabIndex        =   844
            Top             =   2760
            Width           =   945
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Eje cardiaco"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   300
            Left            =   240
            TabIndex        =   841
            Top             =   1320
            Width           =   1020
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Cuatro cámaras"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   290
            Left            =   240
            TabIndex        =   840
            Top             =   1800
            Width           =   1335
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Tamaño"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   286
            Left            =   240
            TabIndex        =   839
            Top             =   840
            Width           =   690
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Ubicación"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   284
            Left            =   240
            TabIndex        =   838
            Top             =   240
            Width           =   825
         End
         Begin VB.Shape Shp 
            BorderColor     =   &H00404040&
            BorderWidth     =   3
            Height          =   3075
            Index           =   18
            Left            =   75
            Top             =   120
            Width           =   4095
         End
      End
      Begin VB.Frame div 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   0  'None
         Enabled         =   0   'False
         Height          =   5415
         Index           =   10
         Left            =   3720
         TabIndex        =   777
         Top             =   360
         Visible         =   0   'False
         Width           =   4905
         Begin VB.CheckBox Chk 
            BackColor       =   &H00FFFFFF&
            Caption         =   "No"
            DataField       =   "fctxt"
            DataSource      =   "Dt(2)"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   210
            Index           =   22
            Left            =   1560
            TabIndex        =   815
            Top             =   2400
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "LFPct"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   199
            Left            =   3840
            MaxLength       =   4
            TabIndex        =   794
            Top             =   3840
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pctliq"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   198
            Left            =   3840
            MaxLength       =   4
            TabIndex        =   793
            Top             =   4320
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pctpeso"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   197
            Left            =   3840
            MaxLength       =   4
            TabIndex        =   792
            Top             =   4800
            Width           =   495
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "Inteco"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   114
            ItemData        =   "frmEcoObs.frx":493A3
            Left            =   1920
            List            =   "frmEcoObs.frx":493B3
            TabIndex        =   791
            Top             =   3240
            Width           =   1815
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "pesofe"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   196
            Left            =   1560
            MaxLength       =   4
            TabIndex        =   790
            Top             =   4800
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "BVM"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   195
            Left            =   1560
            MaxLength       =   4
            TabIndex        =   789
            Top             =   4320
            Width           =   495
         End
         Begin VB.CheckBox Chk 
            BackColor       =   &H00FFFFFF&
            Caption         =   "No"
            DataField       =   "LFc"
            DataSource      =   "Dt(2)"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   210
            Index           =   20
            Left            =   1560
            TabIndex        =   788
            Top             =   3840
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "PLCIZq"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   194
            Left            =   1560
            MaxLength       =   4
            TabIndex        =   787
            Top             =   2760
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "PLCDer"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   193
            Left            =   3840
            MaxLength       =   4
            TabIndex        =   786
            Top             =   2760
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "cismval"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   192
            Left            =   3840
            MaxLength       =   4
            TabIndex        =   785
            Top             =   1320
            Width           =   495
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "AtriTxt"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   110
            ItemData        =   "frmEcoObs.frx":493DD
            Left            =   1560
            List            =   "frmEcoObs.frx":493F0
            TabIndex        =   784
            Top             =   360
            Width           =   2175
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "Atrio"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   191
            Left            =   3840
            MaxLength       =   4
            TabIndex        =   783
            Top             =   360
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "cval"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   190
            Left            =   3840
            MaxLength       =   4
            TabIndex        =   782
            Top             =   840
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "plncval"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   174
            Left            =   3840
            MaxLength       =   4
            TabIndex        =   781
            Top             =   1800
            Width           =   495
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "crbelotxt"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   91
            ItemData        =   "frmEcoObs.frx":49428
            Left            =   1560
            List            =   "frmEcoObs.frx":4943B
            TabIndex        =   780
            Top             =   840
            Width           =   2175
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "cismtxt"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   90
            ItemData        =   "frmEcoObs.frx":49473
            Left            =   1560
            List            =   "frmEcoObs.frx":49486
            TabIndex        =   779
            Top             =   1320
            Width           =   2175
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "plnctxt"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   77
            ItemData        =   "frmEcoObs.frx":494BE
            Left            =   1560
            List            =   "frmEcoObs.frx":494D1
            TabIndex        =   778
            Top             =   1800
            Width           =   2175
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "grs"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   365
            Left            =   2160
            TabIndex        =   814
            Top             =   4920
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Percentil"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   364
            Left            =   2880
            TabIndex        =   813
            Top             =   4840
            Width           =   720
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Percentil"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   363
            Left            =   2880
            TabIndex        =   812
            Top             =   4390
            Width           =   720
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Percentil"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   362
            Left            =   2880
            TabIndex        =   811
            Top             =   3880
            Width           =   720
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Peso Estimado"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   361
            Left            =   240
            TabIndex        =   810
            Top             =   4840
            Width           =   1275
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "BVM de LA"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   356
            Left            =   240
            TabIndex        =   809
            Top             =   4360
            Width           =   870
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Plc. Der."
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   360
            Left            =   3120
            TabIndex        =   808
            ToolTipText     =   "Pielectacia Derecha"
            Top             =   2805
            Width           =   690
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Plc. Izq."
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   359
            Left            =   240
            TabIndex        =   807
            ToolTipText     =   "Pielectacia Izquierda"
            Top             =   2805
            Width           =   615
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Fémur corto"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   358
            Left            =   240
            TabIndex        =   806
            Top             =   3840
            Width           =   990
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Intestino ecogénico"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   357
            Left            =   240
            TabIndex        =   805
            Top             =   3280
            Width           =   1605
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Atrio Posterior"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   355
            Left            =   240
            TabIndex        =   804
            Top             =   360
            Width           =   1155
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Cerebelo"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   354
            Left            =   240
            TabIndex        =   803
            Top             =   960
            Width           =   765
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Pliegue Nucal"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   332
            Left            =   240
            TabIndex        =   802
            Top             =   1920
            Width           =   1155
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   325
            Left            =   4440
            TabIndex        =   801
            Top             =   1350
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Cisterna M."
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   316
            Left            =   240
            TabIndex        =   800
            Top             =   1440
            Width           =   930
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   315
            Left            =   4440
            TabIndex        =   799
            Top             =   390
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   314
            Left            =   4440
            TabIndex        =   798
            Top             =   870
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   313
            Left            =   4440
            TabIndex        =   797
            Top             =   1830
            Width           =   240
         End
         Begin VB.Shape Shp 
            BorderColor     =   &H00404040&
            BorderWidth     =   3
            Height          =   5115
            Index           =   17
            Left            =   75
            Top             =   120
            Width           =   4695
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   312
            Left            =   2160
            TabIndex        =   796
            Top             =   4440
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Foco Cardiaco"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   311
            Left            =   240
            TabIndex        =   795
            Top             =   2400
            Width           =   1200
         End
      End
      Begin VB.Frame div 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   0  'None
         Enabled         =   0   'False
         Height          =   3420
         Index           =   36
         Left            =   360
         TabIndex        =   729
         Top             =   3840
         Visible         =   0   'False
         Width           =   3735
         Begin VB.ComboBox Cbx 
            DataField       =   "cgas"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   27
            ItemData        =   "frmEcoObs.frx":49509
            Left            =   1680
            List            =   "frmEcoObs.frx":49519
            TabIndex        =   736
            Top             =   360
            Width           =   1815
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "Rnns"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   25
            ItemData        =   "frmEcoObs.frx":4954D
            Left            =   1680
            List            =   "frmEcoObs.frx":4956C
            TabIndex        =   735
            Top             =   1800
            Width           =   1815
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "PLCDer"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   51
            Left            =   3000
            MaxLength       =   4
            TabIndex        =   734
            Top             =   2280
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "PLCIZq"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   50
            Left            =   1080
            MaxLength       =   4
            TabIndex        =   733
            Top             =   2280
            Width           =   495
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "diaf"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   62
            ItemData        =   "frmEcoObs.frx":495EC
            Left            =   1680
            List            =   "frmEcoObs.frx":495FC
            TabIndex        =   732
            Top             =   840
            Width           =   1815
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "pAbd"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   48
            ItemData        =   "frmEcoObs.frx":49628
            Left            =   1680
            List            =   "frmEcoObs.frx":49638
            TabIndex        =   731
            Top             =   1320
            Width           =   1815
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "vFet"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   49
            ItemData        =   "frmEcoObs.frx":49664
            Left            =   1680
            List            =   "frmEcoObs.frx":49674
            TabIndex        =   730
            Top             =   2760
            Width           =   1815
         End
         Begin VB.Shape Shp 
            BorderColor     =   &H00404040&
            BorderWidth     =   3
            Height          =   3180
            Index           =   15
            Left            =   75
            Top             =   120
            Width           =   3615
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Pared Abdominal"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   353
            Left            =   240
            TabIndex        =   743
            ToolTipText     =   "Cámara Gastrica"
            Top             =   1440
            Width           =   1425
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Diafragma"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   352
            Left            =   240
            TabIndex        =   742
            ToolTipText     =   "Cámara Gastrica"
            Top             =   960
            Width           =   870
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "C. Gástrica"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   119
            Left            =   240
            TabIndex        =   741
            ToolTipText     =   "Cámara Gastrica"
            Top             =   405
            Width           =   915
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Riñones"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   108
            Left            =   240
            TabIndex        =   740
            Top             =   1830
            Width           =   705
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Plc. Izq."
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   114
            Left            =   240
            TabIndex        =   739
            ToolTipText     =   "Pielectacia Izquierda"
            Top             =   2325
            Width           =   615
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Plc. Der."
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   115
            Left            =   2280
            TabIndex        =   738
            ToolTipText     =   "Pielectacia Derecha"
            Top             =   2325
            Width           =   690
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Vejiga Fetal"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   182
            Left            =   240
            TabIndex        =   737
            Top             =   2820
            Width           =   960
         End
      End
      Begin VB.Frame div 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   0  'None
         Enabled         =   0   'False
         Height          =   1695
         Index           =   11
         Left            =   360
         TabIndex        =   174
         Top             =   4440
         Visible         =   0   'False
         Width           =   6405
         Begin VB.ComboBox Cbx 
            DataField       =   "circular"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   33
            ItemData        =   "frmEcoObs.frx":496A6
            Left            =   5400
            List            =   "frmEcoObs.frx":496B0
            TabIndex        =   187
            Top             =   1200
            Width           =   735
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "NVsos"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   32
            ItemData        =   "frmEcoObs.frx":496BC
            Left            =   5400
            List            =   "frmEcoObs.frx":496C6
            TabIndex        =   186
            Top             =   720
            Width           =   735
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "CUmb"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   31
            ItemData        =   "frmEcoObs.frx":496D0
            Left            =   3960
            List            =   "frmEcoObs.frx":496E3
            TabIndex        =   185
            Top             =   240
            Width           =   2175
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "pctagrado"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   30
            ItemData        =   "frmEcoObs.frx":49754
            Left            =   1800
            List            =   "frmEcoObs.frx":49764
            TabIndex        =   184
            Top             =   1200
            Width           =   855
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "placentai"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   29
            ItemData        =   "frmEcoObs.frx":49774
            Left            =   1200
            List            =   "frmEcoObs.frx":4978A
            TabIndex        =   183
            Top             =   720
            Width           =   1455
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "placentau"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   28
            ItemData        =   "frmEcoObs.frx":497D5
            Left            =   1200
            List            =   "frmEcoObs.frx":497E8
            TabIndex        =   182
            Top             =   240
            Width           =   1455
         End
         Begin VB.Shape Shp 
            BorderColor     =   &H00404040&
            BorderWidth     =   3
            Height          =   1500
            Index           =   5
            Left            =   120
            Top             =   120
            Width           =   6135
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Circular"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   130
            Left            =   2880
            TabIndex        =   181
            Top             =   1240
            Width           =   645
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Número de vasos"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   128
            Left            =   2880
            TabIndex        =   180
            Top             =   770
            Width           =   1470
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Cordón"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   126
            Left            =   2880
            TabIndex        =   179
            ToolTipText     =   "Cordón umbilical"
            Top             =   260
            Width           =   615
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Grado (Grannum)"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   129
            Left            =   240
            TabIndex        =   178
            Top             =   1240
            Width           =   1455
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Incersión"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   127
            Left            =   240
            TabIndex        =   177
            Top             =   770
            Width           =   765
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Ubicación"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   125
            Left            =   240
            TabIndex        =   176
            ToolTipText     =   "Ubicación de Placenta"
            Top             =   260
            Width           =   825
         End
      End
      Begin VB.Frame div 
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   0  'None
         Enabled         =   0   'False
         Height          =   1695
         Index           =   12
         Left            =   360
         TabIndex        =   175
         Top             =   4800
         Visible         =   0   'False
         Width           =   8295
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "pctliq"
            DataSource      =   "Dt(2)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   71
            Left            =   7440
            TabIndex        =   199
            Top             =   720
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "pctila"
            DataSource      =   "Dt(2)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   77
            Left            =   7440
            TabIndex        =   198
            Top             =   1200
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "totila"
            DataSource      =   "Dt(2)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   76
            Left            =   6600
            TabIndex        =   197
            Top             =   1200
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "ila4"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   75
            Left            =   5760
            MaxLength       =   2
            TabIndex        =   196
            Top             =   1200
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "ila3"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   74
            Left            =   5160
            MaxLength       =   2
            TabIndex        =   195
            Top             =   1200
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "ila2"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   73
            Left            =   4560
            MaxLength       =   2
            TabIndex        =   194
            Top             =   1200
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "ila1"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   72
            Left            =   3960
            MaxLength       =   2
            TabIndex        =   193
            Top             =   1200
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "BVM"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   70
            Left            =   4560
            MaxLength       =   3
            TabIndex        =   192
            Top             =   720
            Width           =   495
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "liqamnio"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   34
            ItemData        =   "frmEcoObs.frx":4982F
            Left            =   4560
            List            =   "frmEcoObs.frx":4983F
            TabIndex        =   191
            Top             =   240
            Width           =   1815
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   256
            Left            =   8000
            TabIndex        =   486
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   680
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Shape Shp 
            BorderColor     =   &H00404040&
            BorderWidth     =   3
            Height          =   1500
            Index           =   6
            Left            =   120
            Top             =   120
            Width           =   8100
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "="
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   137
            Left            =   6360
            TabIndex        =   203
            Top             =   1240
            Width           =   105
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Percentil"
            Height          =   210
            Index           =   135
            Left            =   7380
            TabIndex        =   202
            Top             =   480
            Width           =   615
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            Height          =   210
            Index           =   134
            Left            =   5160
            TabIndex        =   201
            ToolTipText     =   "Milímetros"
            Top             =   765
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "BVM"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   133
            Left            =   4080
            TabIndex        =   200
            Top             =   760
            Width           =   360
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "C.- Sumatoria de 4 cuadrantes (ILA)"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   136
            Left            =   240
            TabIndex        =   190
            Top             =   1245
            Width           =   2940
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "B.- Semi cuantitativa (BVM = medición única)"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   132
            Left            =   240
            TabIndex        =   189
            Top             =   765
            Width           =   3645
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "A.- Evaluación Cualitativa del Líquido Amniótico"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   131
            Left            =   240
            TabIndex        =   188
            Top             =   285
            Width           =   3870
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   400
            Index           =   257
            Left            =   8000
            TabIndex        =   487
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   1160
            Visible         =   0   'False
            Width           =   120
         End
      End
      Begin VB.CheckBox Chk 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Ver Tamizaje 20 - 24"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   210
         Index           =   21
         Left            =   8880
         TabIndex        =   767
         Top             =   4440
         Width           =   2175
      End
      Begin VB.CommandButton Command1 
         Height          =   255
         Left            =   2880
         TabIndex        =   765
         Top             =   2040
         Width           =   375
      End
      Begin VB.CommandButton Bn 
         Caption         =   "PDF Crecimiento"
         Height          =   255
         Index           =   98
         Left            =   12480
         TabIndex        =   751
         Top             =   6600
         Visible         =   0   'False
         Width           =   1575
      End
      Begin VB.CheckBox Chk 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Imágen Abdominal fetal"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   13322
            SubFormatType   =   0
         EndProperty
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   210
         Index           =   18
         Left            =   480
         TabIndex        =   745
         Top             =   3600
         Width           =   2295
      End
      Begin VB.CheckBox Chk 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Estructuras Intracraneales fetales"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   13322
            SubFormatType   =   0
         EndProperty
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   210
         Index           =   19
         Left            =   480
         TabIndex        =   744
         Top             =   2640
         Width           =   3135
      End
      Begin VB.CommandButton Bn 
         Caption         =   "PDF Edad Gest."
         Height          =   255
         Index           =   94
         Left            =   12720
         TabIndex        =   714
         Top             =   6240
         Visible         =   0   'False
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Ver Documento"
         Height          =   255
         Index           =   86
         Left            =   13080
         TabIndex        =   580
         Top             =   6480
         Width           =   1575
      End
      Begin VB.CheckBox Chk 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Placenta y cordón"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   6
         Left            =   480
         TabIndex        =   494
         Top             =   4080
         Width           =   1815
      End
      Begin VB.CheckBox Chk 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Líquido Amniótico"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   210
         Index           =   7
         Left            =   480
         TabIndex        =   493
         Top             =   4560
         Width           =   1815
      End
      Begin VB.Data Dt 
         BackColor       =   &H00F4F4E8&
         Caption         =   "Recorrer Exámenes"
         Connect         =   "Access"
         DatabaseName    =   "C:\Consulta Medica Nuevo\Consultamedica.mdb"
         DefaultCursorType=   0  'DefaultCursor
         DefaultType     =   2  'UseODBC
         Exclusive       =   0   'False
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   2
         Left            =   9840
         Options         =   0
         ReadOnly        =   0   'False
         RecordsetType   =   1  'Dynaset
         RecordSource    =   "ecografias"
         Top             =   5520
         Width           =   3000
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Sobre"
         Enabled         =   0   'False
         Height          =   375
         Index           =   27
         Left            =   13080
         TabIndex        =   347
         Top             =   6000
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Informe 4"
         Enabled         =   0   'False
         Height          =   375
         Index           =   26
         Left            =   13080
         TabIndex        =   346
         Top             =   7560
         Visible         =   0   'False
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Grafica Crecimiento"
         Enabled         =   0   'False
         Height          =   495
         Index           =   25
         Left            =   13080
         TabIndex        =   345
         Top             =   5320
         Width           =   1575
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "ecografista"
         DataSource      =   "Dt(2)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   36
         Left            =   9840
         TabIndex        =   167
         Top             =   5040
         Width           =   3015
      End
      Begin VB.CommandButton Bn 
         BackColor       =   &H00F4F4E8&
         Caption         =   "Nuevo"
         Height          =   615
         Index           =   18
         Left            =   13080
         TabIndex        =   118
         Top             =   360
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Grabar"
         Enabled         =   0   'False
         Height          =   375
         Index           =   19
         Left            =   13080
         TabIndex        =   117
         Top             =   1080
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         BackColor       =   &H00E0E0E0&
         Caption         =   "Modificar"
         Height          =   375
         Index           =   21
         Left            =   13080
         TabIndex        =   116
         Top             =   2040
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Eliminar"
         Height          =   375
         Index           =   22
         Left            =   13080
         TabIndex        =   115
         Top             =   2520
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Salir"
         Height          =   735
         Index           =   28
         Left            =   13080
         Picture         =   "frmEcoObs.frx":4986F
         Style           =   1  'Graphical
         TabIndex        =   114
         Top             =   6840
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Cancelar"
         Enabled         =   0   'False
         Height          =   375
         Index           =   20
         Left            =   13080
         TabIndex        =   113
         Top             =   1560
         Width           =   1575
      End
      Begin VB.Frame div 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Información"
         Enabled         =   0   'False
         ForeColor       =   &H00B96629&
         Height          =   4695
         Index           =   9
         Left            =   240
         TabIndex        =   112
         Top             =   240
         Width           =   12615
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "lcn"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   172
            Left            =   10680
            MaxLength       =   3
            TabIndex        =   825
            Top             =   1800
            Width           =   615
         End
         Begin VB.Frame div 
            BackColor       =   &H00FFFFFF&
            BorderStyle     =   0  'None
            Height          =   320
            Index           =   38
            Left            =   4560
            TabIndex        =   819
            Top             =   1320
            Width           =   1400
            Begin VB.OptionButton Optn 
               BackColor       =   &H00FFFFFF&
               Caption         =   "No"
               Height          =   210
               Index           =   13
               Left            =   40
               TabIndex        =   821
               Top             =   40
               Width           =   615
            End
            Begin VB.OptionButton Optn 
               BackColor       =   &H00FFFFFF&
               Caption         =   "Si"
               Height          =   210
               Index           =   12
               Left            =   720
               TabIndex        =   820
               Top             =   40
               Width           =   615
            End
         End
         Begin VB.Frame div 
            BackColor       =   &H00FFFFFF&
            BorderStyle     =   0  'None
            Height          =   320
            Index           =   27
            Left            =   4560
            TabIndex        =   816
            Top             =   840
            Width           =   1400
            Begin VB.OptionButton Optn 
               BackColor       =   &H00FFFFFF&
               Caption         =   "No"
               Height          =   210
               Index           =   11
               Left            =   40
               TabIndex        =   818
               Top             =   40
               Width           =   615
            End
            Begin VB.OptionButton Optn 
               BackColor       =   &H00FFFFFF&
               Caption         =   "Si"
               Height          =   210
               Index           =   10
               Left            =   720
               TabIndex        =   817
               Top             =   40
               Width           =   615
            End
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "crbeloval"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   189
            Left            =   7320
            MaxLength       =   3
            TabIndex        =   753
            Top             =   2280
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H00F4F4E8&
            DataField       =   "pctCB"
            DataSource      =   "Dt(2)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   32
            Left            =   8640
            TabIndex        =   752
            Top             =   2280
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "fcf"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   49
            Left            =   1440
            MaxLength       =   3
            TabIndex        =   747
            Top             =   1800
            Width           =   495
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "sexo"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   26
            ItemData        =   "frmEcoObs.frx":4A709
            Left            =   3600
            List            =   "frmEcoObs.frx":4A716
            TabIndex        =   746
            Top             =   1800
            Width           =   1815
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "altmorfo"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   35
            ItemData        =   "frmEcoObs.frx":4A744
            Left            =   9600
            List            =   "frmEcoObs.frx":4A769
            TabIndex        =   170
            Top             =   3720
            Width           =   2895
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H00F4F4E8&
            DataField       =   "pctccca"
            DataSource      =   "Dt(2)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   66
            Left            =   8640
            TabIndex        =   161
            Top             =   3720
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H00F4F4E8&
            DataField       =   "pctpeso"
            DataSource      =   "Dt(2)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   64
            Left            =   8640
            TabIndex        =   160
            Top             =   3240
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "tallafet"
            DataSource      =   "Dt(2)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   67
            Left            =   7320
            TabIndex        =   159
            Top             =   4200
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "ccca"
            DataSource      =   "Dt(2)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   65
            Left            =   7320
            TabIndex        =   158
            Top             =   3720
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "pesofe"
            DataSource      =   "Dt(2)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   63
            Left            =   7320
            TabIndex        =   157
            Top             =   3240
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H00F4F4E8&
            DataField       =   "eg-p50"
            DataSource      =   "Dt(2)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   62
            Left            =   10680
            MaxLength       =   4
            TabIndex        =   156
            Top             =   2760
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H00F4F4E8&
            DataField       =   "pctlf"
            DataSource      =   "Dt(2)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   61
            Left            =   8640
            TabIndex        =   155
            Top             =   1800
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H00F4F4E8&
            DataField       =   "pctca"
            DataSource      =   "Dt(2)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   58
            Left            =   8640
            TabIndex        =   154
            Top             =   1320
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H00F4F4E8&
            DataField       =   "pctcc"
            DataSource      =   "Dt(2)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   55
            Left            =   8640
            TabIndex        =   153
            ToolTipText     =   "Aumentado"
            Top             =   840
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "lf"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   60
            Left            =   7320
            MaxLength       =   3
            TabIndex        =   152
            Top             =   1800
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "ca"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   57
            Left            =   7320
            MaxLength       =   3
            TabIndex        =   151
            Top             =   1320
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "dap"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   59
            Left            =   10680
            MaxLength       =   3
            TabIndex        =   150
            Top             =   1320
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "dat"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   56
            Left            =   10680
            MaxLength       =   3
            TabIndex        =   149
            Top             =   840
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "cc"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   54
            Left            =   7320
            MaxLength       =   3
            TabIndex        =   148
            Top             =   840
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "dof"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   53
            Left            =   10680
            MaxLength       =   3
            TabIndex        =   147
            Top             =   360
            Width           =   615
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "dorso"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   24
            ItemData        =   "frmEcoObs.frx":4A879
            Left            =   1440
            List            =   "frmEcoObs.frx":4A889
            TabIndex        =   146
            Top             =   1320
            Width           =   1935
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "presentacion"
            DataSource      =   "Dt(2)"
            Height          =   330
            Index           =   23
            ItemData        =   "frmEcoObs.frx":4A8C0
            Left            =   1440
            List            =   "frmEcoObs.frx":4A8D0
            TabIndex        =   145
            Top             =   840
            Width           =   1935
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "dbp"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   52
            Left            =   7320
            MaxLength       =   3
            TabIndex        =   144
            Top             =   360
            Width           =   615
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H00F4F4E8&
            DataField       =   "eg3"
            DataSource      =   "Dt(2)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   47
            Left            =   4560
            TabIndex        =   143
            Top             =   360
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "fecha3"
            DataSource      =   "Dt(2)"
            Height          =   315
            Index           =   46
            Left            =   2160
            TabIndex        =   142
            Top             =   360
            Width           =   1215
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "neco"
            DataSource      =   "Dt(2)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   45
            Left            =   960
            TabIndex        =   141
            Top             =   360
            Width           =   495
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "LCN (< 14)"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   367
            Left            =   9600
            TabIndex        =   827
            Top             =   1860
            Width           =   900
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   366
            Left            =   11400
            TabIndex        =   826
            ToolTipText     =   "Milímetros"
            Top             =   1860
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "LH"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   183
            Left            =   6000
            TabIndex        =   755
            ToolTipText     =   "Largo de Fémur"
            Top             =   2325
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   68
            Left            =   7980
            TabIndex        =   754
            ToolTipText     =   "Milimetros"
            Top             =   2325
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "FCF"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   112
            Left            =   240
            TabIndex        =   750
            ToolTipText     =   "Frecuencia Cardiaca Fetal"
            Top             =   1845
            Width           =   345
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "x min"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   113
            Left            =   2040
            TabIndex        =   749
            Top             =   1845
            Width           =   375
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Sexo"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   118
            Left            =   3120
            TabIndex        =   748
            ToolTipText     =   "Sexo Fetal"
            Top             =   1845
            Width           =   405
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   254
            Left            =   9300
            TabIndex        =   485
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   3675
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   253
            Left            =   9300
            TabIndex        =   484
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   3195
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   252
            Left            =   9300
            TabIndex        =   483
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   1780
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   251
            Left            =   9300
            TabIndex        =   482
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   1280
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "!"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   18
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   405
            Index           =   250
            Left            =   9300
            TabIndex        =   481
            ToolTipText     =   "Aumentado segï¿½n EG"
            Top             =   800
            Visible         =   0   'False
            Width           =   120
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   93
            Left            =   11400
            TabIndex        =   453
            ToolTipText     =   "Milï¿½metros"
            Top             =   405
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   99
            Left            =   11400
            TabIndex        =   452
            ToolTipText     =   "Milímetros"
            Top             =   885
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   105
            Left            =   11400
            TabIndex        =   451
            ToolTipText     =   "Milímetros"
            Top             =   1380
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   110
            Left            =   7980
            TabIndex        =   173
            ToolTipText     =   "Milimetros"
            Top             =   1845
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   103
            Left            =   7980
            TabIndex        =   172
            ToolTipText     =   "Milímetros"
            Top             =   1380
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   97
            Left            =   7980
            TabIndex        =   171
            ToolTipText     =   "Milímetros"
            Top             =   885
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Evaluación Morfológica"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   111
            Left            =   9600
            TabIndex        =   169
            Top             =   3360
            Width           =   1890
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Medida"
            Height          =   210
            Index           =   89
            Left            =   7360
            TabIndex        =   164
            Top             =   120
            Width           =   510
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Percentil"
            Height          =   210
            Index           =   91
            Left            =   8620
            TabIndex        =   163
            Top             =   120
            Width           =   615
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   90
            Left            =   7980
            TabIndex        =   162
            ToolTipText     =   "Milï¿½metros"
            Top             =   405
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "cms"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   124
            Left            =   7980
            TabIndex        =   140
            ToolTipText     =   "Centímetros"
            Top             =   4245
            Width           =   300
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Talla Fetal"
            DataSource      =   "Dt(2)"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   123
            Left            =   6000
            TabIndex        =   139
            Top             =   4245
            Width           =   855
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Cc / Ca"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   122
            Left            =   6000
            TabIndex        =   138
            Top             =   3765
            Width           =   600
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "grs"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   121
            Left            =   7980
            TabIndex        =   137
            ToolTipText     =   "Gramos"
            Top             =   3270
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Peso Estimado"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   120
            Left            =   6000
            TabIndex        =   136
            Top             =   3270
            Width           =   1275
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "sem"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   117
            Left            =   11340
            TabIndex        =   135
            ToolTipText     =   "Semanas"
            Top             =   2805
            Width           =   300
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "De ser la primera Ecografía, la Ege P. 50 sería:"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   116
            Left            =   6000
            TabIndex        =   134
            Top             =   2805
            Width           =   3915
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "LF"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   109
            Left            =   6000
            TabIndex        =   133
            ToolTipText     =   "Largo de Fémur"
            Top             =   1845
            Width           =   210
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "C. Abdómen"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   102
            Left            =   6000
            TabIndex        =   132
            ToolTipText     =   "Circunferencia de Abdómen"
            Top             =   1380
            Width           =   1020
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "DAAP"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   104
            Left            =   9600
            TabIndex        =   131
            Top             =   1380
            Width           =   465
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "DAT"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   98
            Left            =   9600
            TabIndex        =   130
            Top             =   885
            Width           =   345
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "C. Cráneo"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   96
            Left            =   6000
            TabIndex        =   129
            ToolTipText     =   "Circunferencia de Cráneo"
            Top             =   885
            Width           =   840
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "DOF"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   92
            Left            =   9600
            TabIndex        =   128
            Top             =   405
            Width           =   375
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "DBP"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   88
            Left            =   6000
            TabIndex        =   127
            Top             =   405
            Width           =   375
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Mov. Fet."
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   101
            Left            =   3840
            TabIndex        =   126
            ToolTipText     =   "Movimientos Fetales"
            Top             =   1380
            Width           =   705
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Ac. Card."
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   95
            Left            =   3840
            TabIndex        =   125
            ToolTipText     =   "Actividad Cardiaca"
            Top             =   885
            Width           =   735
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Dorso Fetal"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   100
            Left            =   240
            TabIndex        =   124
            Top             =   1380
            Width           =   960
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Presentación"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   94
            Left            =   240
            TabIndex        =   123
            Top             =   885
            Width           =   1095
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "sem"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   87
            Left            =   5160
            TabIndex        =   122
            ToolTipText     =   "Semanas"
            Top             =   405
            Width           =   300
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "EG Eco"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   86
            Left            =   3840
            TabIndex        =   121
            Top             =   405
            Width           =   615
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Fecha"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   85
            Left            =   1560
            TabIndex        =   120
            Top             =   405
            Width           =   510
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "N° Eco"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   84
            Left            =   240
            TabIndex        =   119
            Top             =   405
            Width           =   555
         End
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Edad Gestacional"
         Enabled         =   0   'False
         Height          =   495
         Index           =   23
         Left            =   13080
         TabIndex        =   110
         Top             =   3480
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Crecimiento Fetal"
         Enabled         =   0   'False
         Height          =   495
         Index           =   24
         Left            =   13080
         TabIndex        =   109
         Top             =   4800
         Width           =   1575
      End
      Begin MSDBGrid.DBGrid Arry 
         Bindings        =   "frmEcoObs.frx":4A901
         Height          =   1455
         Index           =   2
         Left            =   240
         OleObjectBlob   =   "frmEcoObs.frx":4A915
         TabIndex        =   111
         Top             =   6240
         Width           =   12615
      End
      Begin VB.TextBox P 
         Appearance      =   0  'Flat
         DataField       =   "obs"
         DataSource      =   "Dt(2)"
         Enabled         =   0   'False
         Height          =   1035
         Index           =   69
         Left            =   1680
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   168
         Top             =   5040
         Width           =   6855
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Grafica E. Gest."
         Height          =   495
         Index           =   71
         Left            =   13080
         TabIndex        =   822
         Top             =   4000
         Width           =   1575
      End
      Begin VB.Label lbl 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Informes"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   140
         Left            =   13065
         TabIndex        =   443
         Top             =   3120
         Width           =   1545
         WordWrap        =   -1  'True
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Ecografista"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   139
         Left            =   8760
         TabIndex        =   166
         Top             =   5040
         Width           =   930
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Observaciones"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   138
         Left            =   360
         TabIndex        =   165
         Top             =   5040
         Width           =   1245
      End
      Begin VB.Shape Shp 
         BorderColor     =   &H00B96629&
         BorderWidth     =   3
         Height          =   7620
         Index           =   4
         Left            =   120
         Top             =   120
         Width           =   14775
      End
   End
   Begin VB.Frame div 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   7815
      Index           =   4
      Left            =   20000
      TabIndex        =   36
      Top             =   960
      Width           =   15015
      Begin VB.CommandButton Bn 
         Caption         =   "Grafica E. Gest."
         Height          =   495
         Index           =   15
         Left            =   13080
         TabIndex        =   905
         Top             =   4320
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "EMISUB"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   100
         Left            =   13080
         TabIndex        =   756
         Top             =   5400
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Ver Gráficos"
         Height          =   375
         Index           =   91
         Left            =   13080
         TabIndex        =   643
         Top             =   5880
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Ver Documento"
         Height          =   375
         Index           =   58
         Left            =   13080
         TabIndex        =   571
         Top             =   6360
         Width           =   1575
      End
      Begin VB.Data Dt 
         BackColor       =   &H00F4F4E8&
         Caption         =   "Recorrer Exámenes"
         Connect         =   "Access"
         DatabaseName    =   ""
         DefaultCursorType=   0  'DefaultCursor
         DefaultType     =   2  'UseODBC
         Exclusive       =   0   'False
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Index           =   1
         Left            =   9840
         Options         =   0
         ReadOnly        =   0   'False
         RecordsetType   =   1  'Dynaset
         RecordSource    =   "eco1trim"
         Top             =   5040
         Width           =   3000
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Sobre"
         Height          =   375
         Index           =   16
         Left            =   13080
         TabIndex        =   425
         Top             =   4920
         Width           =   1575
      End
      Begin VB.CheckBox Chk 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Biometrías para EG > 12 Sem."
         BeginProperty DataFormat 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   2
         Left            =   360
         TabIndex        =   358
         Top             =   4280
         Width           =   2895
      End
      Begin VB.Frame div 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Información"
         Enabled         =   0   'False
         ForeColor       =   &H00B96629&
         Height          =   4335
         Index           =   5
         Left            =   240
         TabIndex        =   43
         Top             =   240
         Width           =   12615
         Begin VB.ComboBox Cbx 
            DataField       =   "freccard"
            DataSource      =   "Dt(1)"
            Height          =   330
            Index           =   63
            ItemData        =   "frmEcoObs.frx":4CA20
            Left            =   5640
            List            =   "frmEcoObs.frx":4CB20
            TabIndex        =   909
            Text            =   "(+) inicial"
            Top             =   3600
            Width           =   1215
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "eglcn"
            DataSource      =   "Dt(1)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   28
            Left            =   11520
            MaxLength       =   4
            TabIndex        =   104
            Top             =   3600
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H00F4F4E8&
            DataField       =   "lcn"
            DataSource      =   "Dt(1)"
            Height          =   315
            Index           =   27
            Left            =   8760
            MaxLength       =   2
            TabIndex        =   103
            Top             =   3600
            Width           =   495
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "embrion"
            DataSource      =   "Dt(1)"
            Height          =   330
            Index           =   17
            ItemData        =   "frmEcoObs.frx":4CCC9
            Left            =   1680
            List            =   "frmEcoObs.frx":4CCDF
            TabIndex        =   102
            Top             =   3600
            Width           =   1935
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "douglas2"
            DataSource      =   "Dt(1)"
            Height          =   330
            Index           =   16
            ItemData        =   "frmEcoObs.frx":4CD65
            Left            =   10200
            List            =   "frmEcoObs.frx":4CD6F
            TabIndex        =   101
            Top             =   3000
            Visible         =   0   'False
            Width           =   1815
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "douglas1"
            DataSource      =   "Dt(1)"
            Height          =   330
            Index           =   15
            ItemData        =   "frmEcoObs.frx":4CD97
            Left            =   8760
            List            =   "frmEcoObs.frx":4CDA1
            TabIndex        =   100
            Top             =   3000
            Width           =   1335
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "medvit"
            DataSource      =   "Dt(1)"
            Height          =   315
            Index           =   25
            Left            =   6720
            MaxLength       =   3
            TabIndex        =   99
            Top             =   3000
            Visible         =   0   'False
            Width           =   495
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "sacvit"
            DataSource      =   "Dt(1)"
            Height          =   330
            Index           =   14
            ItemData        =   "frmEcoObs.frx":4CDB5
            Left            =   5040
            List            =   "frmEcoObs.frx":4CDC2
            TabIndex        =   98
            Top             =   3000
            Width           =   1575
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "tr"
            DataSource      =   "Dt(1)"
            Height          =   330
            Index           =   13
            ItemData        =   "frmEcoObs.frx":4CDE6
            Left            =   1680
            List            =   "frmEcoObs.frx":4CDF3
            TabIndex        =   97
            Top             =   3000
            Width           =   1935
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "egs"
            DataSource      =   "Dt(1)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   24
            Left            =   11520
            TabIndex        =   96
            Top             =   2280
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "proms"
            DataSource      =   "Dt(1)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   23
            Left            =   9360
            TabIndex        =   95
            Top             =   2280
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "meds3"
            DataSource      =   "Dt(1)"
            Height          =   315
            Index           =   22
            Left            =   6720
            MaxLength       =   2
            TabIndex        =   94
            Top             =   2280
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "meds2"
            DataSource      =   "Dt(1)"
            Height          =   315
            Index           =   21
            Left            =   5880
            MaxLength       =   2
            TabIndex        =   93
            Top             =   2280
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "meds1"
            DataSource      =   "Dt(1)"
            Height          =   315
            Index           =   20
            Left            =   5040
            MaxLength       =   2
            TabIndex        =   92
            Top             =   2280
            Width           =   495
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "saco1"
            DataSource      =   "Dt(1)"
            Height          =   330
            Index           =   12
            ItemData        =   "frmEcoObs.frx":4CE23
            Left            =   1680
            List            =   "frmEcoObs.frx":4CE36
            TabIndex        =   91
            Top             =   2280
            Width           =   1935
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "manxd2"
            DataSource      =   "Dt(1)"
            Height          =   315
            Index           =   19
            Left            =   11520
            MaxLength       =   3
            TabIndex        =   90
            Top             =   1560
            Visible         =   0   'False
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "manxd1"
            DataSource      =   "Dt(1)"
            Height          =   315
            Index           =   18
            Left            =   10800
            MaxLength       =   3
            TabIndex        =   89
            Top             =   1560
            Visible         =   0   'False
            Width           =   495
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "anexd"
            DataSource      =   "Dt(1)"
            Height          =   330
            Index           =   11
            ItemData        =   "frmEcoObs.frx":4CE7F
            Left            =   8760
            List            =   "frmEcoObs.frx":4CE8F
            TabIndex        =   88
            Top             =   1560
            Width           =   1935
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "manxiz2"
            DataSource      =   "Dt(1)"
            Height          =   315
            Index           =   17
            Left            =   4440
            MaxLength       =   3
            TabIndex        =   87
            Top             =   1560
            Visible         =   0   'False
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "manxiz1"
            DataSource      =   "Dt(1)"
            Height          =   315
            Index           =   16
            Left            =   3720
            MaxLength       =   3
            TabIndex        =   86
            Top             =   1560
            Visible         =   0   'False
            Width           =   495
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "enexiz"
            DataSource      =   "Dt(1)"
            Height          =   330
            Index           =   10
            ItemData        =   "frmEcoObs.frx":4CECF
            Left            =   1680
            List            =   "frmEcoObs.frx":4CEDF
            TabIndex        =   85
            Top             =   1560
            Width           =   1935
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "utero3"
            DataSource      =   "Dt(1)"
            Height          =   330
            Index           =   9
            ItemData        =   "frmEcoObs.frx":4CF1F
            Left            =   8760
            List            =   "frmEcoObs.frx":4CF2F
            TabIndex        =   84
            Top             =   960
            Width           =   1935
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "utero2"
            DataSource      =   "Dt(1)"
            Height          =   330
            Index           =   8
            ItemData        =   "frmEcoObs.frx":4CF74
            Left            =   6000
            List            =   "frmEcoObs.frx":4CF7E
            TabIndex        =   83
            Top             =   960
            Width           =   1215
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "egeco1"
            DataSource      =   "Dt(1)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   14
            Left            =   11520
            MaxLength       =   4
            TabIndex        =   82
            Top             =   360
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "feco1"
            DataSource      =   "Dt(1)"
            Height          =   315
            Index           =   13
            Left            =   6360
            TabIndex        =   81
            Top             =   360
            Width           =   1215
         End
         Begin VB.ComboBox Cbx 
            DataField       =   "utero1"
            DataSource      =   "Dt(1)"
            Height          =   330
            Index           =   7
            ItemData        =   "frmEcoObs.frx":4CF97
            Left            =   1680
            List            =   "frmEcoObs.frx":4CFA4
            TabIndex        =   45
            Top             =   960
            Width           =   2415
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "N"
            DataSource      =   "Dt(1)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   12
            Left            =   480
            MaxLength       =   2
            TabIndex        =   44
            Top             =   360
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            Enabled         =   0   'False
            Height          =   315
            Index           =   160
            Left            =   2160
            TabIndex        =   553
            Top             =   360
            Width           =   1335
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "egp50"
            DataSource      =   "Dt(1)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   171
            Left            =   11520
            MaxLength       =   4
            TabIndex        =   572
            Top             =   3960
            Width           =   495
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "sem"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   292
            Left            =   12075
            TabIndex        =   574
            ToolTipText     =   "Semanas"
            Top             =   4000
            Width           =   300
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "EG Según promedio de biometrías > 12"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   288
            Left            =   7920
            TabIndex        =   573
            Top             =   4005
            Width           =   3270
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "FUR"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   272
            Left            =   1680
            TabIndex        =   554
            Top             =   405
            Width           =   375
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "sem"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   59
            Left            =   12075
            TabIndex        =   78
            ToolTipText     =   "Semanas"
            Top             =   3645
            Width           =   300
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "EG según LCN"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   58
            Left            =   10080
            TabIndex        =   77
            Top             =   3645
            Width           =   1245
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   57
            Left            =   9315
            TabIndex        =   76
            ToolTipText     =   "Milï¿½metros"
            Top             =   3645
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "LCN"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   56
            Left            =   7920
            TabIndex        =   75
            Top             =   3645
            Width           =   375
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "x min"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   55
            Left            =   6960
            TabIndex        =   74
            Top             =   3645
            Width           =   375
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Frecuencia Cardiaca"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   54
            Left            =   3840
            TabIndex        =   73
            Top             =   3645
            Width           =   1710
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Embrión"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   53
            Left            =   120
            TabIndex        =   72
            Top             =   3645
            Width           =   705
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Douglas"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   52
            Left            =   7920
            TabIndex        =   71
            Top             =   3045
            Width           =   705
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   51
            Left            =   7275
            TabIndex        =   70
            ToolTipText     =   "Milï¿½metros"
            Top             =   3045
            Visible         =   0   'False
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Saco vitelino"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   50
            Left            =   3840
            TabIndex        =   69
            Top             =   3045
            Width           =   1035
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Trofoblasto"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   49
            Left            =   120
            TabIndex        =   68
            Top             =   3045
            Width           =   930
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "sem"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   48
            Left            =   12075
            TabIndex        =   67
            ToolTipText     =   "Semanas"
            Top             =   2325
            Width           =   300
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "EG según Saco"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   47
            Left            =   10080
            TabIndex        =   66
            Top             =   2325
            Width           =   1290
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Promedio Saco"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   46
            Left            =   7920
            TabIndex        =   65
            Top             =   2325
            Width           =   1275
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   45
            Left            =   7275
            TabIndex        =   64
            ToolTipText     =   "Milï¿½metros"
            Top             =   2325
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "x"
            Height          =   210
            Index           =   44
            Left            =   6495
            TabIndex        =   63
            Top             =   2325
            Width           =   90
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "x"
            Height          =   210
            Index           =   43
            Left            =   5685
            TabIndex        =   62
            Top             =   2325
            Width           =   90
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Medida Saco"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   42
            Left            =   3840
            TabIndex        =   61
            Top             =   2325
            Width           =   1065
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Saco Gestacional"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   41
            Left            =   120
            TabIndex        =   60
            Top             =   2325
            Width           =   1455
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   40
            Left            =   12075
            TabIndex        =   59
            ToolTipText     =   "Milï¿½metros"
            Top             =   1605
            Visible         =   0   'False
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "x"
            Height          =   210
            Index           =   39
            Left            =   11370
            TabIndex        =   58
            Top             =   1605
            Visible         =   0   'False
            Width           =   90
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Anexo Derecho"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   38
            Left            =   7440
            TabIndex        =   57
            Top             =   1605
            Width           =   1245
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "mm"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   37
            Left            =   4995
            TabIndex        =   56
            ToolTipText     =   "Milï¿½metros"
            Top             =   1605
            Visible         =   0   'False
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "x"
            Height          =   210
            Index           =   36
            Left            =   4290
            TabIndex        =   55
            Top             =   1605
            Visible         =   0   'False
            Width           =   90
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Anexo Izquierdo"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   35
            Left            =   120
            TabIndex        =   54
            Top             =   1680
            Width           =   1290
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Cuerpo Uterino"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   34
            Left            =   7440
            TabIndex        =   53
            Top             =   1005
            Width           =   1260
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Utero Ubicación 2"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   33
            Left            =   4440
            TabIndex        =   52
            Top             =   1005
            Width           =   1470
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Utero Ubicación 1"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   32
            Left            =   120
            TabIndex        =   51
            Top             =   1005
            Width           =   1470
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "sem."
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   29
            Left            =   12120
            TabIndex        =   49
            ToolTipText     =   "Semanas"
            Top             =   405
            Width           =   345
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "EG Exámen"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   28
            Left            =   10080
            TabIndex        =   48
            ToolTipText     =   "Edad Gestacional al exámen"
            Top             =   405
            Width           =   975
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Fecha de ecografía"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   27
            Left            =   4680
            TabIndex        =   47
            Top             =   405
            Width           =   1575
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "N°"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   26
            Left            =   120
            TabIndex        =   46
            Top             =   405
            Width           =   195
         End
      End
      Begin VB.Frame div 
         BackColor       =   &H00FFFFFF&
         Enabled         =   0   'False
         Height          =   3135
         Index           =   7
         Left            =   360
         TabIndex        =   357
         Top             =   4440
         Visible         =   0   'False
         Width           =   2655
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "egp50"
            DataSource      =   "Dt(1)"
            Enabled         =   0   'False
            Height          =   315
            Index           =   44
            Left            =   1800
            MaxLength       =   4
            TabIndex        =   441
            Top             =   2400
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "lf"
            DataSource      =   "Dt(1)"
            Height          =   315
            Index           =   43
            Left            =   720
            MaxLength       =   3
            TabIndex        =   439
            Top             =   1920
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "dap"
            DataSource      =   "Dt(1)"
            Height          =   315
            Index           =   42
            Left            =   1800
            MaxLength       =   3
            TabIndex        =   437
            Top             =   1440
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "ca"
            DataSource      =   "Dt(1)"
            Height          =   315
            Index           =   41
            Left            =   720
            MaxLength       =   3
            TabIndex        =   435
            Top             =   1440
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "dat"
            DataSource      =   "Dt(1)"
            Height          =   315
            Index           =   40
            Left            =   1800
            MaxLength       =   3
            TabIndex        =   433
            Top             =   960
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "cc"
            DataSource      =   "Dt(1)"
            Height          =   315
            Index           =   39
            Left            =   720
            MaxLength       =   3
            TabIndex        =   431
            Top             =   960
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "dof"
            DataSource      =   "Dt(1)"
            Height          =   315
            Index           =   38
            Left            =   1800
            MaxLength       =   3
            TabIndex        =   429
            Top             =   480
            Width           =   495
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            DataField       =   "dbp"
            DataSource      =   "Dt(1)"
            Height          =   315
            Index           =   37
            Left            =   720
            MaxLength       =   3
            TabIndex        =   427
            Top             =   480
            Width           =   495
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "EG Promedio"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   83
            Left            =   240
            TabIndex        =   442
            Top             =   2445
            Width           =   1110
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "LF"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   82
            Left            =   240
            TabIndex        =   440
            ToolTipText     =   "Longitud de Fémur"
            Top             =   1965
            Width           =   210
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "DAAP"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   81
            Left            =   1320
            TabIndex        =   438
            Top             =   1485
            Width           =   465
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "CA"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   80
            Left            =   240
            TabIndex        =   436
            ToolTipText     =   "Circunferencia de Abdómen"
            Top             =   1485
            Width           =   240
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "DAT"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   79
            Left            =   1320
            TabIndex        =   434
            Top             =   1005
            Width           =   345
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "CC"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   78
            Left            =   240
            TabIndex        =   432
            ToolTipText     =   "Circunferencia de cráneo"
            Top             =   1005
            Width           =   270
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "DOF"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   77
            Left            =   1320
            TabIndex        =   430
            Top             =   525
            Width           =   375
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "DBP"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   76
            Left            =   240
            TabIndex        =   428
            Top             =   525
            Width           =   375
         End
         Begin VB.Shape Shp 
            BorderColor     =   &H00404040&
            BorderWidth     =   3
            Height          =   2820
            Index           =   3
            Left            =   120
            Top             =   240
            Width           =   2415
         End
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Principal"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   14
         Left            =   13080
         TabIndex        =   107
         Top             =   3840
         Width           =   1575
      End
      Begin VB.ComboBox Cbx 
         DataField       =   "ecografista"
         DataSource      =   "Dt(1)"
         Enabled         =   0   'False
         Height          =   330
         Index           =   22
         ItemData        =   "frmEcoObs.frx":4CFE9
         Left            =   9960
         List            =   "frmEcoObs.frx":4CFEB
         TabIndex        =   106
         Top             =   4680
         Width           =   2895
      End
      Begin VB.TextBox P 
         Appearance      =   0  'Flat
         DataField       =   "observaciones"
         DataSource      =   "Dt(1)"
         Enabled         =   0   'False
         Height          =   915
         Index           =   29
         Left            =   1680
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   105
         Top             =   4680
         Width           =   6495
      End
      Begin MSDBGrid.DBGrid Arry 
         Bindings        =   "frmEcoObs.frx":4CFED
         Height          =   1935
         Index           =   1
         Left            =   240
         OleObjectBlob   =   "frmEcoObs.frx":4D001
         TabIndex        =   50
         Top             =   5640
         Width           =   12615
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Cancelar"
         Enabled         =   0   'False
         Height          =   375
         Index           =   11
         Left            =   13080
         TabIndex        =   42
         Top             =   1560
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Salir"
         Height          =   735
         Index           =   17
         Left            =   13080
         Picture         =   "frmEcoObs.frx":4E56C
         Style           =   1  'Graphical
         TabIndex        =   41
         Top             =   6840
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Eliminar"
         Height          =   375
         Index           =   13
         Left            =   13080
         TabIndex        =   40
         Top             =   2520
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         BackColor       =   &H00E0E0E0&
         Caption         =   "Modificar"
         Height          =   375
         Index           =   12
         Left            =   13080
         TabIndex        =   39
         Top             =   2040
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Grabar"
         Enabled         =   0   'False
         Height          =   375
         Index           =   10
         Left            =   13080
         TabIndex        =   38
         Top             =   1080
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         BackColor       =   &H00F4F4E8&
         Caption         =   "Nuevo"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Index           =   9
         Left            =   13080
         TabIndex        =   37
         Top             =   360
         Width           =   1575
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Informes de ecografía"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   62
         Left            =   12960
         TabIndex        =   426
         Top             =   3480
         Width           =   1875
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Ecografista Dr(a):"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   61
         Left            =   8400
         TabIndex        =   80
         Top             =   4680
         Width           =   1440
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Observaciones"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Index           =   60
         Left            =   360
         TabIndex        =   79
         Top             =   4680
         Width           =   1245
      End
      Begin VB.Shape Shp 
         BorderColor     =   &H00B96629&
         BorderWidth     =   3
         Height          =   7620
         Index           =   1
         Left            =   120
         Top             =   120
         Width           =   14775
      End
   End
   Begin VB.Frame div 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   8055
      Index           =   0
      Left            =   0
      TabIndex        =   2
      Top             =   960
      Width           =   15015
      Begin VB.CommandButton Command2 
         Caption         =   "Ciclo menstrual"
         Height          =   1095
         Left            =   13080
         Picture         =   "frmEcoObs.frx":4F406
         Style           =   1  'Graphical
         TabIndex        =   824
         Top             =   4680
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Orden de exámen"
         Height          =   330
         Index           =   101
         Left            =   13080
         TabIndex        =   766
         Top             =   5880
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Ver"
         Height          =   330
         Index           =   92
         Left            =   12120
         TabIndex        =   647
         Top             =   1200
         Width           =   495
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Añadir nuevo consentimiento"
         Height          =   735
         Index           =   1
         Left            =   13080
         TabIndex        =   354
         Top             =   3000
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         BackColor       =   &H00F4F4E8&
         Caption         =   "Ingresar F.U.R."
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Index           =   0
         Left            =   13080
         Style           =   1  'Graphical
         TabIndex        =   29
         Top             =   360
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Grabar"
         Enabled         =   0   'False
         Height          =   375
         Index           =   2
         Left            =   13080
         TabIndex        =   28
         Top             =   1080
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         BackColor       =   &H00E0E0E0&
         Caption         =   "Modificar"
         Enabled         =   0   'False
         Height          =   375
         Index           =   4
         Left            =   13080
         TabIndex        =   27
         Top             =   2040
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Eliminar Exámenes"
         Enabled         =   0   'False
         Height          =   375
         Index           =   5
         Left            =   13080
         TabIndex        =   26
         Top             =   2520
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Ver Documento"
         Height          =   330
         Index           =   6
         Left            =   13080
         TabIndex        =   25
         Top             =   6360
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Salir"
         Height          =   735
         Index           =   7
         Left            =   13080
         Picture         =   "frmEcoObs.frx":51890
         Style           =   1  'Graphical
         TabIndex        =   24
         Top             =   6840
         Width           =   1575
      End
      Begin VB.CommandButton Bn 
         Caption         =   "Cancelar"
         Enabled         =   0   'False
         Height          =   375
         Index           =   3
         Left            =   13080
         TabIndex        =   23
         Top             =   1560
         Width           =   1575
      End
      Begin VB.Frame div 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Información"
         Enabled         =   0   'False
         ForeColor       =   &H00B96629&
         Height          =   2655
         Index           =   1
         Left            =   240
         TabIndex        =   3
         Top             =   240
         Width           =   12615
         Begin VB.ComboBox Cbx 
            BackColor       =   &H00F4F4E8&
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   6
            ItemData        =   "frmEcoObs.frx":5272A
            Left            =   8040
            List            =   "frmEcoObs.frx":5272C
            TabIndex        =   646
            Top             =   1560
            Width           =   3615
         End
         Begin VB.ComboBox Cbx 
            Height          =   330
            Index           =   5
            ItemData        =   "frmEcoObs.frx":5272E
            Left            =   4320
            List            =   "frmEcoObs.frx":52753
            TabIndex        =   550
            Top             =   960
            Width           =   855
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H00F4F4E8&
            Enabled         =   0   'False
            Height          =   315
            Index           =   5
            Left            =   10200
            TabIndex        =   35
            Top             =   2040
            Width           =   1455
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H00F4F4E8&
            Enabled         =   0   'False
            Height          =   315
            Index           =   4
            Left            =   6240
            MaxLength       =   4
            TabIndex        =   34
            Top             =   2040
            Width           =   855
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H00F4F4E8&
            Height          =   315
            Index           =   3
            Left            =   2160
            TabIndex        =   33
            Top             =   2040
            Width           =   1455
         End
         Begin VB.TextBox P 
            Appearance      =   0  'Flat
            BackColor       =   &H00F4F4E8&
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Index           =   2
            Left            =   3000
            MaxLength       =   32
            TabIndex        =   22
            Top             =   1560
            Width           =   3015
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            Enabled         =   0   'False
            Height          =   315
            Index           =   1
            Left            =   10560
            MaxLength       =   12
            TabIndex        =   21
            Top             =   360
            Width           =   1815
         End
         Begin VB.ComboBox Cbx 
            Height          =   330
            Index           =   4
            ItemData        =   "frmEcoObs.frx":52783
            Left            =   11040
            List            =   "frmEcoObs.frx":527A8
            TabIndex        =   20
            Top             =   960
            Width           =   855
         End
         Begin VB.ComboBox Cbx 
            Height          =   330
            Index           =   3
            ItemData        =   "frmEcoObs.frx":527D8
            Left            =   7320
            List            =   "frmEcoObs.frx":527FD
            TabIndex        =   19
            Top             =   960
            Width           =   735
         End
         Begin VB.ComboBox Cbx 
            Height          =   330
            Index           =   2
            ItemData        =   "frmEcoObs.frx":5282D
            Left            =   1440
            List            =   "frmEcoObs.frx":52852
            TabIndex        =   18
            Top             =   960
            Width           =   855
         End
         Begin VB.ComboBox Cbx 
            Height          =   330
            Index           =   1
            ItemData        =   "frmEcoObs.frx":52882
            Left            =   4320
            List            =   "frmEcoObs.frx":529C4
            TabIndex        =   17
            Top             =   360
            Width           =   855
         End
         Begin VB.TextBox P 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            Enabled         =   0   'False
            Height          =   315
            Index           =   0
            Left            =   7320
            MaxLength       =   4
            TabIndex        =   5
            Top             =   360
            Width           =   615
         End
         Begin VB.ComboBox Cbx 
            Height          =   330
            Index           =   0
            ItemData        =   "frmEcoObs.frx":52B99
            Left            =   1440
            List            =   "frmEcoObs.frx":52C36
            TabIndex        =   4
            Top             =   360
            Width           =   855
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Motivo de Ecografía"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   30
            Left            =   6240
            TabIndex        =   552
            Top             =   1560
            Width           =   1665
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Partos Totales"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   271
            Left            =   3000
            TabIndex        =   551
            Top             =   975
            Width           =   1200
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Fecha Probable de Parto"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   17
            Left            =   7800
            TabIndex        =   32
            Top             =   2040
            Width           =   2040
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Edad Gestacional"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   16
            Left            =   4560
            TabIndex        =   31
            Top             =   2040
            Width           =   1470
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Fecha última Regla"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   15
            Left            =   240
            TabIndex        =   30
            Top             =   2040
            Width           =   1605
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Profesional referente a ecografía"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   13
            Left            =   120
            TabIndex        =   16
            Top             =   1560
            Width           =   2820
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Pérdida reproductiva"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   11
            Left            =   8880
            TabIndex        =   15
            Top             =   975
            Width           =   1695
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Cesáreas"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   10
            Left            =   6360
            TabIndex        =   14
            Top             =   975
            Width           =   825
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Gestas Previas"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   9
            Left            =   120
            TabIndex        =   13
            Top             =   975
            Width           =   1260
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Estado Nutricional"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   8
            Left            =   8880
            TabIndex        =   12
            Top             =   405
            Width           =   1515
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Kl/m2"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   7
            Left            =   8040
            TabIndex        =   11
            ToolTipText     =   "Kilos por Metro cuadrado"
            Top             =   405
            Width           =   390
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "IMC"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   6
            Left            =   6360
            TabIndex        =   10
            ToolTipText     =   "Indice de Masa Muscular"
            Top             =   405
            Width           =   315
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "kl."
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   5
            Left            =   5280
            TabIndex        =   9
            ToolTipText     =   "Kilos"
            Top             =   405
            Width           =   150
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Peso Materno"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   4
            Left            =   3000
            TabIndex        =   8
            Top             =   405
            Width           =   1140
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "cms"
            ForeColor       =   &H00808080&
            Height          =   210
            Index           =   3
            Left            =   2400
            TabIndex        =   7
            ToolTipText     =   "Centï¿½metros"
            Top             =   405
            Width           =   300
         End
         Begin VB.Label lbl 
            AutoSize        =   -1  'True
            BackColor       =   &H00FFFFFF&
            Caption         =   "Talla Materna"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Index           =   2
            Left            =   120
            TabIndex        =   6
            Top             =   405
            Width           =   1110
         End
      End
      Begin VB.Image Image1 
         Height          =   4155
         Left            =   720
         Picture         =   "frmEcoObs.frx":52D39
         Stretch         =   -1  'True
         Top             =   3480
         Width           =   11985
      End
      Begin VB.Label lbl 
         AutoSize        =   -1  'True
         BackColor       =   &H00FFFFFF&
         Caption         =   "Software orientado preferentemente a la vigilancia del crecimiento fetal"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Index           =   14
         Left            =   2520
         TabIndex        =   642
         Top             =   2880
         Width           =   9000
      End
      Begin VB.Shape Shp 
         BorderColor     =   &H00B96629&
         BorderWidth     =   3
         Height          =   7740
         Index           =   0
         Left            =   120
         Top             =   120
         Width           =   14775
      End
   End
   Begin VB.Label lbl 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "Buscar por Apellido"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Index           =   307
      Left            =   10200
      TabIndex        =   645
      Top             =   780
      Width           =   1605
   End
   Begin VB.Label lbl 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "RUT: 17726628-0, FUR: 17-11-1990"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   240
      Index           =   1
      Left            =   360
      TabIndex        =   1
      Top             =   600
      Width           =   3090
   End
   Begin VB.Label lbl 
      AutoSize        =   -1  'True
      BackColor       =   &H00FFFFFF&
      Caption         =   "Cristopher Nicolás Castro González"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Index           =   0
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   4950
   End
   Begin VB.Menu Mn 
      Caption         =   "Inicio"
      Index           =   0
   End
   Begin VB.Menu Mn 
      Caption         =   "Ecografía Obstétrica Precoz (0)"
      Index           =   1
   End
   Begin VB.Menu Mn 
      Caption         =   "Adicional Tamizajes"
      Index           =   2
      Visible         =   0   'False
   End
   Begin VB.Menu Mn 
      Caption         =   "Eco. 2do. 3er. Trimestre (0)"
      Index           =   3
   End
   Begin VB.Menu Mn 
      Caption         =   "Ecografía Doppler (0)"
      Index           =   4
   End
   Begin VB.Menu Mn 
      Caption         =   "Morfologica (0)"
      Index           =   5
   End
   Begin VB.Menu Mn 
      Caption         =   "Adicional Clínico"
      Index           =   6
      Visible         =   0   'False
   End
   Begin VB.Menu Mn 
      Caption         =   "Adicional Doppler"
      Index           =   7
      Visible         =   0   'False
   End
   Begin VB.Menu Mn 
      Caption         =   "Adicional Morfología"
      Index           =   8
      Visible         =   0   'False
   End
   Begin VB.Menu Mn 
      Caption         =   "Gráfica de crecimiento"
      Index           =   9
      Visible         =   0   'False
   End
   Begin VB.Menu Mn 
      Caption         =   "Poster crecimiento"
      Index           =   10
      Visible         =   0   'False
   End
   Begin VB.Menu Mn 
      Caption         =   "Gráfica Doppler"
      Index           =   11
      Visible         =   0   'False
   End
   Begin VB.Menu Mn 
      Caption         =   "Consentimiento Informado"
      Index           =   12
      Visible         =   0   'False
   End
   Begin VB.Menu Mn 
      Caption         =   "Poster LCN"
      Index           =   13
      Visible         =   0   'False
   End
   Begin VB.Menu Mn 
      Caption         =   "Poster Biometría"
      Index           =   14
      Visible         =   0   'False
   End
End
Attribute VB_Name = "frmEcoObs"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Option Compare Text
'cuando uno ve directamente la paciente se ven las imagenes, cuando uno recorre, no funcina
'cuando uno pone infiorme en jpg, y en ves de guardar uno pone cancelar, imprime a la impresora predeterminada

Private BtnsA As Boolean
Private InFcs As Integer
Private divAct As Integer
Private IO As Boolean
Private Nw As Boolean
Private loadSys As Boolean
Private DtBse(3) As Data
Private MtvMsg As MsgExe
Private Enum MsgClr
    Blue
    Lead
End Enum
Private Enum MsgBtn
    MsgAcpt
    MsgSN
End Enum
Private Enum MsgExe
    FUR
    Del
    MsGen
End Enum
Private Enum OpGraf
    base
    datos
End Enum
Private Const Archv = "\Consentimiento.rpt"
Private Const C1 As String = "\doc\consentimiento.pdf"
Private Const M1 As String = "Paciente sin FUR"
Private Const M2 As String = "Desea eliminar el exámen N° "
Private Const M3 As String = "Desea eliminar Datos Adicionales de la Ecografía N° "
Private Const M4 As String = "Esto no eliminará la ecografía"
Private Const M5 As String = "Desea eliminar el exámen Doppler N° "
Private Const T1 As String = "Advertencia!"
Private Const T2 As String = "Eliminar Exámen"
Private Const T3 As String = "Eliminar Datos Adicionales"
Private Const B1 As String = "Salir"
Private Const B2 As String = "Continuar"
Private Const Tx1 As String = "aspecto normal"
Private Const Tx2 As String = "no se observa"
Private Const Tx3 As String = "ocupado"
Private Const Tx4 As String = "no se observa aun"
Private Const Tx5 As String = "act. no evidenciable"
Private Const Tx6 As String = "medible"
Private Const Tx7 As String = "visible"
Private Const Tx8 As String = "Si"
Private Const Tx9 As String = "No"
Private Const Tx10 As String = "Estándar Fetal de Hadlock y Col., Radiology 181 : 129 - 133. 1991"
Private Const Tx11 As String = "Peso / edad gestacional, normalidad pct 90 a 10.  < p10 (PEG), < p3 (PEG Severo). Hadlock y col. 1991"
Private Const Tx12 As String = "Relación Cc / Ca, normalidad pct 97 a 3. > p97  (Enflaquecido), < p3 (Obeso). Hadlock y col. 1991"
Private Const Tx13 As String = "Estándar de Biometría Fetal, Hadlock y col., Radiology 152 : 497 - 501. 1984"
Private Const Tx14 As String = "Cráneo fetal según Ege, normalidad pct 97 a 3. Pct de Referencia de Hadlock y col. 1984"
Private Const Tx15 As String = "Estándar de Biometría Fetal, Hadlock y col., Radiology 152 : 497 - 501. 1984"
Private Const Tx16 As String = "Abdomen fetal según Ege, normalidad pct 97 a 3. Pct de Referencia de Hadlock y col 1984"
Private Const Tx17 As String = "Estándar de Biometría Fetal, Hadlock y col., Radiology 152 : 497 - 501. 1984"
Private Const Tx18 As String = "Longitud femoral fetal según Ege, normalidad pcet 97 a 3. Pct de Referencia de Hadlock y col. 1984"
Private Const Tx19 As String = "Liquido Amniotico BVM; Magann EF. Sanderson M. Martin JN y col Am J Obstet Gynecol 1982: 1581, 2000"
Private Const Tx20 As String = "Líquido amniótico medinte BVM, normalidad pct 97 a 3. > a p97 (PHA), < a p3 (OHA) Lagos y col. 2000"
Private Const Tx21 As String = "Moore y col. Gráfica distribución de LA mediante ILA, Am J. Obstet Gynecol 1990; 162 : 1168."
Private Const Tx22 As String = "Líquido amniótico mediante ILA, normalidad pct 95 a 5. > a p95 (PHA), < a p5 (OHA) Moore y col. 1990"
Private Const Tx23 As String = "Gráfica Percentil 5 a 95 Promedio Arterias Uterinas"
Private Const Tx24 As String = "Gratacos y Col., U. O & G 2008;"
Private Const Tx25 As String = "Gráfica Percentil 5 a 95 Arteria Umbilical"
Private Const Tx26 As String = "BASCHAT AA, GEMBRUCH U,:The cerebroplacental Doppler ratio revisited, Ultrasound Obstet Gynecol 2003; 21:124 - 127"
Private Const Tx27 As String = "Gráfica Percentil 5 a 95 Arteria Umbilical"
Private Const Tx28 As String = "Gráfica Percentil 5 a 95 Arteria Cerebral Media"
Private Const Tx29 As String = "Gráfica Percentil 5 a 95 Ductus Venoso"
Private Const Tx30 As String = "Kessler J. y Col. U. O. & G 2006; 28 : P 890 - 8"
Private Const Tx31 As String = "Disminuido"
Private Const Tx32 As String = "Aumentado"
Private Const Tx33 As String = "< 3"
Private Const Tx34 As String = "> 97"
Private Const Tx35 As String = "Normal"
Private Const Tx36 As String = "Anormal"
Private Const Tx37 As String = "Evaluación  morfológica general dentro de límites normales"
Private Const Rs1 As String = "SELECT * FROM Pacientes where RUT='"
Private Const Rs2 As String = "SELECT * FROM FUR Where RUT='"
Private Const Rs3 As String = "SELECT * FROM Aut Where RUT='"
Private Const Rs4 As String = "SELECT * FROM eco1trim where RUT='"
Private Const Rs5 As String = "SELECT * FROM ecografias where RUT='"
Private Const Rs6 As String = "SELECT * FROM Doppler WHERE RUT='"
Private Const Rs7 As String = "SELECT * FROM OEM WHERE RUT='"
Private Const Rs8 As String = "Select * From Reservas Order By Reservas.App"
Private Const Rs9 As String = "SELECT * FROM ecografistas ORDER by apellido ;"
Private Const Rs10 As String = "SELECT * FROM Consent WHERE RUT='"
Private Const Rs11 As String = "SELECT * FROM tpoEco ;"
Private Const Rs12 As String = "SELECT * FROM ecografias where RUT='"
Private Const RsEnd As String = "';"
Private Const Provider_Access As String = "Microsoft.Jet.OLEDB.4.0"

Private EGg(42) As Double
Private PSOg(42) As Double
Private FChg(42) As Date
Private Tllg(42) As Double
Private CcCag(42) As Double
Dim loCr As CRAXDRT.Application
Dim loRpt As CRAXDRT.Report

Private Sub Bn_Click(Index As Integer)
Dim i As Integer
Dim ln(24) As String
Dim Fncn As New Exe
Dim A As Integer
    Select Case Index
        Case 0
            Bn(0).Enabled = False
            Bn(1).Enabled = False
            For i = 4 To 7
                Bn(i).Enabled = False
            Next i
            Menu (False)
            DBCombo1.Enabled = False
            Dt(0).Enabled = False
            Bn(2).Enabled = True
            Bn(3).Enabled = True
            DIV(1).Enabled = True
            IO = True: Nw = True
            P(3).SetFocus
        Case 1
            DIV(20).Visible = True
            Bn(0).Enabled = False
            Bn(1).Enabled = False
            Bn(7).Enabled = False
            Menu (False)
            DBCombo1.Enabled = False
            Dt(0).Enabled = False
            Arry(0).Enabled = False
            IO = True
        Case 2
            Dim Va1 As String
            Va1 = Dt(0).Recordset.Fields("RUT")
            SavePg1
            IO = False: Nw = False
            PerdRprod (True)
            PerdRprod (False)
            With Dt(0)
                .RecordSource = Rs8
                .Refresh
                .Recordset.FindFirst ("RUT='" & Va1 & "'")
            End With
            LoadPg1
            Bn(0).Enabled = True
            Bn(1).Enabled = True
            For i = 4 To 7
                Bn(i).Enabled = True
            Next i
            Menu (True)
            DBCombo1.Enabled = True
            Dt(0).Enabled = True
            Bn(2).Enabled = False
            Bn(3).Enabled = False
            DIV(1).Enabled = False
            DIV(28).Enabled = False
            DIV(3).Visible = False
        Case 3
            IO = False: Nw = False
            Bn(0).Enabled = True
            Bn(1).Enabled = True
            For i = 4 To 7
                Bn(i).Enabled = True
            Next i
            Menu (True)
            DBCombo1.Enabled = True
            Dt(0).Enabled = True
            Bn(2).Enabled = False
            Bn(3).Enabled = False
            DIV(1).Enabled = False
            DIV(28).Enabled = False
            DIV(3).Visible = False
            LoadPg1
            PerdRprod (False)
        Case 4
            Bn(0).Enabled = False
            Bn(1).Enabled = False
            For i = 4 To 7
                Bn(i).Enabled = False
            Next i
            Menu (False)
            DBCombo1.Enabled = False
            Dt(0).Enabled = False
            Bn(2).Enabled = True
            Bn(3).Enabled = True
            DIV(1).Enabled = True
            DIV(28).Enabled = True
            IO = True
            Cbx(0).SetFocus
        Case 5
            divAct = 0
        Case 6, 91
            Call ShellExecute(Me.hwnd, "open", App.Path & LoadResString(101), "", "", 4)
        Case 7, 17, 28, 38, 50, 60, 75, 80, 81
            Unload Me
        Case 8
            DIV(3).Visible = False
        Case 9
            If DtBse(1).Recordset.RecordCount < 1 Then
                Call Msgs(M1, T1, , MsGen)
                Exit Sub
            End If
            Bn(9).Enabled = False
            For i = 12 To 14
                Bn(i).Enabled = False
            Next i
            For i = 16 To 17
                Bn(i).Enabled = False
            Next i
            Menu (False)
            DBCombo1.Enabled = False
            Chk(2).Value = 0
            Dt(0).Enabled = False
            Dt(1).Enabled = False
            Arry(1).Enabled = False
            Bn(10).Enabled = True
            Bn(11).Enabled = True
            DIV(5).Enabled = True
            DIV(7).Enabled = True
            P(29).Enabled = True
            Cbx(22).Enabled = True
            IO = True: Nw = True
            P(13).SetFocus
            Dt(1).Recordset.AddNew
            Dt(1).Recordset.Fields("RUT") = Dt(0).Recordset.Fields("RUT")
            P(12).Text = Dt(1).Recordset.RecordCount + 1
            DIV(2).Enabled = True
        Case 10
            IO = False: Nw = False
            Bn(9).Enabled = True
            For i = 12 To 14
                Bn(i).Enabled = True
            Next i
            For i = 16 To 17
                Bn(i).Enabled = True
            Next i
            Menu (True)
            DBCombo1.Enabled = True
            Chk(2).Value = 0
            Dt(0).Enabled = True
            Dt(1).Enabled = True
            Arry(1).Enabled = True
            Bn(10).Enabled = False
            Bn(11).Enabled = False
            DIV(3).Visible = False
            DIV(5).Enabled = False
            DIV(7).Enabled = False
            P(29).Enabled = False
            Cbx(22).Enabled = False
            DIV(2).Enabled = False
            AjustaFUR (0)
            Dt(1).Recordset.Update
            Dt(1).Refresh
            If Dt(1).Recordset.RecordCount = 1 Then
                Dt(1).Recordset.MoveFirst
            ElseIf Dt(1).Recordset.RecordCount > 1 Then
                Dt(1).Recordset.MoveLast
            End If
        Case 11
            IO = False: Nw = False
            Bn(9).Enabled = True
            For i = 12 To 14
                Bn(i).Enabled = True
            Next i
            For i = 16 To 17
                Bn(i).Enabled = True
            Next i
            Menu (True)
            DBCombo1.Enabled = True
            Chk(2).Value = 0
            Dt(0).Enabled = True
            Dt(1).Enabled = True
            Arry(1).Enabled = True
            Bn(10).Enabled = False
            Bn(11).Enabled = False
            DIV(3).Visible = False
            DIV(5).Enabled = False
            DIV(7).Enabled = False
            P(29).Enabled = False
            Cbx(22).Enabled = False
            DIV(2).Enabled = False
            Dt(1).Recordset.CancelUpdate
        Case 12
            Bn(9).Enabled = False
            For i = 12 To 14
                Bn(i).Enabled = False
            Next i
            For i = 16 To 17
                Bn(i).Enabled = False
            Next i
            Menu (False)
            DBCombo1.Enabled = False
            Dt(0).Enabled = False
            Dt(1).Enabled = False
            Arry(1).Enabled = False
            Bn(10).Enabled = True
            Bn(11).Enabled = True
            DIV(5).Enabled = True
            DIV(7).Enabled = True
            P(29).Enabled = True
            Cbx(22).Enabled = True
            DIV(2).Enabled = True
            IO = True
            P(13).SetFocus
            Dt(1).Recordset.Edit
        Case 13
            divAct = 5
            Call Msgs(M2 & Dt(1).Recordset.Fields("N"), T2, MsgSN, Del)
        Case 14
            If Dt(1).Recordset.RecordCount > 0 Then
                Set loCr = New CRAXDRT.Application
                Set loRpt = loCr.OpenReport(App.Path & "\Eco1.rpt")
                loRpt.Database.Tables(1).Location = App.Path & "\Consultamedica.mdb"
                loRpt.RecordSelectionFormula = "{eco1trim.rut}='" + Dt(0).Recordset.Fields("RUT") + "' AND {eco1trim.egeco1}='" + Dt(1).Recordset.Fields("egeco1") + "'"
                ln(0) = RPTHeader
                ln(1) = lbl(0).Caption & "         RUT: " + Dt(0).Recordset.Fields("RUT")
                ln(2) = "FUR:  " + Format(P(3).Text, "dd/mm/yyyy") & "                              Edad Gestacional: " & P(14).Text & " semanas                            Fecha Probable Parto: " & Format(P(5).Text, "dd/mm/yyyy")
                If Cbx(17).Text = "no se observa aun" Then
                    ln(3) = "Edad Gesacional por biometría de saco gestacional compatible con " & P(24).Text & " semanas."
                Else
                    ln(3) = "Edad gestacional de " + P(14).Text + " semanas."
                End If
                ln(4) = Cbx(12).Text
                ln(5) = Cbx(17).Text
                ln(6) = Cbx(11).Text
                ln(7) = Cbx(10).Text
                ln(8) = Cbx(15).Text
                ln(9) = P(13).Text
                ln(11) = Cbx(7).Text + " " + Cbx(8).Text + ", con " + Cbx(9).Text
                ln(12) = Cbx(14).Text
                If (P(14).Text > 12) And (IsEmpty(P(44).Text) = False) Then
                    'correccion de FUR > 12 con EGp50
                End If
                If P(23).Text <> "" Then ln(4) = ln(4) + ", diametro promedio de " + P(23).Text + " mm."
                If IsNumeric(Cbx(63).Text) = True Then
                    ln(5) = ln(5) + " frecuencia cardiaca de  " + Cbx(63).Text + " por minuto."
                ElseIf Cbx(63).Text = "(+) inicial" Then
                    ln(5) = ln(5) + " frecuencia cardiaca " + Cbx(63).Text
                End If
                    
                If Cbx(11).Text <> "aspecto normal" Then ln(6) = ln(6) + " de " + P(18).Text + " por " + P(19).Text + " mm."
                If Cbx(10).Text <> "aspecto normal" Then ln(7) = ln(7) + " de " + P(16).Text + " por " + P(17).Text + " mm."
                If Cbx(15).Text = "ocupado" Then ln(8) = ln(8) + " con " + Cbx(16).Text
                If Cbx(14).Text <> "no se observa" Then ln(12) = ln(12) + " de diametro " + P(25).Text + " mm."
                
                If IsNumeric(P(27).Text) = True Then
                    ln(13) = "LCN: " + P(27).Text + " mm"
                    If IsNumeric(P(37).Text) = True Then ln(14) = "DPB: " + P(37).Text + " mm"
                    If IsNumeric(P(41).Text) = True Then ln(15) = "CA  : " + P(41).Text + " mm"
                    If IsNumeric(P(39).Text) = True Then ln(16) = "CC  : " + P(39).Text + " mm"
                    If IsNumeric(P(43).Text) = True Then ln(17) = "LF   : " + P(43).Text + " mm"
                End If
                If P(23).Text <> "" Then
                    ln(13) = ln(13) & "                Saco gestacional de: " + P(23).Text + " mm."
                End If
                
                If Len(ln(13)) > 8 Then ln(13) = ln(13) + "                "
                If P(211).Text <> "" Then ln(13) = ln(13) + "IP Promedio arterias uterinas : " & P(211).Text & "; " & Cbx(126).Text
                If Len(ln(14)) > 8 Then
                    ln(14) = ln(14) + "                "
                    If P(200).Text <> "" Then ln(14) = ln(14) + "Largo Cervical                        :" & P(200).Text & " mm."
                Else
                    ln(14) = "                                     "
                    If P(200).Text <> "" Then ln(14) = ln(14) + "Largo Cervical                        : " & P(200).Text & " mm."
                End If
                
                If Len(ln(16)) > 8 Then
                    ln(16) = ln(16) + "                "
                    If IsNumeric(P(30).Text) Then
                        ln(16) = ln(16) & "Translucencia Nucal               : " + P(30).Text & " mm."
                    ElseIf Cbx(18).Text <> "" Then
                        ln(16) = ln(16) & "Translucencia Nucal               : " + Cbx(18).Text
                    End If
                Else
                    ln(16) = "                                     "
                    If IsNumeric(P(30).Text) Then
                        ln(16) = ln(16) & "Translucencia Nucal               : " + P(30).Text & " mm."
                    ElseIf Cbx(18).Text <> "" Then
                        ln(16) = ln(16) & "Translucencia Nucal               : " + Cbx(18).Text
                    End If
                End If
                
                If Len(ln(15)) > 8 Then
                    ln(15) = ln(15) + "                "
                    If IsNumeric(P(34).Text) Then
                        ln(15) = ln(15) & "Hueso Nasal                            : " + P(34).Text & " mm."
                    ElseIf Cbx(20).Text <> "" Then
                        ln(15) = ln(15) & "Hueso Nasal                            : " + Cbx(20).Text
                    End If
                Else
                    ln(15) = "                                     "
                    If IsNumeric(P(34).Text) Then
                        ln(15) = ln(15) & "Hueso Nasal                            : " + P(34).Text & " mm."
                    ElseIf Cbx(20).Text <> "" Then
                        ln(15) = ln(15) & "Hueso Nasal                            : " + Cbx(20).Text
                    End If
                End If
                
                If Len(ln(17)) > 8 Then
                    ln(17) = ln(17) + "                "
                    If Cbx(21).Text <> "" Then ln(17) = ln(17) & "Ductus Venoso                       : " + Cbx(21).Text
                Else
                    ln(17) = "                                     "
                    If Cbx(21).Text <> "" Then ln(17) = ln(17) & "Ductus Venoso                        : " + Cbx(21).Text
                End If
                
                loRpt.FormulaFields.GetItemByName("Logo").Text = "'" & ln(0) & "'"
                loRpt.FormulaFields.GetItemByName("Nombre").Text = "'" & ln(1) & "'"
                loRpt.FormulaFields.GetItemByName("EG").Text = "'" & ln(2) & "'"
                loRpt.FormulaFields.GetItemByName("EDAD").Text = "'" & ln(3) & "'"
                loRpt.FormulaFields.GetItemByName("DIAMETRO").Text = "'" & ln(4) & "'"
                loRpt.FormulaFields.GetItemByName("FREC").Text = "'" & ln(5) & "'"
                loRpt.FormulaFields.GetItemByName("DER").Text = "'" & ln(6) & "'"
                loRpt.FormulaFields.GetItemByName("DER2").Text = "'" & ln(6) & "'"
                loRpt.FormulaFields.GetItemByName("IZQ").Text = "'" & ln(7) & "'"
                loRpt.FormulaFields.GetItemByName("IZQ2").Text = "'" & ln(7) & "'"
                loRpt.FormulaFields.GetItemByName("DOU").Text = "'" & ln(8) & "'"
                loRpt.FormulaFields.GetItemByName("fch").Text = "'" & ln(9) & "'"
                loRpt.FormulaFields.GetItemByName("utero").Text = "'" & ln(11) & "'"
                loRpt.FormulaFields.GetItemByName("ute2").Text = "'" & ln(11) & "'"
                loRpt.FormulaFields.GetItemByName("medvit").Text = "'" & ln(12) & "'"
                loRpt.FormulaFields.GetItemByName("LCN").Text = "'" & ln(13) & "'"
                If Len(ln(14)) > 1 Then loRpt.FormulaFields.GetItemByName("DBP").Text = "'" & ln(14) & "'"
                If Len(ln(15)) > 1 Then loRpt.FormulaFields.GetItemByName("CA").Text = "'" & ln(15) & "'"
                If Len(ln(16)) > 1 Then loRpt.FormulaFields.GetItemByName("CC").Text = "'" & ln(16) & "'"
               If Len(ln(17)) > 1 Then loRpt.FormulaFields.GetItemByName("LF").Text = "'" & ln(17) & "'"
                loRpt.ExportOptions.DestinationType = crEDTDiskFile
                loRpt.ExportOptions.FormatType = crEFTPortableDocFormat
                loRpt.ExportOptions.PDFExportAllPages = True
                loRpt.ExportOptions.DiskFileName = App.Path & "\Informe.pdf"
                loRpt.Export (False)
                Set loRpt = Nothing
                Set loCr = Nothing
                Call ShellExecute(Me.hwnd, "open", App.Path & "\Informe.pdf ", "", "", 0)
            End If
        Case 15
            Call Shell(App.Path & "\graficoEG1.exe " _
                        & lbl(0).Caption & _
                        ":" & P(13).Text & ":" & Dt(0).Recordset.Fields(0), _
                        vbNormalFocus)
        Case 16
            SobreFrm.Load (P(13).Text)
            SobreFrm.Show
        Case 18
            If DtBse(1).Recordset.RecordCount < 1 Then
                Call Msgs(M1, T1, MsgAcpt, MsGen)
                Exit Sub
            End If
            Bn(18).Enabled = False
            For i = 21 To 28
                Bn(i).Enabled = False
            Next i
            Menu (False)
            DBCombo1.Enabled = False
            Dt(0).Enabled = False
            Dt(2).Enabled = False
            Arry(2).Enabled = False
            Bn(19).Enabled = True
            Bn(20).Enabled = True
            DIV(9).Enabled = True
            DIV(11).Enabled = True
            DIV(12).Enabled = True
            DIV(36).Enabled = True
            DIV(37).Enabled = True
            DIV(39).Enabled = True
            P(69).Enabled = True
            Cbx(36).Enabled = True
            DIV(10).Enabled = True
            Nw = True
            DIV(2).Enabled = True
            Dt(2).Recordset.AddNew
            IO = True
            Dt(2).Recordset.Fields("RUT") = Dt(0).Recordset.Fields("RUT")
            P(45).Text = Dt(2).Recordset.RecordCount + 1
            Cbx(111).Text = "normal"
            Cbx(112).Text = "normal"
            Cbx(113).Text = "normal"
            Cbx(27).Text = "presente"
            Cbx(62).Text = "normal"
            Cbx(48).Text = "normal"
            Cbx(49).Text = "visible"
            Cbx(25).Text = "normales"
            Cbx(116).Text = "Normal"
            Cbx(117).Text = "Normal"
            Cbx(118).Text = "Normal"
            Cbx(119).Text = "Normales"
            Cbx(120).Text = "Normales"
            Cbx(121).Text = "Normales"
            IO = False
            If IO = False Then
                For i = 28 To 31
                    If Cbx(i).Text = "" Then Cbx(i).ListIndex = 0
                Next i
                Cbx(32).ListIndex = 1
                Cbx(33).ListIndex = 1
            End If
            IO = True
            P(46).SetFocus
            Optn(10).Value = True
            Optn(12).Value = True
        Case 19
            IO = False
            Nw = False
            Bn(18).Enabled = True
            For i = 21 To 28
                Bn(i).Enabled = True
            Next i
            Menu (True)
            DBCombo1.Enabled = True
            Dt(0).Enabled = True
            Dt(2).Enabled = True
            Arry(2).Enabled = True
            Bn(19).Enabled = False
            Bn(20).Enabled = False
            DIV(3).Visible = False
            DIV(9).Enabled = False
            DIV(11).Enabled = False
            DIV(12).Enabled = False
            DIV(36).Enabled = False
            DIV(37).Enabled = False
            DIV(39).Enabled = False
            P(69).Enabled = False
            DIV(10).Enabled = False
            Cbx(36).Enabled = False
            DIV(2).Enabled = False
            Call AjustaFUR(1)
            If Optn(10).Value = True Then
                Dt(2).Recordset.Fields("actcard") = True
            ElseIf Optn(11).Value = True Then
                Dt(2).Recordset.Fields("actcard") = False
            End If
            If Optn(12).Value = True Then
                Dt(2).Recordset.Fields("movfetal") = True
            ElseIf Optn(13).Value = True Then
                Dt(2).Recordset.Fields("movfetal") = False
            End If
            Dt(2).Recordset.Update
            If Dt(2).Recordset.RecordCount = 1 Then
                Dt(2).Recordset.MoveFirst
            ElseIf Dt(2).Recordset.RecordCount > 1 Then
                Dt(2).Recordset.MoveLast
            End If
            Dt(3).Refresh
            Dt(5).Refresh
            DIV(8).Enabled = True
        Case 20
            IO = False
            Nw = False
            Bn(18).Enabled = True
            For i = 21 To 28
                Bn(i).Enabled = True
            Next i
            Menu (True)
            DBCombo1.Enabled = True
            Dt(0).Enabled = True
            Dt(2).Enabled = True
            Arry(2).Enabled = True
            Bn(19).Enabled = False
            Bn(20).Enabled = False
            DIV(3).Visible = False
            DIV(9).Enabled = False
            DIV(11).Enabled = False
            DIV(10).Enabled = False
            DIV(12).Enabled = False
            DIV(36).Enabled = False
            DIV(37).Enabled = False
            DIV(39).Enabled = False
            P(69).Enabled = False
            Cbx(36).Enabled = False
            DIV(2).Enabled = False
            Dt(2).Recordset.CancelUpdate
            If Dt(2).Recordset.RecordCount < 1 Then
                Optn(11).Value = True
                Optn(11).Value = False
                Optn(13).Value = True
                Optn(13).Value = False
            End If
        Case 21
            Bn(18).Enabled = False
            For i = 21 To 28
                Bn(i).Enabled = False
            Next i
            Menu (False)
            DBCombo1.Enabled = False
            Dt(0).Enabled = False
            Dt(2).Enabled = False
            Arry(2).Enabled = False
            Bn(19).Enabled = True
            DIV(10).Enabled = True
            Bn(20).Enabled = True
            DIV(9).Enabled = True
            DIV(11).Enabled = True
            DIV(12).Enabled = True
            P(69).Enabled = True
            DIV(36).Enabled = True
            DIV(37).Enabled = True
            Cbx(36).Enabled = True
            DIV(39).Enabled = True
            IO = True
            DIV(2).Enabled = True
            Cbx(23).SetFocus
            Dt(2).Recordset.Edit
        Case 22
            divAct = 9
            Call Msgs(M2 & Dt(2).Recordset.Fields("neco"), T2, MsgSN, Del)
      Case 23, 33, 45, 73
            If Dt(2).Recordset.RecordCount > 0 Then
                Set loCr = New CRAXDRT.Application
                Set loRpt = loCr.OpenReport(App.Path & "\Edad Gestacional.rpt")
                loRpt.Database.Tables(1).Location = App.Path & "\Consultamedica.mdb"
                loRpt.RecordSelectionFormula = "{ecografias.rut}='" + Dt(0).Recordset.Fields("RUT") + "' AND {ecografias.neco}=" + P(45).Text
                ln(0) = RPTHeader
                ln(1) = lbl(0).Caption + "             RUT: " + Dt(0).Recordset.Fields("RUT")
                ln(2) = "FUR:  " + Format(P(3).Text, "dd/mm/yyyy") + "                          Edad Gestacional: " + P(47).Text + " semanas                          Fecha Probable Parto: " + Format(P(5).Text, "dd/mm/yyyy")
                ln(3) = "inserción " + Cbx(29).Text + " y de ubicación " + Cbx(28).Text
                ln(4) = Cbx(34).Text + ", con bolsillo vertical mayor de " + P(70).Text + " mm"
                If IsNumeric(P(76).Text) = True Then ln(4) = ln(4) & ", e ILA de " & P(76).Text & " mm."
                ln(5) = P(67).Text
                ln(6) = Cbx(31).Text + ", identificandose " + Cbx(32).Text + " vasos."
                ln(7) = P(64).Text
                ln(8) = P(62).Text + " semanas de gestación según biometría percentil 50* "
                ln(9) = "Fecha Probable de Parto = " + Format(P(5).Text, "dd/mm/yyyy")
                ln(10) = "FUR Operacional = " + Format(P(3).Text, "dd/mm/yyyy")
                If Val(P(53).Text) = 0 Then
                    ln(11) = 0
                Else
                    ln(11) = Int(Val(P(52).Text) / Val(P(53).Text) * 100 + 0.5)
                End If
                If Optn(11).Value = True Then
                    ln(12) = Cbx(23).Text + ",  dorso " + Cbx(24).Text + " sin actividad cardiaca"
                ElseIf Optn(10).Value = True Then
                    ln(12) = Cbx(23).Text + ",  dorso " + Cbx(24).Text + " con actividad cardiaca"
                    ln(13) = "Frecuencia cardiaca fetal, " + P(49).Text + " x minuto."
                Else
                    ln(12) = Cbx(23).Text + ",  dorso " + Cbx(24).Text + " sin actividad cardiaca."
                End If
                If Optn(13).Value = True Then
                    ln(14) = " y sin movimientos corporales"
                ElseIf Optn(12).Value = True Then
                    ln(14) = " y con movimientos corporales"
                Else
                    ln(14) = " y sin movimientos corporales"
                End If
                loRpt.FormulaFields.GetItemByName("Logo").Text = "'" & ln(0) & "'"
                loRpt.FormulaFields.GetItemByName("Nombre").Text = "'" & ln(1) & "'"
                loRpt.FormulaFields.GetItemByName("EG").Text = "'" & ln(2) & "'"
                loRpt.FormulaFields.GetItemByName("placenta").Text = "'" & ln(3) & "'"
                loRpt.FormulaFields.GetItemByName("liquido").Text = "'" & ln(4) & "'"
                loRpt.FormulaFields.GetItemByName("tllaA").Text = "'" & ln(5) & "'"
                loRpt.FormulaFields.GetItemByName("CUmb").Text = "'" & ln(6) & "'"
                loRpt.FormulaFields.GetItemByName("prom").Text = "'" & ln(7) & "'"
                loRpt.FormulaFields.GetItemByName("OBS").Text = "'" & ln(8) & "'"
                loRpt.FormulaFields.GetItemByName("Obss").Text = "'" & ln(9) & "'"
                loRpt.FormulaFields.GetItemByName("ObsFur").Text = " '" & ln(10) & "'"
                loRpt.FormulaFields.GetItemByName("ind").Text = "'" & ln(11) & "'"
                loRpt.FormulaFields.GetItemByName("acard").Text = "'" & ln(12) & ln(14) & "'"
                loRpt.FormulaFields.GetItemByName("fcf").Text = "'" & ln(13) & "'"
                loRpt.ExportOptions.DestinationType = crEDTDiskFile
                loRpt.ExportOptions.FormatType = crEFTPortableDocFormat
                loRpt.ExportOptions.PDFExportAllPages = True
                loRpt.ExportOptions.DiskFileName = App.Path & "\Informe.pdf"
                loRpt.Export (False)
                Set loRpt = Nothing
                Set loCr = Nothing
                Call ShellExecute(Me.hwnd, "open", App.Path & "\Informe.pdf ", "", "", 0)
            End If
        Case 24, 34, 46, 72
            If Dt(2).Recordset.RecordCount > 0 Then
                Set loCr = New CRAXDRT.Application
                Set loRpt = loCr.OpenReport(App.Path & "\Crecimiento.rpt")
                loRpt.Database.Tables(1).Location = App.Path & "\Consultamedica.mdb"
                loRpt.RecordSelectionFormula = "{ecografias.rut}='" + Dt(0).Recordset.Fields("RUT") + "' AND {ecografias.neco}=" + P(45).Text
                ln(0) = RPTHeader
                ln(1) = lbl(0).Caption + "             RUT: " + Dt(0).Recordset.Fields("RUT")
                ln(2) = "FUR:  " + Format(P(3).Text, "dd/mm/yyyy") + "                         Edad Gestacional: " + P(47).Text + " semanas                      Fecha Probable Parto: " + Format(P(5).Text, "dd/mm/yyyy")
                ln(3) = "inserción " + Cbx(29).Text + " y de ubicación " + Cbx(28).Text
                ln(4) = Cbx(34).Text + ", con bolsillo vertical mayor de " + P(70).Text + " mm"
                If IsNumeric(P(76).Text) = True Then ln(4) = ln(4) & ", e ILA de " & P(76).Text & " mm."
                ln(5) = P(67).Text
                ln(6) = Cbx(31).Text + ", identificandose " + Cbx(32).Text + " vasos."
                ln(7) = P(64).Text
                ln(8) = "Embarazo " + P(47).Text + "semanas de gestación, feto en presentación " + Cbx(23).Text + ",  dorso " + Cbx(24).Text
                ln(9) = P(64).Text
                ln(10) = P(66).Text
                
                If Val(P(53).Text) = 0 Then
                    ln(11) = 0
                Else
                    ln(11) = Int(Val(P(52).Text) / Val(P(53).Text) * 100 + 0.5)
                End If
                If Optn(11).Value = True Then
                    ln(12) = Cbx(23).Text + ",  dorso " + Cbx(24).Text + " sin actividad cardiaca"
                ElseIf Optn(10).Value = True Then
                    ln(12) = Cbx(23).Text + ",  dorso " + Cbx(24).Text + " con actividad cardiaca"
                    ln(13) = "Frecuencia cardiaca fetal, " + P(49).Text + " x minuto."
                Else
                    ln(12) = Cbx(23).Text + ",  dorso " + Cbx(24).Text + " sin actividad cardiaca."
                End If
                If Optn(13).Value = True Then
                    ln(14) = " y sin movimientos corporales"
                ElseIf Optn(12).Value = True Then
                    ln(14) = " y con movimientos corporales"
                Else
                    ln(14) = " y sin movimientos corporales"
                End If
                If IsNumeric(P(66).Text) = True Then
                    ln(18) = P(66).Text
                    If P(66).Text < Int(3) Then
                        ln(17) = "obeso"
                    ElseIf Int(P(66).Text) < Int(97) Then
                        ln(17) = "simetrico"
                    Else
                        ln(17) = "enflaquecido"
                    End If
                Else
                    If P(66).Text = "> 97" Then
                        ln(18) = "> pct 97"
                        ln(17) = "enflaquecido"
                    ElseIf P(66).Text = "< 3" Then
                        ln(18) = "< pct 3"
                        ln(17) = "obeso"
                    End If
                End If

                If IsNumeric(P(64).Text) = True Then
                    ln(16) = "en pct. " & P(64).Text
                    If P(64).Text < 10 Then
                        ln(15) = "pequeño"
                    ElseIf P(64).Text < 90 Then
                        ln(15) = "adecuado"
                    Else
                        ln(15) = "grande"
                    End If
                Else
                    ln(16) = P(64).Text
                    If P(64).Text = "< 3" Then
                        ln(16) = "< pct 3"
                        ln(15) = "pequeño"
                    ElseIf P(64).Text = "> 97" Then
                        ln(16) = "> pct 97"
                        ln(15) = "grande"
                    End If
                End If
                
                ln(19) = "el crecimiento es " + ln(15) + " para la edad gestacional (PFE " & ln(16) & ")," + " y " & ln(17) & " (relación Cc/Ca pct. " + ln(18) + ")."
                
                loRpt.FormulaFields.GetItemByName("Logo").Text = "'" & ln(0) & "'"
                loRpt.FormulaFields.GetItemByName("Nombre").Text = "'" & ln(1) & "'"
                loRpt.FormulaFields.GetItemByName("EG").Text = "'" & ln(2) & "'"
                loRpt.FormulaFields.GetItemByName("placenta").Text = "'" & ln(3) & "'"
                loRpt.FormulaFields.GetItemByName("liquido").Text = "'" & ln(4) & "'"
                loRpt.FormulaFields.GetItemByName("tllaA").Text = "'" & ln(5) & "'"
                loRpt.FormulaFields.GetItemByName("CUmb").Text = "'" & ln(6) & "'"
                loRpt.FormulaFields.GetItemByName("prom").Text = "'" & ln(7) & "'"
                loRpt.FormulaFields.GetItemByName("OBS").Text = "'" & ln(8) & " '"
                loRpt.FormulaFields.GetItemByName("pctpso").Text = "'" & ln(9) & " '"
                loRpt.FormulaFields.GetItemByName("pctccca").Text = "'" & ln(10) & " '"
                loRpt.FormulaFields.GetItemByName("ind").Text = "'" & ln(11) & "'"
                loRpt.FormulaFields.GetItemByName("acard").Text = "'" & ln(12) & ln(14) & "'"
                loRpt.FormulaFields.GetItemByName("fcf").Text = "'" & ln(13) & "'"
                loRpt.FormulaFields.GetItemByName("Obss").Text = "'" & ln(19) & " '"
                loRpt.ExportOptions.DestinationType = crEDTDiskFile
                loRpt.ExportOptions.FormatType = crEFTPortableDocFormat
                loRpt.ExportOptions.PDFExportAllPages = True
                loRpt.ExportOptions.DiskFileName = App.Path & "\Informe.pdf"
                loRpt.Export (False)
                Set loRpt = Nothing
                Set loCr = Nothing
                Call ShellExecute(Me.hwnd, "open", App.Path & "\Informe.pdf ", "", "", 0)
            End If
        Case 25
            Call Shell(App.Path & "\reporte.exe " _
                        & lbl(0).Caption & _
                        ":" & P(46).Text & ":" & Dt(0).Recordset.Fields(0), _
                        vbNormalFocus)
                'Dt(2).Recordset.MoveLast
                'dtRpt6
                'CR.Reset
                'CR.Destination = crptToWindow
                'CR.WindowState = crptMaximized
                'CR.ReportFileName = App.Path & "\Grafico 6.rpt"
                'CR.SelectionFormula = "{grafpsoftal.EG} =" + Str$(20) + " to " + Str$(40) + ";"

                'CR.Formulas(0) = "Nombre='" + lbl(0).Caption + " '"
                'CR.Formulas(1) = "NomEco='" + Cbx(36).Text + " '"
                'CR.Formulas(2) = "FchEco='" + P(46).Text + " '"
                'CR.Action = 1

        Case 27, 37, 49, 57, 69
            SobreFrm.Load (P(46).Text)
            SobreFrm.Show
        Case 29
            Dim N As Integer
            IO = False
            For i = 31 To 41
                Bn(i).Enabled = True
            Next i
            Bn(39).Enabled = False
            Menu (True)
            DBCombo1.Enabled = True
            Dt(0).Enabled = True
            Dt(3).Enabled = True
            Arry(3).Enabled = True
            P(178).Enabled = False
            Bn(29).Enabled = False
            Bn(30).Enabled = False
            DIV(15).Enabled = False
            N = Dt(3).Recordset.AbsolutePosition
            Dt(3).Recordset.Update
            Dt(2).Refresh
            Dt(2).Recordset.AbsolutePosition = N
            IO = True
            Dt(2).Recordset.Edit
            WriteObsPg3 (0)
            IO = False
            Dt(2).Recordset.Update
            Dt(3).Refresh
            Dt(5).Refresh
            If Dt(3).Recordset.RecordCount = 1 Then
                Dt(3).Recordset.MoveFirst
                Dt(2).Recordset.MoveFirst
                Dt(5).Recordset.MoveFirst
            ElseIf Dt(3).Recordset.RecordCount > 1 Then
                Dt(3).Recordset.MoveLast
                Dt(2).Recordset.MoveLast
                Dt(5).Recordset.MoveLast
            End If
        Case 30
            IO = False
            For i = 31 To 41
                Bn(i).Enabled = True
            Next i
            Bn(39).Enabled = False
            
            Menu (True)
            DBCombo1.Enabled = True
            Dt(0).Enabled = True
            Dt(3).Enabled = True
            Arry(3).Enabled = True
            P(178).Enabled = False
            Bn(29).Enabled = False
            Bn(30).Enabled = False
            DIV(15).Enabled = False
            Dt(3).Recordset.CancelUpdate
        Case 31
            For i = 31 To 41
                Bn(i).Enabled = False
            Next i
            Menu (False)
            DBCombo1.Enabled = False
            Dt(0).Enabled = False
            Dt(3).Enabled = False
            Arry(3).Enabled = False
            Bn(29).Enabled = True
            Bn(30).Enabled = True
            DIV(15).Enabled = True
            P(178).Enabled = True
            IO = True
            P(92).SetFocus
            Dt(3).Recordset.Edit
        Case 32
            divAct = 14
            Call Msgs(M3 & Dt(2).Recordset.Fields("neco") & vbCrLf & M4, T3, MsgSN, Del)
        Case 35
            Call Shell(App.Path & "\reportedoppler.exe " _
                        & lbl(0).Caption & _
                        ":" & P(46).Text & ":" & Dt(0).Recordset.Fields(0), _
                        vbNormalFocus)
                'Dim Txto(16) As String
'                dtRpt8
 '               CR.Reset
  '              CR.Destination = crptToWindow
   '             CR.WindowState = crptMaximized
    '            CR.ReportFileName = App.Path & "\Grafico 8.rpt"
     '           CR.SelectionFormula = "{grafArtUt.EG} =" + Str$(10) + " to " + Str$(40) + ";"
      '          Dt(5).Recordset.AbsolutePosition = Dt(3).Recordset.AbsolutePosition
       '         CR.Formulas(0) = "Nombre='" + lbl(0).Caption + " '"
        '        CR.Formulas(1) = "NomEco='" + Cbx(36).Text + " '"
                
        '        Txto(1) = Cbx(37).Text
         '       If IsNumeric(P(98).Text) = True Then If P(98).Text <> "" Then Txto(2) = P(98).Text & " mm."
          '      Txto(3) = P(97).Text
           '     Txto(4) = Cbx(39).Text
            '    Txto(5) = Cbx(40).Text
             '   Txto(6) = Cbx(109).Text
              '  Txto(7) = P(94).Text
               ' Txto(8) = P(91).Text
                'If IsNumeric(P(15).Text) = True Then If P(15).Text <> "" Then Txto(9) = P(15).Text & " Kl/m2"
'                If IsNumeric(P(15).Text) = True Then If P(15).Text <> "" Then Txto(10) = Fncn.EstNutr(P(15).Text)
 '               If IsNumeric(P(167).Text) = True Then If P(167).Text <> "" Then Txto(11) = P(167).Text & " mm/Hg"
  '              If IsNumeric(P(164).Text) = True Then If P(164).Text <> "" Then Txto(12) = P(164).Text & " mm/Hg"
   '             Txto(13) = P(178).Text
    '            Txto(13) = Replace(Txto(13), Chr(13), "' + Chr(10) + '")
     '           Txto(13) = Replace(Txto(13), Chr(10), "")
      '          Txto(14) = P(79).Text
       '         Txto(15) = Str$(P(80).Text) & " Semanas."
        '        Txto(16) = Str$(P(176).Text)
         '
          '      CR.Formulas(2) = "DMat='" + Txto(1) + " '"
           '     CR.Formulas(3) = "LargoC='" + Txto(2) + " '"
            '    CR.Formulas(4) = "PromUT='" + Txto(3) + " '"
             '   CR.Formulas(5) = "Sintomat='" + Txto(4) + " '"
              '  CR.Formulas(6) = "TipoCx='" + Txto(5) + " '"
               ' CR.Formulas(7) = "UbPlc='" + Txto(6) + " '"
                'CR.Formulas(8) = "UD='" + Txto(7) + " '"
'                CR.Formulas(9) = "UI='" + Txto(8) + " '"
 '               CR.Formulas(10) = "IMC='" + Txto(9) + " '"
  '              CR.Formulas(11) = "Nutr='" + Txto(10) + " '"
   '             CR.Formulas(12) = "Psis='" + Txto(11) + " '"
    '            CR.Formulas(13) = "Pdias='" + Txto(12) + " '"
     '           CR.Formulas(14) = "Observ='" + Txto(13) + " '"
      '          CR.Formulas(15) = "FchExm='" + Txto(14) + " '"
       '         CR.Formulas(16) = "EgExm='" + Txto(15) + " '"
        '        CR.Formulas(17) = "PPrev='" + Txto(16) + " '"
'
 '               CR.Action = 1
        Case 39
            Bn(Index).Enabled = False
            Bn(40).Enabled = True
            Bn(41).Enabled = True
            P(83).Visible = False
            P(84).Visible = False
            P(87).Visible = False
            Call ExeMSC(1, base): Call ExeMSC(1, datos)
        Case 40
            Bn(Index).Enabled = False
            Bn(39).Enabled = True
            Bn(41).Enabled = True
            P(83).Visible = False
            P(84).Visible = False
            P(87).Visible = False
            Call ExeMSC(2, base)
            Call ExeMSC(2, datos)
        Case 41
            Bn(Index).Enabled = False
            Bn(39).Enabled = True
            Bn(40).Enabled = True
            P(83).Visible = True
            P(84).Visible = True
            P(87).Visible = True
            Call ExeMSC(3, base)
            Call ExeMSC(3, datos)
        Case 42
            IO = False
            DIV(16).Enabled = False
            For i = 44 To 50
                Bn(i).Enabled = True
            Next i
            Menu (True)
            DBCombo1.Enabled = True
            Dt(0).Enabled = True
            Bn(42).Enabled = False
            Bn(43).Enabled = False
            For i = 41 To 47
                Cbx(i).Enabled = False
            Next i
            For i = 50 To 61
                Cbx(i).Enabled = False
            Next i
            For i = 64 To 75
                Cbx(i).Enabled = False
            Next i
            For i = 78 To 89
                Cbx(i).Enabled = False
            Next i
            For i = 92 To 95
                Cbx(i).Enabled = False
            Next i
            For i = 107 To 118
                P(i).Enabled = False
            Next i
            DIV(22).Visible = False
            Dt(6).Recordset.Update
            Dt(6).Recordset.MoveFirst
            DIV(16).Enabled = True
        Case 43
            IO = False
            For i = 44 To 50
                Bn(i).Enabled = True
            Next i
            Menu (True)
            DBCombo1.Enabled = True
            Dt(0).Enabled = True
            Bn(42).Enabled = False
            Bn(43).Enabled = False
            For i = 41 To 47
                Cbx(i).Enabled = False
            Next i
            For i = 50 To 61
                Cbx(i).Enabled = False
            Next i
            For i = 64 To 75
                Cbx(i).Enabled = False
            Next i
            For i = 78 To 89
                Cbx(i).Enabled = False
            Next i
            For i = 92 To 95
                Cbx(i).Enabled = False
            Next i
            For i = 107 To 118
                P(i).Enabled = False
            Next i
            DIV(22).Visible = False
            Dt(6).Recordset.CancelUpdate
        Case 44
            For i = 44 To 50
                Bn(i).Enabled = False
            Next i
            Menu (False)
            DBCombo1.Enabled = False
            Dt(0).Enabled = False
            Bn(42).Enabled = True
            Bn(43).Enabled = True
            For i = 41 To 47
                Cbx(i).Enabled = True
            Next i
            For i = 50 To 61
                Cbx(i).Enabled = True
            Next i
            For i = 64 To 75
                Cbx(i).Enabled = True
            Next i
            For i = 78 To 89
                Cbx(i).Enabled = True
            Next i
            For i = 92 To 95
                Cbx(i).Enabled = True
            Next i
            For i = 107 To 110
                P(i).Enabled = True
            Next i
            For i = 115 To 118
                P(i).Enabled = True
            Next i
            IO = True
            Nw = True
            If Dt(6).Recordset.RecordCount < 1 Then
                Dt(6).Recordset.AddNew
                Dt(6).Recordset.Fields("RUT") = Dt(0).Recordset.Fields("RUT")
            Else
                Dt(6).Recordset.Edit
            End If
            P(107).SetFocus
        Case 51
            Bn(51).Enabled = False
            Bn(54).Enabled = False
            Bn(55).Enabled = False
            Bn(56).Enabled = False
            Bn(57).Enabled = False
            Bn(60).Enabled = False
            Menu (False)
            DBCombo1.Enabled = False
            Dt(0).Enabled = False
            Dt(4).Enabled = False
            Arry(4).Enabled = False
            Bn(52).Enabled = True
            Bn(53).Enabled = True
            DIV(18).Enabled = True
            P(150).Enabled = True
            Cbx(104).Enabled = True
            IO = True: Nw = True
            DIV(2).Enabled = True
            Dt(4).Recordset.AddNew
            Dt(4).Recordset.Fields("RUT") = Dt(0).Recordset.Fields("RUT")
            P(119).Text = Dt(4).Recordset.RecordCount + 1
            P(120).SetFocus
        Case 52
            IO = False
            Nw = False
            Bn(51).Enabled = True
            Bn(54).Enabled = True
            Bn(55).Enabled = True
            Bn(56).Enabled = True
            Bn(57).Enabled = True
            Bn(60).Enabled = True
            Menu (True)
            DBCombo1.Enabled = True
            Dt(0).Enabled = True
            Dt(4).Enabled = True
            Arry(4).Enabled = True
            Bn(52).Enabled = False
            Bn(53).Enabled = False
            DIV(18).Enabled = False
            P(150).Enabled = False
            Cbx(104).Enabled = False
            DIV(2).Enabled = False
            Dt(4).Recordset.Update
            Dt(4).Refresh
            If Dt(4).Recordset.RecordCount = 1 Then
                Dt(4).Recordset.MoveLast
                Dt(4).Recordset.MoveFirst
            ElseIf Dt(4).Recordset.RecordCount > 1 Then
                Dt(4).Recordset.MoveLast
            End If
        Case 53
            IO = False
            Nw = False
            Bn(51).Enabled = True
            Bn(54).Enabled = True
            Bn(55).Enabled = True
            Bn(56).Enabled = True
            Bn(57).Enabled = True
            Bn(60).Enabled = True
            Menu (True)
            DBCombo1.Enabled = True
            Dt(0).Enabled = True
            Dt(4).Enabled = True
            Arry(4).Enabled = True
            Bn(52).Enabled = False
            Bn(53).Enabled = False
            DIV(18).Enabled = False
            P(150).Enabled = False
            Cbx(104).Enabled = False
            DIV(2).Enabled = False
            Dt(4).Recordset.CancelUpdate
        Case 54
            Bn(51).Enabled = False
            Bn(54).Enabled = False
            Bn(55).Enabled = False
            Bn(56).Enabled = False
            Bn(57).Enabled = False
            Bn(60).Enabled = False
            Menu (False)
            DBCombo1.Enabled = False
            Dt(0).Enabled = False
            Dt(4).Enabled = False
            Arry(4).Enabled = False
            Bn(52).Enabled = True
            Bn(53).Enabled = True
            DIV(18).Enabled = True
            P(150).Enabled = True
            Cbx(104).Enabled = True
            Cbx(97).SetFocus
            DIV(2).Enabled = True
            IO = True
            Dt(4).Recordset.Edit
        Case 55
            divAct = 17
            Call Msgs(M5 & Dt(4).Recordset.Fields("num"), T3, MsgSN, Del)
        Case 56
            If Dt(3).Recordset.RecordCount > 0 Then
                Set loCr = New CRAXDRT.Application
                If IsNumeric(P(133).Text) = False Then
                    Set loRpt = loCr.OpenReport(App.Path & "\doppler.rpt")
                    loRpt.Database.Tables(1).Location = App.Path & "\Consultamedica.mdb"
                    loRpt.FormulaFields.GetItemByName("relax").Text = "'" & P(145).Text & "'"
                    loRpt.FormulaFields.GetItemByName("marca").Text = "'" & P(146).Text & "'"
                ElseIf IsNumeric(P(142).Text) = False Then
                    Set loRpt = loCr.OpenReport(App.Path & "\doppler3.rpt")
                    loRpt.Database.Tables(1).Location = App.Path & "\Consultamedica.mdb"
                    loRpt.FormulaFields.GetItemByName("fch").Text = "'" & P(120).Text & "'"
                ElseIf IsNumeric(P(139).Text) = True Then
                    Set loRpt = loCr.OpenReport(App.Path & "\doppler2.rpt")
                    loRpt.Database.Tables(1).Location = App.Path & "\Consultamedica.mdb"
                    loRpt.FormulaFields.GetItemByName("relax").Text = "'" & P(145).Text & "'"
                    loRpt.FormulaFields.GetItemByName("marca").Text = "'" & P(146).Text & "'"
                    loRpt.FormulaFields.GetItemByName("fch").Text = "'" & P(120).Text & "'"
                End If
                loRpt.RecordSelectionFormula = "{doppler.rut}='" + Dt(0).Recordset.Fields("RUT") + "' AND {doppler.num}=" + P(119).Text
                ln(0) = RPTHeader
                ln(1) = lbl(0).Caption
                ln(2) = Dt(0).Recordset.Fields("RUT")
                ln(3) = "FUR:  " + Format(P(3).Text, "dd/mm/yyyy") + "                          Edad Gestacional " + P(121).Text + " semanas                 Fecha Probable Parto: " + Format(P(5).Text, "dd/mm/yyyy")
    
                ln(4) = P(137).Text
                ln(5) = P(140).Text
                ln(6) = P(143).Text
                ln(7) = P(136).Text
                ln(8) = P(138).Text
                loRpt.FormulaFields.GetItemByName("Logo").Text = "'" & ln(0) & "'"
                loRpt.FormulaFields.GetItemByName("Nombre").Text = "'" & ln(1) & "'"
                If IsNumeric(P(133).Text) = True Then loRpt.FormulaFields.GetItemByName("otr").Text = "'" & "            RUT: " & ln(2) & "'"
                loRpt.FormulaFields.GetItemByName("EG").Text = "'" & ln(3) & "'"
                If IsNumeric(P(133).Text) = True Then loRpt.FormulaFields.GetItemByName("rango").Text = "'" & ln(4) & "'"
                If IsNumeric(P(133).Text) = True Then loRpt.FormulaFields.GetItemByName("rango1").Text = "'" & ln(4) & "'"
                If IsNumeric(P(133).Text) = True Then loRpt.FormulaFields.GetItemByName("rango2").Text = "'" & ln(4) & "'"
                loRpt.FormulaFields.GetItemByName("rango3").Text = "'" & ln(5) & "'"
                loRpt.FormulaFields.GetItemByName("rango4").Text = "'" & ln(6) & "'"
                If IsNumeric(P(133).Text) = True Then loRpt.FormulaFields.GetItemByName("med1").Text = "'" & ln(7) & "'"
                If IsNumeric(P(133).Text) = True Then loRpt.FormulaFields.GetItemByName("pct").Text = "'" & ln(8) & "'"
                loRpt.ExportOptions.DestinationType = crEDTDiskFile
                loRpt.ExportOptions.FormatType = crEFTPortableDocFormat
                loRpt.ExportOptions.PDFExportAllPages = True
                loRpt.ExportOptions.DiskFileName = App.Path & "\Informe.pdf"
                loRpt.Export (False)
                Set loRpt = Nothing
                Set loCr = Nothing
                Call ShellExecute(Me.hwnd, "open", App.Path & "\Informe.pdf ", "", "", 0)
            End If
        Case 58
            Call ShellExecute(Me.hwnd, "open", App.Path & LoadResString(107), "", App.Path, 4)
        Case 59
            Call ShellExecute(Me.hwnd, "open", App.Path & LoadResString(108), "", App.Path, 4)
        Case 61
        Dim B As Double
'Aceptar o SI
            If DIV(23).Left <> 0 Then
                Menu (True)
                DBCombo1.Enabled = True
                Dt(0).Enabled = True
                If MtvMsg = FUR Then
                    If DIV(4).Left = 0 Then
                        If (P(14).Text > 11) And (IsNumeric(P(44).Text) = True) Then
                            B = ((Fncn.IntEG(P(44).Text) * 7) + ((CDbl(P(44).Text) - Fncn.IntEG(P(44).Text)) * 10))
                            A = (((Fncn.IntEG(P(14).Text) * 7) + ((CDbl(P(14).Text) - Fncn.IntEG(P(14).Text)) * 10)) - B)
                        Else
                            B = ((Fncn.IntEG(P(28).Text) * 7) + (CDbl(P(28).Text) - Fncn.IntEG(P(28).Text)))
                            A = (((Fncn.IntEG(P(14).Text) * 7) + (CDbl(P(14).Text) - Fncn.IntEG(P(14).Text))) - B)
                            If B > 105 Then Exit Sub
                        End If
                        
                        DtBse(1).RecordSource = Rs2 + Dt(0).Recordset.Fields(0) + RsEnd
                        DtBse(1).Refresh
                        DtBse(1).Recordset.Edit
                        DtBse(1).Recordset.Fields("FURRF") = DtBse(1).Recordset.Fields("FUROP")
                        DtBse(1).Recordset.Fields("FUROP") = DateAdd("d", A, DtBse(1).Recordset.Fields("FUROP"))
                        DtBse(1).Recordset.Fields("C") = True
                        DtBse(1).Recordset.Update
                        If IO = True Then IO = False
                        Dt_Reposition (0)
                        IO = True
                        Dt(1).Recordset.Edit
                        P(14).Text = Fncn.Eg(DtBse(1).Recordset.Fields("FUROP"), P(13).Text)
                        P(29).Text = WriteObsPg2(Cbx(17).ListIndex)
                        IO = False
                        Dt(1).Recordset.Update
                        Dt(1).Refresh
                        If Dt(1).Recordset.RecordCount = 1 Then
                            Dt(1).Recordset.MoveFirst
                        ElseIf Dt(1).Recordset.RecordCount > 1 Then
                            Dt(1).Recordset.MoveLast
                        End If
                        Call Msgs("Fur ajustada por biometrias", T1)
                        DIV(4).Enabled = True
                        Menu (True)
                    ElseIf DIV(8).Left = 0 Then
                        A = Fncn.IntEG(P(47).Text) * 7
                        A = A + (CDbl(P(47).Text) - Fncn.IntEG(P(47).Text))
                        A = A - ((Fncn.IntEG(P(62).Text) * 7) + (CDbl(P(62).Text) - Fncn.IntEG(P(62).Text)))
                        DtBse(1).RecordSource = Rs2 + Dt(0).Recordset.Fields(0) + RsEnd
                        DtBse(1).Refresh
                        DtBse(1).Recordset.Edit
                        DtBse(1).Recordset.Fields("FURRF") = DtBse(1).Recordset.Fields("FUROP")
                        DtBse(1).Recordset.Fields("FUROP") = DateAdd("d", A, DtBse(1).Recordset.Fields("FUROP"))
                        DtBse(1).Recordset.Fields("C") = True
                        DtBse(1).Recordset.Update
                        If IO = True Then IO = False
                        Dt_Reposition (0)
                        IO = True
                        P_Change (46)
                        P_Change (54)
                        P_Change (57)
                        P_Change (60)
                        Call Msgs("Fur ajustada por biometrias", T1)
                        DIV(8).Enabled = True
                        Menu (True)
                    End If
                ElseIf MtvMsg = Del Then
                    Select Case divAct
                        Case 0
                            DIV(0).Enabled = True
                        Case 5
                            DIV(4).Enabled = True
                            Dt(1).Recordset.Delete
                            Dt(1).RecordSource = "SELECT * FROM eco1trim where RUT='" + Dt(0).Recordset.Fields(0) + "' order by N;"
                            Dt(1).Refresh
                            If Dt(1).Recordset.RecordCount = 1 Then
                                Dt(1).Recordset.MoveFirst
                            ElseIf Dt(1).Recordset.RecordCount > 1 Then
                                Dt(1).Recordset.MoveLast
                            End If
                        Case 9
                            DIV(8).Enabled = True
                            Dt(2).Recordset.Delete
                            Dt(2).RecordSource = "SELECT * FROM ecografias where RUT='" + Dt(0).Recordset.Fields(0) + "' order by neco;"
                            Dt(2).Refresh
                            If Dt(2).Recordset.RecordCount = 1 Then
                                Dt(2).Recordset.MoveFirst
                            ElseIf Dt(2).Recordset.RecordCount > 1 Then
                                Dt(2).Recordset.MoveLast
                            End If
                            Dt(3).RecordSource = "SELECT * FROM ecografias where RUT='" + Dt(0).Recordset.Fields(0) + "' order by neco;"
                            Dt(3).Refresh
                            If Dt(3).Recordset.RecordCount = 1 Then
                                Dt(3).Recordset.MoveFirst
                            ElseIf Dt(3).Recordset.RecordCount > 1 Then
                                Dt(3).Recordset.MoveLast
                            End If
                            Dt(5).RecordSource = "SELECT * FROM ecografias where RUT='" + Dt(0).Recordset.Fields(0) + "' order by neco;"
                            Dt(5).Refresh
                            If Dt(5).Recordset.RecordCount = 1 Then
                                Dt(5).Recordset.MoveFirst
                            ElseIf Dt(5).Recordset.RecordCount > 1 Then
                                Dt(5).Recordset.MoveLast
                            End If
                        Case 14
                            DIV(14).Enabled = True
                            Dt(3).Recordset.Edit
                            IO = True
                            P(89).Text = ""
                            P(92).Text = ""
                            P(98).Text = ""
                            P(99).Text = ""
                            P(102).Text = ""
                            Cbx(37).Text = ""
                            Cbx(38).Text = ""
                            Cbx(39).Text = ""
                            Cbx(40).Text = ""
                            Cbx(109).Text = ""
                            Dt(3).Recordset.Update
                            Dt(2).Recordset.Edit
                            Call WriteObsPg3(0)
                            IO = False
                            Dt(2).Recordset.Update
                            If Dt(2).Recordset.RecordCount = 1 Then
                                Dt(2).Recordset.MoveFirst
                            ElseIf Dt(2).Recordset.RecordCount > 1 Then
                                Dt(2).Recordset.MoveLast
                            End If
                            Dt(3).Refresh
                            If Dt(3).Recordset.RecordCount = 1 Then
                                Dt(3).Recordset.MoveFirst
                            ElseIf Dt(3).Recordset.RecordCount > 1 Then
                                Dt(3).Recordset.MoveLast
                            End If
                            Dt(5).Refresh
                        Case 16
                            DIV(16).Enabled = True
                        Case 17
                            DIV(17).Enabled = True
                            Dt(4).Recordset.Delete
                            Dt(4).RecordSource = "SELECT * FROM Doppler where RUT='" + Dt(0).Recordset.Fields(0) + "' order by num;"
                            Dt(4).Refresh
                            If Dt(4).Recordset.RecordCount = 1 Then
                                Dt(4).Recordset.MoveFirst
                            ElseIf Dt(4).Recordset.RecordCount > 1 Then
                                Dt(4).Recordset.MoveLast
                            End If
                        Case 40
                            DIV(40).Enabled = True
                            Dt(9).Recordset.Edit
                            IO = True
                            P(200).Text = ""
                            P(214).Text = ""
                            P(217).Text = ""
                            Cbx(126).Text = ""
                            Dt(9).Recordset.Update
                            IO = False
                            Dt(1).Recordset.Update
                            If Dt(1).Recordset.RecordCount = 1 Then
                                Dt(1).Recordset.MoveFirst
                            ElseIf Dt(1).Recordset.RecordCount > 1 Then
                                Dt(1).Recordset.MoveLast
                            End If
                            Dt(9).Refresh
                            If Dt(9).Recordset.RecordCount = 1 Then
                                Dt(9).Recordset.MoveFirst
                            ElseIf Dt(9).Recordset.RecordCount > 1 Then
                                Dt(9).Recordset.MoveLast
                            End If
                    End Select
                Else
                    Select Case divAct
                        Case 0
                            DIV(0).Enabled = True
                        Case 5
                            DIV(4).Enabled = True
                        Case 9
                            DIV(8).Enabled = True
                        Case 14
                            DIV(14).Enabled = True
                        Case 16
                            DIV(16).Enabled = True
                        Case 18
                            DIV(17).Enabled = True
                        Case 40
                            DIV(40).Enabled = True
                    End Select
                End If
            Else
                Mn(12).Enabled = True
            End If
            DBCombo1.Enabled = True
            DIV(21).Visible = False
        Case 62
            Menu (True)
            DBCombo1.Enabled = True
            Dt(0).Enabled = True
            Select Case divAct
                Case 0
                    DIV(0).Enabled = True
                Case 5
                    DIV(4).Enabled = True
                Case 9
                    DIV(8).Enabled = True
                Case 14
                    DIV(14).Enabled = True
                Case 16
                    DIV(16).Enabled = True
                Case 18
                    DIV(17).Enabled = True
                Case 50
                    DIV(40).Enabled = True
            End Select
            DIV(21).Visible = False
            If MtvMsg = FUR Then
                DtBse(1).RecordSource = Rs2 + Dt(0).Recordset.Fields(0) + RsEnd
                DtBse(1).Refresh
                DtBse(1).Recordset.Edit
                DtBse(1).Recordset.Fields("FUROP") = True
                DtBse(1).Recordset.Update
            End If
            
        Case 63
            If Bn(Index).Left = 11280 Then
                Mn(12).Enabled = True
                Dt(0).Enabled = True
                If Chk(1).Value = 1 Then
                    Call ShellExecute(Me.hwnd, "open", App.Path & C1, "", App.Path, 4)
                    Bn(Index).Caption = B1
                    Bn(Index).Left = 12000
                    Bn(64).Visible = False
                    Dt(7).Recordset.Fields("Aut") = "Si"
                    If Chk(8).Value = 0 Then
                        Dt(7).Recordset.Fields("Estudio") = "No"
                    Else
                        Dt(7).Recordset.Fields("Estudio") = "Si"
                    End If
                    Dt(7).Recordset.Fields("Paciente") = lbl(0).Caption
                    Dt(7).Recordset.Update
                    Dt(7).Refresh
                    If Dt(7).Recordset.RecordCount = 1 Then
                        Dt(7).Recordset.MoveFirst
                    ElseIf Dt(7).Recordset.RecordCount > 1 Then
                        Dt(7).Recordset.MoveLast
                    End If
                Else
                    Bn_Click (64)
                End If
            Else
                DIV(20).Visible = False
                Bn(Index).Caption = B2
                Bn(Index).Left = 11280
            End If
        Case 64
            DIV(20).Visible = False
            Menu (True)
            DBCombo1.Enabled = True
            Dt(0).Enabled = True
            Dt(7).Recordset.CancelUpdate
        Case 70
            Dim T As String
            T = App.Path & "\reportemix.exe " _
                        & lbl(0).Caption & _
                        ":" & P(186).Text & ":" & Dt(0).Recordset.Fields(0)
            Call Shell(T, _
                        vbNormalFocus)
        Case 71
            Call Shell(App.Path & "\graficoEG.exe " _
                        & lbl(0).Caption & _
                        ":" & P(46).Text & ":" & Dt(0).Recordset.Fields(0), _
                        vbNormalFocus)
        Case 74
            IO = False
            For i = 68 To 73
                If i <> 71 Then Bn(i).Enabled = True
            Next i
            Bn(75).Enabled = True
            Bn(76).Enabled = True
            Bn(78).Enabled = True
            Bn(79).Enabled = True
            DIV(35).Enabled = False
            Menu (True)
            DBCombo1.Enabled = True
            Dt(0).Enabled = True
            Dt(5).Enabled = True
            Bn(74).Enabled = False
            Bn(77).Enabled = False
            Arry(5).Enabled = True
            DIV(24).Enabled = False
            Dt(5).Recordset.CancelUpdate
        Case 76
            Bn(76).Enabled = False
            For i = 68 To 73
                If i <> 71 Then Bn(i).Enabled = False
            Next i
            Bn(75).Enabled = False
            Bn(78).Enabled = False
            Bn(79).Enabled = False
            Menu (False)
            DIV(35).Enabled = True
            DBCombo1.Enabled = False
            Dt(0).Enabled = False
            Dt(5).Enabled = False
            Bn(74).Enabled = True
            Bn(77).Enabled = True
            Arry(5).Enabled = False
            DIV(24).Enabled = True
            Dt(5).Recordset.Edit
            IO = True
            P(187).SetFocus
        Case 77
            IO = False
            Call ExeMSC(5, base)
            DIV(24).Enabled = False
            Bn(78).Enabled = True
            Bn(79).Enabled = True
            Bn(76).Enabled = True
            For i = 68 To 73
                 If i <> 71 Then Bn(i).Enabled = True
            Next i
            Bn(75).Enabled = True
            DIV(35).Enabled = False
            Menu (True)
            DBCombo1.Enabled = True
            Dt(0).Enabled = True
            Dt(5).Enabled = True
            Dt(5).Recordset.Update
            Bn(74).Enabled = False
            DIV(35).Enabled = False
            Bn(77).Enabled = False
            Arry(5).Enabled = True
            Dt(5).RecordSource = "SELECT * FROM ecografias where RUT='" + Dt(0).Recordset.Fields(0) + "' order by neco;"
            Dt(5).Refresh
            If Dt(5).Recordset.RecordCount = 1 Then
                Dt(5).Recordset.MoveFirst
            ElseIf Dt(5).Recordset.RecordCount > 1 Then
                Dt(5).Recordset.MoveLast
            End If
            Dt(2).Refresh
            Dt(3).Refresh
            Call ExeMSC(5, datos)
        Case 78
            Bn(Index).Enabled = False
            Bn(79).Enabled = True
            Bn(102).Enabled = True
            Call ExeMSC(6, base)
            Call ExeMSC(6, datos)
        Case 79
            Bn(78).Enabled = True
            Bn(Index).Enabled = False
            Bn(102).Enabled = True
            Call ExeMSC(6, base)
            Call ExeMSC(6, datos)
        Case 82, 84, 85, 88
            Call ShellExecute(Me.hwnd, "open", App.Path & LoadResString(102), "", App.Path, 4)
        Case 83
            Call ShellExecute(Me.hwnd, "open", App.Path & LoadResString(103), "", App.Path, 4)
        Case 86, 87
            Call ShellExecute(Me.hwnd, "open", App.Path & LoadResString(104), "", App.Path, 4)
        Case 89
            Call ShellExecute(Me.hwnd, "open", App.Path & LoadResString(109), "", App.Path, 4)
        Case 90
            'minimizador de Consentimiento Informado
        Case 92
            If IsNumeric(Cbx(4).Text) = True Then
                If CInt(Cbx(4).Text) >= 1 Then
                    If DIV(28).Visible = True Then
                        DIV(28).Visible = False
                    Else
                        DIV(28).Visible = True
                    End If
                Else
                    If DIV(28).Visible = True Then DIV(28).Visible = False
                End If
            Else
                DIV(28).Visible = False
            End If
        Case 93
                    Call Shell(App.Path & "\reportedoppler2.exe " _
                        & lbl(0).Caption & _
                        ":" & P(120).Text & ":" & Dt(0).Recordset.Fields(0), _
                        vbNormalFocus)
                        
          '  Dt(4).Recordset.MoveLast
         '       dtRpt7
          '      CR.Reset
           '     CR.Destination = crptToWindow
            '    CR.WindowState = crptMaximized
             '   CR.ReportFileName = App.Path & "\Grafico 7.rpt"
              '  CR.SelectionFormula = "{grafArtCM.EG} =" + Str$(20) + " to " + Str$(40) + ";"
           '     CR.Formulas(0) = "Nombre='" + lbl(0).Caption + " '"
            '    CR.Formulas(1) = "NomEco='" + Cbx(104).Text + " '"
             '   CR.Formulas(1) = "FchEco='" + P(120).Text + " '"
              '  CR.Action = 1
        Case 94
            Set loCr = New CRAXDRT.Application
            Set loRpt = loCr.OpenReport(App.Path & "\Edad Gestacional.rpt")
            loRpt.Database.Tables(1).Location = App.Path & "\consultamedica.mdb"
            loRpt.RecordSelectionFormula = "{ecografias.rut}='" + Dt(0).Recordset.Fields("RUT") + "' AND {ecografias.neco}=" + P(45).Text
                ln(0) = RPTHeader
                ln(1) = lbl(0).Caption + "             RUT: " + Dt(0).Recordset.Fields("RUT")
                ln(2) = "FUR:  " + Format(P(3).Text, "dd/mm/yyyy") + "                    Edad Gestacional: " + P(47).Text + " semanas    " + "        Fecha Probable Parto: " + Format(P(5).Text, "dd/mm/yyyy")
                ln(3) = "inserción " + Cbx(29).Text + " y de ubicación " + Cbx(28).Text
                ln(4) = Cbx(34).Text + ", con bolsillo vertical mayor de " + P(70).Text + " mm"
                If IsNumeric(P(76).Text) = True Then ln(4) = ln(4) & ", e ILA de " & P(76).Text & " mm."
                ln(5) = P(67).Text
                ln(6) = Cbx(31).Text + ", identificandose " + Cbx(32).Text + " vasos."
                ln(7) = P(64).Text
                ln(8) = P(62).Text + " semanas de gestación según biometría percentil 50* "
                ln(9) = "Fecha Probable de Parto = " + Format(P(5).Text, "dd/mm/yyyy")
                ln(10) = "FUR Operacional = " + Format(P(3).Text, "dd/mm/yyyy")
                If Val(P(53).Text) = 0 Then
                    ln(11) = 0
                Else
                    ln(11) = Int(Val(P(52).Text) / Val(P(53).Text) * 100 + 0.5)
                End If
                If Optn(11).Value = True Then
                    ln(12) = Cbx(23).Text + ",  dorso " + Cbx(24).Text + " sin actividad cardiaca"
                ElseIf Optn(10).Value = True Then
                    ln(12) = Cbx(23).Text + ",  dorso " + Cbx(24).Text + " con actividad cardiaca"
                    ln(13) = "Frecuencia cardiaca fetal, " + P(49).Text + " x minuto."
                Else
                    ln(12) = Cbx(23).Text + ",  dorso " + Cbx(24).Text + " sin actividad cardiaca."
                End If
                If Optn(13).Value = True Then
                    ln(14) = " y sin movimientos corporales"
                ElseIf Optn(12).Value = True Then
                    ln(14) = " y con movimientos corporales"
                Else
                    ln(14) = " y sin movimientos corporales"
                End If
                loRpt.FormulaFields.GetItemByName("Logo").Text = "'" & ln(0) & "'"
                loRpt.FormulaFields.GetItemByName("Nombre").Text = "'" & ln(1) & "'"
                loRpt.FormulaFields.GetItemByName("EG").Text = "'" & ln(2) & "'"
                loRpt.FormulaFields.GetItemByName("placenta").Text = "'" & ln(3) & "'"
                loRpt.FormulaFields.GetItemByName("liquido").Text = "'" & ln(4) & "'"
                loRpt.FormulaFields.GetItemByName("tllaA").Text = "'" & ln(5) & "'"
                loRpt.FormulaFields.GetItemByName("CUmb").Text = "'" & ln(6) & "'"
                loRpt.FormulaFields.GetItemByName("prom").Text = "'" & ln(7) & "'"
                loRpt.FormulaFields.GetItemByName("OBS").Text = "'" & ln(8) & "'"
                loRpt.FormulaFields.GetItemByName("Obss").Text = "'" & ln(9) & "'"
                loRpt.FormulaFields.GetItemByName("ObsFur").Text = "'" & ln(10) & "'"
                loRpt.FormulaFields.GetItemByName("ind").Text = "'" & ln(11) & "'"
                loRpt.FormulaFields.GetItemByName("acard").Text = "'" & ln(12) & ln(14) + "'"
                loRpt.FormulaFields.GetItemByName("fcf").Text = "'" & ln(13) & "'"
                loRpt.ExportOptions.DestinationType = crEDTDiskFile
                loRpt.ExportOptions.FormatType = crEFTPortableDocFormat
                loRpt.ExportOptions.PDFExportAllPages = True
                loRpt.ExportOptions.DiskFileName = App.Path & "\Informe.pdf"
                loRpt.Export (False)
                Set loRpt = Nothing
                Set loCr = Nothing
        Case 95
            DIV(25).Left = 20000
        Case 96
            If (DIV(4).Left = 0) Or (DIV(8).Left = 0) Or (DIV(17).Left = 0) Then
                Dim RUTtmp As String
                Dim TpoEcografia As Integer
                Dim Fch As String
                RUTtmp = Dt(0).Recordset.Fields(0)
                If Left(RUTtmp, 1) = 0 Then RUTtmp = Right(RUTtmp, Len(RUTtmp) - 1)
                If DIV(4).Left = 0 Then
                    If IsDate(P(13).Text) = True Then
                        TpoEcografia = 1
                        Bn_Click (67)
                        Fch = P(13).Text
                    Else
                        Exit Sub
                    End If
                ElseIf DIV(8).Left = 0 Then
                    If IsDate(P(46).Text) = True Then
                        TpoEcografia = 2
                        Bn_Click (94)
                        Bn_Click (98)
                        Fch = P(46).Text
                    Else
                        Exit Sub
                    End If
                ElseIf DIV(17).Left = 0 Then
                    If IsDate(P(120).Text) = True Then
                        TpoEcografia = 3
                        Fch = P(120).Text
                        Bn_Click (97)
                    Else
                        Exit Sub
                    End If
                ElseIf DIV(40).Left = 0 Then
                        TpoEcografia = 1
                        Fch = P(13).Text
                    Else
                        Exit Sub
                End If
                Call Shell(App.Path & "\VDICOM.EXE " _
                                        & lbl(0).Caption _
                                        & ";" & RUTtmp _
                                        & ";" & TpoEcografia _
                                        & ";" & Fch, _
                                        vbNormalFocus)
            End If
        Case 97
            Set loCr = New CRAXDRT.Application
            If IsNumeric(P(133).Text) = False Then
                Set loRpt = loCr.OpenReport(App.Path & "\doppler.rpt")
            ElseIf IsNumeric(P(142).Text) = False Then
                Set loRpt = loCr.OpenReport(App.Path & "\doppler3.rpt")
                CR.Formulas(11) = "fch='" + P(120).Text + "'"
            ElseIf IsNumeric(P(139).Text) = True Then
                Set loRpt = loCr.OpenReport(App.Path & "\doppler2.rpt")
                loRpt.FormulaFields.GetItemByName("relax").Text = "'" & P(145).Text & "'"
                loRpt.FormulaFields.GetItemByName("marca").Text = "'" & P(146).Text & "'"
                loRpt.FormulaFields.GetItemByName("fch").Text = "'" & P(120).Text & "'"
            End If
            loRpt.Database.Tables(1).Location = App.Path & "\consultamedica.mdb"
            loRpt.RecordSelectionFormula = "{doppler.rut}='" + Dt(0).Recordset.Fields("RUT") + "' AND {doppler.num}=" + P(119).Text
            ln(0) = RPTHeader
            ln(1) = lbl(0).Caption
            ln(2) = Dt(0).Recordset.Fields("RUT")
            ln(3) = "FUR:  " + Format(P(3).Text, "dd/mm/yyyy") + "                            Edad Gestacional  " + P(121).Text + "  semanas    " + "                Fecha Probable Parto: " + Format(P(5).Text, "dd/mm/yyyy")
            ln(4) = P(137).Text
            ln(5) = P(140).Text
            ln(6) = P(143).Text
            ln(7) = P(136).Text
            ln(8) = P(138).Text
            loRpt.FormulaFields.GetItemByName("Logo").Text = "'" & ln(0) & "'"
            loRpt.FormulaFields.GetItemByName("Nombre").Text = "'" & ln(1) & "'"
            loRpt.FormulaFields.GetItemByName("otr").Text = "'" & "  RUT: " + ln(2) & "'"
            loRpt.FormulaFields.GetItemByName("EG").Text = "'" & ln(3) & "'"
            loRpt.FormulaFields.GetItemByName("rango").Text = "'" & ln(4) & "'"
            loRpt.FormulaFields.GetItemByName("rango1").Text = "'" & ln(4) & "'"
            loRpt.FormulaFields.GetItemByName("rango2").Text = "'" & ln(4) & "'"
            loRpt.FormulaFields.GetItemByName("rango3").Text = "'" & ln(5) & "'"
            loRpt.FormulaFields.GetItemByName("rango4").Text = "'" & ln(6) & "'"
            loRpt.FormulaFields.GetItemByName("med1").Text = "'" & ln(7) & "'"
            loRpt.FormulaFields.GetItemByName("pct").Text = "'" & ln(8) & "'"
            loRpt.ExportOptions.DestinationType = crEDTDiskFile
            loRpt.ExportOptions.FormatType = crEFTPortableDocFormat
            loRpt.ExportOptions.PDFExportAllPages = True
            loRpt.ExportOptions.DiskFileName = App.Path & "\Informe.pdf"
            loRpt.Export (False)
            Set loRpt = Nothing
            Set loCr = Nothing
        Case 98
            Set loCr = New CRAXDRT.Application
            Set loRpt = loCr.OpenReport(App.Path & "\Crecimiento.rpt")
            loRpt.Database.Tables(1).Location = App.Path & "\consultamedica.mdb"
            loRpt.RecordSelectionFormula = "{ecografias.rut}='" + Dt(0).Recordset.Fields("RUT") + "' AND {ecografias.neco}=" + P(45).Text
            ln(0) = RPTHeader
            ln(1) = lbl(0).Caption + "             RUT: " + Dt(0).Recordset.Fields("RUT")
            ln(2) = "FUR:  " + Format(P(3).Text, "dd/mm/yyyy") + "                    Edad Gestacional: " + P(47).Text + " semanas    " + "        Fecha Probable Parto: " + Format(P(5).Text, "dd/mm/yyyy")
            ln(3) = "inserción " + Cbx(29).Text + " y de ubicación " + Cbx(28).Text
            ln(4) = Cbx(34).Text + ", con bolsillo vertical mayor de " + P(70).Text + " mm"
            If IsNumeric(P(76).Text) = True Then ln(4) = ln(4) & ", e ILA de " & P(76).Text & " mm."
            ln(5) = P(67).Text
            ln(6) = Cbx(31).Text + ", identificandose " + Cbx(32).Text + " vasos."
            ln(7) = P(64).Text
            ln(8) = "Embarazo " + P(47).Text + "semanas de gestación, feto en presentación " + Cbx(23).Text + ",  dorso " + Cbx(24).Text
            ln(9) = P(64).Text
            ln(10) = P(66).Text
            If Val(P(53).Text) = 0 Then
                ln(11) = 0
            Else
                ln(11) = Int(Val(P(52).Text) / Val(P(53).Text) * 100 + 0.5)
            End If
            If Optn(11).Value = True Then
                ln(12) = Cbx(23).Text + ",  dorso " + Cbx(24).Text + " sin actividad cardiaca"
            ElseIf Optn(10).Value = True Then
                ln(12) = Cbx(23).Text + ",  dorso " + Cbx(24).Text + " con actividad cardiaca"
                ln(13) = "Frecuencia cardiaca fetal, " + P(49).Text + " x minuto."
            Else
                ln(12) = Cbx(23).Text + ",  dorso " + Cbx(24).Text + " sin actividad cardiaca."
            End If
            If Optn(13).Value = True Then
                ln(14) = " y sin movimientos corporales"
            ElseIf Optn(12).Value = True Then
                ln(14) = " y con movimientos corporales"
            Else
                ln(14) = " y sin movimientos corporales"
            End If
            If IsNumeric(P(66).Text) = True Then
                ln(18) = P(66).Text
                If P(66).Text < Int(3) Then
                    ln(17) = "obeso"
                ElseIf Int(P(66).Text) < Int(97) Then
                    ln(17) = "simetrico"
                Else
                    ln(17) = "enflaquecido"
                End If
            Else
                If P(66).Text = "mayor pct 97" Then
                    ln(18) = "> pct 97"
                    ln(17) = "enflaquecido"
                ElseIf P(66).Text = "menor pct 3" Then
                    ln(18) = "< pct 3"
                    ln(17) = "obeso"
                End If
            End If
            If IsNumeric(P(64).Text) = True Then
                ln(16) = "en pct. " & P(64).Text
                If P(64).Text < 10 Then
                    ln(15) = "pequeño"
                ElseIf P(64).Text < 90 Then
                    ln(15) = "adecuado"
                Else
                    ln(15) = "grande"
                End If
            Else
                ln(16) = P(64).Text
                If P(64).Text = "menor pct 3" Then
                    ln(16) = "< pct 3"
                    ln(15) = "pequeño"
                ElseIf P(64).Text = "mayor pct 97" Then
                    ln(16) = "> pct 97"
                    ln(15) = "grande"
                End If
            End If
            ln(19) = "el crecimiento es " + ln(15) + " para la edad gestacional (PFE " & ln(16) & ")," + " y " & ln(17) & " (relación Cc/Ca pct. " + ln(18) + ")."
            loRpt.FormulaFields.GetItemByName("Logo").Text = "'" & ln(0) & "'"
            loRpt.FormulaFields.GetItemByName("Nombre").Text = "'" & ln(1) & "'"
            loRpt.FormulaFields.GetItemByName("EG").Text = "'" & ln(2) & "'"
            loRpt.FormulaFields.GetItemByName("placenta").Text = "'" & ln(3) & "'"
            loRpt.FormulaFields.GetItemByName("liquido").Text = "'" & ln(4) & "'"
            loRpt.FormulaFields.GetItemByName("tllaA").Text = "'" & ln(5) & "'"
            loRpt.FormulaFields.GetItemByName("CUmb").Text = "'" & ln(6) & "'"
            loRpt.FormulaFields.GetItemByName("prom").Text = "'" & ln(7) & "'"
            loRpt.FormulaFields.GetItemByName("OBS").Text = "'" & ln(8) & "'"
            loRpt.FormulaFields.GetItemByName("pctpso").Text = "'" & ln(9) & "'"
            loRpt.FormulaFields.GetItemByName("pctccca").Text = "'" & ln(10) & "'"
            loRpt.FormulaFields.GetItemByName("ind").Text = "'" & ln(11) & "'"
            loRpt.FormulaFields.GetItemByName("acard").Text = "'" & ln(12) + ln(14) & "'"
            loRpt.FormulaFields.GetItemByName("fcf").Text = "'" & ln(13) & "'"
            loRpt.FormulaFields.GetItemByName("Obss").Text = "'" & ln(19) & "'"
            loRpt.ExportOptions.DestinationType = crEDTDiskFile
            loRpt.ExportOptions.FormatType = crEFTPortableDocFormat
            loRpt.ExportOptions.PDFExportAllPages = True
            loRpt.ExportOptions.DiskFileName = App.Path & "\Informe2.pdf"
            loRpt.Export (False)
            Set loRpt = Nothing
            Set loCr = Nothing
        Case 99
            Call ShellExecute(Me.hwnd, "open", App.Path & LoadResString(110), "", App.Path, 4)
        Case 100
            Call ShellExecute(Me.hwnd, "open", "C:\EMISUB\emisub.exe", "", App.Path, 4)
        Case 101
            Call Shell(App.Path & "\Recetas " _
                        & Dt(0).Recordset.Fields(0) & _
                        ":" & lbl(0).Caption, _
                        vbNormalFocus)
        Case 102
            Bn(78).Enabled = True
            Bn(79).Enabled = True
            Bn(102).Enabled = False
            Call ExeMSC(6, base)
            Call ExeMSC(6, datos)
        Case 106
            Bn_Click (16)
        Case 110
            Bn_Click (14)
        Case 111
            IO = False
            Bn(113).Enabled = True
            Bn(105).Enabled = True
            Bn(110).Enabled = True
            Bn(106).Enabled = True
            Bn(65).Enabled = True
            Bn(102).Enabled = True
            Arry(6).Enabled = True
            Dt(9).Enabled = True
            Menu (True)
            DBCombo1.Enabled = True
            Dt(0).Enabled = True
            Bn(114).Enabled = False
            Bn(111).Enabled = False
            DIV(41).Enabled = False
            N = Dt(9).Recordset.AbsolutePosition
            Dt(9).Recordset.CancelUpdate
            Dt(9).Refresh
            Dt(9).Recordset.AbsolutePosition = N
        Case 112
            Bn_Click (38)
        Case 113
            Bn(113).Enabled = False
            Bn(105).Enabled = False
            Bn(110).Enabled = False
            Bn(106).Enabled = False
            Bn(65).Enabled = False
            Bn(102).Enabled = False
            Arry(6).Enabled = False
            Dt(9).Enabled = False
            Menu (False)
            DBCombo1.Enabled = False
            Dt(0).Enabled = False
            IO = True
            Bn(114).Enabled = True
            Bn(111).Enabled = True
            DIV(41).Enabled = True
            Dt(9).Recordset.Edit
            P(214).SetFocus
        Case 114
            Bn(113).Enabled = True
            Bn(105).Enabled = True
            Bn(110).Enabled = True
            Bn(106).Enabled = True
            Bn(65).Enabled = True
            Bn(102).Enabled = True
            Arry(6).Enabled = True
            Dt(9).Enabled = True
            Menu (True)
            DBCombo1.Enabled = True
            Dt(0).Enabled = True
            Bn(114).Enabled = False
            Bn(111).Enabled = False
            DIV(41).Enabled = False
            N = Dt(9).Recordset.AbsolutePosition
            Dt(9).Recordset.Update
            Dt(9).Refresh
            Dt(9).Recordset.AbsolutePosition = N
            IO = False
            Nw = False
            Dt(9).Refresh
            Dt(9).Recordset.AbsolutePosition = N
        Case 105
            divAct = 40
            Call Msgs(M3 & Dt(9).Recordset.Fields("N") & vbCrLf & M4, T3, MsgSN, Del)

    End Select
    
End Sub

Private Sub Cbx_Change(Index As Integer)
If loadSys = True Then Exit Sub
    
    Select Case Index
        Case 0
            Cbx_LostFocus (Index)
        Case 1
            Cbx_LostFocus (Index)
        Case 10
            If Cbx(Index).Text <> Tx1 Then
                P(16).Visible = True
                P(17).Visible = True
                lbl(36).Visible = True
                lbl(37).Visible = True
            Else
                P(16).Visible = False
                If IO = True Then P(16).Text = ""
                P(17).Visible = False
                If IO = True Then P(17).Text = ""
                lbl(36).Visible = False
                lbl(37).Visible = False
            End If
        Case 11
            If Cbx(Index).Text <> Tx1 Then
                P(18).Visible = True
                P(19).Visible = True
                lbl(39).Visible = True
                lbl(40).Visible = True
            Else
                P(18).Visible = False
                If IO = True Then P(18).Text = ""
                P(19).Visible = False
                If IO = True Then P(19).Text = ""
                lbl(39).Visible = False
                lbl(40).Visible = False
            End If
        Case 12
            If Cbx(Index).Text = Tx2 Then
                lbl(42).Visible = False
                lbl(43).Visible = False
                lbl(44).Visible = False
                lbl(45).Visible = False
                lbl(46).Visible = False
                lbl(47).Visible = False
                lbl(48).Visible = False
                If IO = True Then P(20).Text = ""
                If IO = True Then P(21).Text = ""
                If IO = True Then P(22).Text = ""
                If IO = True Then P(23).Text = ""
                If IO = True Then P(24).Text = ""
                P(20).Visible = False
                P(21).Visible = False
                P(22).Visible = False
                P(23).Visible = False
                P(24).Visible = False
            Else
                lbl(42).Visible = True
                lbl(43).Visible = True
                lbl(44).Visible = True
                lbl(45).Visible = True
                lbl(46).Visible = True
                lbl(47).Visible = True
                lbl(48).Visible = True
                P(20).Visible = True
                P(21).Visible = True
                P(22).Visible = True
                P(23).Visible = True
                P(24).Visible = True
            End If
        Case 14
            If Cbx(Index).Text = Tx2 Then
                P(25).Visible = False
                If IO = True Then P(25).Text = ""
                lbl(51).Visible = False
                lbl(51).Visible = False
            Else
                P(25).Visible = True
                lbl(51).Visible = True
                lbl(51).Visible = True
            End If
        Case 15
            If Cbx(Index).Text <> Tx3 Then
                Cbx(16).Visible = False
            Else
                Cbx(16).Visible = True
            End If
        Case 17
            If (Cbx(Index).Text = Tx5) Or (Cbx(Index).Text = Tx4) Then
                lbl(54).Visible = False
                lbl(55).Visible = False
                lbl(56).Visible = False
                lbl(57).Visible = False
                lbl(58).Visible = False
                lbl(59).Visible = False
                Cbx(63).Visible = False
                If IO = True Then Cbx(63).Text = ""
                P(27).Visible = False
                If IO = True Then P(27).Text = ""
                P(28).Visible = False
                If IO = True Then P(28).Text = ""
            ElseIf Cbx(Index).Text = "act. card. y Corp. (-)" Then
                lbl(54).Visible = False
                lbl(55).Visible = False
                lbl(56).Visible = True
                lbl(57).Visible = True
                lbl(58).Visible = True
                lbl(59).Visible = True
                Cbx(63).Visible = False
                P(27).Visible = True
                P(28).Visible = True
                If IO = True Then Cbx(63).Text = ""
            Else
                lbl(54).Visible = True
                lbl(55).Visible = True
                lbl(56).Visible = True
                lbl(57).Visible = True
                lbl(58).Visible = True
                lbl(59).Visible = True
                Cbx(63).Visible = True
                P(27).Visible = True
                P(28).Visible = True
            End If
        Case 18
            If Cbx(Index).Text = Tx6 Then
                P(30).Visible = True
                lbl(67).Visible = True
            Else
                If IO = True Then P(30).Text = ""
                P(30).Visible = False
                lbl(67).Visible = False
            End If
        Case 20
            If Cbx(Index).Text = Tx7 Then
                P(34).Visible = True
                lbl(69).Visible = True
            Else
                If IO = True Then P(34).Text = ""
                P(34).Visible = False
                lbl(69).Visible = False
            End If
        Case 25
            If (Cbx(Index).Text <> "Normales") And (Cbx(Index).Text <> "Plc Negativa") Then
                lbl(114).Visible = True
                lbl(115).Visible = True
                P(50).Visible = True
                P(51).Visible = True
            Else
                lbl(114).Visible = False
                lbl(115).Visible = False
                P(50).Visible = False
                P(51).Visible = False
            End If
        Case 35
            If IO = True Then If DIV(8).Left = 0 Then WriteObsPg3 (0)
        Case 90
            If IO = False Then Exit Sub
            If IsEmpty(Cbx(Index).Text) = False Then
                If Cbx(Index).Text <> Cbx(113).Text Then Cbx(113).Text = Cbx(Index).Text
            Else
                Cbx(113).Text = ""
            End If
        Case 91
            If IO = False Then Exit Sub
            If IsEmpty(Cbx(Index).Text) = False Then
                If Cbx(Index).Text <> Cbx(111).Text Then Cbx(111).Text = Cbx(Index).Text
            Else
                Cbx(111).Text = ""
            End If
        Case 110
            If IO = False Then Exit Sub
            If IsEmpty(Cbx(Index).Text) = False Then
                If Cbx(Index).Text <> Cbx(112).Text Then Cbx(112).Text = Cbx(Index).Text
            Else
                Cbx(112).Text = ""
            End If
        Case 111
            If IO = False Then Exit Sub
            If IsEmpty(Cbx(Index).Text) = False Then
                If Cbx(Index).Text <> Cbx(91).Text Then Cbx(91).Text = Cbx(Index).Text
            Else
                Cbx(91).Text = ""
            End If
        Case 112
            If IO = False Then Exit Sub
            If IsEmpty(Cbx(Index).Text) = False Then
                If Cbx(Index).Text <> Cbx(110).Text Then Cbx(110).Text = Cbx(Index).Text
            Else
                Cbx(110).Text = ""
            End If
        Case 113
            If IO = False Then Exit Sub
            If IsEmpty(Cbx(Index).Text) = False Then
                If Cbx(Index).Text <> Cbx(90).Text Then Cbx(90).Text = Cbx(Index).Text
            Else
                Cbx(90).Text = ""
            End If
    End Select
End Sub

Private Sub Cbx_Click(Index As Integer)
    
    Select Case Index
        Case 0, 1, 3, 7, 8, _
             9, 13, 16, 23, _
             28, 29, 30, 31, 32, _
             39, 43, 44, 45, _
             46, _
             52, 57, 58, 59, _
             60, _
             66, 71, 72, 73, _
             74, _
             80, 85, 86, 87, _
             88, _
             94, 97, 98, 99, 100, 101
                     
            If IO = True Then Cbx(Index + 1).SetFocus
        Case 2
            Cbx(5).SetFocus
        Case 4
            If IsNumeric(Cbx(Index).Text) = True Then
                If CInt(Cbx(Index).Text) >= 1 Then
                    DIV(28).Visible = True
                Else
                    If DIV(28).Visible = True Then DIV(28).Visible = False
                    Cbx(6).SetFocus
                End If
            End If
        Case 5
            Cbx(3).SetFocus
        Case 6
            P(3).SetFocus
        Case 10
            Cbx_Change (Index)
            If P(16).Visible = True Then
                P(16).SetFocus
            Else
                Cbx(11).SetFocus
            End If
        Case 11
            Cbx_Change (Index)
            If P(18).Visible = True Then
                P(18).SetFocus
            Else
                Cbx(12).SetFocus
            End If
        Case 12
            Cbx_Change (Index)
            If P(20).Visible = True Then
                P(20).SetFocus
            Else
                Cbx(13).SetFocus
            End If
        Case 14
            Cbx_Change (Index)
            If P(25).Visible = True Then
                P(25).SetFocus
            Else
                Cbx(15).SetFocus
            End If
        Case 15
            Cbx_Change (Index)
            If Cbx(16).Visible = True Then
                Cbx(16).SetFocus
            Else
                Cbx(17).SetFocus
            End If
        Case 17
            Cbx_Change (Index)
            If Cbx(63).Visible = True Then
                P(27).SetFocus
            Else
                P(29).SetFocus
                P(29).Text = WriteObsPg2(Cbx(17).ListIndex)
            End If
        Case 18
            Cbx_Change (Index)
            If P(30).Visible = True Then
                P(30).SetFocus
            Else
                Cbx(19).SetFocus
            End If
        Case 19
            Cbx(20).SetFocus
        Case 20
            Cbx_Change (Index)
            If P(34).Visible = True Then
                P(34).SetFocus
            Else
                Cbx(21).SetFocus
            End If
        Case 22
            Bn(10).SetFocus
        Case 24
            P(49).SetFocus
        Case 25
            If IO = False Then Exit Sub
            If (Cbx(Index).Text <> "Normales") And (Cbx(Index).Text <> "Plc Negativa") Then
                lbl(114).Visible = True
                lbl(115).Visible = True
                P(50).Visible = True
                P(51).Visible = True
                P(50).SetFocus
            Else
                lbl(114).Visible = False
                lbl(115).Visible = False
                P(50).Visible = False
                P(51).Visible = False
                P(49).SetFocus
            End If
        Case 27
            Cbx(62).SetFocus
        Case 33, 36
            Bn(19).SetFocus
        Case 34
            P(70).SetFocus
        Case 35
            Cbx(36).SetFocus
            If Cbx(35).ListIndex = 0 Then WriteObsPg3 (0)
            If Cbx(35).ListIndex = 1 Then WriteObsPg3 (1)
            If (Cbx(35).ListIndex <> 0) And (Cbx(35).ListIndex <> 1) Then WriteObsPg3 (2)
        Case 37
            If IO = True Then Cbx(109).SetFocus
        Case 38
            If IO = True Then Bn(29).SetFocus
        Case 40
            Bn(29).SetFocus
        Case 41
            Cbx(50).SetFocus
        Case 42
            Cbx(51).SetFocus
        Case 47
            Cbx(41).SetFocus
        Case 48
            Cbx(25).SetFocus
        Case 49
            P(52).SetFocus
        Case 50
            Cbx(52).SetFocus
        Case 51
            Cbx(43).SetFocus
        Case 53
            P(115).SetFocus
        Case 54, 68, 82, 96
            Bn(42).SetFocus
        Case 55
            Cbx(64).SetFocus
        Case 56
            Cbx(65).SetFocus
        Case 61
            Cbx(55).SetFocus
        Case 62
            Cbx(48).SetFocus
        Case 64
            Cbx(66).SetFocus
        Case 65
            Cbx(57).SetFocus
        Case 67
            P(116).SetFocus
        Case 69
            Cbx(78).SetFocus
        Case 70
            Cbx(79).SetFocus
        Case 75
            Cbx(69).SetFocus
        Case 77
            Chk(22).SetFocus
        Case 78
            Cbx(80).SetFocus
        Case 79
            Cbx(71).SetFocus
        Case 81
            P(117).SetFocus
        Case 83
            Cbx(92).SetFocus
        Case 84
            Cbx(93).SetFocus
        Case 89
            Cbx(83).SetFocus
        Case 92
            Cbx(94).SetFocus
        Case 93
            Cbx(85).SetFocus
        Case 95
            P(118).SetFocus
        Case 102, 103
            P(122).SetFocus
        Case 104
            Bn(52).SetFocus
        Case 105
            P(158).SetFocus
        Case 108
            P(167).SetFocus
        Case 109
            Bn(29).SetFocus
        Case 111, 112
            Cbx(Index + 1).SetFocus
        Case 113
            P(52).SetFocus
        Case 116
            Cbx(117).SetFocus
        Case 117
            Cbx(118).SetFocus
        Case 118
            Cbx(119).SetFocus
        Case 119
            Cbx(120).SetFocus
        Case 120
            Cbx(121).SetFocus
    End Select
    
End Sub

Private Sub Cbx_GotFocus(Index As Integer)
    
    Select Case Index
        Case 4
            If IsNumeric(Cbx(Index).Text) = True Then
                If CInt(Cbx(Index).Text) >= 1 Then
                    DIV(28).Visible = True
                Else
                    If DIV(28).Visible = True Then DIV(28).Visible = False
                End If
            End If
        Case 7, 8, 9, 10, 11, 12, 13, 14, _
             15, 23, 25, 26, 27, 35, _
             99, 101, 102
            If Nw = True Then Cbx(Index).ListIndex = 0
        Case 17
            If Nw = True Then Cbx(Index).ListIndex = 3
        Case 18
             If Nw = True Then Cbx(Index).ListIndex = 0
        Case 19
             If Nw = True Then Cbx(Index).ListIndex = 0
        Case 20
             If Nw = True Then Cbx(Index).ListIndex = 0
        Case 21
             If Nw = True Then Cbx(Index).ListIndex = 0
        Case 22
            If Nw = True Then Cbx(Index).Text = "Lagos"
        Case 24
            If Nw = True Then Cbx(Index).ListIndex = 2
            Picture2.Visible = True
        Case 76
             If Nw = True Then Cbx(Index).ListIndex = 0
        Case 97
            If Nw = True Then Cbx(Index).ListIndex = 12
        Case 98
            If Nw = True Then Cbx(Index).ListIndex = 9
        Case 100
            If Nw = True Then Cbx(Index).ListIndex = 1
        Case 104
            If Nw = True Then Cbx(Index).ListIndex = 1
        Case 108
            Cbx(Index).ListIndex = 1
        Case 109
            If Cbx(Index).Text = "" Then Cbx(Index).ListIndex = 0
        Case 114
            If Cbx(Index).Text = "" Then Cbx(Index).ListIndex = 0
            DIV(22).Visible = True
        Case 115
             If Nw = True Then Cbx(Index).ListIndex = 0
        Case 36
            If Cbx(Index).Text = "" Then Cbx(Index).Text = "Lagos"
    End Select
        
End Sub

Private Sub Cbx_KeyPress(Index As Integer, _
                        KeyAscii As Integer)
    
    Select Case KeyAscii
        Case 8
            Select Case Index
                Case 0
                    KeyAscii = 0
                    Cbx(Index).Text = "000"
                Case 1, 2, 3, 4, 5
                    KeyAscii = 0
                    Cbx(Index).Text = "00"
            End Select
            
        Case 13
            Select Case Index
                Case 0, 1, 3, 7, 8, _
                     9, 13, 16, 23, _
                     28, 29, 30, 31, 32, 35, _
                     39, 41, 42, 43, 44, 45, _
                     46, 50, 51, _
                     52, 55, 56, 57, 58, 59, _
                     60, 64, 65, _
                     66, 69, 70, 71, 72, 73, _
                     74, 78, 79, _
                     80, 83, 84, 85, 86, 87, _
                     88, 92, 93, _
                     94, 97, 98, 99, 100, 101, _
                     111, 112
                     
                    Cbx(Index + 1).SetFocus
                    KeyAscii = 0
                Case 2
                    Cbx(5).SetFocus
                Case 4
                    Cbx(6).SetFocus
                Case 5
                    Cbx(3).SetFocus
                Case 6
                    P(3).SetFocus
                    KeyAscii = 0
                Case 10
                    If P(16).Visible = True Then
                        P(16).SetFocus
                    Else
                        Cbx(11).SetFocus
                    End If
                    KeyAscii = 0
                Case 11
                    If P(18).Visible = True Then
                        P(18).SetFocus
                    Else
                        Cbx(12).SetFocus
                    End If
                    KeyAscii = 0
                Case 12
                    P(20).SetFocus
                    KeyAscii = 0
                Case 14
                    If P(25).Visible = True Then
                        P(25).SetFocus
                    Else
                        Cbx(15).SetFocus
                    End If
                    KeyAscii = 0
                Case 15
                    If Cbx(16).Visible = True Then
                        Cbx(16).SetFocus
                    Else
                        Cbx(17).SetFocus
                    End If
                    KeyAscii = 0
                Case 17
                    Cbx_Change (Index)
                    If P(27).Visible = True Then
                        P(27).SetFocus
                    Else
                        P(29).SetFocus
                        P(29).Text = WriteObsPg2(Cbx(17).ListIndex)
                    End If
                    KeyAscii = 0
                Case 18
                    If P(30).Visible = True Then
                        P(30).SetFocus
                    Else
                        Cbx(19).SetFocus
                    End If
                    KeyAscii = 0
                Case 19
                    Cbx(20).SetFocus
                    KeyAscii = 0
                Case 20
                    If P(34).Visible = True Then
                        P(34).SetFocus
                    Else
                        Cbx(21).SetFocus
                    End If
                    KeyAscii = 0
                Case 22
                    Bn(10).SetFocus
                    KeyAscii = 0
                Case 24
                    P(49).SetFocus
                    KeyAscii = 0
                Case 25
                    If (Cbx(Index).Text <> "Normales") And (Cbx(Index).Text <> "Plc Negativa") Then
                        lbl(114).Visible = True
                        lbl(115).Visible = True
                        P(50).Visible = True
                        P(51).Visible = True
                        P(50).SetFocus
                    Else
                        lbl(114).Visible = False
                        lbl(115).Visible = False
                        P(50).Visible = False
                        P(51).Visible = False
                        P(49).SetFocus
                    End If
                    KeyAscii = 0
                Case 26
                    P(52).SetFocus
                    KeyAscii = 0
                Case 27
                    Cbx(62).SetFocus
                    KeyAscii = 0
                Case 33, 36
                    Bn(19).SetFocus
                    KeyAscii = 0
                Case 34
                    P(70).SetFocus
                    KeyAscii = 0
                Case 37
                    Cbx(109).SetFocus
                    KeyAscii = 0
                Case 38, 109
                    Bn(29).SetFocus
                    KeyAscii = 0
                Case 40
                    Bn(29).SetFocus
                    KeyAscii = 0
                Case 47
                    Cbx(50).SetFocus
                    KeyAscii = 0
                Case 48
                    Cbx(25).SetFocus
                    KeyAscii = 0
                Case 49
                    P(52).SetFocus
                    KeyAscii = 0
                Case 53
                    P(115).SetFocus
                    KeyAscii = 0
                Case 54, 68, 82, 96
                    Bn(42).SetFocus
                    KeyAscii = 0
                Case 61
                    Cbx(64).SetFocus
                    KeyAscii = 0
                Case 62
                    Cbx(48).SetFocus
                    KeyAscii = 0
                Case 63
                    P(29).Text = WriteObsPg2(Cbx(17).ListIndex)
                    Cbx(22).SetFocus
                    KeyAscii = 0
                Case 67
                    P(116).SetFocus
                    KeyAscii = 0
                Case 75
                    Cbx(75).SetFocus
                    KeyAscii = 0
                Case 77
                    Chk(22).SetFocus
                    KeyAscii = 0
                Case 81
                    P(117).SetFocus
                    KeyAscii = 0
                Case 89
                    Cbx(92).SetFocus
                    KeyAscii = 0
                Case 90
                    Cbx(77).SetFocus
                    KeyAscii = 0
                Case 91
                    Cbx(90).SetFocus
                    KeyAscii = 0
                Case 95
                    P(118).SetFocus
                    KeyAscii = 0
                Case 102, 103
                    P(122).SetFocus
                    KeyAscii = 0
                Case 104
                    Bn(52).SetFocus
                    KeyAscii = 0
                Case 105
                    P(158).SetFocus
                    KeyAscii = 0
                Case 108
                    P(167).SetFocus
                    KeyAscii = 0
                Case 110
                    Cbx(91).SetFocus
                    KeyAscii = 0
                Case 113
                    P(52).SetFocus
                    KeyAscii = 0
                Case 114
                    P(195).SetFocus
                    KeyAscii = 0
                Case 116
                    Cbx(117).SetFocus
                Case 117
                    Cbx(118).SetFocus
                Case 118
                    Cbx(119).SetFocus
                Case 119
                    Cbx(120).SetFocus
                Case 120
                    Cbx(121).SetFocus
            End Select
        Case Else
            KeyAscii = 0
    End Select
    
End Sub

Private Sub Cbx_LostFocus(Index As Integer)
Dim Fncn As New Exe

    Select Case Index
        Case 0, 1
            If IsNumeric(Cbx(0).Text) And IsNumeric(Cbx(1).Text) Then
                If (Cbx(0).Text > 135) And (Cbx(1).Text > 35) Then
                    P(0).Text = Fncn.IMC(Cbx(1).Text, Cbx(0).Text)
                Else
                    P(0).Text = ""
                End If
            Else
                P(0).Text = ""
            End If
        Case 15
'Informe escrito caja P(69).text
        Case 24
            Picture2.Visible = False
        Case 25
            If (Cbx(Index).Text <> "Normales") And (Cbx(Index).Text <> "Plc Negativa") Then
                lbl(114).Visible = True
                lbl(115).Visible = True
                P(50).Visible = True
                P(51).Visible = True
            Else
                lbl(114).Visible = False
                lbl(115).Visible = False
                P(50).Visible = False
                P(51).Visible = False
            End If
        Case 105
            If Cbx(Index).Text = "" Then Call Msgs("Seleccione un ecografista", "Información", MsgAcpt, MsGen)
        Case 114
            DIV(22).Visible = False
    End Select
    
End Sub

Private Sub Check1_Click()
    Select Case Check1.Value
        Case 0
            Check1.Caption = "No"
            lbl(31).Visible = False
        Case 1
            Check1.Caption = "Si"
            lbl(31).Visible = True
    End Select
End Sub

Private Sub Check2_Click()
    Select Case Check2.Value
        Case 0
            Check2.Caption = "No"
            lbl(289).Visible = False
        Case 1
            Check2.Caption = "Si"
            lbl(289).Visible = True
    End Select
End Sub

Private Sub Check3_Click()
    Select Case Check3.Value
        Case 0
            Frame1.Visible = False
        Case 1
            Frame1.Visible = True
    End Select
End Sub

Private Sub Chk_Click(Index As Integer)
Dim i As Integer
Dim Fncn As New Exe

    Select Case Index
        Case 0, 8
            Select Case Chk(Index).Value
                Case 0
                    Chk(Index).Caption = Tx9
                Case 1
                    Chk(Index).Caption = Tx8
                    If Index = 0 Then If IO = True Then NwConsent
            End Select
        Case 1
            Select Case Chk(Index).Value
                Case 0
                    Chk(Index).Caption = Tx9
                    If IO = True Then
                        P(151).Text = ""
                        P(152).Text = ""
                        P(153).Text = ""
                        Cbx(105).Text = ""
                        P(158).Text = ""
                        P(159).Text = ""
                        Chk(8).Value = 0
                    End If
                Case 1
                    Chk(Index).Caption = Tx8
                    If IO = True Then
                        P(151).Text = FormatDateTime(Date, vbShortDate)
                        P(152).Text = Hour(Time)
                        P(153).Text = Minute(Time)
                    End If
            End Select
        Case 2
            Select Case Chk(Index).Value
                Case 0
                    DIV(7).Visible = False
                Case 1
                    DIV(7).Visible = True
            End Select
        Case 4
            Select Case Chk(Index).Value
                Case 0
                    DIV(39).Visible = False
                Case 1
                    DIV(39).Visible = True
            End Select
        Case 6
            Select Case Chk(Index).Value
                Case 0
                    DIV(11).Visible = False
                Case 1
                    DIV(11).Visible = True
            End Select
        Case 7
            Select Case Chk(Index).Value
                Case 0
                    DIV(12).Visible = False
                Case 1
                    DIV(12).Visible = True
            End Select
        Case 9
            Select Case Chk(Index).Value
                Case 0
                    lbl(163).Visible = False
                    lbl(165).Visible = False
                    lbl(166).Visible = False
                    lbl(167).Visible = False
                    P(98).Visible = False
                    Cbx(39).Visible = False
                    Cbx(40).Visible = False
                Case 1
                    lbl(163).Visible = True
                    lbl(165).Visible = True
                    lbl(166).Visible = True
                    lbl(167).Visible = True
                    P(98).Visible = True
                    Cbx(39).Visible = True
                    Cbx(40).Visible = True
                    If IO = True Then
                        Cbx(39).ListIndex = 1
                        Cbx(40).ListIndex = 1
                    End If
            End Select
        Case 10
            Select Case Chk(Index).Value
                Case 0
                    P(178).Visible = False
                Case 1
                    P(178).Visible = True
            End Select
        Case 11
            Select Case Chk(Index).Value
                Case 0
                    DIV(35).Visible = False
                Case 1
                    DIV(35).Visible = True
            End Select
        Case 12
            Select Case Chk(Index).Value
                Case 0
                    Chk(Index).Caption = Tx9
                Case 1
                    Chk(Index).Caption = Tx8
            End Select
        Case 13
            Select Case Chk(Index).Value
                Case 0
                    Chk(Index).Caption = Tx9
                Case 1
                    Chk(Index).Caption = Tx8
            End Select
        Case 14
            Select Case Chk(Index).Value
                Case 0
                    Chk(Index).Caption = Tx9
                Case 1
                    Chk(Index).Caption = Tx8
            End Select
        Case 15
            Select Case Chk(Index).Value
                Case 0
                    Chk(Index).Caption = Tx9
                Case 1
                    Chk(Index).Caption = Tx8
            End Select
        Case 16
            Select Case Chk(Index).Value
                Case 0
                    Chk(Index).Caption = Tx9
                Case 1
                    Chk(Index).Caption = Tx8
            End Select
        Case 17
            Select Case Chk(Index).Value
                Case 0
                    Chk(Index).Caption = Tx9
                Case 1
                    Chk(Index).Caption = Tx8
            End Select
        Case 18
            Select Case Chk(Index).Value
                Case 0
                    DIV(36).Visible = False
                Case 1
                    DIV(36).Visible = True
            End Select
        Case 19
            Select Case Chk(Index).Value
                Case 0
                    DIV(37).Visible = False
                Case 1
                    DIV(37).Visible = True
            End Select
        Case 20
            Select Case Chk(Index).Value
                Case 0
                    Chk(Index).Caption = Tx9
                Case 1
                    Chk(Index).Caption = Tx8
            End Select
        Case 21
            Select Case Chk(Index).Value
                Case 0
                    DIV(10).Visible = False
                Case 1
                    DIV(10).Visible = True
                    If IO = True Then
                        If (IsNumeric(P(47).Text) = True) And (IsNumeric(P(60).Text) = True) Then
                            P(199).Text = Fncn.PctLF(P(60).Text, P(47).Text)
                            If P(199).Text <= 5 Then
                                Chk(20).Value = 1
                            Else
                                Chk(20).Value = 0
                            End If
                        End If
                    End If
            End Select
        Case 22
            Select Case Chk(Index).Value
                Case 0
                    Chk(Index).Caption = Tx9
                Case 1
                    Chk(Index).Caption = Tx8
            End Select
    End Select
End Sub

Private Sub Chk_KeyPress(Index As Integer, KeyAscii As Integer)
    Select Case Index
        Case 5
            Select Case KeyAscii
                Case 8
                    Select Case Chk(Index).Value
                        Case 0
                            Chk(Index).Value = 1
                        Case 1
                            Chk(Index).Value = 0
                    End Select
                Case 13
                    P(49).SetFocus
            Case Else
                KeyAscii = 0
            End Select
        Case 22
            Select Case KeyAscii
                Case 8
                    Select Case Chk(Index).Value
                        Case 0
                            Chk(Index).Value = 1
                        Case 1
                            Chk(Index).Value = 0
                    End Select
                Case 13
                    P(194).SetFocus
            Case Else
                KeyAscii = 0
            End Select
    End Select
End Sub

Private Sub Cl_DateClick(ByVal DateClicked As Date)

    Select Case divAct
        Case 0
            P(3).Text = DateClicked
            Bn(2).SetFocus
            DIV(3).Visible = False
        Case 5
            P(13).Text = DateClicked
            Cbx(7).SetFocus
            DIV(3).Visible = False
        Case 9
            P(46).Text = DateClicked
            Cbx(23).SetFocus
            DIV(3).Visible = False
        Case 16
            Select Case InFcs
                Case 107
                    P(107).Text = DateClicked
                    Cbx(41).SetFocus
                    DIV(3).Visible = False
                Case 108
                    P(108).Text = DateClicked
                    Cbx(55).SetFocus
                    DIV(3).Visible = False
                Case 109
                    P(109).Text = DateClicked
                    Cbx(69).SetFocus
                    DIV(3).Visible = False
                Case 110
                    P(110).Text = DateClicked
                    Cbx(83).SetFocus
                    DIV(3).Visible = False
            End Select
        Case 17
            P(120).Text = DateClicked
            Cbx(97).SetFocus
            DIV(3).Visible = False
    End Select
    
End Sub

Private Sub Command1_Click()
    Call ShellExecute(Me.hwnd, "open", App.Path & "\doc\1ra Paciente 10-08-2013 SES.jpg", "", App.Path, 4)
End Sub

Private Sub Command2_Click()
    Call ShellExecute(Me.hwnd, "open", App.Path & "\doc\ciclo-menstrual.jpg", "", App.Path, 4)
End Sub

Private Sub DBCombo1_Click(Area As Integer)

    If Area = 2 Then If IO = False Then Dt(0).Recordset.FindFirst "App='" + DBCombo1.Text + "'"

End Sub

Private Sub Dt_Reposition(Index As Integer)
Dim hi As Integer
Dim Fecha As String
Dim H As Integer
H = 0
Dim H1 As Integer
H1 = 0
Dim m_rut As String
Dim Img As ImagenesDicom
    Select Case Index
        Case 0
            If (IO = False) And (Nw = False) Then
                loadSys = False
                DtBse(0).RecordSource = Rs1 + Dt(0).Recordset.Fields(0) + RsEnd
                DtBse(1).RecordSource = Rs2 + Dt(0).Recordset.Fields(0) + RsEnd
                DtBse(2).RecordSource = Rs3 + Dt(0).Recordset.Fields(0) + RsEnd
                DtBse(0).Refresh
                DtBse(1).Refresh
                DtBse(2).Refresh
                Nombre
                Datos_Pacientes
                LoadPg1
                PerdRprod (False)
                If DtBse(1).Recordset.RecordCount > 0 Then
                    Bn(0).Enabled = False
                    Bn(4).Enabled = True
                Else
                    Bn(0).Enabled = True
                    Bn(4).Enabled = False
                    Bn(5).Enabled = False
                End If
                Dt(1).RecordSource = Rs4 + Dt(0).Recordset.Fields(0) + "' order by N;"
                Dt(1).Refresh
                Call ExeMSC(5, base)
                Call ExeMSC(6, base)
                If Dt(1).Recordset.RecordCount = 1 Then
                    Dt(1).Recordset.MoveFirst
                ElseIf Dt(1).Recordset.RecordCount > 1 Then
                    Dt(1).Recordset.MoveLast
                End If
                If Dt(1).Recordset.RecordCount > 0 Then
                    Mn(1).Caption = "Ecografía Obstétrica Precoz (" & Dt(1).Recordset.RecordCount & ")"
                Else
                    Mn(1).Caption = "Ecografía Obstétrica Precoz (0)"
                End If
                Dt(9).RecordSource = Rs4 + Dt(0).Recordset.Fields(0) + "' order by N;"
                Dt(9).Refresh
                Call ExeMSC(7, base)
                If Dt(9).Recordset.RecordCount = 1 Then
                    Dt(9).Recordset.MoveFirst
                    Call ExeMSC(7, datos)
                ElseIf Dt(9).Recordset.RecordCount > 1 Then
                    Dt(9).Recordset.MoveLast
                    Call ExeMSC(7, datos)
                End If
                Dt(2).RecordSource = Rs5 + Dt(0).Recordset.Fields(0) + "' order by neco;"
                Dt(2).Refresh
                If Dt(2).Recordset.RecordCount = 1 Then
                    Dt(2).Recordset.MoveFirst
                ElseIf Dt(2).Recordset.RecordCount > 1 Then
                    Dt(2).Recordset.MoveLast
                End If
                If Dt(2).Recordset.RecordCount > 0 Then
                    Mn(3).Caption = "Eco. 2do. 3er. Trimestre (" & Dt(2).Recordset.RecordCount & ")"
                Else
                    Mn(3).Caption = "Eco. 2do. 3er. Trimestre (0)"
                End If
                Dt(3).RecordSource = Rs5 + Dt(0).Recordset.Fields(0) + "' order by neco;"
                Dt(3).Refresh
                If Dt(3).Recordset.RecordCount = 1 Then
                    Dt(3).Recordset.MoveFirst
                ElseIf Dt(3).Recordset.RecordCount > 1 Then
                    Dt(3).Recordset.MoveLast
                End If
                Dt(4).RecordSource = Rs6 + Dt(0).Recordset.Fields(0) + "' order by num;"
                Dt(4).Refresh
                If Dt(4).Recordset.RecordCount = 1 Then
                    Dt(4).Recordset.MoveFirst
                ElseIf Dt(4).Recordset.RecordCount > 1 Then
                    Dt(4).Recordset.MoveLast
                End If
                If Dt(4).Recordset.RecordCount > 0 Then
                    Mn(4).Caption = "Ecografía Doppler (" & Dt(4).Recordset.RecordCount & ")"
                Else
                    Mn(4).Caption = "Ecografía Doppler (0)"
                End If
                Dt(5).RecordSource = Rs5 + Dt(0).Recordset.Fields(0) + " ' order by neco;"
                Dt(5).Refresh
                If Dt(5).Recordset.RecordCount = 1 Then
                    Dt(5).Recordset.MoveFirst
                ElseIf Dt(5).Recordset.RecordCount > 1 Then
                    Dt(5).Recordset.MoveLast
                End If
                Dt(6).RecordSource = Rs7 + Dt(0).Recordset.Fields(0) + RsEnd
                Dt(6).Refresh
                If Dt(6).Recordset.RecordCount > 0 Then Dt(6).Recordset.MoveFirst
                Call ExeMSC(0, base)
                Call ExeMSC(4, base)
                If DIV(13).Left = 0 Then
                    Call ExeMSC(0, datos)
                ElseIf DIV(19).Left = 0 Then
                    Call ExeMSC(4, datos)
                End If
                Call ExeMSC(5, datos)
                Call ExeMSC(6, datos)
                Dt(7).RecordSource = Rs10 + Dt(0).Recordset.Fields(0) + RsEnd
                Dt(7).Refresh
                If Dt(7).Recordset.RecordCount = 1 Then
                    Dt(7).Recordset.MoveFirst
                ElseIf Dt(7).Recordset.RecordCount > 1 Then
                    Dt(7).Recordset.MoveLast
                End If
            End If
        Case 1
            If (IO = False) And (Nw = False) Then
                If Dt(1).Recordset.RecordCount > 0 Then
                    Bn(12).Enabled = True
                    Bn(13).Enabled = True
                Else
                    Bn(12).Enabled = False
                    Bn(13).Enabled = False
                End If
                If DIV(4).Left <> 0 Then Exit Sub
                If Dt(Index).Recordset.RecordCount > 0 Then
                    If IsDate(P(13).Text) = False Then Exit Sub
                    Fecha = Year(P(13).Text)
                    If Month(P(13).Text) < 10 Then
                        Fecha = Fecha & CStr(0) & CStr(Month(P(13).Text))
                    Else
                    Fecha = Fecha & CStr(Month(P(13).Text))
                    End If
                    If Day(P(13).Text) < 10 Then
                    Fecha = Fecha & CStr(0) & CStr(Day(P(13).Text))
                    Else
                    Fecha = Fecha & CStr(Day(P(13).Text))
                    End If
                    Set Img = New ImagenesDicom
                    If IsNumeric(Right(Dt(0).Recordset.Fields(0), 1)) = False Then
                        m_rut = Left(Dt(0).Recordset.Fields(0), Len(Dt(0).Recordset.Fields(0)) - 1)
                        H = Img.Hay(m_rut & "K", Fecha)
                        H1 = Img.Hay(m_rut & "k", Fecha)
                        If H = H1 Then
                        Else
                            If H > H1 Then
                            ElseIf H1 > H Then
                                H = H1
                            End If
                        End If
                    Else
                        H = Img.Hay(Dt(0).Recordset.Fields(0), Fecha)
                    End If
                    If H > 0 Then
                        Bn(96).Enabled = True
                    Else
                        Bn(96).Enabled = False
                    End If
                    Set Img = Nothing
                Else
                    Bn(96).Enabled = False
                End If
                Dt(9).RecordSource = Rs4 + Dt(0).Recordset.Fields(0) + "' order by N;"
                Dt(9).Refresh
                Call ExeMSC(7, base)
                If Dt(9).Recordset.RecordCount = 1 Then
                    Dt(9).Recordset.MoveFirst
                    Call ExeMSC(7, datos)
                ElseIf Dt(9).Recordset.RecordCount > 1 Then
                    Dt(9).Recordset.MoveLast
                    Call ExeMSC(7, datos)
                End If
            End If
        Case 2
            If (IO = False) And (Nw = False) Then
                If Dt(2).Recordset.RecordCount > 0 Then
                    Bn(21).Enabled = True
                    Bn(22).Enabled = True
                    Bn(23).Enabled = True
                    Bn(24).Enabled = True
                    Bn(25).Enabled = True
                    Bn(27).Enabled = True
                    If Dt(Index).Recordset.EOF = False Then
                        If Dt(Index).Recordset.Fields("actcard") = True Then
                            Optn(10).Value = True
                        ElseIf Dt(Index).Recordset.Fields("actcard") = False Then
                            Optn(11).Value = True
                        End If
                        If Dt(Index).Recordset.Fields("movfetal") = True Then
                            Optn(12).Value = True
                        ElseIf Dt(Index).Recordset.Fields("movfetal") = False Then
                            Optn(13).Value = True
                        End If
                    Else
                        Optn(11).Value = True
                        Optn(11).Value = False
                        Optn(12).Value = True
                        Optn(12).Value = False
                    End If
                Else
                    Bn(21).Enabled = False
                    Bn(22).Enabled = False
                    Bn(23).Enabled = False
                    Bn(24).Enabled = False
                    Bn(25).Enabled = False
                    Bn(26).Enabled = False
                    Bn(27).Enabled = False
                    Optn(11).Value = True
                    Optn(11).Value = False
                    Optn(12).Value = True
                    Optn(12).Value = False
                End If
                If DIV(8).Left <> 0 Then Exit Sub
                If Dt(Index).Recordset.RecordCount > 0 Then
                    If IsDate(P(46).Text) = False Then Exit Sub
                    Fecha = Year(P(46).Text)
                    If Month(P(46).Text) < 10 Then
                    Fecha = Fecha & CStr(0) & CStr(Month(P(46).Text))
                    Else
                    Fecha = Fecha & CStr(Month(P(46).Text))
                    End If
                    If Day(P(46).Text) < 10 Then
                    Fecha = Fecha & CStr(0) & CStr(Day(P(46).Text))
                    Else
                    Fecha = Fecha & CStr(Day(P(46).Text))
                    End If
                    Set Img = New ImagenesDicom
                    If IsNumeric(Right(Dt(0).Recordset.Fields(0), 1)) = False Then
                        m_rut = Left(Dt(0).Recordset.Fields(0), Len(Dt(0).Recordset.Fields(0)) - 1)
                        H = Img.Hay(m_rut & "K", Fecha)
                        H1 = Img.Hay(m_rut & "k", Fecha)
                        If H = H1 Then
                        Else
                            If H > H1 Then
                            ElseIf H1 > H Then
                                H = H1
                            End If
                        End If
                    Else
                        H = Img.Hay(Dt(0).Recordset.Fields(0), Fecha)
                    End If
                    If H > 0 Then
                        Bn(96).Enabled = True
                    Else
                        Bn(96).Enabled = False
                    End If
                Else
                    Bn(96).Enabled = False
                End If
            End If
            Arry(2).Refresh
        Case 3
            If (IO = False) And (Nw = False) Then
                If Dt(3).Recordset.RecordCount > 0 Then
                    Bn(31).Enabled = True
                    Bn(32).Enabled = True
                    Bn(33).Enabled = True
                    Bn(34).Enabled = True
                    Bn(35).Enabled = True
                    Bn(36).Enabled = True
                    Bn(37).Enabled = True
                    If Bn(39).Enabled = False Then
                        Call ExeMSC(1, datos)
                    ElseIf Bn(40).Enabled = False Then
                        Call ExeMSC(2, datos)
                    ElseIf Bn(41).Enabled = False Then
                        Call ExeMSC(3, datos)
                    End If
                    If DIV(14).Left = 0 Then If Dt(2).Recordset.RecordCount > 0 Then Dt(2).Recordset.AbsolutePosition = Dt(Index).Recordset.AbsolutePosition
                Else
                    Bn(31).Enabled = False
                    Bn(32).Enabled = False
                    Bn(33).Enabled = False
                    Bn(34).Enabled = False
                    Bn(35).Enabled = False
                    Bn(36).Enabled = False
                    Bn(37).Enabled = False
                End If
            End If
            Arry(3).Refresh
        Case 4
            If (IO = False) And (Nw = False) Then
                Call ExeMSC(4, base)
                If Dt(4).Recordset.RecordCount > 0 Then
                    If IsDate(P(120).Text) = False Then Exit Sub
                    Bn(54).Enabled = True
                    Bn(55).Enabled = True
                    Bn(56).Enabled = True
                    Bn(57).Enabled = True
                    Call ExeMSC(4, datos)
                    If DIV(17).Left <> 0 Then Exit Sub
                    Fecha = Year(P(120).Text)
                    If Month(P(120).Text) < 10 Then
                        Fecha = Fecha & CStr(0) & CStr(Month(P(120).Text))
                    Else
                        Fecha = Fecha & CStr(Month(P(120).Text))
                    End If
                    If Day(P(120).Text) < 10 Then
                        Fecha = Fecha & CStr(0) & CStr(Day(P(120).Text))
                    Else
                        Fecha = Fecha & CStr(Day(P(120).Text))
                    End If
                    Set Img = New ImagenesDicom
                    If IsNumeric(Right(Dt(0).Recordset.Fields(0), 1)) = False Then
                        m_rut = Left(Dt(0).Recordset.Fields(0), Len(Dt(0).Recordset.Fields(0)) - 1)
                        H = Img.Hay(m_rut & "K", Fecha)
                        H1 = Img.Hay(m_rut & "k", Fecha)
                        If H = H1 Then
                        Else
                            If H > H1 Then
                            ElseIf H1 > H Then
                                H = H1
                            End If
                        End If
                    Else
                        H = Img.Hay(Dt(0).Recordset.Fields(0), Fecha)
                    End If
                    If H > 0 Then
                        Bn(96).Enabled = True
                    Else
                        Bn(96).Enabled = False
                    End If
                    Set Img = Nothing
                Else
                    Bn(54).Enabled = False
                    Bn(55).Enabled = False
                    Bn(56).Enabled = False
                    Bn(57).Enabled = False
                    Bn(96).Enabled = False
                End If
            End If
            Arry(4).Refresh
        Case 5
            If (IO = False) And (Nw = False) Then
                If Dt(5).Recordset.RecordCount > 0 Then
                    Bn(76).Enabled = True
                    Bn(68).Enabled = True
                    Bn(73).Enabled = True
                    Bn(72).Enabled = True
                    Bn(69).Enabled = True
                    Call ExeMSC(6, base)
                    Call ExeMSC(6, datos)
                Else
                    Bn(76).Enabled = False
                    Bn(68).Enabled = False
                    Bn(73).Enabled = False
                    Bn(72).Enabled = False
                    Bn(69).Enabled = False
                End If
                Arry(5).Refresh
            End If
        Case 9
            If (IO = False) And (Nw = False) Then
                If Dt(Index).Recordset.RecordCount > 0 Then
                    Bn(113).Enabled = True
                    Bn(105).Enabled = True
                    Bn(110).Enabled = True
                    Bn(106).Enabled = True
                    Call ExeMSC(7, datos)
                    If DIV(40).Left = 0 Then If Dt(1).Recordset.RecordCount > 0 Then Dt(1).Recordset.AbsolutePosition = Dt(Index).Recordset.AbsolutePosition
                Else
                    Bn(113).Enabled = False
                    Bn(105).Enabled = False
                    Bn(110).Enabled = False
                    Bn(106).Enabled = False
                End If
            End If
            Arry(6).Refresh
    End Select
    
End Sub

'Private Sub Dt_Validate(Index As Integer, Action As Integer, Save As Integer)
'Dim msg As VbMsgBoxResult

'    If Action = vbDataActionUnload Then
'        If (Div(0).Left = 0) And (Index = 1) Then
'            If IO = True Then
'                msg = MsgBox("ï¿½Decea guardar los cambios del exï¿½men Nï¿½ " & " ?", vbYesNo, "Guardar Control Prenatal Normal")
'                If msg = vbYes Then
'                    Save = 1
'                Else
'                    Save = 0
'                End If
'            IO = False
'            End If
'        ElseIf (Div(3).Left = 0) And (Index = 3) Then
'        If IO = True Then
'                msg = MsgBox("ï¿½Decea guardar los cambios del exï¿½men Nï¿½ " & " ?", vbYesNo, "Exï¿½menes de Laboratorio Rutinarios")
'                If msg = vbYes Then
'                    Save = 1
'                Else
'                    Save = 0
'                End If
'            End If
'            IO = False
'        ElseIf (Div(7).Left = 0) And (Index = 4) Then
'            If IO = True Then
'                msg = MsgBox("ï¿½Decea guardar los cambios del exï¿½men Nï¿½ " & " ?", vbYesNo, "Monitoreo Fetal Electrï¿½nico")
'                If msg = vbYes Then
'                    Save = 1
'                Else
'                    Save = 0
'                End If
'            End If
'            IO = False
'        End If
'    End If

'End Sub

Private Sub Form_Load()
    IO = False
    Nw = False
    loadSys = True
    divAct = 0
    LoadDB
    loadSys = True
    Lst(0).ListIndex = 1
    Lst(1).ListIndex = 0
    Call ExeMSC(1, base)
    Call ExeMSC(5, base)
    Call ExeMSC(6, base)
    loadSys = False
    Dt(0).Recordset.FindFirst ("RUT='" & RUT & "'")

End Sub

Private Sub Form_Unload(Cancel As Integer)

    If DIV(21).Visible = True Then
        Cancel = 1
    Else
        Call Shell(App.Path & LoadResString(105) & Dt(0).Recordset.Fields("RUT"), 1)
        End
    End If
End Sub

Private Sub lbl_Click(Index As Integer)
    Select Case Index
        Case 31
            CR.Destination = crptToWindow
            CR.WindowState = crptMaximized
            CR.ReportFileName = App.Path & Archv
            CR.Action = 1
    End Select
End Sub

Private Sub Lst_Click(Index As Integer)
    Select Case Index
        Case 0
            DIV(34).Visible = False
            Call ExeMSC(0, base)
            Select Case Lst(Index).ListIndex
                Case 1
                    lbl(143).Caption = Tx10
                    lbl(141).Caption = Tx11
                    Picture1.Visible = False
                Case 2
                    lbl(143).Caption = Tx10
                    lbl(141).Caption = Tx12
                    Picture1.Visible = False
                Case 5
                    lbl(143).Caption = Tx13
                    lbl(141).Caption = Tx14
                    Picture1.Visible = True
                    Picture1.Picture = LoadResPicture(104, 0)
                Case 6
                    lbl(143).Caption = Tx15
                    lbl(141).Caption = Tx16
                    Picture1.Visible = True
                    Picture1.Picture = LoadResPicture(105, 0)
                Case 7
                    lbl(143).Caption = Tx17
                    lbl(141).Caption = Tx18
                    Picture1.Visible = True
                    Picture1.Picture = LoadResPicture(107, 0)
                Case 10
                    lbl(143).Caption = Tx19
                    lbl(141).Caption = Tx20
                    Picture1.Visible = True
                    Picture1.Picture = LoadResPicture(103, 0)
                Case 11
                    lbl(143).Caption = Tx21
                    lbl(141).Caption = Tx22
                    Picture1.Visible = True
                    Picture1.Picture = LoadResPicture(106, 0)
            End Select
            Call ExeMSC(0, datos)
        Case 1
            Call ExeMSC(4, base)
            Select Case Lst(Index).ListIndex
                Case 0
                    lbl(225).Caption = Tx23
                    lbl(227).Caption = Tx24
                    lbl(277).Visible = False
                    lbl(278).Visible = False
                    P(168).Visible = False
                    P(166).Visible = False
                Case 1
                    lbl(225).Caption = Tx27
                    lbl(227).Caption = Tx26
                    lbl(277).Visible = False
                    lbl(278).Visible = False
                    P(168).Visible = False
                    P(166).Visible = False
                Case 2
                    lbl(225).Caption = Tx28
                    lbl(227).Caption = Tx26
                    lbl(277).Visible = True
                    lbl(278).Visible = True
                    P(168).Visible = True
                    P(166).Visible = True
                Case 3
                    lbl(225).Caption = Tx29
                    lbl(227).Caption = Tx30
                    lbl(277).Visible = True
                    lbl(278).Visible = True
                    P(168).Visible = True
                    P(166).Visible = True
            End Select
            Call ExeMSC(4, datos)
    End Select
End Sub

Private Sub Mn_Click(Index As Integer)
Dim Fecha As String
Dim Img As ImagenesDicom
Dim H As Integer
H = 0
Dim H1 As Integer
H1 = 0
Dim m_rut As String
    Select Case Index
        Case 0
            DIV(0).Left = 0
            DIV(4).Left = 20000
            DIV(8).Left = 20000
            'Eco 23
            Mn(6).Visible = False
            Mn(7).Visible = False
            Mn(8).Visible = False
            Mn(9).Visible = False
            Mn(10).Visible = False
            Mn(11).Visible = False
            Mn(12).Visible = False
            Mn(2).Visible = False
            Mn(1).Visible = True
            Mn(3).Visible = True
            Mn(4).Visible = True
            Mn(5).Visible = True
            DIV(13).Left = 20000
            DIV(14).Left = 20000
            DIV(16).Left = 20000
            DIV(17).Left = 20000
            DIV(19).Left = 20000
            DIV(23).Left = 20000
            DIV(25).Left = 20000
            DIV(40).Left = 20000
            Mn(13).Visible = False
            Mn(14).Visible = False
            divAct = 0
            Datos_Pacientes
                    Bn(96).Enabled = False
        Case 1
            If DtBse(1).Recordset.RecordCount < 1 Then
                Call Msgs(M1, T1, MsgAcpt, MsGen)
                Exit Sub
            End If
            DIV(0).Left = 20000
            DIV(4).Left = 0
            DIV(8).Left = 20000
            DIV(40).Left = 20000
            Mn(13).Visible = True
            Mn(14).Visible = True
            divAct = 5
            Datos_Pacientes
            Mn(12).Visible = True
            Mn(2).Visible = True
            Mn(3).Visible = False
            Mn(4).Visible = False
            Mn(5).Visible = False
            If DIV(28).Visible = True Then DIV(28).Visible = False
                    If Dt(1).Recordset.RecordCount > 0 Then
                    If DIV(4).Left <> 0 Then Exit Sub
                    Fecha = Year(P(13).Text)
                    If Month(P(13).Text) < 10 Then
                    Fecha = Fecha & CStr(0) & CStr(Month(P(13).Text))
                    Else
                    Fecha = Fecha & CStr(Month(P(13).Text))
                    End If
                    If Day(P(13).Text) < 10 Then
                    Fecha = Fecha & CStr(0) & CStr(Day(P(13).Text))
                    Else
                    Fecha = Fecha & CStr(Day(P(13).Text))
                    End If
                    Set Img = New ImagenesDicom
                    If IsNumeric(Right(Dt(0).Recordset.Fields(0), 1)) = False Then
                        m_rut = Left(Dt(0).Recordset.Fields(0), Len(Dt(0).Recordset.Fields(0)) - 1)
                        H = Img.Hay(m_rut & "K", Fecha)
                        H1 = Img.Hay(m_rut & "k", Fecha)
                        If H = H1 Then
                        Else
                            If H > H1 Then
                            ElseIf H1 > H Then
                                H = H1
                            End If
                        End If
                    Else
                        H = Img.Hay(Dt(0).Recordset.Fields(0), Fecha)
                    End If
                    If H > 0 Then
                        Bn(96).Enabled = True
                    Else
                        Bn(96).Enabled = False
                    End If
                Else
                    Bn(96).Enabled = False
                End If
                Set Img = Nothing
        Case 2
            DIV(4).Left = 20000
            DIV(40).Left = 0
            Arry(6).Refresh
        Case 3
            If DtBse(1).Recordset.RecordCount < 1 Then
                Call Msgs(M1, T1, MsgAcpt, MsGen)
                Exit Sub
            End If
            DIV(0).Left = 20000
            DIV(4).Left = 20000
            DIV(8).Left = 0
            DIV(13).Left = 20000
            DIV(14).Left = 20000
            DIV(16).Left = 20000
            DIV(23).Left = 20000
            Mn(6).Visible = True
            Mn(7).Visible = True
            Mn(8).Visible = True
            Mn(9).Visible = True
            Mn(10).Visible = True
            Mn(12).Visible = True
            Mn(1).Visible = False
            Mn(4).Visible = False
            Mn(5).Visible = False
            divAct = 9
            Datos_Pacientes
            Arry(2).Refresh
            If DIV(28).Visible = True Then DIV(28).Visible = False
                If Dt(2).Recordset.RecordCount > 0 Then
                    If Dt(2).Recordset.RecordCount > 1 Then
                        Dt(2).Recordset.MoveFirst
                        Dt(2).Recordset.MoveLast
                    Else
                     Dt(2).Recordset.MoveFirst
                    End If
                    If DIV(8).Left <> 0 Then Exit Sub
                    Fecha = Year(P(46).Text)
                    If Month(P(46).Text) < 10 Then
                    Fecha = Fecha & CStr(0) & CStr(Month(P(46).Text))
                    Else
                    Fecha = Fecha & CStr(Month(P(46).Text))
                    End If
                    If Day(P(46).Text) < 10 Then
                    Fecha = Fecha & CStr(0) & CStr(Day(P(46).Text))
                    Else
                    Fecha = Fecha & CStr(Day(P(46).Text))
                    End If
                    Set Img = New ImagenesDicom
                    If IsNumeric(Right(Dt(0).Recordset.Fields(0), 1)) = False Then
                        m_rut = Left(Dt(0).Recordset.Fields(0), Len(Dt(0).Recordset.Fields(0)) - 1)
                        H = Img.Hay(m_rut & "K", Fecha)
                        H1 = Img.Hay(m_rut & "k", Fecha)
                        If H = H1 Then
                        Else
                            If H > H1 Then
                            ElseIf H1 > H Then
                                H = H1
                            End If
                        End If
                    Else
                        H = Img.Hay(Dt(0).Recordset.Fields(0), Fecha)
                    End If
                    If H > 0 Then
                        Bn(96).Enabled = True
                    Else
                        Bn(96).Enabled = False
                    End If
                Else
                    Bn(96).Enabled = False
                End If
                Set Img = Nothing
        Case 4
            If DtBse(1).Recordset.RecordCount < 1 Then
                Call Msgs(M1, T1, MsgAcpt, MsGen)
                Exit Sub
            End If
            DIV(0).Left = 20000
            DIV(4).Left = 20000
            DIV(8).Left = 20000
            DIV(19).Left = 20000
            DIV(17).Left = 0
            Mn(10).Visible = True
            Mn(11).Visible = True
            Mn(12).Visible = True
            Mn(1).Visible = False
            Mn(3).Visible = False
            Mn(5).Visible = False
            divAct = 17
            Datos_Pacientes
            Arry(4).Refresh
            If DIV(28).Visible = True Then DIV(28).Visible = False
            If Dt(4).Recordset.RecordCount > 0 Then
                If Dt(4).Recordset.RecordCount > 1 Then
                    Dt(4).Recordset.MoveFirst
                    Dt(4).Recordset.MoveLast
                Else
                     Dt(4).Recordset.MoveFirst
                End If
                If DIV(17).Left <> 0 Then Exit Sub
                    Fecha = Year(P(120).Text)
                    If Month(P(120).Text) < 10 Then
                        Fecha = Fecha & CStr(0) & CStr(Month(P(120).Text))
                    Else
                        Fecha = Fecha & CStr(Month(P(120).Text))
                    End If
                    If Day(P(120).Text) < 10 Then
                        Fecha = Fecha & CStr(0) & CStr(Day(P(120).Text))
                    Else
                        Fecha = Fecha & CStr(Day(P(120).Text))
                    End If

                    Set Img = New ImagenesDicom
                    If IsNumeric(Right(Dt(0).Recordset.Fields(0), 1)) = False Then
                        m_rut = Left(Dt(0).Recordset.Fields(0), Len(Dt(0).Recordset.Fields(0)) - 1)
                        H = Img.Hay(m_rut & "K", Fecha)
                        H1 = Img.Hay(m_rut & "k", Fecha)
                        If H = H1 Then
                        Else
                            If H > H1 Then
                            ElseIf H1 > H Then
                                H = H1
                            End If
                        End If
                    Else
                        H = Img.Hay(Dt(0).Recordset.Fields(0), Fecha)
                    End If
                    If H > 0 Then
                        Bn(96).Enabled = True
                    Else
                        Bn(96).Enabled = False
                    End If
                Else
                    Bn(96).Enabled = False
                End If
                Set Img = Nothing
        Case 5
        Case 6
            DIV(13).Left = 20000
            DIV(14).Left = 20000
            DIV(16).Left = 20000
            DIV(23).Left = 0
            Arry(5).Refresh
        Case 7
            DIV(13).Left = 20000
            DIV(14).Left = 0
            DIV(16).Left = 20000
            DIV(23).Left = 20000
            divAct = 14
            Arry(3).Refresh
        Case 8
            If DtBse(1).Recordset.RecordCount < 1 Then
                Call Msgs(M1, T1, MsgAcpt, MsGen)
                Exit Sub
            End If
            DIV(8).Left = 20000
            DIV(13).Left = 20000
            DIV(14).Left = 20000
            DIV(16).Left = 0
            DIV(23).Left = 20000
            divAct = 16
            Datos_Pacientes
        Case 9
            
            DIV(13).Left = 0
            DIV(14).Left = 20000
            DIV(16).Left = 20000
            DIV(23).Left = 20000
            Call ExeMSC(0, datos)
        Case 10
            Call ShellExecute(Me.hwnd, "open", App.Path & LoadResString(106), "", App.Path, 4)
        Case 11
            DIV(19).Left = 0
            DIV(17).Left = 20000
        Case 12
            If DIV(25).Left = 0 Then
                DIV(25).Left = 20000
            Else
                DIV(25).Left = 0
            End If
        Case 13
            Call ShellExecute(Me.hwnd, "open", App.Path & LoadResString(111), "", App.Path, 4)
        Case 14
            Call ShellExecute(Me.hwnd, "open", App.Path & LoadResString(112), "", App.Path, 4)
        End Select
End Sub

Private Sub MSC_PointSelected(Index As Integer, Series As Integer, DataPoint As Integer, MouseFlags As Integer, Cancel As Integer)
Dim A As New Exe
    Select Case Index
        Case 0
            If Lst(0).ListIndex = 1 Then
                If Series = 1 Then
                    lbl(328).Caption = FChg(DataPoint)
                    lbl(330).Caption = EGg(DataPoint) & " semanas"
                    lbl(333).Caption = "[ " & A.RngoPsoFtal(EGg(DataPoint)) & " ]"
                    Set A = Nothing
                    lbl(335).Caption = PSOg(DataPoint) & " gramos"
                    If PSOg(DataPoint) <= pct10PsoFtal(DataPoint + 19) Then
                        lbl(336).Caption = "Pequeño"
                    ElseIf PSOg(DataPoint) <= pct90PsoFtal(DataPoint + 19) Then
                        lbl(336).Caption = "Adecuado"
                    Else
                        lbl(336).Caption = "Grande"
                    End If
                    lbl(338).Caption = Tllg(DataPoint) & " Centímetros"
                    DIV(34).Visible = True
                    DIV(34).Top = 1080
                    DIV(34).Height = 2055
                    lbl(334).Caption = "Peso   :"
                    lbl(337).Visible = True
                    lbl(338).Visible = True
                Else
                    DIV(34).Visible = False
                End If
            ElseIf Lst(0).ListIndex = 2 Then
                If Series = 1 Then
                    lbl(328).Caption = FChg(DataPoint)
                    lbl(330).Caption = EGg(DataPoint) & " semanas"
                    lbl(333).Caption = "[ " & A.RngoCcCa(EGg(DataPoint)) & " ]"
                    Set A = Nothing
                    lbl(335).Caption = CcCag(DataPoint)
                    If CcCag(DataPoint) <= pct3CcCa(DataPoint + 19) Then
                        lbl(336).Caption = "Obeso"
                    ElseIf CcCag(DataPoint) <= pct97CcCa(DataPoint + 19) Then
                        lbl(336).Caption = "Eutrófico"
                    Else
                        lbl(336).Caption = "Enflaquecido"
                    End If
                    DIV(34).Visible = True
                    DIV(34).Top = 5040
                    DIV(34).Height = 1575
                    lbl(334).Caption = "Cc / Ca :"
                    lbl(337).Visible = False
                    lbl(338).Visible = False
                Else
                    DIV(34).Visible = False
                End If
            End If
    Case Else
    End Select
    
End Sub

Private Sub Optn_Click(Index As Integer)

    Select Case Index
        Case 0, 1, 4, 5, 8, 9
        Case 2
            lbl(320).Visible = False
            DIV(32).Visible = False
            If Optn(7).Value = False Then
                Shp(14).Width = 3735
                DIV(28).Width = 3975
                DIV(28).Left = 8880
            End If
        Case 3
            lbl(320).Visible = True
            DIV(32).Visible = True
            If Shp(14).Width = 3735 Then
                Shp(14).Width = 6855
                DIV(28).Width = 7095
                DIV(28).Left = 5760
            End If
        Case 6
            lbl(321).Visible = False
            DIV(33).Visible = False
            If Optn(3).Value = False Then
                Shp(14).Width = 3735
                DIV(28).Width = 3975
                DIV(28).Left = 8880
            End If
        Case 7
            lbl(321).Visible = True
            DIV(33).Visible = True
            If Shp(14).Width = 3735 Then
                Shp(14).Width = 6855
                DIV(28).Width = 7095
                DIV(28).Left = 5760
            End If

    End Select
    
End Sub

Private Sub Optn_KeyPress(Index As Integer, KeyAscii As Integer)
    Select Case Index
        Case 10
            Select Case KeyAscii
                Case 13
                    Optn(12).SetFocus
                Case Else
                    KeyAscii = 0
            End Select
        Case 11
            Select Case KeyAscii
                Case 13
                    Optn(12).SetFocus
                Case Else
                    KeyAscii = 0
            End Select
        Case 12
            Select Case KeyAscii
                Case 13
                    P(52).SetFocus
                Case Else
                    KeyAscii = 0
            End Select
        Case 13
            Select Case KeyAscii
                Case 13
                    P(52).SetFocus
                Case Else
                    KeyAscii = 0
            End Select
    End Select
End Sub

Private Sub P_Change(Index As Integer)
Dim Fncn As New Exe
Dim i As Integer
If loadSys = True Then Exit Sub
    Select Case Index
        Case 0
            If IsNumeric(P(Index).Text) Then
                P(Index + 1).Text = Fncn.EstNutr(P(Index).Text)
            Else
                P(Index + 1).Text = ""
            End If
        Case 3
            If IsDate(P(Index).Text) Then
                P(Index + 1).Text = Fncn.EgToday(P(Index).Text)
                P(Index + 2).Text = Fncn.FPP(P(Index).Text)
            Else
                P(Index + 1).Text = ""
                P(Index + 2).Text = ""
            End If
        Case 13, 46, 120
            If IO = True Then
                If IsDate(P(Index).Text) Then
                    P(Index + 1) = Fncn.Eg(P(3).Text, P(Index).Text)
                Else
                    P(Index + 1) = ""
                End If
            End If
        Case 20, 21, 22
            If IO = False Then Exit Sub
            If (IsNumeric(P(20).Text) = True) And _
            (IsNumeric(P(21).Text) = True) And _
            (IsNumeric(P(22).Text) = True) Then
                P(23).Text = FormatNumber((CInt(P(20).Text) _
                            + CInt(P(21).Text) + CInt(P(22).Text)) _
                            / 3, 1)
                If Int(P(23).Text) = P(23).Text Then P(23).Text _
                                   = CInt(P(23).Text)
            Else
                P(23).Text = ""
            End If
        Case 23
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) Then
                P(24).Text = Fncn.EgSaco(P(Index).Text)
            Else
                P(24).Text = ""
            End If
        Case 27
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) Then
                P(28).Text = Fncn.EgLCN(P(Index).Text)
            Else
                P(28).Text = ""
            End If
        Case 39
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) = True Then
                P_Change (43)
            End If
        Case 41
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) Then
                P_Change (43)
            End If
        Case 43
            If IO = False Then Exit Sub
            If (IsNumeric(P(37).Text) = True) And (IsNumeric(P(39).Text) = True) _
            And (IsNumeric(P(41).Text) = True) And (IsNumeric(P(43).Text) = True) Then
                P(44).Text = Fncn.EgBiom(P(37).Text, P(39).Text, _
                             P(41).Text, P(43).Text)
            Else
                P(44).Text = ""
            End If
        Case 48
            If IO = True Then If P(Index).Text <> P(191).Text Then P(191).Text = P(Index).Text
        Case 50
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) = True Then
                If P(Index).Text <> P(194).Text Then P(194).Text = P(Index).Text
            Else
                P(194).Text = ""
            End If
        Case 51
            If IO = True Then Exit Sub
            If IsNumeric(P(Index).Text) = True Then
                If P(Index).Text <> P(193).Text Then P(193).Text = P(Index).Text
            Else
                P(193).Text = ""
            End If
        Case 54
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) = True Then
                P(55).Text = Fncn.PctCC(P(Index).Text, P(47).Text)
                If P(55).Text < 3 Then P(55).Text = Tx33
                If IsNumeric(P(55).Text) Then If P(55).Text > 97 Then _
                P(55).Text = Tx34
                If IsNumeric(P(57).Text) = True Then
                    If P(57).Text <> 0 Then
                        P(65).Text = FormatNumber(CInt(P(54).Text) / CInt(P(57).Text), 2)
                        P(63).Text = Fncn.PsoHadlock(P(54).Text, P(57).Text)
                    Else
                        P(65).Text = ""
                        P(63).Text = ""
                    End If
                Else
                    P(65).Text = ""
                    P(63).Text = ""
                End If
                P_Change (60)
            Else
                P(55).Text = ""
                P(65).Text = ""
                P(63).Text = ""
            End If
        Case 55
            If P(55).Text = Tx33 Then
                lbl(250).Visible = True
                lbl(250).ToolTipText = Tx31
            ElseIf P(55).Text = Tx34 Then
                lbl(250).Visible = True
                lbl(250).ToolTipText = Tx32
            Else
                lbl(250).Visible = False
            End If
        Case 57
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) = True Then
                P(58).Text = Fncn.PctCA(P(Index).Text, P(47).Text)
                If P(58).Text < 3 Then P(58).Text = Tx33
                If IsNumeric(P(58).Text) Then If P(58).Text > 97 Then _
                P(58).Text = Tx34
                If IsNumeric(P(54).Text) = True Then
                    If P(54).Text <> 0 Then
                        If P(57).Text <> 0 Then
                            P(65).Text = FormatNumber(CInt(P(54).Text) / CInt(P(57).Text), 2)
                            P(63).Text = Fncn.PsoHadlock(P(54).Text, P(57).Text)
                        End If
                    Else
                        P(65).Text = ""
                        P(63).Text = ""
                    End If
                Else
                    P(65).Text = ""
                    P(63).Text = ""
                End If
                P_Change (60)
            Else
                P(58).Text = ""
                P(65).Text = ""
                P(63).Text = ""
            End If
        Case 58
            If P(58).Text = Tx33 Then
                lbl(251).Visible = True
                lbl(251).ToolTipText = Tx31
            ElseIf P(58).Text = Tx34 Then
                lbl(251).Visible = True
                lbl(251).ToolTipText = Tx32
            Else
                lbl(251).Visible = False
            End If
        Case 60
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) = True Then
                P(67).Text = Fncn.TllFtal(P(Index).Text)
                P(61).Text = Fncn.PctLF(P(Index).Text, P(47).Text)
                If P(61).Text < 3 Then P(61).Text = Tx33
                If IsNumeric(P(61).Text) Then If P(61).Text > 97 Then _
                P(61).Text = Tx34
                If (IsNumeric(P(52).Text) = True) And (IsNumeric( _
                P(54).Text) = True) And (IsNumeric(P(57).Text) _
                = True) Then P(62).Text = Fncn.EgBiom(P(52).Text, _
                P(54).Text, P(57).Text, P(Index).Text)
            End If
        Case 61
            If P(61).Text = Tx33 Then
                lbl(252).Visible = True
                lbl(252).ToolTipText = Tx31
            ElseIf P(61).Text = Tx34 Then
                lbl(252).Visible = True
                lbl(252).ToolTipText = Tx32
            Else
                lbl(252).Visible = False
            End If
        Case 63
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) = True Then
                P(64).Text = Fncn.PctPsoFtal(P(Index).Text, P(47).Text)
                If P(64).Text < 3 Then P(64).Text = Tx33
                If IsNumeric(P(64).Text) Then If P(64).Text > 97 Then _
                P(64).Text = Tx34
            Else
                P(64).Text = ""
            End If
        Case 64
            If P(64).Text = Tx33 Then
                lbl(253).Visible = True
                lbl(253).ToolTipText = Tx31
            ElseIf P(64).Text = Tx34 Then
                lbl(253).Visible = True
                lbl(253).ToolTipText = Tx32
            Else
                lbl(253).Visible = False
            End If
        Case 65
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) = True Then
                P(66).Text = Fncn.PctCcCa(P(Index).Text, P(47).Text)
                If P(66).Text < 3 Then P(66).Text = Tx33
                If IsNumeric(P(66).Text) = True Then If P(66).Text > 97 Then _
                P(66).Text = Tx34
            Else
                P(66).Text = ""
            End If
        Case 66
            If P(66).Text = Tx33 Then
                lbl(254).Visible = True
                lbl(254).ToolTipText = Tx31
            ElseIf P(66).Text = Tx34 Then
                lbl(254).Visible = True
                lbl(254).ToolTipText = Tx32
            Else
                lbl(254).Visible = False
            End If
        Case 70
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) Then
                P(71).Text = Fncn.PctBVM(P(Index).Text, P(47).Text)
                P(198).Text = Fncn.PctBVM(P(Index).Text, P(47).Text)
                If P(Index).Text <> P(195).Text Then P(195).Text = P(Index).Text
            Else
                P(71).Text = ""
                P(198).Text = ""
                P(195).Text = ""
            End If
        
        Case 71
            If IsNumeric(P(Index).Text) Then
                If IO = True Then Cbx(34).Text = Fncn.PctBVMTxt(P(70).Text, P(47).Text)
                If IO = True Then If IsNumeric(P(Index).Text) Then If P(Index).Text < 5 Then _
                P(Index).Text = Tx33
                If IO = True Then If IsNumeric(P(Index).Text) Then If P(Index).Text > 95 Then _
                P(Index).Text = Tx34
                lbl(256).Visible = False
            ElseIf P(Index).Text = Tx33 Then
                lbl(256).Visible = True
                lbl(256).ToolTipText = Tx31
            ElseIf P(Index).Text = Tx34 Then
                lbl(256).Visible = True
                lbl(256).ToolTipText = Tx32
            Else
                If IO = True Then Cbx(34).Text = ""
                lbl(256).Visible = False
            End If
        Case 72, 73, 74, 75
            If IO = False Then Exit Sub
            If (IsNumeric(P(72).Text)) And (IsNumeric(P(73).Text)) And _
            (IsNumeric(P(74).Text)) And (IsNumeric(P(75).Text)) Then
                P(76).Text = "0"
                For i = 72 To 75
                    P(76).Text = CInt(P(i).Text) + CInt(P(76).Text)
                Next i
            Else
                P(76).Text = ""
            End If
        Case 76
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) Then
                If P(Index).Text > 300 Then Call Msgs("ILA Posiblemente Erroneo", T1, MsgAcpt, MsGen)
                P(77).Text = Fncn.PctILA(P(Index).Text, P(47).Text)
                If P(77).Text < 3 Then P(77).Text = Tx33
                If IsNumeric(P(77).Text) Then If P(77).Text > 97 Then _
                P(77).Text = Tx34
            Else
                P(77).Text = ""
            End If
        Case 77
            If IsNumeric(P(Index).Text) = False Then
                If P(Index).Text = Tx33 Then
                    lbl(257).Visible = True
                    lbl(257).ToolTipText = Tx31
                ElseIf P(Index).Text = Tx34 Then
                    lbl(257).Visible = True
                    lbl(257).ToolTipText = Tx32
                Else
                    lbl(257).Visible = False
                End If
            Else
                lbl(257).Visible = False
            End If
        Case 89
            If IO = False Then Exit Sub
            If (IsNumeric(P(Index).Text) = True) And _
            (IsNumeric(P(80).Text) = True) Then
                P(90).Text = Fncn.RngoUt(P(80).Text)
                P(91).Text = Fncn.PctUt(P(Index).Text, P(80).Text)
                If IsNumeric(P(91).Text) Then If P(91).Text < 3 Then _
                P(91).Text = Tx33
                If IsNumeric(P(91).Text) Then If P(91).Text > 97 Then _
                P(91).Text = Tx34
                If IsNumeric(P(92).Text) Then P(95).Text = _
                FormatNumber((CDbl(P(89).Text) + CDbl(P(92).Text)) / 2, 2)

            Else
                P(90).Text = ""
                P(91).Text = ""
                P(95).Text = ""
            End If
        Case 91
            If IsNumeric(P(Index).Text) = False Then
                If P(Index).Text = Tx33 Then
                    lbl(255).Visible = True
                    lbl(255).ToolTipText = Tx31
                ElseIf P(Index).Text = Tx34 Then
                    lbl(255).Visible = True
                    lbl(255).ToolTipText = Tx32
                Else
                    lbl(255).Visible = False
                End If
            Else
                lbl(255).Visible = False
            End If
        Case 92
            If IO = False Then Exit Sub
            If (IsNumeric(P(Index).Text) = True) And _
            (IsNumeric(P(80).Text) = True) Then
                P(93).Text = Fncn.RngoUt(P(80).Text)
                P(94).Text = Fncn.PctUt(P(Index).Text, P(80).Text)
                If IsNumeric(P(94).Text) Then If P(94).Text < 3 Then _
                P(94).Text = Tx33
                If IsNumeric(P(94).Text) Then If P(94).Text > 97 Then _
                P(94).Text = Tx34
                If IsNumeric(P(89).Text) Then P(95).Text = _
                FormatNumber((CDbl(P(89).Text) + CDbl(P(92).Text)) / 2, 2)
            Else
                P(93).Text = ""
                P(94).Text = ""
                P(95).Text = ""
            End If
        Case 94
            If IsNumeric(P(Index).Text) = False Then
                If P(Index).Text = Tx33 Then
                    lbl(258).Visible = True
                    lbl(258).ToolTipText = Tx31
                ElseIf P(Index).Text = Tx34 Then
                    lbl(258).Visible = True
                    lbl(258).ToolTipText = Tx32
                Else
                    lbl(258).Visible = False
                End If
            Else
                lbl(258).Visible = False
            End If
        Case 95
            If IO = False Then Exit Sub
            If (IsNumeric(P(Index).Text) = True) And _
            (IsNumeric(P(80).Text) = True) Then
                P(96).Text = Fncn.RngoUt(P(80).Text)
                P(97).Text = Fncn.PctUt(P(Index).Text, P(80).Text)
                IO = False
                If P(97).Text < 3 Then
                    Cbx(37).ListIndex = 2
                ElseIf P(97).Text < 97 Then
                    Cbx(37).ListIndex = 1
                Else
                    Cbx(37).ListIndex = 2
                End If
                IO = True
                If IsNumeric(P(97).Text) Then If P(97).Text < 3 Then _
                P(97).Text = Tx33
                If IsNumeric(P(97).Text) Then If P(97).Text > 97 Then _
                P(97).Text = Tx34
            Else
                Cbx(37).Text = ""
                P(96).Text = ""
                P(97).Text = ""
            End If
        Case 97
            If IsNumeric(P(Index).Text) = False Then
                If P(Index).Text = Tx33 Then
                    lbl(259).Visible = True
                    lbl(259).ToolTipText = Tx31
                ElseIf P(Index).Text = Tx34 Then
                    lbl(259).Visible = True
                    lbl(259).ToolTipText = Tx32
                Else
                    lbl(259).Visible = False
                End If
            Else
                lbl(259).Visible = False
            End If
        Case 99
            If IO = False Then Exit Sub
            If (IsNumeric(P(Index).Text) = True) And _
            (IsNumeric(P(80).Text) = True) Then
                P(100).Text = Fncn.RngoUM(P(80).Text)
                
                P(101).Text = Fncn.PctUM(P(Index).Text, P(80).Text)
                If IsNumeric(P(101).Text) Then If P(101).Text < 5 Then _
                P(101).Text = Tx33
                If IsNumeric(P(101).Text) Then If P(101).Text > 95 Then _
                P(101).Text = Tx34
                
                If IsNumeric(P(102).Text) Then
                    If P(102).Text <> 0 Then
                        If P(99).Text <> 0 Then
                            P(105).Text = _
                            FormatNumber((CDbl(P(102).Text) / CDbl(P(99).Text)), 1)
                        Else
                            P(105).Text = ""
                        End If
                    Else
                        P(105).Text = ""
                    End If
                Else
                    P(105).Text = ""
                End If
            Else
                P(100).Text = ""
                P(101).Text = ""
                P(105).Text = ""
            End If
        Case 101
            If IsNumeric(P(Index).Text) = False Then
                If P(Index).Text = Tx33 Then
                    lbl(260).Visible = True
                    lbl(260).ToolTipText = Tx31
                ElseIf P(Index).Text = Tx34 Then
                    lbl(260).Visible = True
                    lbl(260).ToolTipText = Tx32
                Else
                    lbl(260).Visible = False
                End If
            Else
                lbl(260).Visible = False
            End If
        Case 102
            If IO = False Then Exit Sub
            If (IsNumeric(P(Index).Text) = True) And _
            (IsNumeric(P(80).Text) = True) Then
                P(103).Text = Fncn.RngoCM(P(80).Text)
                
                P(104).Text = Fncn.PctCM(P(Index).Text, P(80).Text)
                If IsNumeric(P(104).Text) Then If P(104).Text < 5 Then _
                P(104).Text = Tx33
                If IsNumeric(P(104).Text) Then If P(104).Text > 95 Then _
                P(104).Text = Tx34
                
                If IsNumeric(P(99).Text) Then P(105).Text = _
                FormatNumber((CDbl(P(102).Text) / CDbl(P(99).Text)), 1)

            Else
                P(103).Text = ""
                P(104).Text = ""
                P(105).Text = ""
            End If
        Case 104
            If IsNumeric(P(Index).Text) = False Then
                If P(Index).Text = Tx33 Then
                    lbl(261).Visible = True
                    lbl(261).ToolTipText = Tx31
                ElseIf P(Index).Text = Tx34 Then
                    lbl(261).Visible = True
                    lbl(261).ToolTipText = Tx32
                Else
                    lbl(261).Visible = False
                End If
            Else
                lbl(261).Visible = False
            End If
        Case 105
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) Then
                IO = False
                If P(Index).Text >= 1 Then
                    P(106).Text = Tx35
                    Cbx(38).ListIndex = 1
                Else
                    P(106).Text = Tx36
                    Cbx(38).ListIndex = 2
                End If
                IO = True
            Else
                P(106).Text = ""
            End If
        Case 107
            If IO = True Then
                If IsDate(P(Index).Text) Then
                    P(111) = Fncn.Eg(P(3).Text, P(Index).Text)
                    Cbx(41).Text = Cbx(27).Text
                    For i = 42 To 47
                        Cbx(i).ListIndex = 0
                    Next i
                    For i = 50 To 53
                        Cbx(i).ListIndex = 0
                    Next i
                    Cbx(54).ListIndex = 1
                    P(115).Text = Tx37
                    P(115).SetFocus
                Else
                    P(111) = ""
                End If
            End If
        Case 108
            If IO = True Then
                If IsDate(P(Index).Text) Then
                    P(112) = Fncn.Eg(P(3).Text, P(Index).Text)
                    For i = 55 To 61
                        Cbx(i).ListIndex = 0
                    Next i
                    For i = 64 To 67
                        Cbx(i).ListIndex = 0
                    Next i
                    Cbx(68).ListIndex = 1
                    P(116).Text = Tx37
                    P(116).SetFocus
                Else
                    P(112) = ""
                End If
            End If
        Case 109
            If IO = True Then
                If IsDate(P(Index).Text) Then
                    P(113) = Fncn.Eg(P(3).Text, P(Index).Text)
                    For i = 69 To 75
                        Cbx(i).ListIndex = 0
                    Next i
                    For i = 78 To 81
                        Cbx(i).ListIndex = 0
                    Next i
                    Cbx(82).ListIndex = 1
                    P(117).Text = Tx37
                    P(117).SetFocus
                Else
                    P(113) = ""
                End If
            End If
        Case 110
            If IO = True Then
                If IsDate(P(Index).Text) Then
                    P(114) = Fncn.Eg(P(3).Text, P(Index).Text)
                    For i = 83 To 89
                        Cbx(i).ListIndex = 0
                    Next i
                    For i = 92 To 95
                        Cbx(i).ListIndex = 0
                    Next i
                    Cbx(96).ListIndex = 1
                    P(118).Text = Tx37
                    P(118).SetFocus
                Else
                    P(114) = ""
                End If
            End If
        Case 122
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) Then
                P(123).Text = Fncn.PctBVM(P(Index).Text, P(121).Text)
            Else
                P(123).Text = ""
            End If
        Case 123
            If IsNumeric(P(Index).Text) Then
                If IO = True Then Cbx(103).Text = Fncn.PctBVMTxt(P(122).Text, P(121).Text)
                If IO = True Then If IsNumeric(P(Index).Text) Then If P(Index).Text < 5 Then _
                P(Index).Text = Tx33
                If IO = True Then If IsNumeric(P(Index).Text) Then If P(Index).Text > 95 Then _
                P(Index).Text = Tx34
                lbl(262).Visible = False
            ElseIf P(Index).Text = Tx33 Then
                lbl(262).Visible = True
                lbl(262).ToolTipText = Tx31
            ElseIf P(Index).Text = Tx34 Then
                lbl(262).Visible = True
                lbl(262).ToolTipText = Tx32
            Else
                If IO = True Then Cbx(103).Text = ""
                lbl(262).Visible = False
            End If
        Case 124, 125, 126, 127
            If IO = False Then Exit Sub
            If (IsNumeric(P(124).Text)) And (IsNumeric(P(125).Text)) And _
            (IsNumeric(P(126).Text)) And (IsNumeric(P(127).Text)) Then
                P(128).Text = "0"
                For i = 124 To 127
                    P(128).Text = CInt(P(i).Text) + CInt(P(128).Text)
                Next i
            Else
                P(128).Text = ""
            End If
        Case 128
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) Then
                If P(Index).Text > 300 Then Call Msgs("ILA Posiblemente Erroneo", T1, MsgAcpt, MsGen)
                P(129).Text = Fncn.PctILA(P(Index).Text, P(121).Text)
                If P(129).Text < 3 Then P(129).Text = Tx33
                If IsNumeric(P(129).Text) Then If P(129).Text > 97 Then _
                P(129).Text = Tx34
            Else
                P(129).Text = ""
            End If
        Case 129
            If IsNumeric(P(Index).Text) = False Then
                If P(Index).Text = Tx33 Then
                    lbl(263).Visible = True
                    lbl(263).ToolTipText = Tx31
                ElseIf P(Index).Text = Tx34 Then
                    lbl(263).Visible = True
                    lbl(263).ToolTipText = Tx32
                Else
                    lbl(263).Visible = False
                End If
            Else
                lbl(263).Visible = False
            End If
        Case 130
            If IO = False Then Exit Sub
            If (IsNumeric(P(Index).Text) = True) And _
            (IsNumeric(P(121).Text) = True) Then
                P(131).Text = Fncn.RngoUt(P(121).Text)
                
                P(132).Text = Fncn.PctUt(P(Index).Text, P(121).Text)
                If IsNumeric(P(132).Text) Then If P(132).Text < 3 Then _
                P(132).Text = Tx33
                If IsNumeric(P(132).Text) Then If P(132).Text > 97 Then _
                P(132).Text = Tx34
                If IsNumeric(P(133).Text) Then P(136).Text = _
                FormatNumber((CDbl(P(130).Text) + CDbl(P(133).Text)) / 2, 2)

            Else
                P(131).Text = ""
                P(132).Text = ""
                P(136).Text = ""
            End If
        Case 132
            If IsNumeric(P(Index).Text) = False Then
                If P(Index).Text = Tx33 Then
                    lbl(264).Visible = True
                    lbl(264).ToolTipText = Tx31
                ElseIf P(Index).Text = Tx34 Then
                    lbl(264).Visible = True
                    lbl(264).ToolTipText = Tx32
                Else
                    lbl(264).Visible = False
                End If
            Else
                lbl(264).Visible = False
            End If
        Case 133
            If IO = False Then Exit Sub
            If (IsNumeric(P(Index).Text) = True) And _
            (IsNumeric(P(121).Text) = True) Then
                P(134).Text = Fncn.RngoUt(P(121).Text)
                
                P(135).Text = Fncn.PctUt(P(Index).Text, P(121).Text)
                If IsNumeric(P(135).Text) Then If P(135).Text < 3 Then _
                P(135).Text = Tx33
                If IsNumeric(P(135).Text) Then If P(135).Text > 97 Then _
                P(135).Text = Tx34
                If IsNumeric(P(133).Text) Then P(136).Text = _
                FormatNumber((CDbl(P(130).Text) + CDbl(P(133).Text)) / 2, 2)

            Else
                P(134).Text = ""
                P(135).Text = ""
                P(136).Text = ""
            End If
        Case 135
            If IsNumeric(P(Index).Text) = False Then
                If P(Index).Text = Tx33 Then
                    lbl(265).Visible = True
                    lbl(265).ToolTipText = Tx31
                ElseIf P(Index).Text = Tx34 Then
                    lbl(265).Visible = True
                    lbl(265).ToolTipText = Tx32
                Else
                    lbl(265).Visible = False
                End If
            Else
                lbl(265).Visible = False
            End If
        Case 136
            If IO = False Then Exit Sub
            If (IsNumeric(P(Index).Text) = True) And _
            (IsNumeric(P(121).Text) = True) Then
                P(137).Text = Fncn.RngoUt(P(121).Text)
                
                P(138).Text = Fncn.PctUt(P(Index).Text, P(121).Text)
                If IsNumeric(P(138).Text) Then If P(138).Text < 3 Then _
                P(138).Text = Tx33
                If IsNumeric(P(138).Text) Then If P(138).Text > 97 Then _
                P(138).Text = Tx34
            Else
                P(137).Text = ""
                P(138).Text = ""
            End If
        Case 138
            If IsNumeric(P(Index).Text) = False Then
                If P(Index).Text = Tx33 Then
                    lbl(266).Visible = True
                    lbl(266).ToolTipText = Tx31
                ElseIf P(Index).Text = Tx34 Then
                    lbl(266).Visible = True
                    lbl(266).ToolTipText = Tx32
                Else
                    lbl(266).Visible = False
                End If
            Else
                lbl(266).Visible = False
            End If
        Case 139
            If IO = False Then Exit Sub
            If (IsNumeric(P(Index).Text) = True) And _
            (IsNumeric(P(121).Text) = True) Then
                P(140).Text = Fncn.RngoUM(P(121).Text)
                
                P(141).Text = Fncn.PctUM(P(Index).Text, P(121).Text)
                If IsNumeric(P(141).Text) Then If P(141).Text < 5 Then _
                P(141).Text = Tx33
                If IsNumeric(P(141).Text) Then If P(141).Text > 95 Then _
                P(141).Text = Tx34
                
                If IsNumeric(P(142).Text) And P(139) <> 0 Then P(145).Text = _
                FormatNumber((CDbl(P(142).Text) / CDbl(P(139).Text)), 2)

            Else
                P(140).Text = ""
                P(141).Text = ""
                P(145).Text = ""
            End If
        Case 141
            If IsNumeric(P(Index).Text) = False Then
                If P(Index).Text = Tx33 Then
                    lbl(267).Visible = True
                    lbl(267).ToolTipText = Tx31
                ElseIf P(Index).Text = Tx34 Then
                    lbl(267).Visible = True
                    lbl(267).ToolTipText = Tx32
                Else
                    lbl(267).Visible = False
                End If
            Else
                lbl(267).Visible = False
            End If
        Case 142
            If IO = False Then Exit Sub
            If (IsNumeric(P(Index).Text) = True) And _
            (IsNumeric(P(121).Text) = True) Then
                P(143).Text = Fncn.RngoCM(CDbl(P(121).Text))
            
                P(144).Text = Fncn.PctCM(P(Index).Text, CDbl(P(121).Text))
                If IsNumeric(P(144).Text) Then If P(144).Text < 5 Then _
                P(144).Text = Tx33
                If IsNumeric(P(144).Text) Then If P(144).Text > 95 Then _
                P(144).Text = Tx34
                
                If (IsNumeric(P(142).Text)) And (IsNumeric(P(139).Text)) Then P(145).Text = _
                FormatNumber((CDbl(P(142).Text) / CDbl(P(139).Text)), 2)

            Else
                P(143).Text = ""
                P(144).Text = ""
                P(145).Text = ""
            End If
        Case 144
            If IsNumeric(P(Index).Text) = False Then
                If P(Index).Text = Tx33 Then
                    lbl(268).Visible = True
                    lbl(268).ToolTipText = Tx31
                ElseIf P(Index).Text = Tx34 Then
                    lbl(268).Visible = True
                    lbl(268).ToolTipText = Tx32
                Else
                    lbl(268).Visible = False
                End If
            Else
                lbl(268).Visible = False
            End If
        Case 145
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) Then
                P(146).Text = Fncn.RngoCP(P(121).Text)
                P(88).Text = Fncn.CP(P(121).Text, P(145).Text)
                If IsNumeric(P(88).Text) Then If P(88).Text < 5 Then _
                P(88).Text = Tx33
                If IsNumeric(P(88).Text) Then If P(88).Text > 95 Then _
                P(88).Text = Tx34
            Else
                P(146).Text = ""
                P(88).Text = ""
            End If
        Case 147
            If IO = False Then Exit Sub
            If (IsNumeric(P(Index).Text) = True) And _
            (IsNumeric(P(80).Text) = True) Then
                P(148).Text = Fncn.RngoDV(P(121).Text)
                
                P(149).Text = Fncn.PctDV(P(Index).Text, P(121).Text)
                If IsNumeric(P(149).Text) Then If P(149).Text < 3 Then _
                P(149).Text = Tx33
                If IsNumeric(P(149).Text) Then If P(149).Text > 97 Then _
                P(149).Text = Tx34

            Else
                P(148).Text = ""
                P(149).Text = ""
            End If
        Case 149
            If IsNumeric(P(Index).Text) = False Then
                If P(Index).Text = Tx33 Then
                    lbl(269).Visible = True
                    lbl(269).ToolTipText = Tx31
                ElseIf P(Index).Text = Tx34 Then
                    lbl(269).Visible = True
                    lbl(269).ToolTipText = Tx32
                Else
                    lbl(269).Visible = False
                End If
            Else
                lbl(269).Visible = False
            End If
        Case 184
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) Then
                If IsNumeric(P(Index).Text) Then P(190).Text = P(Index).Text
            Else
                P(190).Text = ""
            End If
        Case 187
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) Then
                If P(Index).Text <> 0 Then
                    If DtBse(0).Recordset.Fields("TllaMat") <> "" Then
                        If DtBse(0).Recordset.Fields("TllaMat") <> 0 Then
                            Dt(5).Recordset.Fields("imceco") = Fncn.IMC(P(187).Text, _
                            DtBse(0).Recordset.Fields("TllaMat"))
                            P(179).Text = Fncn.EstNutrEg(Dt(5).Recordset.Fields("imceco"), P(162).Text)
                        Else
                            Dt(5).Recordset.Fields("imceco") = ""
                            P(179).Text = ""
                        End If
                    Else
                        Dt(5).Recordset.Fields("imceco") = ""
                        P(179).Text = ""
                    End If
                Else
                    Dt(5).Recordset.Fields("imceco") = ""
                    P(179).Text = ""
                End If
            Else
                Dt(5).Recordset.Fields("imceco") = ""
                P(179).Text = ""
            End If
        Case 188
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) = True Then
                If P(Index).Text <> P(192).Text Then P(192).Text = P(Index).Text
            Else
                P(192).Text = ""
            End If
        Case 189
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) Then
                P(32).Text = Fncn.PctHumFet(P(47).Text, P(Index).Text)
                If IsNumeric(P(32).Text) Then If P(32).Text < 3 Then P(32).Text = Tx33
                If IsNumeric(P(32).Text) Then If P(32).Text > 97 Then P(32).Text = Tx34
            Else
                P(32).Text = ""
            End If
        Case 190
            If IO = True Then P(148).Text = P(Index).Text
        Case 191
            If IO = True Then If P(48).Text <> P(Index).Text Then P(48).Text = P(Index).Text
        Case 192
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) = True Then
                If P(Index).Text <> P(188).Text Then P(188).Text = P(Index).Text
            Else
                P(188).Text = ""
            End If
        Case 193
            If IO = True Then Exit Sub
            If IsNumeric(P(Index).Text) = True Then
                If P(Index).Text <> P(51).Text Then P(51).Text = P(Index).Text
            Else
                P(51).Text = ""
            End If
        Case 194
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) = True Then
                If P(Index).Text <> P(50).Text Then P(50).Text = P(Index).Text
            Else
                P(50).Text = ""
            End If
        Case 195
            If IO = False Then Exit Sub
            If IsNumeric(P(Index).Text) Then
                P(198).Text = Fncn.PctBVM(P(Index).Text, P(47).Text)
                P(71).Text = Fncn.PctBVM(P(Index).Text, P(47).Text)
                If P(Index).Text <> P(70).Text Then P(70).Text = P(Index).Text
            Else
                P(198).Text = ""
                P(71).Text = ""
                P(70).Text = ""
            End If
        Case 211
            If IO = False Then Exit Sub
            If (IsNumeric(P(Index).Text) = True) And _
            (IsNumeric(P(224).Text) = True) Then
                P(210).Text = Fncn.RngoUt(P(224).Text)
                P(209).Text = Fncn.PctUt(P(Index).Text, P(224).Text)
                If IsNumeric(P(209).Text) Then If P(209).Text < 3 Then _
                P(209).Text = Tx33
                If IsNumeric(P(209).Text) Then If P(209).Text > 97 Then _
                P(209).Text = Tx34
            Else
                P(210).Text = ""
                P(209).Text = ""
            End If
        Case 214
            If IO = False Then Exit Sub
            If (IsNumeric(P(Index).Text) = True) And _
            (IsNumeric(P(224).Text) = True) Then
                P(213).Text = Fncn.RngoUt(P(224).Text)
                P(212).Text = Fncn.PctUt(P(Index).Text, P(224).Text)
                If IsNumeric(P(212).Text) Then If P(212).Text < 3 Then _
                P(212).Text = Tx33
                If IsNumeric(P(212).Text) Then If P(212).Text > 97 Then _
                P(212).Text = Tx34
                If IsNumeric(P(217).Text) Then P(211).Text = _
                FormatNumber((CDbl(P(214).Text) + CDbl(P(217).Text)) / 2, 2)
            Else
                P(213).Text = ""
                P(212).Text = ""
                P(211).Text = ""
            End If
        Case 217
            If IO = False Then Exit Sub
            If (IsNumeric(P(Index).Text) = True) And _
            (IsNumeric(P(224).Text) = True) Then
                P(216).Text = Fncn.RngoUt(P(224).Text)
                P(215).Text = Fncn.PctUt(P(Index).Text, P(224).Text)
                If IsNumeric(P(215).Text) Then If P(215).Text < 3 Then _
                P(215).Text = Tx33
                If IsNumeric(P(215).Text) Then If P(215).Text > 97 Then _
                P(215).Text = Tx34
                If IsNumeric(P(214).Text) Then P(211).Text = _
                FormatNumber((CDbl(P(214).Text) + CDbl(P(217).Text)) / 2, 2)
            Else
                P(216).Text = ""
                P(215).Text = ""
                P(211).Text = ""
            End If
    End Select
    
End Sub

Private Sub P_GotFocus(Index As Integer)
Dim H As Integer
    Select Case Index
        Case 3
            DIV(3).Visible = True
            If IsDate(P(Index).Text) Then
                Cl.Value = P(Index).Text
            Else
                Cl.Value = Date
            End If
        Case 13
            DIV(3).Visible = True
            If IsDate(P(Index).Text) Then
                Cl.Value = P(Index).Text
            Else
                Cl.Value = Date
            End If
        Case 46
            DIV(3).Visible = True
            If IsDate(P(Index).Text) Then
                Cl.Value = P(Index).Text
            Else
                Cl.Value = Date
            End If
        Case 57
        Case 72, 73, 74, 75
            P(Index).SelLength = Len(P(Index).Text)
        Case 107
            DIV(3).Visible = True
            If IsDate(P(Index).Text) Then
                Cl.Value = P(Index).Text
            Else
                H = Dt(2).Recordset.RecordCount
                If H >= 1 Then
                    IO = False
                    Dt(2).Recordset.MoveFirst
                    H = 1
                    While Dt(2).Recordset.EOF = False
                        InFcs = P(106 + H).Index
                        IO = True
                        Cl_DateClick (Dt(2).Recordset.Fields("fecha3"))
                        H = H + 1
                        IO = False
                        Dt(2).Recordset.MoveNext
                    Wend
                    IO = True
                Else
                     Cl.Value = Date
                End If
            End If
            InFcs = P(107).Index
        Case 108
            DIV(3).Visible = True
            If IsDate(P(Index).Text) Then
                Cl.Value = P(Index).Text
            Else
                H = Dt(2).Recordset.RecordCount
                If H >= 2 Then
                    IO = False
                    Dt(2).Recordset.MoveFirst
                    H = 1
                    If P(Index - 1).Text = "" Then
                        InFcs = P(106 + H).Index
                        IO = True
                        Cl_DateClick (Dt(2).Recordset.Fields("fecha3"))
                        IO = False
                        H = H + 1
                    Else
                        H = 2
                        Dt(2).Recordset.MoveNext
                    End If
                    While Dt(2).Recordset.EOF = False
                        InFcs = P(106 + H).Index
                        IO = True
                        Cl_DateClick (Dt(2).Recordset.Fields("fecha3"))
                        H = H + 1
                        IO = False
                        Dt(2).Recordset.MoveNext
                    Wend
                    IO = True
                Else
                     Cl.Value = Date
                End If
            End If
            InFcs = P(108).Index
        Case 109
            DIV(3).Visible = True
            If IsDate(P(Index).Text) Then
                Cl.Value = P(Index).Text
            Else
                H = Dt(2).Recordset.RecordCount
                If H >= 3 Then
                    IO = False
                    Dt(2).Recordset.MoveFirst
                    H = 1
                    If P(Index - 2).Text = "" Then
                        InFcs = P(106 + H).Index
                        IO = True
                        Cl_DateClick (Dt(2).Recordset.Fields("fecha3"))
                        H = H + 1
                        IO = False
                        Dt(2).Recordset.MoveNext
                    Else
                        H = 2
                        Dt(2).Recordset.MoveNext
                    End If
                    If P(Index - 1).Text = "" Then
                        InFcs = P(106 + H).Index
                        IO = True
                        Cl_DateClick (Dt(2).Recordset.Fields("fecha3"))
                        IO = False
                        Dt(2).Recordset.MoveNext
                        H = H + 1
                    Else
                        H = 3
                        Dt(2).Recordset.MoveNext
                    End If
                    While Dt(2).Recordset.EOF = False
                        InFcs = P(106 + H).Index
                        IO = True
                        Cl_DateClick (Dt(2).Recordset.Fields("fecha3"))
                        H = H + 1
                        IO = False
                        Dt(2).Recordset.MoveNext
                    Wend
                    IO = True
                Else
                     Cl.Value = Date
                End If
            End If
            InFcs = P(109).Index
        Case 110
            DIV(3).Visible = True
            If IsDate(P(Index).Text) Then
                Cl.Value = P(Index).Text
            Else
                H = Dt(2).Recordset.RecordCount
                If H = 4 Then
                    IO = False
                    Dt(2).Recordset.MoveFirst
                    H = 1
                    If P(Index - 3).Text = "" Then
                        InFcs = P(106 + H).Index
                        IO = True
                        Cl_DateClick (Dt(2).Recordset.Fields("fecha3"))
                        H = H + 1
                        IO = False
                        Dt(2).Recordset.MoveNext
                    Else
                        H = 2
                        Dt(2).Recordset.MoveNext
                    End If
                    If P(Index - 2).Text = "" Then
                        InFcs = P(106 + H).Index
                        IO = True
                        Cl_DateClick (Dt(2).Recordset.Fields("fecha3"))
                        IO = False
                        Dt(2).Recordset.MoveNext
                        H = H + 1
                    Else
                        H = 3
                        Dt(2).Recordset.MoveNext
                    End If
                    If P(Index - 1).Text = "" Then
                        InFcs = P(106 + H).Index
                        IO = True
                        Cl_DateClick (Dt(2).Recordset.Fields("fecha3"))
                        IO = False
                        Dt(2).Recordset.MoveNext
                        H = H + 1
                    Else
                        H = 4
                        Dt(2).Recordset.MoveNext
                    End If
                    While Dt(2).Recordset.EOF = False
                        InFcs = P(106 + H).Index
                        IO = True
                        Cl_DateClick (Dt(2).Recordset.Fields("fecha3"))
                        H = H + 1
                        IO = False
                        Dt(2).Recordset.MoveNext
                    Wend
                    IO = True
                Else
                     Cl.Value = Date
                End If
            End If
            InFcs = P(110).Index
        Case 120
            DIV(3).Visible = True
            If IsDate(P(Index).Text) Then
                Cl.Value = P(Index).Text
            Else
                Cl.Value = Date
            End If
    End Select
End Sub

Private Sub P_KeyPress(Index As Integer, KeyAscii As Integer)
Dim Fncn As New Exe
Dim i As Integer

    Select Case Index
        Case 3, 13, 46, 120
            
            KeyAscii = 0

        Case 16, 18, 20, 21, 40, _
            42, 53, 56, 59, _
            72, 73, 74, 124, 125, 126
            
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    P(Index + 1).SetFocus
            Case Else
                KeyAscii = 0
            End Select
        Case 17
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    Cbx(11).SetFocus
            Case Else
                KeyAscii = 0
            End Select
        Case 19
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    Cbx(12).SetFocus
            Case Else
                KeyAscii = 0
            End Select
        Case 22
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    Cbx(13).SetFocus
                    Cbx(13).ListIndex = 0
            Case Else
                KeyAscii = 0
            End Select
        Case 25
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    Cbx(15).SetFocus
                Case 44
                    KeyAscii = Fncn.PtCma
                Case 46
                    KeyAscii = Fncn.PtCma
            Case Else
                KeyAscii = 0
            End Select
        Case 27
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    If Cbx(63).Visible = True Then
                        Cbx(63).SetFocus
                    Else
                        Cbx(22).SetFocus
                        If Cbx(17).Text = Tx4 Then
                            P(29).Text = WriteObsPg2(0)
                        ElseIf Cbx(17).Text = Tx5 Then
                            P(29).Text = WriteObsPg2(3)
                        Else
                            P(29).Text = WriteObsPg2(Cbx(17).ListIndex)
                        End If
                    End If
            Case Else
                KeyAscii = 0
            End Select
        Case 37, 38, 39, 41, 52, 70
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    P(Index + 2).SetFocus
            Case Else
                KeyAscii = 0
            End Select
        Case 30
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    Cbx(19).SetFocus
                Case 44
                    KeyAscii = Fncn.PtCma
                Case 46
                    KeyAscii = Fncn.PtCma
            Case Else
                KeyAscii = 0
            End Select
        Case 34
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    Cbx(21).SetFocus
                Case 44
                    KeyAscii = Fncn.PtCma
                Case 46
                    KeyAscii = Fncn.PtCma
            Case Else
                KeyAscii = 0
            End Select
        Case 35
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    P(36).SetFocus
                Case Asc("/")
            Case Else
                KeyAscii = 0
            End Select
        Case 36, 43
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    Bn(10).SetFocus
            Case Else
                KeyAscii = 0
            End Select
        Case 48
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    Cbx(113).SetFocus
                Case 44
                    KeyAscii = Fncn.PtCma
                Case 46
                    KeyAscii = Fncn.PtCma
            Case Else
                KeyAscii = 0
            End Select
        Case 49
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    Cbx(26).SetFocus
            Case Else
                KeyAscii = 0
            End Select
        Case 50
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    P(51).SetFocus
                Case 44
                    KeyAscii = Fncn.PtCma
                Case 46
                    KeyAscii = Fncn.PtCma
            Case Else
                KeyAscii = 0
            End Select
        Case 51
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    Cbx(26).SetFocus
                Case 44
                    KeyAscii = Fncn.PtCma
                Case 46
                    KeyAscii = Fncn.PtCma
            Case Else
                KeyAscii = 0
            End Select
        Case 60
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    P(189).SetFocus
            Case Else
                KeyAscii = 0
            End Select
        Case 68
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    Bn(77).SetFocus
                Case 44
                    KeyAscii = Fncn.PtCma
                Case 46
                    KeyAscii = Fncn.PtCma
            Case Else
                KeyAscii = 0
            End Select
        Case 54, 57
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    P(Index + 3).SetFocus
            Case Else
                KeyAscii = 0
            End Select
        Case 75
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    Bn(19).SetFocus
            Case Else
                KeyAscii = 0
            End Select
        Case 89
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    Cbx(37).SetFocus
                Case 44
                    KeyAscii = Fncn.PtCma
                Case 46
                    KeyAscii = Fncn.PtCma
            Case Else
                KeyAscii = 0
            End Select
        Case 92
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    P(89).SetFocus
                Case 44
                    KeyAscii = Fncn.PtCma
                Case 46
                    KeyAscii = Fncn.PtCma
            Case Else
                KeyAscii = 0
            End Select
        Case 98
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    Cbx(39).SetFocus
            Case Else
                KeyAscii = 0
            End Select
        Case 99, 130, 139, 147
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    P(Index + 3).SetFocus
                    If Index = 147 Then
                        If (IsNumeric(P(139).Text) = False) And (IsNumeric(P(142).Text) = False) And (IsNumeric(P(145).Text) = False) _
                        And (IsNumeric(P(147).Text) = False) Then
                            P(Index + 3).Text = WriteObsPg4(0)
                        ElseIf (IsNumeric(P(136).Text) = False) Then
                            P(Index + 3).Text = WriteObsPg4(1)
                        Else
                            P(Index + 3).Text = WriteObsPg4(2)
                        End If
                    End If
                Case 44
                    KeyAscii = Fncn.PtCma
                Case 46
                    KeyAscii = Fncn.PtCma
            Case Else
                KeyAscii = 0
            End Select
        Case 102
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    Cbx(38).SetFocus
                Case 44
                    KeyAscii = Fncn.PtCma
                Case 46
                    KeyAscii = Fncn.PtCma
            Case Else
                KeyAscii = 0
            End Select
        Case 107
            Select Case KeyAscii
                Case 8
                    For i = 41 To 54
                        Cbx(i).Text = ""
                    Next i
                    P(111).Text = ""
                    P(Index).Text = ""
                    P(115).Text = ""
                    DIV(3).Visible = False
                KeyAscii = 0
            Case Else
                KeyAscii = 0
            End Select
        Case 108
            Select Case KeyAscii
                Case 8
                    For i = 55 To 68
                        Cbx(i).Text = ""
                    Next i
                    P(112).Text = ""
                    P(Index).Text = ""
                    P(116).Text = ""
                    DIV(3).Visible = False
                KeyAscii = 0
            Case Else
                KeyAscii = 0
            End Select
        Case 109
            Select Case KeyAscii
                Case 8
                    For i = 69 To 82
                        Cbx(i).Text = ""
                    Next i
                    P(113).Text = ""
                    P(Index).Text = ""
                    P(117).Text = ""
                    DIV(3).Visible = False
                KeyAscii = 0
            Case Else
                KeyAscii = 0
            End Select
        Case 110
            Select Case KeyAscii
                Case 8
                    For i = 83 To 96
                        Cbx(i).Text = ""
                    Next i
                    P(114).Text = ""
                    P(Index).Text = ""
                    P(118).Text = ""
                    DIV(3).Visible = False
                KeyAscii = 0
            Case Else
                KeyAscii = 0
            End Select
        Case 122, 127
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    P(130).SetFocus
            Case Else
                KeyAscii = 0
            End Select
        Case 133
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    P(139).SetFocus
                Case 44
                    KeyAscii = Fncn.PtCma
                Case 46
                    KeyAscii = Fncn.PtCma
            Case Else
                KeyAscii = 0
            End Select
        Case 142
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    P(147).SetFocus
                Case 44
                    KeyAscii = Fncn.PtCma
                Case 46
                    KeyAscii = Fncn.PtCma
            Case Else
                KeyAscii = 0
            End Select
        Case 158
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    P(159).SetFocus
                Case Asc("-")
                Case Asc("K")
                Case Asc("k")
                    KeyAscii = Asc("K")
            Case Else
                KeyAscii = 0
            End Select
        Case 159
            Select Case KeyAscii
                Case Asc("A") To Asc("Z")
                Case Asc("a") To Asc("z")
                Case 8
                Case 13
                    Chk(8).SetFocus
               Case 32
            Case Else
                KeyAscii = 0
            End Select
        Case 161
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    P(165).SetFocus
            Case Else
                KeyAscii = 0
            End Select
        Case 164
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    P(161).SetFocus
            Case Else
                KeyAscii = 0
            End Select
        Case 165
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    P(68).SetFocus
            Case Else
                KeyAscii = 0
            End Select
        Case 167
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    P(164).SetFocus
            Case Else
                KeyAscii = 0
            End Select
        Case 184
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    Cbx(112).SetFocus
                Case 44
                    KeyAscii = Fncn.PtCma
                Case 46
                    KeyAscii = Fncn.PtCma
            Case Else
                KeyAscii = 0
            End Select
        Case 187
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                 P(167).SetFocus
                 If IsNumeric(P(187).Text) Then
                  If P(187).Text <> 0 Then
                   If DtBse(0).Recordset.Fields("TllaMat") <> "" Then
                    If DtBse(0).Recordset.Fields("TllaMat") <> 0 Then
                     Dt(5).Recordset.Fields("imceco") = Fncn.IMC(P(187).Text, _
                     DtBse(0).Recordset.Fields("TllaMat"))
                     P(179).Text = Fncn.EstNutrEg(Dt(5).Recordset.Fields("imceco"), P(162).Text)
                    Else
                     Dt(5).Recordset.Fields("imceco") = ""
                     P(179).Text = ""
                    End If
                   Else
                    Dt(5).Recordset.Fields("imceco") = ""
                    P(179).Text = ""
                   End If
                  Else
                   Dt(5).Recordset.Fields("imceco") = ""
                   P(179).Text = ""
                  End If
                 Else
                  Dt(5).Recordset.Fields("imceco") = ""
                  P(179).Text = ""
                 End If
            Case Else
                KeyAscii = 0
            End Select
        Case 188
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 44
                    KeyAscii = Fncn.PtCma
                Case 46
                    KeyAscii = Fncn.PtCma
            Case Else
                KeyAscii = 0
            End Select
        Case 189
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    Cbx(35).SetFocus
            Case Else
                KeyAscii = 0
            End Select
        Case 193
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    Cbx(114).SetFocus
                Case 44
                    KeyAscii = Fncn.PtCma
                Case 46
                    KeyAscii = Fncn.PtCma
            Case Else
                KeyAscii = 0
            End Select
        Case 194
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    P(193).SetFocus
                Case 44
                    KeyAscii = Fncn.PtCma
                Case 46
                    KeyAscii = Fncn.PtCma
            Case Else
                KeyAscii = 0
            End Select
        Case 195
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    P(196).SetFocus
            Case Else
                KeyAscii = 0
            End Select
        Case 196, 197, 198, 199
            KeyAscii = 0
        Case 200
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
            Case Else
                KeyAscii = 0
            End Select
        Case 214
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    P(217).SetFocus
                Case 44
                    KeyAscii = Fncn.PtCma
                Case 46
                    KeyAscii = Fncn.PtCma
            Case Else
                KeyAscii = 0
            End Select
        Case 217
            Select Case KeyAscii
                Case Asc("0") To Asc("9")
                Case 8
                Case 13
                    Cbx(126).SetFocus
                Case 44
                    KeyAscii = Fncn.PtCma
                Case 46
                    KeyAscii = Fncn.PtCma
            Case Else
                KeyAscii = 0
            End Select
    End Select
End Sub

Private Sub P_LostFocus(Index As Integer)
Dim Fncn As New Exe

    Select Case Index
        Case 37, 38
            If (IsNumeric(P(37).Text) = True) And (IsNumeric(P(38).Text) = True) Then _
                P(39).Text = Fncn.ValCC(P(38).Text, P(37).Text)
        Case 39
            If (IsNumeric(P(37).Text) = True) And (IsNumeric(P(39).Text) = True) Then _
                P(38).Text = Fncn.ValDOF(P(39).Text, P(37).Text)
        Case 40, 42
            If (IsNumeric(P(40).Text) = True) And (IsNumeric(P(42).Text) = True) Then _
                If IsNumeric(P(41).Text) = False Then _
                P(41).Text = Fncn.ValCA(P(42).Text, P(40).Text)
        Case 41
            If IsNumeric(P(Index).Text) Then
                P(42).Text = Fncn.ValDAAP_DAT(P(Index).Text)
                P(40).Text = Fncn.ValDAAP_DAT(P(Index).Text)
            End If
        Case 52, 53
            If (IsNumeric(P(52).Text) = True) And (IsNumeric(P(53).Text) = True) Then _
                P(54).Text = Fncn.ValCC(P(53).Text, P(52).Text)
        Case 54
            If (IsNumeric(P(54).Text) = True) And (IsNumeric(P(52).Text) = True) Then _
                P(53).Text = Fncn.ValDOF(P(54).Text, P(52).Text)
        Case 57
            If IsNumeric(P(Index).Text) = True Then
                P(56).Text = Fncn.ValDAAP_DAT(P(Index).Text)
                P(59).Text = Fncn.ValDAAP_DAT(P(Index).Text)
            End If
            
        Case 56, 59
            If (IsNumeric(P(56).Text) = True) And (IsNumeric(P(59).Text) = True) Then _
                If IsNumeric(P(57).Text) = False Then _
                P(57).Text = Fncn.ValCA(P(59).Text, P(56).Text)
    End Select

End Sub

'-------------------------------------------------------------------------------------
'Programación Propia

Private Sub ExeMSC(ByVal Gráfico As Integer, ByVal actividad As OpGraf)
Dim i As Integer
    Select Case Gráfico
        Case 0
            Select Case Lst(0).ListIndex
                Case 1
                    If actividad = base Then
                        MSC(0).RowCount = 21
                        For i = 1 To 21
                            MSC(0).Row = i
                            MSC(0).Column = 1
                            MSC(0).Data = 0
                            MSC(0).RowLabel = i + 19
                            MSC(0).Column = 2
                            MSC(0).Data = pct97PsoFtal(i + 19)
                            MSC(0).Column = 3
                            MSC(0).Data = pct90PsoFtal(i + 19)
                            MSC(0).Column = 4
                            MSC(0).Data = pct50PsoFtal(i + 19)
                            MSC(0).Column = 5
                            MSC(0).Data = pct10PsoFtal(i + 19)
                            MSC(0).Column = 6
                            MSC(0).Data = pct3PsoFtal(i + 19)
                        Next i
                        MSC(0).Plot.Axis(VtChAxisIdY).ValueScale.Minimum = 100
                        MSC(0).Plot.Axis(VtChAxisIdY).ValueScale.Maximum = 4700
                        MSC(0).Plot.Axis(VtChAxisIdY).CategoryScale.DivisionsPerLabel = 20
                        MSC(0).Plot.Axis(VtChAxisIdY).CategoryScale.DivisionsPerTick = 1
                        MSC(0).Plot.SeriesCollection(5).GuideLinePen.Width = 3
                    ElseIf actividad = datos Then
                        For i = 1 To 21
                            MSC(0).Row = i
                            MSC(0).Column = 1
                            MSC(0).Data = 0
                        Next i
                        DtBse(3).RecordSource = "SELECT * FROM ecografias WHERE RUT='" + Dt(0).Recordset.Fields(0) + "';"
                        DtBse(3).Refresh
                        If DtBse(3).Recordset.RecordCount > 0 Then DtBse(3).Recordset.MoveFirst
                        While DtBse(3).Recordset.EOF = False
                            If (Fix(DtBse(3).Recordset.Fields("eg3")) > 19) And (Fix(DtBse(3).Recordset.Fields("eg3")) < 41) Then
                                MSC(0).Row = CInt(Fix(DtBse(3).Recordset.Fields("eg3")) - 19)
                                MSC(0).Column = 1
                                If DtBse(3).Recordset.Fields("pesofe") <> "" Then MSC(0).Data = DtBse(3).Recordset.Fields("pesofe")
                                EGg(MSC(0).Row) = DtBse(3).Recordset.Fields("eg3")
                                If DtBse(3).Recordset.Fields("pesofe") <> "" Then PSOg(MSC(0).Row) = DtBse(3).Recordset.Fields("pesofe")
                                FChg(MSC(0).Row) = DtBse(3).Recordset.Fields("fecha3")
                                If DtBse(3).Recordset.Fields("tallafet") <> "" Then Tllg(MSC(0).Row) = DtBse(3).Recordset.Fields("tallafet")
                            End If
                            DtBse(3).Recordset.MoveNext
                        Wend
                    End If
                Case 2
                    If actividad = base Then
                        MSC(0).RowCount = 21
                        For i = 1 To 21
                            MSC(0).Row = i
                            MSC(0).Column = 1
                            MSC(0).Data = 0
                            MSC(0).RowLabel = i + 19
                            MSC(0).Column = 2
                            MSC(0).Data = pct97CcCa(i + 19)
                            MSC(0).Column = 3
                            MSC(0).Data = pct50CcCa(i + 19)
                            MSC(0).Column = 4
                            MSC(0).Data = pct3CcCa(i + 19)
                            MSC(0).Column = 5
                            MSC(0).Data = 0
                            MSC(0).Column = 6
                            MSC(0).Data = 0
                        Next i
                        MSC(0).Plot.Axis(VtChAxisIdY).ValueScale.Minimum = 0.75
                        MSC(0).Plot.Axis(VtChAxisIdY).ValueScale.Maximum = 1.4
                        MSC(0).Plot.Axis(VtChAxisIdY).CategoryScale.DivisionsPerLabel = 10
                        MSC(0).Plot.Axis(VtChAxisIdY).CategoryScale.DivisionsPerTick = 1
                        MSC(0).Plot.SeriesCollection(4).GuideLinePen.Width = 2
                    ElseIf actividad = datos Then
                        For i = 1 To 21
                            MSC(0).Row = i
                            MSC(0).Column = 1
                            MSC(0).Data = 0
                        Next i
                        DtBse(3).RecordSource = "SELECT * FROM ecografias WHERE RUT='" + Dt(0).Recordset.Fields(0) + "';"
                        DtBse(3).Refresh
                        If DtBse(3).Recordset.RecordCount > 0 Then DtBse(3).Recordset.MoveFirst
                        While DtBse(3).Recordset.EOF = False
                            If (Fix(DtBse(3).Recordset.Fields("eg3")) > 19) And (Fix(DtBse(3).Recordset.Fields("eg3")) < 42) Then
                                MSC(0).Row = CInt(Fix(DtBse(3).Recordset.Fields("eg3")) - 19)
                                MSC(0).Column = 1
                                If DtBse(3).Recordset.Fields("ccca") <> "" Then MSC(0).Data = DtBse(3).Recordset.Fields("ccca")
                                EGg(MSC(0).Row) = DtBse(3).Recordset.Fields("eg3")
                                If DtBse(3).Recordset.Fields("ccca") <> "" Then CcCag(MSC(0).Row) = DtBse(3).Recordset.Fields("ccca")
                                FChg(MSC(0).Row) = DtBse(3).Recordset.Fields("fecha3")
                            End If
                            DtBse(3).Recordset.MoveNext
                        Wend
                    End If
                Case 5
                    If actividad = base Then
                        MSC(0).RowCount = 29
                        For i = 1 To 29
                            MSC(0).Row = i
                            MSC(0).Column = 1
                            MSC(0).Data = 0
                            MSC(0).RowLabel = i + 11
                            MSC(0).Column = 2
                            MSC(0).Data = pct97CC(i + 11)
                            MSC(0).Column = 3
                            MSC(0).Data = pct3CC(i + 11)
                            MSC(0).Column = 4
                            MSC(0).Data = 0
                            MSC(0).Column = 5
                            MSC(0).Data = 0
                            MSC(0).Column = 6
                            MSC(0).Data = 0
                        Next i
                        MSC(0).Plot.Axis(VtChAxisIdY).ValueScale.Minimum = 30
                        MSC(0).Plot.Axis(VtChAxisIdY).ValueScale.Maximum = 450
                        MSC(0).Plot.Axis(VtChAxisIdY).CategoryScale.DivisionsPerLabel = 20
                        MSC(0).Plot.Axis(VtChAxisIdY).CategoryScale.DivisionsPerTick = 1
                        MSC(0).Plot.SeriesCollection(4).GuideLinePen.Width = 1
                    ElseIf actividad = datos Then
                        For i = 1 To 29
                            MSC(0).Row = i
                            MSC(0).Column = 1
                            MSC(0).Data = 0
                        Next i
                        DtBse(3).RecordSource = "SELECT cc, eg3 FROM ecografias WHERE RUT='" + Dt(0).Recordset.Fields(0) + "';"
                        DtBse(3).Refresh
                        If DtBse(3).Recordset.RecordCount > 0 Then DtBse(3).Recordset.MoveFirst
                        While DtBse(3).Recordset.EOF = False
                            If (Fix(DtBse(3).Recordset.Fields("eg3")) < 42) And (Fix(DtBse(3).Recordset.Fields("eg3")) > 11) Then
                                MSC(0).Row = CInt(Fix(DtBse(3).Recordset.Fields("eg3")) - 11)
                                MSC(0).Column = 1
                                MSC(0).Data = DtBse(3).Recordset.Fields("cc")
                            End If
                            DtBse(3).Recordset.MoveNext
                        Wend
                    End If
                Case 6
                    If actividad = base Then
                        MSC(0).RowCount = 29
                        For i = 1 To 29
                            MSC(0).Row = i
                            MSC(0).Column = 1
                            MSC(0).Data = 0
                            MSC(0).RowLabel = i + 11
                            MSC(0).Column = 2
                            MSC(0).Data = pct97CA(i + 11)
                            MSC(0).Column = 3
                            MSC(0).Data = pct3CA(i + 11)
                            MSC(0).Column = 4
                            MSC(0).Data = 0
                            MSC(0).Column = 5
                            MSC(0).Data = 0
                            MSC(0).Column = 6
                            MSC(0).Data = 0
                        Next i
                        MSC(0).Plot.Axis(VtChAxisIdY).ValueScale.Minimum = 20
                        MSC(0).Plot.Axis(VtChAxisIdY).ValueScale.Maximum = 420
                        MSC(0).Plot.Axis(VtChAxisIdY).CategoryScale.DivisionsPerLabel = 20
                        MSC(0).Plot.Axis(VtChAxisIdY).CategoryScale.DivisionsPerTick = 1
                        MSC(0).Plot.SeriesCollection(4).GuideLinePen.Width = 1
                    ElseIf actividad = datos Then
                        For i = 1 To 29
                            MSC(0).Row = i
                            MSC(0).Column = 1
                            MSC(0).Data = 0
                        Next i
                        DtBse(3).RecordSource = "SELECT ca, eg3 FROM ecografias WHERE RUT='" + Dt(0).Recordset.Fields(0) + "';"
                        DtBse(3).Refresh
                        If DtBse(3).Recordset.RecordCount > 0 Then DtBse(3).Recordset.MoveFirst
                        While DtBse(3).Recordset.EOF = False
                            If (Fix(DtBse(3).Recordset.Fields("eg3")) < 42) And (Fix(DtBse(3).Recordset.Fields("eg3")) > 11) Then
                                MSC(0).Row = CInt(Fix(DtBse(3).Recordset.Fields("eg3")) - 11)
                                MSC(0).Column = 1
                                If DtBse(3).Recordset.Fields("ca") <> "" Then MSC(0).Data = DtBse(3).Recordset.Fields("ca")
                            End If
                            DtBse(3).Recordset.MoveNext
                        Wend
                    End If
                Case 7
                    If actividad = base Then
                        MSC(0).RowCount = 29
                        For i = 1 To 29
                            MSC(0).Row = i
                            MSC(0).Column = 1
                            MSC(0).Data = 0
                            MSC(0).RowLabel = i + 11
                            MSC(0).Column = 2
                            MSC(0).Data = pct97LF(i + 11)
                            MSC(0).Column = 3
                            MSC(0).Data = pct3LF(i + 11)
                            MSC(0).Column = 4
                            MSC(0).Data = 0
                            MSC(0).Column = 5
                            MSC(0).Data = 0
                            MSC(0).Column = 6
                            MSC(0).Data = 0
                        Next i
                        MSC(0).Plot.Axis(VtChAxisIdY).ValueScale.Minimum = 0
                        MSC(0).Plot.Axis(VtChAxisIdY).ValueScale.Maximum = 100
                        MSC(0).Plot.Axis(VtChAxisIdY).CategoryScale.DivisionsPerLabel = 20
                        MSC(0).Plot.Axis(VtChAxisIdY).CategoryScale.DivisionsPerTick = 1
                        MSC(0).Plot.SeriesCollection(4).GuideLinePen.Width = 1
                    ElseIf actividad = datos Then
                        For i = 1 To 29
                            MSC(0).Row = i
                            MSC(0).Column = 1
                            MSC(0).Data = 0
                        Next i
                        DtBse(3).RecordSource = "SELECT lf, eg3 FROM ecografias WHERE RUT='" + Dt(0).Recordset.Fields(0) + "';"
                        DtBse(3).Refresh
                        If DtBse(3).Recordset.RecordCount > 0 Then DtBse(3).Recordset.MoveFirst
                        While DtBse(3).Recordset.EOF = False
                            If (Fix(DtBse(3).Recordset.Fields("eg3")) < 42) And (Fix(DtBse(3).Recordset.Fields("eg3")) > 11) Then
                                MSC(0).Row = CInt(Fix(DtBse(3).Recordset.Fields("eg3")) - 11)
                                MSC(0).Column = 1
                                MSC(0).Data = DtBse(3).Recordset.Fields("lf")
                            End If
                            DtBse(3).Recordset.MoveNext
                        Wend
                    End If
                Case 10
                    If actividad = base Then
                        MSC(0).RowCount = 26
                        For i = 1 To 26
                            MSC(0).Row = i
                            MSC(0).Column = 1
                            MSC(0).Data = 0
                            MSC(0).RowLabel = i + 15
                            MSC(0).Column = 2
                            MSC(0).Data = pct95BVM(i + 15)
                            MSC(0).Column = 3
                            MSC(0).Data = pct5BVM(i + 15)
                            MSC(0).Column = 4
                            MSC(0).Data = 0
                            MSC(0).Column = 5
                            MSC(0).Data = 0
                            MSC(0).Column = 6
                            MSC(0).Data = 0
                        Next i
                        MSC(0).Plot.Axis(VtChAxisIdY).ValueScale.Minimum = 5
                        MSC(0).Plot.Axis(VtChAxisIdY).ValueScale.Maximum = 115
                        MSC(0).Plot.Axis(VtChAxisIdY).CategoryScale.DivisionsPerLabel = 10
                        MSC(0).Plot.Axis(VtChAxisIdY).CategoryScale.DivisionsPerTick = 1
                        MSC(0).Plot.SeriesCollection(4).GuideLinePen.Width = 1
                    ElseIf actividad = datos Then
                        For i = 1 To 26
                            MSC(0).Row = i
                            MSC(0).Column = 1
                            MSC(0).Data = 0
                        Next i
                        DtBse(3).RecordSource = "SELECT BVM, eg3 FROM ecografias WHERE RUT='" + Dt(0).Recordset.Fields(0) + "';"
                        DtBse(3).Refresh
                        If DtBse(3).Recordset.RecordCount > 0 Then DtBse(3).Recordset.MoveFirst
                        While DtBse(3).Recordset.EOF = False
                            If (Fix(DtBse(3).Recordset.Fields("eg3")) > 15) And (Fix(DtBse(3).Recordset.Fields("eg3")) < 42) Then
                                MSC(0).Row = CInt(Fix(DtBse(3).Recordset.Fields("eg3")) - 15)
                                MSC(0).Column = 1
                                If DtBse(3).Recordset.Fields("BVM") <> "" Then MSC(0).Data = DtBse(3).Recordset.Fields("BVM")
                            End If
                            DtBse(3).Recordset.MoveNext
                        Wend
                    End If
                Case 11
                    If actividad = base Then
                        MSC(0).RowCount = 26
                        For i = 1 To 26
                            MSC(0).Row = i
                            MSC(0).Column = 1
                            MSC(0).Data = 0
                            MSC(0).RowLabel = i + 15
                            MSC(0).Column = 2
                            MSC(0).Data = pct95ILA(i + 15)
                            MSC(0).Column = 3
                            MSC(0).Data = pct5ILA(i + 15)
                            MSC(0).Column = 4
                            MSC(0).Data = 0
                            MSC(0).Column = 5
                            MSC(0).Data = 0
                            MSC(0).Column = 6
                            MSC(0).Data = 0
                        Next i
                        MSC(0).Plot.Axis(VtChAxisIdY).ValueScale.Minimum = 20
                        MSC(0).Plot.Axis(VtChAxisIdY).ValueScale.Maximum = 340
                        MSC(0).Plot.Axis(VtChAxisIdY).CategoryScale.Auto = False
                        MSC(0).Plot.Axis(VtChAxisIdY).CategoryScale.DivisionsPerLabel = 10
                        MSC(0).Plot.Axis(VtChAxisIdY).CategoryScale.DivisionsPerTick = 1
                        MSC(0).Plot.SeriesCollection(4).GuideLinePen.Width = 1
                    ElseIf actividad = datos Then
                        For i = 1 To 26
                            MSC(0).Row = i
                            MSC(0).Column = 1
                            MSC(0).Data = 0
                        Next i
                        DtBse(3).RecordSource = "SELECT totila, eg3 FROM ecografias WHERE RUT='" + Dt(0).Recordset.Fields(0) + "';"
                        DtBse(3).Refresh
                        If DtBse(3).Recordset.RecordCount > 0 Then DtBse(3).Recordset.MoveFirst
                        While DtBse(3).Recordset.EOF = False
                            If (Fix(DtBse(3).Recordset.Fields("eg3")) > 15) And (Fix(DtBse(3).Recordset.Fields("eg3")) < 42) Then
                                MSC(0).Row = CInt(Fix(DtBse(3).Recordset.Fields("eg3")) - 15)
                                MSC(0).Column = 1
                                If DtBse(3).Recordset.Fields("totila") <> "" Then MSC(0).Data = DtBse(3).Recordset.Fields("totila")
                            End If
                            DtBse(3).Recordset.MoveNext
                        Wend
                    End If
            End Select
        Case 1
            If actividad = base Then
                MSC(1).RowCount = 32
                For i = 1 To 32
                    MSC(1).Row = i
                    MSC(1).Column = 1
                    MSC(1).Data = 0
                    MSC(1).RowLabel = i + 9
                    MSC(1).Column = 2
                    MSC(1).Data = UT2(i + 9)
                    MSC(1).Column = 3
                    MSC(1).Data = UT1(i + 9)
                Next i
                MSC(1).Plot.Axis(VtChAxisIdY).CategoryScale.Auto = True
            ElseIf actividad = datos Then
                For i = 1 To 32
                    MSC(1).Row = i
                    MSC(1).Column = 1
                    MSC(1).Data = 0
                Next i
                DtBse(3).RecordSource = "SELECT promut, eg3 FROM ecografias WHERE RUT='" + Dt(0).Recordset.Fields(0) + "';"
                DtBse(3).Refresh
                If DtBse(3).Recordset.RecordCount > 0 Then DtBse(3).Recordset.MoveFirst
                While DtBse(3).Recordset.EOF = False
                    If (Fix(DtBse(3).Recordset.Fields("eg3")) > 9) And (Fix(DtBse(3).Recordset.Fields("eg3")) < 42) Then
                        MSC(1).Row = CInt(Fix(DtBse(3).Recordset.Fields("eg3")) - 9)
                        MSC(1).Column = 1
                        If DtBse(3).Recordset.Fields("promut") <> "" Then MSC(1).Data = DtBse(3).Recordset.Fields("promut")
                    End If
                    DtBse(3).Recordset.MoveNext
                Wend
            End If
        Case 2
            If actividad = base Then
                MSC(1).RowCount = 21
                For i = 1 To 21
                    MSC(1).Row = i
                    MSC(1).Column = 1
                    MSC(1).Data = 0
                    MSC(1).RowLabel = i + 19
                    MSC(1).Column = 2
                    MSC(1).Data = UM2(i + 19)
                    MSC(1).Column = 3
                    MSC(1).Data = UM1(i + 19)
                Next i
                MSC(1).Plot.Axis(VtChAxisIdY).CategoryScale.Auto = True
            ElseIf actividad = datos Then
                For i = 1 To 21
                    MSC(1).Row = i
                    MSC(1).Column = 1
                    MSC(1).Data = 0
                Next i
                DtBse(3).RecordSource = "SELECT atrumb, eg3 FROM ecografias WHERE RUT='" + Dt(0).Recordset.Fields(0) + "';"
                DtBse(3).Refresh
                If DtBse(3).Recordset.RecordCount > 0 Then DtBse(3).Recordset.MoveFirst
                While DtBse(3).Recordset.EOF = False
                    If (Fix(DtBse(3).Recordset.Fields("eg3")) > 19) And (Fix(DtBse(3).Recordset.Fields("eg3")) < 41) Then
                        MSC(1).Row = CInt(Fix(DtBse(3).Recordset.Fields("eg3")) - 19)
                        MSC(1).Column = 1
                        If DtBse(3).Recordset.Fields("atrumb") <> "" Then MSC(1).Data = DtBse(3).Recordset.Fields("atrumb")
                    End If
                    DtBse(3).Recordset.MoveNext
                Wend
            End If
        Case 3
            If actividad = base Then
                MSC(1).RowCount = 21
                For i = 1 To 21
                    MSC(1).Row = i
                    MSC(1).Column = 1
                    MSC(1).Data = 0
                    MSC(1).RowLabel = i + 19
                    MSC(1).Column = 2
                    MSC(1).Data = CM2(i + 19)
                    MSC(1).Column = 3
                    MSC(1).Data = CM1(i + 19)
                Next i
                MSC(1).Plot.Axis(VtChAxisIdY).ValueScale.Minimum = 0
                MSC(1).Plot.Axis(VtChAxisIdY).ValueScale.Maximum = 3
                MSC(1).Plot.Axis(VtChAxisIdY).CategoryScale.Auto = False
                MSC(1).Plot.Axis(VtChAxisIdY).CategoryScale.DivisionsPerLabel = 7
                MSC(1).Plot.Axis(VtChAxisIdY).CategoryScale.DivisionsPerTick = 1
            ElseIf actividad = datos Then
                For i = 1 To 21
                    MSC(1).Row = i
                    MSC(1).Column = 1
                    MSC(1).Data = 0
                Next i
                DtBse(3).RecordSource = "SELECT cm, eg3 FROM ecografias WHERE RUT='" + Dt(0).Recordset.Fields(0) + "';"
                DtBse(3).Refresh
                If DtBse(3).Recordset.RecordCount > 0 Then DtBse(3).Recordset.MoveFirst
                While DtBse(3).Recordset.EOF = False
                    If (Fix(DtBse(3).Recordset.Fields("eg3")) > 19) And (Fix(DtBse(3).Recordset.Fields("eg3")) < 41) Then
                        MSC(1).Row = CInt(Fix(DtBse(3).Recordset.Fields("eg3")) - 19)
                        MSC(1).Column = 1
                        If DtBse(3).Recordset.Fields("cm") <> "" Then MSC(1).Data = DtBse(3).Recordset.Fields("cm")
                    End If
                    DtBse(3).Recordset.MoveNext
                Wend
            End If
        Case 4
            Select Case Lst(1).ListIndex
                Case 0
                    If actividad = base Then
                        MSC(2).RowCount = 32
                        For i = 1 To 32
                            MSC(2).Row = i
                            MSC(2).Column = 1
                            MSC(2).Data = 0
                            MSC(2).RowLabel = i + 9
                            MSC(2).Column = 2
                            MSC(2).Data = UT2(i + 9)
                            MSC(2).Column = 3
                            MSC(2).Data = UT1(i + 9)
                        Next i
                        MSC(2).Plot.Axis(VtChAxisIdY).ValueScale.Minimum = 0
                        MSC(2).Plot.Axis(VtChAxisIdY).ValueScale.Maximum = 3
                    ElseIf actividad = datos Then
                        For i = 1 To 32
                            MSC(2).Row = i
                            MSC(2).Column = 1
                            MSC(2).Data = 0
                        Next i
                        DtBse(3).RecordSource = "SELECT promutmed, eg FROM Doppler WHERE RUT='" + Dt(0).Recordset.Fields(0) + "';"
                        DtBse(3).Refresh
                        If DtBse(3).Recordset.RecordCount > 0 Then DtBse(3).Recordset.MoveFirst
                        While DtBse(3).Recordset.EOF = False
                            If (Fix(DtBse(3).Recordset.Fields("eg")) > 9) And (Fix(DtBse(3).Recordset.Fields("eg")) < 42) Then
                                MSC(2).Row = CInt(Fix(DtBse(3).Recordset.Fields("eg")) - 9)
                                MSC(2).Column = 1
                                If DtBse(3).Recordset.Fields("promutmed") <> "" Then MSC(2).Data = DtBse(3).Recordset.Fields("promutmed")
                            End If
                            DtBse(3).Recordset.MoveNext
                        Wend
                    End If
                Case 1
                    If actividad = base Then
                        MSC(2).RowCount = 21
                        For i = 1 To 21
                            MSC(2).Row = i
                            MSC(2).Column = 1
                            MSC(2).Data = 0
                            MSC(2).RowLabel = i + 19
                            MSC(2).Column = 2
                            MSC(2).Data = UM2(i + 19)
                            MSC(2).Column = 3
                            MSC(2).Data = UM1(i + 19)
                        Next i
                        MSC(2).Plot.Axis(VtChAxisIdY).ValueScale.Minimum = 0
                        MSC(2).Plot.Axis(VtChAxisIdY).ValueScale.Maximum = 3
                    ElseIf actividad = datos Then
                        For i = 1 To 21
                            MSC(2).Row = i
                            MSC(2).Column = 1
                            MSC(2).Data = 0
                        Next i
                        DtBse(3).RecordSource = "SELECT aumbilmed, eg FROM Doppler WHERE RUT='" + Dt(0).Recordset.Fields(0) + "';"
                        DtBse(3).Refresh
                        If DtBse(3).Recordset.RecordCount > 0 Then DtBse(3).Recordset.MoveFirst
                        While DtBse(3).Recordset.EOF = False
                            If (Fix(DtBse(3).Recordset.Fields("eg")) > 19) And (Fix(DtBse(3).Recordset.Fields("eg")) < 41) Then
                                MSC(2).Row = CInt(Fix(DtBse(3).Recordset.Fields("eg")) - 19)
                                MSC(2).Column = 1
                                If DtBse(3).Recordset.Fields("aumbilmed") <> "" Then MSC(2).Data = DtBse(3).Recordset.Fields("aumbilmed")
                            End If
                            DtBse(3).Recordset.MoveNext
                        Wend
                    End If
                Case 2
                    If actividad = base Then
                        MSC(2).RowCount = 21
                        For i = 1 To 21
                            MSC(2).Row = i
                            MSC(2).Column = 1
                            MSC(2).Data = 0
                            MSC(2).RowLabel = i + 19
                            MSC(2).Column = 2
                            MSC(2).Data = CM2(i + 19)
                            MSC(2).Column = 3
                            MSC(2).Data = CM1(i + 19)
                        MSC(2).Plot.Axis(VtChAxisIdY).ValueScale.Minimum = 0
                        MSC(2).Plot.Axis(VtChAxisIdY).ValueScale.Maximum = 3
                        Next i
                    ElseIf actividad = datos Then
                        For i = 1 To 21
                            MSC(2).Row = i
                            MSC(2).Column = 1
                            MSC(2).Data = 0
                        Next i
                        DtBse(3).RecordSource = "SELECT acmed, eg FROM Doppler WHERE RUT='" + Dt(0).Recordset.Fields(0) + "';"
                        DtBse(3).Refresh
                        If DtBse(3).Recordset.RecordCount > 0 Then DtBse(3).Recordset.MoveFirst
                        While DtBse(3).Recordset.EOF = False
                            If (Fix(DtBse(3).Recordset.Fields("eg")) > 19) And (Fix(DtBse(3).Recordset.Fields("eg")) < 41) Then
                                MSC(2).Row = CInt(Fix(DtBse(3).Recordset.Fields("eg")) - 19)
                                MSC(2).Column = 1
                                If DtBse(3).Recordset.Fields("acmed") <> "" Then MSC(2).Data = DtBse(3).Recordset.Fields("acmed")
                            End If
                            DtBse(3).Recordset.MoveNext
                        Wend
                    End If
                Case 3
                    If actividad = base Then
                        MSC(2).RowCount = 21
                        For i = 1 To 21
                            MSC(2).Row = i
                            MSC(2).Column = 1
                            MSC(2).Data = 0
                            MSC(2).RowLabel = i + 19
                            MSC(2).Column = 2
                            MSC(2).Data = DV2(i + 19)
                            MSC(2).Column = 3
                            MSC(2).Data = DV1(i + 19)
                        MSC(2).Plot.Axis(VtChAxisIdY).ValueScale.Minimum = 0
                        MSC(2).Plot.Axis(VtChAxisIdY).ValueScale.Maximum = 1
                        Next i
                    ElseIf actividad = datos Then
                        For i = 1 To 21
                            MSC(2).Row = i
                            MSC(2).Column = 1
                            MSC(2).Data = 0
                        Next i
                        DtBse(3).RecordSource = "SELECT dvmed, eg FROM Doppler WHERE RUT='" + Dt(0).Recordset.Fields(0) + "';"
                        DtBse(3).Refresh
                        If DtBse(3).Recordset.RecordCount > 0 Then DtBse(3).Recordset.MoveFirst
                        While DtBse(3).Recordset.EOF = False
                            If (Fix(DtBse(3).Recordset.Fields("eg")) > 19) And (Fix(DtBse(3).Recordset.Fields("eg")) < 41) Then
                                MSC(2).Row = CInt(Fix(DtBse(3).Recordset.Fields("eg")) - 19)
                                MSC(2).Column = 1
                                If DtBse(3).Recordset.Fields("dvmed") <> "" Then MSC(2).Data = DtBse(3).Recordset.Fields("dvmed")
                            End If
                            DtBse(3).Recordset.MoveNext
                        Wend
                    End If
            End Select
        Case 5
            If actividad = base Then
                For i = 1 To 29
                    MSC(3).Row = i
                    MSC(3).Column = 1
                    MSC(3).Data = 0
                Next i
            ElseIf actividad = datos Then
                For i = 1 To 29
                    MSC(3).Row = i
                    MSC(3).Column = 1
                    MSC(3).Data = 0
                Next i
                DtBse(3).RecordSource = "SELECT imceco, eg3 FROM ecografias WHERE RUT='" + Dt(0).Recordset.Fields(0) + "';"
                DtBse(3).Refresh
                If DtBse(3).Recordset.RecordCount > 0 Then DtBse(3).Recordset.MoveFirst
                While DtBse(3).Recordset.EOF = False
                    If (Fix(DtBse(3).Recordset.Fields("eg3")) > 11) And (Fix(DtBse(3).Recordset.Fields("eg3")) < 41) Then
                        MSC(3).Row = CInt(Fix(DtBse(3).Recordset.Fields("eg3")) - 11)
                        MSC(3).Column = 1
                        If DtBse(3).Recordset.Fields("imceco") <> "" Then MSC(3).Data = DtBse(3).Recordset.Fields("imceco")
                    End If
                    DtBse(3).Recordset.MoveNext
                Wend
            End If
        Case 6
            If Bn(78).Enabled = False Then
                If actividad = base Then
                    MSC(4).RowCount = 31
                    For i = 1 To 31
                        MSC(4).Row = i
                        MSC(4).Column = 1
                        MSC(4).Data = 0
                        MSC(4).RowLabel = i + 9
                        MSC(4).Column = 2
                        MSC(4).Data = 90
                        MSC(4).Column = 3
                        MSC(4).Data = 0
                        MSC(4).Column = 4
                        MSC(4).Data = 200
                        MSC(4).Column = 5
                        MSC(4).Data = 140
                    Next i
                ElseIf actividad = datos Then
                    For i = 1 To 31
                        MSC(4).Row = i
                        MSC(4).Column = 1
                        MSC(4).Data = 0
                        MSC(4).Column = 3
                        MSC(4).Data = 0
                    Next i
                    DtBse(3).RecordSource = "SELECT GA, eg3 FROM ecografias WHERE RUT='" + Dt(0).Recordset.Fields(0) + "';"
                    DtBse(3).Refresh
                    If DtBse(3).Recordset.RecordCount > 0 Then DtBse(3).Recordset.MoveFirst
                    While DtBse(3).Recordset.EOF = False
                        If (Fix(DtBse(3).Recordset.Fields("eg3")) > 9) And (Fix(DtBse(3).Recordset.Fields("eg3")) < 41) Then
                            MSC(4).Row = CInt(Fix(DtBse(3).Recordset.Fields("eg3")) - 9)
                            MSC(4).Column = 1
                            If DtBse(3).Recordset.Fields("GA") <> "" Then MSC(4).Data = DtBse(3).Recordset.Fields("GA")
                        End If
                        DtBse(3).Recordset.MoveNext
                    Wend
                    DtBse(3).RecordSource = "SELECT clicpcar, eg3 FROM ecografias WHERE RUT='" + Dt(0).Recordset.Fields(0) + "';"
                    DtBse(3).Refresh
                    If DtBse(3).Recordset.RecordCount > 0 Then DtBse(3).Recordset.MoveFirst
                    While DtBse(3).Recordset.EOF = False
                        If (Fix(DtBse(3).Recordset.Fields("eg3")) > 9) And (Fix(DtBse(3).Recordset.Fields("eg3")) < 41) Then
                            MSC(4).Row = CInt(Fix(DtBse(3).Recordset.Fields("eg3")) - 9)
                            MSC(4).Column = 3
                            If DtBse(3).Recordset.Fields("clicpcar") <> "" Then MSC(4).Data = DtBse(3).Recordset.Fields("clicpcar")
                        End If
                        DtBse(3).Recordset.MoveNext
                    Wend
                End If
            ElseIf Bn(79).Enabled = False Then
                If actividad = base Then
                    MSC(4).RowCount = 31
                    For i = 1 To 31
                        MSC(4).Row = i
                        MSC(4).Column = 1
                        MSC(4).Data = 0
                        MSC(4).RowLabel = i + 9
                        MSC(4).Column = 2
                        MSC(4).Data = 6.5
                        MSC(4).Column = 3
                        MSC(4).Data = 0
                        MSC(4).Column = 4
                        MSC(4).Data = 8
                        MSC(4).Column = 5
                        MSC(4).Data = 0
                    Next i
                ElseIf actividad = datos Then
                    For i = 1 To 31
                        MSC(4).Row = i
                        MSC(4).Column = 1
                        MSC(4).Data = 0
                    Next i
                    DtBse(3).RecordSource = "SELECT HBG, eg3 FROM ecografias WHERE RUT='" + Dt(0).Recordset.Fields(0) + "';"
                    DtBse(3).Refresh
                    If DtBse(3).Recordset.RecordCount > 0 Then DtBse(3).Recordset.MoveFirst
                    While DtBse(3).Recordset.EOF = False
                        If (Fix(DtBse(3).Recordset.Fields("eg3")) > 9) And (Fix(DtBse(3).Recordset.Fields("eg3")) < 41) Then
                            MSC(4).Row = CInt(Fix(DtBse(3).Recordset.Fields("eg3")) - 9)
                            MSC(4).Column = 1
                            If DtBse(3).Recordset.Fields("HBG") <> "" Then MSC(4).Data = DtBse(3).Recordset.Fields("HBG")
                        End If
                        DtBse(3).Recordset.MoveNext
                    Wend
                End If
            ElseIf Bn(102).Enabled = False Then
                If actividad = base Then
                    MSC(4).RowCount = 31
                    For i = 1 To 31
                        MSC(4).Row = i
                        MSC(4).Column = 1
                        MSC(4).Data = 0
                        MSC(4).RowLabel = i + 9
                        MSC(4).Column = 2
                        MSC(4).Data = 140
                        MSC(4).Column = 3
                        MSC(4).Data = 0
                        MSC(4).Column = 4
                        MSC(4).Data = 200
                        MSC(4).Column = 5
                        MSC(4).Data = 90
                    Next i
                ElseIf actividad = datos Then
                    For i = 1 To 31
                        MSC(4).Row = i
                        MSC(4).Column = 1
                        MSC(4).Data = 0
                        MSC(4).Column = 3
                        MSC(4).Data = 0
                    Next i
                    DtBse(3).RecordSource = "SELECT preSist, eg3 FROM ecografias WHERE RUT='" + Dt(0).Recordset.Fields(0) + "';"
                    DtBse(3).Refresh
                    If DtBse(3).Recordset.RecordCount > 0 Then DtBse(3).Recordset.MoveFirst
                    While DtBse(3).Recordset.EOF = False
                        If (Fix(DtBse(3).Recordset.Fields("eg3")) > 9) And (Fix(DtBse(3).Recordset.Fields("eg3")) < 41) Then
                            MSC(4).Row = CInt(Fix(DtBse(3).Recordset.Fields("eg3")) - 9)
                            MSC(4).Column = 1
                            If DtBse(3).Recordset.Fields("preSist") <> "" Then MSC(4).Data = DtBse(3).Recordset.Fields("preSist")
                        End If
                        DtBse(3).Recordset.MoveNext
                    Wend
                    DtBse(3).RecordSource = "SELECT presDiast, eg3 FROM ecografias WHERE RUT='" + Dt(0).Recordset.Fields(0) + "';"
                    DtBse(3).Refresh
                    If DtBse(3).Recordset.RecordCount > 0 Then DtBse(3).Recordset.MoveFirst
                    While DtBse(3).Recordset.EOF = False
                        If (Fix(DtBse(3).Recordset.Fields("eg3")) > 9) And (Fix(DtBse(3).Recordset.Fields("eg3")) < 41) Then
                            MSC(4).Row = CInt(Fix(DtBse(3).Recordset.Fields("eg3")) - 9)
                            MSC(4).Column = 3
                            If DtBse(3).Recordset.Fields("presDiast") <> "" Then MSC(4).Data = DtBse(3).Recordset.Fields("presDiast")
                        End If
                        DtBse(3).Recordset.MoveNext
                    Wend
                End If
            End If
        Case 7
        If actividad = base Then
                        MSC(5).RowCount = 32
                        For i = 1 To 32
                            MSC(5).Row = i
                            MSC(5).Column = 1
                            MSC(5).Data = 0
                            MSC(5).RowLabel = i + 9
                            MSC(5).Column = 2
                            MSC(5).Data = UT2(i + 9)
                            MSC(5).Column = 3
                            MSC(5).Data = UT1(i + 9)
                        Next i
                        MSC(2).Plot.Axis(VtChAxisIdY).ValueScale.Minimum = 0
                        MSC(2).Plot.Axis(VtChAxisIdY).ValueScale.Maximum = 3
                    ElseIf actividad = datos Then
                        For i = 1 To 32
                            MSC(5).Row = i
                            MSC(5).Column = 1
                            MSC(5).Data = 0
                        Next i
                        DtBse(3).RecordSource = "SELECT promut, egeco1 FROM eco1trim WHERE RUT='" + Dt(0).Recordset.Fields(0) + "';"
                        DtBse(3).Refresh
                        If DtBse(3).Recordset.RecordCount > 0 Then DtBse(3).Recordset.MoveFirst
                        While DtBse(3).Recordset.EOF = False
                            If (Fix(DtBse(3).Recordset.Fields("egeco1")) > 9) And (Fix(DtBse(3).Recordset.Fields("egeco1")) < 42) Then
                                MSC(5).Row = CInt(Fix(DtBse(3).Recordset.Fields("egeco1")) - 9)
                                MSC(5).Column = 1
                                If DtBse(3).Recordset.Fields("promut") <> "" Then MSC(5).Data = DtBse(3).Recordset.Fields("promut")
                            End If
                            DtBse(3).Recordset.MoveNext
                        Wend
                    End If
    End Select
End Sub

Private Sub LoadDB()

    Dt(0).DatabaseName = DB(0)
    Dt(1).DatabaseName = DB(1)
    Dt(2).DatabaseName = DB(1)
    Dt(3).DatabaseName = DB(1)
    Dt(4).DatabaseName = DB(1)
    Dt(5).DatabaseName = DB(1)
    Dt(6).DatabaseName = DB(1)
    Dt(7).DatabaseName = DB(0)
    Dt(9).DatabaseName = DB(1)
    Dt(3).DatabaseName = DB(1)
    Set DtBse(0) = Me.Controls.Add("VB.data", "Dt1")
    Set DtBse(1) = Me.Controls.Add("VB.data", "Dt2")
    Set DtBse(2) = Me.Controls.Add("VB.data", "Dt3")
    Set DtBse(3) = Me.Controls.Add("VB.data", "Dt4")
    DtBse(0).DatabaseName = DB(1)
    DtBse(0).RecordSource = Rs9
    DtBse(0).Connect = "Access"
    DtBse(0).Refresh
    Cbx(22).Clear
    While DtBse(0).Recordset.EOF = False
        Cbx(104).AddItem DtBse(0).Recordset.Fields(0)
        Cbx(22).AddItem DtBse(0).Recordset.Fields(0)
        Cbx(36).AddItem DtBse(0).Recordset.Fields(0)
        Cbx(54).AddItem DtBse(0).Recordset.Fields(0)
        Cbx(68).AddItem DtBse(0).Recordset.Fields(0)
        Cbx(82).AddItem DtBse(0).Recordset.Fields(0)
        Cbx(96).AddItem DtBse(0).Recordset.Fields(0)
        Cbx(105).AddItem DtBse(0).Recordset.Fields(0)
        DtBse(0).Recordset.MoveNext
    Wend
    DtBse(0).RecordSource = Rs11
    DtBse(0).Refresh
    Cbx(6).Clear
    While DtBse(0).Recordset.EOF = False
        Cbx(6).AddItem DtBse(0).Recordset.Fields(1)
        DtBse(0).Recordset.MoveNext
    Wend
    DtBse(0).DatabaseName = DB(0)
    DtBse(1).DatabaseName = DB(0)
    DtBse(2).DatabaseName = DB(0)
    DtBse(3).DatabaseName = DB(1)
    
    Dt(0).RecordSource = Rs8
    Dt(0).Refresh
End Sub

Private Sub Nombre()
Dim A As Integer

    lbl(0).Caption = ""
    
    While A <> 2
        A = A + 1
        If DtBse(0).Recordset.Fields(A) <> "" Then
            lbl(0).Caption = lbl(0).Caption & DtBse(0).Recordset.Fields(A) & " "
        Else
            lbl(0).Caption = lbl(0).Caption & "NN "
        End If
    Wend
    
End Sub

Private Sub Datos_Pacientes()
Dim B As Double

    lbl(1).Caption = ""

    If DtBse(0).Recordset.Fields(0) <> "" Then
        lbl(1).Caption = "RUT: " & DtBse(0).Recordset.Fields(0)
    Else
        lbl(1).Caption = ""
    End If

    If DtBse(0).Recordset.Fields("FchNac") <> "" Then
        B = DateDiff("d", CDate(DtBse(0).Recordset.Fields("FchNac")), Date)
        B = B / 360
        If Int(B) > B Then B = Int(B) - 1
        If Int(B) < B Then B = Int(B)
        lbl(1).Caption = lbl(1).Caption & ", Edad: " & B & " años "
    End If

    If divAct <> 0 Then
        If DtBse(1).Recordset.RecordCount > 0 Then
            If DtBse(1).Recordset.Fields("FUROP") <> "" Then
                lbl(1).Caption = lbl(1).Caption & "| FUR: " & DtBse(1).Recordset.Fields("FUROP")
            End If
        End If
    End If

    If DtBse(0).Recordset.Fields("Ciudad") <> "" Then lbl(1).Caption = lbl(1).Caption & " | Ciudad: " & DtBse(0).Recordset.Fields("Ciudad")
    If DtBse(0).Recordset.Fields("NomProfRef") <> "" Then lbl(1).Caption = lbl(1).Caption & " , Profesional Referente: " & DtBse(0).Recordset.Fields("NomProfRef")

End Sub

Private Sub LoadPg1()

    DtBse(0).RecordSource = Rs1 + Dt(0).Recordset.Fields(0) + RsEnd
    DtBse(0).Refresh
    If DtBse(0).Recordset.RecordCount > 1 Then DtBse(0).Recordset.MoveLast
    
    If DtBse(0).Recordset.Fields("TllaMat") <> "" Then
        Cbx(0).Text = DtBse(0).Recordset.Fields("TllaMat")
    Else
        Cbx(0).Text = ""
    End If
    If DtBse(0).Recordset.Fields("Pso") <> "" Then
        Cbx(1).Text = DtBse(0).Recordset.Fields("Pso")
    Else
        Cbx(1).Text = ""
    End If
    If DtBse(0).Recordset.Fields("Gprev") <> "" Then
        Cbx(2).Text = DtBse(0).Recordset.Fields("Gprev")
        P(176).Text = DtBse(0).Recordset.Fields("Gprev")
    Else
        Cbx(2).Text = ""
        P(176).Text = ""
    End If
    If DtBse(0).Recordset.Fields("Csarea") <> "" Then
        Cbx(3).Text = DtBse(0).Recordset.Fields("Csarea")
    Else
        Cbx(3).Text = ""
    End If
    If DtBse(0).Recordset.Fields("PRepro") <> "" Then
        Cbx(4).Text = DtBse(0).Recordset.Fields("PRepro")
        P(182).Text = DtBse(0).Recordset.Fields("PRepro")
    Else
        Cbx(4).Text = ""
        P(182).Text = ""
    End If
    
    If DtBse(0).Recordset.Fields("Ptotot") <> "" Then
        Cbx(5).Text = DtBse(0).Recordset.Fields("Ptotot")
        P(181).Text = DtBse(0).Recordset.Fields("Ptotot")
    Else
        Cbx(5).Text = ""
        P(181).Text = ""
    End If

    If DtBse(0).Recordset.Fields("NomProfRef") <> "" Then
        P(2).Text = DtBse(0).Recordset.Fields("NomProfRef")
    Else
        P(2).Text = ""
    End If
    
    If DtBse(1).Recordset.RecordCount > 0 Then
        If DtBse(1).Recordset.Fields("FUROP") <> "" Then
            P(3).Text = DtBse(1).Recordset.Fields("FUROP")
            '<--Extra FUR para Pg2 -->
            P(160).Text = DtBse(1).Recordset.Fields("FUROP")
            '<----------------------->
        Else
            P(3).Text = ""
            '<--Extra FUR para Pg2 -->
            P(160).Text = ""
            '<----------------------->
        End If
    Else
        P(3).Text = ""
        '<--Extra FUR para Pg2 -->
        P(160).Text = ""
        '<----------------------->
    End If
    DtBse(0).RecordSource = "SELECT * FROM Reservas WHERE RUT='" + Dt(0).Recordset.Fields(0) + RsEnd
    DtBse(0).Refresh
    If DtBse(0).Recordset.RecordCount > 0 Then DtBse(0).Recordset.MoveLast

    If IsNull(DtBse(0).Recordset.Fields("Eco2")) = False Then
        If IsEmpty(DtBse(0).Recordset.Fields("Eco2")) = False Then
            Cbx(6).Text = DtBse(0).Recordset.Fields("Eco2")
        End If
    Else
        Cbx(6).Text = ""
    End If
    DtBse(0).RecordSource = Rs1 + Dt(0).Recordset.Fields(0) + RsEnd
    DtBse(0).Refresh
    If DtBse(0).Recordset.RecordCount > 1 Then DtBse(0).Recordset.MoveLast
End Sub

Private Sub SavePg1()

    DtBse(0).Recordset.Edit
    
    If Cbx(0).Text <> DtBse(0).Recordset.Fields("TllaMat") Then DtBse(0).Recordset.Fields("TllaMat") = Cbx(0).Text
    If Cbx(1).Text <> DtBse(0).Recordset.Fields("Pso") Then DtBse(0).Recordset.Fields("Pso") = Cbx(1).Text
    If Cbx(2).Text <> DtBse(0).Recordset.Fields("Gprev") Then DtBse(0).Recordset.Fields("Gprev") = Cbx(2).Text
    If Cbx(3).Text <> DtBse(0).Recordset.Fields("Csarea") Then DtBse(0).Recordset.Fields("Csarea") = Cbx(3).Text
    If Cbx(4).Text <> DtBse(0).Recordset.Fields("PRepro") Then DtBse(0).Recordset.Fields("PRepro") = Cbx(4).Text
    If Cbx(5).Text <> DtBse(0).Recordset.Fields("Ptotot") Then DtBse(0).Recordset.Fields("Ptotot") = Cbx(5).Text

    DtBse(0).Recordset.Update
    
    If DtBse(1).Recordset.RecordCount > 0 Then
        If CDate(DtBse(1).Recordset.Fields("FUROP")) <> CDate(DtBse(1).Recordset.Fields("FURRF")) Then
            DtBse(1).Recordset.Edit
            DtBse(1).Recordset.Fields("FUROP") = P(3).Text
            DtBse(1).Recordset.Update
        Else
            DtBse(1).Recordset.Edit
            DtBse(1).Recordset.Fields("FURRF") = P(3).Text
            DtBse(1).Recordset.Fields("FUROP") = P(3).Text
            DtBse(1).Recordset.Update
        End If
    Else
        DtBse(1).Recordset.AddNew
        DtBse(1).Recordset.Fields("RUT") = Dt(0).Recordset.Fields(0)
        DtBse(1).Recordset.Fields("FURRF") = P(3).Text
        DtBse(1).Recordset.Fields("FUROP") = P(3).Text
        DtBse(1).Recordset.Update
    End If
    
    If IsNull(Dt(0).Recordset.Fields("Eco2")) = False Then
        If Cbx(6).Text <> Dt(0).Recordset.Fields("Eco2") Then
            DtBse(0).RecordSource = "SELECT * FROM Reservas WHERE RUT='" + Dt(0).Recordset.Fields(0) + RsEnd
            DtBse(0).Refresh
            If DtBse(0).Recordset.RecordCount > 0 Then DtBse(0).Recordset.MoveLast
            DtBse(0).Recordset.Edit
            DtBse(0).Recordset.Fields("Eco2") = Cbx(6).Text
            DtBse(0).Recordset.Update
        End If
    ElseIf Cbx(6).Text <> "" Then
        DtBse(0).RecordSource = "SELECT * FROM Reservas WHERE RUT='" + Dt(0).Recordset.Fields(0) + RsEnd
        DtBse(0).Refresh
        If DtBse(0).Recordset.RecordCount > 0 Then DtBse(0).Recordset.MoveLast
        DtBse(0).Recordset.Edit
        DtBse(0).Recordset.Fields("Eco2") = Cbx(6).Text
        DtBse(0).Recordset.Update
    End If
End Sub

Private Function Msgs(Txt As String, Ttl As String, Optional btn As MsgBtn, Optional Motvo As MsgExe, _
                      Optional Color As MsgClr) As Long
Dim i As Integer

    lbl(239).Caption = Ttl
    lbl(240).Caption = Txt
    lbl(240).Left = 7387 - (lbl(240).Width / 2)
    
    For i = 0 To 11
        Mn(i).Enabled = False
    Next i
    DBCombo1.Enabled = False
    Select Case divAct
        Case 0
            DIV(0).Enabled = False
        Case 5
            DIV(4).Enabled = False
        Case 9
            DIV(8).Enabled = False
        Case 14
            DIV(14).Enabled = False
        Case 16
            DIV(16).Enabled = False
        Case 18
            DIV(17).Enabled = False
        Case 40
            DIV(40).Enabled = False
    End Select
    
    Dt(0).Enabled = False
    DIV(21).Visible = True
    
    MtvMsg = Motvo
    
    If btn = MsgSN Then
        Bn(61).Caption = Tx8
        Bn(61).Left = 5760
        Bn(61).SetFocus
        Bn(62).Visible = True
    Else
        Bn(61).Caption = "Aceptar"
        Bn(61).Left = 6700
        Bn(61).SetFocus
        Bn(62).Visible = False
    End If
    
    If Color = Lead Then
        DIV(21).BackColor = &H808080
        lbl(239).BackColor = &H808080
        lbl(240).BackColor = &H808080
    Else
        DIV(21).BackColor = &HB96629
        lbl(239).BackColor = &HB96629
        lbl(240).BackColor = &HB96629
    End If
    
End Function

Private Function WriteObsPg2(ByVal Tipo As Integer) As String
Dim ln(5) As String
Dim A As Integer

    Select Case Tipo
        Case 0, 1
            WriteObsPg2 = "Se sugiere continuar control prenatal normal."
        Case 4
            ln(0) = "Útero grávido, con saco gestacional único, embrión de " & P(27).Text & " mm, sin actividad corporal ni cardiaca." & vbCrLf & "Aborto retenido"
            ln(2) = vbCrLf & "Se sugiere continuar control prenatal normal."
            WriteObsPg2 = ln(0) & ln(1) & ln(2)
    Case Else
            ln(0) = "Útero grávido, con saco gestacional único, embrión activo, de " & P(27).Text & " mm"
            If Cbx(63).Text <> "" Then
                If Cbx(63) = "(+) inicial" Then
                    ln(1) = " y frecuencia cardiaca fetal " & Cbx(63).Text & vbCrLf
                Else
                    ln(1) = " y frecuencia cardiaca fetal de " & Cbx(63).Text & " latidos x minuto." & vbCrLf
                End If
            End If
            If Len(ln(1)) < 1 Then ln(1) = "." & vbCrLf
            ln(2) = "FUR Operacional = " & DtBse(1).Recordset.Fields("FUROP") & vbCrLf & "Fecha Probable de Parto = " & P(5).Text & "."
            ln(4) = vbCrLf & "Se sugiere continuar control prenatal normal."
            For A = 0 To 4
                ln(5) = ln(5) & ln(A)
            Next A
            WriteObsPg2 = ln(5)
    End Select
    
End Function

Private Sub WriteObsPg3(ByVal Tipo As Integer)
Dim ln(8) As String
Dim i As Integer

    If Dt(3).Recordset.RecordCount > 0 Then Dt(3).Recordset.AbsolutePosition = Dt(2).Recordset.AbsolutePosition
    
    Select Case Tipo
        Case 0
            
            ln(0) = "Feto sin alteraciones morfológicas mayores evidenciables al examen ecográfico,"
            If Cbx(111).Text <> "" Then
                If (Cbx(111).Text = "no Procede") Or (Cbx(111).Text = "no evaluable") Then
                Else
                    If P(184).Text <> "" Then
                        ln(0) = ln(0) & " cerebelo de " & P(184) & " mm"
                    End If
                End If
            End If
            If Cbx(113).Text <> "" Then
                If (Cbx(113).Text = "no Procede") Or (Cbx(111).Text = "no evaluable") Then
                Else
                    If P(188).Text <> "" Then
                        ln(0) = ln(0) & ", cisterna magna de " & P(188).Text & " mm"
                    End If
                End If
            End If
            If Cbx(112).Text <> "" Then
                If (Cbx(112).Text = "no procede") Or (Cbx(112).Text = "no evaluable") Then
                Else
                    If P(48).Text <> "" Then
                        ln(0) = ln(0) & ", atrio posterior de " & P(48).Text & " mm"
                    End If
                End If
            End If
            
            If IsNumeric(P(51).Text) Then
                If IsNumeric(P(50).Text) Then
                    ln(2) = " pielectasia fisiológica bilateral de " & P(51).Text & " y " & P(50).Text & " mm de derecha e izquierda respectivamente."
                Else
                    ln(2) = " pielectasia fisiológica bilateral derecha de " & P(51).Text & " mm."
                End If
            ElseIf IsNumeric(P(50).Text) Then
                ln(2) = ", pielectasia fisiológica bilateral izquierda de " & P(50).Text & " mm."
            End If
            If (Len(ln(1)) > 1) And (Len(ln(2)) > 1) Then ln(2) = "," & ln(2)
            If (Len(ln(1)) > 1) And (Len(ln(2)) < 1) Then ln(1) = ln(1) & "."
            If Cbx(26).Text <> "" Then ln(3) = " sexo fetal " & Cbx(26).Text & "."
            If Nw = False Then
                If (Cbx(37).Text <> "") And (Cbx(37).Text <> "No evaluado") Then
                    If (Cbx(38).Text <> "") And (Cbx(38).Text <> "No evaluado") Then
                        ln(4) = "Evaluación adicional flujometría doppler materno, (arterias uterinas) promedio percentil " & P(97).Text & " (" & Cbx(37).Text & "). Doppler fetal de " & Cbx(38).Text & "." & vbCrLf
                    Else
                        ln(4) = "Evaluación adicional flujometría doppler materno, (arterias uterinas) promedio percentil " & P(97).Text & " (" & Cbx(37).Text & ")." & vbCrLf
                    End If
                ElseIf (Cbx(38).Text <> "") And (Cbx(38).Text <> "No evaluado") Then
                    ln(4) = "Evaluación adicional flujometría doppler de " & Cbx(38).Text & "." & vbCrLf
                End If
                If P(98).Text <> "" Then ln(5) = "Evaluación cervical, cuello de " & P(98).Text & " mm, " & Cbx(40).Text & "."
                If Len(ln(3)) > 1 Then ln(4) = vbCrLf & ln(4)
            End If
            ln(6) = "Se sugiere continuar control prenatal normal."
            For i = 0 To 6
                If Len(ln(i)) > 1 Then ln(7) = ln(7) & ln(i)
            Next i
            P(69).Text = ln(7)
        Case 1
           
            If Nw = False Then
                If (Cbx(37).Text <> "") And (Cbx(37).Text <> "No evaluado") Then
                    If (Cbx(38).Text <> "") And (Cbx(38).Text <> "No evaluado") Then
                        ln(0) = "Evaluación adicional flujometría doppler materno, (arterias uterinas) promedio percentil " & P(97).Text & " (" & Cbx(37).Text & "). Doppler fetal de " & Cbx(38).Text & "." & vbCrLf
                    Else
                        ln(0) = "Evaluación adicional flujometría doppler materno, (arterias uterinas) promedio percentil " & P(97).Text & " (" & Cbx(37).Text & ")." & vbCrLf
                    End If
                ElseIf (Cbx(38).Text <> "") And (Cbx(38).Text <> "No evaluado") Then
                    ln(0) = "Evaluación adicional flujometría doppler de " & Cbx(38).Text & "." & vbCrLf
                End If
                If P(98).Text <> "" Then ln(1) = "Evaluación cervical, cuello de " & P(98).Text & " mm, " & Cbx(40).Text & "."
            End If
            If Len(ln(1)) > 1 Then ln(1) = ln(1) & vbCrLf
            
            ln(2) = "Anatomía fetal de aspecto normal, rostro, craneo y estructuras encefálicas sin alteraciones evideciables al exámen, "
            If Cbx(111).Text <> "" Then
                If (Cbx(111).Text = "No Procede") Or (Cbx(111).Text = "No evaluable") Then
                Else
                    If P(184).Text <> "" Then
                        ln(2) = ln(2) & "cerebelo de " & P(184) & " mm, "
                    End If
                End If
            End If
            If Cbx(113).Text <> "" Then
                If (Cbx(113).Text = "No Procede") Or (Cbx(111).Text = "No evaluable") Then
                Else
                    If P(188).Text <> "" Then
                        ln(2) = ln(2) & "cisterna magna de " & P(188).Text & " mm, "
                    End If
                End If
            End If
            If Cbx(112).Text <> "" Then
                If (Cbx(112).Text = "no procede") Or (Cbx(112).Text = "no evaluable") Then
                Else
                    If P(48).Text <> "" Then
                        ln(2) = ln(2) & "atrio posterior de " & P(48).Text & " mm, "
                    End If
                End If
            End If
            ln(2) = ln(2) & "tórax de aspecto normal, corazón; ubicación" _
                    & " y tamaño normal, corte de cuatro cámaras de aspecto normal, abdómen: cámara gástrica, riñones y vejiga de aspecto normal, pared anterior normal, columna vertebral de aspecto normal, extremidades de" _
                    & " aspecto normal al exámen."
            If Cbx(26).Text <> "" Then ln(3) = " sexo fetal " & Cbx(26).Text & "."
            ln(4) = vbCrLf & "Se sugiere continuar control prenatal normal y próxima evaluación ecográfica a las     semanas de gestación."
            For i = 0 To 4
                If Len(ln(i)) > 1 Then ln(5) = ln(5) & ln(i)
            Next i
            P(69).Text = ln(5)

        Case Else
            P(69).Text = ""
    End Select
    
End Sub

Private Function WriteObsPg4(ByVal Tipo As Integer) As String

    Select Case Tipo
        Case 0
            WriteObsPg4 = "Flujometria Doppler materno dentro de límites normales, el índice de pulsatilidad promedio de ambas arterias uterinas se encuentra  en percentil " & _
            P(138).Text & ". (rango de normalidad percentil 5 a 95)."
        Case 1
            WriteObsPg4 = "Flujometria Doppler fetal dentro de límites normales, los índice de pulsatilidad de la arteria umbilical y arteria cerebral media, " & _
                          "se encuentran en rango de normalidad (percentil de normalidad 5 a 95). El cuociente cerebro / placentario es normal (valor > 1)."
        Case 2
            WriteObsPg4 = "Flujometria Doppler materno fetal dentro de límites normales, IP promedio de uterina es " & P(138).Text & ", (normalidad 5 a 95)." & _
                          "El  IP de arteria umbilical y arteria cerebral media,  se encuentran también en rango de normalidad (normalidad 5 a 95) El cuociente cerebro / placentario es normal (valor > 1)."
    Case Else
    End Select
    
End Function
Private Function RPTHeader() As String
Dim H As Data
Dim strText As String
Dim newText As String
Set H = Controls.Add("VB.data", "MM")

    H.RecordSource = "Mbt"
    H.DatabaseName = DB(1)
    H.Refresh

    If H.Recordset.Fields(1) = True Then
        strText = H.Recordset.Fields(0)
        newText = Replace(strText, Chr(13), "' + Chr(10) + '")
        newText = Replace(newText, Chr(10), "")
        RPTHeader = newText
    Else
        RPTHeader = ""
    End If
    
    Controls.Remove "MM"

End Function

Private Sub NwConsent()
Dim i As Integer
Dim QRY As String
    For i = 0 To 11
        Mn(i).Enabled = False
    Next i
    DBCombo1.Enabled = False
    If IsDate(P(6).Text) = True Then
        If CDate(P(6).Text) = Date Then
            If Cbx(110).Text <> "" Then
                QRY = "RUT='" & Dt(0).Recordset.Fields("RUT") & "' AND FchRserv=" & Chr(35) & Format(P(6).Text, "mm-dd-yyyy") & Chr(35)
                Dt(7).Recordset.FindFirst QRY
                If Dt(7).Recordset.NoMatch = True Then
                    Dt(7).Recordset.AddNew
                    Chk(1).Value = 1
                    Dt(7).Recordset.Fields("RUT") = Dt(0).Recordset.Fields("RUT")
                    Dt(7).Recordset.Fields("N") = Dt(7).Recordset.RecordCount + 1
                    P(154).Text = P(6).Text
                    P(155).Text = P(7).Text
                    P(156).Text = P(8).Text
                    P(157).Text = Cbx(110).Text
                Else
                    Call Msgs("La paciente ya tiene un consentimiento para Hoy", T1, MsgAcpt, MsGen, Lead)
                    Chk(0).Value = 0
                    Exit Sub
                End If
            Else
                If Cbx(6).Text <> "" Then Cbx(110).Text = Cbx(6).Text
                QRY = "RUT='" & Dt(0).Recordset.Fields("RUT") & "' AND FchRserv=" & Chr(35) & Format(P(6).Text, "mm-dd-yyyy") & Chr(35)
                Dt(7).Recordset.FindFirst QRY
                If Dt(7).Recordset.NoMatch = True Then
                    Dt(7).Recordset.AddNew
                    Chk(1).Value = 1
                    Dt(7).Recordset.Fields("RUT") = Dt(0).Recordset.Fields("RUT")
                    Dt(7).Recordset.Fields("N") = Dt(7).Recordset.RecordCount + 1
                    P(154).Text = P(6).Text
                    P(155).Text = P(7).Text
                    P(156).Text = P(8).Text
                    P(157).Text = Cbx(110).Text
                Else
                    Call Msgs("La paciente ya tiene un consentimiento para Hoy", T1, MsgAcpt, MsGen, Lead)
                    Chk(0).Value = 0
                    Exit Sub
                End If
            End If
            DIV(20).Visible = True
        Else
            Call Msgs("No se puede consentir un exámen ya relizado" & vbCrLf & "además la paciente no tiene reserva para hoy", T1, MsgAcpt, MsGen, Lead)
            Chk(0).Value = 0
        End If
    ElseIf divAct = 5 Then
        If CDate(P(13).Text) = Date Then
            Call Msgs("La paciente No tiene Reserva de Atención para Hoy", T1, MsgAcpt, MsGen, Lead)
        Else
            Call Msgs("No se puede consentir un exámen sin Reserva de Atención", T1, MsgAcpt, MsGen, Lead)
        End If
        Chk(0).Value = 0
    ElseIf divAct = 9 Then
        If CDate(P(46).Text) = Date Then
            Call Msgs("La paciente No tiene Reserva de Atención para Hoy", T1, MsgAcpt, MsGen, Lead)
        Else
            Call Msgs("No se puede consentir un exámen sin Reserva de Atención", T1, MsgAcpt, MsGen, Lead)
        End If
        Chk(0).Value = 0
    ElseIf divAct = 17 Then
        If CDate(P(120).Text) = Date Then
            Call Msgs("La paciente No tiene Reserva de Atención para Hoy", T1, MsgAcpt, MsGen, Lead)
        Else
            Call Msgs("No se puede consentir un exámen sin Reserva de Atención", T1, MsgAcpt, MsGen, Lead)
        End If
        Chk(0).Value = 0
    End If
    
End Sub

Private Sub AjustaFUR(ByVal Eco As Integer)
Dim A As Double
Dim Fncn As New Exe
Dim B As Double

    DtBse(1).RecordSource = Rs2 + Dt(0).Recordset.Fields(0) + RsEnd
    DtBse(1).Refresh
    If CBool(DtBse(1).Recordset.Fields("C")) = True Then Exit Sub

    Select Case Eco
        Case 0
            If IsNumeric(P(14).Text) = True Then
                If (P(14).Text > 11) And (IsNumeric(P(44).Text) = True) Then
                    B = ((Fncn.IntEG(P(44).Text) * 7) + ((CDbl(P(44).Text) - Fncn.IntEG(P(44).Text)) * 10))
                    A = (((Fncn.IntEG(P(14).Text) * 7) + ((CDbl(P(14).Text) - Fncn.IntEG(P(14).Text)) * 10)) - B)
                    If Abs(A) > 6 Then
                        Call Msgs("FUR fuera de rango según ecografía" + vbCrLf + "¿Desea ajustar la FUR (" & Abs(A) & " días de diferencia)?", T1, MsgSN)
                        MtvMsg = FUR
                    Else
                        MsgBox "Ingrese biometrías para ajustar FUR"
                    End If
                Else
                    If IsNumeric(P(27).Text) = True Then B = P(27).Text
                    If IsNumeric(B) Then
                        If B > 1 And B < 56 Then
                            B = ((Fncn.IntEG(P(28).Text) * 7) + ((CDbl(P(28).Text) - Fncn.IntEG(P(28).Text)) * 10))
                        Else
                            If IsNumeric(P(44).Text) = True Then
                                B = ((Fncn.IntEG(P(44).Text) * 7) + ((CDbl(P(44).Text) - Fncn.IntEG(P(44).Text)) * 10))
                            ElseIf IsNumeric(P(24).Text) Then
                                B = ((Fncn.IntEG(P(24).Text) * 7) + ((CDbl(P(24).Text) - Fncn.IntEG(P(24).Text)) * 10))
                            End If
                        End If
                    Else
                        If IsNumeric(P(44).Text) = True Then
                            B = ((Fncn.IntEG(P(44).Text) * 7) + ((CDbl(P(44).Text) - Fncn.IntEG(P(44).Text)) * 10))
                        ElseIf IsNumeric(P(24).Text) Then
                            B = ((Fncn.IntEG(P(24).Text) * 7) + ((CDbl(P(24).Text) - Fncn.IntEG(P(24).Text)) * 10))
                            End If
                    End If
                    A = (((Fncn.IntEG(P(14).Text) * 7) + ((CDbl(P(14).Text) - Fncn.IntEG(P(14).Text)) * 10)) - B)
                    If Abs(A) > 3 Then
                        Call Msgs("FUR fuera de rango según ecografía" + vbCrLf + "¿Desea ajustar la FUR?", T1, MsgSN)
                        MtvMsg = FUR
                    Else
                        DtBse(1).RecordSource = Rs2 + Dt(0).Recordset.Fields(0) + RsEnd
                        DtBse(1).Refresh
                        DtBse(1).Recordset.Edit
                        DtBse(1).Recordset.Fields("C") = True
                        DtBse(1).Recordset.Update
                    End If
                End If
            End If
        Case 1
            DIV(8).Enabled = False
            If CDbl(P(62).Text) <= 20 Then
                A = Fncn.IntEG(P(47).Text) * 7
                A = A + ((CDbl(P(47).Text) - Fncn.IntEG(P(47).Text)) * 10)
                A = A - (Fncn.IntEG(P(62).Text) * 7)
                A = A - ((CDbl(P(62).Text) - Fncn.IntEG(P(62).Text)) * 10)
                If Abs(A) > 7 Then
                    Call Msgs("FUR fuera de rango según ecografía" + vbCrLf + "¿Desea ajustar la FUR (" & Abs(A) & " días de diferencia)?", T1, MsgSN)
                    MtvMsg = FUR
                Else
                    DtBse(1).RecordSource = Rs2 + Dt(0).Recordset.Fields(0) + RsEnd
                    DtBse(1).Refresh
                    DtBse(1).Recordset.Edit
                    DtBse(1).Recordset.Fields("C") = True
                    DtBse(1).Recordset.Update
                End If
            ElseIf CDbl(P(62).Text) <= 30 Then
                A = Fncn.IntEG(P(47).Text) * 7
                A = A + ((CDbl(P(47).Text) - Fncn.IntEG(P(47).Text)) * 10)
                A = A - (Fncn.IntEG(P(62).Text) * 7)
                A = A - ((CDbl(P(62).Text) - Fncn.IntEG(P(62).Text)) * 10)
                If Abs(A) > 9 Then
                    Call Msgs("FUR fuera de rango según ecografía" + vbCrLf + "¿Desea ajustar la FUR(" & Abs(A) & " días de diferencia)?", T1, MsgSN)
                    MtvMsg = FUR
                Else
                    DtBse(1).RecordSource = Rs2 + Dt(0).Recordset.Fields(0) + RsEnd
                    DtBse(1).Refresh
                    DtBse(1).Recordset.Edit
                    DtBse(1).Recordset.Fields("C") = True
                    DtBse(1).Recordset.Update
                End If
            ElseIf CDbl(P(62).Text) <= 42 Then
                A = Fncn.IntEG(P(47).Text) * 7
                A = A + ((CDbl(P(47).Text) - Fncn.IntEG(P(47).Text)) * 10)
                A = A - (Fncn.IntEG(P(62).Text) * 7)
                A = A - ((CDbl(P(62).Text) - Fncn.IntEG(P(62).Text)) * 10)
                If Abs(A) > 13 Then
                    Call Msgs("FUR fuera de rango según ecografía" + vbCrLf + "¿Desea ajustar la FUR(" & Abs(A) & " días de diferencia)?", T1, MsgSN)
                    MtvMsg = FUR
                Else
                    DtBse(1).RecordSource = Rs2 + Dt(0).Recordset.Fields(0) + RsEnd
                    DtBse(1).Refresh
                    DtBse(1).Recordset.Edit
                    DtBse(1).Recordset.Fields("C") = True
                    DtBse(1).Recordset.Update
                End If
            End If
    End Select
    
End Sub

Private Sub PerdRprod(ByVal Guardar As Boolean)
Dim cnAccess As New ADODB.Connection
Dim rsAccess As ADODB.Recordset
Dim QRY(6) As String
Dim ValDB(4) As String
Dim ValUI(4) As String
Dim CMn(5) As String
Dim A As Integer
Dim N As Integer
Dim lngKt As Long

    CMn(0) = "embectop"
    CMn(1) = "abtomenos"
    CMn(3) = "anembmenos"
    CMn(4) = "abtomas"
    CMn(5) = "anembmas"
    N = 1
    QRY(6) = "SET "
            
    cnAccess.Provider = Provider_Access
    cnAccess.Open "Data Source=" + DB(0)

    Set rsAccess = New ADODB.Recordset
    
    QRY(0) = Rs1 + Dt(0).Recordset.Fields(0) + RsEnd
    rsAccess.Open QRY(0), cnAccess
    If Not rsAccess.EOF Then rsAccess.MoveFirst
    
    If (IsNull(rsAccess.Fields(CMn(0)))) = False Then ValDB(0) = rsAccess.Fields(CMn(0))
    If (IsNull(rsAccess.Fields(CMn(1)))) = False Then ValDB(1) = rsAccess.Fields(CMn(1))
    If (IsNull(rsAccess.Fields(CMn(3)))) = False Then ValDB(2) = rsAccess.Fields(CMn(3))
    If (IsNull(rsAccess.Fields(CMn(4)))) = False Then ValDB(3) = rsAccess.Fields(CMn(4))
    If (IsNull(rsAccess.Fields(CMn(5)))) = False Then ValDB(4) = rsAccess.Fields(CMn(5))
    
    rsAccess.Close
                
    Select Case Guardar
        Case False
        
            If ValDB(0) = "Si" Then
                Optn(1).Value = True
            ElseIf ValDB(0) = "No" Then
                Optn(0).Value = True
            Else
                Optn(0).Value = True
                Optn(0).Value = False
            End If
            If ValDB(1) = "Si" Then
                Optn(3).Value = True
                If ValDB(2) = "Si" Then
                    Optn(5).Value = True
                ElseIf ValDB(2) = "No" Then
                    Optn(4).Value = True
                Else
                    Optn(4).Value = True
                    Optn(4).Value = False
                End If
            ElseIf ValDB(1) = "No" Then
                Optn(2).Value = True
            Else
                Optn(2).Value = True
                Optn(2).Value = False
            End If
            If ValDB(3) = "Si" Then
                Optn(7).Value = True
                If ValDB(4) = "Si" Then
                    Optn(9).Value = True
                ElseIf ValDB(4) = "No" Then
                    Optn(8).Value = True
                Else
                    Optn(9).Value = True
                    Optn(9).Value = False
                End If
            ElseIf ValDB(3) = "No" Then
                Optn(6).Value = True
            Else
                Optn(6).Value = True
                Optn(6).Value = False
            End If
            
        Case True
    
            If Optn(1).Value = True Then
                ValUI(0) = "Si"
            ElseIf Optn(0).Value = True Then
                ValUI(0) = "No"
            End If
            If Optn(3).Value = True Then
                ValUI(1) = "Si"
                If Optn(5).Value = True Then
                    ValUI(2) = "Si"
                ElseIf Optn(4).Value = True Then
                    ValUI(2) = "No"
                End If
            ElseIf Optn(2).Value = True Then
                ValUI(1) = "No"
            End If
            If Optn(7).Value = True Then
                ValUI(3) = "Si"
                If Optn(9).Value = True Then
                    ValUI(4) = "Si"
                ElseIf Optn(8).Value = True Then
                    ValUI(4) = "No"
                End If
            ElseIf Optn(6).Value = True Then
                ValUI(3) = "No"
            End If
            
            QRY(0) = "UPDATE Pacientes "
            
            For A = 0 To 4
                If IsNull(ValUI(A)) = False Then If ValUI(A) <> ValDB(A) Then QRY(A + 1) = CMn(A) + " = '" + ValUI(A) + "'"
            Next A
            
            For A = 1 To 5
                If Len(QRY(A)) > 1 Then
                    QRY(N) = QRY(A) + ","
                    N = N + 1
                End If
            Next A
            N = N - 1
            QRY(N) = Replace(QRY(N), ",", "")
            
            For A = 1 To N
                QRY(6) = QRY(6) + " " + QRY(A)
            Next A
            If QRY(6) <> "SET " Then
                QRY(0) = QRY(0) + QRY(6) + " where RUT='" + Dt(0).Recordset.Fields(0) + RsEnd
                cnAccess.Execute QRY(0), lngKt
            End If

    End Select

    cnAccess.Close
    Set rsAccess = Nothing
    
End Sub

Private Sub dtRpt6()
Dim cnAccess As New ADODB.Connection
Dim rsAccess As ADODB.Recordset
Dim QRY As String
Dim lngKt As Long
Dim A As Integer

    cnAccess.Provider = Provider_Access
    cnAccess.Open "Data Source=" + DB(1)

    Set rsAccess = New ADODB.Recordset
    
    QRY = "SELECT * FROM grafpsoftal ;"
    rsAccess.Open QRY, cnAccess
    
    If Not rsAccess.EOF Then rsAccess.MoveFirst

   
    For A = 20 To 40
        QRY = "UPDATE grafpsoftal SET Val = '" & Str$("0") & "' WHERE EG= " & A
        cnAccess.Execute QRY, lngKt
    Next A
    
    rsAccess.Close
    
    QRY = "SELECT Val FROM grafca ;"
    rsAccess.Open QRY, cnAccess
    
    If Not rsAccess.EOF Then rsAccess.MoveFirst

    For A = 20 To 40
        QRY = "UPDATE grafca SET Val = '" & Str$("0") & "' WHERE EG= " & A
        cnAccess.Execute QRY, lngKt
    Next A
    
    rsAccess.Close
    
    QRY = "SELECT Val FROM grafccca ;"
    rsAccess.Open QRY, cnAccess
    
    If Not rsAccess.EOF Then rsAccess.MoveFirst

    For A = 20 To 40
        QRY = "UPDATE grafccca SET Val = '" & Str$("0") & "' WHERE EG= " & A
        cnAccess.Execute QRY, lngKt
    Next A
    
    rsAccess.Close
    
    QRY = "SELECT Val FROM Liqbvm ;"
    rsAccess.Open QRY, cnAccess
    
    If Not rsAccess.EOF Then rsAccess.MoveFirst

    For A = 20 To 40
        QRY = "UPDATE Liqbvm SET Val = '" & Str$("0") & "' WHERE EG= " & A
        cnAccess.Execute QRY, lngKt
    Next A
    
    rsAccess.Close
    
    DtBse(3).DatabaseName = DB(1)
    DtBse(3).RecordSource = "SELECT eg3, pesofe, ca, ccca, BVM FROM ecografias where RUT='" + Dt(0).Recordset.Fields(0) + "';"
    DtBse(3).Refresh
    
    While DtBse(3).Recordset.EOF = False
        If DtBse(3).Recordset.Fields("eg3") > 20 Then
            QRY = "UPDATE grafpsoftal SET Val = '" & DtBse(3).Recordset.Fields("pesofe") & "' WHERE EG= " & Fix(DtBse(3).Recordset.Fields("eg3"))
            If IsNull(DtBse(3).Recordset.Fields("pesofe")) = False Then If IsNumeric(DtBse(3).Recordset.Fields("pesofe")) = True Then cnAccess.Execute QRY, lngKt
            If IsNull(DtBse(3).Recordset.Fields("ca")) = False Then If IsNumeric(DtBse(3).Recordset.Fields("ca")) = True Then cnAccess.Execute CStr("UPDATE grafca SET Val = '" & DtBse(3).Recordset.Fields("ca") & "' WHERE EG= " & Fix(DtBse(3).Recordset.Fields("eg3"))), lngKt
            If IsNull(DtBse(3).Recordset.Fields("ccca")) = False Then If IsNumeric(DtBse(3).Recordset.Fields("ccca")) = True Then cnAccess.Execute CStr("UPDATE grafccca SET Val = '" & DtBse(3).Recordset.Fields("ccca") & "' WHERE EG= " & Fix(DtBse(3).Recordset.Fields("eg3"))), lngKt
            If IsNull(DtBse(3).Recordset.Fields("BVM")) = False Then If IsNumeric(DtBse(3).Recordset.Fields("BVM")) = True Then cnAccess.Execute CStr("UPDATE Liqbvm SET Val = '" & DtBse(3).Recordset.Fields("BVM") & "' WHERE EG= " & Fix(DtBse(3).Recordset.Fields("eg3"))), lngKt
        End If
        DtBse(3).Recordset.MoveNext
    Wend

End Sub

Private Sub dtRpt7()
Dim cnAccess As New ADODB.Connection
Dim rsAccess As ADODB.Recordset
Dim QRY As String
Dim lngKt As Long
Dim A As Integer

    cnAccess.Provider = Provider_Access
    cnAccess.Open "Data Source=" + DB(1)

    Set rsAccess = New ADODB.Recordset
    
    QRY = "SELECT * FROM grafArtCM ;"
    rsAccess.Open QRY, cnAccess
    
    If Not rsAccess.EOF Then rsAccess.MoveFirst

   
    For A = 20 To 40
        QRY = "UPDATE grafArtCM SET Val = '" & Str$("0") & "' WHERE EG= " & A
        cnAccess.Execute QRY, lngKt
    Next A
    
    rsAccess.Close
    
    QRY = "SELECT Val FROM grafCrPl ;"
    rsAccess.Open QRY, cnAccess
    
    If Not rsAccess.EOF Then rsAccess.MoveFirst

    For A = 20 To 40
        QRY = "UPDATE grafCrPl SET Val = '" & Str$("0") & "' WHERE EG= " & A
        cnAccess.Execute QRY, lngKt
    Next A
    
    rsAccess.Close
    
    QRY = "SELECT Val FROM grafArtUt ;"
    rsAccess.Open QRY, cnAccess
    
    If Not rsAccess.EOF Then rsAccess.MoveFirst

    For A = 20 To 40
        QRY = "UPDATE grafArtUt SET Val = '" & Str$("0") & "' WHERE EG= " & A
        cnAccess.Execute QRY, lngKt
    Next A
    
    rsAccess.Close
    
    QRY = "SELECT Val FROM grafArtUm ;"
    rsAccess.Open QRY, cnAccess
    
    If Not rsAccess.EOF Then rsAccess.MoveFirst

    For A = 20 To 40
        QRY = "UPDATE grafArtUm SET Val = '" & Str$("0") & "' WHERE EG= " & A
        cnAccess.Execute QRY, lngKt
    Next A
    
    rsAccess.Close
    
    DtBse(3).DatabaseName = DB(1)
    DtBse(3).RecordSource = "SELECT eg, acmed, cmaumed, aumbilmed, promutmed FROM Doppler where RUT='" + Dt(0).Recordset.Fields(0) + "';"
    DtBse(3).Refresh
    
    While DtBse(3).Recordset.EOF = False
        If DtBse(3).Recordset.Fields("eg") > 20 Then
            QRY = "UPDATE grafArtCM SET Val = '" & DtBse(3).Recordset.Fields("acmed") & "' WHERE EG= " & Fix(DtBse(3).Recordset.Fields("eg"))
            If IsNull(DtBse(3).Recordset.Fields("acmed")) = False Then If IsNumeric(DtBse(3).Recordset.Fields("acmed")) = True Then cnAccess.Execute QRY, lngKt
            If IsNull(DtBse(3).Recordset.Fields("cmaumed")) = False Then If IsNumeric(DtBse(3).Recordset.Fields("cmaumed")) = True Then cnAccess.Execute CStr("UPDATE grafCrPl SET Val = '" & DtBse(3).Recordset.Fields("cmaumed") & "' WHERE EG= " & Fix(DtBse(3).Recordset.Fields("eg"))), lngKt
            If IsNull(DtBse(3).Recordset.Fields("promutmed")) = False Then If IsNumeric(DtBse(3).Recordset.Fields("promutmed")) = True Then cnAccess.Execute CStr("UPDATE grafArtUt SET Val = '" & DtBse(3).Recordset.Fields("promutmed") & "' WHERE EG= " & Fix(DtBse(3).Recordset.Fields("eg"))), lngKt
            If IsNull(DtBse(3).Recordset.Fields("aumbilmed")) = False Then If IsNumeric(DtBse(3).Recordset.Fields("aumbilmed")) = True Then cnAccess.Execute CStr("UPDATE grafArtUm SET Val = '" & DtBse(3).Recordset.Fields("aumbilmed") & "' WHERE EG= " & Fix(DtBse(3).Recordset.Fields("eg"))), lngKt
        End If
        DtBse(3).Recordset.MoveNext
    Wend

End Sub

Private Sub Menu(ByVal Activar As Boolean)
Dim i As Integer

    For i = 0 To 11
        Mn(i).Enabled = Activar
    Next i

End Sub

Private Sub dtRpt8()
Dim cnAccess As New ADODB.Connection
Dim rsAccess As ADODB.Recordset
Dim QRY As String
Dim lngKt As Long
Dim A As Integer

    cnAccess.Provider = Provider_Access
    cnAccess.Open "Data Source=" + DB(1)
    Set rsAccess = New ADODB.Recordset

    QRY = "SELECT Val FROM grafArtUt ;"
    rsAccess.Open QRY, cnAccess

    If Not rsAccess.EOF Then rsAccess.MoveFirst

    For A = 9 To 40
        QRY = "UPDATE grafArtUt SET Val = '" & Str$("0") & "' WHERE EG= " & A
        cnAccess.Execute QRY, lngKt
    Next A

    rsAccess.Close

    DtBse(3).DatabaseName = DB(1)
    DtBse(3).RecordSource = "SELECT * FROM ecografias where RUT='" + Dt(0).Recordset.Fields(0) + "';"
    DtBse(3).Refresh
    While DtBse(3).Recordset.EOF = False
        If DtBse(3).Recordset.Fields("eg3") > 9 Then
            If IsNull(DtBse(3).Recordset.Fields("promut")) = False Then If IsNumeric(DtBse(3).Recordset.Fields("promut")) = True Then cnAccess.Execute CStr("UPDATE grafArtUt SET Val = '" & DtBse(3).Recordset.Fields("promut") & "' WHERE EG= " & Fix(DtBse(3).Recordset.Fields("eg3"))), lngKt
        End If
        DtBse(3).Recordset.MoveNext
    Wend

End Sub


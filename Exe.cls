VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Exe"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
Option Compare Binary

Public Function Eg(ByVal FUR As Date, _
                   ByVal Fch As Date) As Double

Dim SemTmp As Integer

    SemTmp = DateDiff("d", FUR, Fch)
    Eg = ReEG(SemTmp)
    If Eg > 42 Then Eg = 42
                
End Function

Public Function EgToday(ByVal FUR As Date) As Double

Dim SemTmp As Double

    SemTmp = DateDiff("d", FUR, Date)
    EgToday = ReEG(SemTmp)
    If EgToday > 42 Then EgToday = 42
    
End Function

Public Function EgSaco(ByVal PromSaco As Integer) As Double
Dim Y(61) As Double
     
    If (PromSaco > 4) Or (PromSaco < 62) Then
        'Hellman y kobayashi
        Y(5) = 4.2: Y(6) = 4.3: Y(7) = 4.4: Y(8) = 4.5: Y(9) = 4.6: Y(10) = 5
        Y(11) = 5.1: Y(12) = 5.2: Y(13) = 5.3: Y(14) = 5.4: Y(15) = 5.5
        Y(16) = 5.6: Y(17) = 6: Y(18) = 6.1: Y(19) = 6.2: Y(20) = 6.3: Y(21) = 6.4
        Y(22) = 6.5: Y(23) = 6.6: Y(24) = 7: Y(25) = 7.1: Y(26) = 7.2: Y(27) = 7.3
        Y(28) = 7.4: Y(29) = 7.5: Y(30) = 7.6: Y(31) = 8: Y(32) = 8.1: Y(33) = 8.2
        Y(34) = 8.3: Y(35) = 8.4: Y(36) = 8.5: Y(37) = 8.6: Y(38) = 9: Y(39) = 9.1
        Y(40) = 9.2: Y(41) = 9.3: Y(42) = 9.4: Y(43) = 9.5: Y(44) = 9.6
        Y(45) = 9.6: Y(46) = 10: Y(47) = 10.1: Y(48) = 10.2: Y(49) = 10.3
        Y(50) = 10.4: Y(51) = 10.5: Y(52) = 11: Y(53) = 11.1: Y(54) = 11.2
        Y(55) = 11.3: Y(56) = 11.4: Y(57) = 11.5: Y(58) = 11.6: Y(59) = 12
        Y(60) = 12.1: Y(61) = 12.2
        EgSaco = Y(PromSaco)
    Else
        EgSaco = 0
    End If

End Function

Public Function EgLCN(ByVal valLCN As Integer) As Double
Dim LCN(1, 63) As Double
Dim ValLCN1 As Double
Dim i As Integer

    If valLCN < 90 Then
        
    ValLCN1 = valLCN / 10
    LCN(0, 0) = 0.09:   LCN(0, 1) = 0.2:   LCN(0, 2) = 0.37
    LCN(0, 3) = 0.57:   LCN(0, 4) = 0.7:   LCN(0, 5) = 0.8
    LCN(0, 6) = 0.9:    LCN(0, 7) = 1:     LCN(0, 8) = 1.1
    LCN(0, 9) = 1.12:   LCN(0, 10) = 1.13: LCN(0, 11) = 1.18
    LCN(0, 12) = 1.27:  LCN(0, 13) = 1.38: LCN(0, 14) = 1.47
    LCN(0, 15) = 1.58:  LCN(0, 16) = 1.65: LCN(0, 17) = 1.72
    LCN(0, 18) = 1.87:  LCN(0, 19) = 1.96: LCN(0, 20) = 2.05
    LCN(0, 21) = 2.18:  LCN(0, 22) = 2.25: LCN(0, 23) = 2.35
    LCN(0, 24) = 2.54:  LCN(0, 25) = 2.62: LCN(0, 26) = 2.7
    LCN(0, 27) = 2.9:   LCN(0, 28) = 3.08: LCN(0, 29) = 3.16
    LCN(0, 30) = 3.4:   LCN(0, 31) = 3.51: LCN(0, 32) = 3.57
    LCN(0, 33) = 3.76:  LCN(0, 34) = 3.85: LCN(0, 35) = 4.05
    LCN(0, 36) = 4.18:  LCN(0, 37) = 4.46: LCN(0, 38) = 4.55
    LCN(0, 39) = 4.66:  LCN(0, 40) = 4.88: LCN(0, 41) = 5.07
    LCN(0, 42) = 5.29:  LCN(0, 43) = 5.46: LCN(0, 44) = 5.66
    LCN(0, 45) = 5.87:  LCN(0, 46) = 6.01: LCN(0, 47) = 6.27
    LCN(0, 48) = 6.37:  LCN(0, 49) = 6.65: LCN(0, 50) = 6.77
    LCN(0, 51) = 7.08:  LCN(0, 52) = 7.19: LCN(0, 53) = 7.39
    LCN(0, 54) = 7.57:  LCN(0, 55) = 7.68: LCN(0, 56) = 7.98
    LCN(0, 57) = 8.09:  LCN(0, 58) = 8.35: LCN(0, 59) = 8.48
    LCN(0, 60) = 8.56:  LCN(0, 61) = 8.76: LCN(0, 62) = 8.88
    LCN(0, 63) = 9.09

    LCN(1, 0) = 0:      LCN(1, 1) = 5.5:   LCN(1, 2) = 6
    LCN(1, 3) = 6.2:    LCN(1, 4) = 6.4:   LCN(1, 5) = 6.5
    LCN(1, 6) = 6.6:    LCN(1, 7) = 7.1:   LCN(1, 8) = 7.1
    LCN(1, 9) = 7.1:    LCN(1, 10) = 7.2:  LCN(1, 11) = 7.3
    LCN(1, 12) = 7.4:   LCN(1, 13) = 7.5:  LCN(1, 14) = 7.6
    LCN(1, 15) = 8:     LCN(1, 16) = 8.1:  LCN(1, 17) = 8.2
    LCN(1, 18) = 8.3:   LCN(1, 19) = 8.4:  LCN(1, 20) = 8.5
    LCN(1, 21) = 8.6:   LCN(1, 22) = 9:    LCN(1, 23) = 9.1
    LCN(1, 24) = 9.2:   LCN(1, 25) = 9.3:  LCN(1, 26) = 9.4
    LCN(1, 27) = 9.5:   LCN(1, 28) = 10:   LCN(1, 29) = 10.1
    LCN(1, 30) = 10.2:  LCN(1, 31) = 10.3: LCN(1, 32) = 10.4
    LCN(1, 33) = 10.5:  LCN(1, 34) = 10.6: LCN(1, 35) = 11
    LCN(1, 36) = 11.1:  LCN(1, 37) = 11.2: LCN(1, 38) = 11.3
    LCN(1, 39) = 11.4:  LCN(1, 40) = 11.5: LCN(1, 41) = 11.6
    LCN(1, 42) = 12:    LCN(1, 43) = 12.1: LCN(1, 44) = 12.2
    LCN(1, 45) = 12.3:  LCN(1, 46) = 12.4: LCN(1, 47) = 12.5
    LCN(1, 48) = 12.6:  LCN(1, 49) = 13:   LCN(1, 50) = 13.1
    LCN(1, 51) = 13.2:  LCN(1, 52) = 13.3: LCN(1, 53) = 13.4
    LCN(1, 54) = 13.5:  LCN(1, 55) = 13.6: LCN(1, 56) = 14
    LCN(1, 57) = 14.1:  LCN(1, 58) = 14.2: LCN(1, 59) = 14.3
    LCN(1, 60) = 14.4:  LCN(1, 61) = 14.5: LCN(1, 62) = 14.6
    LCN(1, 63) = 15

        For i = 1 To 63
            If LCN(0, i) >= ValLCN1 Then
               EgLCN = LCN(1, i)
               i = 63
            End If
        Next i

    Else
        MsgBox ("El Valor debe ser menor a 9 cms")
        EgLCN = 0
    End If
        
End Function

Public Function EgBiom(ByVal DBP As Integer, _
                        ByVal CC As Integer, _
                        CA As Integer, _
                        LF As Integer) As Double
                        
Const N1 As Double = 9.413641651
Const N2 As Double = 1.004137705
Const N3 As Double = 6.457851324
Const N4 As Double = 0.0919705147
Const N5 As Double = 11.20178254
Const N6 As Double = 1.01704237
Const N7 As Double = 9.468544279
Const N8 As Double = 1.015432196

Dim cont As Integer
Dim N(3) As Double

cont = 0

    If IsNumeric(DBP) Then
        N(3) = N7 * N8 ^ DBP
        cont = cont + 1
    End If

    If IsNumeric(CC) Then
        N(0) = N1 * N2 ^ CC
        cont = cont + 1
    End If

    If IsNumeric(CA) Then
        N(1) = N3 + N4 * CA
        cont = cont + 1
    End If

    If IsNumeric(LF) Then
        N(2) = N5 * N6 ^ LF
        cont = cont + 1
    End If

    EgBiom = (N(0) + N(1) + N(2) + N(3)) / cont
    
    EgBiom = CDbl(Fix(EgBiom) & "," & Math.Round((EgBiom - Fix(EgBiom)) * 7))

End Function

Public Function FPP(ByVal FUR As Date) As Date

    FPP = DateAdd("d", 280, FUR)

End Function

Public Function IMC(ByVal Peso As Integer, _
                    ByVal Talla As Integer) As Double

    IMC = FormatNumber(Peso / Talla ^ 2 * 10000, 1)

End Function

Public Function EstNutr(ByVal IMC As Double) As String

    Select Case IMC
        Case Is < 20
            EstNutr = "Enflaquecida"
        Case Is <= 25
            EstNutr = "Normal"
        Case Is <= 30
            EstNutr = "Sobrepeso"
    Case Else
        EstNutr = "Obesidad"
    End Select
    
End Function

Public Function EstNutrEg(ByVal IMC As Double, _
                          ByVal Eg As Double) As String

Dim Y1(37) As Double
Dim Y2(37) As Double
Dim Y3(37) As Double

    If (Eg < 9) Or (Eg > 42) Then
        EstNutrEg = 0
    Else
        Y1(0) = 19.8: Y2(0) = 24.7: Y3(0) = 29.9
        Y1(1) = 19.9: Y2(1) = 24.8: Y3(1) = 29.9
        Y1(2) = 20: Y2(2) = 24.9: Y3(2) = 30
        Y1(3) = 20.1: Y2(3) = 25: Y3(3) = 30
        Y1(4) = 20.2: Y2(4) = 25.1: Y3(4) = 30.1
        Y1(5) = 20.3: Y2(5) = 25.2: Y3(5) = 30.2
        Y1(6) = 20.4: Y2(6) = 25.3: Y3(6) = 30.3
        Y1(7) = 20.5: Y2(7) = 25.4: Y3(7) = 30.3
        Y1(8) = 20.7: Y2(8) = 25.6: Y3(8) = 30.4
        Y1(9) = 20.8: Y2(9) = 25.7: Y3(9) = 30.5
        Y1(10) = 20.9: Y2(10) = 25.8: Y3(10) = 30.6
        Y1(11) = 21.1: Y2(11) = 25.9: Y3(11) = 30.7
        Y1(12) = 21.2: Y2(12) = 26: Y3(12) = 30.8
        Y1(13) = 21.3: Y2(13) = 26.1: Y3(13) = 30.9
        Y1(14) = 21.5: Y2(14) = 26.2: Y3(14) = 30.9
        Y1(15) = 21.6: Y2(15) = 26.3: Y3(15) = 31
        Y1(16) = 21.8: Y2(16) = 26.4: Y3(16) = 31.1
        Y1(17) = 21.9: Y2(17) = 26.6: Y3(17) = 31.2
        Y1(18) = 22.1: Y2(18) = 26.8: Y3(18) = 31.3
        Y1(19) = 22.3: Y2(19) = 26.9: Y3(19) = 31.5
        Y1(20) = 22.5: Y2(20) = 27: Y3(20) = 31.6
        Y1(21) = 22.7: Y2(21) = 27.2: Y3(21) = 31.7
        Y1(22) = 22.8: Y2(22) = 27.3: Y3(22) = 31.8
        Y1(23) = 23: Y2(23) = 27.5: Y3(23) = 31.9
        Y1(24) = 23.2: Y2(24) = 27.6: Y3(24) = 32
        Y1(25) = 23.4: Y2(25) = 27.8: Y3(25) = 32.1
        Y1(26) = 23.5: Y2(26) = 27.9: Y3(26) = 32.2
        Y1(27) = 23.7: Y2(27) = 28: Y3(27) = 32.3
        Y1(28) = 23.9: Y2(28) = 28.1: Y3(28) = 32.4
        Y1(29) = 24: Y2(29) = 28.3: Y3(29) = 32.5
        Y1(30) = 24.2: Y2(30) = 28.4: Y3(30) = 32.6
        Y1(31) = 24.3: Y2(31) = 28.5: Y3(31) = 32.7
        Y1(32) = 24.5: Y2(32) = 28.7: Y3(32) = 32.8
        Y1(33) = 24.6: Y2(33) = 28.8: Y3(33) = 32.9
        Y1(34) = 24.8: Y2(34) = 28.9: Y3(34) = 33
        Y1(35) = 25: Y2(35) = 29.1: Y3(35) = 33.1
        Y1(36) = 25.1: Y2(36) = 29.2: Y3(36) = 33.2
        Y1(37) = 25.1: Y2(37) = 29.2: Y3(37) = 33.2
        
        Eg = IntEG(Eg)
        Select Case IMC
            Case Is < Y1(Eg - 4)
            EstNutrEg = "Enflaquecida"
            Case Is < Y2(Eg - 4)
                EstNutrEg = "Normal"
            Case Is < Y3(Eg - 4)
                EstNutrEg = "Sobrepeso"
        Case Else
            EstNutrEg = "Obesidad"
        End Select
    End If
    
End Function

Public Function PctBVM(ByVal BVM As Integer, _
                       ByVal Eg As Double) As Integer

    If (Eg < 16) Or (Eg > 42) Then
        PctBVM = 0
    Else

        Eg = IntEG(Eg)
        PctBVM = CInt(90 / (pct95BVM(Eg) - pct5BVM(Eg)) * (BVM - pct5BVM(Eg)) + 3)
    End If

End Function

Public Function PctBVMTxt(ByVal BVM As Integer, _
                          ByVal Eg As Double) As String

    If (Eg < 16) Or (Eg > 42) Then
        PctBVMTxt = "no corresp."
    Else
    
        Eg = IntEG(Eg)
        If BVM < pct5BVM(Eg) Then
            PctBVMTxt = "disminuido"
        ElseIf BVM > pct95BVM(Eg) Then
            PctBVMTxt = "aumentado"
        Else
            PctBVMTxt = "normal"
        End If
    End If

End Function

Public Function PctCA(ByVal CA As Integer, _
                      ByVal Eg As Double) As Integer

    If (Eg < 12) Or (Eg > 42) Then
        PctCA = 0
    Else

        Eg = IntEG(Eg)
        PctCA = CInt((95 / (pct97CA(Eg) - pct3CA(Eg))) * (CA - pct3CA(Eg)) + 3)
    End If

End Function

Public Function PctCC(ByVal CC As Integer, _
                      ByVal Eg As Double) As Integer

    If (Eg < 12) Or (Eg > 42) Then
        PctCC = 0
    Else
    
        Eg = IntEG(Eg)
        PctCC = CInt((95 / (pct97CC(Eg) - pct3CC(Eg))) * (CC - pct3CC(Eg)) + 3)
    End If

End Function

Public Function PctCcCa(ByVal RelCcCa As Double, _
                        ByVal Eg As Double) As Long

    If (Eg < 15) Or (Eg > 42) Then
        PctCcCa = 0
    Else
        Eg = IntEG(Eg)
        PctCcCa = 95 / (pct97CcCa(Eg) - pct3CcCa(Eg))
        PctCcCa = (PctCcCa * (RelCcCa - pct3CcCa(Eg))) + 3
    End If
    
End Function

Public Function RngoCcCa(Eg As Double) As String

    If (Eg < 15) Or (Eg > 42) Then
        RngoCcCa = 0
    Else

        Eg = IntEG(Eg)
        RngoCcCa = pct3CcCa(Eg) & " - " & pct97CcCa(Eg)
    End If

End Function

Public Function PctCM(ByVal CM As Double, _
                      Eg As Double) As Integer

    If (Eg < 20) Or (Eg > 40) Then
        PctCM = 0
    Else

        Eg = IntEG(Eg)
        PctCM = 90 / (CM2(Eg) - CM1(Eg))
        PctCM = PctCM * (CM - CM1(Eg)) + 5

    End If
        
End Function

Public Function PctDV(ByVal DV As Double, _
                      Eg As Double) As Integer

    If (Eg < 20) Or (Eg > 40) Then
        PctDV = 0
    Else

        Eg = IntEG(Eg)
        PctDV = 90 / (DV2(Eg) - DV1(Eg))
        PctDV = PctDV * (DV - DV1(Eg)) + 5

    End If
    
End Function

Public Function PctILA(ByVal ILA As Integer, _
                       ByVal Eg As Double) As Integer

    If (Eg < 16) Or (Eg > 42) Then
        PctILA = 0
    Else

        Eg = IntEG(Eg)
        PctILA = CInt((90 / (pct95ILA(Eg) - pct5ILA(Eg))) * _
                (ILA - pct5ILA(Eg)) + 5)

    End If
    
End Function

Public Function PctLF(ByVal LF As Integer, _
                      ByVal Eg As Double) As Integer

    If (Eg < 12) Or (Eg > 42) Then
        PctLF = 0
    Else

        Eg = IntEG(Eg)
        PctLF = (95 / (pct97LF(Eg) - pct3LF(Eg))) * (LF - pct3LF(Eg)) + 3

    End If

End Function

Public Function PctPsoFtal(ByVal Peso As Integer, _
                            ByVal Eg As Double) As Integer

    If (Eg < 15) Or (Eg > 42) Then
        PctPsoFtal = 0
    Else

        Eg = IntEG(Eg)
        PctPsoFtal = (80 / (pct90PsoFtal(Eg) - pct10PsoFtal(Eg))) _
                      * (Peso - pct10PsoFtal(Eg)) + 10

    End If

End Function

Public Function RngoPsoFtal(Eg As Double) As String

    If (Eg < 15) Or (Eg > 42) Then
        RngoPsoFtal = 0
    Else
        Eg = IntEG(Eg)
        RngoPsoFtal = pct90PsoFtal(Eg) & " - " & pct10PsoFtal(Eg)
    End If

End Function


Public Function PctUM(ByVal UM As Double, _
                      Eg As Double) As Integer

    If (Eg < 20) Or (Eg > 40) Then
        PctUM = 0
    Else

        Eg = IntEG(Eg)
        PctUM = 90 / (UM2(Eg) - UM1(Eg))
        PctUM = PctUM * (UM - UM1(Eg)) + 5

    End If
    
End Function

Public Function PctUt(ByVal UT As Double, _
                      Eg As Double) As Integer

    If (Eg < 10) Or (Eg > 42) Then
        PctUt = 0
    Else

        Eg = IntEG(Eg)
        PctUt = 90 / (UT2(Eg) - UT1(Eg))
        PctUt = PctUt * (UT - UT1(Eg)) + 5

    End If

End Function

Public Function PctCB(ByVal CB As Double, _
                      Eg As Double) As Integer

    If (Eg < 15) Or (Eg > 39) Then
        PctCB = 0
    Else

        Eg = IntEG(Eg)
        PctCB = 90 / (pct90Cb(Eg) - pct10Cb(Eg))
        PctCB = PctCB * (CB - pct10Cb(Eg)) + 5

    End If

End Function

Public Function PtCma() As Integer

Dim Medio As Double
    
    Medio = 1 / 2
    If Medio = "0,5" Then PtCma = 44
    If Medio = "0.5" Then PtCma = 46
    
End Function

Public Function RngoCM(Eg As Double) As String

    If (Eg < 20) Or (Eg > 42) Then
        RngoCM = ""
    Else

        Eg = IntEG(Eg)
        RngoCM = CM1(Eg) & " - " & CM2(Eg)

    End If
        
End Function

Public Function RngoDV(Eg As Double) As String

    If (Eg < 20) Or (Eg > 40) Then
        RngoDV = ""
    Else

        Eg = IntEG(Eg)
        RngoDV = DV1(Eg) & " - " & DV2(Eg)

    End If

End Function

Public Function RngoUM(Eg As Double) As String

    If (Eg < 20) Or (Eg > 42) Then
        RngoUM = ""
    Else

        Eg = IntEG(Eg)
        RngoUM = UM1(Eg) & " - " & UM2(Eg)

    End If

End Function

Public Function RngoUt(Eg As Double) As String

    If (Eg < 10) Or (Eg > 42) Then
        RngoUt = ""
    Else

        Eg = IntEG(Eg)
        RngoUt = UT1(Eg) & " - " & UT2(Eg)

    End If

End Function

Public Function TllFtal(ByVal LF As Integer) As Double

    TllFtal = FormatNumber(LF * 0.55 + 9.6, 1)
                
End Function
Public Function ValCC(ByVal DOF As Integer, _
                      ByVal DBP As Integer) As Integer
Const delta As Double = 1.62

    ValCC = CInt((DOF + DBP) * delta)

End Function

Public Function ValCA(ByVal DAAP As Integer, _
                      ByVal DAT As Integer) As Integer
Const delta As Double = 1.57

    ValCA = CInt((DAAP + DAT) * delta)

End Function

Public Function ValDAAP_DAT(ByVal CA As Integer) As Integer
Const delta As Double = 3.14

    ValDAAP_DAT = CA / 3.14 + 0.5

End Function

Public Function ValDOF(ByVal CC As Integer, _
                       ByVal DBP As Integer) As Integer
Const delta As Double = 1.62

    ValDOF = CInt((CC / delta) - (DBP + 0.5))

End Function

Public Function PsoHadlock(ByVal CC As Integer, _
                       ByVal CA As Integer) As Long
    PsoHadlock = CLng(10 ^ (1.182 + 0.00273 * Int(CC) + 0.007057 * Int(CA) - 0.0000063 * Int(CA) ^ 2 - 0.000002184 * Int(CC) * Int(CA)))
End Function

Function IntEG(ByVal Eg As Double) As Integer

    If Int(Eg) > Eg Then IntEG = Int(Eg) - 1
    If Int(Eg) < Eg Then IntEG = Int(Eg)
    If Int(Eg) = Eg Then IntEG = Int(Eg)
    
End Function

Function ReEG(ByVal Eg As Double) As Double
Dim Val As Double
Dim dias As Integer
    'obtengo los dias que sobra al dividir los dias de eg por 7
    dias = Eg Mod 7
    'resto los dias que sobran a los dias enteros de las semanas
    Val = Eg - dias
    'obtengo las semanas enteras
    Val = Val / 7
    'averiguo si los dias que sobran son mayor a 7 (1 semana)
    If dias > 7 Then
        'sumo una semana
        Val = Val + 1
        'le resto una semana
        dias = dias - 7
        'le sumo los dias como decimales
        Val = Val + CDbl(dias / 10)
    Else
        Val = Val + CDbl(dias / 10)
    End If
    
    ReEG = Val
    
End Function

Public Function PctLrgLF(ByVal Eg As Double, ByVal Med As Integer) As Double

     Dim Pct5LLF(40) As Double
     Dim Pct50LLF(40) As Double
     Dim Pct95LLF(40) As Double

    If (Eg > 12) Or (Eg < 41) Then
        Pct5LLF(13) = 8: Pct5LLF(14) = 10: Pct5LLF(15) = 13: Pct5LLF(16) = 16: Pct5LLF(17) = 18.8
        Pct5LLF(18) = 21.5: Pct5LLF(19) = 24.3: Pct5LLF(20) = 27: Pct5LLF(21) = 29.5: Pct5LLF(22) = 32
        Pct5LLF(23) = 34.5: Pct5LLF(24) = 37: Pct5LLF(25) = 39.5: Pct5LLF(26) = 42: Pct5LLF(27) = 44.5
        Pct5LLF(28) = 47: Pct5LLF(29) = 49.2: Pct5LLF(30) = 51.7: Pct5LLF(31) = 53.7: Pct5LLF(32) = 56
        Pct5LLF(33) = 57.4: Pct5LLF(34) = 59.3: Pct5LLF(35) = 60.8: Pct5LLF(36) = 62.4: Pct5LLF(37) = 64
        Pct5LLF(38) = 65: Pct5LLF(39) = 66: Pct5LLF(40) = 67

        Pct50LLF(13) = 12: Pct50LLF(14) = 15: Pct50LLF(15) = 18: Pct50LLF(16) = 21: Pct50LLF(17) = 24
        Pct50LLF(18) = 27: Pct50LLF(19) = 30: Pct50LLF(20) = 33: Pct50LLF(21) = 35.5: Pct50LLF(22) = 38
        Pct50LLF(23) = 41: Pct50LLF(24) = 44: Pct50LLF(25) = 46: Pct50LLF(26) = 49: Pct50LLF(27) = 51
        Pct50LLF(28) = 53.4: Pct50LLF(29) = 56: Pct50LLF(30) = 58: Pct50LLF(31) = 60: Pct50LLF(32) = 62
        Pct50LLF(33) = 64: Pct50LLF(34) = 65.5: Pct50LLF(35) = 67.5: Pct50LLF(36) = 69: Pct50LLF(37) = 71
        Pct50LLF(38) = 72: Pct50LLF(39) = 73: Pct50LLF(40) = 74

        Pct95LLF(13) = 17: Pct95LLF(14) = 20: Pct95LLF(15) = 23: Pct95LLF(16) = 26: Pct95LLF(17) = 29
        Pct95LLF(18) = 32: Pct95LLF(19) = 35: Pct95LLF(20) = 38: Pct95LLF(21) = 41: Pct95LLF(22) = 44
        Pct95LLF(23) = 47: Pct95LLF(24) = 49.5: Pct95LLF(25) = 52.5: Pct95LLF(26) = 55: Pct95LLF(27) = 57
        Pct95LLF(28) = 59.5: Pct95LLF(29) = 62: Pct95LLF(30) = 64.5: Pct95LLF(31) = 67: Pct95LLF(32) = 69.5
        Pct95LLF(33) = 71: Pct95LLF(34) = 73: Pct95LLF(35) = 75: Pct95LLF(36) = 76.5: Pct95LLF(37) = 78.5
        Pct95LLF(38) = 80: Pct95LLF(39) = 81: Pct95LLF(40) = 82

        Eg = IntEG(Eg)
        PctLrgLF = (90 / (Pct95LLF(Eg) - Pct5LLF(Eg))) * (Med - Pct5LLF(Eg)) + 5
     
    Else
        PctLrgLF = 0
    End If

End Function


Public Function PctHumFet(ByVal Eg As Double, ByVal valor As Double) As Integer
'Jeanty y col 1984
'hueso Humero fetal

    Dim HF5(40) As Double
    Dim HF95(40) As Double
    
    If (Eg > 12) Or (Eg < 41) Then
    
        HF5(12) = 4.8:   HF95(12) = 12.3:
        HF5(13) = 7.6:   HF95(13) = 15.1:
        HF5(14) = 10.3:  HF95(14) = 17.9:
        HF5(15) = 13.1:  HF95(15) = 20.7:
        HF5(16) = 15.8:  HF95(16) = 23.5:
        HF5(17) = 18.5:  HF95(17) = 26.3:
        HF5(18) = 21.2:  HF95(18) = 29.1:
        HF5(19) = 23.8:  HF95(19) = 31.6:
        HF5(20) = 26.3:  HF95(20) = 34.2:
        HF5(21) = 28.8:  HF95(21) = 36.7:
        HF5(22) = 31.2:  HF95(22) = 39.2:
        HF5(23) = 33.5:  HF95(23) = 41.6:
        HF5(24) = 35.7:  HF95(24) = 43.9:
        HF5(25) = 37.9:  HF95(25) = 46.1:
        HF5(26) = 39.9:  HF95(26) = 48.1:
        HF5(27) = 41.9:  HF95(27) = 50.1:
        HF5(28) = 43.7:  HF95(28) = 52.1:
        HF5(29) = 45.5:  HF95(29) = 53.9:
        HF5(30) = 47.2:  HF95(30) = 55.6:
        HF5(31) = 48.9:  HF95(31) = 57.3:
        HF5(32) = 50.4:  HF95(32) = 58.9:
        HF5(33) = 52.1:  HF95(33) = 60.5:
        HF5(34) = 53.4:  HF95(34) = 62.1:
        HF5(35) = 54.8:  HF95(35) = 63.5:
        HF5(36) = 56.2:  HF95(36) = 64.9:
        HF5(37) = 57.6:  HF95(37) = 66.4:
        HF5(38) = 59.8:  HF95(38) = 67.8:
        HF5(39) = 60.4:  HF95(39) = 69.3:
        HF5(40) = 61.9:  HF95(40) = 70.8:

        Eg = IntEG(Eg)
        PctHumFet = (90 / (HF95(Eg) - HF5(Eg))) * (valor - HF5(Eg)) + 5
    Else
        PctHumFet = "0"
    End If

End Function


Public Function CP(ByVal Eg As Double, ByVal valor As Double) As Integer

    Dim Arr(1, 40) As Double
    
    If (Eg > 20) Or (Eg < 41) Then
    
    Arr(0, 20) = 0.78: Arr(0, 21) = 0.87: Arr(0, 22) = 0.85
    Arr(0, 23) = 1.02: Arr(0, 24) = 1.09: Arr(0, 25) = 1.15
    Arr(0, 26) = 1.2: Arr(0, 27) = 1.24: Arr(0, 28) = 1.28
    Arr(0, 29) = 1.31: Arr(0, 30) = 1.33: Arr(0, 31) = 1.35
    Arr(0, 32) = 1.36: Arr(0, 33) = 1.36: Arr(0, 34) = 1.36
    Arr(0, 35) = 1.34: Arr(0, 36) = 1.32: Arr(0, 37) = 1.3
    Arr(0, 38) = 1.26: Arr(0, 39) = 1.22: Arr(0, 40) = 1.18
    
    
    Arr(1, 20) = 1.68: Arr(1, 21) = 1.88: Arr(1, 22) = 2.06
    Arr(1, 23) = 2.22: Arr(1, 24) = 2.36: Arr(1, 25) = 2.49
    Arr(1, 26) = 2.6: Arr(1, 27) = 2.7: Arr(1, 28) = 2.78
    Arr(1, 29) = 2.84: Arr(1, 30) = 2.89: Arr(1, 31) = 2.92
    Arr(1, 32) = 2.93: Arr(1, 33) = 2.93: Arr(1, 34) = 2.91
    Arr(1, 35) = 2.87: Arr(1, 36) = 2.82: Arr(1, 37) = 2.75
    Arr(1, 38) = 2.67: Arr(1, 39) = 2.57: Arr(1, 40) = 2.45

        Eg = IntEG(Eg)
        CP = (90 / (Arr(1, Eg) - Arr(0, Eg))) * (valor - Arr(0, Eg)) + 5
    Else
        CP = "0"
    End If


End Function

Public Function RngoCP(ByVal Eg As Double) As String
    Dim Arr(1, 40) As Double
    
    If (Eg > 19) Or (Eg < 41) Then
    
    Arr(0, 20) = 0.78: Arr(0, 21) = 0.87: Arr(0, 22) = 0.85
    Arr(0, 23) = 1.02: Arr(0, 24) = 1.09: Arr(0, 25) = 1.15
    Arr(0, 26) = 1.2: Arr(0, 27) = 1.24: Arr(0, 28) = 1.28
    Arr(0, 29) = 1.31: Arr(0, 30) = 1.33: Arr(0, 31) = 1.35
    Arr(0, 32) = 1.36: Arr(0, 33) = 1.36: Arr(0, 34) = 1.36
    Arr(0, 35) = 1.34: Arr(0, 36) = 1.32: Arr(0, 37) = 1.3
    Arr(0, 38) = 1.26: Arr(0, 39) = 1.22: Arr(0, 40) = 1.18
    
    
    Arr(1, 20) = 1.68: Arr(1, 21) = 1.88: Arr(1, 22) = 2.06
    Arr(1, 23) = 2.22: Arr(1, 24) = 2.36: Arr(1, 25) = 2.49
    Arr(1, 26) = 2.6: Arr(1, 27) = 2.7: Arr(1, 28) = 2.78
    Arr(1, 29) = 2.84: Arr(1, 30) = 2.89: Arr(1, 31) = 2.92
    Arr(1, 32) = 2.93: Arr(1, 33) = 2.93: Arr(1, 34) = 2.91
    Arr(1, 35) = 2.87: Arr(1, 36) = 2.82: Arr(1, 37) = 2.75
    Arr(1, 38) = 2.67: Arr(1, 39) = 2.57: Arr(1, 40) = 2.45

        Eg = IntEG(Eg)
        RngoCP = CStr(Arr(0, Eg)) & " - " & CStr(Arr(1, Eg))
    Else
        RngoCP = "0"
    End If


End Function

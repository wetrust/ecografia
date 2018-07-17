Attribute VB_Name = "EcoObsMdl"
    Option Explicit
Option Compare Binary
Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Global pct90Cb(39) As Double
Global pct50Cb(39) As Double
Global pct10Cb(39) As Double
Global pct97PsoFtal(42) As Integer
Global pct90PsoFtal(42) As Integer
Global pct50PsoFtal(42) As Integer
Global pct10PsoFtal(42) As Integer
Global pct3PsoFtal(42) As Integer
Global pct5BVM(41) As Double
Global pct95BVM(41) As Integer
Global pct3CA(42) As Integer
Global pct97CA(42) As Integer
Global pct3CC(42) As Integer
Global pct97CC(42) As Integer
Global pct97CcCa(42) As Double
Global pct50CcCa(42) As Double
Global pct3CcCa(42) As Double
Global CM1(40) As Double
Global CM2(40) As Double
Global pct5ILA(42) As Integer
Global pct95ILA(42) As Integer
Global pct3LF(42) As Integer
Global pct97LF(42) As Integer
Global UM1(40) As Double
Global UM2(40) As Double
Global UT1(42) As Double
Global UT2(42) As Double
Global DV1(40) As Double
Global DV2(40) As Double
Global DB(3) As String
Global RUT As String
Global adjuntt As String
Public Enum TpoObj
    archivo
    Carpeta
End Enum
Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Declare Function GetModuleHandle Lib "kernel32" Alias "GetModuleHandleA" (ByVal lpModuleName As String) As Long



Private Sub Main()

    pct97PsoFtal(15) = 146: pct97PsoFtal(16) = 183: pct97PsoFtal(17) = 226: pct97PsoFtal(18) = 279: pct97PsoFtal(19) = 341:
    pct97PsoFtal(20) = 414:  pct97PsoFtal(21) = 499:  pct97PsoFtal(22) = 598:  pct97PsoFtal(23) = 710
    pct97PsoFtal(24) = 838:  pct97PsoFtal(25) = 981:  pct97PsoFtal(26) = 1141: pct97PsoFtal(27) = 1319
    pct97PsoFtal(28) = 1513: pct97PsoFtal(29) = 1724: pct97PsoFtal(30) = 1949: pct97PsoFtal(31) = 2189
    pct97PsoFtal(32) = 2441: pct97PsoFtal(33) = 2703: pct97PsoFtal(34) = 2971: pct97PsoFtal(35) = 3244
    pct97PsoFtal(36) = 3516: pct97PsoFtal(37) = 3785: pct97PsoFtal(38) = 4045: pct97PsoFtal(39) = 4294
    pct97PsoFtal(40) = 4474: pct97PsoFtal(41) = 4650: pct97PsoFtal(42) = 4734
    
    pct90PsoFtal(15) = 137: pct90PsoFtal(16) = 171: pct90PsoFtal(17) = 212
    pct90PsoFtal(18) = 261: pct90PsoFtal(19) = 319: pct90PsoFtal(20) = 387
    pct90PsoFtal(21) = 467:  pct90PsoFtal(22) = 559:  pct90PsoFtal(23) = 665
    pct90PsoFtal(24) = 784:  pct90PsoFtal(25) = 918:  pct90PsoFtal(26) = 1068
    pct90PsoFtal(27) = 1234: pct90PsoFtal(28) = 1416: pct90PsoFtal(29) = 1613
    pct90PsoFtal(30) = 1824: pct90PsoFtal(31) = 2049: pct90PsoFtal(32) = 2285
    pct90PsoFtal(33) = 2530: pct90PsoFtal(34) = 2781: pct90PsoFtal(35) = 3036
    pct90PsoFtal(36) = 3291: pct90PsoFtal(37) = 3543: pct90PsoFtal(38) = 3786
    pct90PsoFtal(39) = 4019: pct90PsoFtal(40) = 4234: pct90PsoFtal(41) = 4390
    pct90PsoFtal(42) = 4495
    
    pct50PsoFtal(15) = 117: pct50PsoFtal(16) = 146: pct50PsoFtal(17) = 181: pct50PsoFtal(18) = 223: pct50PsoFtal(19) = 273:
    pct50PsoFtal(20) = 331:  pct50PsoFtal(21) = 399:  pct50PsoFtal(22) = 478:  pct50PsoFtal(23) = 568
    pct50PsoFtal(24) = 671:  pct50PsoFtal(25) = 785:  pct50PsoFtal(26) = 913:  pct50PsoFtal(27) = 1055
    pct50PsoFtal(28) = 1210: pct50PsoFtal(29) = 1379: pct50PsoFtal(30) = 1559: pct50PsoFtal(31) = 1751
    pct50PsoFtal(32) = 1953: pct50PsoFtal(33) = 2162: pct50PsoFtal(34) = 2377: pct50PsoFtal(35) = 2585
    pct50PsoFtal(36) = 2803: pct50PsoFtal(37) = 3028: pct50PsoFtal(38) = 3236: pct50PsoFtal(39) = 3435
    pct50PsoFtal(40) = 3619: pct50PsoFtal(41) = 3780: pct50PsoFtal(42) = 3865
    
    pct10PsoFtal(15) = 97: pct10PsoFtal(16) = 121: pct10PsoFtal(17) = 150
    pct10PsoFtal(18) = 185: pct10PsoFtal(19) = 227: pct10PsoFtal(20) = 275
    pct10PsoFtal(21) = 331:  pct10PsoFtal(22) = 398:  pct10PsoFtal(23) = 471
    pct10PsoFtal(24) = 556:  pct10PsoFtal(25) = 652:  pct10PsoFtal(26) = 758
    pct10PsoFtal(27) = 876:  pct10PsoFtal(28) = 1004: pct10PsoFtal(29) = 1145
    pct10PsoFtal(30) = 1294: pct10PsoFtal(31) = 1453: pct10PsoFtal(32) = 1621
    pct10PsoFtal(33) = 1794: pct10PsoFtal(34) = 1973: pct10PsoFtal(35) = 2154
    pct10PsoFtal(36) = 2335: pct10PsoFtal(37) = 2513: pct10PsoFtal(38) = 2686
    pct10PsoFtal(39) = 2851: pct10PsoFtal(40) = 2985: pct10PsoFtal(41) = 3105
    pct10PsoFtal(42) = 3185

    pct3PsoFtal(15) = 88: pct3PsoFtal(16) = 110: pct3PsoFtal(17) = 136: pct3PsoFtal(18) = 167: pct3PsoFtal(19) = 205:
    pct3PsoFtal(20) = 248:  pct3PsoFtal(21) = 299:  pct3PsoFtal(22) = 359:  pct3PsoFtal(23) = 426
    pct3PsoFtal(24) = 503:  pct3PsoFtal(25) = 589:  pct3PsoFtal(26) = 685:  pct3PsoFtal(27) = 791
    pct3PsoFtal(28) = 908:  pct3PsoFtal(29) = 1034: pct3PsoFtal(30) = 1169: pct3PsoFtal(31) = 1313
    pct3PsoFtal(32) = 1465: pct3PsoFtal(33) = 1622: pct3PsoFtal(34) = 1783: pct3PsoFtal(35) = 1946
    pct3PsoFtal(36) = 2110: pct3PsoFtal(37) = 2271: pct3PsoFtal(38) = 2427: pct3PsoFtal(39) = 2576
    pct3PsoFtal(40) = 2714: pct3PsoFtal(41) = 2844: pct3PsoFtal(42) = 2910
    
    pct5BVM(16) = 23: pct5BVM(17) = 25: pct5BVM(18) = 27
    pct5BVM(19) = 28: pct5BVM(20) = 29: pct5BVM(21) = 29
    pct5BVM(22) = 30: pct5BVM(23) = 30: pct5BVM(24) = 30
    pct5BVM(25) = 30: pct5BVM(26) = 30: pct5BVM(27) = 30
    pct5BVM(28) = 30: pct5BVM(29) = 29: pct5BVM(30) = 29
    pct5BVM(31) = 29: pct5BVM(32) = 29: pct5BVM(33) = 29
    pct5BVM(34) = 28: pct5BVM(35) = 28: pct5BVM(36) = 27
    pct5BVM(37) = 26: pct5BVM(38) = 24: pct5BVM(39) = 23
    pct5BVM(40) = 21: pct5BVM(41) = 19
    
    pct95BVM(16) = 59: pct95BVM(17) = 62: pct95BVM(18) = 64
    pct95BVM(19) = 66: pct95BVM(20) = 67: pct95BVM(21) = 68
    pct95BVM(22) = 68: pct95BVM(23) = 68: pct95BVM(24) = 68
    pct95BVM(25) = 68: pct95BVM(26) = 68: pct95BVM(27) = 69
    pct95BVM(28) = 69: pct95BVM(29) = 69: pct95BVM(30) = 69
    pct95BVM(31) = 70: pct95BVM(32) = 71: pct95BVM(33) = 72
    pct95BVM(34) = 72: pct95BVM(35) = 72: pct95BVM(36) = 71
    pct95BVM(37) = 70: pct95BVM(38) = 68: pct95BVM(39) = 66
    pct95BVM(40) = 62: pct95BVM(41) = 57

    pct3CA(12) = 42:  pct3CA(13) = 52:  pct3CA(14) = 64
    pct3CA(15) = 75:  pct3CA(16) = 86:  pct3CA(17) = 97
    pct3CA(18) = 109: pct3CA(19) = 119: pct3CA(20) = 131
    pct3CA(21) = 141: pct3CA(22) = 151: pct3CA(23) = 161
    pct3CA(24) = 171: pct3CA(25) = 181: pct3CA(26) = 191
    pct3CA(27) = 200: pct3CA(28) = 209: pct3CA(29) = 218
    pct3CA(30) = 227: pct3CA(31) = 236: pct3CA(32) = 245
    pct3CA(33) = 253: pct3CA(34) = 261: pct3CA(35) = 269
    pct3CA(36) = 277: pct3CA(37) = 285: pct3CA(38) = 292
    pct3CA(39) = 299: pct3CA(40) = 307: pct3CA(41) = 313
    pct3CA(42) = 320

    pct97CA(12) = 71:  pct97CA(13) = 79:  pct97CA(14) = 92
    pct97CA(15) = 102: pct97CA(16) = 113: pct97CA(17) = 127
    pct97CA(18) = 141: pct97CA(19) = 155: pct97CA(20) = 170
    pct97CA(21) = 183: pct97CA(22) = 192: pct97CA(23) = 209
    pct97CA(24) = 223: pct97CA(25) = 235: pct97CA(26) = 248
    pct97CA(27) = 260: pct97CA(28) = 271: pct97CA(29) = 284
    pct97CA(30) = 295: pct97CA(31) = 306: pct97CA(32) = 318
    pct97CA(33) = 329: pct97CA(34) = 339: pct97CA(35) = 349
    pct97CA(36) = 359: pct97CA(37) = 370: pct97CA(38) = 380
    pct97CA(39) = 389: pct97CA(40) = 399: pct97CA(41) = 409
    pct97CA(42) = 418

    pct3CC(12) = 64:  pct3CC(13) = 74:  pct3CC(14) = 88
    pct3CC(15) = 100: pct3CC(16) = 113: pct3CC(17) = 126
    pct3CC(18) = 137: pct3CC(19) = 149: pct3CC(20) = 161
    pct3CC(21) = 172: pct3CC(22) = 183: pct3CC(23) = 194
    pct3CC(24) = 204: pct3CC(25) = 214: pct3CC(26) = 224
    pct3CC(27) = 233: pct3CC(28) = 242: pct3CC(29) = 250
    pct3CC(30) = 258: pct3CC(31) = 267: pct3CC(32) = 274
    pct3CC(33) = 280: pct3CC(34) = 287: pct3CC(35) = 293
    pct3CC(36) = 299: pct3CC(37) = 303: pct3CC(38) = 308
    pct3CC(39) = 311: pct3CC(40) = 315: pct3CC(41) = 318
    pct3CC(42) = 322
        
    pct97CC(12) = 81:  pct97CC(13) = 94:  pct97CC(14) = 106
    pct97CC(15) = 120: pct97CC(16) = 135: pct97CC(17) = 150
    pct97CC(18) = 165: pct97CC(19) = 179: pct97CC(20) = 193
    pct97CC(21) = 206: pct97CC(22) = 219: pct97CC(23) = 232
    pct97CC(24) = 243: pct97CC(25) = 256: pct97CC(26) = 268
    pct97CC(27) = 279: pct97CC(28) = 290: pct97CC(29) = 300
    pct97CC(30) = 310: pct97CC(31) = 319: pct97CC(32) = 328
    pct97CC(33) = 336: pct97CC(34) = 343: pct97CC(35) = 351
    pct97CC(36) = 358: pct97CC(37) = 363: pct97CC(38) = 368
    pct97CC(39) = 373: pct97CC(40) = 377: pct97CC(41) = 382
    pct97CC(42) = 387
    
    pct97CcCa(15) = 1.29: pct97CcCa(16) = 1.28: pct97CcCa(17) = 1.27
    pct97CcCa(18) = 1.26: pct97CcCa(19) = 1.25: pct97CcCa(20) = 1.24
    pct97CcCa(21) = 1.24: pct97CcCa(22) = 1.23: pct97CcCa(23) = 1.22
    pct97CcCa(24) = 1.21: pct97CcCa(25) = 1.2:  pct97CcCa(26) = 1.19
    pct97CcCa(27) = 1.18: pct97CcCa(28) = 1.18: pct97CcCa(29) = 1.17
    pct97CcCa(30) = 1.17: pct97CcCa(31) = 1.16: pct97CcCa(32) = 1.15
    pct97CcCa(33) = 1.14: pct97CcCa(34) = 1.13: pct97CcCa(35) = 1.12
    pct97CcCa(36) = 1.11: pct97CcCa(37) = 1.1:  pct97CcCa(38) = 1.09
    pct97CcCa(39) = 1.08: pct97CcCa(40) = 1.08: pct97CcCa(41) = 1.09
    pct97CcCa(42) = 1.08
    
    pct50CcCa(20) = 1.15: pct50CcCa(21) = 1.14: pct50CcCa(22) = 1.13: pct50CcCa(23) = 1.12
    pct50CcCa(24) = 1.12: pct50CcCa(25) = 1.11: pct50CcCa(26) = 1.1:  pct50CcCa(27) = 1.09
    pct50CcCa(28) = 1.08: pct50CcCa(29) = 1.07: pct50CcCa(30) = 1.07: pct50CcCa(31) = 1.06
    pct50CcCa(32) = 1.05: pct50CcCa(33) = 1.04: pct50CcCa(34) = 1.03: pct50CcCa(35) = 1.02
    pct50CcCa(36) = 1.01: pct50CcCa(37) = 1.01: pct50CcCa(38) = 1:    pct50CcCa(39) = 0.99
    pct50CcCa(40) = 0.98: pct50CcCa(41) = 1:    pct50CcCa(42) = 1.01

    pct3CcCa(15) = 1.1: pct3CcCa(16) = 1.09: pct3CcCa(17) = 1.08
    pct3CcCa(18) = 1.07: pct3CcCa(19) = 1.06: pct3CcCa(20) = 1.06
    pct3CcCa(21) = 1.05: pct3CcCa(22) = 1.04: pct3CcCa(23) = 1.03
    pct3CcCa(24) = 1.02: pct3CcCa(25) = 1.01: pct3CcCa(26) = 1:
    pct3CcCa(27) = 1: pct3CcCa(28) = 0.99: pct3CcCa(29) = 0.98
    pct3CcCa(30) = 0.97: pct3CcCa(31) = 0.96: pct3CcCa(32) = 0.95
    pct3CcCa(33) = 0.95: pct3CcCa(34) = 0.94: pct3CcCa(35) = 0.93
    pct3CcCa(36) = 0.92: pct3CcCa(37) = 0.91: pct3CcCa(38) = 0.9
    pct3CcCa(39) = 0.89: pct3CcCa(40) = 0.89: pct3CcCa(41) = 0.87
    pct3CcCa(42) = 0.91
    
    
    'Cerebral Media
    'BASCHAT AA, Gembruch U,: The cerebroplacental Doppler ratio revisited, Ultrasound Obstet Gynecol 2003; 21: 124 - 127
    '5 y 95
    CM1(20) = 1.24: CM1(21) = 1.29: CM1(22) = 1.34
    CM1(23) = 1.37: CM1(24) = 1.4: CM1(25) = 1.43
    CM1(26) = 1.44: CM1(27) = 1.45: CM1(28) = 1.45
    CM1(29) = 1.44: CM1(30) = 1.43: CM1(31) = 1.41
    CM1(32) = 1.38: CM1(33) = 1.34: CM1(34) = 1.3
    CM1(35) = 1.25: CM1(36) = 1.19: CM1(37) = 1.13
    CM1(38) = 1.05: CM1(39) = 0.98: CM1(40) = 0.89
        
    CM2(20) = 1.98: CM2(21) = 2.12: CM2(22) = 2.25
    CM2(23) = 2.36: CM2(24) = 2.45: CM2(25) = 2.53
    CM2(26) = 2.59: CM2(27) = 2.63: CM2(28) = 2.66
    CM2(29) = 2.67: CM2(30) = 2.67: CM2(31) = 2.65
    CM2(32) = 2.62: CM2(33) = 2.56: CM2(34) = 2.5
    CM2(35) = 2.41: CM2(36) = 2.31: CM2(37) = 2.2
    CM2(38) = 2.07: CM2(39) = 1.92: CM2(40) = 1.76

    pct5ILA(16) = 79: pct5ILA(17) = 83: pct5ILA(18) = 87
    pct5ILA(19) = 90: pct5ILA(20) = 93: pct5ILA(21) = 95
    pct5ILA(22) = 97: pct5ILA(23) = 98: pct5ILA(24) = 98
    pct5ILA(25) = 97: pct5ILA(26) = 97: pct5ILA(27) = 95
    pct5ILA(28) = 94: pct5ILA(29) = 92: pct5ILA(30) = 90
    pct5ILA(31) = 88: pct5ILA(32) = 86: pct5ILA(33) = 83
    pct5ILA(34) = 81: pct5ILA(35) = 79: pct5ILA(36) = 77
    pct5ILA(37) = 75: pct5ILA(38) = 73: pct5ILA(39) = 72
    pct5ILA(40) = 71: pct5ILA(41) = 70: pct5ILA(42) = 72
    pct95ILA(16) = 185: pct95ILA(17) = 194: pct95ILA(18) = 200
    pct95ILA(19) = 204: pct95ILA(20) = 208: pct95ILA(21) = 212
    pct95ILA(22) = 214: pct95ILA(23) = 217: pct95ILA(24) = 218
    pct95ILA(25) = 221: pct95ILA(26) = 223: pct95ILA(27) = 226
    pct95ILA(28) = 228: pct95ILA(29) = 231: pct95ILA(30) = 234
    pct95ILA(31) = 238: pct95ILA(32) = 242: pct95ILA(33) = 245
    pct95ILA(34) = 248: pct95ILA(35) = 249: pct95ILA(36) = 249
    pct95ILA(37) = 244: pct95ILA(38) = 239: pct95ILA(39) = 226
    pct95ILA(40) = 214: pct95ILA(41) = 194: pct95ILA(42) = 179

    pct3LF(12) = 7:  pct3LF(13) = 9:  pct3LF(14) = 12
    pct3LF(15) = 15: pct3LF(16) = 17: pct3LF(17) = 21
    pct3LF(18) = 23: pct3LF(19) = 26: pct3LF(20) = 28
    pct3LF(21) = 30: pct3LF(22) = 33: pct3LF(23) = 35
    pct3LF(24) = 38: pct3LF(25) = 40: pct3LF(26) = 42
    pct3LF(27) = 44: pct3LF(28) = 46: pct3LF(29) = 48
    pct3LF(30) = 50: pct3LF(31) = 52: pct3LF(32) = 53
    pct3LF(33) = 55: pct3LF(34) = 57: pct3LF(35) = 59
    pct3LF(36) = 60: pct3LF(37) = 62: pct3LF(38) = 64
    pct3LF(39) = 65: pct3LF(40) = 66: pct3LF(41) = 68
    pct3LF(42) = 69
        
    pct97LF(12) = 12: pct97LF(13) = 14: pct97LF(14) = 17
    pct97LF(15) = 20: pct97LF(16) = 23: pct97LF(17) = 27
    pct97LF(18) = 31: pct97LF(19) = 34: pct97LF(20) = 38
    pct97LF(21) = 40: pct97LF(22) = 43: pct97LF(23) = 47
    pct97LF(24) = 50: pct97LF(25) = 52: pct97LF(26) = 56
    pct97LF(27) = 58: pct97LF(28) = 62: pct97LF(29) = 64
    pct97LF(30) = 66: pct97LF(31) = 68: pct97LF(32) = 71
    pct97LF(33) = 73: pct97LF(34) = 75: pct97LF(35) = 78
    pct97LF(36) = 80: pct97LF(37) = 82: pct97LF(38) = 84
    pct97LF(39) = 86: pct97LF(40) = 88: pct97LF(41) = 90
    pct97LF(42) = 92
    
    'Arteria Umbilical
    'BASCHAT AA, Gembruch U,: The cerebroplacental Doppler ratio revisited, Ultrasound Obstet Gynecol 2003; 21: 124 - 127
    '5 y 95
    UM1(20) = 0.97: UM1(21) = 0.95: UM1(22) = 0.94
    UM1(23) = 0.92: UM1(24) = 0.9: UM1(25) = 0.89
    UM1(26) = 0.87: UM1(27) = 0.85: UM1(28) = 0.82
    UM1(29) = 0.8: UM1(30) = 0.78: UM1(31) = 0.75
    UM1(32) = 0.73: UM1(33) = 0.7: UM1(34) = 0.67
    UM1(35) = 0.65: UM1(36) = 0.62: UM1(37) = 0.58
    UM1(38) = 0.55: UM1(39) = 0.52: UM1(40) = 0.49

    UM2(20) = 1.6: UM2(21) = 1.56: UM2(22) = 1.53
    UM2(23) = 1.5: UM2(24) = 1.46: UM2(25) = 1.43
    UM2(26) = 1.4: UM2(27) = 1.37: UM2(28) = 1.35
    UM2(29) = 1.32: UM2(30) = 1.29: UM2(31) = 1.27
    UM2(32) = 1.25: UM2(33) = 1.22: UM2(34) = 1.2
    UM2(35) = 1.18: UM2(36) = 1.16: UM2(37) = 1.14
    UM2(38) = 1.13: UM2(39) = 1.11: UM2(40) = 1.09
    
    UT1(10) = 1.23: UT1(11) = 1.18: UT1(12) = 1.11
    UT1(13) = 1.05: UT1(14) = 0.99: UT1(15) = 0.94
    UT1(16) = 0.89: UT1(17) = 0.85: UT1(18) = 0.81
    UT1(19) = 0.78: UT1(20) = 0.74: UT1(21) = 0.71
    UT1(22) = 0.69: UT1(23) = 0.66: UT1(24) = 0.64
    UT1(25) = 0.62: UT1(26) = 0.6: UT1(27) = 0.58
    UT1(28) = 0.56: UT1(29) = 0.55: UT1(30) = 0.54
    UT1(31) = 0.52: UT1(32) = 0.51: UT1(33) = 0.51
    UT1(34) = 0.51: UT1(35) = 0.49: UT1(36) = 0.48
    UT1(37) = 0.48: UT1(38) = 0.47: UT1(39) = 0.47
    UT1(40) = 0.47: UT1(41) = 0.47: UT1(42) = 0.47

    UT2(10) = 2.84: UT2(11) = 2.71: UT2(12) = 2.53
    UT2(13) = 2.38: UT2(14) = 2.24: UT2(15) = 2.11
    UT2(16) = 1.99: UT2(17) = 1.88: UT2(18) = 1.79
    UT2(19) = 1.71: UT2(20) = 1.61: UT2(21) = 1.54
    UT2(22) = 1.47: UT2(23) = 1.41: UT2(24) = 1.35
    UT2(25) = 1.3: UT2(26) = 1.25: UT2(27) = 1.21
    UT2(28) = 1.17: UT2(29) = 1.13: UT2(30) = 1.11
    UT2(31) = 1.06: UT2(32) = 1.04: UT2(33) = 1.01
    UT2(34) = 0.99: UT2(35) = 0.97: UT2(36) = 0.95
    UT2(37) = 0.94: UT2(38) = 0.92: UT2(39) = 0.91
    UT2(40) = 0.91: UT2(41) = 0.89: UT2(42) = 0.89
    
    DV1(20) = 0.32: DV1(21) = 0.32: DV1(22) = 0.32: DV1(23) = 0.32: DV1(24) = 0.32
    DV1(25) = 0.32: DV1(26) = 0.31: DV1(27) = 0.31: DV1(28) = 0.31: DV1(29) = 0.3
    DV1(30) = 0.29: DV1(31) = 0.28: DV1(32) = 0.28: DV1(33) = 0.27: DV1(34) = 0.26
    DV1(35) = 0.25: DV1(36) = 0.24: DV1(37) = 0.23: DV1(38) = 0.22: DV1(39) = 0.21
    DV1(40) = 0.2
    
    DV2(20) = 0.83: DV2(21) = 0.83: DV2(22) = 0.83: DV2(23) = 0.83: DV2(24) = 0.83
    DV2(25) = 0.83: DV2(26) = 0.82: DV2(27) = 0.82: DV2(28) = 0.81: DV2(29) = 0.81
    DV2(30) = 0.8: DV2(31) = 0.79: DV2(32) = 0.78: DV2(33) = 0.77: DV2(34) = 0.76
    DV2(35) = 0.75: DV2(36) = 0.74: DV2(37) = 0.73: DV2(38) = 0.72: DV2(39) = 0.71
    DV2(40) = 0.7
    
    pct10Cb(15) = 12:    pct10Cb(16) = 13:    pct10Cb(17) = 14:    pct10Cb(18) = 15
    pct10Cb(19) = 16:    pct10Cb(20) = 17:    pct10Cb(21) = 18:    pct10Cb(22) = 19
    pct10Cb(23) = 20:    pct10Cb(24) = 21:    pct10Cb(25) = 22:    pct10Cb(26) = 24
    pct10Cb(27) = 25.5:    pct10Cb(28) = 26.5:    pct10Cb(29) = 28:    pct10Cb(30) = 30
    pct10Cb(31) = 32:    pct10Cb(32) = 34:    pct10Cb(33) = 35:    pct10Cb(34) = 36.5
    pct10Cb(35) = 38:    pct10Cb(36) = 39.5:    pct10Cb(37) = 40.5:    pct10Cb(38) = 41.5
    pct10Cb(39) = 42
    
    pct50Cb(15) = 15:    pct50Cb(16) = 16:    pct50Cb(17) = 17:    pct50Cb(18) = 18
    pct50Cb(19) = 19:    pct50Cb(20) = 20:    pct50Cb(21) = 21:    pct50Cb(22) = 22
    pct50Cb(23) = 23:    pct50Cb(24) = 24:    pct50Cb(25) = 25.5:    pct50Cb(26) = 27
    pct50Cb(27) = 29:    pct50Cb(28) = 30.5:    pct50Cb(29) = 33:    pct50Cb(30) = 35
    pct50Cb(31) = 37:    pct50Cb(32) = 39:    pct50Cb(33) = 40:    pct50Cb(34) = 42
    pct50Cb(35) = 44:    pct50Cb(36) = 45.5:    pct50Cb(37) = 46.5:    pct50Cb(38) = 47.5
    pct50Cb(39) = 49
    
    pct90Cb(15) = 17:    pct90Cb(16) = 18:    pct90Cb(17) = 19.5:    pct90Cb(18) = 21
    pct90Cb(19) = 22:    pct90Cb(20) = 23:    pct90Cb(21) = 24:    pct90Cb(22) = 25
    pct90Cb(23) = 26:    pct90Cb(24) = 28:    pct90Cb(25) = 29:    pct90Cb(26) = 32
    pct90Cb(27) = 33:    pct90Cb(28) = 36:    pct90Cb(29) = 38:    pct90Cb(30) = 40
    pct90Cb(31) = 43:    pct90Cb(32) = 45:    pct90Cb(33) = 47:    pct90Cb(34) = 49
    pct90Cb(35) = 51:    pct90Cb(36) = 54:    pct90Cb(37) = 56:    pct90Cb(38) = 59
    pct90Cb(39) = 60
    
    DB(0) = App.Path & "\bd.mdb"
    DB(1) = App.Path & "\Consultamedica.mdb"

    RUT = Command
    frmEcoObs.Show
    
End Sub


Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    DataEntry = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =13718
    DatasheetFontHeight =11
    ItemSuffix =1252
    Left =3165
    Top =825
    Right =27540
    Bottom =13470
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0x0f5bdccb4e64e540
    End
    Caption ="CL Atmosphere"
    DatasheetFontName ="Calibri"
    OnLoad ="[Event Procedure]"
    AllowDatasheetView =0
    FilterOnLoad =0
    ShowPageMargins =0
    DisplayOnSharePointSite =1
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    DatasheetForeColor12 =3355443
    FitToScreen =1
    DatasheetBackThemeColorIndex =1
    BorderThemeColorIndex =3
    ThemeFontIndex =1
    ForeThemeColorIndex =0
    AlternateBackThemeColorIndex =1
    AlternateBackShade =95.0
    Begin
        Begin Label
            BackStyle =0
            FontSize =11
            FontName ="Calibri"
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =0
            BorderTint =50.0
            ForeThemeColorIndex =0
            ForeTint =50.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Image
            BackStyle =0
            OldBorderStyle =0
            BorderLineStyle =0
            SizeMode =3
            PictureAlignment =2
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin CommandButton
            FontSize =11
            FontWeight =400
            FontName ="Calibri"
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            UseTheme =1
            Shape =1
            Gradient =12
            BackThemeColorIndex =4
            BackTint =60.0
            BorderLineStyle =0
            BorderThemeColorIndex =4
            BorderTint =60.0
            ThemeFontIndex =1
            HoverThemeColorIndex =4
            HoverTint =40.0
            PressedThemeColorIndex =4
            PressedShade =75.0
            HoverForeThemeColorIndex =0
            HoverForeTint =75.0
            PressedForeThemeColorIndex =0
            PressedForeTint =75.0
        End
        Begin TextBox
            AddColon = NotDefault
            FELineBreak = NotDefault
            BorderLineStyle =0
            LabelX =-1800
            FontSize =11
            FontName ="Calibri"
            AsianLineBreak =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ThemeFontIndex =1
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin ComboBox
            AddColon = NotDefault
            BorderLineStyle =0
            LabelX =-1800
            FontSize =11
            FontName ="Calibri"
            AllowValueListEdits =1
            InheritValueList =1
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            ForeThemeColorIndex =2
            ForeShade =50.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Tab
            FontSize =11
            FontName ="Calibri"
            ThemeFontIndex =0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            UseTheme =1
            Shape =3
            BackThemeColorIndex =1
            BackShade =85.0
            BorderLineStyle =0
            BorderThemeColorIndex =2
            BorderTint =60.0
            HoverThemeColorIndex =1
            PressedThemeColorIndex =1
            HoverForeThemeColorIndex =0
            HoverForeTint =75.0
            PressedForeThemeColorIndex =0
            PressedForeTint =75.0
            ForeThemeColorIndex =0
            ForeTint =75.0
        End
        Begin Page
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Attachment
            BackStyle =0
            BorderLineStyle =0
            PictureSizeMode =3
            Width =3840
            Height =3072
            LabelX =-1800
            AddColon =0
            ThemeFontIndex =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin EmptyCell
            Height =240
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin FormHeader
            Height =0
            Name ="FormHeader"
            AutoHeight =1
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =2
            BackTint =20.0
        End
        Begin Section
            Height =3780
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =9720
                    Top =570
                    Width =3960
                    Height =480
                    FontSize =16
                    TabIndex =1
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtHum"
                    Format ="Percent"
                    StatusBarText ="Time that sample was taken (if known)"
                    GroupTable =16
                    GridlineColor =10921638
                    ShowDatePicker =0

                    LayoutCachedLeft =9720
                    LayoutCachedTop =570
                    LayoutCachedWidth =13680
                    LayoutCachedHeight =1050
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =3
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =16
                End
                Begin CommandButton
                    Default = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =8220
                    Top =3120
                    Height =420
                    TabIndex =3
                    ForeColor =6710886
                    Name ="cmdEnter"
                    Caption ="Command51"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Add Record"
                    GroupTable =16
                    TopPadding =216
                    BottomPadding =216
                    GridlineColor =10921638
                    ImageData = Begin
                        0x2800000010000000100000000100200000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000090a46869 ,
                        0x90a4686000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000000000000000000090a4684e90a468fc ,
                        0x90a468f690a4682d000000000000000000000000000000000000000000000000 ,
                        0x000000000000000000000000000000000000000090a4683690a468f690a468ff ,
                        0x90a468ff90a468db90a4680f0000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000090a4682d90a468ea90a468ff90a468ff ,
                        0x90a468ff90a468ff90a468b40000000000000000000000000000000000000000 ,
                        0x00000000000000000000000090a4681b90a468e490a468ff90a468ff90a468ae ,
                        0x90a468ba90a468ff90a468ff90a4687e00000000000000000000000000000000 ,
                        0x000000000000000090a4680f90a468d290a468ff90a468ff90a468bd90a46806 ,
                        0x90a4681590a468e790a468ff90a468fc90a46848000000000000000000000000 ,
                        0x000000000000000090a4684290a468ff90a468ff90a468c990a4680f00000000 ,
                        0x0000000090a4683c90a468fc90a468ff90a468ed90a468210000000000000000 ,
                        0x00000000000000000000000090a4685790a468cc90a468150000000000000000 ,
                        0x000000000000000090a4687b90a468ff90a468ff90a468cc90a4680600000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000000000000000000090a468b790a468ff90a468ff90a4689c00000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000000000000000000090a4681590a468e190a468ff90a468ff90a46863 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000090a4683c90a468f990a468ff90a468f9 ,
                        0x90a4683300000000000000000000000000000000000000000000000000000000 ,
                        0x000000000000000000000000000000000000000090a4687590a468ff90a468ff ,
                        0x90a4689300000000000000000000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000000000000000000090a468ab90a46887 ,
                        0x90a4680300000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End

                    CursorOnHover =1
                    LayoutCachedLeft =8220
                    LayoutCachedTop =3120
                    LayoutCachedWidth =9660
                    LayoutCachedHeight =3540
                    RowStart =3
                    RowEnd =3
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    BackColor =15715959
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =0
                    BorderTint =100.0
                    HoverThemeColorIndex =6
                    HoverTint =100.0
                    HoverShade =90.0
                    PressedThemeColorIndex =8
                    PressedShade =100.0
                    HoverForeColor =3355443
                    HoverForeTint =100.0
                    PressedForeColor =3355443
                    PressedForeTint =100.0
                    GroupTable =16
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =14
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =13
                    Overlaps =1
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =9720
                    Top =3120
                    Height =420
                    TabIndex =4
                    ForeColor =6710886
                    Name ="cmdUndo"
                    Caption ="Command121"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Undo Record"
                    GroupTable =16
                    TopPadding =216
                    BottomPadding =216
                    GridlineColor =10921638
                    ImageData = Begin
                        0x2800000010000000100000000100200000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000b17d4a0fb17d4aedb17d4ac0b17d4a7bb17d4a0c00000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000b17d4a0fb17d4affb17d4affb17d4affb17d4ae7b17d4a48 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x000000000000000000000000b17d4a0fb17d4a3fb17d4aa8b17d4affb17d4af9 ,
                        0xb17d4a3000000000000000000000000000000000000000000000000000000000 ,
                        0x000000000000000000000000000000000000000000000000b17d4a96b17d4aff ,
                        0xb17d4ab100000000000000000000000000000000000000000000000000000000 ,
                        0x000000000000000000000000000000000000000000000000b17d4a12b17d4aff ,
                        0xb17d4af000000000000000000000000000000000b17d4a5ab17d4afcb17d4aff ,
                        0xb17d4af9b17d4a4500000000000000000000000000000000b17d4a12b17d4aff ,
                        0xb17d4af6000000000000000000000000b17d4a42b17d4af9b17d4affb17d4afc ,
                        0xb17d4a510000000000000000000000000000000000000000b17d4a96b17d4aff ,
                        0xb17d4ac30000000000000000b17d4a36b17d4af6b17d4affb17d4affb17d4a5d ,
                        0x000000000000000000000000b17d4a12b17d4a42b17d4aa8b17d4affb17d4aff ,
                        0xb17d4a4b00000000b17d4a27b17d4aeab17d4affb17d4affb17d4affb17d4aff ,
                        0xb17d4affb17d4affb17d4affb17d4affb17d4affb17d4affb17d4af9b17d4a78 ,
                        0x0000000000000000b17d4a24b17d4aeab17d4affb17d4affb17d4affb17d4aff ,
                        0xb17d4affb17d4affb17d4affb17d4aedb17d4accb17d4a90b17d4a2400000000 ,
                        0x000000000000000000000000b17d4a2db17d4aedb17d4affb17d4affb17d4a5a ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000b17d4a36b17d4af3b17d4affb17d4af9 ,
                        0xb17d4a3c00000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000b17d4a42b17d4af6b17d4aff ,
                        0xb17d4aeab17d4a24000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End

                    CursorOnHover =1
                    LayoutCachedLeft =9720
                    LayoutCachedTop =3120
                    LayoutCachedWidth =11160
                    LayoutCachedHeight =3540
                    RowStart =3
                    RowEnd =3
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    BackColor =15715959
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =0
                    BorderTint =100.0
                    HoverThemeColorIndex =6
                    HoverTint =100.0
                    HoverShade =90.0
                    PressedThemeColorIndex =8
                    PressedShade =100.0
                    HoverForeColor =3355443
                    HoverForeTint =100.0
                    PressedForeColor =3355443
                    PressedForeTint =100.0
                    GroupTable =16
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =14
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =13
                    Overlaps =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =570
                    Width =9630
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label3"
                    Caption ="Relative Humidity:"
                    GroupTable =16
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =570
                    LayoutCachedWidth =9660
                    LayoutCachedHeight =1050
                    RowStart =1
                    RowEnd =1
                    ColumnEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =16
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =30
                    Width =9630
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label6"
                    Caption ="Temperature (ᵒF):"
                    GroupTable =16
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =30
                    LayoutCachedWidth =9660
                    LayoutCachedHeight =510
                    ColumnEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =16
                End
                Begin EmptyCell
                    Left =30
                    Top =3120
                    Width =8130
                    Height =420
                    Name ="EmptyCell684"
                    GroupTable =16
                    TopPadding =216
                    BottomPadding =216
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =3120
                    LayoutCachedWidth =8160
                    LayoutCachedHeight =3540
                    RowStart =3
                    RowEnd =3
                    LayoutGroup =1
                    GroupTable =16
                End
                Begin EmptyCell
                    Left =11220
                    Top =3120
                    Width =2460
                    Height =420
                    Name ="EmptyCell691"
                    GroupTable =16
                    TopPadding =216
                    BottomPadding =216
                    GridlineColor =10921638
                    LayoutCachedLeft =11220
                    LayoutCachedTop =3120
                    LayoutCachedWidth =13680
                    LayoutCachedHeight =3540
                    RowStart =3
                    RowEnd =3
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    GroupTable =16
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =9720
                    Top =30
                    Width =3960
                    Height =480
                    FontSize =16
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtTemp"
                    Format ="General Number"
                    StatusBarText ="Laboratory that processed results"
                    GroupTable =16
                    GridlineColor =10921638

                    LayoutCachedLeft =9720
                    LayoutCachedTop =30
                    LayoutCachedWidth =13680
                    LayoutCachedHeight =510
                    ColumnStart =2
                    ColumnEnd =3
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =16
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =9720
                    Top =1110
                    Width =3960
                    Height =1755
                    FontSize =16
                    TabIndex =2
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="notes"
                    GroupTable =16
                    GridlineColor =10921638

                    LayoutCachedLeft =9720
                    LayoutCachedTop =1110
                    LayoutCachedWidth =13680
                    LayoutCachedHeight =2865
                    RowStart =2
                    RowEnd =2
                    ColumnStart =2
                    ColumnEnd =3
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =16
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =30
                            Top =1110
                            Width =9630
                            Height =1755
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label1217"
                            Caption ="Notes:"
                            GroupTable =16
                            GridlineColor =10921638
                            LayoutCachedLeft =30
                            LayoutCachedTop =1110
                            LayoutCachedWidth =9660
                            LayoutCachedHeight =2865
                            RowStart =2
                            RowEnd =2
                            ColumnEnd =1
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =16
                        End
                    End
                End
            End
        End
        Begin FormFooter
            Height =0
            Name ="FormFooter"
            AutoHeight =1
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
        End
    End
End
CodeBehindForm
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub cmdENTER_Click()
Dim sVal As String
Dim sTbl As String
Dim sP As String
Dim sNote As String
Dim sMess As String
Dim dHum As Double
Dim dpHum As Double
Dim dTemp As Double
Dim ret As Long

On Error GoTo Macro1_Err:

sTbl = "tblATMOSPHERE"
sP = ", "
sMess = "Improbable Value Detected"


'check that all fields were entered and submit
    If (ckIncomplete("txt*", Me, True, 2) = False) Then
    
        dHum = txtHum.Value
        dpHum = dHum * 100
        dTemp = txtTEMP.Value
        
        'check entered values
        
        'checks temperature
            If (dTemp > 80) Or (dTemp < 40) Then 'entry error check, 40-80 degrees F
                ret = MsgBox("The temperature was recorded as " & dTemp & " " & Chr(176) & "F. Is this correct?", vbQuestion + vbYesNo + vbDefaultButton1, sMess)

                If (ret <> vbNo) Then 'if user hits cancel, exit out of entire code
                    'Resume Next
                Else:
                    MsgBox "Data not recorded."
                    Exit Sub
                End If
            End If
            
            'checks humidity
            If (dHum > 0.6) Or (dHum < 0.05) Then 'entry error check, 5 - 60%
                ret = MsgBox("The humidity was recorded as " & Round(dpHum, 0) & "%. Is this correct?", vbQuestion + vbYesNo + vbDefaultButton1, sMess)

                If (ret <> vbNo) Then 'if user hits cancel, exit out of entire code
                    'Resume Next
                Else:
                    MsgBox "Data not recorded."
                    Exit Sub
                End If
            End If
            
        
        sNote = sqlStr(Me.Notes)
        sVal = dHum & sP & dTemp & sP & sNote
        Call sqlEntryBuilder(sTbl, sVal, True)
        MsgBox "Successfully added.", vbOKOnly
        Call cmdUndo_Click
    End If
    
Macro1_Exit:
    Exit Sub

Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit
    
End Sub

Private Sub cmdUndo_Click()
    txtHum = Null
    
    With txtTEMP
        .Value = Null
        .SetFocus
    End With
End Sub

Private Sub Form_Load()
On Error Resume Next
'clear values and set focus to first field
    Me.Parent!lblBANNER.Caption = "CL Atmosphere Conditions"
    Call cmdUndo_Click

End Sub

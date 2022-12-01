Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowEdits = NotDefault
    DataEntry = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =17753
    DatasheetFontHeight =11
    ItemSuffix =143
    Left =3630
    Top =1710
    Right =26760
    Bottom =12900
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0x6355be2472dfe440
    End
    RecordSource ="tblPH_WASTE"
    Caption ="Waste Water pH"
    DatasheetFontName ="Calibri"
    AllowDatasheetView =0
    FilterOnLoad =0
    ShowPageMargins =0
    DisplayOnSharePointSite =1
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    DatasheetForeColor12 =5855577
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
            Shape =1
            Gradient =12
            BackThemeColorIndex =4
            BackTint =60.0
            BorderLineStyle =0
            BorderThemeColorIndex =4
            BorderTint =60.0
            ThemeFontIndex =1
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
        Begin Subform
            BorderLineStyle =0
            BorderThemeColorIndex =1
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            BorderShade =65.0
            ShowPageHeaderAndPageFooter =1
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
            Height =9375
            Name ="Detail"
            AlternateBackThemeColorIndex =2
            BackThemeColorIndex =3
            Begin
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =9900
                    Top =1185
                    Height =524
                    FontSize =18
                    TabIndex =1
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtPH"
                    Format ="General Number"
                    StatusBarText ="The pH of the waste water prior to draining"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =9900
                    LayoutCachedTop =1185
                    LayoutCachedWidth =11340
                    LayoutCachedHeight =1709
                    RowStart =2
                    RowEnd =2
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =30
                            Top =1185
                            Width =9810
                            Height =524
                            FontSize =18
                            LeftMargin =44
                            TopMargin =22
                            RightMargin =44
                            BottomMargin =22
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label6"
                            Caption ="pH:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =30
                            LayoutCachedTop =1185
                            LayoutCachedWidth =9840
                            LayoutCachedHeight =1709
                            RowStart =2
                            RowEnd =2
                            ColumnEnd =1
                            LayoutGroup =1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =9900
                    Top =1770
                    Width =2220
                    Height =524
                    FontSize =18
                    TabIndex =2
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtDrained"
                    Format ="General Number"
                    StatusBarText ="The approximate amount drained"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =9900
                    LayoutCachedTop =1770
                    LayoutCachedWidth =12120
                    LayoutCachedHeight =2294
                    RowStart =3
                    RowEnd =3
                    ColumnStart =2
                    ColumnEnd =3
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =30
                            Top =1770
                            Width =9810
                            Height =524
                            FontSize =18
                            LeftMargin =44
                            TopMargin =22
                            RightMargin =44
                            BottomMargin =22
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label9"
                            Caption ="Drained Amount (gal):"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =30
                            LayoutCachedTop =1770
                            LayoutCachedWidth =9840
                            LayoutCachedHeight =2294
                            RowStart =3
                            RowEnd =3
                            ColumnEnd =1
                            LayoutGroup =1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =3
                    ListRows =15
                    Left =9900
                    Top =600
                    Width =4080
                    Height =524
                    FontSize =18
                    ColumnInfo ="\"\";\"\";\"First Name\";\"\";\"Last Name\";\"\";\"10\";\"100\""
                    Name ="cmbName"
                    RowSourceType ="Table/Query"
                    RowSource ="qryEMPLOYEE_CL"
                    ColumnWidths ="0;1620;1440"
                    StatusBarText ="Name of the technician"
                    AfterUpdate ="[Event Procedure]"
                    GroupTable =1
                    GridlineColor =10921638
                    AllowValueListEdits =0
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =9900
                    LayoutCachedTop =600
                    LayoutCachedWidth =13980
                    LayoutCachedHeight =1124
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =4
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeThemeColorIndex =0
                    ForeShade =75.0
                    GroupTable =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =30
                            Top =600
                            Width =9810
                            Height =524
                            FontSize =18
                            LeftMargin =44
                            TopMargin =22
                            RightMargin =44
                            BottomMargin =22
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label3"
                            Caption ="Technician:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =30
                            LayoutCachedTop =600
                            LayoutCachedWidth =9840
                            LayoutCachedHeight =1124
                            RowStart =1
                            RowEnd =1
                            ColumnEnd =1
                            LayoutGroup =1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =30
                    Top =30
                    Width =17685
                    Height =390
                    FontSize =14
                    BorderColor =10066329
                    ForeColor =6052956
                    Name ="Label18"
                    Caption ="The pH reading of the waste water prior to release. View work instruction WI#034"
                        "6."
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =30
                    LayoutCachedWidth =17715
                    LayoutCachedHeight =420
                    ColumnEnd =5
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    ForeTint =80.0
                    GroupTable =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =8400
                    Top =2550
                    Height =570
                    FontSize =14
                    TabIndex =3
                    ForeColor =3355443
                    Name ="Command26"
                    Caption ="Command26"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Add Record"
                    GroupTable =1
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
                    LayoutCachedLeft =8400
                    LayoutCachedTop =2550
                    LayoutCachedWidth =9840
                    LayoutCachedHeight =3120
                    RowStart =4
                    RowEnd =4
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    ForeTint =100.0
                    UseTheme =1
                    BackColor =15715959
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =0
                    BorderTint =100.0
                    HoverThemeColorIndex =6
                    HoverShade =90.0
                    PressedThemeColorIndex =8
                    HoverForeThemeColorIndex =0
                    PressedForeThemeColorIndex =0
                    GroupTable =1
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =14
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =13
                    Overlaps =1
                End
                Begin CommandButton
                    Default = NotDefault
                    OverlapFlags =85
                    Left =9900
                    Top =2550
                    Height =570
                    FontSize =14
                    TabIndex =4
                    ForeColor =3355443
                    Name ="Command31"
                    Caption ="Command31"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Undo Record"
                    GroupTable =1
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
                    LayoutCachedLeft =9900
                    LayoutCachedTop =2550
                    LayoutCachedWidth =11340
                    LayoutCachedHeight =3120
                    RowStart =4
                    RowEnd =4
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    ForeTint =100.0
                    UseTheme =1
                    BackColor =15715959
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =0
                    BorderTint =100.0
                    HoverThemeColorIndex =6
                    HoverShade =90.0
                    PressedThemeColorIndex =8
                    HoverForeThemeColorIndex =0
                    PressedForeThemeColorIndex =0
                    GroupTable =1
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =14
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =13
                    Overlaps =1
                End
                Begin EmptyCell
                    Left =30
                    Top =2550
                    Width =8310
                    Height =570
                    Name ="EmptyCell38"
                    GroupTable =1
                    TopPadding =216
                    BottomPadding =216
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =2550
                    LayoutCachedWidth =8340
                    LayoutCachedHeight =3120
                    RowStart =4
                    RowEnd =4
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =11400
                    Top =1185
                    Width =6315
                    Height =524
                    Name ="EmptyCell41"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =11400
                    LayoutCachedTop =1185
                    LayoutCachedWidth =17715
                    LayoutCachedHeight =1709
                    RowStart =2
                    RowEnd =2
                    ColumnStart =3
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =11400
                    Top =2550
                    Width =6315
                    Height =570
                    Name ="EmptyCell43"
                    GroupTable =1
                    TopPadding =216
                    BottomPadding =216
                    GridlineColor =10921638
                    LayoutCachedLeft =11400
                    LayoutCachedTop =2550
                    LayoutCachedWidth =17715
                    LayoutCachedHeight =3120
                    RowStart =4
                    RowEnd =4
                    ColumnStart =3
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =12180
                    Top =1770
                    Width =5535
                    Height =524
                    Name ="EmptyCell44"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =12180
                    LayoutCachedTop =1770
                    LayoutCachedWidth =17715
                    LayoutCachedHeight =2294
                    RowStart =3
                    RowEnd =3
                    ColumnStart =4
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin Subform
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =30
                    Top =3375
                    Width =17685
                    Height =5715
                    TabIndex =5
                    BorderColor =10921638
                    Name ="childForm"
                    SourceObject ="Query.qryPH_WASTE_DISPLAY"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =30
                    LayoutCachedTop =3375
                    LayoutCachedWidth =17715
                    LayoutCachedHeight =9090
                    RowStart =5
                    RowEnd =5
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =14040
                    Top =600
                    Width =3675
                    Height =524
                    Name ="EmptyCell142"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =14040
                    LayoutCachedTop =600
                    LayoutCachedWidth =17715
                    LayoutCachedHeight =1124
                    RowStart =1
                    RowEnd =1
                    ColumnStart =5
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =1
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

Private Sub cmbName_AfterUpdate()

    'jump to next field
    If IsNull(cmbName) = False Then
        txtPH.SetFocus
    End If
    
End Sub

Private Sub Command26_Click()
On Error GoTo Macro1_Err
Dim db As DAO.Database
Dim taskID As Long
Dim stSQL As String
Dim SPCR As String
Dim msgTitle1 As String
Dim taskTable As String

'enter values
Set db = CurrentDb
taskID = 6

'pull the name of the table and any other information
On Error GoTo lookupErr

    taskTable = DLookup("[tableRel]", "tblTASKLIST", "[ID] = " & taskID)
    msgTitle1 = "Missing Info"
    SPCR = ", "
    
On Error GoTo Macro1_Err

    If IsNull(cmbName) = True Then
        MsgBox "Select a name.", vbOKOnly, msgTitle1
        cmbName.SetFocus
    Else:
        If (ckIncomplete("txt*", Me, True, 2) = False) Then
            On Error GoTo sqlErr:
            With Me
                stSQL = .cmbName & SPCR & .txtPH & SPCR & .txtDrained
            End With
            
            Call sqlEntryBuilder(taskTable, stSQL, True)
            Call Command31_Click
        End If
    End If
    
    db.Close
    
Macro1_Exit:
    Exit Sub

lookupErr:
    MsgBox "An error occurred when searching for the task's table information. Check the task table to ensure that a name has been entered."
    Resume Macro1_Exit
    
Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit

sqlErr:
    MsgBox "An error occurred when entering the record into " & taskTable & ". This record has not been recorded."
    Resume Macro1_Exit
    
            
End Sub

Private Sub Command31_Click()
On Error Resume Next
    
    With cmbName
        .Value = Null
        .SetFocus
    End With
    
    txtPH = Null
    txtDrained = Null
    childForm.Requery
    
End Sub

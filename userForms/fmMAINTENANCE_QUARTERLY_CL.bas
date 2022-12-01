Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
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
    Width =18885
    DatasheetFontHeight =11
    ItemSuffix =529
    Left =3525
    Top =1455
    Right =27105
    Bottom =10800
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0x03f193c0ea61e540
    End
    Caption ="Thermometer Check"
    DatasheetFontName ="Calibri"
    OnLoad ="[Event Procedure]"
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
        Begin CheckBox
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
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
        Begin ToggleButton
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            UseTheme =1
            Shape =2
            Bevel =1
            BackColor =-1
            BackThemeColorIndex =4
            BackTint =60.0
            OldBorderStyle =0
            BorderLineStyle =0
            BorderColor =-1
            BorderThemeColorIndex =4
            BorderTint =60.0
            ThemeFontIndex =1
            HoverThemeColorIndex =4
            HoverTint =40.0
            PressedThemeColorIndex =4
            PressedShade =75.0
            HoverForeThemeColorIndex =0
            HoverForeTint =75.0
            PressedForeThemeColorIndex =1
        End
        Begin EmptyCell
            Height =240
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin WebBrowser
            OldBorderStyle =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Section
            Height =4158
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =3
                    ListWidth =1440
                    Left =8925
                    Top =1350
                    Width =5505
                    Height =531
                    FontSize =18
                    ColumnInfo ="\"\";\"\";\"First Name\";\"\";\"Last Name\";\"\";\"10\";\"100\""
                    Name ="cmbName"
                    RowSourceType ="Table/Query"
                    RowSource ="qryEMPLOYEE_CL"
                    ColumnWidths ="0;1800;1440"
                    GroupTable =1
                    GridlineColor =10921638
                    AllowValueListEdits =0
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =8925
                    LayoutCachedTop =1350
                    LayoutCachedWidth =14430
                    LayoutCachedHeight =1881
                    RowStart =2
                    RowEnd =2
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
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =1350
                    Width =8835
                    Height =531
                    FontSize =18
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label51"
                    Caption ="Technician:"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =1350
                    LayoutCachedWidth =8865
                    LayoutCachedHeight =1881
                    RowStart =2
                    RowEnd =2
                    ColumnEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin CommandButton
                    Default = NotDefault
                    OverlapFlags =85
                    Left =8115
                    Top =3480
                    Width =1800
                    Height =480
                    TabIndex =3
                    ForeColor =6710886
                    Name ="cmdEnter"
                    Caption ="Command151"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Add Record"
                    GroupTable =1
                    TopPadding =360
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
                    LayoutCachedLeft =8115
                    LayoutCachedTop =3480
                    LayoutCachedWidth =9915
                    LayoutCachedHeight =3960
                    RowStart =5
                    RowEnd =5
                    ColumnStart =1
                    ColumnEnd =2
                    LayoutGroup =1
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
                    WebImagePaddingTop =24
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =30
                    Top =180
                    Width =18825
                    Height =390
                    FontSize =14
                    BorderColor =10066329
                    ForeColor =6052956
                    Name ="Label268"
                    Caption ="View work instruction WI#0347 for information."
                    GroupTable =1
                    BottomPadding =180
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =180
                    LayoutCachedWidth =18855
                    LayoutCachedHeight =570
                    ColumnEnd =5
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    ForeTint =80.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =2565
                    Width =8835
                    Height =531
                    FontSize =18
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label297"
                    Caption ="Building:"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =2565
                    LayoutCachedWidth =8865
                    LayoutCachedHeight =3096
                    RowStart =4
                    RowEnd =4
                    ColumnEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =8925
                    Top =2565
                    Width =2850
                    Height =531
                    FontSize =18
                    TabIndex =2
                    ColumnInfo ="\"\";\"\";\"4\";\"4\""
                    Name ="cmbBUILDING"
                    RowSourceType ="Table/Query"
                    RowSource ="tblBUILDINGS"
                    DefaultValue ="1"
                    ControlTipText ="Building identifier"
                    GroupTable =1
                    GridlineColor =10921638
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =8925
                    LayoutCachedTop =2565
                    LayoutCachedWidth =11775
                    LayoutCachedHeight =3096
                    RowStart =4
                    RowEnd =4
                    ColumnStart =2
                    ColumnEnd =3
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeThemeColorIndex =0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =780
                    Width =8835
                    Height =510
                    FontSize =18
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label332"
                    Caption ="Next Scheduled Test:"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =780
                    LayoutCachedWidth =8865
                    LayoutCachedHeight =1290
                    RowStart =1
                    RowEnd =1
                    ColumnEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =8925
                    Top =780
                    Width =9930
                    Height =510
                    FontSize =18
                    FontWeight =700
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="lblNEXT"
                    Caption ="1/16/2021"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =8925
                    LayoutCachedTop =780
                    LayoutCachedWidth =18855
                    LayoutCachedHeight =1290
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =5
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =1935
                    Width =8835
                    Height =570
                    FontSize =18
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label386"
                    Caption ="DI Lines Sanitized:"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =1935
                    LayoutCachedWidth =8865
                    LayoutCachedHeight =2505
                    RowStart =3
                    RowEnd =3
                    ColumnEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin ToggleButton
                    OverlapFlags =85
                    Left =8925
                    Top =1935
                    Width =2850
                    Height =570
                    FontSize =18
                    FontWeight =400
                    TabIndex =1
                    ForeColor =2500134
                    Name ="tglSANITIZE"
                    DefaultValue ="False"
                    Caption ="No"
                    FontName ="Calibri"
                    OnMouseMove ="[Event Procedure]"
                    OnClick ="[Event Procedure]"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =8925
                    LayoutCachedTop =1935
                    LayoutCachedWidth =11775
                    LayoutCachedHeight =2505
                    RowStart =3
                    RowEnd =3
                    ColumnStart =2
                    ColumnEnd =3
                    LayoutGroup =1
                    ForeTint =100.0
                    ForeShade =75.0
                    BackColor =16245684
                    BackTint =40.0
                    OldBorderStyle =1
                    BorderThemeColorIndex =7
                    BorderTint =100.0
                    HoverThemeColorIndex =6
                    HoverTint =100.0
                    PressedThemeColorIndex =8
                    PressedShade =100.0
                    HoverForeColor =3355443
                    HoverForeTint =100.0
                    PressedForeThemeColorIndex =0
                    PressedForeShade =75.0
                    GroupTable =1
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9975
                    Top =3480
                    Width =1800
                    Height =480
                    TabIndex =4
                    ForeColor =6710886
                    Name ="cmdUNDO"
                    Caption ="cmdUNDO"
                    OnClick ="[Event Procedure]"
                    GroupTable =1
                    TopPadding =360
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
                    LayoutCachedLeft =9975
                    LayoutCachedTop =3480
                    LayoutCachedWidth =11775
                    LayoutCachedHeight =3960
                    RowStart =5
                    RowEnd =5
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
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
                    WebImagePaddingTop =24
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin EmptyCell
                    Left =11835
                    Top =1935
                    Width =7020
                    Height =2025
                    Name ="EmptyCell497"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =11835
                    LayoutCachedTop =1935
                    LayoutCachedWidth =18855
                    LayoutCachedHeight =3960
                    RowStart =3
                    RowEnd =5
                    ColumnStart =4
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =30
                    Top =3480
                    Width =8025
                    Height =480
                    Name ="EmptyCell520"
                    GroupTable =1
                    TopPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =3480
                    LayoutCachedWidth =8055
                    LayoutCachedHeight =3960
                    RowStart =5
                    RowEnd =5
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =14490
                    Top =1350
                    Width =4365
                    Height =531
                    Name ="EmptyCell528"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =14490
                    LayoutCachedTop =1350
                    LayoutCachedWidth =18855
                    LayoutCachedHeight =1881
                    RowStart =2
                    RowEnd =2
                    ColumnStart =5
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =1
                End
            End
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
Dim taskID As Long

Private Sub Image169_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)

MouseCursor (32649)

End Sub

Private Sub cmdENTER_Click()
On Error GoTo Macro1_Err
Dim db As DAO.Database
Dim sVal As String
Dim sTable As String
Dim sSQL As String

Set db = CurrentDb
sTable = DLookup("[tableRel]", "tblTASKLIST", "[ID] = " & taskID)

    If ckIncomplete("cmb*", Me, True, 2) = False Then
        If tglSANITIZE = True Then
            sVal = cmbName & ", " & cmbBUILDING
            sSQL = "Insert into " & sTable & " (techName, building) " & _
                    "Values (" & sVal & ");"
            db.Execute sSQL, dbFailOnError
            MsgBox "The check has successfully been recorded.", vbOKOnly, "Success"
        Else:
            MsgBox "Please check the box for sanitization.", vbOKOnly, "Missing Info"
        End If
        
    End If
    db.Close
        
Macro1_Exit:
    Exit Sub

Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit
    
End Sub

Private Sub cmdUndo_Click()
On Error Resume Next
Dim nextDate As Date

    nextDate = nextTestDate(taskID)
    lblNEXT.Caption = nextDate
    
    tglSANITIZE = False
    Call tglSANITIZE_Click
    
    cmbName = Null
    cmbName.SetFocus
    
End Sub

Private Sub Form_Load()
On Error Resume Next

    'lookup next due date and post in caption
    Me.Parent!lblBANNER.Caption = "Quarterly PM"
    taskID = 12
    Call cmdUndo_Click
    
End Sub

Private Sub tglSANITIZE_Click()

    If tglSANITIZE = True Then
        tglSANITIZE.Caption = "Yes"
    ElseIf tglSANITIZE = False Then
        tglSANITIZE.Caption = "No"
    End If

End Sub

Private Sub tglSANITIZE_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

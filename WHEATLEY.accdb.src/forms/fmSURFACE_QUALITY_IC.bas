Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowEdits = NotDefault
    DataEntry = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =12728
    DatasheetFontHeight =11
    ItemSuffix =864
    Right =24555
    Bottom =14055
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0x7e8a4530151be540
    End
    RecordSource ="tblSURFACE_ANALYSIS_IC"
    Caption ="Surface Quality - IC"
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
            Height =7686
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3810
                    Top =675
                    Width =3630
                    Height =480
                    FontSize =18
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="timeDate"
                    ControlSource ="timeDate"
                    Format ="Short Date"
                    StatusBarText ="Date that sample was taken"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =3810
                    LayoutCachedTop =675
                    LayoutCachedWidth =7440
                    LayoutCachedHeight =1155
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =4
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
                            Left =60
                            Top =675
                            Width =3690
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label0"
                            Caption ="Date:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =60
                            LayoutCachedTop =675
                            LayoutCachedWidth =3750
                            LayoutCachedHeight =1155
                            RowStart =1
                            RowEnd =1
                            ColumnEnd =1
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =3810
                    Top =1215
                    Width =3630
                    Height =480
                    FontSize =18
                    TabIndex =1
                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"300\""
                    Name ="laboratory"
                    ControlSource ="laboratory"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tblLABORATORIES.ID, tblLABORATORIES.nameLab FROM tblLABORATORIES WHERE (("
                        "(tblLABORATORIES.testingAvailable.Value)=7)) ORDER BY tblLABORATORIES.nameLab; "
                    ColumnWidths ="0;1440"
                    StatusBarText ="Laboratory that processed results"
                    GroupTable =1
                    GridlineColor =10921638
                    ListItemsEditForm ="fmLABORATORIES_NEW"
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =3810
                    LayoutCachedTop =1215
                    LayoutCachedWidth =7440
                    LayoutCachedHeight =1695
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
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =60
                            Top =1215
                            Width =3690
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label6"
                            Caption ="Laboratory:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =60
                            LayoutCachedTop =1215
                            LayoutCachedWidth =3750
                            LayoutCachedHeight =1695
                            RowStart =2
                            RowEnd =2
                            ColumnEnd =1
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin CommandButton
                    Default = NotDefault
                    OverlapFlags =85
                    Left =10485
                    Top =4905
                    Width =2205
                    Height =480
                    TabIndex =17
                    ForeColor =6710886
                    Name ="Command51"
                    Caption ="Command51"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Add Record"
                    GroupTable =1
                    LeftPadding =720
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
                    LayoutCachedLeft =10485
                    LayoutCachedTop =4905
                    LayoutCachedWidth =12690
                    LayoutCachedHeight =5385
                    RowStart =8
                    RowEnd =8
                    ColumnStart =6
                    ColumnEnd =6
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
                    GroupTable =1
                    WebImagePaddingLeft =48
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =10485
                    Top =5445
                    Width =2205
                    Height =480
                    TabIndex =18
                    ForeColor =6710886
                    Name ="Command121"
                    Caption ="Command121"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Undo Record"
                    GroupTable =1
                    LeftPadding =720
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
                    LayoutCachedLeft =10485
                    LayoutCachedTop =5445
                    LayoutCachedWidth =12690
                    LayoutCachedHeight =5925
                    RowStart =9
                    RowEnd =9
                    ColumnStart =6
                    ColumnEnd =6
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
                    GroupTable =1
                    WebImagePaddingLeft =48
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =4920
                    Top =60
                    Width =4815
                    Height =432
                    FontSize =16
                    FontWeight =700
                    LeftMargin =360
                    RightMargin =144
                    BorderColor =11316396
                    ForeColor =3355443
                    Name ="lblNEXT"
                    Caption ="1/24/2023"
                    GroupTable =1
                    BottomPadding =144
                    GridlineColor =16730623
                    LayoutCachedLeft =4920
                    LayoutCachedTop =60
                    LayoutCachedWidth =9735
                    LayoutCachedHeight =492
                    ColumnStart =3
                    ColumnEnd =5
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GridlineThemeColorIndex =-1
                    GroupTable =1
                End
                Begin Label
                    FontUnderline = NotDefault
                    OverlapFlags =85
                    TextAlign =3
                    Left =60
                    Top =60
                    Width =4800
                    Height =432
                    FontSize =16
                    FontWeight =700
                    RightMargin =144
                    BorderColor =11316396
                    ForeColor =3355443
                    Name ="Label202"
                    Caption ="Next Scheduled Test:"
                    GroupTable =1
                    BottomPadding =144
                    GridlineColor =16730623
                    LayoutCachedLeft =60
                    LayoutCachedTop =60
                    LayoutCachedWidth =4860
                    LayoutCachedHeight =492
                    ColumnEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GridlineThemeColorIndex =-1
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =60
                    Top =2985
                    Width =9675
                    Height =630
                    FontSize =12
                    LeftMargin =720
                    RightMargin =720
                    BorderColor =10066329
                    ForeColor =6052956
                    Name ="Label412"
                    Caption ="If an element is \"ND\" or \"Not Detected,\" submit \"0\" in its place. If an el"
                        "ement was NOT tested, leave blank."
                    GroupTable =1
                    TopPadding =180
                    BottomPadding =180
                    GridlineColor =10921638
                    LayoutCachedLeft =60
                    LayoutCachedTop =2985
                    LayoutCachedWidth =9735
                    LayoutCachedHeight =3615
                    RowStart =5
                    RowEnd =5
                    ColumnEnd =5
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    ForeTint =80.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =2640
                    Top =3825
                    Width =2220
                    Height =480
                    FontSize =18
                    TabIndex =4
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="chloride"
                    ControlSource ="chloride"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =2640
                    LayoutCachedTop =3825
                    LayoutCachedWidth =4860
                    LayoutCachedHeight =4305
                    RowStart =6
                    RowEnd =6
                    ColumnStart =1
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
                            Left =60
                            Top =3825
                            Width =2520
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label443"
                            Caption ="Chloride:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =60
                            LayoutCachedTop =3825
                            LayoutCachedWidth =2580
                            LayoutCachedHeight =4305
                            RowStart =6
                            RowEnd =6
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =2640
                    Top =4365
                    Width =2220
                    Height =480
                    FontSize =18
                    TabIndex =5
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="bromide"
                    ControlSource ="bromide"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =2640
                    LayoutCachedTop =4365
                    LayoutCachedWidth =4860
                    LayoutCachedHeight =4845
                    RowStart =7
                    RowEnd =7
                    ColumnStart =1
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
                            Left =60
                            Top =4365
                            Width =2520
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label448"
                            Caption ="Bromide:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =60
                            LayoutCachedTop =4365
                            LayoutCachedWidth =2580
                            LayoutCachedHeight =4845
                            RowStart =7
                            RowEnd =7
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =2640
                    Top =4905
                    Width =2220
                    Height =480
                    FontSize =18
                    TabIndex =6
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="fluoride"
                    ControlSource ="fluoride"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =2640
                    LayoutCachedTop =4905
                    LayoutCachedWidth =4860
                    LayoutCachedHeight =5385
                    RowStart =8
                    RowEnd =8
                    ColumnStart =1
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
                            Left =60
                            Top =4905
                            Width =2520
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label460"
                            Caption ="Fluoride:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =60
                            LayoutCachedTop =4905
                            LayoutCachedWidth =2580
                            LayoutCachedHeight =5385
                            RowStart =8
                            RowEnd =8
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =2640
                    Top =5445
                    Width =2220
                    Height =480
                    FontSize =18
                    TabIndex =7
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="nitrate"
                    ControlSource ="nitrate"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =2640
                    LayoutCachedTop =5445
                    LayoutCachedWidth =4860
                    LayoutCachedHeight =5925
                    RowStart =9
                    RowEnd =9
                    ColumnStart =1
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
                            Left =60
                            Top =5445
                            Width =2520
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label472"
                            Caption ="Nitrate:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =60
                            LayoutCachedTop =5445
                            LayoutCachedWidth =2580
                            LayoutCachedHeight =5925
                            RowStart =9
                            RowEnd =9
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =2640
                    Top =5985
                    Width =2220
                    Height =480
                    FontSize =18
                    TabIndex =8
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="nitrite"
                    ControlSource ="nitrite"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =2640
                    LayoutCachedTop =5985
                    LayoutCachedWidth =4860
                    LayoutCachedHeight =6465
                    RowStart =10
                    RowEnd =10
                    ColumnStart =1
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
                            Left =60
                            Top =5985
                            Width =2520
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label484"
                            Caption ="Nitrite:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =60
                            LayoutCachedTop =5985
                            LayoutCachedWidth =2580
                            LayoutCachedHeight =6465
                            RowStart =10
                            RowEnd =10
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =2640
                    Top =6525
                    Width =2220
                    Height =480
                    FontSize =18
                    TabIndex =9
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="phosphate"
                    ControlSource ="phosphate"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =2640
                    LayoutCachedTop =6525
                    LayoutCachedWidth =4860
                    LayoutCachedHeight =7005
                    RowStart =11
                    RowEnd =11
                    ColumnStart =1
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
                            Left =60
                            Top =6525
                            Width =2520
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label496"
                            Caption ="Phosphate:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =60
                            LayoutCachedTop =6525
                            LayoutCachedWidth =2580
                            LayoutCachedHeight =7005
                            RowStart =11
                            RowEnd =11
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =2640
                    Top =7065
                    Width =2220
                    Height =480
                    FontSize =18
                    TabIndex =10
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="sulfate"
                    ControlSource ="sulfate"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =2640
                    LayoutCachedTop =7065
                    LayoutCachedWidth =4860
                    LayoutCachedHeight =7545
                    RowStart =12
                    RowEnd =12
                    ColumnStart =1
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
                            Left =60
                            Top =7065
                            Width =2520
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label508"
                            Caption ="Sulfate:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =60
                            LayoutCachedTop =7065
                            LayoutCachedWidth =2580
                            LayoutCachedHeight =7545
                            RowStart =12
                            RowEnd =12
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7500
                    Top =3825
                    Width =2235
                    Height =480
                    FontSize =18
                    TabIndex =11
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtNH4"
                    ControlSource ="ammonium"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =7500
                    LayoutCachedTop =3825
                    LayoutCachedWidth =9735
                    LayoutCachedHeight =4305
                    RowStart =6
                    RowEnd =6
                    ColumnStart =5
                    ColumnEnd =5
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
                            Left =4920
                            Top =3825
                            Width =2520
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label573"
                            Caption ="Ammonium:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =4920
                            LayoutCachedTop =3825
                            LayoutCachedWidth =7440
                            LayoutCachedHeight =4305
                            RowStart =6
                            RowEnd =6
                            ColumnStart =3
                            ColumnEnd =4
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin EmptyCell
                    Left =4920
                    Top =7065
                    Width =4815
                    Height =480
                    Name ="EmptyCell582"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =4920
                    LayoutCachedTop =7065
                    LayoutCachedWidth =9735
                    LayoutCachedHeight =7545
                    RowStart =12
                    RowEnd =12
                    ColumnStart =3
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7500
                    Top =4365
                    Width =2235
                    Height =480
                    FontSize =18
                    TabIndex =12
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtCa"
                    ControlSource ="calcium"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =7500
                    LayoutCachedTop =4365
                    LayoutCachedWidth =9735
                    LayoutCachedHeight =4845
                    RowStart =7
                    RowEnd =7
                    ColumnStart =5
                    ColumnEnd =5
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
                            Left =4920
                            Top =4365
                            Width =2520
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label595"
                            Caption ="Calcium:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =4920
                            LayoutCachedTop =4365
                            LayoutCachedWidth =7440
                            LayoutCachedHeight =4845
                            RowStart =7
                            RowEnd =7
                            ColumnStart =3
                            ColumnEnd =4
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7500
                    Top =4905
                    Width =2235
                    Height =480
                    FontSize =18
                    TabIndex =13
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtLi"
                    ControlSource ="lithium"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =7500
                    LayoutCachedTop =4905
                    LayoutCachedWidth =9735
                    LayoutCachedHeight =5385
                    RowStart =8
                    RowEnd =8
                    ColumnStart =5
                    ColumnEnd =5
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
                            Left =4920
                            Top =4905
                            Width =2520
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label601"
                            Caption ="Lithium:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =4920
                            LayoutCachedTop =4905
                            LayoutCachedWidth =7440
                            LayoutCachedHeight =5385
                            RowStart =8
                            RowEnd =8
                            ColumnStart =3
                            ColumnEnd =4
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7500
                    Top =5445
                    Width =2235
                    Height =480
                    FontSize =18
                    TabIndex =14
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtMg"
                    ControlSource ="magnesium"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =7500
                    LayoutCachedTop =5445
                    LayoutCachedWidth =9735
                    LayoutCachedHeight =5925
                    RowStart =9
                    RowEnd =9
                    ColumnStart =5
                    ColumnEnd =5
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
                            Left =4920
                            Top =5445
                            Width =2520
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label607"
                            Caption ="Magnesium:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =4920
                            LayoutCachedTop =5445
                            LayoutCachedWidth =7440
                            LayoutCachedHeight =5925
                            RowStart =9
                            RowEnd =9
                            ColumnStart =3
                            ColumnEnd =4
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7500
                    Top =5985
                    Width =2235
                    Height =480
                    FontSize =18
                    TabIndex =15
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtK"
                    ControlSource ="potassium"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =7500
                    LayoutCachedTop =5985
                    LayoutCachedWidth =9735
                    LayoutCachedHeight =6465
                    RowStart =10
                    RowEnd =10
                    ColumnStart =5
                    ColumnEnd =5
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
                            Left =4920
                            Top =5985
                            Width =2520
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label613"
                            Caption ="Potassium:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =4920
                            LayoutCachedTop =5985
                            LayoutCachedWidth =7440
                            LayoutCachedHeight =6465
                            RowStart =10
                            RowEnd =10
                            ColumnStart =3
                            ColumnEnd =4
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7500
                    Top =6525
                    Width =2235
                    Height =480
                    FontSize =18
                    TabIndex =16
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtNa"
                    ControlSource ="sodium"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =7500
                    LayoutCachedTop =6525
                    LayoutCachedWidth =9735
                    LayoutCachedHeight =7005
                    RowStart =11
                    RowEnd =11
                    ColumnStart =5
                    ColumnEnd =5
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
                            Left =4920
                            Top =6525
                            Width =2520
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label619"
                            Caption ="Sodium:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =4920
                            LayoutCachedTop =6525
                            LayoutCachedWidth =7440
                            LayoutCachedHeight =7005
                            RowStart =11
                            RowEnd =11
                            ColumnStart =3
                            ColumnEnd =4
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =60
                    Top =2295
                    Width =3690
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label625"
                    Caption ="Units:"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =60
                    LayoutCachedTop =2295
                    LayoutCachedWidth =3750
                    LayoutCachedHeight =2775
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
                    LimitToList = NotDefault
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =3810
                    Top =2295
                    Width =3630
                    Height =480
                    FontSize =18
                    TabIndex =3
                    Name ="cmbUnits"
                    ControlSource ="units"
                    RowSourceType ="Value List"
                    RowSource ="1;\"μg/part\";2;\"10^12 molecules/cm^2\";3;\"ppm\""
                    ColumnWidths ="0;1440"
                    GroupTable =1
                    GridlineColor =10921638
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =3810
                    LayoutCachedTop =2295
                    LayoutCachedWidth =7440
                    LayoutCachedHeight =2775
                    RowStart =4
                    RowEnd =4
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
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =3810
                    Top =1755
                    Width =5925
                    Height =480
                    FontSize =18
                    TabIndex =2
                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                    Name ="Combo769"
                    ControlSource ="partNum"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tblPARTNUM.ID, tblPARTNUM.partNum FROM tblPARTNUM ORDER BY tblPARTNUM.par"
                        "tNum; "
                    ColumnWidths ="0;1440"
                    GroupTable =1
                    GridlineColor =10921638
                    AllowValueListEdits =0
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =3810
                    LayoutCachedTop =1755
                    LayoutCachedWidth =9735
                    LayoutCachedHeight =2235
                    RowStart =3
                    RowEnd =3
                    ColumnStart =2
                    ColumnEnd =5
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
                            Left =60
                            Top =1755
                            Width =3690
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label770"
                            Caption ="Part Number:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =60
                            LayoutCachedTop =1755
                            LayoutCachedWidth =3750
                            LayoutCachedHeight =2235
                            RowStart =3
                            RowEnd =3
                            ColumnEnd =1
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin EmptyCell
                    Left =7500
                    Top =2295
                    Width =2235
                    Height =480
                    Name ="EmptyCell797"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =7500
                    LayoutCachedTop =2295
                    LayoutCachedWidth =9735
                    LayoutCachedHeight =2775
                    RowStart =4
                    RowEnd =4
                    ColumnStart =5
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =7500
                    Top =675
                    Width =2235
                    Height =1020
                    Name ="EmptyCell823"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =7500
                    LayoutCachedTop =675
                    LayoutCachedWidth =9735
                    LayoutCachedHeight =1695
                    RowStart =1
                    RowEnd =2
                    ColumnStart =5
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =10485
                    Top =60
                    Width =2205
                    Height =4785
                    Name ="EmptyCell829"
                    GroupTable =1
                    LeftPadding =720
                    GridlineColor =10921638
                    LayoutCachedLeft =10485
                    LayoutCachedTop =60
                    LayoutCachedWidth =12690
                    LayoutCachedHeight =4845
                    RowEnd =7
                    ColumnStart =6
                    ColumnEnd =6
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =10485
                    Top =5985
                    Width =2205
                    Height =1560
                    Name ="EmptyCell839"
                    GroupTable =1
                    LeftPadding =720
                    GridlineColor =10921638
                    LayoutCachedLeft =10485
                    LayoutCachedTop =5985
                    LayoutCachedWidth =12690
                    LayoutCachedHeight =7545
                    RowStart =10
                    RowEnd =12
                    ColumnStart =6
                    ColumnEnd =6
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

Private Sub Command121_Click()
On Error Resume Next
    DoCmd.RunCommand acCmdUndo
    timeDate.SetFocus
    
End Sub

Private Sub Command51_Click()
On Error GoTo Macro1_Err

    If IsNull(timeDate) = True Then
        MsgBox "Enter the date sample was taken.", vbOKOnly, "Missing Info"
        timeDate.SetFocus
        Exit Sub
    ElseIf IsNull(laboratory) = True Then
        MsgBox "Enter the laboratory.", vbOKOnly, "Missing Info"
        laboratory.SetFocus
        Exit Sub
    
    Else:
        DoCmd.GoToRecord , "", acNewRec
        timeDate.SetFocus
        Call Form_Load
    End If
    
Macro1_Exit:
    Exit Sub

Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit
    
End Sub

Private Sub Form_Load()
Dim taskID As Long
Dim nextDate As Date

taskID = 17 'assigned task ID number

    nextDate = nextTestDate(taskID)
    lblNEXT.Caption = nextDate
    
End Sub

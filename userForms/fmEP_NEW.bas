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
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =19125
    DatasheetFontHeight =11
    ItemSuffix =517
    Right =18900
    Bottom =12495
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0x6b8281ad7487e540
    End
    Caption ="New EP Information"
    DatasheetFontName ="Calibri"
    OnLoad ="[Event Procedure]"
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
        Begin ListBox
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
        Begin EmptyCell
            Height =240
            GridlineThemeColorIndex =1
            GridlineShade =65.0
        End
        Begin Section
            Height =9060
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    ListRows =18
                    Left =5610
                    Top =120
                    Width =4470
                    Height =570
                    FontSize =18
                    ColumnInfo ="\"\";\"\";\"Part Number\";\"\";\"10\";\"510\""
                    Name ="cmbTALON"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tblPARTNUM.ID, tblPARTNUM.partNum FROM tblPARTNUM ORDER BY tblPARTNUM.par"
                        "tNum; "
                    ColumnWidths ="0;1440"
                    AfterUpdate ="[Event Procedure]"
                    OnNotInList ="[Event Procedure]"
                    GroupTable =1
                    GridlineColor =10921638
                    LeftMargin =44
                    TopMargin =43
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =5610
                    LayoutCachedTop =120
                    LayoutCachedWidth =10080
                    LayoutCachedHeight =690
                    ColumnStart =1
                    ColumnEnd =3
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
                            Left =360
                            Top =120
                            Width =5190
                            Height =570
                            FontSize =18
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label1"
                            Caption ="Part Number:"
                            GroupTable =1
                            LeftPadding =360
                            GridlineColor =10921638
                            LayoutCachedLeft =360
                            LayoutCachedTop =120
                            LayoutCachedWidth =5550
                            LayoutCachedHeight =690
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
                    ListRows =10
                    Left =5610
                    Top =750
                    Width =1350
                    Height =570
                    FontSize =18
                    TabIndex =1
                    ColumnInfo ="\"\";\"\";\"Rev\";\"\";\"10\";\"510\""
                    Name ="cmbRev"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT refREV.ID, refREV.rev FROM refREV; "
                    ColumnWidths ="0;1440"
                    AfterUpdate ="[Event Procedure]"
                    GroupTable =1
                    GridlineColor =10921638
                    LeftMargin =44
                    TopMargin =43
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =5610
                    LayoutCachedTop =750
                    LayoutCachedWidth =6960
                    LayoutCachedHeight =1320
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
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
                            Left =360
                            Top =750
                            Width =5190
                            Height =570
                            FontSize =18
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label5"
                            Caption ="Rev:"
                            GroupTable =1
                            LeftPadding =360
                            GridlineColor =10921638
                            LayoutCachedLeft =360
                            LayoutCachedTop =750
                            LayoutCachedWidth =5550
                            LayoutCachedHeight =1320
                            RowStart =1
                            RowEnd =1
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
                    Left =5610
                    Top =2010
                    Width =3525
                    Height =570
                    FontSize =18
                    TabIndex =4
                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                    Name ="cmbCap"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                        "E (((qryPARTNUM_ALL.partUseage)=1)) ORDER BY qryPARTNUM_ALL.partNumber; "
                    ColumnWidths ="0;1440"
                    OnNotInList ="[Event Procedure]"
                    GroupTable =1
                    GridlineColor =10921638
                    AllowValueListEdits =0
                    LeftMargin =44
                    TopMargin =43
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =5610
                    LayoutCachedTop =2010
                    LayoutCachedWidth =9135
                    LayoutCachedHeight =2580
                    RowStart =3
                    RowEnd =3
                    ColumnStart =1
                    ColumnEnd =2
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
                            Left =360
                            Top =2010
                            Width =5190
                            Height =570
                            FontSize =18
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label13"
                            Caption ="Cap:"
                            GroupTable =1
                            LeftPadding =360
                            GridlineColor =10921638
                            LayoutCachedLeft =360
                            LayoutCachedTop =2010
                            LayoutCachedWidth =5550
                            LayoutCachedHeight =2580
                            RowStart =3
                            RowEnd =3
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =5610
                    Top =2640
                    Width =3525
                    Height =570
                    FontSize =18
                    TabIndex =5
                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                    Name ="cmbBase"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                        "E (((qryPARTNUM_ALL.partUseage)=2)) ORDER BY qryPARTNUM_ALL.partNumber; "
                    ColumnWidths ="0;1440"
                    OnNotInList ="[Event Procedure]"
                    GroupTable =1
                    GridlineColor =10921638
                    AllowValueListEdits =0
                    LeftMargin =44
                    TopMargin =43
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =5610
                    LayoutCachedTop =2640
                    LayoutCachedWidth =9135
                    LayoutCachedHeight =3210
                    RowStart =4
                    RowEnd =4
                    ColumnStart =1
                    ColumnEnd =2
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
                            Left =360
                            Top =2640
                            Width =5190
                            Height =570
                            FontSize =18
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label21"
                            Caption ="Base:"
                            GroupTable =1
                            LeftPadding =360
                            GridlineColor =10921638
                            LayoutCachedLeft =360
                            LayoutCachedTop =2640
                            LayoutCachedWidth =5550
                            LayoutCachedHeight =3210
                            RowStart =4
                            RowEnd =4
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin Tab
                    OverlapFlags =85
                    Left =360
                    Top =4230
                    Width =13020
                    Height =4515
                    FontSize =14
                    TabIndex =10
                    TabFixedWidth =2160
                    TabFixedHeight =576
                    Name ="TabCtl28"
                    FontName ="Calibri Light"
                    GroupTable =1
                    LeftPadding =360
                    TopPadding =360
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =360
                    LayoutCachedTop =4230
                    LayoutCachedWidth =13380
                    LayoutCachedHeight =8745
                    RowStart =6
                    RowEnd =10
                    ColumnEnd =4
                    LayoutGroup =1
                    BackThemeColorIndex =8
                    BackTint =60.0
                    BackShade =100.0
                    BorderThemeColorIndex =7
                    BorderTint =100.0
                    HoverThemeColorIndex =6
                    HoverForeColor =6710886
                    PressedForeColor =3355443
                    PressedForeTint =100.0
                    ForeColor =3355443
                    ForeTint =100.0
                    GroupTable =1
                    Begin
                        Begin Page
                            OverlapFlags =87
                            Left =435
                            Top =4868
                            Width =12870
                            Height =3802
                            BorderColor =10921638
                            Name ="Page29"
                            Caption ="Electrodes"
                            GridlineColor =10921638
                            LayoutCachedLeft =435
                            LayoutCachedTop =4868
                            LayoutCachedWidth =13305
                            LayoutCachedHeight =8670
                            WebImagePaddingLeft =2
                            WebImagePaddingTop =2
                            WebImagePaddingRight =2
                            WebImagePaddingBottom =2
                            Begin
                                Begin ComboBox
                                    LimitToList = NotDefault
                                    OverlapFlags =215
                                    TextAlign =1
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    ListRows =12
                                    Left =3840
                                    Top =4905
                                    Width =4320
                                    Height =576
                                    FontSize =18
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="cmbELECTRODE1"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                                        "E (((qryPARTNUM_ALL.partUseage)=3)) ORDER BY qryPARTNUM_ALL.partNumber; "
                                    ColumnWidths ="0;1440"
                                    OnNotInList ="[Event Procedure]"
                                    InputMask ="00\\-00\\-0000;0;_"
                                    GroupTable =8
                                    GridlineColor =10921638
                                    AllowValueListEdits =0
                                    LeftMargin =44
                                    TopMargin =43
                                    RightMargin =44
                                    BottomMargin =22

                                    LayoutCachedLeft =3840
                                    LayoutCachedTop =4905
                                    LayoutCachedWidth =8160
                                    LayoutCachedHeight =5481
                                    ColumnStart =1
                                    ColumnEnd =1
                                    LayoutGroup =2
                                    BackThemeColorIndex =3
                                    BackShade =98.0
                                    BorderThemeColorIndex =7
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeShade =75.0
                                    GroupTable =8
                                    Begin
                                        Begin Label
                                            OverlapFlags =215
                                            TextAlign =3
                                            Left =465
                                            Top =4905
                                            Width =3312
                                            Height =576
                                            FontSize =18
                                            TopMargin =29
                                            BorderColor =10066329
                                            ForeColor =3355443
                                            Name ="Label41"
                                            Caption ="Electrode 1:"
                                            GroupTable =8
                                            GridlineColor =10921638
                                            LayoutCachedLeft =465
                                            LayoutCachedTop =4905
                                            LayoutCachedWidth =3777
                                            LayoutCachedHeight =5481
                                            LayoutGroup =2
                                            BackThemeColorIndex =-1
                                            BorderThemeColorIndex =-1
                                            ForeTint =100.0
                                            GroupTable =8
                                        End
                                    End
                                End
                                Begin ComboBox
                                    LimitToList = NotDefault
                                    OverlapFlags =215
                                    TextAlign =1
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    ListRows =12
                                    Left =3840
                                    Top =5535
                                    Width =4320
                                    Height =570
                                    FontSize =18
                                    TabIndex =1
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="cmbELECTRODE2"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                                        "E (((qryPARTNUM_ALL.partUseage)=3)) ORDER BY qryPARTNUM_ALL.partNumber; "
                                    ColumnWidths ="0;1440"
                                    OnNotInList ="[Event Procedure]"
                                    InputMask ="00\\-00\\-0000;0;_"
                                    GroupTable =8
                                    GridlineColor =10921638
                                    AllowValueListEdits =0
                                    LeftMargin =44
                                    TopMargin =43
                                    RightMargin =44
                                    BottomMargin =22

                                    LayoutCachedLeft =3840
                                    LayoutCachedTop =5535
                                    LayoutCachedWidth =8160
                                    LayoutCachedHeight =6105
                                    RowStart =1
                                    RowEnd =1
                                    ColumnStart =1
                                    ColumnEnd =1
                                    LayoutGroup =2
                                    BackThemeColorIndex =3
                                    BackShade =98.0
                                    BorderThemeColorIndex =7
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeShade =75.0
                                    GroupTable =8
                                    Begin
                                        Begin Label
                                            OverlapFlags =215
                                            TextAlign =3
                                            Left =465
                                            Top =5535
                                            Width =3312
                                            Height =570
                                            FontSize =18
                                            TopMargin =29
                                            BorderColor =10066329
                                            ForeColor =3355443
                                            Name ="Label45"
                                            Caption ="Electrode 2:"
                                            GroupTable =8
                                            GridlineColor =10921638
                                            LayoutCachedLeft =465
                                            LayoutCachedTop =5535
                                            LayoutCachedWidth =3777
                                            LayoutCachedHeight =6105
                                            RowStart =1
                                            RowEnd =1
                                            LayoutGroup =2
                                            BackThemeColorIndex =-1
                                            BorderThemeColorIndex =-1
                                            ForeTint =100.0
                                            GroupTable =8
                                        End
                                    End
                                End
                                Begin ComboBox
                                    LimitToList = NotDefault
                                    OverlapFlags =215
                                    TextAlign =1
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    ListRows =12
                                    Left =3840
                                    Top =6165
                                    Width =4320
                                    Height =570
                                    FontSize =18
                                    TabIndex =2
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="cmbELECTRODE3"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                                        "E (((qryPARTNUM_ALL.partUseage)=3)) ORDER BY qryPARTNUM_ALL.partNumber; "
                                    ColumnWidths ="0;1440"
                                    OnNotInList ="[Event Procedure]"
                                    InputMask ="00\\-00\\-0000;0;_"
                                    GroupTable =8
                                    GridlineColor =10921638
                                    AllowValueListEdits =0
                                    LeftMargin =44
                                    TopMargin =43
                                    RightMargin =44
                                    BottomMargin =22

                                    LayoutCachedLeft =3840
                                    LayoutCachedTop =6165
                                    LayoutCachedWidth =8160
                                    LayoutCachedHeight =6735
                                    RowStart =2
                                    RowEnd =2
                                    ColumnStart =1
                                    ColumnEnd =1
                                    LayoutGroup =2
                                    BackThemeColorIndex =3
                                    BackShade =98.0
                                    BorderThemeColorIndex =7
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeShade =75.0
                                    GroupTable =8
                                    Begin
                                        Begin Label
                                            OverlapFlags =215
                                            TextAlign =3
                                            Left =465
                                            Top =6165
                                            Width =3312
                                            Height =570
                                            FontSize =18
                                            TopMargin =29
                                            BorderColor =10066329
                                            ForeColor =3355443
                                            Name ="Label47"
                                            Caption ="Electrode 3:"
                                            GroupTable =8
                                            GridlineColor =10921638
                                            LayoutCachedLeft =465
                                            LayoutCachedTop =6165
                                            LayoutCachedWidth =3777
                                            LayoutCachedHeight =6735
                                            RowStart =2
                                            RowEnd =2
                                            LayoutGroup =2
                                            BackThemeColorIndex =-1
                                            BorderThemeColorIndex =-1
                                            ForeTint =100.0
                                            GroupTable =8
                                        End
                                    End
                                End
                                Begin ComboBox
                                    LimitToList = NotDefault
                                    OverlapFlags =215
                                    TextAlign =1
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    ListRows =12
                                    Left =3840
                                    Top =6795
                                    Width =4320
                                    Height =570
                                    FontSize =18
                                    TabIndex =3
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="cmbELECTRODE4"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                                        "E (((qryPARTNUM_ALL.partUseage)=3)) ORDER BY qryPARTNUM_ALL.partNumber; "
                                    ColumnWidths ="0;1440"
                                    OnNotInList ="[Event Procedure]"
                                    GroupTable =8
                                    GridlineColor =10921638
                                    AllowValueListEdits =0
                                    LeftMargin =44
                                    TopMargin =43
                                    RightMargin =44
                                    BottomMargin =22

                                    LayoutCachedLeft =3840
                                    LayoutCachedTop =6795
                                    LayoutCachedWidth =8160
                                    LayoutCachedHeight =7365
                                    RowStart =3
                                    RowEnd =3
                                    ColumnStart =1
                                    ColumnEnd =1
                                    LayoutGroup =2
                                    BackThemeColorIndex =3
                                    BackShade =98.0
                                    BorderThemeColorIndex =7
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeShade =75.0
                                    GroupTable =8
                                    Begin
                                        Begin Label
                                            OverlapFlags =215
                                            TextAlign =3
                                            Left =465
                                            Top =6795
                                            Width =3312
                                            Height =570
                                            FontSize =18
                                            TopMargin =29
                                            BorderColor =10066329
                                            ForeColor =3355443
                                            Name ="Label49"
                                            Caption ="Electrode 4:"
                                            GroupTable =8
                                            GridlineColor =10921638
                                            LayoutCachedLeft =465
                                            LayoutCachedTop =6795
                                            LayoutCachedWidth =3777
                                            LayoutCachedHeight =7365
                                            RowStart =3
                                            RowEnd =3
                                            LayoutGroup =2
                                            BackThemeColorIndex =-1
                                            BorderThemeColorIndex =-1
                                            ForeTint =100.0
                                            GroupTable =8
                                        End
                                    End
                                End
                                Begin ComboBox
                                    LimitToList = NotDefault
                                    OverlapFlags =215
                                    TextAlign =1
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    ListRows =12
                                    Left =3840
                                    Top =7425
                                    Width =4320
                                    Height =570
                                    FontSize =18
                                    TabIndex =4
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="cmbELECTRODE5"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                                        "E (((qryPARTNUM_ALL.partUseage)=3)) ORDER BY qryPARTNUM_ALL.partNumber; "
                                    ColumnWidths ="0;1440"
                                    OnNotInList ="[Event Procedure]"
                                    GroupTable =8
                                    GridlineColor =10921638
                                    AllowValueListEdits =0
                                    LeftMargin =44
                                    TopMargin =43
                                    RightMargin =44
                                    BottomMargin =22

                                    LayoutCachedLeft =3840
                                    LayoutCachedTop =7425
                                    LayoutCachedWidth =8160
                                    LayoutCachedHeight =7995
                                    RowStart =4
                                    RowEnd =4
                                    ColumnStart =1
                                    ColumnEnd =1
                                    LayoutGroup =2
                                    BackThemeColorIndex =3
                                    BackShade =98.0
                                    BorderThemeColorIndex =7
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeShade =75.0
                                    GroupTable =8
                                    Begin
                                        Begin Label
                                            OverlapFlags =215
                                            TextAlign =3
                                            Left =465
                                            Top =7425
                                            Width =3312
                                            Height =570
                                            FontSize =18
                                            TopMargin =29
                                            BorderColor =10066329
                                            ForeColor =3355443
                                            Name ="Label51"
                                            Caption ="Electrode 5:"
                                            GroupTable =8
                                            GridlineColor =10921638
                                            LayoutCachedLeft =465
                                            LayoutCachedTop =7425
                                            LayoutCachedWidth =3777
                                            LayoutCachedHeight =7995
                                            RowStart =4
                                            RowEnd =4
                                            LayoutGroup =2
                                            BackThemeColorIndex =-1
                                            BorderThemeColorIndex =-1
                                            ForeTint =100.0
                                            GroupTable =8
                                        End
                                    End
                                End
                                Begin ComboBox
                                    LimitToList = NotDefault
                                    OverlapFlags =215
                                    TextAlign =1
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    ListRows =12
                                    Left =3840
                                    Top =8055
                                    Width =4320
                                    Height =570
                                    FontSize =18
                                    TabIndex =5
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="cmbELECTRODE_G"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                                        "E (((qryPARTNUM_ALL.partUseage)=3) AND ((qryPARTNUM_ALL.subcategory)=12)) ORDER "
                                        "BY qryPARTNUM_ALL.partNumber; "
                                    ColumnWidths ="0;1440"
                                    DefaultValue ="\"A1343\""
                                    OnNotInList ="[Event Procedure]"
                                    GroupTable =8
                                    GridlineColor =10921638
                                    AllowValueListEdits =0
                                    LeftMargin =44
                                    TopMargin =43
                                    RightMargin =44
                                    BottomMargin =22

                                    LayoutCachedLeft =3840
                                    LayoutCachedTop =8055
                                    LayoutCachedWidth =8160
                                    LayoutCachedHeight =8625
                                    RowStart =5
                                    RowEnd =5
                                    ColumnStart =1
                                    ColumnEnd =1
                                    LayoutGroup =2
                                    BackThemeColorIndex =3
                                    BackShade =98.0
                                    BorderThemeColorIndex =7
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeShade =75.0
                                    GroupTable =8
                                    Begin
                                        Begin Label
                                            OverlapFlags =215
                                            TextAlign =3
                                            Left =465
                                            Top =8055
                                            Width =3312
                                            Height =570
                                            FontSize =18
                                            TopMargin =29
                                            BorderColor =10066329
                                            ForeColor =3355443
                                            Name ="Label53"
                                            Caption ="Ground Electrode:"
                                            GroupTable =8
                                            GridlineColor =10921638
                                            LayoutCachedLeft =465
                                            LayoutCachedTop =8055
                                            LayoutCachedWidth =3777
                                            LayoutCachedHeight =8625
                                            RowStart =5
                                            RowEnd =5
                                            LayoutGroup =2
                                            BackThemeColorIndex =-1
                                            BorderThemeColorIndex =-1
                                            ForeTint =100.0
                                            GroupTable =8
                                        End
                                    End
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =247
                            Left =435
                            Top =4868
                            Width =12870
                            Height =3802
                            BorderColor =10921638
                            Name ="cseal"
                            Caption ="C-Seal"
                            GridlineColor =10921638
                            LayoutCachedLeft =435
                            LayoutCachedTop =4868
                            LayoutCachedWidth =13305
                            LayoutCachedHeight =8670
                            WebImagePaddingLeft =2
                            WebImagePaddingTop =2
                            WebImagePaddingRight =2
                            WebImagePaddingBottom =2
                            Begin
                                Begin ComboBox
                                    OverlapFlags =247
                                    TextAlign =1
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    Left =3840
                                    Top =4905
                                    Width =4320
                                    Height =576
                                    FontSize =18
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="cmbCSEAL1"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                                        "E (((qryPARTNUM_ALL.partUseage)=6)) ORDER BY qryPARTNUM_ALL.partNumber; "
                                    ColumnWidths ="0;1440"
                                    OnNotInList ="[Event Procedure]"
                                    InputMask ="00\\-00\\-0000;0;_"
                                    GroupTable =25
                                    GridlineColor =10921638
                                    AllowValueListEdits =0
                                    LeftMargin =44
                                    TopMargin =43
                                    RightMargin =44
                                    BottomMargin =22

                                    LayoutCachedLeft =3840
                                    LayoutCachedTop =4905
                                    LayoutCachedWidth =8160
                                    LayoutCachedHeight =5481
                                    ColumnStart =1
                                    ColumnEnd =1
                                    LayoutGroup =7
                                    BackThemeColorIndex =3
                                    BackShade =98.0
                                    BorderThemeColorIndex =7
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeShade =75.0
                                    GroupTable =25
                                    Begin
                                        Begin Label
                                            OverlapFlags =247
                                            TextAlign =3
                                            Left =465
                                            Top =4905
                                            Width =3312
                                            Height =576
                                            FontSize =18
                                            TopMargin =29
                                            BorderColor =10066329
                                            ForeColor =3355443
                                            Name ="Label287"
                                            Caption ="C-Seal 1:"
                                            GroupTable =25
                                            GridlineColor =10921638
                                            LayoutCachedLeft =465
                                            LayoutCachedTop =4905
                                            LayoutCachedWidth =3777
                                            LayoutCachedHeight =5481
                                            LayoutGroup =7
                                            BackThemeColorIndex =-1
                                            BorderThemeColorIndex =-1
                                            ForeTint =100.0
                                            GroupTable =25
                                        End
                                    End
                                End
                                Begin ComboBox
                                    OverlapFlags =247
                                    TextAlign =1
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    Left =3840
                                    Top =5535
                                    Width =4320
                                    Height =570
                                    FontSize =18
                                    TabIndex =1
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="cmbCSEAL2"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                                        "E (((qryPARTNUM_ALL.partUseage)=6)) ORDER BY qryPARTNUM_ALL.partNumber; "
                                    ColumnWidths ="0;1440"
                                    OnNotInList ="[Event Procedure]"
                                    InputMask ="00\\-00\\-0000;0;_"
                                    GroupTable =25
                                    GridlineColor =10921638
                                    AllowValueListEdits =0
                                    LeftMargin =44
                                    TopMargin =43
                                    RightMargin =44
                                    BottomMargin =22

                                    LayoutCachedLeft =3840
                                    LayoutCachedTop =5535
                                    LayoutCachedWidth =8160
                                    LayoutCachedHeight =6105
                                    RowStart =1
                                    RowEnd =1
                                    ColumnStart =1
                                    ColumnEnd =1
                                    LayoutGroup =7
                                    BackThemeColorIndex =3
                                    BackShade =98.0
                                    BorderThemeColorIndex =7
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeShade =75.0
                                    GroupTable =25
                                    Begin
                                        Begin Label
                                            OverlapFlags =247
                                            TextAlign =3
                                            Left =465
                                            Top =5535
                                            Width =3312
                                            Height =570
                                            FontSize =18
                                            TopMargin =29
                                            BorderColor =10066329
                                            ForeColor =3355443
                                            Name ="Label291"
                                            Caption ="C-Seal 2:"
                                            GroupTable =25
                                            GridlineColor =10921638
                                            LayoutCachedLeft =465
                                            LayoutCachedTop =5535
                                            LayoutCachedWidth =3777
                                            LayoutCachedHeight =6105
                                            RowStart =1
                                            RowEnd =1
                                            LayoutGroup =7
                                            BackThemeColorIndex =-1
                                            BorderThemeColorIndex =-1
                                            ForeTint =100.0
                                            GroupTable =25
                                        End
                                    End
                                End
                                Begin ComboBox
                                    OverlapFlags =247
                                    TextAlign =1
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    Left =3840
                                    Top =6165
                                    Width =4320
                                    Height =570
                                    FontSize =18
                                    TabIndex =2
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="cmbCSEAL3"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                                        "E (((qryPARTNUM_ALL.partUseage)=6)) ORDER BY qryPARTNUM_ALL.partNumber; "
                                    ColumnWidths ="0;1440"
                                    OnNotInList ="[Event Procedure]"
                                    InputMask ="00\\-00\\-0000;0;_"
                                    GroupTable =25
                                    GridlineColor =10921638
                                    AllowValueListEdits =0
                                    LeftMargin =44
                                    TopMargin =43
                                    RightMargin =44
                                    BottomMargin =22

                                    LayoutCachedLeft =3840
                                    LayoutCachedTop =6165
                                    LayoutCachedWidth =8160
                                    LayoutCachedHeight =6735
                                    RowStart =2
                                    RowEnd =2
                                    ColumnStart =1
                                    ColumnEnd =1
                                    LayoutGroup =7
                                    BackThemeColorIndex =3
                                    BackShade =98.0
                                    BorderThemeColorIndex =7
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeShade =75.0
                                    GroupTable =25
                                    Begin
                                        Begin Label
                                            OverlapFlags =247
                                            TextAlign =3
                                            Left =465
                                            Top =6165
                                            Width =3312
                                            Height =570
                                            FontSize =18
                                            TopMargin =29
                                            BorderColor =10066329
                                            ForeColor =3355443
                                            Name ="Label299"
                                            Caption ="C-Seal 3:"
                                            GroupTable =25
                                            GridlineColor =10921638
                                            LayoutCachedLeft =465
                                            LayoutCachedTop =6165
                                            LayoutCachedWidth =3777
                                            LayoutCachedHeight =6735
                                            RowStart =2
                                            RowEnd =2
                                            LayoutGroup =7
                                            BackThemeColorIndex =-1
                                            BorderThemeColorIndex =-1
                                            ForeTint =100.0
                                            GroupTable =25
                                        End
                                    End
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =247
                            Left =435
                            Top =4868
                            Width =12870
                            Height =3802
                            BorderColor =10921638
                            Name ="Page156"
                            Caption ="Electrode Sleeve"
                            GridlineColor =10921638
                            LayoutCachedLeft =435
                            LayoutCachedTop =4868
                            LayoutCachedWidth =13305
                            LayoutCachedHeight =8670
                            WebImagePaddingLeft =2
                            WebImagePaddingTop =2
                            WebImagePaddingRight =2
                            WebImagePaddingBottom =2
                            Begin
                                Begin ComboBox
                                    LimitToList = NotDefault
                                    OverlapFlags =247
                                    TextAlign =1
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    ListRows =12
                                    Left =3840
                                    Top =4905
                                    Width =4320
                                    Height =576
                                    FontSize =18
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="cmbSleeve1"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                                        "E (((qryPARTNUM_ALL.partUseage)=4)) ORDER BY qryPARTNUM_ALL.partNumber; "
                                    ColumnWidths ="0;1440"
                                    OnNotInList ="[Event Procedure]"
                                    InputMask ="00\\-00\\-0000;0;_"
                                    GroupTable =18
                                    GridlineColor =10921638
                                    AllowValueListEdits =0
                                    LeftMargin =44
                                    TopMargin =43
                                    RightMargin =44
                                    BottomMargin =22

                                    LayoutCachedLeft =3840
                                    LayoutCachedTop =4905
                                    LayoutCachedWidth =8160
                                    LayoutCachedHeight =5481
                                    ColumnStart =1
                                    ColumnEnd =1
                                    LayoutGroup =3
                                    BackThemeColorIndex =3
                                    BackShade =98.0
                                    BorderThemeColorIndex =7
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeShade =75.0
                                    GroupTable =18
                                    Begin
                                        Begin Label
                                            OverlapFlags =247
                                            TextAlign =3
                                            Left =465
                                            Top =4905
                                            Width =3312
                                            Height =576
                                            FontSize =18
                                            TopMargin =29
                                            BorderColor =10066329
                                            ForeColor =3355443
                                            Name ="Label161"
                                            Caption ="Sleeve 1:"
                                            GroupTable =18
                                            GridlineColor =10921638
                                            LayoutCachedLeft =465
                                            LayoutCachedTop =4905
                                            LayoutCachedWidth =3777
                                            LayoutCachedHeight =5481
                                            LayoutGroup =3
                                            BackThemeColorIndex =-1
                                            BorderThemeColorIndex =-1
                                            ForeTint =100.0
                                            GroupTable =18
                                        End
                                    End
                                End
                                Begin ComboBox
                                    LimitToList = NotDefault
                                    OverlapFlags =247
                                    TextAlign =1
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    ListRows =12
                                    Left =3840
                                    Top =5535
                                    Width =4320
                                    Height =570
                                    FontSize =18
                                    TabIndex =1
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="cmbSleeve2"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                                        "E (((qryPARTNUM_ALL.partUseage)=4)) ORDER BY qryPARTNUM_ALL.partNumber; "
                                    ColumnWidths ="0;1440"
                                    OnNotInList ="[Event Procedure]"
                                    InputMask ="00\\-00\\-0000;0;_"
                                    GroupTable =18
                                    GridlineColor =10921638
                                    AllowValueListEdits =0
                                    LeftMargin =44
                                    TopMargin =43
                                    RightMargin =44
                                    BottomMargin =22

                                    LayoutCachedLeft =3840
                                    LayoutCachedTop =5535
                                    LayoutCachedWidth =8160
                                    LayoutCachedHeight =6105
                                    RowStart =1
                                    RowEnd =1
                                    ColumnStart =1
                                    ColumnEnd =1
                                    LayoutGroup =3
                                    BackThemeColorIndex =3
                                    BackShade =98.0
                                    BorderThemeColorIndex =7
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeShade =75.0
                                    GroupTable =18
                                    Begin
                                        Begin Label
                                            OverlapFlags =247
                                            TextAlign =3
                                            Left =465
                                            Top =5535
                                            Width =3312
                                            Height =570
                                            FontSize =18
                                            TopMargin =29
                                            BorderColor =10066329
                                            ForeColor =3355443
                                            Name ="Label173"
                                            Caption ="Sleeve 2:"
                                            GroupTable =18
                                            GridlineColor =10921638
                                            LayoutCachedLeft =465
                                            LayoutCachedTop =5535
                                            LayoutCachedWidth =3777
                                            LayoutCachedHeight =6105
                                            RowStart =1
                                            RowEnd =1
                                            LayoutGroup =3
                                            BackThemeColorIndex =-1
                                            BorderThemeColorIndex =-1
                                            ForeTint =100.0
                                            GroupTable =18
                                        End
                                    End
                                End
                                Begin ComboBox
                                    LimitToList = NotDefault
                                    OverlapFlags =247
                                    TextAlign =1
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    ListRows =12
                                    Left =3840
                                    Top =6165
                                    Width =4320
                                    Height =570
                                    FontSize =18
                                    TabIndex =2
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="cmbSleeve3"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                                        "E (((qryPARTNUM_ALL.partUseage)=4)) ORDER BY qryPARTNUM_ALL.partNumber; "
                                    ColumnWidths ="0;1440"
                                    OnNotInList ="[Event Procedure]"
                                    InputMask ="00\\-00\\-0000;0;_"
                                    GroupTable =18
                                    GridlineColor =10921638
                                    AllowValueListEdits =0
                                    LeftMargin =44
                                    TopMargin =43
                                    RightMargin =44
                                    BottomMargin =22

                                    LayoutCachedLeft =3840
                                    LayoutCachedTop =6165
                                    LayoutCachedWidth =8160
                                    LayoutCachedHeight =6735
                                    RowStart =2
                                    RowEnd =2
                                    ColumnStart =1
                                    ColumnEnd =1
                                    LayoutGroup =3
                                    BackThemeColorIndex =3
                                    BackShade =98.0
                                    BorderThemeColorIndex =7
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeShade =75.0
                                    GroupTable =18
                                    Begin
                                        Begin Label
                                            OverlapFlags =247
                                            TextAlign =3
                                            Left =465
                                            Top =6165
                                            Width =3312
                                            Height =570
                                            FontSize =18
                                            TopMargin =29
                                            BorderColor =10066329
                                            ForeColor =3355443
                                            Name ="Label181"
                                            Caption ="Sleeve 3:"
                                            GroupTable =18
                                            GridlineColor =10921638
                                            LayoutCachedLeft =465
                                            LayoutCachedTop =6165
                                            LayoutCachedWidth =3777
                                            LayoutCachedHeight =6735
                                            RowStart =2
                                            RowEnd =2
                                            LayoutGroup =3
                                            BackThemeColorIndex =-1
                                            BorderThemeColorIndex =-1
                                            ForeTint =100.0
                                            GroupTable =18
                                        End
                                    End
                                End
                                Begin ComboBox
                                    LimitToList = NotDefault
                                    OverlapFlags =247
                                    TextAlign =1
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    ListRows =12
                                    Left =3840
                                    Top =6795
                                    Width =4320
                                    Height =570
                                    FontSize =18
                                    TabIndex =3
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="cmbSleeve4"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                                        "E (((qryPARTNUM_ALL.partUseage)=4)) ORDER BY qryPARTNUM_ALL.partNumber; "
                                    ColumnWidths ="0;1440"
                                    OnNotInList ="[Event Procedure]"
                                    InputMask ="00\\-00\\-0000;0;_"
                                    GroupTable =18
                                    GridlineColor =10921638
                                    AllowValueListEdits =0
                                    LeftMargin =44
                                    TopMargin =43
                                    RightMargin =44
                                    BottomMargin =22

                                    LayoutCachedLeft =3840
                                    LayoutCachedTop =6795
                                    LayoutCachedWidth =8160
                                    LayoutCachedHeight =7365
                                    RowStart =3
                                    RowEnd =3
                                    ColumnStart =1
                                    ColumnEnd =1
                                    LayoutGroup =3
                                    BackThemeColorIndex =3
                                    BackShade =98.0
                                    BorderThemeColorIndex =7
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeShade =75.0
                                    GroupTable =18
                                    Begin
                                        Begin Label
                                            OverlapFlags =247
                                            TextAlign =3
                                            Left =465
                                            Top =6795
                                            Width =3312
                                            Height =570
                                            FontSize =18
                                            TopMargin =29
                                            BorderColor =10066329
                                            ForeColor =3355443
                                            Name ="Label189"
                                            Caption ="Sleeve 4:"
                                            GroupTable =18
                                            GridlineColor =10921638
                                            LayoutCachedLeft =465
                                            LayoutCachedTop =6795
                                            LayoutCachedWidth =3777
                                            LayoutCachedHeight =7365
                                            RowStart =3
                                            RowEnd =3
                                            LayoutGroup =3
                                            BackThemeColorIndex =-1
                                            BorderThemeColorIndex =-1
                                            ForeTint =100.0
                                            GroupTable =18
                                        End
                                    End
                                End
                                Begin Label
                                    OverlapFlags =247
                                    TextAlign =3
                                    Left =465
                                    Top =7425
                                    Width =3312
                                    Height =570
                                    FontSize =18
                                    TopMargin =29
                                    BorderColor =10066329
                                    ForeColor =3355443
                                    Name ="Label197"
                                    Caption ="Sleeve 5:"
                                    GroupTable =18
                                    GridlineColor =10921638
                                    LayoutCachedLeft =465
                                    LayoutCachedTop =7425
                                    LayoutCachedWidth =3777
                                    LayoutCachedHeight =7995
                                    RowStart =4
                                    RowEnd =4
                                    LayoutGroup =3
                                    BackThemeColorIndex =-1
                                    BorderThemeColorIndex =-1
                                    ForeTint =100.0
                                    GroupTable =18
                                End
                                Begin ComboBox
                                    LimitToList = NotDefault
                                    OverlapFlags =247
                                    TextAlign =1
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    ListRows =12
                                    Left =3840
                                    Top =7425
                                    Width =4320
                                    Height =570
                                    FontSize =18
                                    TabIndex =4
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="cmbSleeve5"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                                        "E (((qryPARTNUM_ALL.partUseage)=4)) ORDER BY qryPARTNUM_ALL.partNumber; "
                                    ColumnWidths ="0;1440"
                                    OnNotInList ="[Event Procedure]"
                                    InputMask ="00\\-00\\-0000;0;_"
                                    GroupTable =18
                                    GridlineColor =10921638
                                    AllowValueListEdits =0
                                    LeftMargin =44
                                    TopMargin =43
                                    RightMargin =44
                                    BottomMargin =22

                                    LayoutCachedLeft =3840
                                    LayoutCachedTop =7425
                                    LayoutCachedWidth =8160
                                    LayoutCachedHeight =7995
                                    RowStart =4
                                    RowEnd =4
                                    ColumnStart =1
                                    ColumnEnd =1
                                    LayoutGroup =3
                                    BackThemeColorIndex =3
                                    BackShade =98.0
                                    BorderThemeColorIndex =7
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeShade =75.0
                                    GroupTable =18
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =247
                            Left =435
                            Top =4868
                            Width =12870
                            Height =3802
                            BorderColor =10921638
                            Name ="Page157"
                            Caption ="Electrode Cap"
                            GridlineColor =10921638
                            LayoutCachedLeft =435
                            LayoutCachedTop =4868
                            LayoutCachedWidth =13305
                            LayoutCachedHeight =8670
                            WebImagePaddingLeft =2
                            WebImagePaddingTop =2
                            WebImagePaddingRight =2
                            WebImagePaddingBottom =2
                            Begin
                                Begin ComboBox
                                    LimitToList = NotDefault
                                    OverlapFlags =247
                                    TextAlign =1
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    ListRows =12
                                    Left =3840
                                    Top =4905
                                    Width =4320
                                    Height =576
                                    FontSize =18
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="cmbElecCap"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                                        "E (((qryPARTNUM_ALL.partUseage)=5)) ORDER BY qryPARTNUM_ALL.partNumber; "
                                    ColumnWidths ="0;1440"
                                    OnNotInList ="[Event Procedure]"
                                    GroupTable =19
                                    BottomPadding =150
                                    GridlineColor =10921638
                                    AllowValueListEdits =0
                                    LeftMargin =44
                                    TopMargin =43
                                    RightMargin =44
                                    BottomMargin =22

                                    LayoutCachedLeft =3840
                                    LayoutCachedTop =4905
                                    LayoutCachedWidth =8160
                                    LayoutCachedHeight =5481
                                    ColumnStart =1
                                    ColumnEnd =1
                                    LayoutGroup =4
                                    BackThemeColorIndex =3
                                    BackShade =98.0
                                    BorderThemeColorIndex =7
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeShade =75.0
                                    GroupTable =19
                                    Begin
                                        Begin Label
                                            OverlapFlags =247
                                            TextAlign =3
                                            Left =465
                                            Top =4905
                                            Width =3312
                                            Height =576
                                            FontSize =18
                                            TopMargin =29
                                            BorderColor =10066329
                                            ForeColor =3355443
                                            Name ="Label205"
                                            Caption ="Electrode Cap:"
                                            GroupTable =19
                                            BottomPadding =150
                                            GridlineColor =10921638
                                            LayoutCachedLeft =465
                                            LayoutCachedTop =4905
                                            LayoutCachedWidth =3777
                                            LayoutCachedHeight =5481
                                            LayoutGroup =4
                                            BackThemeColorIndex =-1
                                            BorderThemeColorIndex =-1
                                            ForeTint =100.0
                                            GroupTable =19
                                        End
                                    End
                                End
                                Begin Label
                                    OverlapFlags =247
                                    TextAlign =2
                                    Left =465
                                    Top =5655
                                    Width =10215
                                    Height =300
                                    BorderColor =10066329
                                    Name ="Label208"
                                    Caption ="These are only for seperate caps not assigned to an assembly."
                                    GroupTable =19
                                    BottomPadding =150
                                    GridlineColor =10921638
                                    LayoutCachedLeft =465
                                    LayoutCachedTop =5655
                                    LayoutCachedWidth =10680
                                    LayoutCachedHeight =5955
                                    RowStart =1
                                    RowEnd =1
                                    ColumnEnd =2
                                    LayoutGroup =4
                                    ForeThemeColorIndex =2
                                    ForeTint =100.0
                                    ForeShade =25.0
                                    GroupTable =19
                                End
                                Begin EmptyCell
                                    Left =8220
                                    Top =4905
                                    Width =2460
                                    Height =576
                                    Name ="EmptyCell497"
                                    GroupTable =19
                                    BottomPadding =150
                                    GridlineColor =10921638
                                    LayoutCachedLeft =8220
                                    LayoutCachedTop =4905
                                    LayoutCachedWidth =10680
                                    LayoutCachedHeight =5481
                                    ColumnStart =2
                                    ColumnEnd =2
                                    LayoutGroup =4
                                    GroupTable =19
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =247
                            Left =435
                            Top =4868
                            Width =12870
                            Height =3802
                            BorderColor =10921638
                            Name ="Page158"
                            Caption ="Spacer"
                            GridlineColor =10921638
                            LayoutCachedLeft =435
                            LayoutCachedTop =4868
                            LayoutCachedWidth =13305
                            LayoutCachedHeight =8670
                            WebImagePaddingLeft =2
                            WebImagePaddingTop =2
                            WebImagePaddingRight =2
                            WebImagePaddingBottom =2
                            Begin
                                Begin ComboBox
                                    LimitToList = NotDefault
                                    OverlapFlags =247
                                    TextAlign =1
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    ListRows =12
                                    Left =3840
                                    Top =4905
                                    Width =4320
                                    Height =576
                                    FontSize =18
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="cmbSpacer1"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                                        "E (((qryPARTNUM_ALL.partUseage)=7)) ORDER BY qryPARTNUM_ALL.partNumber; "
                                    ColumnWidths ="0;1440"
                                    OnNotInList ="[Event Procedure]"
                                    GroupTable =21
                                    GridlineColor =10921638
                                    AllowValueListEdits =0
                                    LeftMargin =44
                                    TopMargin =43
                                    RightMargin =44
                                    BottomMargin =22

                                    LayoutCachedLeft =3840
                                    LayoutCachedTop =4905
                                    LayoutCachedWidth =8160
                                    LayoutCachedHeight =5481
                                    ColumnStart =1
                                    ColumnEnd =1
                                    LayoutGroup =5
                                    BackThemeColorIndex =3
                                    BackShade =98.0
                                    BorderThemeColorIndex =7
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeShade =75.0
                                    GroupTable =21
                                    Begin
                                        Begin Label
                                            OverlapFlags =247
                                            TextAlign =3
                                            Left =465
                                            Top =4905
                                            Width =3312
                                            Height =576
                                            FontSize =18
                                            TopMargin =29
                                            BorderColor =10066329
                                            ForeColor =3355443
                                            Name ="Label214"
                                            Caption ="Spacer 1:"
                                            GroupTable =21
                                            GridlineColor =10921638
                                            LayoutCachedLeft =465
                                            LayoutCachedTop =4905
                                            LayoutCachedWidth =3777
                                            LayoutCachedHeight =5481
                                            LayoutGroup =5
                                            BackThemeColorIndex =-1
                                            BorderThemeColorIndex =-1
                                            ForeTint =100.0
                                            GroupTable =21
                                        End
                                    End
                                End
                                Begin ComboBox
                                    LimitToList = NotDefault
                                    OverlapFlags =247
                                    TextAlign =1
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    ListRows =12
                                    Left =3840
                                    Top =5535
                                    Width =4320
                                    Height =570
                                    FontSize =18
                                    TabIndex =1
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="cmbSpacer2"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                                        "E (((qryPARTNUM_ALL.partUseage)=7)) ORDER BY qryPARTNUM_ALL.partNumber; "
                                    ColumnWidths ="0;1440"
                                    OnNotInList ="[Event Procedure]"
                                    InputMask ="00\\-00\\-0000;0;"
                                    GroupTable =21
                                    GridlineColor =10921638
                                    AllowValueListEdits =0
                                    LeftMargin =44
                                    TopMargin =43
                                    RightMargin =44
                                    BottomMargin =22

                                    LayoutCachedLeft =3840
                                    LayoutCachedTop =5535
                                    LayoutCachedWidth =8160
                                    LayoutCachedHeight =6105
                                    RowStart =1
                                    RowEnd =1
                                    ColumnStart =1
                                    ColumnEnd =1
                                    LayoutGroup =5
                                    BackThemeColorIndex =3
                                    BackShade =98.0
                                    BorderThemeColorIndex =7
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeShade =75.0
                                    GroupTable =21
                                    Begin
                                        Begin Label
                                            OverlapFlags =247
                                            TextAlign =3
                                            Left =465
                                            Top =5535
                                            Width =3312
                                            Height =570
                                            FontSize =18
                                            TopMargin =29
                                            BorderColor =10066329
                                            ForeColor =3355443
                                            Name ="Label218"
                                            Caption ="Spacer 2:"
                                            GroupTable =21
                                            GridlineColor =10921638
                                            LayoutCachedLeft =465
                                            LayoutCachedTop =5535
                                            LayoutCachedWidth =3777
                                            LayoutCachedHeight =6105
                                            RowStart =1
                                            RowEnd =1
                                            LayoutGroup =5
                                            BackThemeColorIndex =-1
                                            BorderThemeColorIndex =-1
                                            ForeTint =100.0
                                            GroupTable =21
                                        End
                                    End
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =247
                            Left =435
                            Top =4868
                            Width =12870
                            Height =3802
                            BorderColor =10921638
                            Name ="Page159"
                            Caption ="Misc"
                            GridlineColor =10921638
                            LayoutCachedLeft =435
                            LayoutCachedTop =4868
                            LayoutCachedWidth =13305
                            LayoutCachedHeight =8670
                            WebImagePaddingLeft =2
                            WebImagePaddingTop =2
                            WebImagePaddingRight =2
                            WebImagePaddingBottom =2
                            Begin
                                Begin ComboBox
                                    LimitToList = NotDefault
                                    OverlapFlags =247
                                    TextAlign =1
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    ListRows =12
                                    Left =3840
                                    Top =4905
                                    Width =4320
                                    Height =576
                                    FontSize =18
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="cmbMisc1"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                                        "E (((qryPARTNUM_ALL.partUseage)=8)) ORDER BY qryPARTNUM_ALL.partNumber; "
                                    ColumnWidths ="0;1440"
                                    OnNotInList ="[Event Procedure]"
                                    InputMask ="00\\-00\\-0000;0;_"
                                    GroupTable =24
                                    GridlineColor =10921638
                                    AllowValueListEdits =0
                                    LeftMargin =44
                                    TopMargin =43
                                    RightMargin =44
                                    BottomMargin =22

                                    LayoutCachedLeft =3840
                                    LayoutCachedTop =4905
                                    LayoutCachedWidth =8160
                                    LayoutCachedHeight =5481
                                    ColumnStart =1
                                    ColumnEnd =1
                                    LayoutGroup =6
                                    BackThemeColorIndex =3
                                    BackShade =98.0
                                    BorderThemeColorIndex =7
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeShade =75.0
                                    GroupTable =24
                                    Begin
                                        Begin Label
                                            OverlapFlags =247
                                            TextAlign =3
                                            Left =465
                                            Top =4905
                                            Width =3312
                                            Height =576
                                            FontSize =18
                                            TopMargin =29
                                            BorderColor =10066329
                                            ForeColor =3355443
                                            Name ="Label236"
                                            Caption ="Misc 1:"
                                            GroupTable =24
                                            GridlineColor =10921638
                                            LayoutCachedLeft =465
                                            LayoutCachedTop =4905
                                            LayoutCachedWidth =3777
                                            LayoutCachedHeight =5481
                                            LayoutGroup =6
                                            BackThemeColorIndex =-1
                                            BorderThemeColorIndex =-1
                                            ForeTint =100.0
                                            GroupTable =24
                                        End
                                    End
                                End
                                Begin ComboBox
                                    LimitToList = NotDefault
                                    OverlapFlags =247
                                    TextAlign =1
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    ListRows =12
                                    Left =3840
                                    Top =5535
                                    Width =4320
                                    Height =570
                                    FontSize =18
                                    TabIndex =1
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="cmbMisc2"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                                        "E (((qryPARTNUM_ALL.partUseage)=8)) ORDER BY qryPARTNUM_ALL.partNumber; "
                                    ColumnWidths ="0;1440"
                                    OnNotInList ="[Event Procedure]"
                                    InputMask ="00\\-00\\-0000;0;_"
                                    GroupTable =24
                                    GridlineColor =10921638
                                    AllowValueListEdits =0
                                    LeftMargin =44
                                    TopMargin =43
                                    RightMargin =44
                                    BottomMargin =22

                                    LayoutCachedLeft =3840
                                    LayoutCachedTop =5535
                                    LayoutCachedWidth =8160
                                    LayoutCachedHeight =6105
                                    RowStart =1
                                    RowEnd =1
                                    ColumnStart =1
                                    ColumnEnd =1
                                    LayoutGroup =6
                                    BackThemeColorIndex =3
                                    BackShade =98.0
                                    BorderThemeColorIndex =7
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeShade =75.0
                                    GroupTable =24
                                    Begin
                                        Begin Label
                                            OverlapFlags =247
                                            TextAlign =3
                                            Left =465
                                            Top =5535
                                            Width =3312
                                            Height =570
                                            FontSize =18
                                            TopMargin =29
                                            BorderColor =10066329
                                            ForeColor =3355443
                                            Name ="Label240"
                                            Caption ="Misc 2:"
                                            GroupTable =24
                                            GridlineColor =10921638
                                            LayoutCachedLeft =465
                                            LayoutCachedTop =5535
                                            LayoutCachedWidth =3777
                                            LayoutCachedHeight =6105
                                            RowStart =1
                                            RowEnd =1
                                            LayoutGroup =6
                                            BackThemeColorIndex =-1
                                            BorderThemeColorIndex =-1
                                            ForeTint =100.0
                                            GroupTable =24
                                        End
                                    End
                                End
                                Begin ComboBox
                                    LimitToList = NotDefault
                                    OverlapFlags =247
                                    TextAlign =1
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    ListRows =12
                                    Left =3840
                                    Top =6165
                                    Width =4320
                                    Height =570
                                    FontSize =18
                                    TabIndex =2
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="cmbMisc3"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                                        "E (((qryPARTNUM_ALL.partUseage)=8)) ORDER BY qryPARTNUM_ALL.partNumber; "
                                    ColumnWidths ="0;1440"
                                    OnNotInList ="[Event Procedure]"
                                    InputMask ="00\\-00\\-0000;0;_"
                                    GroupTable =24
                                    GridlineColor =10921638
                                    AllowValueListEdits =0
                                    LeftMargin =44
                                    TopMargin =43
                                    RightMargin =44
                                    BottomMargin =22

                                    LayoutCachedLeft =3840
                                    LayoutCachedTop =6165
                                    LayoutCachedWidth =8160
                                    LayoutCachedHeight =6735
                                    RowStart =2
                                    RowEnd =2
                                    ColumnStart =1
                                    ColumnEnd =1
                                    LayoutGroup =6
                                    BackThemeColorIndex =3
                                    BackShade =98.0
                                    BorderThemeColorIndex =7
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeShade =75.0
                                    GroupTable =24
                                    Begin
                                        Begin Label
                                            OverlapFlags =247
                                            TextAlign =3
                                            Left =465
                                            Top =6165
                                            Width =3312
                                            Height =570
                                            FontSize =18
                                            TopMargin =29
                                            BorderColor =10066329
                                            ForeColor =3355443
                                            Name ="Label248"
                                            Caption ="Misc 3:"
                                            GroupTable =24
                                            GridlineColor =10921638
                                            LayoutCachedLeft =465
                                            LayoutCachedTop =6165
                                            LayoutCachedWidth =3777
                                            LayoutCachedHeight =6735
                                            RowStart =2
                                            RowEnd =2
                                            LayoutGroup =6
                                            BackThemeColorIndex =-1
                                            BorderThemeColorIndex =-1
                                            ForeTint =100.0
                                            GroupTable =24
                                        End
                                    End
                                End
                                Begin ComboBox
                                    LimitToList = NotDefault
                                    OverlapFlags =247
                                    TextAlign =1
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    ListRows =12
                                    Left =3840
                                    Top =6795
                                    Width =4320
                                    Height =570
                                    FontSize =18
                                    TabIndex =3
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="cmbMisc4"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                                        "E (((qryPARTNUM_ALL.partUseage)=8)) ORDER BY qryPARTNUM_ALL.partNumber; "
                                    ColumnWidths ="0;1440"
                                    OnNotInList ="[Event Procedure]"
                                    GroupTable =24
                                    GridlineColor =10921638
                                    AllowValueListEdits =0
                                    LeftMargin =44
                                    TopMargin =43
                                    RightMargin =44
                                    BottomMargin =22

                                    LayoutCachedLeft =3840
                                    LayoutCachedTop =6795
                                    LayoutCachedWidth =8160
                                    LayoutCachedHeight =7365
                                    RowStart =3
                                    RowEnd =3
                                    ColumnStart =1
                                    ColumnEnd =1
                                    LayoutGroup =6
                                    BackThemeColorIndex =3
                                    BackShade =98.0
                                    BorderThemeColorIndex =7
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeShade =75.0
                                    GroupTable =24
                                    Begin
                                        Begin Label
                                            OverlapFlags =247
                                            TextAlign =3
                                            Left =465
                                            Top =6795
                                            Width =3312
                                            Height =570
                                            FontSize =18
                                            TopMargin =29
                                            BorderColor =10066329
                                            ForeColor =3355443
                                            Name ="Label256"
                                            Caption ="Misc 4:"
                                            GroupTable =24
                                            GridlineColor =10921638
                                            LayoutCachedLeft =465
                                            LayoutCachedTop =6795
                                            LayoutCachedWidth =3777
                                            LayoutCachedHeight =7365
                                            RowStart =3
                                            RowEnd =3
                                            LayoutGroup =6
                                            BackThemeColorIndex =-1
                                            BorderThemeColorIndex =-1
                                            ForeTint =100.0
                                            GroupTable =24
                                        End
                                    End
                                End
                                Begin ComboBox
                                    LimitToList = NotDefault
                                    OverlapFlags =247
                                    TextAlign =1
                                    IMESentenceMode =3
                                    ColumnCount =2
                                    ListRows =12
                                    Left =3840
                                    Top =7425
                                    Width =4320
                                    Height =570
                                    FontSize =18
                                    TabIndex =4
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="cmbMisc5"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                                        "E (((qryPARTNUM_ALL.partUseage)=8)) ORDER BY qryPARTNUM_ALL.partNumber; "
                                    ColumnWidths ="0;1440"
                                    OnNotInList ="[Event Procedure]"
                                    GroupTable =24
                                    GridlineColor =10921638
                                    AllowValueListEdits =0
                                    LeftMargin =44
                                    TopMargin =43
                                    RightMargin =44
                                    BottomMargin =22

                                    LayoutCachedLeft =3840
                                    LayoutCachedTop =7425
                                    LayoutCachedWidth =8160
                                    LayoutCachedHeight =7995
                                    RowStart =4
                                    RowEnd =4
                                    ColumnStart =1
                                    ColumnEnd =1
                                    LayoutGroup =6
                                    BackThemeColorIndex =3
                                    BackShade =98.0
                                    BorderThemeColorIndex =7
                                    BorderShade =100.0
                                    ForeThemeColorIndex =0
                                    ForeShade =75.0
                                    GroupTable =24
                                    Begin
                                        Begin Label
                                            OverlapFlags =247
                                            TextAlign =3
                                            Left =465
                                            Top =7425
                                            Width =3312
                                            Height =570
                                            FontSize =18
                                            TopMargin =29
                                            BorderColor =10066329
                                            ForeColor =3355443
                                            Name ="Label264"
                                            Caption ="Misc 5:"
                                            GroupTable =24
                                            GridlineColor =10921638
                                            LayoutCachedLeft =465
                                            LayoutCachedTop =7425
                                            LayoutCachedWidth =3777
                                            LayoutCachedHeight =7995
                                            RowStart =4
                                            RowEnd =4
                                            LayoutGroup =6
                                            BackThemeColorIndex =-1
                                            BorderThemeColorIndex =-1
                                            ForeTint =100.0
                                            GroupTable =24
                                        End
                                    End
                                End
                            End
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =14400
                    Top =5520
                    Width =2280
                    Height =480
                    TabIndex =11
                    ForeColor =6710886
                    Name ="Command131"
                    Caption ="Command131"
                    OnClick ="[Event Procedure]"
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
                    LayoutCachedLeft =14400
                    LayoutCachedTop =5520
                    LayoutCachedWidth =16680
                    LayoutCachedHeight =6000
                    RowStart =7
                    RowEnd =7
                    ColumnStart =6
                    ColumnEnd =7
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
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =24
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =14400
                    Top =6060
                    Width =2280
                    Height =480
                    TabIndex =12
                    ForeColor =6710886
                    Name ="Command132"
                    Caption ="Command132"
                    OnClick ="[Event Procedure]"
                    GroupTable =1
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
                    LayoutCachedLeft =14400
                    LayoutCachedTop =6060
                    LayoutCachedWidth =16680
                    LayoutCachedHeight =6540
                    RowStart =8
                    RowEnd =8
                    ColumnStart =6
                    ColumnEnd =7
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
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =360
                    Top =3270
                    Width =5190
                    Height =570
                    FontSize =18
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label144"
                    Caption ="R && D:"
                    GroupTable =1
                    LeftPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =360
                    LayoutCachedTop =3270
                    LayoutCachedWidth =5550
                    LayoutCachedHeight =3840
                    RowStart =5
                    RowEnd =5
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin ToggleButton
                    OverlapFlags =85
                    Left =5610
                    Top =3270
                    Width =3525
                    Height =570
                    FontSize =16
                    FontWeight =400
                    TabIndex =9
                    ForeColor =2500134
                    Name ="ckRD"
                    Caption ="Not R && D"
                    FontName ="Calibri"
                    OnMouseMove ="[Event Procedure]"
                    OnClick ="[Event Procedure]"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =5610
                    LayoutCachedTop =3270
                    LayoutCachedWidth =9135
                    LayoutCachedHeight =3840
                    RowStart =5
                    RowEnd =5
                    ColumnStart =1
                    ColumnEnd =2
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
                    WebImagePaddingLeft =1
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    Overlaps =1
                End
                Begin EmptyCell
                    Left =7020
                    Top =750
                    Width =3060
                    Height =570
                    Name ="EmptyCell276"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =7020
                    LayoutCachedTop =750
                    LayoutCachedWidth =10080
                    LayoutCachedHeight =1320
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =3
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =13440
                    Top =120
                    Width =4380
                    Height =570
                    FontSize =18
                    TabIndex =2
                    LeftMargin =44
                    TopMargin =43
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtFile"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =13440
                    LayoutCachedTop =120
                    LayoutCachedWidth =17820
                    LayoutCachedHeight =690
                    ColumnStart =5
                    ColumnEnd =8
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
                            Left =10140
                            Top =120
                            Width =3240
                            Height =570
                            FontSize =18
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label95"
                            Caption ="File Name:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =10140
                            LayoutCachedTop =120
                            LayoutCachedWidth =13380
                            LayoutCachedHeight =690
                            ColumnStart =4
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
                    TextAlign =1
                    Left =17880
                    Top =120
                    Width =1215
                    Height =570
                    FontSize =18
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label108"
                    Caption =".pdf"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =17880
                    LayoutCachedTop =120
                    LayoutCachedWidth =19095
                    LayoutCachedHeight =690
                    ColumnStart =9
                    ColumnEnd =9
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =13440
                    Top =750
                    Width =2100
                    Height =570
                    FontSize =18
                    TabIndex =3
                    LeftMargin =44
                    TopMargin =43
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtPage"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =13440
                    LayoutCachedTop =750
                    LayoutCachedWidth =15540
                    LayoutCachedHeight =1320
                    RowStart =1
                    RowEnd =1
                    ColumnStart =5
                    ColumnEnd =6
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
                            Left =10140
                            Top =750
                            Width =3240
                            Height =570
                            FontSize =18
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label99"
                            Caption ="Page #:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =10140
                            LayoutCachedTop =750
                            LayoutCachedWidth =13380
                            LayoutCachedHeight =1320
                            RowStart =1
                            RowEnd =1
                            ColumnStart =4
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
                    Left =10140
                    Top =2010
                    Width =5400
                    Height =570
                    FontSize =18
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label110"
                    Caption ="Voltage (V):"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =10140
                    LayoutCachedTop =2010
                    LayoutCachedWidth =15540
                    LayoutCachedHeight =2580
                    RowStart =3
                    RowEnd =3
                    ColumnStart =4
                    ColumnEnd =6
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =15600
                    Top =2010
                    Width =2220
                    Height =570
                    FontSize =18
                    TabIndex =6
                    LeftMargin =44
                    TopMargin =43
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtVolt"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =15600
                    LayoutCachedTop =2010
                    LayoutCachedWidth =17820
                    LayoutCachedHeight =2580
                    RowStart =3
                    RowEnd =3
                    ColumnStart =7
                    ColumnEnd =8
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =10140
                    Top =2640
                    Width =5400
                    Height =570
                    FontSize =18
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label118"
                    Caption ="EP Time (s):"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =10140
                    LayoutCachedTop =2640
                    LayoutCachedWidth =15540
                    LayoutCachedHeight =3210
                    RowStart =4
                    RowEnd =4
                    ColumnStart =4
                    ColumnEnd =6
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =15600
                    Top =2640
                    Width =2220
                    Height =570
                    FontSize =18
                    TabIndex =7
                    LeftMargin =44
                    TopMargin =43
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtTime"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =15600
                    LayoutCachedTop =2640
                    LayoutCachedWidth =17820
                    LayoutCachedHeight =3210
                    RowStart =4
                    RowEnd =4
                    ColumnStart =7
                    ColumnEnd =8
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =10140
                    Top =3270
                    Width =5400
                    Height =570
                    FontSize =18
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label124"
                    Caption ="Pre-Pump Time (s):"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =10140
                    LayoutCachedTop =3270
                    LayoutCachedWidth =15540
                    LayoutCachedHeight =3840
                    RowStart =5
                    RowEnd =5
                    ColumnStart =4
                    ColumnEnd =6
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =15600
                    Top =3270
                    Width =2220
                    Height =570
                    FontSize =18
                    TabIndex =8
                    LeftMargin =44
                    TopMargin =43
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtPump"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =15600
                    LayoutCachedTop =3270
                    LayoutCachedWidth =17820
                    LayoutCachedHeight =3840
                    RowStart =5
                    RowEnd =5
                    ColumnStart =7
                    ColumnEnd =8
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =16740
                    Top =4230
                    Width =1080
                    Height =4515
                    Name ="EmptyCell444"
                    GroupTable =1
                    TopPadding =360
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =16740
                    LayoutCachedTop =4230
                    LayoutCachedWidth =17820
                    LayoutCachedHeight =8745
                    RowStart =6
                    RowEnd =10
                    ColumnStart =8
                    ColumnEnd =8
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =360
                    Top =1380
                    Width =17460
                    Height =570
                    Name ="EmptyCell462"
                    GroupTable =1
                    LeftPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =360
                    LayoutCachedTop =1380
                    LayoutCachedWidth =17820
                    LayoutCachedHeight =1950
                    RowStart =2
                    RowEnd =2
                    ColumnEnd =8
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =13440
                    Top =4230
                    Width =900
                    Height =4515
                    Name ="EmptyCell476"
                    GroupTable =1
                    TopPadding =360
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =13440
                    LayoutCachedTop =4230
                    LayoutCachedWidth =14340
                    LayoutCachedHeight =8745
                    RowStart =6
                    RowEnd =10
                    ColumnStart =5
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =14400
                    Top =7470
                    Width =2280
                    Height =1275
                    Name ="EmptyCell478"
                    GroupTable =1
                    TopPadding =360
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =14400
                    LayoutCachedTop =7470
                    LayoutCachedWidth =16680
                    LayoutCachedHeight =8745
                    RowStart =10
                    RowEnd =10
                    ColumnStart =6
                    ColumnEnd =7
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =14400
                    Top =4230
                    Width =2280
                    Height =900
                    Name ="EmptyCell480"
                    GroupTable =1
                    TopPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =14400
                    LayoutCachedTop =4230
                    LayoutCachedWidth =16680
                    LayoutCachedHeight =5130
                    RowStart =6
                    RowEnd =6
                    ColumnStart =6
                    ColumnEnd =7
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =15600
                    Top =750
                    Width =2220
                    Height =570
                    Name ="EmptyCell486"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =15600
                    LayoutCachedTop =750
                    LayoutCachedWidth =17820
                    LayoutCachedHeight =1320
                    RowStart =1
                    RowEnd =1
                    ColumnStart =7
                    ColumnEnd =8
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin CommandButton
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =14400
                    Top =6600
                    Width =2280
                    Height =480
                    TabIndex =13
                    ForeColor =6710886
                    Name ="cmdExit"
                    Caption ="Exit"
                    OnClick ="[Event Procedure]"
                    GroupTable =1
                    GridlineColor =10921638
                    ImageData = Begin
                        0x2800000010000000100000000100200000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000003255d6273255d68d ,
                        0x3255d6cf3255d6ff3255d6ff3255d6cf3255d68d3255d6270000000000000000 ,
                        0x00000000000000000000000000000000000000003255d6723255d6f63255d6ff ,
                        0x3255d6ff3255d6ff3255d6ff3255d6ff3255d6ff3255d6f63255d67200000000 ,
                        0x0000000000000000000000003255d6063255d6b73255d6ff3255d6ff3255d6ff ,
                        0x3255d6ff3255d6ff3255d6ff3255d6ff3255d6ff3255d6ff3255d6ff3255d6b7 ,
                        0x3255d60600000000000000003255d6933255d6ff3255d6ff3759d7f94d6bdbe5 ,
                        0x3255d6ff3255d6ff3255d6ff3255d6ff4d6bdbe53759d7f93255d6ff3255d6ff ,
                        0x3255d690000000003255d62d3255d6fc3255d6ff3c5ed8f4eef1fccefcfcfee5 ,
                        0x4a69dbe73255d6ff3255d6ff4a69dbe7fcfcfee5eef1fcce3c5ed8f43255d6ff ,
                        0x3255d6fc3255d62d3255d6933255d6ff3255d6ff3457d6fce4e9fac8ffffffff ,
                        0xfafbfee04766dae94766dae9fafbfee0ffffffffe4e9fac83759d7f93255d6ff ,
                        0x3255d6ff3255d6903255d6db3255d6ff3255d6ff3255d6ff3759d7f9e8ecfaca ,
                        0xfffffffff9fafedcf8f9fedaffffffffe8ecfaca3759d7f93255d6ff3255d6ff ,
                        0x3255d6ff3255d6d53255d6f93255d6ff3255d6ff3255d6ff3255d6ff395bd7f6 ,
                        0xeceffbcdffffffffffffffffeceffbcd395bd7f63255d6ff3255d6ff3255d6ff ,
                        0x3255d6ff3255d6f33255d6f93255d6ff3255d6ff3255d6ff3255d6ff395bd7f6 ,
                        0xf2f4fcd3fffffffffffffffff2f4fcd33c5ed8f43255d6ff3255d6ff3255d6ff ,
                        0x3255d6ff3255d6f03255d6d83255d6ff3255d6ff3255d6ff395bd7f6eff2fcd0 ,
                        0xfffffffff5f6fdd4f5f6fdd4ffffffffeff2fcd0395bd7f63255d6ff3255d6ff ,
                        0x3255d6ff3255d6d53255d6903255d6ff3255d6ff3759d7f9ebeefbcbffffffff ,
                        0xf8f9feda4162d9ee4162d9eef8f9fedaffffffffebeefbcb3759d7f93255d6ff ,
                        0x3255d6ff3255d68d3255d62d3255d6fc3255d6ff395bd7f6ebeefbcbf9fafede ,
                        0x4464daec3255d6ff3255d6ff4464daecf9fafedeebeefbcb395bd7f63255d6ff ,
                        0x3255d6fc3255d62a000000003255d6903255d6ff3255d6ff3759d7f94766dae9 ,
                        0x3255d6ff3255d6ff3255d6ff3255d6ff4766dae93759d7f93255d6ff3255d6ff ,
                        0x3255d68d00000000000000003255d6063255d6b73255d6ff3255d6ff3255d6ff ,
                        0x3255d6ff3255d6ff3255d6ff3255d6ff3255d6ff3255d6ff3255d6ff3255d6b7 ,
                        0x3255d606000000000000000000000000000000003255d6723255d6f63255d6ff ,
                        0x3255d6ff3255d6ff3255d6ff3255d6ff3255d6ff3255d6f63255d67200000000 ,
                        0x0000000000000000000000000000000000000000000000003255d6273255d68d ,
                        0x3255d6cc3255d6fc3255d6fc3255d6cc3255d68d3255d6270000000000000000 ,
                        0x0000000000000000
                    End

                    CursorOnHover =1
                    LayoutCachedLeft =14400
                    LayoutCachedTop =6600
                    LayoutCachedWidth =16680
                    LayoutCachedHeight =7080
                    RowStart =9
                    RowEnd =9
                    ColumnStart =6
                    ColumnEnd =7
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
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin EmptyCell
                    Left =9195
                    Top =2010
                    Width =885
                    Height =1830
                    Name ="EmptyCell503"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =9195
                    LayoutCachedTop =2010
                    LayoutCachedWidth =10080
                    LayoutCachedHeight =3840
                    RowStart =3
                    RowEnd =5
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =17880
                    Top =750
                    Width =1215
                    Height =570
                    Name ="EmptyCell506"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =17880
                    LayoutCachedTop =750
                    LayoutCachedWidth =19095
                    LayoutCachedHeight =1320
                    RowStart =1
                    RowEnd =1
                    ColumnStart =9
                    ColumnEnd =9
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =17880
                    Top =1380
                    Width =1215
                    Height =570
                    Name ="EmptyCell507"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =17880
                    LayoutCachedTop =1380
                    LayoutCachedWidth =19095
                    LayoutCachedHeight =1950
                    RowStart =2
                    RowEnd =2
                    ColumnStart =9
                    ColumnEnd =9
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =17880
                    Top =2010
                    Width =1215
                    Height =570
                    Name ="EmptyCell508"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =17880
                    LayoutCachedTop =2010
                    LayoutCachedWidth =19095
                    LayoutCachedHeight =2580
                    RowStart =3
                    RowEnd =3
                    ColumnStart =9
                    ColumnEnd =9
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =17880
                    Top =2640
                    Width =1215
                    Height =570
                    Name ="EmptyCell509"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =17880
                    LayoutCachedTop =2640
                    LayoutCachedWidth =19095
                    LayoutCachedHeight =3210
                    RowStart =4
                    RowEnd =4
                    ColumnStart =9
                    ColumnEnd =9
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =17880
                    Top =3270
                    Width =1215
                    Height =570
                    Name ="EmptyCell510"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =17880
                    LayoutCachedTop =3270
                    LayoutCachedWidth =19095
                    LayoutCachedHeight =3840
                    RowStart =5
                    RowEnd =5
                    ColumnStart =9
                    ColumnEnd =9
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =17880
                    Top =4230
                    Width =1215
                    Height =4515
                    Name ="EmptyCell511"
                    GroupTable =1
                    TopPadding =360
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =17880
                    LayoutCachedTop =4230
                    LayoutCachedWidth =19095
                    LayoutCachedHeight =8745
                    RowStart =6
                    RowEnd =10
                    ColumnStart =9
                    ColumnEnd =9
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
Public epID As Long
Public dialogWindow As Boolean

Private Sub ckRD_Click()

    Call tglCapt(Me.ckRD, 1)

End Sub

Private Sub ckRD_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub cmbBase_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 2)
End Sub

Private Sub cmbCap_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 1)
End Sub

Private Sub cmbCSEAL1_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 6)
End Sub

Private Sub cmbCSEAL2_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 6)
End Sub

Private Sub cmbCSEAL3_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 6)
End Sub

Private Sub cmbElecCap_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 5)
End Sub

Private Sub cmbELECTRODE_G_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 3)
End Sub

Private Sub cmbELECTRODE1_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 3)
End Sub

Private Sub cmbELECTRODE2_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 3)
End Sub

Private Sub cmbELECTRODE3_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 3)
End Sub

Private Sub cmbELECTRODE4_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 3)
End Sub

Private Sub cmbELECTRODE5_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 3)
End Sub

Private Sub cmbMISC1_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 8)
End Sub

Private Sub cmbMISC2_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 8)
End Sub

Private Sub cmbMISC3_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 8)
End Sub

Private Sub cmbMisc4_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 8)
End Sub

Private Sub cmbMisc5_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 8)
End Sub

Private Sub cmbRev_AfterUpdate()
    
Dim db As DAO.Database
Dim rs As DAO.Recordset
Dim qdf As DAO.QueryDef
    
Dim lPart As Long
Dim lRev As Long
Dim sNum As String
Dim sRev As String
Dim sQDF As String

    
Set db = CurrentDb
Set qdf = db.QueryDefs("dupEP")

'if already in the system, popup alert and don't save
If (IsNull(cmbTALON) = False) And (IsNull(cmbRev) = False) Then
    lPart = cmbTALON.Value
    lRev = cmbRev.Value
        
    sQDF = "SELECT tblEP.ID, tblEP.partNum, tblEP.rev, tblEP.obsolete, tblEP.[R&D], tblPARTNUM.partNum, refREV.rev " & _
            "FROM (tblEP LEFT JOIN tblPARTNUM ON tblEP.partNum = tblPARTNUM.ID) LEFT JOIN refREV ON tblEP.Rev = refREV.ID " & _
            "WHERE (((tblEP.partNum)=" & lPart & ") AND ((tblEP.rev)=" & lRev & ") AND ((tblEP.obsolete)=False) AND ((tblEP.[R&D])=False));"
    qdf.SQL = sQDF
    
Set rs = qdf.OpenRecordset
     
     With rs
        'check if duplicate information has been entered
        If .RecordCount <> 0 Then
            .MoveFirst
            sNum = Nz(![tblPARTNUM.partNum], "n/a")
            sRev = Nz(![refRev.rev], "n/a")
            epID = Nz(![ID], 0)
                    
            'asks if you want to edit existing rev or to cancel
            MsgBox "Part number " & sNum & " (Rev " & sRev & ") has already been entered.", vbOKOnly, "Duplicate Part"
        Else:
            'checks for an old entry to load
            '####ADD####
            'Check if form is open as a dialog box, and if it is, do not run following IF code
            If (lRev > 1) And (dialogWindow = False) Then 'and NOT dialog??
                If (MsgBox("Do you want to browse for an older revision to copy and load existing data?", vbYesNo + vbDefaultButton2, "Load Existing?") = vbYes) Then
                  Call oldRevLoad(lPart, lRev)
                End If
            End If
            
            'search IDs for corresponding string and build a file name based on this info
            sNum = DLookup("[partNum]", "tblPARTNUM", "[ID] = " & lPart)
            sRev = DLookup("[REV]", "refRev", "[ID] = " & lRev)
            txtFILE.Value = sNum & "-PL_" & sRev
    
        End If
        .Close
        End With
End If

    qdf.Close
    db.Close
    
    
End Sub

Private Sub oldRevLoad(lPart As Long, lRev As Long)
Dim db As DAO.Database
Dim rs As DAO.Recordset
Dim qdf As DAO.QueryDef
    
Dim sNum As String
Dim sRev As String
Dim sQDF As String

    
Set db = CurrentDb
Set qdf = db.QueryDefs("dupEP")

    'checks for an old entry to load
        sQDF = "SELECT tblEP.ID, tblEP.partNum, tblEP.rev, tblEP.obsolete, tblEP.[R&D], tblPARTNUM.partNum, refREV.rev " & _
                    "FROM (tblEP LEFT JOIN tblPARTNUM ON tblEP.partNum = tblPARTNUM.ID) LEFT JOIN refREV ON tblEP.Rev = refREV.ID " & _
                    "WHERE (((tblEP.partNum)=" & lPart & ") AND ((tblEP.rev)=" & lRev & ") AND ((tblEP.obsolete)=False) AND ((tblEP.[R&D])=False));"
        qdf.SQL = sQDF
        Set rs = qdf.OpenRecordset
        
        With rs
            If .RecordCount <> 0 Then
                .MoveFirst
                epID = Nz(![tblEP.ID], 0)
            Else:
                MsgBox "No other entries were found."
            End If
            .Close
        End With
        
        qdf.Close
        db.Close
                             
End Sub
Private Sub cmbSleeve1_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 4)
End Sub

Private Sub cmbSleeve2_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 4)
End Sub

Private Sub cmbSleeve3_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 4)
End Sub

Private Sub cmbSleeve4_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 4)
End Sub

Private Sub cmbSleeve5_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 4)
End Sub

Private Sub cmbSpacer1_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 7)
End Sub

Private Sub cmbSpacer2_NotInList(NewData As String, Response As Integer)
    Call notListed0107(NewData, Response, 7)
End Sub

Private Sub cmbTALON_AfterUpdate()
       
    Call cmbRev_AfterUpdate 'checks if info has been entered previously
       
End Sub

Private Sub cmbTALON_NotInList(NewData As String, Response As Integer)
Dim db As DAO.Database
Dim rs As DAO.Recordset
Dim strTmp As String
Dim queryName As String

queryName = "dupPARTNUM"
Set db = CurrentDb
Set rs = db.OpenRecordset(queryName)

    'Get confirmation that this is not just a spelling error.
    strTmp = "Add '" & NewData & "' as a new part number?"
    
If MsgBox(strTmp, vbYesNo + vbDefaultButton2 + vbQuestion, "Not in list") = vbYes Then

    'Append the NewData as a record in the Categories table.
    strTmp = "INSERT INTO tblpartnum (partNum) " & _
                "VALUES ('" & NewData & "');"

    'if already in the system, send an alert and don't save
    With rs
        If .RecordCount <> 0 Then
            DoCmd.RunCommand acCmdUndo
            MsgBox "This is a duplicate part number."
            .Close
            Exit Sub
        End If
    End With
                
    DBEngine(0)(0).Execute strTmp, dbFailOnError

    'Notify Access about the new record, so it requeries the combo.
    Response = acDataErrAdded
Else:
    Response = acDataErrContinue
    
End If
    
  rs.Close
  db.Close
  
End Sub

Private Sub cmdEXIT_Click()
Dim formName As String
    formName = "fmEP_NEW"
    DoCmd.Close ObjectType:=acForm, ObjectName:=Me.formName
End Sub

Private Sub Command131_Click()
 
    'tables
    Dim tblELEC As String
    Dim tblSEAL As String
    Dim tblMISC As String
    Dim idElec As Long
    Dim idSeal As Long
    Dim idMisc As Long
    Dim sElectrodes As String
    Dim sCseal As String
    Dim sMisc As String
    Dim sSQL As String
    
    'electrodes
    Dim elec1 As String 'electrodes
    Dim elec2 As String 'electrodes
    Dim elec3 As String 'electrodes
    Dim elec4 As String 'electrodes
    Dim elec5 As String 'electrodes
    Dim elecGr As String 'electrodes
    
    'cseals
    Dim cs1 As String 'cseals
    Dim cs2 As String 'cseals
    Dim cs3 As String 'cseals
    
    Dim lCap As String 'cap and base
    Dim lBase As String 'cap and base
    
    'misc
    Dim lMisc1 As String 'miscellaneous
    Dim lMisc2 As String 'miscellaneous
    Dim lMisc3 As String 'miscellaneous
    Dim lMisc4 As String 'miscellaneous
    Dim lMisc5 As String 'miscellaneous
    
    
    Dim lVolt As Double
    Dim lPre As Double
    Dim lPol As Double
    
    Dim pNum As Long
    Dim revN As Long
    Dim pdfFile As String
    Dim pdfPage As Long
    
    Dim lSle1 As String 'electrode sleeves
    Dim lSle2 As String 'electrode sleeves
    Dim lSle3 As String 'electrode sleeves
    Dim lSle4 As String 'electrode sleeves
    Dim lSle5 As String 'electrode sleeves
    
    Dim lSpac1 As String 'spacers
    Dim lSpac2 As String 'spacers
    
    Dim lElecCap As String

    Dim lCounter As Long
    Dim sN As String
    Dim sP As String

    sP = ", "
    sN = "Null"
    pNum = Nz(cmbTALON, 0)
    tblELEC = "tblEP_electrode"
    tblSEAL = "tblEP_CSEAL"
    tblMISC = "tblEP_MISC"
    
    If (IsNull(pNum) = False) And (pNum <> 0) Then

        elec1 = sqlStr(cmbELECTRODE1)
        elec2 = sqlStr(cmbELECTRODE2)
        elec3 = sqlStr(cmbELECTRODE3)
        elec4 = sqlStr(cmbELECTRODE4)
        elec5 = sqlStr(cmbELECTRODE5)
        elecGr = sqlStr(cmbELECTRODE_G)
        
        cs1 = sqlStr(cmbCSEAL1)
        cs2 = sqlStr(cmbCSEAL2)
        cs3 = sqlStr(cmbCSEAL3)
            
        revN = Nz(cmbRev.Value, 1)
        pdfFile = sqlStr(txtFILE)
        pdfPage = Nz(txtPage.Value, 1)
      
        lCap = sqlStr(cmbCap)
        lBase = sqlStr(cmbBase)
        
        lVolt = Nz(txtVolt, 15)
        lPre = Nz(txtPUMP, 3)
        lPol = Nz(txtTime, 8)
        
        lMisc1 = sqlStr(cmbMisc1)
        lMisc2 = sqlStr(cmbMisc2)
        lMisc3 = sqlStr(cmbMisc3)
        lMisc4 = sqlStr(cmbMisc4)
        lMisc5 = sqlStr(cmbMisc5)
        
        lSle1 = sqlStr(cmbSleeve1)
        lSle2 = sqlStr(cmbSleeve2)
        lSle3 = sqlStr(cmbSleeve3)
        lSle4 = sqlStr(cmbSleeve4)
        lSle5 = sqlStr(cmbSleeve5)
        
        lElecCap = sqlStr(cmbElecCap)
        
        lSpac1 = sqlStr(cmbSpacer1)
        lSpac2 = sqlStr(cmbSpacer1)
        
        
        'PDF entry corrector
        If pdfFile <> sN Then
            'corrects pdf string if apostrophe is present
            'Replace pdfFile, "'", "'''"
            'checks if user entered "pdf" into the file field and removes this before submitting
            If Right(pdfFile, 3) = "pdf" Then
                lCounter = Len(pdfFile)
                pdfFile = Left(pdfFile, lCounter - 3)
            ElseIf Right(pdfFile, 4) = ".pdf" Then
                lCounter = Len(pdfFile)
                pdfFile = Left(pdfFile, lCounter - 4)
            End If

        End If
        
        'Enter electrode(s) into appropriate table, pull the new ID and store in EP
        If (IsNull(cmbELECTRODE1) = False) Or (IsNull(cmbSleeve1) = False) Then
                sElectrodes = elec1 & sP & elec2 & sP & elec3 & sP & elec4 & sP & elec5 & sP & elecGr
                Call sqlEntryBuilder(tblELEC, sElectrodes, True)
                idElec = DMax("[ID]", tblELEC)
        Else:
            idElec = 0
        End If
         
        'Enter c-seal(s) into appropriate table, pull the ID for those c-seals and store in EP table
        If (IsNull(cmbCSEAL1) = False) Then
            sCseal = cs1 & sP & cs2 & sP & cs3
            Call sqlEntryBuilder(tblSEAL, sCseal, True)
            idSeal = DMax("[ID]", tblSEAL)
        Else:
            idSeal = 0
        End If
    
        'Enter all other parts into appropriate table, pull the ID
        If (IsNull(cmbMisc1) = False) Or (IsNull(cmbSpacer1) = False) Or (IsNull(cmbSleeve1) = False) Or (IsNull(cmbElecCap) = False) Then
            sMisc = lSle1 & sP & lSle2 & sP & lSle3 & sP & lSle4 & sP & lSle5 & sP & lElecCap & sP & _
                    lMisc1 & sP & lMisc2 & sP & lMisc3 & sP & lMisc4 & sP & _
                    lSpac1 & sP & lSpac2 & sP & lMisc5
            Call sqlEntryBuilder(tblMISC, sMisc, True)
            idMisc = DMax("[ID]", tblMISC)
        Else:
            idMisc = 0
        End If
    
        'enter all info into the EP table
        sSQL = pNum & sP & revN & sP & pdfFile & sP & lCap & sP & lBase & sP & idElec & sP & idSeal & sP & _
                lVolt & sP & lPol & sP & lPre & sP & ckRD & sP & False & sP & pdfPage & sP & sN & sP & idMisc
        Call sqlEntryBuilder("tblEP", sSQL, True)
        MsgBox "Successfully added!"
        Call Command132_Click
    End If
End Sub

Private Sub Command132_Click()

'clears all information in textboxes
Dim i As Long

    cmbTALON = Null
    cmbRev = Null
    
    cmbCap = Null
    cmbBase = Null
    cmbELECTRODE_G = "A1343" '01-50-5225

    With Me
        For i = 1 To 5
            .Controls("cmbELECTRODE" & i) = Null
            .Controls("cmbSleeve" & i) = Null
            .Controls("cmbMisc" & i) = Null
        Next
        
        For i = 1 To 3
            .Controls("cmbCSEAL" & i) = Null
        Next
    End With
    
    cmbElecCap = Null
    
    cmbSpacer1 = Null
    cmbSpacer2 = Null
    
    txtVolt = 15
    txtTime = 8
    txtPUMP = 3
    txtFILE = Null
    txtPage = Null
    
    With ckRD
        .Value = False
        Call tglCapt(Me.ckRD, 1)
    End With

    cmbTALON.SetFocus

End Sub

Private Sub Form_Load()

    If Not IsNull(Me.OpenArgs) Then 'checks for passed conditions from other forms
        epID = CLng(Me.OpenArgs)
        dialogWindow = True
        cmdEXIT.Visible = True
        Call condFormOpenEP(epID)
    Else:
        txtVolt = 15
        txtTime = 8
        txtPUMP = 3
        dialogWindow = False
        cmdEXIT.Visible = False
        
        ckRD.Value = False
        Call tglCapt(Me.ckRD, 1)
        
        cmbTALON.SetFocus
    End If
    
    
End Sub

Public Sub condFormOpenEP(epID As Long)

'browse and create a duplicate entry if requested from another form
Dim db As DAO.Database
Dim rs As DAO.Recordset
Dim rsMisc As DAO.Recordset
Dim rsEle As DAO.Recordset

Dim sEP As String
Dim sEle As String
Dim sSeal As String
Dim sMis As String

Dim lElec As Long
Dim lSeal As Long
Dim lMisc As Long

Dim i As Long
Dim sCol As String
Dim bRD As Boolean

    sEP = "tblEP"
    sEle = "tblEP_ELECTRODE"
    sSeal = "tblEP_CSEAL"
    sMis = "tblEP_MISC"

Set db = CurrentDb
Set rs = db.OpenRecordset(sEP)
Set rsEle = db.OpenRecordset(sEle)
Set rsMisc = db.OpenRecordset(sMis)


If (epID <> 0) Then

    cmbTALON.Enabled = True
    With rs
        .MoveFirst
        Do While Not .EOF
            If !ID = epID Then
                'pull boolean information
                    bRD = ![R&D]
                
                'pull link IDs
                    lElec = Nz(!elecLink, 0)
                    lSeal = Nz(!csealLink, 0)
                    lMisc = Nz(!miscLink, 0)
                
                'Pull table information
                    cmbTALON = !partNum
                    cmbCap = Nz(!capNum)
                    cmbBase = Nz(!baseNum)
                    txtVolt = Nz(!epVolt)
                    txtPUMP = Nz(!epPump)
                    txtTime = Nz(!epTime)
                    
                'adjust toggle buttons
                    ckRD = bRD
                    Call tglCapt(Me.ckRD, 1)
                    
                'file and pages
                    txtFILE = Nz(!fileName)
                    txtPage = Nz(!filePage)
                    Exit Do
            End If
            .MoveNext
        Loop
        .Close
    End With
    
    'electrodes
    If lElec <> 0 Then
        With rsEle
            .MoveFirst
            Do While Not .EOF
                If !ID = lElec Then
                    For i = 1 To 5
                        sCol = Nz(.Fields("electrode" & i))
                        Me.Controls("cmbELECTRODE" & i).Value = sCol
                    Next
                    cmbELECTRODE_G.Value = Nz(!groundElectrode)
                    Exit Do
                End If
                .MoveNext
            Loop
            .Close
        End With
        
    End If

    'cseals
    If lSeal <> 0 Then
        For i = 1 To 3
            sCol = "[cseal" & i & "]"
            Me.Controls("cmbCSEAL" & i).Value = Nz(DLookup(sCol, sSeal, "[ID] = " & lSeal))
        Next
    End If

    'misc
    If lMisc <> 0 Then
    
        With rsMisc
            .MoveFirst
            
            Do While Not .EOF
                If !ID = lMisc Then
                    'sleeves holders
                    For i = 1 To 5
                        sCol = Nz(.Fields("eleSleeve" & i))
                        Me.Controls("cmbSLEEVE" & i).Value = sCol
                    Next
                
                    'misc
                    For i = 1 To 5
                        sCol = Nz(.Fields("misc" & i))
                        Me.Controls("cmbMisc" & i).Value = sCol
                    Next
                    
                    'electrode cap
                    cmbElecCap.Value = !eleCap1
                
                    'spacer
                    For i = 1 To 2
                        sCol = Nz(.Fields("Spacer" & i))
                        Me.Controls("cmbSpacer" & i).Value = sCol
                    Next
                    Exit Do
                End If
                .MoveNext
            Loop
            .Close
        End With
        
    End If
    
    cmbRev.SetFocus
Else:
    cmbTALON.Enabled = False
End If

    db.Close

End Sub

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
    Width =18143
    DatasheetFontHeight =11
    ItemSuffix =766
    Right =25185
    Bottom =13935
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0x654ddd735164e540
    End
    Caption ="Daily Maintenance - CR"
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
        Begin Section
            Height =8220
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =570
                    Width =7365
                    Height =509
                    FontSize =18
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label51"
                    Caption ="Technician:"
                    GroupTable =2
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =570
                    LayoutCachedWidth =7395
                    LayoutCachedHeight =1079
                    RowStart =1
                    RowEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin CommandButton
                    Default = NotDefault
                    OverlapFlags =85
                    Left =7455
                    Top =3180
                    Width =1350
                    Height =570
                    TabIndex =5
                    ForeColor =6710886
                    Name ="cmdENTER"
                    Caption ="cmdENTER"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Add Record"
                    GroupTable =2
                    TopPadding =360
                    BottomPadding =360
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
                    LayoutCachedLeft =7455
                    LayoutCachedTop =3180
                    LayoutCachedWidth =8805
                    LayoutCachedHeight =3750
                    RowStart =5
                    RowEnd =5
                    ColumnStart =1
                    ColumnEnd =1
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
                    GroupTable =2
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =24
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =23
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =8865
                    Top =3180
                    Height =570
                    TabIndex =6
                    ForeColor =6710886
                    Name ="cmdUNDO"
                    Caption ="cmdUNDO"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Undo Record"
                    GroupTable =2
                    TopPadding =360
                    BottomPadding =360
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
                    LayoutCachedLeft =8865
                    LayoutCachedTop =3180
                    LayoutCachedWidth =10305
                    LayoutCachedHeight =3750
                    RowStart =5
                    RowEnd =5
                    ColumnStart =2
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
                    GroupTable =2
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =24
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =23
                    Overlaps =1
                End
                Begin EmptyCell
                    Left =30
                    Top =3180
                    Width =7365
                    Height =570
                    Name ="EmptyCell536"
                    GroupTable =2
                    TopPadding =360
                    BottomPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =3180
                    LayoutCachedWidth =7395
                    LayoutCachedHeight =3750
                    RowStart =5
                    RowEnd =5
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =8865
                    Top =1140
                    Width =2580
                    Height =509
                    FontSize =18
                    TabIndex =1
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtTEMP"
                    AfterUpdate ="[Event Procedure]"
                    GroupTable =2
                    GridlineColor =10921638

                    LayoutCachedLeft =8865
                    LayoutCachedTop =1140
                    LayoutCachedWidth =11445
                    LayoutCachedHeight =1649
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
                    GroupTable =2
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =30
                            Top =1140
                            Width =8775
                            Height =509
                            FontSize =18
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label596"
                            Caption ="Temperature (ᵒF):"
                            GroupTable =2
                            GridlineColor =10921638
                            LayoutCachedLeft =30
                            LayoutCachedTop =1140
                            LayoutCachedWidth =8805
                            LayoutCachedHeight =1649
                            RowStart =2
                            RowEnd =2
                            ColumnEnd =1
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =2
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =8865
                    Top =1710
                    Width =2580
                    Height =509
                    FontSize =18
                    TabIndex =3
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtTANKA"
                    GroupTable =2
                    GridlineColor =10921638

                    LayoutCachedLeft =8865
                    LayoutCachedTop =1710
                    LayoutCachedWidth =11445
                    LayoutCachedHeight =2219
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
                    GroupTable =2
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =30
                            Top =1710
                            Width =8775
                            Height =509
                            FontSize =18
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label602"
                            Caption ="Tank A (MΩ):"
                            GroupTable =2
                            GridlineColor =10921638
                            LayoutCachedLeft =30
                            LayoutCachedTop =1710
                            LayoutCachedWidth =8805
                            LayoutCachedHeight =2219
                            RowStart =3
                            RowEnd =3
                            ColumnEnd =1
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =2
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =8865
                    Top =2280
                    Width =2580
                    Height =509
                    FontSize =18
                    TabIndex =4
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtTANKB"
                    AfterUpdate ="[Event Procedure]"
                    GroupTable =2
                    GridlineColor =10921638

                    LayoutCachedLeft =8865
                    LayoutCachedTop =2280
                    LayoutCachedWidth =11445
                    LayoutCachedHeight =2789
                    RowStart =4
                    RowEnd =4
                    ColumnStart =2
                    ColumnEnd =3
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =2
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =30
                            Top =2280
                            Width =8775
                            Height =509
                            FontSize =18
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label614"
                            Caption ="Tank B (MΩ):"
                            GroupTable =2
                            GridlineColor =10921638
                            LayoutCachedLeft =30
                            LayoutCachedTop =2280
                            LayoutCachedWidth =8805
                            LayoutCachedHeight =2789
                            RowStart =4
                            RowEnd =4
                            ColumnEnd =1
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =2
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =30
                    Top =120
                    Width =17925
                    Height =390
                    FontSize =14
                    BorderColor =10066329
                    ForeColor =8026746
                    Name ="Label658"
                    Caption ="View work instruction WI#0228 for information."
                    GroupTable =2
                    RightPadding =180
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =120
                    LayoutCachedWidth =17955
                    LayoutCachedHeight =510
                    ColumnEnd =5
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeThemeColorIndex =-1
                    ForeTint =65.0
                    GridlineThemeColorIndex =-1
                    GroupTable =2
                End
                Begin ListBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    BorderWidth =1
                    IMESentenceMode =3
                    Left =13275
                    Top =1140
                    Width =4680
                    Height =1649
                    FontSize =14
                    TabIndex =2
                    BackColor =15921906
                    ForeColor =3355443
                    Name ="listTASKS"
                    RowSourceType ="Value List"
                    RowSource ="Complete additional tasks as needed"
                    GroupTable =2
                    LeftPadding =720
                    RightPadding =180

                    LayoutCachedLeft =13275
                    LayoutCachedTop =1140
                    LayoutCachedWidth =17955
                    LayoutCachedHeight =2789
                    RowStart =2
                    RowEnd =4
                    ColumnStart =5
                    ColumnEnd =5
                    LayoutGroup =1
                    BackShade =95.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    GridlineThemeColorIndex =5
                    GridlineShade =100.0
                    GroupTable =2
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =13275
                    Top =570
                    Width =4680
                    Height =509
                    FontSize =14
                    TopMargin =216
                    BorderColor =11316396
                    ForeColor =3355443
                    Name ="Label669"
                    Caption ="Incomplete Tasks:"
                    GroupTable =2
                    LeftPadding =720
                    RightPadding =180
                    GridlineColor =16730623
                    LayoutCachedLeft =13275
                    LayoutCachedTop =570
                    LayoutCachedWidth =17955
                    LayoutCachedHeight =1079
                    RowStart =1
                    RowEnd =1
                    ColumnStart =5
                    ColumnEnd =5
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GridlineThemeColorIndex =-1
                    GroupTable =2
                End
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =3
                    Left =7455
                    Top =570
                    Width =5070
                    Height =509
                    FontSize =18
                    ColumnInfo ="\"\";\"\";\"First Name\";\"\";\"Last Name\";\"\";\"10\";\"100\""
                    Name ="txtNAME"
                    RowSourceType ="Table/Query"
                    RowSource ="qryEMPLOYEE_CR"
                    ColumnWidths ="0;1440;1440"
                    GroupTable =2
                    GridlineColor =10921638
                    AllowValueListEdits =0
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =7455
                    LayoutCachedTop =570
                    LayoutCachedWidth =12525
                    LayoutCachedHeight =1079
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =4
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeThemeColorIndex =0
                    ForeShade =75.0
                    GroupTable =2
                End
                Begin Subform
                    OverlapFlags =85
                    Left =30
                    Top =4140
                    Width =17925
                    Height =3780
                    TabIndex =7
                    BorderColor =10921638
                    Name ="Child707"
                    SourceObject ="Query.qryMAINTENANCE_DAILY_CR_DISPLAY"
                    GroupTable =2
                    RightPadding =180
                    GridlineColor =10921638

                    LayoutCachedLeft =30
                    LayoutCachedTop =4140
                    LayoutCachedWidth =17955
                    LayoutCachedHeight =7920
                    RowStart =6
                    RowEnd =6
                    ColumnEnd =5
                    LayoutGroup =1
                    BorderThemeColorIndex =-1
                    GridlineThemeColorIndex =-1
                    GroupTable =2
                End
                Begin EmptyCell
                    Left =10365
                    Top =3180
                    Width =7590
                    Height =570
                    Name ="EmptyCell733"
                    GroupTable =2
                    TopPadding =360
                    RightPadding =180
                    BottomPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =10365
                    LayoutCachedTop =3180
                    LayoutCachedWidth =17955
                    LayoutCachedHeight =3750
                    RowStart =5
                    RowEnd =5
                    ColumnStart =3
                    ColumnEnd =5
                    LayoutGroup =1
                    GridlineThemeColorIndex =-1
                    GroupTable =2
                End
                Begin EmptyCell
                    Left =11505
                    Top =1140
                    Width =1020
                    Height =1649
                    Name ="EmptyCell761"
                    GroupTable =2
                    GridlineColor =10921638
                    LayoutCachedLeft =11505
                    LayoutCachedTop =1140
                    LayoutCachedWidth =12525
                    LayoutCachedHeight =2789
                    RowStart =2
                    RowEnd =4
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =1
                    GroupTable =2
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

Private Sub cmdENTER_Click()
On Error GoTo Macro1_Err

Dim sVal As String
Dim sP As String
Dim sTbl As String
Dim taskID As Long

taskID = 4
sP = ", "
sTbl = DLookup("[tableRel]", "tblTASKLIST", "[ID] = " & taskID)

    If (ckIncomplete("txt*", Me, True, 2) = False) Then 'check that all values were entered
        If txtTANKB.Value < 17 Then
            MsgBox "The resistance meter is low, violating work instruction 16-10-3-QA-0011. Change resin bottles and take resistance measurement again after 10 minutes.", vbOKOnly, "Process Violation"
        End If
            
        sVal = txtTEMP & sP & txtTANKA & sP & txtTANKB & sP & _
                False & sP & False & sP & False & sP & False & sP & False & sP & False & sP & False & sP & False & sP & False & sP & False & sP & False & sP & _
                txtNAME
        Call sqlEntryBuilder(sTbl, sVal, True)
        MsgBox "Record successfully added."
        Call listBox_LOAD
        Call cmdUndo_Click
    End If
    
Macro1_Exit:
        Exit Sub
    
Macro1_Err:
        MsgBox Error$
        Resume Macro1_Exit
        
End Sub

Private Sub cmdUndo_Click()

    txtTANKA = Null
    txtTANKB = Null
    txtTEMP = Null
    
    With txtNAME
        .Value = Null
        .SetFocus
    End With

End Sub

Private Sub Form_Load()
On Error Resume Next

    Me.Parent!lblBANNER.Caption = "CR Water Meters"
    Call listBox_LOAD
    
End Sub

Private Sub listBox_LOAD()

'Fill list box with tasks yet to be completed
Dim title As String
Dim taskID As Long

    With Me!listTASKS
        taskID = 19 'location of query information
        .RowSource = "" 'clear old information
        title = incompleteTasks(taskID) 'pull data to determine which tasks are incomplete
        .RowSource = title
    End With
    
End Sub

Private Sub txtTANKB_AfterUpdate()

    Dim resistB As Double
    
    resistB = Nz(Trim(txtTANKB.Value), 0)
    
    If (resistB < 12) And (resistB <> 0) Then
        MsgBox "The resistance for deionized water is below recommended levels. Please replace resin tanks or contact your supervisor.", vbOKOnly, "Resistance Low"
    End If
    
End Sub

Private Sub txtTEMP_AfterUpdate()

    Dim Temp As Double
    
    Temp = Nz(Trim(txtTEMP.Value), 0)
    
    If (Temp < 80) And (Temp <> 0) Then
        MsgBox "The temperature for deionized water is below recommended levels. Please turn on water heater or contact your supervisor.", vbOKOnly, "Resistance Low"
    End If
    
End Sub

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
    Width =18923
    DatasheetFontHeight =11
    ItemSuffix =1546
    Left =3495
    Top =1470
    Right =26565
    Bottom =12240
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0xe1a1011a5041e540
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
        Begin Section
            Height =7110
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =120
                    Width =7140
                    Height =576
                    FontSize =18
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label51"
                    Caption ="Technician:"
                    GroupTable =4
                    BottomPadding =288
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =120
                    LayoutCachedWidth =7170
                    LayoutCachedHeight =696
                    ColumnEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =4
                End
                Begin CommandButton
                    Default = NotDefault
                    OverlapFlags =85
                    Left =7230
                    Top =6180
                    Width =1800
                    Height =570
                    TabIndex =9
                    ForeColor =6710886
                    Name ="cmdEnter"
                    Caption ="Command151"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Add Record"
                    GroupTable =4
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
                    LayoutCachedLeft =7230
                    LayoutCachedTop =6180
                    LayoutCachedWidth =9030
                    LayoutCachedHeight =6750
                    RowStart =8
                    RowEnd =8
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
                    GroupTable =4
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =24
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =23
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9090
                    Top =6180
                    Width =1800
                    Height =570
                    TabIndex =10
                    ForeColor =6710886
                    Name ="cmdUndo"
                    Caption ="Command152"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Undo Record"
                    GroupTable =4
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
                    LayoutCachedLeft =9090
                    LayoutCachedTop =6180
                    LayoutCachedWidth =10890
                    LayoutCachedHeight =6750
                    RowStart =8
                    RowEnd =8
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
                    GroupTable =4
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =24
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =23
                    Overlaps =1
                End
                Begin ListBox
                    Enabled = NotDefault
                    TabStop = NotDefault
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    BorderWidth =1
                    IMESentenceMode =3
                    Left =13830
                    Top =1740
                    Width =4905
                    Height =3330
                    FontSize =14
                    TabIndex =3
                    BackColor =15921906
                    ForeColor =3355443
                    Name ="listTASKS"
                    RowSourceType ="Value List"
                    RowSource ="Complete additional tasks as needed"
                    GroupTable =4
                    LeftPadding =360
                    TopPadding =58
                    RightPadding =180
                    BottomPadding =58
                    AllowValueListEdits =0

                    LayoutCachedLeft =13830
                    LayoutCachedTop =1740
                    LayoutCachedWidth =18735
                    LayoutCachedHeight =5070
                    RowStart =2
                    RowEnd =6
                    ColumnStart =5
                    ColumnEnd =5
                    LayoutGroup =1
                    BackShade =95.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    GridlineThemeColorIndex =5
                    GridlineShade =100.0
                    GroupTable =4
                End
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =3
                    Left =7230
                    Top =120
                    Width =6060
                    Height =576
                    FontSize =18
                    ColumnInfo ="\"\";\"\";\"First Name\";\"\";\"Last Name\";\"\";\"10\";\"100\""
                    Name ="cmbTech"
                    RowSourceType ="Table/Query"
                    RowSource ="qryEMPLOYEE_CR"
                    ColumnWidths ="0;1440;1440"
                    GroupTable =4
                    RightPadding =180
                    BottomPadding =288
                    GridlineColor =10921638
                    AllowValueListEdits =0
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =7230
                    LayoutCachedTop =120
                    LayoutCachedWidth =13290
                    LayoutCachedHeight =696
                    ColumnStart =2
                    ColumnEnd =4
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeThemeColorIndex =0
                    ForeShade =75.0
                    GroupTable =4
                End
                Begin EmptyCell
                    Left =13830
                    Top =5190
                    Width =4905
                    Height =1560
                    Name ="EmptyCell1326"
                    GroupTable =4
                    LeftPadding =360
                    TopPadding =58
                    RightPadding =180
                    BottomPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =13830
                    LayoutCachedTop =5190
                    LayoutCachedWidth =18735
                    LayoutCachedHeight =6750
                    RowStart =7
                    RowEnd =8
                    ColumnStart =5
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =4
                End
                Begin ToggleButton
                    OverlapFlags =85
                    Left =5355
                    Top =1050
                    Width =7935
                    Height =570
                    FontSize =14
                    FontWeight =400
                    TabIndex =1
                    ForeColor =2500134
                    Name ="ckMat"
                    Caption ="Peel Sticky Mats"
                    FontName ="Calibri"
                    OnMouseMove ="[Event Procedure]"
                    OnClick ="[Event Procedure]"
                    GroupTable =4
                    TopPadding =58
                    RightPadding =180
                    BottomPadding =58
                    GridlineColor =10921638

                    LayoutCachedLeft =5355
                    LayoutCachedTop =1050
                    LayoutCachedWidth =13290
                    LayoutCachedHeight =1620
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =4
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
                    GroupTable =4
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =3
                    WebImagePaddingRight =10
                    WebImagePaddingBottom =2
                    Overlaps =1
                End
                Begin ToggleButton
                    OverlapFlags =85
                    Left =5355
                    Top =1740
                    Width =7935
                    Height =570
                    FontSize =14
                    FontWeight =400
                    TabIndex =2
                    ForeColor =2500134
                    Name ="ckPassThru"
                    Caption ="Clean Pass-Thrus"
                    FontName ="Calibri"
                    OnMouseMove ="[Event Procedure]"
                    OnClick ="[Event Procedure]"
                    GroupTable =4
                    TopPadding =58
                    RightPadding =180
                    BottomPadding =58
                    GridlineColor =10921638

                    LayoutCachedLeft =5355
                    LayoutCachedTop =1740
                    LayoutCachedWidth =13290
                    LayoutCachedHeight =2310
                    RowStart =2
                    RowEnd =2
                    ColumnStart =1
                    ColumnEnd =4
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
                    GroupTable =4
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =3
                    WebImagePaddingRight =10
                    WebImagePaddingBottom =2
                    Overlaps =1
                End
                Begin ToggleButton
                    OverlapFlags =85
                    Left =5355
                    Top =2430
                    Width =7935
                    Height =570
                    FontSize =14
                    FontWeight =400
                    TabIndex =4
                    ForeColor =2500134
                    Name ="ckRestock"
                    Caption ="Restock Supplies"
                    FontName ="Calibri"
                    OnMouseMove ="[Event Procedure]"
                    OnClick ="[Event Procedure]"
                    GroupTable =4
                    TopPadding =58
                    RightPadding =180
                    BottomPadding =58
                    GridlineColor =10921638

                    LayoutCachedLeft =5355
                    LayoutCachedTop =2430
                    LayoutCachedWidth =13290
                    LayoutCachedHeight =3000
                    RowStart =3
                    RowEnd =3
                    ColumnStart =1
                    ColumnEnd =4
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
                    GroupTable =4
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =3
                    WebImagePaddingRight =10
                    WebImagePaddingBottom =2
                    Overlaps =1
                End
                Begin ToggleButton
                    OverlapFlags =85
                    Left =5355
                    Top =3120
                    Width =7935
                    Height =570
                    FontSize =14
                    FontWeight =400
                    TabIndex =5
                    ForeColor =2500134
                    Name ="ckMop"
                    Caption ="Mop Floor"
                    FontName ="Calibri"
                    OnMouseMove ="[Event Procedure]"
                    OnClick ="[Event Procedure]"
                    GroupTable =4
                    TopPadding =58
                    RightPadding =180
                    BottomPadding =58
                    GridlineColor =10921638

                    LayoutCachedLeft =5355
                    LayoutCachedTop =3120
                    LayoutCachedWidth =13290
                    LayoutCachedHeight =3690
                    RowStart =4
                    RowEnd =4
                    ColumnStart =1
                    ColumnEnd =4
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
                    GroupTable =4
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =3
                    WebImagePaddingRight =10
                    WebImagePaddingBottom =2
                    Overlaps =1
                End
                Begin ToggleButton
                    OverlapFlags =85
                    Left =5355
                    Top =3810
                    Width =7935
                    Height =570
                    FontSize =14
                    FontWeight =400
                    TabIndex =6
                    ForeColor =2500134
                    Name ="ckSurface"
                    Caption ="Wipe Down All Surfaces"
                    FontName ="Calibri"
                    OnMouseMove ="[Event Procedure]"
                    OnClick ="[Event Procedure]"
                    GroupTable =4
                    TopPadding =58
                    RightPadding =180
                    BottomPadding =58
                    GridlineColor =10921638

                    LayoutCachedLeft =5355
                    LayoutCachedTop =3810
                    LayoutCachedWidth =13290
                    LayoutCachedHeight =4380
                    RowStart =5
                    RowEnd =5
                    ColumnStart =1
                    ColumnEnd =4
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
                    GroupTable =4
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =3
                    WebImagePaddingRight =10
                    WebImagePaddingBottom =2
                    Overlaps =1
                End
                Begin ToggleButton
                    OverlapFlags =85
                    Left =5355
                    Top =4500
                    Width =7935
                    Height =570
                    FontSize =14
                    FontWeight =400
                    TabIndex =7
                    ForeColor =2500134
                    Name ="ckTools"
                    Caption ="Wipe Down All Tools Used"
                    FontName ="Calibri"
                    OnMouseMove ="[Event Procedure]"
                    OnClick ="[Event Procedure]"
                    GroupTable =4
                    TopPadding =58
                    RightPadding =180
                    BottomPadding =58
                    GridlineColor =10921638

                    LayoutCachedLeft =5355
                    LayoutCachedTop =4500
                    LayoutCachedWidth =13290
                    LayoutCachedHeight =5070
                    RowStart =6
                    RowEnd =6
                    ColumnStart =1
                    ColumnEnd =4
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
                    GroupTable =4
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =3
                    WebImagePaddingRight =10
                    WebImagePaddingBottom =2
                    Overlaps =1
                End
                Begin ToggleButton
                    OverlapFlags =85
                    Left =5355
                    Top =5190
                    Width =7935
                    Height =570
                    FontSize =14
                    FontWeight =400
                    TabIndex =8
                    ForeColor =2500134
                    Name ="ckTrash"
                    Caption ="Take Out Trash"
                    FontName ="Calibri"
                    OnMouseMove ="[Event Procedure]"
                    OnClick ="[Event Procedure]"
                    GroupTable =4
                    TopPadding =58
                    RightPadding =180
                    BottomPadding =58
                    GridlineColor =10921638

                    LayoutCachedLeft =5355
                    LayoutCachedTop =5190
                    LayoutCachedWidth =13290
                    LayoutCachedHeight =5760
                    RowStart =7
                    RowEnd =7
                    ColumnStart =1
                    ColumnEnd =4
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
                    GroupTable =4
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =3
                    WebImagePaddingRight =10
                    WebImagePaddingBottom =2
                    Overlaps =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =13830
                    Top =120
                    Width =4905
                    Height =1500
                    FontSize =14
                    TopMargin =1080
                    BorderColor =11316396
                    ForeColor =3355443
                    Name ="Label1481"
                    Caption ="Incomplete Tasks:"
                    GroupTable =4
                    LeftPadding =360
                    RightPadding =180
                    BottomPadding =58
                    GridlineColor =16730623
                    LayoutCachedLeft =13830
                    LayoutCachedTop =120
                    LayoutCachedWidth =18735
                    LayoutCachedHeight =1620
                    RowEnd =1
                    ColumnStart =5
                    ColumnEnd =5
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GridlineThemeColorIndex =-1
                    GroupTable =4
                End
                Begin EmptyCell
                    Left =11280
                    Top =6180
                    Width =2010
                    Height =570
                    Name ="EmptyCell1505"
                    GroupTable =4
                    LeftPadding =360
                    TopPadding =360
                    RightPadding =180
                    BottomPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =11280
                    LayoutCachedTop =6180
                    LayoutCachedWidth =13290
                    LayoutCachedHeight =6750
                    RowStart =8
                    RowEnd =8
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =1
                    GroupTable =4
                End
                Begin EmptyCell
                    Left =30
                    Top =6180
                    Width =7140
                    Height =570
                    Name ="EmptyCell1508"
                    GroupTable =4
                    TopPadding =360
                    BottomPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =6180
                    LayoutCachedWidth =7170
                    LayoutCachedHeight =6750
                    RowStart =8
                    RowEnd =8
                    ColumnEnd =1
                    LayoutGroup =1
                    GroupTable =4
                End
                Begin EmptyCell
                    Left =30
                    Top =1050
                    Width =5265
                    Height =4710
                    Name ="EmptyCell1541"
                    GroupTable =4
                    TopPadding =58
                    BottomPadding =58
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =1050
                    LayoutCachedWidth =5295
                    LayoutCachedHeight =5760
                    RowStart =1
                    RowEnd =7
                    LayoutGroup =1
                    GroupTable =4
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
Dim sCap1 As String
Dim sCap2 As String
Dim sCap3 As String
Dim sCap4 As String
Dim sCap5 As String
Dim sCap6 As String
Dim sCap7 As String
Dim ctl As Control
Dim sName As String


Public Sub sCap()
    sCap1 = "Peel Sticky Mats"
    sCap2 = "Mop Floor"
    sCap3 = "Clean Pass-Thrus"
    sCap4 = "Restock Supplies"
    sCap5 = "Wipe Down All Surfaces"
    sCap6 = "Wipe Down All Tools Used"
    sCap7 = "Take Out Trash"
    
End Sub

Private Sub ckMat_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap1, Me)
End Sub

Private Sub ckMop_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap2, Me)
End Sub

Private Sub ckPassThru_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap3, Me)
End Sub

Private Sub ckRestock_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap4, Me)
    
End Sub

Private Sub ckSurface_Click()
    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap5, Me)
End Sub

Private Sub ckTools_Click()

Set ctl = SCREEN.ActiveControl
sName = ctl.Name
    Call ckCaption(sName, sCap6, Me)
    
End Sub
Private Sub ckTrash_Click()

    Set ctl = SCREEN.ActiveControl
    sName = ctl.Name
    Call ckCaption(sName, sCap7, Me)
    
End Sub

Private Sub ckMat_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckPassThru_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckMop_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckRestock_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckSurface_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckTools_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub ckTrash_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub cmdENTER_Click()
Dim sMat As String
Dim sPass As String
Dim sRestock As String
Dim sMop As String
Dim sSurface As String
Dim sTools As String
Dim sTrash As String
Dim techName As Long
Dim stSQL As String
Dim sP As String
Dim sNu As String
Dim sTbl As String

On Error GoTo Macro1_Err

sTbl = "tblMAINTENANCE_DAILY_CR"
sP = ", "
sNu = "Null"

    'Pull checkbox values
    If ckMat = True Then
        sMat = "True"
    Else:
        sMat = "False"
    End If
    
    If ckPassThru = True Then
        sPass = "True"
    Else:
        sPass = "False"
    End If
    
    If ckRestock = True Then
        sRestock = "True"
    Else:
        sRestock = "False"
    End If
    
    If ckMop = True Then
        sMop = "True"
    Else:
        sMop = "False"
    End If

    If ckSurface = True Then
        sSurface = "True"
    Else:
        sSurface = "False"
    End If
    
    If ckTools = True Then
        sTools = "True"
    Else:
        sTools = "False"
    End If

    If ckTrash = True Then
        sTrash = "True"
    Else:
        sTrash = "False"
    End If
    
    'Pull name
    techName = Nz(cmbTech.Value, 0)
    
    'Check that form was entered properly
    If techName = 0 Then
        MsgBox "Select a name.", vbOKOnly, "Missing Info"
        cmbTech.SetFocus
    Else:
        
        If (ckIncomplete("ck*", Me, True, 1) = False) Then
            'Enter a new entry to CR daily log
            stSQL = sNu & sP & sNu & sP & sNu & sP & _
                    sSurface & sP & sTools & sP & sMat & sP & sPass & sP & sTrash & sP & sMop & sP & _
                    False & sP & False & sP & False & sP & False & sP & sRestock & sP & techName
            Call sqlEntryBuilder(sTbl, stSQL, True)
            MsgBox "Record successfully added."
            Call cmdUndo_Click
        End If
        
    End If
    
Macro1_Exit:
        Exit Sub
    
Macro1_Err:
        MsgBox Error$
        Resume Macro1_Exit


End Sub

Private Sub cmdUndo_Click()
  
'clear values
    Call sCap
    cmbTech = Null
    
    With ckMat
        .Value = False
        .Caption = sCap1
        .FontBold = False
    End With
    
    With ckMop
        .Value = False
        .Caption = sCap2
        .FontBold = False
    End With
    
    With ckPassThru
        .Value = False
        .Caption = sCap3
        .FontBold = False
    End With
    
    With ckRestock
        .Value = False
        .Caption = sCap4
        .FontBold = False
    End With
    
    With ckSurface
        .Value = False
        .Caption = sCap5
        .FontBold = False
    End With
    
    With ckTools
        .Value = False
        .Caption = sCap6
        .FontBold = False
    End With
    
    With ckTrash
        .Value = False
        .Caption = sCap7
        .FontBold = False
    End With
    
'reset subforms
    cmbTech.SetFocus
    Call listBox_LOAD
    
End Sub

Private Sub Form_Load()
On Error Resume Next
    Me.Parent!lblBANNER.Caption = "CR Daily Maintenance"
    Call sCap
    Call cmdUndo_Click
    
End Sub

Private Sub listBox_LOAD()

'Fill list box with tasks yet to be completed
Dim title As String
Dim taskID As Long

    With Me!listTASKS
        taskID = 4 'location of query information
        .RowSource = "" 'clear old information
        title = incompleteTasks(taskID) 'pull data to determine which tasks are incomplete
        .RowSource = title
    End With
    
End Sub

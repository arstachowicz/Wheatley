Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =18608
    DatasheetFontHeight =11
    ItemSuffix =130
    Left =3555
    Top =1590
    Right =22275
    Bottom =12840
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0x8e19cf820a51e540
    End
    Caption ="Chemical Movement Log"
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
            Height =11160
            Name ="Detail"
            AutoHeight =1
            AlternateBackThemeColorIndex =3
            BackThemeColorIndex =3
            Begin
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =3
                    ListWidth =2880
                    Left =8220
                    Top =30
                    Width =4440
                    Height =516
                    FontSize =18
                    ColumnInfo ="\"\";\"\";\"\";\"\";\"\";\"\";\"10\";\"100\""
                    Name ="cmbTECH"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tblTECHNAME.ID, tblTECHNAME.firstName, tblTECHNAME.lastName FROM tblTECHN"
                        "AME WHERE (((tblTECHNAME.worksCL)=True) AND ((tblTECHNAME.Employed)=True)) ORDER"
                        " BY tblTECHNAME.[firstName], tblTECHNAME.[lastName]; "
                    ColumnWidths ="0;1440;1440"
                    AfterUpdate ="[Event Procedure]"
                    ControlTipText ="Name of technician who is performing action"
                    GroupTable =1
                    GridlineColor =10921638
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =8220
                    LayoutCachedTop =30
                    LayoutCachedWidth =12660
                    LayoutCachedHeight =546
                    ColumnStart =1
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
                    ListWidth =2340
                    Left =8220
                    Top =1170
                    Width =4440
                    Height =516
                    FontSize =18
                    TabIndex =2
                    Name ="cmbCHEM"
                    RowSourceType ="Table/Query"
                    ColumnWidths ="0;2340"
                    AfterUpdate ="[Event Procedure]"
                    ControlTipText ="The chemical being moved or manipulated"
                    GroupTable =1
                    GridlineColor =10921638
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =8220
                    LayoutCachedTop =1170
                    LayoutCachedWidth =12660
                    LayoutCachedHeight =1686
                    RowStart =2
                    RowEnd =2
                    ColumnStart =1
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
                    Left =8220
                    Top =600
                    Width =2940
                    Height =516
                    FontSize =18
                    TabIndex =1
                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                    Name ="cmbLine"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tblLINES.ID, tblLINES.Line FROM tblLINES ORDER BY tblLINES.Line; "
                    ColumnWidths ="0;1440"
                    AfterUpdate ="[Event Procedure]"
                    ControlTipText ="The location (or origin) of chemical being moved"
                    GroupTable =1
                    GridlineColor =10921638
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =8220
                    LayoutCachedTop =600
                    LayoutCachedWidth =11160
                    LayoutCachedHeight =1116
                    RowStart =1
                    RowEnd =1
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
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =8220
                    Top =1740
                    Width =2940
                    Height =516
                    FontSize =18
                    TabIndex =3
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtVolume"
                    AfterUpdate ="[Event Procedure]"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =8220
                    LayoutCachedTop =1740
                    LayoutCachedWidth =11160
                    LayoutCachedHeight =2256
                    RowStart =3
                    RowEnd =3
                    ColumnStart =1
                    ColumnEnd =3
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    ListWidth =1440
                    Left =11220
                    Top =1740
                    Height =516
                    FontSize =18
                    TabIndex =4
                    Name ="cmbUnit"
                    RowSourceType ="Value List"
                    RowSource ="1;\"gal\";2;\"L\";3;\"mL\""
                    ColumnWidths ="0;1440"
                    DefaultValue ="1"
                    GroupTable =1
                    GridlineColor =10921638
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =11220
                    LayoutCachedTop =1740
                    LayoutCachedWidth =12660
                    LayoutCachedHeight =2256
                    RowStart =3
                    RowEnd =3
                    ColumnStart =4
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
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    ListWidth =1440
                    Left =8220
                    Top =2310
                    Width =4440
                    Height =516
                    FontSize =18
                    TabIndex =5
                    Name ="cmbAction"
                    RowSourceType ="Value List"
                    RowSource ="1;\"Transferred\";2;\"Added\";3;\"Drained\""
                    ColumnWidths ="0;1440"
                    AfterUpdate ="[Event Procedure]"
                    GroupTable =1
                    GridlineColor =10921638
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =8220
                    LayoutCachedTop =2310
                    LayoutCachedWidth =12660
                    LayoutCachedHeight =2826
                    RowStart =4
                    RowEnd =4
                    ColumnStart =1
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
                    Visible = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    ListWidth =1440
                    Left =8220
                    Top =2880
                    Width =2220
                    Height =516
                    FontSize =18
                    TabIndex =6
                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                    Name ="cmbLine_Final"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT [tblLINES].[ID], [tblLINES].[Line] FROM tblLINES ORDER BY [Line]; "
                    ColumnWidths ="0;1440"
                    GroupTable =1
                    GridlineColor =10921638
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =8220
                    LayoutCachedTop =2880
                    LayoutCachedWidth =10440
                    LayoutCachedHeight =3396
                    RowStart =5
                    RowEnd =5
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
                End
                Begin CommandButton
                    Default = NotDefault
                    OverlapFlags =85
                    Left =8220
                    Top =3645
                    Height =570
                    TabIndex =7
                    ForeColor =6710886
                    Name ="cmdENTER"
                    Caption ="Command76"
                    OnClick ="[Event Procedure]"
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
                    LayoutCachedLeft =8220
                    LayoutCachedTop =3645
                    LayoutCachedWidth =9660
                    LayoutCachedHeight =4215
                    RowStart =6
                    RowEnd =6
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
                    GroupTable =1
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =14
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =13
                    Overlaps =1
                End
                Begin EmptyCell
                    Left =11220
                    Top =3645
                    Width =7350
                    Height =570
                    Name ="EmptyCell82"
                    GroupTable =1
                    TopPadding =216
                    BottomPadding =216
                    GridlineColor =10921638
                    LayoutCachedLeft =11220
                    LayoutCachedTop =3645
                    LayoutCachedWidth =18570
                    LayoutCachedHeight =4215
                    RowStart =6
                    RowEnd =6
                    ColumnStart =4
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9720
                    Top =3645
                    Height =570
                    TabIndex =8
                    ForeColor =6710886
                    Name ="cmdUNDO"
                    Caption ="Command83"
                    OnClick ="[Event Procedure]"
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
                    LayoutCachedLeft =9720
                    LayoutCachedTop =3645
                    LayoutCachedWidth =11160
                    LayoutCachedHeight =4215
                    RowStart =6
                    RowEnd =6
                    ColumnStart =2
                    ColumnEnd =3
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
                    WebImagePaddingTop =14
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =13
                    Overlaps =1
                End
                Begin EmptyCell
                    Left =30
                    Top =3645
                    Width =8130
                    Height =570
                    Name ="EmptyCell92"
                    GroupTable =1
                    TopPadding =216
                    BottomPadding =216
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =3645
                    LayoutCachedWidth =8160
                    LayoutCachedHeight =4215
                    RowStart =6
                    RowEnd =6
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin Subform
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =30
                    Top =4470
                    Width =18540
                    Height =6540
                    TabIndex =9
                    BorderColor =10921638
                    Name ="Child93"
                    SourceObject ="Query.qryCHEMICALS_MOVE_DISPLAY"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =30
                    LayoutCachedTop =4470
                    LayoutCachedWidth =18570
                    LayoutCachedHeight =11010
                    RowStart =7
                    RowEnd =7
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =600
                    Width =8130
                    Height =516
                    FontSize =18
                    LeftMargin =44
                    TopMargin =22
                    RightMargin =44
                    BottomMargin =22
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label9"
                    Caption ="Line:"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =600
                    LayoutCachedWidth =8160
                    LayoutCachedHeight =1116
                    RowStart =1
                    RowEnd =1
                    LayoutGroup =1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =2880
                    Width =8130
                    Height =516
                    FontSize =18
                    LeftMargin =44
                    TopMargin =22
                    RightMargin =44
                    BottomMargin =22
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Line_Label"
                    Caption ="Transferred to:"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =2880
                    LayoutCachedWidth =8160
                    LayoutCachedHeight =3396
                    RowStart =5
                    RowEnd =5
                    LayoutGroup =1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =2310
                    Width =8130
                    Height =516
                    FontSize =18
                    LeftMargin =44
                    TopMargin =22
                    RightMargin =44
                    BottomMargin =22
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Col1_Label"
                    Caption ="Action Performed:"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =2310
                    LayoutCachedWidth =8160
                    LayoutCachedHeight =2826
                    RowStart =4
                    RowEnd =4
                    LayoutGroup =1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =1740
                    Width =8130
                    Height =516
                    FontSize =18
                    LeftMargin =44
                    TopMargin =22
                    RightMargin =44
                    BottomMargin =22
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label17"
                    Caption ="Amount of Chemical:"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =1740
                    LayoutCachedWidth =8160
                    LayoutCachedHeight =2256
                    RowStart =3
                    RowEnd =3
                    LayoutGroup =1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =1170
                    Width =8130
                    Height =516
                    FontSize =18
                    LeftMargin =44
                    TopMargin =22
                    RightMargin =44
                    BottomMargin =22
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="chemical_Label"
                    Caption ="Chemical:"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =1170
                    LayoutCachedWidth =8160
                    LayoutCachedHeight =1686
                    RowStart =2
                    RowEnd =2
                    LayoutGroup =1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =30
                    Width =8130
                    Height =516
                    FontSize =18
                    LeftMargin =44
                    TopMargin =22
                    RightMargin =44
                    BottomMargin =22
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="firstName_Label"
                    Caption ="Technician:"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =30
                    LayoutCachedWidth =8160
                    LayoutCachedHeight =546
                    LayoutGroup =1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =10500
                    Top =2880
                    Width =2160
                    Height =516
                    Name ="EmptyCell127"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =10500
                    LayoutCachedTop =2880
                    LayoutCachedWidth =12660
                    LayoutCachedHeight =3396
                    RowStart =5
                    RowEnd =5
                    ColumnStart =3
                    ColumnEnd =4
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =12720
                    Top =30
                    Width =5850
                    Height =3366
                    Name ="EmptyCell128"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =12720
                    LayoutCachedTop =30
                    LayoutCachedWidth =18570
                    LayoutCachedHeight =3396
                    RowEnd =5
                    ColumnStart =5
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =11220
                    Top =600
                    Height =516
                    Name ="EmptyCell129"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =11220
                    LayoutCachedTop =600
                    LayoutCachedWidth =12660
                    LayoutCachedHeight =1116
                    RowStart =1
                    RowEnd =1
                    ColumnStart =4
                    ColumnEnd =4
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

Private Sub cmbAction_AfterUpdate()
    If cmbAction.Value = 1 Then
        cmbLine_Final.Visible = True
        cmbLine_Final.SetFocus
    Else:
        cmbLine_Final.Visible = False
    End If
    
End Sub

Private Sub cmbCHEM_AfterUpdate()

    'jump to next field
    If IsNull(cmbLine) = False Then
        txtVolume.SetFocus
    End If
    
End Sub

Private Sub cmbLINE_AfterUpdate()

'Update line field with change in chemical
Dim strSQL As String
Dim lineID As Long

lineID = cmbLine.Value
cmbCHEM.RowSource = ""
cmbCHEM.Value = ""

If IsNull(lineID) = False Then

    On Error GoTo sqlError:
    strSQL = comboBoxLine(lineID)
    
    On Error GoTo err1:
    With Me!cmbCHEM
        .RowSource = strSQL
        .Requery
    End With
    
        'jump to next field
        cmbCHEM.SetFocus
    
    
Else:
    With Me!cmbLine
        .Requery
    End With
End If
    

'error handling
macro_exit:
    Exit Sub
    
err1:
    MsgBox "An unknown error occurred when executing the code after building the query."
    Resume macro_exit
    
sqlError:
    MsgBox "An unknown error occurred when executing the SQL."
    Resume macro_exit
    
End Sub

Private Sub cmbTECH_AfterUpdate()

    'jump to next field
    If IsNull(cmbTech) = False Then
        cmbLine.SetFocus
    End If
    
End Sub

Private Sub cmdENTER_Click()

Dim db As DAO.Database
Dim stSQL As String
Dim taskTable As String
Dim msgTitle1 As String
Dim SPCR As String

'numbers
Dim taskID As Long
Dim chemID As Long
Dim unit As Long
Dim tranLine As Long
Dim vol As Double

'booleans
Dim drain As Boolean
Dim added As Boolean
Dim transferred As Boolean

'enter values
Set db = CurrentDb
    
On Error GoTo lookupErr
    taskID = 22
    taskTable = DLookup("[tableRel]", "tblTASKLIST", "[ID] = " & taskID)

On Error GoTo Macro1_Err
    msgTitle1 = "Missing Info"
    SPCR = ", "

If IsNull(cmbTech) = True Then
        MsgBox "Enter the name of the technician completing the task.", vbOKOnly, msgTitle1
        cmbTech.SetFocus
    ElseIf IsNull(cmbCHEM) = True Then
        MsgBox "Enter the chemical that is being manipulated.", vbOKOnly, msgTitle1
        cmbCHEM.SetFocus
    ElseIf IsNull(cmbLine) = True Then
        MsgBox "Enter the line of chemical's location. If chemical is being transferred to a different line, enter the original location here.", vbOKOnly, msgTitle1
        cmbLine.SetFocus
    ElseIf (IsNull(txtVolume) = True) Or (IsNumeric(txtVolume) = False) Then
        MsgBox "Enter the amount of chemical (in volume) being moved.", vbOKOnly, msgTitle1
        txtVolume.SetFocus
    ElseIf (IsNull(cmbUnit) = True) Then
        MsgBox "Enter the amount of chemical (in volume) being moved.", vbOKOnly, msgTitle1
        txtVolume.SetFocus
    ElseIf (IsNull(cmbAction) = True) Then
        MsgBox "Enter the action being performed on the chemical.", vbOKOnly, msgTitle1
        cmbAction.SetFocus
    ElseIf (cmbAction.Value = 1) And ((IsNull(cmbLine_Final) = True) Or IsNumeric(cmbLine_Final) = False) Then 'if transferred is selected as an action, then check if value was entered
        MsgBox "Enter the location of chemical after the transfer.", vbOKOnly, msgTitle1
        cmbLine_Final.SetFocus
    Else:
        chemID = CLng(cmbCHEM.Value)
        vol = CDbl(txtVolume.Value)
        unit = cmbUnit.Value
        tranLine = Nz(cmbLine_Final.Value, 0)
        
        With cmbAction 'assign checked box values
        If .Value = 1 Then
                transferred = True
                drain = False
                added = False
            ElseIf .Value = 2 Then
                transferred = False
                drain = False
                added = True
            ElseIf .Value = 3 Then
                transferred = False
                drain = True
                added = False
        End If
        End With
        
        'unit corrections to convert values to gallons
        If unit = 2 Then 'if reported in liters
            vol = Round(vol * 0.264172, 3)
        ElseIf unit = 3 Then 'if reported in milliliters
            vol = Round(vol * 0.000264172, 3)
        End If
        
        'enter record into table
        stSQL = "Insert into " & taskTable & " (techName, chemical, line, volume, movedline, transferred, drained, added) " & _
            "Values (" & cmbTech.Value & SPCR & chemID & SPCR & cmbLine.Value & SPCR & vol & SPCR & tranLine & SPCR & transferred & SPCR & drain & SPCR & added & ");"
            
        db.Execute stSQL, dbFailOnError
        Child93.Requery
        Call cmdUndo_Click 'clear fields
        
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

End Sub

Private Sub cmdUndo_Click()
    
    'clear boxes
    With Me
        !cmbTech = Null
        !cmbLine = Null
        !cmbCHEM = Null
        !cmbCHEM.RowSource = ""
        !txtVolume = Null
        !cmbUnit.Value = 1
        !cmbAction = Null
        !cmbLine_Final = Null
        !cmbLine_Final.Visible = False
        !cmbTech.SetFocus
    End With

End Sub

Private Sub txtVolume_AfterUpdate()
    'jump to next field
    If (IsNull(cmbUnit) = True) Then
        cmbUnit.SetFocus
    Else:
        cmbAction.SetFocus
    End If
End Sub

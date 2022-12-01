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
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =13508
    DatasheetFontHeight =11
    ItemSuffix =252
    Left =7470
    Top =960
    Right =27330
    Bottom =12600
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0xb30405b6936be540
    End
    Caption ="Edit Parts"
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
            Height =9825
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7755
                    Top =180
                    Width =4208
                    Height =518
                    ColumnWidth =2208
                    FontSize =18
                    TabIndex =1
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtPart"
                    AfterUpdate ="[Event Procedure]"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =7755
                    LayoutCachedTop =180
                    LayoutCachedWidth =11963
                    LayoutCachedHeight =698
                    ColumnStart =3
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
                            Left =4995
                            Top =180
                            Width =2700
                            Height =518
                            FontSize =18
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label3"
                            Caption ="Part Number:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =4995
                            LayoutCachedTop =180
                            LayoutCachedWidth =7695
                            LayoutCachedHeight =698
                            ColumnStart =1
                            ColumnEnd =2
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
                    Left =7755
                    Top =2895
                    Width =4208
                    Height =570
                    ColumnWidth =2520
                    FontSize =18
                    TabIndex =5
                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                    Name ="cmbUse"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tblPART_TYPES.ID, tblPART_TYPES.partType FROM tblPART_TYPES ORDER BY tblP"
                        "ART_TYPES.partType; "
                    ColumnWidths ="0;1440"
                    AfterUpdate ="[Event Procedure]"
                    GroupTable =1
                    GridlineColor =10921638
                    AllowValueListEdits =0
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =7755
                    LayoutCachedTop =2895
                    LayoutCachedWidth =11963
                    LayoutCachedHeight =3465
                    RowStart =4
                    RowEnd =4
                    ColumnStart =3
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
                            Left =4995
                            Top =2895
                            Width =2700
                            Height =570
                            FontSize =18
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label15"
                            Caption ="Part Useage:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =4995
                            LayoutCachedTop =2895
                            LayoutCachedWidth =7695
                            LayoutCachedHeight =3465
                            RowStart =4
                            RowEnd =4
                            ColumnStart =1
                            ColumnEnd =2
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7755
                    Top =6030
                    Width =4208
                    Height =2220
                    ColumnWidth =3408
                    FontSize =18
                    TabIndex =10
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="nrNotes"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =7755
                    LayoutCachedTop =6030
                    LayoutCachedWidth =11963
                    LayoutCachedHeight =8250
                    RowStart =9
                    RowEnd =9
                    ColumnStart =3
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
                            Left =4995
                            Top =6030
                            Width =2700
                            Height =2220
                            FontSize =18
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label24"
                            Caption ="Notes:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =4995
                            LayoutCachedTop =6030
                            LayoutCachedWidth =7695
                            LayoutCachedHeight =8250
                            RowStart =9
                            RowEnd =9
                            ColumnStart =1
                            ColumnEnd =2
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
                    Left =7755
                    Top =765
                    Width =1635
                    Height =509
                    FontSize =18
                    TabIndex =2
                    ColumnInfo ="\"\";\"\";\"Rev\";\"\";\"10\";\"510\""
                    Name ="cmbRev"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT refREV.ID, refREV.rev FROM refREV ORDER BY refREV.rev; "
                    ColumnWidths ="0;1440"
                    GroupTable =1
                    GridlineColor =10921638
                    AllowValueListEdits =0
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =7755
                    LayoutCachedTop =765
                    LayoutCachedWidth =9390
                    LayoutCachedHeight =1274
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
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
                            Left =4995
                            Top =765
                            Width =2700
                            Height =509
                            FontSize =18
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label6"
                            Caption ="Rev:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =4995
                            LayoutCachedTop =765
                            LayoutCachedWidth =7695
                            LayoutCachedHeight =1274
                            RowStart =1
                            RowEnd =1
                            ColumnStart =1
                            ColumnEnd =2
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6915
                    Top =8640
                    Width =2475
                    Height =435
                    FontSize =18
                    TabIndex =11
                    ForeColor =6710886
                    Name ="Command46"
                    Caption ="Command46"
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
                    LayoutCachedLeft =6915
                    LayoutCachedTop =8640
                    LayoutCachedWidth =9390
                    LayoutCachedHeight =9075
                    RowStart =10
                    RowEnd =10
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
                    WebImagePaddingTop =24
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =3
                    ListRows =12
                    Left =7755
                    Top =5400
                    Width =5715
                    Height =570
                    FontSize =18
                    TabIndex =9
                    ColumnInfo ="\"\";\"\";\"\";\"\";\"\";\"\";\"10\";\"510\""
                    Name ="cbLink"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber, qryPARTNUM_ALL.rev FROM"
                        " qryPARTNUM_ALL ORDER BY qryPARTNUM_ALL.partNumber, qryPARTNUM_ALL.rev; "
                    ColumnWidths ="0;4104;360"
                    GroupTable =1
                    GridlineColor =10921638
                    AllowValueListEdits =0
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =7755
                    LayoutCachedTop =5400
                    LayoutCachedWidth =13470
                    LayoutCachedHeight =5970
                    RowStart =8
                    RowEnd =8
                    ColumnStart =3
                    ColumnEnd =6
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
                    Left =4995
                    Top =5400
                    Width =2700
                    Height =570
                    FontSize =18
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label65"
                    Caption ="Linked ID:"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =4995
                    LayoutCachedTop =5400
                    LayoutCachedWidth =7695
                    LayoutCachedHeight =5970
                    RowStart =8
                    RowEnd =8
                    ColumnStart =1
                    ColumnEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin ComboBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    ColumnCount =2
                    Left =7755
                    Top =3525
                    Width =4208
                    Height =570
                    FontSize =18
                    TabIndex =6
                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                    Name ="cbSub"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tblSUBCATEGORY.ID, tblSUBCATEGORY.category, tblSUBCATEGORY.partTypeID FRO"
                        "M tblSUBCATEGORY WHERE (((tblSUBCATEGORY.partTypeID)=2)) ORDER BY tblSUBCATEGORY"
                        ".category; "
                    ColumnWidths ="0;1440"
                    GroupTable =1
                    GridlineColor =10921638
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =7755
                    LayoutCachedTop =3525
                    LayoutCachedWidth =11963
                    LayoutCachedHeight =4095
                    RowStart =5
                    RowEnd =5
                    ColumnStart =3
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
                            Left =4995
                            Top =3525
                            Width =2700
                            Height =570
                            FontSize =18
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label82"
                            Caption ="Subcategory:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =4995
                            LayoutCachedTop =3525
                            LayoutCachedWidth =7695
                            LayoutCachedHeight =4095
                            RowStart =5
                            RowEnd =5
                            ColumnStart =1
                            ColumnEnd =2
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
                    Left =7755
                    Top =4155
                    Width =4208
                    Height =570
                    FontSize =18
                    TabIndex =7
                    ColumnInfo ="\"\";\"\";\"Location\";\"\";\"10\";\"510\""
                    Name ="cmbLocation"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tblPART_STORAGE.ID, tblPART_STORAGE.locName FROM tblPART_STORAGE ORDER BY"
                        " tblPART_STORAGE.locName; "
                    ColumnWidths ="0;1440"
                    DefaultValue ="12"
                    GroupTable =1
                    GridlineColor =10921638
                    AllowValueListEdits =0
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =7755
                    LayoutCachedTop =4155
                    LayoutCachedWidth =11963
                    LayoutCachedHeight =4725
                    RowStart =6
                    RowEnd =6
                    ColumnStart =3
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
                            Left =4995
                            Top =4155
                            Width =2700
                            Height =570
                            FontSize =18
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label97"
                            Caption ="Location:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =4995
                            LayoutCachedTop =4155
                            LayoutCachedWidth =7695
                            LayoutCachedHeight =4725
                            RowStart =6
                            RowEnd =6
                            ColumnStart =1
                            ColumnEnd =2
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin ToggleButton
                    OverlapFlags =85
                    Left =7755
                    Top =1485
                    Width =2895
                    Height =570
                    FontSize =18
                    FontWeight =400
                    TabIndex =3
                    ForeColor =2500134
                    Name ="tglRD"
                    DefaultValue ="False"
                    Caption ="Not R && D"
                    FontName ="Calibri"
                    OnMouseMove ="[Event Procedure]"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="This is a part number being used for research and development purposes."
                    GroupTable =1
                    TopPadding =174
                    GridlineColor =10921638

                    LayoutCachedLeft =7755
                    LayoutCachedTop =1485
                    LayoutCachedWidth =10650
                    LayoutCachedHeight =2055
                    RowStart =2
                    RowEnd =2
                    ColumnStart =3
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
                    GroupTable =1
                    WebImagePaddingLeft =1
                    WebImagePaddingTop =12
                    WebImagePaddingRight =1
                    Overlaps =1
                End
                Begin ToggleButton
                    OverlapFlags =85
                    Left =7755
                    Top =2115
                    Width =2895
                    Height =570
                    FontSize =18
                    FontWeight =400
                    TabIndex =4
                    ForeColor =2500134
                    Name ="tglOb"
                    Caption ="Not Obsolete"
                    FontName ="Calibri"
                    OnMouseMove ="[Event Procedure]"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="This part number is for reference only but is no longer used"
                    GroupTable =1
                    BottomPadding =174
                    GridlineColor =10921638

                    LayoutCachedLeft =7755
                    LayoutCachedTop =2115
                    LayoutCachedWidth =10650
                    LayoutCachedHeight =2685
                    RowStart =3
                    RowEnd =3
                    ColumnStart =3
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
                    GroupTable =1
                    WebImagePaddingLeft =1
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =10
                    Overlaps =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =4995
                            Top =2115
                            Width =2700
                            Height =570
                            FontSize =18
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label9"
                            Caption ="Obsolete?"
                            GroupTable =1
                            BottomPadding =174
                            GridlineColor =10921638
                            LayoutCachedLeft =4995
                            LayoutCachedTop =2115
                            LayoutCachedWidth =7695
                            LayoutCachedHeight =2685
                            RowStart =3
                            RowEnd =3
                            ColumnStart =1
                            ColumnEnd =2
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
                    Left =4995
                    Top =1485
                    Width =2700
                    Height =570
                    FontSize =18
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label12"
                    Caption ="R && D?"
                    GroupTable =1
                    TopPadding =174
                    GridlineColor =10921638
                    LayoutCachedLeft =4995
                    LayoutCachedTop =1485
                    LayoutCachedWidth =7695
                    LayoutCachedHeight =2055
                    RowStart =2
                    RowEnd =2
                    ColumnStart =1
                    ColumnEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =10710
                    Top =1485
                    Width =2760
                    Height =1200
                    Name ="EmptyCell126"
                    GroupTable =1
                    TopPadding =174
                    BottomPadding =174
                    GridlineColor =10921638
                    LayoutCachedLeft =10710
                    LayoutCachedTop =1485
                    LayoutCachedWidth =13470
                    LayoutCachedHeight =2685
                    RowStart =2
                    RowEnd =3
                    ColumnStart =5
                    ColumnEnd =6
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =9450
                    Top =765
                    Width =4020
                    Height =509
                    Name ="EmptyCell130"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =9450
                    LayoutCachedTop =765
                    LayoutCachedWidth =13470
                    LayoutCachedHeight =1274
                    RowStart =1
                    RowEnd =1
                    ColumnStart =4
                    ColumnEnd =6
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6915
                    Top =9135
                    Width =2475
                    Height =435
                    TabIndex =12
                    ForeColor =6710886
                    Name ="cmdUndo"
                    Caption ="Undo"
                    OnClick ="[Event Procedure]"
                    GroupTable =1
                    BottomPadding =150
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
                    LayoutCachedLeft =6915
                    LayoutCachedTop =9135
                    LayoutCachedWidth =9390
                    LayoutCachedHeight =9570
                    RowStart =11
                    RowEnd =11
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
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =9
                    Overlaps =1
                End
                Begin EmptyCell
                    Left =4995
                    Top =8640
                    Width =1860
                    Height =930
                    Name ="EmptyCell141"
                    GroupTable =1
                    TopPadding =360
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =4995
                    LayoutCachedTop =8640
                    LayoutCachedWidth =6855
                    LayoutCachedHeight =9570
                    RowStart =10
                    RowEnd =11
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =7755
                    Top =4785
                    Width =4208
                    Height =555
                    FontSize =18
                    TabIndex =8
                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                    Name ="new156Num"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber FROM qryPARTNUM_ALL WHER"
                        "E (((qryPARTNUM_ALL.tbl)=\"tblPART_156\")); "
                    ColumnWidths ="0;1440"
                    InputMask ="\"156-56379-\"0000000;0;_"
                    GroupTable =1
                    GridlineColor =10921638
                    AllowValueListEdits =0
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =7755
                    LayoutCachedTop =4785
                    LayoutCachedWidth =11963
                    LayoutCachedHeight =5340
                    RowStart =7
                    RowEnd =7
                    ColumnStart =3
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
                            Left =4995
                            Top =4785
                            Width =2700
                            Height =555
                            FontSize =18
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label173"
                            Caption ="New Number:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =4995
                            LayoutCachedTop =4785
                            LayoutCachedWidth =7695
                            LayoutCachedHeight =5340
                            RowStart =7
                            RowEnd =7
                            ColumnStart =1
                            ColumnEnd =2
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin ListBox
                    OverlapFlags =85
                    BorderWidth =1
                    IMESentenceMode =3
                    ColumnCount =3
                    Left =180
                    Top =180
                    Width =4755
                    Height =9390
                    FontSize =16
                    BackColor =15921906
                    ForeColor =3355443
                    Name ="List189"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT qryPARTNUM_ALL.uniqID, qryPARTNUM_ALL.partNumber, qryPARTNUM_ALL.rev FROM"
                        " qryPARTNUM_ALL ORDER BY qryPARTNUM_ALL.partNumber; "
                    ColumnWidths ="0;3312;1080"
                    AfterUpdate ="[Event Procedure]"
                    OnDblClick ="[Event Procedure]"
                    GroupTable =1
                    BottomPadding =150

                    LayoutCachedLeft =180
                    LayoutCachedTop =180
                    LayoutCachedWidth =4935
                    LayoutCachedHeight =9570
                    RowEnd =11
                    LayoutGroup =1
                    BackShade =95.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    GridlineThemeColorIndex =5
                    GridlineShade =100.0
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =9450
                    Top =8640
                    Width =4020
                    Height =930
                    Name ="EmptyCell228"
                    GroupTable =1
                    TopPadding =360
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =9450
                    LayoutCachedTop =8640
                    LayoutCachedWidth =13470
                    LayoutCachedHeight =9570
                    RowStart =10
                    RowEnd =11
                    ColumnStart =4
                    ColumnEnd =6
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =12030
                    Top =180
                    Height =518
                    Name ="EmptyCell240"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =12030
                    LayoutCachedTop =180
                    LayoutCachedWidth =13470
                    LayoutCachedHeight =698
                    ColumnStart =6
                    ColumnEnd =6
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =12030
                    Top =2895
                    Height =2445
                    Name ="EmptyCell247"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =12030
                    LayoutCachedTop =2895
                    LayoutCachedWidth =13470
                    LayoutCachedHeight =5340
                    RowStart =4
                    RowEnd =7
                    ColumnStart =6
                    ColumnEnd =6
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =12030
                    Top =6030
                    Height =2220
                    Name ="EmptyCell249"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =12030
                    LayoutCachedTop =6030
                    LayoutCachedWidth =13470
                    LayoutCachedHeight =8250
                    RowStart =9
                    RowEnd =9
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

Private Sub cmdUndo_Click()
    Call List189_AfterUpdate
    
End Sub

Private Sub List189_AfterUpdate()
Dim db As DAO.Database
Dim rs As DAO.Recordset
Dim sTbl As String
Dim sSub As Long
Dim s3 As String
Dim sCol As String
Dim partID As String
Dim bRD As Boolean
Dim bObs As Boolean

    Call clearFie
    partID = Nz(List189, 0)


Set db = CurrentDb

If (IsNull(partID) = False) Then

    s3 = Left(partID, 1)
    If (s3 = "A") Then
        sTbl = "tblPART_01"
    ElseIf (s3 = "B") Then
        sTbl = "tblPART_07"
    ElseIf (s3 = "C") Then
        sTbl = "tblPART_156"
    End If
    partID = Right(partID, Len(partID) - 1)
    
    Set rs = db.OpenRecordset(sTbl)

    With rs
        .MoveFirst
        Do While Not .EOF
            If !autoID = CLng(partID) Then
                'pull boolean information
                    bRD = ![R&D]
                    bObs = !obsolete
                    sSub = Nz(!subcategory, 0)
                
                'Pull table information
                    txtPART = !partNumber
                    cmbRev = !rev
                    cmbUse = !partUseage
                    
                    
                    With cbSub
                        If (sSub <> 0) Then
                            .Enabled = True
                            Call subcategoryFilter(Me.Controls!cbSub, Me.Controls!cmbUse)
                        Else:
                            .Enabled = False
                            .Value = ""
                        End If
                    End With
                    
                    cmbLocation = !Location
                    
                    If (s3 = "A") Or (s3 = "B") Then
                        new156Num.Enabled = True
                        new156Num = !newNumber
                    Else:
                        new156Num.Enabled = False
                    End If
                        
                    cbLink = !linkedID
                    nrNotes = !Notes
                    
                    'adjust toggle buttons
                    tglRD = bRD
                    Call tglCapt(Me.tglRD, 1)
                    tglOb = bObs
                    Call tglCapt(Me.tglOb, 2)
                    
                    Exit Do
            End If
            .MoveNext
        Loop
        .Close
    End With
End If
    db.Close
End Sub

Private Sub List189_DblClick(Cancel As Integer)
Dim searchID As Long

    searchID = CLng(Nz(List189, 0))
    
    If (MsgBox("Do you want to make a duplicate entry for a new revision?", vbYesNo + vbDefaultButton2) = vbYes) Then
        DoCmd.OpenForm "fmPART_NEW", acNormal, , , acFormAdd, acDialog, searchID
    End If
End Sub

Private Sub tglOb_Click()
    Call tglCapt(Me.ActiveControl, 2)
End Sub

Private Sub tglOb_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub tglRD_Click()
    Call tglCapt(Me.ActiveControl, 1)
End Sub

Private Sub tglRD_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub cmbUse_AfterUpdate()
    Call subcategoryFilter(Me.Controls!cbSub, Me.Controls!cmbUse)
    
End Sub

Private Sub Command46_Click()
On Error GoTo Macro1_Err

Dim sTbl As String
Dim s3 As String
Dim partNum As String
Dim partID As String
Dim sNotes As String
Dim sP As String
Dim sN As String
Dim sLink As String
Dim stSQL As String
Dim lSub As Long
Dim bObs As Boolean
Dim bRnD As Boolean

sP = ", "
sN = "Null"
sNotes = sqlStr(nrNotes)

    'pull values
    partID = Nz(List189)
    
    s3 = Left(partID, 1)
    If (s3 = "A") Then
        sTbl = "tblPART_01"
    ElseIf (s3 = "B") Then
        sTbl = "tblPART_07"
    ElseIf (s3 = "C") Then
        sTbl = "tblPART_156"
    End If
    partID = Right(partID, Len(partID) - 1)

    'checks that a part is highlighted in the list
    If (partID <> "") And (List189.ItemsSelected.Count <> 0) Then
        partNum = sqlStr(txtPART)
        
        bObs = CStr(tglOb.Value)
        bRnD = CStr(tglRD.Value)
        sLink = sqlStr(cbLink)
        
        If (cbSub.Enabled = True And IsNull(cbSub) = False) Then
            lSub = cbSub.Value
        Else:
            lSub = 0
        End If
    
        'update EP table
        stSQL = "Update " & sTbl & vbCr & _
                " SET [partNumber] = " & partNum & sP & _
                    "[Rev] = " & Nz(cmbRev, 1) & sP & _
                    "[newNumber] = " & Nz(new156Num, sN) & sP & _
                    "[partUseage] = " & Nz(cmbUse, sN) & sP & _
                    "[linkedID] = " & sLink & sP & _
                    "[creationDate] = " & "#" & Date & "#, " & _
                    "[notes] = " & sNotes & sP & _
                    "[location] = " & Nz(cmbLocation, sN) & sP & _
                    "[obsolete] = " & bObs & sP & _
                    "[r&D] = " & bRnD & sP & _
                    "[subcategory] = " & lSub & vbCr & _
                " WHERE [autoID] = " & partID & ";"
         CurrentDb.Execute stSQL, dbFailOnError
         MsgBox "Successfully updated!"
    End If
    
    List189.Requery
    

    
Macro1_Exit:
    Exit Sub

Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit
    
End Sub


Sub clearFie()

    With txtPART
        .Value = Null
        .SetFocus
    End With
    
    With cbSub
        .Value = Null
        .Enabled = False
    End With
    
    With tglOb
        .Value = False
        Call tglCapt(Me.tglOb, 2)
    End With
            
    With tglRD
        .Value = False
        Call tglCapt(Me.tglRD, 1)
    End With
    
    cmbRev = Null
    cmbUse = Null
    cmbLocation = Null
    cbLink = Null
    nrNotes = Null
    new156Num = Null
    new156Num.Enabled = False
        
End Sub

Private Sub Form_Load()
    Call clearFie

End Sub

Private Sub txtPart_AfterUpdate()
Dim sText As String

'activates "new number" field (only available for old 01- and 07- numbers) if first three numbers are NOT 156
If (IsNull(txtPART) = False) Then
    If (Left(Me.ActiveControl, 3) = "156") Then
        new156Num.Enabled = False
    Else:
        new156Num.Enabled = True
    End If
End If

End Sub

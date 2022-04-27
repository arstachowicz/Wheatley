Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =9768
    DatasheetFontHeight =11
    ItemSuffix =34
    Right =14328
    Bottom =10632
    RecSrcDt = Begin
        0x01f89381f00de540
    End
    RecordSource ="tblLOCATIONS"
    DatasheetFontName ="Calibri"
    AllowDatasheetView =0
    FilterOnLoad =0
    ShowPageMargins =0
    DisplayOnSharePointSite =1
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
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
            Height =5046
            Name ="Detail"
            AutoHeight =1
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Subform
                    OverlapFlags =85
                    Left =5328
                    Top =360
                    Width =4404
                    Height =4536
                    BorderColor =10921638
                    Name ="Child10"
                    SourceObject ="Table.tblLOCATIONS"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =5328
                    LayoutCachedTop =360
                    LayoutCachedWidth =9732
                    LayoutCachedHeight =4896
                    RowEnd =2
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =4656
                    Top =1032
                    Width =600
                    Height =480
                    Name ="EmptyCell16"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =4656
                    LayoutCachedTop =1032
                    LayoutCachedWidth =5256
                    LayoutCachedHeight =1512
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =4656
                    Top =360
                    Width =600
                    Height =479
                    Name ="EmptyCell26"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =4656
                    LayoutCachedTop =360
                    LayoutCachedWidth =5256
                    LayoutCachedHeight =839
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =2
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2016
                    Top =360
                    Width =1290
                    Height =479
                    FontSize =18
                    TabIndex =1
                    BorderColor =10921638
                    ColumnInfo ="\"\";\"\";\"Line\";\"\";\"3\";\"2\""
                    Name ="LINEID"
                    ControlSource ="LINEID"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tblLINES.ID, tblLINES.Line FROM tblLINES ORDER BY tblLINES.Line; "
                    ColumnWidths ="0;1440"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =2016
                    LayoutCachedTop =360
                    LayoutCachedWidth =3306
                    LayoutCachedHeight =839
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    ForeThemeColorIndex =0
                    ForeTint =75.0
                    ForeShade =100.0
                    GroupTable =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =360
                            Top =360
                            Width =1584
                            Height =479
                            FontSize =18
                            LeftMargin =44
                            TopMargin =22
                            RightMargin =44
                            BottomMargin =22
                            BorderColor =8355711
                            ForeColor =5855577
                            Name ="Label0"
                            Caption ="Line: "
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =360
                            LayoutCachedTop =360
                            LayoutCachedWidth =1944
                            LayoutCachedHeight =839
                            LayoutGroup =1
                            ForeTint =65.0
                            GroupTable =1
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2016
                    Top =1032
                    Width =2580
                    Height =480
                    FontSize =18
                    TabIndex =2
                    BorderColor =10921638
                    ColumnInfo ="\"\";\"\";\"Chemical Name\";\"\";\"10\";\"510\""
                    Name ="CHEMID"
                    ControlSource ="CHEMID"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tblCHEMICALS.ID, tblCHEMICALS.chemical FROM tblCHEMICALS ORDER BY tblCHEM"
                        "ICALS.chemical; "
                    ColumnWidths ="0;1440"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =2016
                    LayoutCachedTop =1032
                    LayoutCachedWidth =4596
                    LayoutCachedHeight =1512
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =2
                    LayoutGroup =1
                    ForeThemeColorIndex =0
                    ForeTint =75.0
                    ForeShade =100.0
                    GroupTable =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            Left =360
                            Top =1032
                            Width =1584
                            Height =480
                            FontSize =18
                            LeftMargin =44
                            TopMargin =22
                            RightMargin =44
                            BottomMargin =22
                            BorderColor =8355711
                            ForeColor =5855577
                            Name ="Label3"
                            Caption ="Chemical: "
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =360
                            LayoutCachedTop =1032
                            LayoutCachedWidth =1944
                            LayoutCachedHeight =1512
                            RowStart =1
                            RowEnd =1
                            LayoutGroup =1
                            ForeTint =65.0
                            GroupTable =1
                        End
                    End
                End
                Begin EmptyCell
                    Left =360
                    Top =1692
                    Width =1584
                    Height =3204
                    Name ="EmptyCell29"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =360
                    LayoutCachedTop =1692
                    LayoutCachedWidth =1944
                    LayoutCachedHeight =4896
                    RowStart =2
                    RowEnd =2
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =2016
                    Top =1692
                    Width =2580
                    Height =3204
                    Name ="EmptyCell30"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =2016
                    LayoutCachedTop =1692
                    LayoutCachedWidth =4596
                    LayoutCachedHeight =4896
                    RowStart =2
                    RowEnd =2
                    ColumnStart =1
                    ColumnEnd =2
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =4656
                    Top =1692
                    Width =600
                    Height =3204
                    Name ="EmptyCell31"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =4656
                    LayoutCachedTop =1692
                    LayoutCachedWidth =5256
                    LayoutCachedHeight =4896
                    RowStart =2
                    RowEnd =2
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =3372
                    Top =360
                    Width =1224
                    Height =479
                    Name ="EmptyCell33"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =3372
                    LayoutCachedTop =360
                    LayoutCachedWidth =4596
                    LayoutCachedHeight =839
                    ColumnStart =2
                    ColumnEnd =2
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

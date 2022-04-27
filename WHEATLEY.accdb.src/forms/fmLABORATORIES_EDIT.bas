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
    Width =13368
    DatasheetFontHeight =11
    ItemSuffix =140
    Right =13824
    Bottom =10704
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0xa94e7d34ccdbe440
    End
    RecordSource ="tblLABORATORIES"
    Caption ="Laboratories"
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
            Height =7782
            Name ="Detail"
            AutoHeight =1
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7368
                    Top =708
                    Width =5964
                    Height =480
                    ColumnWidth =1356
                    FontSize =16
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="nameLab"
                    ControlSource ="nameLab"
                    StatusBarText ="Name of the laboratory"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =7368
                    LayoutCachedTop =708
                    LayoutCachedWidth =13332
                    LayoutCachedHeight =1188
                    RowStart =1
                    RowEnd =1
                    ColumnStart =4
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
                            Left =4848
                            Top =708
                            Width =2448
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label0"
                            Caption ="Laboratory:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =4848
                            LayoutCachedTop =708
                            LayoutCachedWidth =7296
                            LayoutCachedHeight =1188
                            RowStart =1
                            RowEnd =1
                            ColumnStart =3
                            ColumnEnd =3
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
                    Left =7368
                    Top =1260
                    Width =5964
                    Height =492
                    ColumnWidth =2076
                    FontSize =16
                    TabIndex =2
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="website"
                    ControlSource ="website"
                    StatusBarText ="The main website of the laboratory"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =7368
                    LayoutCachedTop =1260
                    LayoutCachedWidth =13332
                    LayoutCachedHeight =1752
                    RowStart =2
                    RowEnd =2
                    ColumnStart =4
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
                            Left =4848
                            Top =1260
                            Width =2448
                            Height =492
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label3"
                            Caption ="Website:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =4848
                            LayoutCachedTop =1260
                            LayoutCachedWidth =7296
                            LayoutCachedHeight =1752
                            RowStart =2
                            RowEnd =2
                            ColumnStart =3
                            ColumnEnd =3
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin ListBox
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    BorderWidth =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =7368
                    Top =1812
                    Width =5964
                    Height =4968
                    ColumnWidth =1848
                    FontSize =14
                    TabIndex =3
                    BackColor =15921906
                    ForeColor =3355443
                    Name ="testingAvailable"
                    ControlSource ="testingAvailable"
                    RowSourceType ="Value List"
                    RowSource ="1;\"AAS\";2;\"ESCA/XPS\";3;\"SEM\";4;\"Water Testing\";5;\"Auger\";6;\"GC-MS\";7"
                        ";\"Ion Chromatography\";8;\"EDS\";9;\"FTIR\";10;\"Outgassing\";11;\"Critical Pit"
                        "ting Temperature\""
                    ColumnWidths ="0;1440"
                    StatusBarText ="The type of tests the laboratory provides"
                    GroupTable =1

                    LayoutCachedLeft =7368
                    LayoutCachedTop =1812
                    LayoutCachedWidth =13332
                    LayoutCachedHeight =6780
                    RowStart =3
                    RowEnd =3
                    ColumnStart =4
                    ColumnEnd =5
                    LayoutGroup =1
                    BackShade =95.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    GridlineThemeColorIndex =5
                    GridlineShade =100.0
                    GroupTable =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =4848
                            Top =1812
                            Width =2448
                            Height =4968
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label6"
                            Caption ="Available Testing:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =4848
                            LayoutCachedTop =1812
                            LayoutCachedWidth =7296
                            LayoutCachedHeight =6780
                            RowStart =3
                            RowEnd =3
                            ColumnStart =3
                            ColumnEnd =3
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
                    Left =7368
                    Top =6852
                    Width =5964
                    Height =480
                    ColumnWidth =3192
                    FontSize =16
                    TabIndex =4
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="emailContact"
                    ControlSource ="emailContact"
                    StatusBarText ="The email address of the main contact"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =7368
                    LayoutCachedTop =6852
                    LayoutCachedWidth =13332
                    LayoutCachedHeight =7332
                    RowStart =4
                    RowEnd =4
                    ColumnStart =4
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
                            Left =4848
                            Top =6852
                            Width =2448
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label9"
                            Caption ="Email Address:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =4848
                            LayoutCachedTop =6852
                            LayoutCachedWidth =7296
                            LayoutCachedHeight =7332
                            RowStart =4
                            RowEnd =4
                            ColumnStart =3
                            ColumnEnd =3
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin EmptyCell
                    Left =4848
                    Top =7392
                    Width =2448
                    Name ="EmptyCell84"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =4848
                    LayoutCachedTop =7392
                    LayoutCachedWidth =7296
                    LayoutCachedHeight =7632
                    RowStart =5
                    RowEnd =5
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =7368
                    Top =7392
                    Width =5964
                    Name ="EmptyCell85"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =7368
                    LayoutCachedTop =7392
                    LayoutCachedWidth =13332
                    LayoutCachedHeight =7632
                    RowStart =5
                    RowEnd =5
                    ColumnStart =4
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin ListBox
                    OverlapFlags =85
                    BorderWidth =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =36
                    Top =708
                    Width =4296
                    Height =6924
                    FontSize =14
                    TabIndex =1
                    BackColor =15921906
                    ForeColor =3355443
                    Name ="List115"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tblLABORATORIES.ID, tblLABORATORIES.nameLab FROM tblLABORATORIES ORDER BY"
                        " tblLABORATORIES.nameLab; "
                    ColumnWidths ="0;1440"
                    GroupTable =1
                    BottomPadding =150
                    AfterUpdateEmMacro = Begin
                        Version =196611
                        ColumnsShown =0
                        Begin
                            Action ="SearchForRecord"
                            Argument ="-1"
                            Argument =""
                            Argument ="2"
                            Argument ="=\"[ID] = \" & Str(Nz([Screen].[ActiveControl],0))"
                        End
                        Begin
                            Comment ="_AXL:<?xml version=\"1.0\" encoding=\"UTF-16\" standalone=\"no\"?>\015\012<UserI"
                                "nterfaceMacro For=\"List115\" Event=\"AfterUpdate\" xmlns=\"http://schemas.micro"
                                "soft.com/office/accessservices/2009/11/application\"><Statements><Action Name=\""
                                "SearchForRecord\"><Argument Name="
                        End
                        Begin
                            Comment ="_AXL:\"WhereCondition\">=\"[ID] = \" &amp; Str(Nz([Screen].[ActiveControl],0))</"
                                "Argument></Action></Statements></UserInterfaceMacro>"
                        End
                    End
                    AllowValueListEdits =0

                    LayoutCachedLeft =36
                    LayoutCachedTop =708
                    LayoutCachedWidth =4332
                    LayoutCachedHeight =7632
                    RowStart =1
                    RowEnd =5
                    ColumnEnd =1
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
                    Left =4392
                    Top =708
                    Width =396
                    Height =6924
                    Name ="EmptyCell127"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =4392
                    LayoutCachedTop =708
                    LayoutCachedWidth =4788
                    LayoutCachedHeight =7632
                    RowStart =1
                    RowEnd =5
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =36
                    Top =60
                    Width =576
                    Height =461
                    Name ="EmptyCell133"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =36
                    LayoutCachedTop =60
                    LayoutCachedWidth =612
                    LayoutCachedHeight =521
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =684
                    Top =60
                    Width =3648
                    Height =461
                    Name ="EmptyCell134"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =684
                    LayoutCachedTop =60
                    LayoutCachedWidth =4332
                    LayoutCachedHeight =521
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =4392
                    Top =60
                    Width =396
                    Height =461
                    Name ="EmptyCell135"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =4392
                    LayoutCachedTop =60
                    LayoutCachedWidth =4788
                    LayoutCachedHeight =521
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =10416
                    Top =60
                    Width =2916
                    Height =461
                    Name ="EmptyCell138"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =10416
                    LayoutCachedTop =60
                    LayoutCachedWidth =13332
                    LayoutCachedHeight =521
                    ColumnStart =5
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =4848
                    Top =60
                    Width =5508
                    Height =461
                    FontSize =16
                    FontWeight =700
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label139"
                    Caption ="View/Edit"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =4848
                    LayoutCachedTop =60
                    LayoutCachedWidth =10356
                    LayoutCachedHeight =521
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

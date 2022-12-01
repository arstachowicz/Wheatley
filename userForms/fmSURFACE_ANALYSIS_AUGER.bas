Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    DataEntry = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =18788
    DatasheetFontHeight =11
    ItemSuffix =958
    Left =3330
    Top =1470
    Right =22410
    Bottom =10080
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0x86322c5f0a5de540
    End
    Caption ="Auger"
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
            Height =6985
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =2475
                    Top =765
                    Width =2400
                    Height =435
                    FontSize =16
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="timeDate"
                    Format ="Short Date"
                    StatusBarText ="Date samples were taken"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =2475
                    LayoutCachedTop =765
                    LayoutCachedWidth =4875
                    LayoutCachedHeight =1200
                    RowStart =1
                    RowEnd =1
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
                            Left =30
                            Top =765
                            Width =2385
                            Height =435
                            FontSize =14
                            TopMargin =43
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label3"
                            Caption ="Date:"
                            GroupTable =1
                            BottomPadding =115
                            GridlineColor =10921638
                            LayoutCachedLeft =30
                            LayoutCachedTop =765
                            LayoutCachedWidth =2415
                            LayoutCachedHeight =1200
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
                Begin CheckBox
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =2475
                    Top =1935
                    Width =360
                    Height =435
                    TabIndex =22
                    BorderColor =10921638
                    Name ="rnd"
                    DefaultValue ="False"
                    OnMouseMove ="[Event Procedure]"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =2475
                    LayoutCachedTop =1935
                    LayoutCachedWidth =2835
                    LayoutCachedHeight =2370
                    RowStart =3
                    RowEnd =3
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin TextBox
                    ScrollBars =2
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =2475
                    Top =3135
                    Width =2400
                    Height =1020
                    ColumnWidth =1824
                    FontSize =16
                    TabIndex =3
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="modifications"
                    StatusBarText ="Describe modifications if an R&D project"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =2475
                    LayoutCachedTop =3135
                    LayoutCachedWidth =4875
                    LayoutCachedHeight =4155
                    RowStart =5
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
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =2475
                    Top =4305
                    Width =2400
                    Height =1665
                    ColumnWidth =1560
                    FontSize =16
                    TabIndex =4
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="Notes"
                    GroupTable =1
                    BottomPadding =360
                    GridlineColor =10921638

                    LayoutCachedLeft =2475
                    LayoutCachedTop =4305
                    LayoutCachedWidth =4875
                    LayoutCachedHeight =5970
                    RowStart =7
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
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =13680
                    Top =180
                    Height =433
                    FontSize =16
                    TabIndex =12
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="carbon"
                    Format ="General Number"
                    StatusBarText ="Carbon atomic concentration"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =13680
                    LayoutCachedTop =180
                    LayoutCachedWidth =15120
                    LayoutCachedHeight =613
                    ColumnStart =9
                    ColumnEnd =9
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =13680
                    Top =1350
                    Height =433
                    FontSize =16
                    TabIndex =14
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="calcium"
                    Format ="General Number"
                    StatusBarText ="Calcium atomic concentration"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =13680
                    LayoutCachedTop =1350
                    LayoutCachedWidth =15120
                    LayoutCachedHeight =1783
                    RowStart =2
                    RowEnd =2
                    ColumnStart =9
                    ColumnEnd =9
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =13680
                    Top =1935
                    Height =435
                    FontSize =16
                    TabIndex =15
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="chlorine"
                    Format ="General Number"
                    StatusBarText ="Chlorine atomic concentration"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =13680
                    LayoutCachedTop =1935
                    LayoutCachedWidth =15120
                    LayoutCachedHeight =2370
                    RowStart =3
                    RowEnd =3
                    ColumnStart =9
                    ColumnEnd =9
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =13680
                    Top =765
                    Height =435
                    FontSize =16
                    TabIndex =13
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="chromium"
                    Format ="General Number"
                    StatusBarText ="Chromium atomic concentration"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =13680
                    LayoutCachedTop =765
                    LayoutCachedWidth =15120
                    LayoutCachedHeight =1200
                    RowStart =1
                    RowEnd =1
                    ColumnStart =9
                    ColumnEnd =9
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =13680
                    Top =2520
                    Height =463
                    FontSize =16
                    TabIndex =16
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="copper"
                    Format ="General Number"
                    StatusBarText ="Copper atomic concentration"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =13680
                    LayoutCachedTop =2520
                    LayoutCachedWidth =15120
                    LayoutCachedHeight =2983
                    RowStart =4
                    RowEnd =4
                    ColumnStart =9
                    ColumnEnd =9
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =13680
                    Top =3135
                    Height =435
                    FontSize =16
                    TabIndex =17
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="iron"
                    Format ="General Number"
                    StatusBarText ="Iron atomic concentration"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =13680
                    LayoutCachedTop =3135
                    LayoutCachedWidth =15120
                    LayoutCachedHeight =3570
                    RowStart =5
                    RowEnd =5
                    ColumnStart =9
                    ColumnEnd =9
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =13680
                    Top =3720
                    Height =435
                    FontSize =16
                    TabIndex =18
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="magnesium"
                    Format ="General Number"
                    StatusBarText ="Magnesium atomic concentration"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =13680
                    LayoutCachedTop =3720
                    LayoutCachedWidth =15120
                    LayoutCachedHeight =4155
                    RowStart =6
                    RowEnd =6
                    ColumnStart =9
                    ColumnEnd =9
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =13680
                    Top =4305
                    Height =435
                    FontSize =16
                    TabIndex =19
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="nickel"
                    Format ="General Number"
                    StatusBarText ="Nickel atomic concentration"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =13680
                    LayoutCachedTop =4305
                    LayoutCachedWidth =15120
                    LayoutCachedHeight =4740
                    RowStart =7
                    RowEnd =7
                    ColumnStart =9
                    ColumnEnd =9
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =17310
                    Top =180
                    Height =433
                    FontSize =16
                    TabIndex =20
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="nitrogen"
                    Format ="General Number"
                    StatusBarText ="Nitrogen atomic concentration"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =17310
                    LayoutCachedTop =180
                    LayoutCachedWidth =18750
                    LayoutCachedHeight =613
                    ColumnStart =11
                    ColumnEnd =11
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =17310
                    Top =765
                    Height =435
                    FontSize =16
                    TabIndex =21
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="oxygen"
                    Format ="General Number"
                    StatusBarText ="Oxygen atomic concentration"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =17310
                    LayoutCachedTop =765
                    LayoutCachedWidth =18750
                    LayoutCachedHeight =1200
                    RowStart =1
                    RowEnd =1
                    ColumnStart =11
                    ColumnEnd =11
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =17310
                    Top =1935
                    Height =435
                    FontSize =16
                    TabIndex =24
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="phosphorous"
                    Format ="General Number"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =17310
                    LayoutCachedTop =1935
                    LayoutCachedWidth =18750
                    LayoutCachedHeight =2370
                    RowStart =3
                    RowEnd =3
                    ColumnStart =11
                    ColumnEnd =11
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =17310
                    Top =1350
                    Height =433
                    FontSize =16
                    TabIndex =23
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="potassium"
                    Format ="General Number"
                    StatusBarText ="Potassium atomic concentration"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =17310
                    LayoutCachedTop =1350
                    LayoutCachedWidth =18750
                    LayoutCachedHeight =1783
                    RowStart =2
                    RowEnd =2
                    ColumnStart =11
                    ColumnEnd =11
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =17310
                    Top =2520
                    Height =463
                    FontSize =16
                    TabIndex =25
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="silicon"
                    Format ="General Number"
                    StatusBarText ="Silicon atomic concentration"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =17310
                    LayoutCachedTop =2520
                    LayoutCachedWidth =18750
                    LayoutCachedHeight =2983
                    RowStart =4
                    RowEnd =4
                    ColumnStart =11
                    ColumnEnd =11
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =17310
                    Top =3135
                    Height =435
                    FontSize =16
                    TabIndex =26
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="sodium"
                    Format ="General Number"
                    StatusBarText ="Sodium atomic concentration"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =17310
                    LayoutCachedTop =3135
                    LayoutCachedWidth =18750
                    LayoutCachedHeight =3570
                    RowStart =5
                    RowEnd =5
                    ColumnStart =11
                    ColumnEnd =11
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =17310
                    Top =3720
                    Height =435
                    FontSize =16
                    TabIndex =27
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="sulfur"
                    Format ="General Number"
                    StatusBarText ="Sulfur atomic concentration"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =17310
                    LayoutCachedTop =3720
                    LayoutCachedWidth =18750
                    LayoutCachedHeight =4155
                    RowStart =6
                    RowEnd =6
                    ColumnStart =11
                    ColumnEnd =11
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =17310
                    Top =4305
                    Height =435
                    FontSize =16
                    TabIndex =28
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="zinc"
                    Format ="General Number"
                    StatusBarText ="Zinc atomic concentration"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =17310
                    LayoutCachedTop =4305
                    LayoutCachedWidth =18750
                    LayoutCachedHeight =4740
                    RowStart =7
                    RowEnd =7
                    ColumnStart =11
                    ColumnEnd =11
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =9015
                    Top =180
                    Width =2415
                    Height =433
                    FontSize =16
                    TabIndex =5
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="oxideThick"
                    Format ="General Number"
                    StatusBarText ="in Angstroms"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =9015
                    LayoutCachedTop =180
                    LayoutCachedWidth =11430
                    LayoutCachedHeight =613
                    ColumnStart =4
                    ColumnEnd =6
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =9015
                    Top =765
                    Width =2415
                    Height =435
                    FontSize =16
                    TabIndex =6
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="correctedThick"
                    Format ="General Number"
                    StatusBarText ="in Angstroms"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =9015
                    LayoutCachedTop =765
                    LayoutCachedWidth =11430
                    LayoutCachedHeight =1200
                    RowStart =1
                    RowEnd =1
                    ColumnStart =4
                    ColumnEnd =6
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =9015
                    Top =1350
                    Width =2415
                    Height =433
                    FontSize =16
                    TabIndex =7
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="crFeRatio"
                    Format ="General Number"
                    StatusBarText ="Cr/Fe ratio at 10 angstroms"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =9015
                    LayoutCachedTop =1350
                    LayoutCachedWidth =11430
                    LayoutCachedHeight =1783
                    RowStart =2
                    RowEnd =2
                    ColumnStart =4
                    ColumnEnd =6
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =9015
                    Top =2520
                    Width =2415
                    Height =463
                    FontSize =16
                    TabIndex =10
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="carbLayer"
                    Format ="General Number"
                    StatusBarText ="Carbon layer thickness in angstroms"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =9015
                    LayoutCachedTop =2520
                    LayoutCachedWidth =11430
                    LayoutCachedHeight =2983
                    RowStart =4
                    RowEnd =4
                    ColumnStart =4
                    ColumnEnd =6
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =9015
                    Top =3135
                    Width =2415
                    Height =435
                    FontSize =16
                    TabIndex =11
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="ironLayer"
                    Format ="General Number"
                    StatusBarText ="Surface iron oxide layer thickness in angstroms"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =9015
                    LayoutCachedTop =3135
                    LayoutCachedWidth =11430
                    LayoutCachedHeight =3570
                    RowStart =5
                    RowEnd =5
                    ColumnStart =4
                    ColumnEnd =6
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
                    Left =15180
                    Top =2520
                    Width =2070
                    Height =463
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label57"
                    Caption ="Silicon:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =15180
                    LayoutCachedTop =2520
                    LayoutCachedWidth =17250
                    LayoutCachedHeight =2983
                    RowStart =4
                    RowEnd =4
                    ColumnStart =10
                    ColumnEnd =10
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =15180
                    Top =3135
                    Width =2070
                    Height =435
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label60"
                    Caption ="Sodium:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =15180
                    LayoutCachedTop =3135
                    LayoutCachedWidth =17250
                    LayoutCachedHeight =3570
                    RowStart =5
                    RowEnd =5
                    ColumnStart =10
                    ColumnEnd =10
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =15180
                    Top =3720
                    Width =2070
                    Height =435
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label63"
                    Caption ="Sulfur:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =15180
                    LayoutCachedTop =3720
                    LayoutCachedWidth =17250
                    LayoutCachedHeight =4155
                    RowStart =6
                    RowEnd =6
                    ColumnStart =10
                    ColumnEnd =10
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =4935
                    Top =1350
                    Width =4020
                    Height =433
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label75"
                    Caption ="Cr/Fe Ratio @ 10 Å:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =4935
                    LayoutCachedTop =1350
                    LayoutCachedWidth =8955
                    LayoutCachedHeight =1783
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
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =15180
                    Top =4305
                    Width =2070
                    Height =435
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label66"
                    Caption ="Zinc:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =15180
                    LayoutCachedTop =4305
                    LayoutCachedWidth =17250
                    LayoutCachedHeight =4740
                    RowStart =7
                    RowEnd =7
                    ColumnStart =10
                    ColumnEnd =10
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =4935
                    Top =180
                    Width =4020
                    Height =433
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label69"
                    Caption ="Oxide Thickness:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =4935
                    LayoutCachedTop =180
                    LayoutCachedWidth =8955
                    LayoutCachedHeight =613
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =4935
                    Top =765
                    Width =4020
                    Height =435
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label72"
                    Caption ="Corrected Oxide Thickness:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =4935
                    LayoutCachedTop =765
                    LayoutCachedWidth =8955
                    LayoutCachedHeight =1200
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
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =4935
                    Top =1935
                    Width =4020
                    Height =435
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label78"
                    Caption ="Max Cr/Fe @ Depth:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =4935
                    LayoutCachedTop =1935
                    LayoutCachedWidth =8955
                    LayoutCachedHeight =2370
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
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =4935
                    Top =2520
                    Width =4020
                    Height =463
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label81"
                    Caption ="Carbon Layer Thickness:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =4935
                    LayoutCachedTop =2520
                    LayoutCachedWidth =8955
                    LayoutCachedHeight =2983
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
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =4935
                    Top =3135
                    Width =4020
                    Height =435
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label84"
                    Caption ="Surface Iron Oxide Thickness:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =4935
                    LayoutCachedTop =3135
                    LayoutCachedWidth =8955
                    LayoutCachedHeight =3570
                    RowStart =5
                    RowEnd =5
                    ColumnStart =3
                    ColumnEnd =3
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
                    ColumnCount =2
                    Left =2475
                    Top =1350
                    Width =2400
                    Height =433
                    FontSize =16
                    TabIndex =1
                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"300\""
                    Name ="laboratory"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tblLABORATORIES.ID, tblLABORATORIES.nameLab FROM tblLABORATORIES WHERE (("
                        "(tblLABORATORIES.testingAvailable.Value)=5)) ORDER BY tblLABORATORIES.nameLab; "
                    ColumnWidths ="0;1440"
                    StatusBarText ="Laboratory that conducted test"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    AllowValueListEdits =0
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =2475
                    LayoutCachedTop =1350
                    LayoutCachedWidth =4875
                    LayoutCachedHeight =1783
                    RowStart =2
                    RowEnd =2
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
                            Left =30
                            Top =1350
                            Width =2385
                            Height =433
                            FontSize =14
                            TopMargin =43
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label6"
                            Caption ="Laboratory:"
                            GroupTable =1
                            BottomPadding =115
                            GridlineColor =10921638
                            LayoutCachedLeft =30
                            LayoutCachedTop =1350
                            LayoutCachedWidth =2415
                            LayoutCachedHeight =1783
                            RowStart =2
                            RowEnd =2
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
                    Left =30
                    Top =1935
                    Width =2385
                    Height =435
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label9"
                    Caption ="R && D:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =1935
                    LayoutCachedWidth =2415
                    LayoutCachedHeight =2370
                    RowStart =3
                    RowEnd =3
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
                    Top =3135
                    Width =2385
                    Height =1020
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label12"
                    Caption ="Modification(s):"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =3135
                    LayoutCachedWidth =2415
                    LayoutCachedHeight =4155
                    RowStart =5
                    RowEnd =6
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
                    Top =4305
                    Width =2385
                    Height =2565
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label15"
                    Caption ="Notes:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =4305
                    LayoutCachedWidth =2415
                    LayoutCachedHeight =6870
                    RowStart =7
                    RowEnd =9
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
                    ColumnCount =2
                    Left =2475
                    Top =2520
                    Width =2400
                    Height =463
                    FontSize =16
                    TabIndex =2
                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                    Name ="testPart"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tblPARTNUM.ID, tblPARTNUM.partNum FROM tblPARTNUM ORDER BY tblPARTNUM.par"
                        "tNum; "
                    ColumnWidths ="0;1440"
                    StatusBarText ="Talon part number tested (if applicable)"
                    OnNotInList ="[Event Procedure]"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    AllowValueListEdits =0
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =2475
                    LayoutCachedTop =2520
                    LayoutCachedWidth =4875
                    LayoutCachedHeight =2983
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
                            Left =30
                            Top =2520
                            Width =2385
                            Height =463
                            FontSize =14
                            TopMargin =43
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label18"
                            Caption ="Test Part:"
                            GroupTable =1
                            BottomPadding =115
                            GridlineColor =10921638
                            LayoutCachedLeft =30
                            LayoutCachedTop =2520
                            LayoutCachedWidth =2415
                            LayoutCachedHeight =2983
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
                Begin CommandButton
                    OverlapFlags =85
                    Left =2475
                    Top =6360
                    Width =2400
                    Height =510
                    TabIndex =29
                    ForeColor =6710886
                    Name ="cmdEnter"
                    Caption ="ENTER"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Add Record"
                    GroupTable =1
                    BottomPadding =115
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
                    LayoutCachedLeft =2475
                    LayoutCachedTop =6360
                    LayoutCachedWidth =4875
                    LayoutCachedHeight =6870
                    RowStart =9
                    RowEnd =9
                    ColumnStart =1
                    ColumnEnd =2
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
                    WebImagePaddingBottom =7
                    Overlaps =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =9990
                    Top =1935
                    Width =360
                    Height =435
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label408"
                    Caption ="@"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =9990
                    LayoutCachedTop =1935
                    LayoutCachedWidth =10350
                    LayoutCachedHeight =2370
                    RowStart =3
                    RowEnd =3
                    ColumnStart =5
                    ColumnEnd =5
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
                    Left =10410
                    Top =1935
                    Width =1020
                    Height =435
                    FontSize =16
                    TabIndex =9
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtDepth"
                    Format ="General Number"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =10410
                    LayoutCachedTop =1935
                    LayoutCachedWidth =11430
                    LayoutCachedHeight =2370
                    RowStart =3
                    RowEnd =3
                    ColumnStart =6
                    ColumnEnd =6
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =9015
                    Top =1935
                    Width =915
                    Height =435
                    FontSize =16
                    TabIndex =8
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtMax"
                    Format ="General Number"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638

                    LayoutCachedLeft =9015
                    LayoutCachedTop =1935
                    LayoutCachedWidth =9930
                    LayoutCachedHeight =2370
                    RowStart =3
                    RowEnd =3
                    ColumnStart =4
                    ColumnEnd =4
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
                    Left =2895
                    Top =1935
                    Width =1980
                    Height =435
                    Name ="EmptyCell433"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =2895
                    LayoutCachedTop =1935
                    LayoutCachedWidth =4875
                    LayoutCachedHeight =2370
                    RowStart =3
                    RowEnd =3
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =180
                    Width =2385
                    Height =433
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label502"
                    Caption ="Next Required Test:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =180
                    LayoutCachedWidth =2415
                    LayoutCachedHeight =613
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =2475
                    Top =180
                    Width =2400
                    Height =433
                    FontSize =14
                    FontWeight =700
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="lblNext"
                    Caption ="2/17/2021"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =2475
                    LayoutCachedTop =180
                    LayoutCachedWidth =4875
                    LayoutCachedHeight =613
                    ColumnStart =1
                    ColumnEnd =2
                    LayoutGroup =1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =4935
                    Top =3720
                    Width =6975
                    Height =3150
                    Name ="EmptyCell526"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =4935
                    LayoutCachedTop =3720
                    LayoutCachedWidth =11910
                    LayoutCachedHeight =6870
                    RowStart =6
                    RowEnd =9
                    ColumnStart =3
                    ColumnEnd =7
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =11490
                    Top =1935
                    Width =420
                    Height =435
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label571"
                    Caption ="Å"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =11490
                    LayoutCachedTop =1935
                    LayoutCachedWidth =11910
                    LayoutCachedHeight =2370
                    RowStart =3
                    RowEnd =3
                    ColumnStart =7
                    ColumnEnd =7
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =11970
                    Top =3135
                    Width =1650
                    Height =435
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label36"
                    Caption ="Iron:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =11970
                    LayoutCachedTop =3135
                    LayoutCachedWidth =13620
                    LayoutCachedHeight =3570
                    RowStart =5
                    RowEnd =5
                    ColumnStart =8
                    ColumnEnd =8
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =11970
                    Top =180
                    Width =1650
                    Height =433
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label21"
                    Caption ="Carbon:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =11970
                    LayoutCachedTop =180
                    LayoutCachedWidth =13620
                    LayoutCachedHeight =613
                    ColumnStart =8
                    ColumnEnd =8
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =11970
                    Top =765
                    Width =1650
                    Height =435
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label30"
                    Caption ="Chromium:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =11970
                    LayoutCachedTop =765
                    LayoutCachedWidth =13620
                    LayoutCachedHeight =1200
                    RowStart =1
                    RowEnd =1
                    ColumnStart =8
                    ColumnEnd =8
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =11970
                    Top =1350
                    Width =1650
                    Height =433
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label24"
                    Caption ="Calcium:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =11970
                    LayoutCachedTop =1350
                    LayoutCachedWidth =13620
                    LayoutCachedHeight =1783
                    RowStart =2
                    RowEnd =2
                    ColumnStart =8
                    ColumnEnd =8
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =11970
                    Top =1935
                    Width =1650
                    Height =435
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label27"
                    Caption ="Chlorine:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =11970
                    LayoutCachedTop =1935
                    LayoutCachedWidth =13620
                    LayoutCachedHeight =2370
                    RowStart =3
                    RowEnd =3
                    ColumnStart =8
                    ColumnEnd =8
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =11970
                    Top =2520
                    Width =1650
                    Height =463
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label33"
                    Caption ="Copper:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =11970
                    LayoutCachedTop =2520
                    LayoutCachedWidth =13620
                    LayoutCachedHeight =2983
                    RowStart =4
                    RowEnd =4
                    ColumnStart =8
                    ColumnEnd =8
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =11970
                    Top =3720
                    Width =1650
                    Height =435
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label39"
                    Caption ="Magnesium:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =11970
                    LayoutCachedTop =3720
                    LayoutCachedWidth =13620
                    LayoutCachedHeight =4155
                    RowStart =6
                    RowEnd =6
                    ColumnStart =8
                    ColumnEnd =8
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =11970
                    Top =4305
                    Width =1650
                    Height =435
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label42"
                    Caption ="Nickel:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =11970
                    LayoutCachedTop =4305
                    LayoutCachedWidth =13620
                    LayoutCachedHeight =4740
                    RowStart =7
                    RowEnd =7
                    ColumnStart =8
                    ColumnEnd =8
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =15180
                    Top =765
                    Width =2070
                    Height =435
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label48"
                    Caption ="Oxygen:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =15180
                    LayoutCachedTop =765
                    LayoutCachedWidth =17250
                    LayoutCachedHeight =1200
                    RowStart =1
                    RowEnd =1
                    ColumnStart =10
                    ColumnEnd =10
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =15180
                    Top =1935
                    Width =2070
                    Height =435
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label51"
                    Caption ="Phosphorous:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =15180
                    LayoutCachedTop =1935
                    LayoutCachedWidth =17250
                    LayoutCachedHeight =2370
                    RowStart =3
                    RowEnd =3
                    ColumnStart =10
                    ColumnEnd =10
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =15180
                    Top =1350
                    Width =2070
                    Height =433
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label54"
                    Caption ="Potassium:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =15180
                    LayoutCachedTop =1350
                    LayoutCachedWidth =17250
                    LayoutCachedHeight =1783
                    RowStart =2
                    RowEnd =2
                    ColumnStart =10
                    ColumnEnd =10
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =15180
                    Top =180
                    Width =2070
                    Height =433
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label45"
                    Caption ="Nitrogen:"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =15180
                    LayoutCachedTop =180
                    LayoutCachedWidth =17250
                    LayoutCachedHeight =613
                    ColumnStart =10
                    ColumnEnd =10
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =11970
                    Top =4890
                    Width =6780
                    Height =1980
                    Name ="EmptyCell947"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =11970
                    LayoutCachedTop =4890
                    LayoutCachedWidth =18750
                    LayoutCachedHeight =6870
                    RowStart =8
                    RowEnd =9
                    ColumnStart =8
                    ColumnEnd =11
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =11490
                    Top =2520
                    Width =420
                    Height =463
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label951"
                    Caption ="Å"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =11490
                    LayoutCachedTop =2520
                    LayoutCachedWidth =11910
                    LayoutCachedHeight =2983
                    RowStart =4
                    RowEnd =4
                    ColumnStart =7
                    ColumnEnd =7
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =11490
                    Top =3135
                    Width =420
                    Height =435
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label952"
                    Caption ="Å"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =11490
                    LayoutCachedTop =3135
                    LayoutCachedWidth =11910
                    LayoutCachedHeight =3570
                    RowStart =5
                    RowEnd =5
                    ColumnStart =7
                    ColumnEnd =7
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =11490
                    Top =180
                    Width =420
                    Height =433
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label955"
                    Caption ="Å"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =11490
                    LayoutCachedTop =180
                    LayoutCachedWidth =11910
                    LayoutCachedHeight =613
                    ColumnStart =7
                    ColumnEnd =7
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =11490
                    Top =765
                    Width =420
                    Height =435
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label956"
                    Caption ="Å"
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =11490
                    LayoutCachedTop =765
                    LayoutCachedWidth =11910
                    LayoutCachedHeight =1200
                    RowStart =1
                    RowEnd =1
                    ColumnStart =7
                    ColumnEnd =7
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =11490
                    Top =1350
                    Width =420
                    Height =433
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label957"
                    Caption =" "
                    GroupTable =1
                    BottomPadding =115
                    GridlineColor =10921638
                    LayoutCachedLeft =11490
                    LayoutCachedTop =1350
                    LayoutCachedWidth =11910
                    LayoutCachedHeight =1783
                    RowStart =2
                    RowEnd =2
                    ColumnStart =7
                    ColumnEnd =7
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
CodeBehindForm
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit
Public taskID As Long

Private Sub cmdENTER_Click()
Dim stSQL As String
Dim taskTable As String
Dim msgTitle1 As String
Dim sP As String
Dim sN As String
Dim sMax As String
Dim bRD As Boolean

Dim dC As String
Dim dCa As String
Dim dCl As String
Dim dCr As String
Dim dCu As String
Dim dFe As String
Dim dMg As String
Dim dNa As String
Dim dNi As String
Dim dNit As String

Dim dOx As String
Dim dPho As String
Dim dK As String
Dim dSi As String
Dim dSul As String
Dim dZn As String

Dim dOxT As String
Dim dCorT As String
Dim dRatio As String
Dim dCarbL As String
Dim dIronL As String

Dim sNotes As String
Dim sMod As String

'pull the name of the table and any other information
On Error GoTo lookupErr

    taskTable = DLookup("[tableRel]", "tblTASKLIST", "[ID] = " & taskID)
    msgTitle1 = "Missing Info"
    sP = ", "
    sN = "Null"

On Error GoTo Macro1_Err:
'check that all values were entered
If IsNull(timeDate) = True Then
        MsgBox "Enter the date the sample was taken/completed.", vbOKOnly, msgTitle1
        timeDate.SetFocus
    ElseIf IsNull(laboratory) = True Then
        MsgBox "Enter the laboratory that completed the job.", vbOKOnly, msgTitle1
        laboratory.SetFocus
    ElseIf IsNull(testPart) = True Then
        MsgBox "Enter the part number for the coupon.", vbOKOnly, msgTitle1
        testPart.SetFocus
    Else:
        bRD = RnD
        dC = Nz(carbon, sN)
        dCa = Nz(calcium, sN)
        dCl = Nz(chlorine, sN)
        dCr = Nz(chromium, sN)
        dCu = Nz(Copper, sN)
        dFe = Nz(Iron, sN)
        dMg = Nz(magnesium, sN)
        dNi = Nz(Nickel, sN)
        dNit = Nz(nitrogen, sN)
        dOx = Nz(oxygen, sN)
        dPho = Nz(phosphorous, sN)
        dK = Nz(potassium, sN)
        dSi = Nz(silicon, sN)
        dNa = Nz(sodium, sN)
        dSul = Nz(sulfur, sN)
        dZn = Nz(zinc, sN)
        
        dOxT = Nz(oxideThick, sN)
        dCorT = Nz(correctedThick, sN)
        dRatio = Nz(crFeRatio, sN)
        dCarbL = Nz(carbLayer, sN)
        dIronL = Nz(ironLayer, sN)
         
        'if apostrophes are used, keep formating and send as string
        sNotes = Nz(Notes, sN)
        If sNotes <> sN Then
            sNotes = Replace(Notes, "'", "''")
            sNotes = "'" & sNotes & "'"
        ElseIf (sNotes = "") Then
            sNotes = sN
        End If
        
        sMod = Nz(modifications, sN)
        If (sMod <> sN) Then
            sMod = Replace(modifications, "'", "''")
            sMod = "'" & sMod & "'"
        ElseIf (sMod = "") Then
            sMod = sN
        End If
        
        If (IsNull(txtMax) = False) And (IsNull(txtDepth) = False) Then
            sMax = "'" & Trim(txtMax) & " @ " & Trim(txtDepth) & " Å'"
        Else:
            sMax = sN
        End If
        
        On Error GoTo sqlErr:
        'enter record into table
        stSQL = "#" & timeDate & "#, " & laboratory & sP & bRD & sP & sMod & sP & sNotes & sP & testPart & sP & _
                dC & sP & dCa & sP & dCl & sP & dCr & sP & dCu & sP & dFe & sP & dMg & sP & dNi & sP & dNit & sP & dOx & sP & dPho & sP & _
                dK & sP & dSi & sP & dNa & sP & dSul & sP & dZn & sP & dOxT & sP & dCorT & sP & dRatio & sP & sMax & sP & dCarbL & sP & dIronL

        Call sqlEntryBuilder(taskTable, stSQL, False)
        Call cmdUndo
        MsgBox "Successfully added record."
        
End If

Macro1_Exit:
    Exit Sub
    
lookupErr:
    MsgBox "An error occurred when searching for the task's table information. Check the task table to ensure that a name has been entered."
    Resume Macro1_Exit
    
Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit
    
sqlErr:
    MsgBox "An error occurred when building the SQL. The record has not been saved."
    Resume Macro1_Exit
    
End Sub

Private Sub Form_Load()
Dim nextDate As Date

    taskID = 20 'assigned task ID number

    nextDate = nextTestDate(taskID)
    lblNEXT.Caption = nextDate
    timeDate.SetFocus

End Sub

Private Sub rnd_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub testPart_NotInList(NewData As String, Response As Integer)
Dim db As DAO.Database
Dim rs As Recordset
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

Private Sub cmdUndo()
'clear all fields

    laboratory = Null
    testPart = Null
    modifications = Null
    Notes = Null
    RnD = False
    
    carbon = Null
    calcium = Null
    chlorine = Null
    chromium = Null
    Copper = Null
    Iron = Null
    magnesium = Null
    Nickel = Null
    nitrogen = Null
    oxygen = Null
    phosphorous = Null
    potassium = Null
    silicon = Null
    sodium = Null
    sulfur = Null
    zinc = Null
    
    oxideThick = Null
    correctedThick = Null
    crFeRatio = Null
    carbLayer = Null
    ironLayer = Null
    txtMax = Null
    txtDepth = Null
       

    With timeDate
        .Value = Null
        .SetFocus
    End With
               
       
End Sub

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
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =13883
    DatasheetFontHeight =11
    ItemSuffix =419
    Right =24450
    Bottom =12765
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0x491f2f7bce44e540
    End
    RecordSource ="tblSURFACE_ANALYSIS_XPS"
    Caption ="XPS"
    DatasheetFontName ="Calibri"
    OnLoad ="[Event Procedure]"
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
            Height =8685
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
                    Left =2385
                    Top =765
                    Width =2880
                    Height =486
                    FontSize =16
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="timeDate"
                    ControlSource ="timeDate"
                    Format ="Short Date"
                    StatusBarText ="Date samples were taken"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =2385
                    LayoutCachedTop =765
                    LayoutCachedWidth =5265
                    LayoutCachedHeight =1251
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
                            Left =240
                            Top =765
                            Width =2088
                            Height =486
                            FontSize =14
                            TopMargin =43
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label3"
                            Caption ="Date:"
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =240
                            LayoutCachedTop =765
                            LayoutCachedWidth =2328
                            LayoutCachedHeight =1251
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
                    Left =2385
                    Top =1425
                    Width =360
                    Height =480
                    TabIndex =1
                    BorderColor =10921638
                    Name ="rnd"
                    ControlSource ="rnd"
                    OnMouseMove ="[Event Procedure]"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =2385
                    LayoutCachedTop =1425
                    LayoutCachedWidth =2745
                    LayoutCachedHeight =1905
                    RowStart =2
                    RowEnd =2
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    GroupTable =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =240
                            Top =1425
                            Width =2088
                            Height =480
                            FontSize =14
                            TopMargin =43
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label6"
                            Caption ="R && D"
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =240
                            LayoutCachedTop =1425
                            LayoutCachedWidth =2328
                            LayoutCachedHeight =1905
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
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =2385
                    Top =2745
                    Width =2880
                    Height =1140
                    ColumnWidth =2280
                    FontSize =16
                    TabIndex =3
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="Modifiers"
                    ControlSource ="Modifiers"
                    StatusBarText ="Modifications (if applied) or description of change for research"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =2385
                    LayoutCachedTop =2745
                    LayoutCachedWidth =5265
                    LayoutCachedHeight =3885
                    RowStart =4
                    RowEnd =5
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
                            Left =240
                            Top =2745
                            Width =2088
                            Height =480
                            FontSize =14
                            TopMargin =43
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label12"
                            Caption ="Modification(s):"
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =240
                            LayoutCachedTop =2745
                            LayoutCachedWidth =2328
                            LayoutCachedHeight =3225
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
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =2385
                    Top =6045
                    Width =2880
                    Height =486
                    ColumnWidth =864
                    FontSize =16
                    TabIndex =6
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="CrFe"
                    ControlSource ="CrFe"
                    Format ="General Number"
                    StatusBarText ="Cr/Fe ratio"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =2385
                    LayoutCachedTop =6045
                    LayoutCachedWidth =5265
                    LayoutCachedHeight =6531
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
                            Left =240
                            Top =6045
                            Width =2088
                            Height =486
                            FontSize =14
                            TopMargin =43
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label15"
                            Caption ="Cr/Fe:"
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =240
                            LayoutCachedTop =6045
                            LayoutCachedWidth =2328
                            LayoutCachedHeight =6531
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
                    Left =2385
                    Top =6705
                    Width =2880
                    Height =486
                    ColumnWidth =1344
                    FontSize =16
                    TabIndex =7
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="CrOxFeOx"
                    ControlSource ="CrOxFeOx"
                    Format ="General Number"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =2385
                    LayoutCachedTop =6705
                    LayoutCachedWidth =5265
                    LayoutCachedHeight =7191
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
                            Left =240
                            Top =6705
                            Width =2088
                            Height =486
                            FontSize =14
                            TopMargin =43
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label18"
                            Caption ="CrOx/FeOx:"
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =240
                            LayoutCachedTop =6705
                            LayoutCachedWidth =2328
                            LayoutCachedHeight =7191
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
                    Left =2385
                    Top =7365
                    Width =2880
                    Height =486
                    FontSize =16
                    TabIndex =8
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="oxideThick"
                    ControlSource ="oxideThick"
                    Format ="General Number"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =2385
                    LayoutCachedTop =7365
                    LayoutCachedWidth =5265
                    LayoutCachedHeight =7851
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
                            Left =240
                            Top =7365
                            Width =2088
                            Height =486
                            FontSize =14
                            TopMargin =43
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label21"
                            Caption ="Oxide Thickness:"
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =240
                            LayoutCachedTop =7365
                            LayoutCachedWidth =2328
                            LayoutCachedHeight =7851
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
                    Left =7470
                    Top =765
                    Width =2085
                    Height =486
                    FontSize =16
                    TabIndex =9
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="aluminum"
                    ControlSource ="aluminum"
                    Format ="General Number"
                    StatusBarText ="Adsorbed aluminum on surface"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =7470
                    LayoutCachedTop =765
                    LayoutCachedWidth =9555
                    LayoutCachedHeight =1251
                    RowStart =1
                    RowEnd =1
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
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =5325
                            Top =765
                            Width =2085
                            Height =486
                            FontSize =14
                            TopMargin =43
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label24"
                            Caption ="Aluminum:"
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =5325
                            LayoutCachedTop =765
                            LayoutCachedWidth =7410
                            LayoutCachedHeight =1251
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
                    Left =7470
                    Top =1425
                    Width =2085
                    Height =480
                    FontSize =16
                    TabIndex =10
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="calcium"
                    ControlSource ="calcium"
                    Format ="General Number"
                    StatusBarText ="Adsorbed calcium on surface"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =7470
                    LayoutCachedTop =1425
                    LayoutCachedWidth =9555
                    LayoutCachedHeight =1905
                    RowStart =2
                    RowEnd =2
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
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =5325
                            Top =1425
                            Width =2085
                            Height =480
                            FontSize =14
                            TopMargin =43
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label27"
                            Caption ="Calcium:"
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =5325
                            LayoutCachedTop =1425
                            LayoutCachedWidth =7410
                            LayoutCachedHeight =1905
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
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7470
                    Top =2085
                    Width =2085
                    Height =480
                    FontSize =16
                    TabIndex =11
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="carbon"
                    ControlSource ="carbon"
                    Format ="General Number"
                    StatusBarText ="Adsorbed carbon on surface"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =7470
                    LayoutCachedTop =2085
                    LayoutCachedWidth =9555
                    LayoutCachedHeight =2565
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
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =5325
                            Top =2085
                            Width =2085
                            Height =480
                            FontSize =14
                            TopMargin =43
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label30"
                            Caption ="Carbon:"
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =5325
                            LayoutCachedTop =2085
                            LayoutCachedWidth =7410
                            LayoutCachedHeight =2565
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
                    Left =7470
                    Top =2745
                    Width =2085
                    Height =480
                    FontSize =16
                    TabIndex =12
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="chlorine"
                    ControlSource ="chlorine"
                    Format ="General Number"
                    StatusBarText ="Adsorbed chlorine on surface"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =7470
                    LayoutCachedTop =2745
                    LayoutCachedWidth =9555
                    LayoutCachedHeight =3225
                    RowStart =4
                    RowEnd =4
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
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =5325
                            Top =2745
                            Width =2085
                            Height =480
                            FontSize =14
                            TopMargin =43
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label33"
                            Caption ="Chlorine:"
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =5325
                            LayoutCachedTop =2745
                            LayoutCachedWidth =7410
                            LayoutCachedHeight =3225
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
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7470
                    Top =3405
                    Width =2085
                    Height =480
                    FontSize =16
                    TabIndex =13
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="chromium"
                    ControlSource ="chromium"
                    Format ="General Number"
                    StatusBarText ="Adsorbed chromium on surface"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =7470
                    LayoutCachedTop =3405
                    LayoutCachedWidth =9555
                    LayoutCachedHeight =3885
                    RowStart =5
                    RowEnd =5
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
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =5325
                            Top =3405
                            Width =2085
                            Height =480
                            FontSize =14
                            TopMargin =43
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label36"
                            Caption ="Chromium:"
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =5325
                            LayoutCachedTop =3405
                            LayoutCachedWidth =7410
                            LayoutCachedHeight =3885
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
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7470
                    Top =4065
                    Width =2085
                    Height =525
                    FontSize =16
                    TabIndex =14
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="copper"
                    ControlSource ="copper"
                    Format ="General Number"
                    StatusBarText ="Adsorbed copper on surface"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =7470
                    LayoutCachedTop =4065
                    LayoutCachedWidth =9555
                    LayoutCachedHeight =4590
                    RowStart =6
                    RowEnd =6
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
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =5325
                            Top =4065
                            Width =2085
                            Height =525
                            FontSize =14
                            TopMargin =43
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label39"
                            Caption ="Copper:"
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =5325
                            LayoutCachedTop =4065
                            LayoutCachedWidth =7410
                            LayoutCachedHeight =4590
                            RowStart =6
                            RowEnd =6
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
                    Left =7470
                    Top =4770
                    Width =2085
                    Height =480
                    FontSize =16
                    TabIndex =15
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="fluorine"
                    ControlSource ="fluorine"
                    Format ="General Number"
                    StatusBarText ="Adsorbed fluorine on surface"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =7470
                    LayoutCachedTop =4770
                    LayoutCachedWidth =9555
                    LayoutCachedHeight =5250
                    RowStart =7
                    RowEnd =7
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
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =5325
                            Top =4770
                            Width =2085
                            Height =480
                            FontSize =14
                            TopMargin =43
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label42"
                            Caption ="Fluorine:"
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =5325
                            LayoutCachedTop =4770
                            LayoutCachedWidth =7410
                            LayoutCachedHeight =5250
                            RowStart =7
                            RowEnd =7
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
                    Left =7470
                    Top =5430
                    Width =2085
                    Height =435
                    FontSize =16
                    TabIndex =16
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="iron"
                    ControlSource ="iron"
                    Format ="General Number"
                    StatusBarText ="Adsorbed iron on surface"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =7470
                    LayoutCachedTop =5430
                    LayoutCachedWidth =9555
                    LayoutCachedHeight =5865
                    RowStart =8
                    RowEnd =8
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
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =5325
                            Top =5430
                            Width =2085
                            Height =435
                            FontSize =14
                            TopMargin =43
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label45"
                            Caption ="Iron:"
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =5325
                            LayoutCachedTop =5430
                            LayoutCachedWidth =7410
                            LayoutCachedHeight =5865
                            RowStart =8
                            RowEnd =8
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
                    Left =7470
                    Top =6045
                    Width =2085
                    Height =486
                    FontSize =16
                    TabIndex =17
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="magnesium"
                    ControlSource ="magnesium"
                    Format ="General Number"
                    StatusBarText ="Adsorbed magnesium on surface"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =7470
                    LayoutCachedTop =6045
                    LayoutCachedWidth =9555
                    LayoutCachedHeight =6531
                    RowStart =9
                    RowEnd =9
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
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =5325
                            Top =6045
                            Width =2085
                            Height =486
                            FontSize =14
                            TopMargin =43
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label48"
                            Caption ="Magnesium:"
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =5325
                            LayoutCachedTop =6045
                            LayoutCachedWidth =7410
                            LayoutCachedHeight =6531
                            RowStart =9
                            RowEnd =9
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
                    Left =7470
                    Top =6705
                    Width =2085
                    Height =486
                    FontSize =16
                    TabIndex =18
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="manganese"
                    ControlSource ="manganese"
                    Format ="General Number"
                    StatusBarText ="Adsorbed manganese on surface"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =7470
                    LayoutCachedTop =6705
                    LayoutCachedWidth =9555
                    LayoutCachedHeight =7191
                    RowStart =10
                    RowEnd =10
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
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =5325
                            Top =6705
                            Width =2085
                            Height =486
                            FontSize =14
                            TopMargin =43
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label51"
                            Caption ="Manganese:"
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =5325
                            LayoutCachedTop =6705
                            LayoutCachedWidth =7410
                            LayoutCachedHeight =7191
                            RowStart =10
                            RowEnd =10
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
                    Left =7470
                    Top =7365
                    Width =2085
                    Height =486
                    FontSize =16
                    TabIndex =19
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="molybdenum"
                    ControlSource ="molybdenum"
                    Format ="General Number"
                    StatusBarText ="Adsorbed molybdenum on surface"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =7470
                    LayoutCachedTop =7365
                    LayoutCachedWidth =9555
                    LayoutCachedHeight =7851
                    RowStart =11
                    RowEnd =11
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
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =5325
                            Top =7365
                            Width =2085
                            Height =486
                            FontSize =14
                            TopMargin =43
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label54"
                            Caption ="Molybdenum:"
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =5325
                            LayoutCachedTop =7365
                            LayoutCachedWidth =7410
                            LayoutCachedHeight =7851
                            RowStart =11
                            RowEnd =11
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
                    Left =11760
                    Top =765
                    Width =2085
                    Height =486
                    FontSize =16
                    TabIndex =20
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="nickel"
                    ControlSource ="nickel"
                    Format ="General Number"
                    StatusBarText ="Adsorbed nitrogen on surface"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =11760
                    LayoutCachedTop =765
                    LayoutCachedWidth =13845
                    LayoutCachedHeight =1251
                    RowStart =1
                    RowEnd =1
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
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =9615
                            Top =765
                            Width =2085
                            Height =486
                            FontSize =14
                            TopMargin =43
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label57"
                            Caption ="Nickel:"
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =9615
                            LayoutCachedTop =765
                            LayoutCachedWidth =11700
                            LayoutCachedHeight =1251
                            RowStart =1
                            RowEnd =1
                            ColumnStart =5
                            ColumnEnd =5
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
                    Left =11760
                    Top =1425
                    Width =2085
                    Height =480
                    FontSize =16
                    TabIndex =21
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="nitrogen"
                    ControlSource ="nitrogen"
                    Format ="General Number"
                    StatusBarText ="Adsorbed nitrogen on surface"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =11760
                    LayoutCachedTop =1425
                    LayoutCachedWidth =13845
                    LayoutCachedHeight =1905
                    RowStart =2
                    RowEnd =2
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
                    Left =11760
                    Top =2085
                    Width =2085
                    Height =480
                    FontSize =16
                    TabIndex =22
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="oxygen"
                    ControlSource ="oxygen"
                    Format ="General Number"
                    StatusBarText ="Adsorbed oxygen on surface"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =11760
                    LayoutCachedTop =2085
                    LayoutCachedWidth =13845
                    LayoutCachedHeight =2565
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
                    Left =11760
                    Top =2745
                    Width =2085
                    Height =480
                    FontSize =16
                    TabIndex =23
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="phosphorous"
                    ControlSource ="phosphorous"
                    Format ="General Number"
                    StatusBarText ="Adsorbed phosphorous on surface"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =11760
                    LayoutCachedTop =2745
                    LayoutCachedWidth =13845
                    LayoutCachedHeight =3225
                    RowStart =4
                    RowEnd =4
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
                    Left =11760
                    Top =3405
                    Width =2085
                    Height =480
                    FontSize =16
                    TabIndex =24
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="silicon"
                    ControlSource ="silicon"
                    Format ="General Number"
                    StatusBarText ="Adsorbed silicon on surface"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =11760
                    LayoutCachedTop =3405
                    LayoutCachedWidth =13845
                    LayoutCachedHeight =3885
                    RowStart =5
                    RowEnd =5
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
                    Left =11760
                    Top =4065
                    Width =2085
                    Height =525
                    FontSize =16
                    TabIndex =25
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="sodium"
                    ControlSource ="sodium"
                    Format ="General Number"
                    StatusBarText ="Adsorbed sodium on surface"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =11760
                    LayoutCachedTop =4065
                    LayoutCachedWidth =13845
                    LayoutCachedHeight =4590
                    RowStart =6
                    RowEnd =6
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
                    Left =11760
                    Top =4770
                    Width =2085
                    Height =480
                    FontSize =16
                    TabIndex =26
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="sulfur"
                    ControlSource ="sulfur"
                    Format ="General Number"
                    StatusBarText ="Adsorbed sulfur on surface"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =11760
                    LayoutCachedTop =4770
                    LayoutCachedWidth =13845
                    LayoutCachedHeight =5250
                    RowStart =7
                    RowEnd =7
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
                    Left =11760
                    Top =5430
                    Width =2085
                    Height =435
                    FontSize =16
                    TabIndex =27
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="zinc"
                    ControlSource ="zinc"
                    Format ="General Number"
                    StatusBarText ="Adsorbed zinc on surface"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =11760
                    LayoutCachedTop =5430
                    LayoutCachedWidth =13845
                    LayoutCachedHeight =5865
                    RowStart =8
                    RowEnd =8
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
                    Left =11760
                    Top =6045
                    Width =2085
                    Height =486
                    FontSize =16
                    TabIndex =28
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="others"
                    ControlSource ="others"
                    Format ="General Number"
                    StatusBarText ="Adsorbed elements (other) on surface"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =11760
                    LayoutCachedTop =6045
                    LayoutCachedWidth =13845
                    LayoutCachedHeight =6531
                    RowStart =9
                    RowEnd =9
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
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =2385
                    Top =4065
                    Width =2880
                    Height =1185
                    ColumnWidth =1932
                    FontSize =16
                    TabIndex =4
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="Notes"
                    ControlSource ="Notes"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    LayoutCachedLeft =2385
                    LayoutCachedTop =4065
                    LayoutCachedWidth =5265
                    LayoutCachedHeight =5250
                    RowStart =6
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
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =9615
                    Top =1425
                    Width =2085
                    Height =480
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label60"
                    Caption ="Nitrogen:"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =9615
                    LayoutCachedTop =1425
                    LayoutCachedWidth =11700
                    LayoutCachedHeight =1905
                    RowStart =2
                    RowEnd =2
                    ColumnStart =5
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
                    Left =9615
                    Top =2085
                    Width =2085
                    Height =480
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label63"
                    Caption ="Oxygen:"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =9615
                    LayoutCachedTop =2085
                    LayoutCachedWidth =11700
                    LayoutCachedHeight =2565
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
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =9615
                    Top =2745
                    Width =2085
                    Height =480
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label66"
                    Caption ="Phosphorous:"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =9615
                    LayoutCachedTop =2745
                    LayoutCachedWidth =11700
                    LayoutCachedHeight =3225
                    RowStart =4
                    RowEnd =4
                    ColumnStart =5
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
                    Left =9615
                    Top =3405
                    Width =2085
                    Height =480
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label69"
                    Caption ="Silicon:"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =9615
                    LayoutCachedTop =3405
                    LayoutCachedWidth =11700
                    LayoutCachedHeight =3885
                    RowStart =5
                    RowEnd =5
                    ColumnStart =5
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
                    Left =9615
                    Top =6045
                    Width =2085
                    Height =486
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label81"
                    Caption ="All Others:"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =9615
                    LayoutCachedTop =6045
                    LayoutCachedWidth =11700
                    LayoutCachedHeight =6531
                    RowStart =9
                    RowEnd =9
                    ColumnStart =5
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
                    Left =9615
                    Top =4065
                    Width =2085
                    Height =525
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label72"
                    Caption ="Sodium:"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =9615
                    LayoutCachedTop =4065
                    LayoutCachedWidth =11700
                    LayoutCachedHeight =4590
                    RowStart =6
                    RowEnd =6
                    ColumnStart =5
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
                    Left =9615
                    Top =4770
                    Width =2085
                    Height =480
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label75"
                    Caption ="Sulfur:"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =9615
                    LayoutCachedTop =4770
                    LayoutCachedWidth =11700
                    LayoutCachedHeight =5250
                    RowStart =7
                    RowEnd =7
                    ColumnStart =5
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
                    Left =9615
                    Top =5430
                    Width =2085
                    Height =435
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label78"
                    Caption ="Zinc:"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =9615
                    LayoutCachedTop =5430
                    LayoutCachedWidth =11700
                    LayoutCachedHeight =5865
                    RowStart =8
                    RowEnd =8
                    ColumnStart =5
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
                    Left =240
                    Top =5430
                    Width =2088
                    Height =435
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label84"
                    Caption ="Laboratory:"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =240
                    LayoutCachedTop =5430
                    LayoutCachedWidth =2328
                    LayoutCachedHeight =5865
                    RowStart =8
                    RowEnd =8
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =240
                    Top =4065
                    Width =2088
                    Height =525
                    FontSize =14
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label90"
                    Caption ="Notes:"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =240
                    LayoutCachedTop =4065
                    LayoutCachedWidth =2328
                    LayoutCachedHeight =4590
                    RowStart =6
                    RowEnd =6
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =9615
                    Top =6705
                    Width =4230
                    Height =1146
                    Name ="EmptyCell363"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =9615
                    LayoutCachedTop =6705
                    LayoutCachedWidth =13845
                    LayoutCachedHeight =7851
                    RowStart =10
                    RowEnd =11
                    ColumnStart =5
                    ColumnEnd =6
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2385
                    Top =5430
                    Width =2880
                    Height =435
                    FontSize =16
                    TabIndex =5
                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"300\""
                    Name ="laboratory"
                    ControlSource ="laboratory"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tblLABORATORIES.ID, tblLABORATORIES.nameLab FROM tblLABORATORIES WHERE (("
                        "(tblLABORATORIES.testingAvailable.Value)=2)) ORDER BY tblLABORATORIES.nameLab; "
                    ColumnWidths ="0;1440"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =2385
                    LayoutCachedTop =5430
                    LayoutCachedWidth =5265
                    LayoutCachedHeight =5865
                    RowStart =8
                    RowEnd =8
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
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2385
                    Top =2085
                    Width =2880
                    Height =480
                    FontSize =16
                    TabIndex =2
                    ColumnInfo ="\"\";\"\";\"Part Number\";\"\";\"10\";\"510\""
                    Name ="testPart"
                    ControlSource ="testPart"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tblPARTNUM.ID, tblPARTNUM.partNum FROM tblPARTNUM ORDER BY tblPARTNUM.par"
                        "tNum; "
                    ColumnWidths ="0;1440"
                    StatusBarText ="Talon part number tested (if applicable)"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =2385
                    LayoutCachedTop =2085
                    LayoutCachedWidth =5265
                    LayoutCachedHeight =2565
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
                            Left =240
                            Top =2085
                            Width =2088
                            Height =480
                            FontSize =14
                            TopMargin =43
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label9"
                            Caption ="Part Number:"
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =240
                            LayoutCachedTop =2085
                            LayoutCachedWidth =2328
                            LayoutCachedHeight =2565
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
                Begin EmptyCell
                    Left =240
                    Top =3405
                    Width =2088
                    Height =480
                    Name ="EmptyCell382"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =240
                    LayoutCachedTop =3405
                    LayoutCachedWidth =2328
                    LayoutCachedHeight =3885
                    RowStart =5
                    RowEnd =5
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =240
                    Top =4770
                    Width =2088
                    Height =480
                    Name ="EmptyCell394"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =240
                    LayoutCachedTop =4770
                    LayoutCachedWidth =2328
                    LayoutCachedHeight =5250
                    RowStart =7
                    RowEnd =7
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =11760
                    Top =8025
                    Width =2085
                    Height =510
                    TabIndex =29
                    ForeColor =6710886
                    Name ="Command396"
                    Caption ="Command396"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Add Record"
                    GroupTable =1
                    BottomPadding =150
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
                    LayoutCachedLeft =11760
                    LayoutCachedTop =8025
                    LayoutCachedWidth =13845
                    LayoutCachedHeight =8535
                    RowStart =12
                    RowEnd =12
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
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =9
                    Overlaps =1
                End
                Begin EmptyCell
                    Left =240
                    Top =180
                    Width =5025
                    Height =405
                    Name ="EmptyCell405"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =240
                    LayoutCachedTop =180
                    LayoutCachedWidth =5265
                    LayoutCachedHeight =585
                    ColumnEnd =2
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin Label
                    FontUnderline = NotDefault
                    OverlapFlags =85
                    TextAlign =2
                    Left =5325
                    Top =180
                    Width =8520
                    Height =405
                    FontSize =14
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label411"
                    Caption ="Concentrations (atm %)"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =5325
                    LayoutCachedTop =180
                    LayoutCachedWidth =13845
                    LayoutCachedHeight =585
                    ColumnStart =3
                    ColumnEnd =6
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =2805
                    Top =1425
                    Width =2460
                    Height =480
                    Name ="EmptyCell414"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =2805
                    LayoutCachedTop =1425
                    LayoutCachedWidth =5265
                    LayoutCachedHeight =1905
                    RowStart =2
                    RowEnd =2
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =240
                    Top =8025
                    Width =11460
                    Height =510
                    Name ="EmptyCell418"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =240
                    LayoutCachedTop =8025
                    LayoutCachedWidth =11700
                    LayoutCachedHeight =8535
                    RowStart =12
                    RowEnd =12
                    ColumnEnd =5
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

Private Sub Command396_Click()

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
    End If
    
End Sub

Private Sub Form_Load()
    timeDate.SetFocus
End Sub

Private Sub rnd_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

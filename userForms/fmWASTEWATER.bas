Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
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
    Width =13434
    DatasheetFontHeight =11
    ItemSuffix =524
    Left =3300
    Top =1410
    Right =22515
    Bottom =10080
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0x8eeac3b45164e540
    End
    Caption ="Waste Water"
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
            Height =7680
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =4215
                    Top =720
                    Width =6090
                    Height =480
                    FontSize =18
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="timeDate"
                    Format ="General Date"
                    StatusBarText ="Date that sample was taken"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =4215
                    LayoutCachedTop =720
                    LayoutCachedWidth =10305
                    LayoutCachedHeight =1200
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
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
                            Left =60
                            Top =720
                            Width =4092
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
                            LayoutCachedTop =720
                            LayoutCachedWidth =4152
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
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =4215
                    Top =2490
                    Height =480
                    FontSize =18
                    TabIndex =2
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="lvlHg"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =4215
                    LayoutCachedTop =2490
                    LayoutCachedWidth =5655
                    LayoutCachedHeight =2970
                    RowStart =4
                    RowEnd =4
                    ColumnStart =1
                    ColumnEnd =1
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
                            Top =2490
                            Width =4092
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label9"
                            Caption ="Mercury:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =60
                            LayoutCachedTop =2490
                            LayoutCachedWidth =4152
                            LayoutCachedHeight =2970
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
                    Left =4215
                    Top =3030
                    Height =480
                    FontSize =18
                    TabIndex =3
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="lvlAs"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =4215
                    LayoutCachedTop =3030
                    LayoutCachedWidth =5655
                    LayoutCachedHeight =3510
                    RowStart =5
                    RowEnd =5
                    ColumnStart =1
                    ColumnEnd =1
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
                            Top =3030
                            Width =4092
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label12"
                            Caption ="Arsenic:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =60
                            LayoutCachedTop =3030
                            LayoutCachedWidth =4152
                            LayoutCachedHeight =3510
                            RowStart =5
                            RowEnd =5
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
                    Left =4215
                    Top =3570
                    Height =480
                    FontSize =18
                    TabIndex =4
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="lvlCd"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =4215
                    LayoutCachedTop =3570
                    LayoutCachedWidth =5655
                    LayoutCachedHeight =4050
                    RowStart =6
                    RowEnd =6
                    ColumnStart =1
                    ColumnEnd =1
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
                            Top =3570
                            Width =4092
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label15"
                            Caption ="Cadmium:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =60
                            LayoutCachedTop =3570
                            LayoutCachedWidth =4152
                            LayoutCachedHeight =4050
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
                    Left =4215
                    Top =4650
                    Height =480
                    FontSize =18
                    TabIndex =6
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="lvlCu"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =4215
                    LayoutCachedTop =4650
                    LayoutCachedWidth =5655
                    LayoutCachedHeight =5130
                    RowStart =8
                    RowEnd =8
                    ColumnStart =1
                    ColumnEnd =1
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
                            Top =4650
                            Width =4092
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label18"
                            Caption ="Copper:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =60
                            LayoutCachedTop =4650
                            LayoutCachedWidth =4152
                            LayoutCachedHeight =5130
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
                    Left =4215
                    Top =5190
                    Height =480
                    FontSize =18
                    TabIndex =7
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="lvlPb"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =4215
                    LayoutCachedTop =5190
                    LayoutCachedWidth =5655
                    LayoutCachedHeight =5670
                    RowStart =9
                    RowEnd =9
                    ColumnStart =1
                    ColumnEnd =1
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
                            Top =5190
                            Width =4092
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label21"
                            Caption ="Lead:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =60
                            LayoutCachedTop =5190
                            LayoutCachedWidth =4152
                            LayoutCachedHeight =5670
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
                    Left =4215
                    Top =5730
                    Height =480
                    FontSize =18
                    TabIndex =8
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="lvlMo"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =4215
                    LayoutCachedTop =5730
                    LayoutCachedWidth =5655
                    LayoutCachedHeight =6210
                    RowStart =10
                    RowEnd =10
                    ColumnStart =1
                    ColumnEnd =1
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
                            Top =5730
                            Width =4092
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label24"
                            Caption ="Molybdenum:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =60
                            LayoutCachedTop =5730
                            LayoutCachedWidth =4152
                            LayoutCachedHeight =6210
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
                    Left =10365
                    Top =2490
                    Height =480
                    FontSize =18
                    TabIndex =9
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="lvlNi"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =10365
                    LayoutCachedTop =2490
                    LayoutCachedWidth =11805
                    LayoutCachedHeight =2970
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
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =7215
                            Top =2490
                            Width =3090
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label27"
                            Caption ="Nickel:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =7215
                            LayoutCachedTop =2490
                            LayoutCachedWidth =10305
                            LayoutCachedHeight =2970
                            RowStart =4
                            RowEnd =4
                            ColumnStart =3
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
                    Left =10365
                    Top =3030
                    Height =480
                    FontSize =18
                    TabIndex =10
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="lvlSe"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =10365
                    LayoutCachedTop =3030
                    LayoutCachedWidth =11805
                    LayoutCachedHeight =3510
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
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =7215
                            Top =3030
                            Width =3090
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label30"
                            Caption ="Selenium:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =7215
                            LayoutCachedTop =3030
                            LayoutCachedWidth =10305
                            LayoutCachedHeight =3510
                            RowStart =5
                            RowEnd =5
                            ColumnStart =3
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
                    Left =10365
                    Top =3570
                    Height =480
                    FontSize =18
                    TabIndex =11
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="lvlAg"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =10365
                    LayoutCachedTop =3570
                    LayoutCachedWidth =11805
                    LayoutCachedHeight =4050
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
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =7215
                            Top =3570
                            Width =3090
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label33"
                            Caption ="Silver:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =7215
                            LayoutCachedTop =3570
                            LayoutCachedWidth =10305
                            LayoutCachedHeight =4050
                            RowStart =6
                            RowEnd =6
                            ColumnStart =3
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
                    Left =10365
                    Top =4110
                    Height =480
                    FontSize =18
                    TabIndex =12
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="lvlZn"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =10365
                    LayoutCachedTop =4110
                    LayoutCachedWidth =11805
                    LayoutCachedHeight =4590
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
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =7215
                            Top =4110
                            Width =3090
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label36"
                            Caption ="Zinc:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =7215
                            LayoutCachedTop =4110
                            LayoutCachedWidth =10305
                            LayoutCachedHeight =4590
                            RowStart =7
                            RowEnd =7
                            ColumnStart =3
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
                    Left =10365
                    Top =5190
                    Height =480
                    FontSize =18
                    TabIndex =14
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="lvlTotSuspSolids"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =10365
                    LayoutCachedTop =5190
                    LayoutCachedWidth =11805
                    LayoutCachedHeight =5670
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
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =7215
                            Top =5190
                            Width =3090
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label39"
                            Caption ="Total Suspended Solids:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =7215
                            LayoutCachedTop =5190
                            LayoutCachedWidth =10305
                            LayoutCachedHeight =5670
                            RowStart =9
                            RowEnd =9
                            ColumnStart =3
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
                    Left =10365
                    Top =5730
                    Height =480
                    FontSize =18
                    TabIndex =15
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="lvlP"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =10365
                    LayoutCachedTop =5730
                    LayoutCachedWidth =11805
                    LayoutCachedHeight =6210
                    RowStart =10
                    RowEnd =10
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
                            Left =7215
                            Top =5730
                            Width =3090
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label42"
                            Caption ="Phosphorous:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =7215
                            LayoutCachedTop =5730
                            LayoutCachedWidth =10305
                            LayoutCachedHeight =6210
                            RowStart =10
                            RowEnd =10
                            ColumnStart =3
                            ColumnEnd =5
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
                    Left =4215
                    Top =1260
                    Width =6090
                    Height =480
                    FontSize =18
                    TabIndex =1
                    ColumnInfo ="\"\";\"\";\"Laboratory\";\"\";\"10\";\"300\""
                    Name ="laboratory"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tblLABORATORIES.ID, tblLABORATORIES.nameLab FROM tblLABORATORIES ORDER BY"
                        " tblLABORATORIES.nameLab; "
                    ColumnWidths ="0;1440"
                    StatusBarText ="Laboratory that processed results"
                    GroupTable =1
                    GridlineColor =10921638
                    AllowValueListEdits =0
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =4215
                    LayoutCachedTop =1260
                    LayoutCachedWidth =10305
                    LayoutCachedHeight =1740
                    RowStart =2
                    RowEnd =2
                    ColumnStart =1
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
                            Top =1260
                            Width =4092
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
                            LayoutCachedTop =1260
                            LayoutCachedWidth =4152
                            LayoutCachedHeight =1740
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
                Begin CommandButton
                    Default = NotDefault
                    OverlapFlags =85
                    Left =5715
                    Top =6600
                    Width =1800
                    Height =420
                    TabIndex =16
                    ForeColor =6710886
                    Name ="Command51"
                    Caption ="Command51"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Add Record"
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
                    LayoutCachedLeft =5715
                    LayoutCachedTop =6600
                    LayoutCachedWidth =7515
                    LayoutCachedHeight =7020
                    RowStart =11
                    RowEnd =11
                    ColumnStart =2
                    ColumnEnd =4
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
                Begin EmptyCell
                    Left =10365
                    Top =60
                    Width =2940
                    Height =1680
                    Name ="EmptyCell58"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =10365
                    LayoutCachedTop =60
                    LayoutCachedWidth =13305
                    LayoutCachedHeight =1740
                    RowEnd =2
                    ColumnStart =6
                    ColumnEnd =7
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =5715
                    Top =7080
                    Width =1800
                    Height =420
                    TabIndex =17
                    ForeColor =6710886
                    Name ="Command121"
                    Caption ="Command121"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Undo Record"
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
                    LayoutCachedLeft =5715
                    LayoutCachedTop =7080
                    LayoutCachedWidth =7515
                    LayoutCachedHeight =7500
                    RowStart =12
                    RowEnd =12
                    ColumnStart =2
                    ColumnEnd =4
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
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =4215
                    Top =4110
                    Height =480
                    FontSize =18
                    TabIndex =5
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="lvlCr"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =4215
                    LayoutCachedTop =4110
                    LayoutCachedWidth =5655
                    LayoutCachedHeight =4590
                    RowStart =7
                    RowEnd =7
                    ColumnStart =1
                    ColumnEnd =1
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
                            Top =4110
                            Width =4092
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label175"
                            Caption ="Chromium:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =60
                            LayoutCachedTop =4110
                            LayoutCachedWidth =4152
                            LayoutCachedHeight =4590
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
                    Left =10365
                    Top =4650
                    Height =480
                    FontSize =18
                    TabIndex =13
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="lvlBOD"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =10365
                    LayoutCachedTop =4650
                    LayoutCachedWidth =11805
                    LayoutCachedHeight =5130
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
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =7215
                            Top =4650
                            Width =3090
                            Height =480
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label189"
                            Caption ="Carbonaeous BOD:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =7215
                            LayoutCachedTop =4650
                            LayoutCachedWidth =10305
                            LayoutCachedHeight =5130
                            RowStart =8
                            RowEnd =8
                            ColumnStart =3
                            ColumnEnd =5
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
                    Left =7365
                    Top =60
                    Width =2940
                    Height =479
                    FontSize =16
                    FontWeight =700
                    LeftMargin =360
                    RightMargin =144
                    BorderColor =11316396
                    ForeColor =3355443
                    Name ="lblNEXT"
                    Caption ="1/20/2021"
                    GroupTable =1
                    BottomPadding =144
                    GridlineColor =16730623
                    LayoutCachedLeft =7365
                    LayoutCachedTop =60
                    LayoutCachedWidth =10305
                    LayoutCachedHeight =539
                    ColumnStart =4
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
                    Width =7245
                    Height =479
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
                    LayoutCachedWidth =7305
                    LayoutCachedHeight =539
                    ColumnEnd =3
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
                    Top =1950
                    Width =13245
                    Height =330
                    FontSize =12
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
                    LayoutCachedTop =1950
                    LayoutCachedWidth =13305
                    LayoutCachedHeight =2280
                    RowStart =3
                    RowEnd =3
                    ColumnEnd =7
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    ForeTint =80.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =5715
                    Top =2490
                    Width =1440
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label481"
                    Caption ="ng/L"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =5715
                    LayoutCachedTop =2490
                    LayoutCachedWidth =7155
                    LayoutCachedHeight =2970
                    RowStart =4
                    RowEnd =4
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =5715
                    Top =3030
                    Width =1440
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label482"
                    Caption ="μg/L"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =5715
                    LayoutCachedTop =3030
                    LayoutCachedWidth =7155
                    LayoutCachedHeight =3510
                    RowStart =5
                    RowEnd =5
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =5715
                    Top =3570
                    Width =1440
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label483"
                    Caption ="μg/L"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =5715
                    LayoutCachedTop =3570
                    LayoutCachedWidth =7155
                    LayoutCachedHeight =4050
                    RowStart =6
                    RowEnd =6
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =5715
                    Top =4110
                    Width =1440
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label484"
                    Caption ="μg/L"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =5715
                    LayoutCachedTop =4110
                    LayoutCachedWidth =7155
                    LayoutCachedHeight =4590
                    RowStart =7
                    RowEnd =7
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =5715
                    Top =4650
                    Width =1440
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label485"
                    Caption ="μg/L"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =5715
                    LayoutCachedTop =4650
                    LayoutCachedWidth =7155
                    LayoutCachedHeight =5130
                    RowStart =8
                    RowEnd =8
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =5715
                    Top =5190
                    Width =1440
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label486"
                    Caption ="μg/L"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =5715
                    LayoutCachedTop =5190
                    LayoutCachedWidth =7155
                    LayoutCachedHeight =5670
                    RowStart =9
                    RowEnd =9
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =5715
                    Top =5730
                    Width =1440
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label487"
                    Caption ="μg/L"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =5715
                    LayoutCachedTop =5730
                    LayoutCachedWidth =7155
                    LayoutCachedHeight =6210
                    RowStart =10
                    RowEnd =10
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =11865
                    Top =2490
                    Width =1440
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label500"
                    Caption ="μg/L"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =11865
                    LayoutCachedTop =2490
                    LayoutCachedWidth =13305
                    LayoutCachedHeight =2970
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
                    Left =11865
                    Top =3030
                    Width =1440
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label501"
                    Caption ="μg/L"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =11865
                    LayoutCachedTop =3030
                    LayoutCachedWidth =13305
                    LayoutCachedHeight =3510
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
                    Left =11865
                    Top =3570
                    Width =1440
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label502"
                    Caption ="μg/L"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =11865
                    LayoutCachedTop =3570
                    LayoutCachedWidth =13305
                    LayoutCachedHeight =4050
                    RowStart =6
                    RowEnd =6
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
                    Left =11865
                    Top =4110
                    Width =1440
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label503"
                    Caption ="μg/L"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =11865
                    LayoutCachedTop =4110
                    LayoutCachedWidth =13305
                    LayoutCachedHeight =4590
                    RowStart =7
                    RowEnd =7
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
                    Left =11865
                    Top =4650
                    Width =1440
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label504"
                    Caption ="mg/L"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =11865
                    LayoutCachedTop =4650
                    LayoutCachedWidth =13305
                    LayoutCachedHeight =5130
                    RowStart =8
                    RowEnd =8
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
                    Left =11865
                    Top =5190
                    Width =1440
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label505"
                    Caption ="mg/L"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =11865
                    LayoutCachedTop =5190
                    LayoutCachedWidth =13305
                    LayoutCachedHeight =5670
                    RowStart =9
                    RowEnd =9
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
                    Left =11865
                    Top =5730
                    Width =1440
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label506"
                    Caption ="mg/L"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =11865
                    LayoutCachedTop =5730
                    LayoutCachedWidth =13305
                    LayoutCachedHeight =6210
                    RowStart =10
                    RowEnd =10
                    ColumnStart =7
                    ColumnEnd =7
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =60
                    Top =6600
                    Width =5595
                    Height =900
                    Name ="EmptyCell519"
                    GroupTable =1
                    TopPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =60
                    LayoutCachedTop =6600
                    LayoutCachedWidth =5655
                    LayoutCachedHeight =7500
                    RowStart =11
                    RowEnd =12
                    ColumnEnd =1
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =7575
                    Top =6600
                    Width =5730
                    Height =900
                    Name ="EmptyCell521"
                    GroupTable =1
                    TopPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =7575
                    LayoutCachedTop =6600
                    LayoutCachedWidth =13305
                    LayoutCachedHeight =7500
                    RowStart =11
                    RowEnd =12
                    ColumnStart =5
                    ColumnEnd =7
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
    
    timeDate = Null
    laboratory = Null
    lvlHg = Null
    lvlAs = Null
    lvlCd = Null
    lvlCr = Null
    lvlCu = Null
    lvlPb = Null
    lvlMo = Null
    lvlNi = Null
    lvlSe = Null
    lvlAg = Null
    lvlZn = Null
    lvlTotSuspSolids = Null
    lvlP = Null
    lvlBOD = Null
    timeDate.SetFocus
    
End Sub

Private Sub Command51_Click()
On Error GoTo Macro1_Err

Dim calDate As Date
Dim cqryDate As Date
Dim queryName As String
Dim sMessage As String
Dim dPhos As Double
Dim opSelect As Integer
Dim sTbl As String
Dim sVal As String
Dim sP As String
Dim sN As String

queryName = "dupWASTEWATER"
sTbl = "tblWASTEWATER"
sP = ", "
sN = "Null"

    calDate = Nz(Trim(timeDate.Value), 0)

    If calDate = 0 Then
        MsgBox "Enter the date sample was taken.", vbOKOnly, "Missing Info"
        timeDate.SetFocus
    ElseIf IsNull(laboratory) = True Then
        MsgBox "Enter the laboratory.", vbOKOnly, "Missing Info"
        laboratory.SetFocus
    Else:
    
        If ckIncomplete("lvl*", Me, True, 1) = False Then 'check for empties
            With Me
                sVal = "#" & calDate & "#, " & Nz(.laboratory, sN) & sP & Nz(.lvlHg, sN) & sP & Nz(.lvlAs, sN) & sP & Nz(.lvlCd, sN) & sP & Nz(.lvlCr, sN) & sP & Nz(.lvlCu, sN) & sP & _
                        Nz(.lvlPb, sN) & sP & Nz(.lvlMo, sN) & sP & Nz(.lvlNi, sN) & sP & Nz(.lvlSe, sN) & sP & Nz(.lvlAg, sN) & sP & Nz(.lvlZn, sN) & sP & Nz(.lvlTotSuspSolids, sN) & sP & Nz(.lvlP, sN) & sP & Nz(.lvlBOD, sN)
            End With
            
            
        On Error GoTo recAddErr:
            Call dupPartEntry(queryName, Me.timeDate, sTbl, sVal, "", Empty)
            Call Command121_Click
            Call Form_Load
            
        End If
    End If
    
Macro1_Exit:
    Exit Sub

Macro1_Err:
    MsgBox Error$
    Resume Macro1_Exit

mesBoxErr:
    MsgBox "There was an error when creating an alert popup.", vbOKOnly, "Error"
    Resume Macro1_Exit
    
recAddErr:
    MsgBox "A record was unable to be added to the table.", vbOKOnly, "Error"
    Resume Macro1_Exit

End Sub

Private Sub Form_Load()
Dim taskID As Long
Dim nextDate As Date

taskID = 15 'assigned task ID number

    nextDate = nextTestDate(taskID)
    lblNEXT.Caption = nextDate
    
End Sub

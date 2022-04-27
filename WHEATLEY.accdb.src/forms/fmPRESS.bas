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
    Width =17055
    DatasheetFontHeight =11
    ItemSuffix =1051
    Left =-15
    Top =825
    Right =24360
    Bottom =13470
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0x2f55cc7a9514e540
    End
    Caption ="Press Fixture Search"
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
            BorderShade =65.0
            ForeTint =75.0
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
            Height =6765
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =10530
                    Top =585
                    Width =3915
                    Height =516
                    FontSize =18
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtPART"
                    AfterUpdate ="[Event Procedure]"
                    GroupTable =3
                    BottomPadding =288
                    GridlineColor =10921638

                    LayoutCachedLeft =10530
                    LayoutCachedTop =585
                    LayoutCachedWidth =14445
                    LayoutCachedHeight =1101
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =3
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =585
                    Width =10440
                    Height =516
                    FontSize =18
                    BackColor =15513668
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label336"
                    Caption ="Part #:"
                    GroupTable =3
                    BottomPadding =288
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =585
                    LayoutCachedWidth =10470
                    LayoutCachedHeight =1101
                    RowStart =1
                    RowEnd =1
                    ColumnEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =3
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =1425
                    Width =10440
                    Height =504
                    FontSize =18
                    BackColor =15513668
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label342"
                    Caption ="Top #:"
                    GroupTable =3
                    BottomPadding =288
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =1425
                    LayoutCachedWidth =10470
                    LayoutCachedHeight =1929
                    RowStart =2
                    RowEnd =2
                    ColumnEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =3
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =2265
                    Width =10440
                    Height =504
                    FontSize =18
                    BackColor =15513668
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label348"
                    Caption ="Bottom #:"
                    GroupTable =3
                    BottomPadding =288
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =2265
                    LayoutCachedWidth =10470
                    LayoutCachedHeight =2769
                    RowStart =3
                    RowEnd =3
                    ColumnEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =3
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =10530
                    Top =1425
                    Width =3915
                    Height =504
                    FontSize =18
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtTOP"
                    GroupTable =3
                    BottomPadding =288
                    GridlineColor =10921638
                    LayoutCachedLeft =10530
                    LayoutCachedTop =1425
                    LayoutCachedWidth =14445
                    LayoutCachedHeight =1929
                    RowStart =2
                    RowEnd =2
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =95.0
                    BorderThemeColorIndex =7
                    BorderTint =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =3
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =10530
                    Top =2265
                    Width =3915
                    Height =504
                    FontSize =18
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtBOTTOM"
                    GroupTable =3
                    BottomPadding =288
                    GridlineColor =10921638
                    LayoutCachedLeft =10530
                    LayoutCachedTop =2265
                    LayoutCachedWidth =14445
                    LayoutCachedHeight =2769
                    RowStart =3
                    RowEnd =3
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =95.0
                    BorderThemeColorIndex =7
                    BorderTint =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =3
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =8925
                    Top =5355
                    Width =5520
                    Height =570
                    FontSize =18
                    TabIndex =4
                    ForeColor =3355443
                    Name ="cmdSETUP"
                    Caption ="Process Layout"
                    OnClick ="[Event Procedure]"
                    GroupTable =3
                    TopPadding =360
                    GridlineColor =10921638

                    CursorOnHover =1
                    LayoutCachedLeft =8925
                    LayoutCachedTop =5355
                    LayoutCachedWidth =14445
                    LayoutCachedHeight =5925
                    RowStart =5
                    RowEnd =5
                    ColumnStart =1
                    ColumnEnd =2
                    LayoutGroup =1
                    ForeTint =100.0
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
                    GroupTable =3
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =24
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =8925
                    Top =5985
                    Width =5520
                    Height =570
                    FontSize =18
                    TabIndex =5
                    ForeColor =3355443
                    Name ="cmdUNDO"
                    Caption ="Clear"
                    OnClick ="[Event Procedure]"
                    GroupTable =3
                    GridlineColor =10921638

                    CursorOnHover =1
                    LayoutCachedLeft =8925
                    LayoutCachedTop =5985
                    LayoutCachedWidth =14445
                    LayoutCachedHeight =6555
                    RowStart =6
                    RowEnd =6
                    ColumnStart =1
                    ColumnEnd =2
                    LayoutGroup =1
                    ForeTint =100.0
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
                    GroupTable =3
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin EmptyCell
                    Left =30
                    Top =5355
                    Width =8835
                    Height =1200
                    Name ="EmptyCell777"
                    GroupTable =3
                    TopPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =5355
                    LayoutCachedWidth =8865
                    LayoutCachedHeight =6555
                    RowStart =5
                    RowEnd =6
                    LayoutGroup =1
                    GroupTable =3
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =3105
                    Width =10440
                    Height =1860
                    FontSize =18
                    BackColor =15513668
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label946"
                    Caption ="Staking Tool:"
                    GroupTable =3
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =3105
                    LayoutCachedWidth =10470
                    LayoutCachedHeight =4965
                    RowStart =4
                    RowEnd =4
                    ColumnEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =3
                End
                Begin ListBox
                    TabStop = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =10530
                    Top =3105
                    Width =3915
                    Height =1860
                    FontSize =18
                    TabIndex =3
                    Name ="txtTOOL"
                    RowSourceType ="Table/Query"
                    ColumnWidths ="0;2880"
                    GroupTable =3
                    AllowValueListEdits =0

                    LayoutCachedLeft =10530
                    LayoutCachedTop =3105
                    LayoutCachedWidth =14445
                    LayoutCachedHeight =4965
                    RowStart =4
                    RowEnd =4
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =95.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeThemeColorIndex =0
                    ForeTint =100.0
                    ForeShade =75.0
                    GridlineThemeColorIndex =1
                    GroupTable =3
                End
                Begin EmptyCell
                    Left =14505
                    Top =3105
                    Width =2520
                    Height =3450
                    Name ="EmptyCell998"
                    GroupTable =3
                    GridlineColor =10921638
                    LayoutCachedLeft =14505
                    LayoutCachedTop =3105
                    LayoutCachedWidth =17025
                    LayoutCachedHeight =6555
                    RowStart =4
                    RowEnd =6
                    ColumnStart =3
                    ColumnEnd =4
                    LayoutGroup =1
                    GroupTable =3
                End
                Begin CommandButton
                    Visible = NotDefault
                    Enabled = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =14505
                    Top =1425
                    Width =945
                    Height =504
                    FontSize =18
                    TabIndex =1
                    ForeColor =3355443
                    Name ="cmdPicTop"
                    Caption ="Info"
                    OnClick ="[Event Procedure]"
                    GroupTable =3
                    BottomPadding =288
                    GridlineColor =10921638
                    ImageData = Begin
                        0x2800000010000000100000000100200000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000b17d4a3cb17d4af2b17d4aff ,
                        0xb17d4a8b00000000000000000000000000000000000000000000000000000000 ,
                        0x000000000000000000000000000000000000000000000000b17d4a3cb17d4af2 ,
                        0xb17d4affb17d4a7e000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000b17d4a0fb17d4affb17d4affb17d4affb17d4affb17d4aff ,
                        0xb17d4affb17d4affb17d4a5bb17d4aefb17d4a79000000000000000000000000 ,
                        0x0000000000000000b17d4a0fb17d4affb17d4affb17d4affb17d4affb17d4aff ,
                        0xb17d4affb17d4affb17d4aeab17d4affb17d4affb17d4a99b17d4a0400000000 ,
                        0x000000000000000000000000000000000000000000000000b17d4a3cb17d4af3 ,
                        0xb17d4affb17d4a7db17d4a41b17d4af1b17d4affb17d4affb17d4ab6b17d4a0c ,
                        0x0000000000000000000000000000000000000000b17d4a3cb17d4af3b17d4aff ,
                        0xb17d4a8a0000000000000000b17d4a2eb17d4ae6b17d4affb17d4affb17d4ace ,
                        0xb17d4a7db17d4adcb17d4afbb17d4adcb17d4a81b17d4a090000000000000000 ,
                        0x00000000000000000000000000000000b17d4a1fb17d4ad7b17d4affb17d4aff ,
                        0xb27f4cfccdac8cf6dcc4adffcdac8bf6b27f4cfcb17d4ac5b17d4a0a00000000 ,
                        0x0000000000000000000000000000000000000000b17d4a12b17d4ad6b17e4bfd ,
                        0xebded1ffffffffffffffffffffffffffebded2ffb17e4bfdb17d4a8100000000 ,
                        0x000000000000000000000000000000000000000000000000b17d4adbcdab8bf7 ,
                        0xffffffffffffffffffffffffffffffffffffffffcdab8bf7b17d4ade00000000 ,
                        0x000000000000000000000000000000000000000000000000b17d4af9dbc3acff ,
                        0xffffffffffffffffffffffffffffffffffffffffdbc3acffb17d4af900000000 ,
                        0x000000000000000000000000000000000000000000000000b17d4adccdab8af7 ,
                        0xffffffffffffffffffffffffffffffffffffffffcdab8bf7b17d4ade00000000 ,
                        0x000000000000000000000000000000000000000000000000b17d4a83b17e4bfd ,
                        0xebded1ffffffffffffffffffffffffffebded1ffb17e4bfdb17d4a8000000000 ,
                        0x000000000000000000000000000000000000000000000000b17d4a0ab17d4ac5 ,
                        0xb27f4cfccdab8bf6dbc3abffcdab8bf6b27f4cfcb17d4ac5b17d4a0a00000000 ,
                        0x00000000000000000000000000000000000000000000000000000000b17d4a09 ,
                        0xb17d4a81b17d4adcb17d4af9b17d4adcb17d4a81b17d4a090000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End

                    CursorOnHover =1
                    LayoutCachedLeft =14505
                    LayoutCachedTop =1425
                    LayoutCachedWidth =15450
                    LayoutCachedHeight =1929
                    RowStart =2
                    RowEnd =2
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    ForeTint =100.0
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
                    GroupTable =3
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =18
                    Overlaps =1
                End
                Begin CommandButton
                    Visible = NotDefault
                    Enabled = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =14505
                    Top =2265
                    Width =945
                    Height =504
                    FontSize =18
                    TabIndex =2
                    ForeColor =3355443
                    Name ="cmdPicBot"
                    Caption ="Info"
                    OnClick ="[Event Procedure]"
                    GroupTable =3
                    BottomPadding =288
                    GridlineColor =10921638
                    ImageData = Begin
                        0x2800000010000000100000000100200000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000b17d4a3cb17d4af2b17d4aff ,
                        0xb17d4a8b00000000000000000000000000000000000000000000000000000000 ,
                        0x000000000000000000000000000000000000000000000000b17d4a3cb17d4af2 ,
                        0xb17d4affb17d4a7e000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000b17d4a0fb17d4affb17d4affb17d4affb17d4affb17d4aff ,
                        0xb17d4affb17d4affb17d4a5bb17d4aefb17d4a79000000000000000000000000 ,
                        0x0000000000000000b17d4a0fb17d4affb17d4affb17d4affb17d4affb17d4aff ,
                        0xb17d4affb17d4affb17d4aeab17d4affb17d4affb17d4a99b17d4a0400000000 ,
                        0x000000000000000000000000000000000000000000000000b17d4a3cb17d4af3 ,
                        0xb17d4affb17d4a7db17d4a41b17d4af1b17d4affb17d4affb17d4ab6b17d4a0c ,
                        0x0000000000000000000000000000000000000000b17d4a3cb17d4af3b17d4aff ,
                        0xb17d4a8a0000000000000000b17d4a2eb17d4ae6b17d4affb17d4affb17d4ace ,
                        0xb17d4a7db17d4adcb17d4afbb17d4adcb17d4a81b17d4a090000000000000000 ,
                        0x00000000000000000000000000000000b17d4a1fb17d4ad7b17d4affb17d4aff ,
                        0xb27f4cfccdac8cf6dcc4adffcdac8bf6b27f4cfcb17d4ac5b17d4a0a00000000 ,
                        0x0000000000000000000000000000000000000000b17d4a12b17d4ad6b17e4bfd ,
                        0xebded1ffffffffffffffffffffffffffebded2ffb17e4bfdb17d4a8100000000 ,
                        0x000000000000000000000000000000000000000000000000b17d4adbcdab8bf7 ,
                        0xffffffffffffffffffffffffffffffffffffffffcdab8bf7b17d4ade00000000 ,
                        0x000000000000000000000000000000000000000000000000b17d4af9dbc3acff ,
                        0xffffffffffffffffffffffffffffffffffffffffdbc3acffb17d4af900000000 ,
                        0x000000000000000000000000000000000000000000000000b17d4adccdab8af7 ,
                        0xffffffffffffffffffffffffffffffffffffffffcdab8bf7b17d4ade00000000 ,
                        0x000000000000000000000000000000000000000000000000b17d4a83b17e4bfd ,
                        0xebded1ffffffffffffffffffffffffffebded1ffb17e4bfdb17d4a8000000000 ,
                        0x000000000000000000000000000000000000000000000000b17d4a0ab17d4ac5 ,
                        0xb27f4cfccdab8bf6dbc3abffcdab8bf6b27f4cfcb17d4ac5b17d4a0a00000000 ,
                        0x00000000000000000000000000000000000000000000000000000000b17d4a09 ,
                        0xb17d4a81b17d4adcb17d4af9b17d4adcb17d4a81b17d4a090000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End

                    CursorOnHover =1
                    LayoutCachedLeft =14505
                    LayoutCachedTop =2265
                    LayoutCachedWidth =15450
                    LayoutCachedHeight =2769
                    RowStart =3
                    RowEnd =3
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    ForeTint =100.0
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
                    GroupTable =3
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =18
                    Overlaps =1
                End
                Begin EmptyCell
                    Left =15510
                    Top =585
                    Width =1515
                    Height =2184
                    Name ="EmptyCell1032"
                    GroupTable =3
                    BottomPadding =288
                    GridlineColor =10921638
                    LayoutCachedLeft =15510
                    LayoutCachedTop =585
                    LayoutCachedWidth =17025
                    LayoutCachedHeight =2769
                    RowStart =1
                    RowEnd =3
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =1
                    GroupTable =3
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =30
                    Width =15420
                    Height =495
                    FontSize =16
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label1041"
                    Caption ="Do not know where a particular part is used and which assembly it is used on?"
                    GroupTable =3
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =30
                    LayoutCachedWidth =15450
                    LayoutCachedHeight =525
                    ColumnEnd =3
                    LayoutGroup =1
                    ForeTint =100.0
                    GroupTable =3
                End
                Begin Label
                    FontUnderline = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =15510
                    Top =30
                    Width =1515
                    Height =495
                    FontSize =16
                    BorderColor =10066329
                    Name ="Label1042"
                    Caption ="Click here"
                    OnClick ="[Event Procedure]"
                    OnMouseMove ="[Event Procedure]"
                    GroupTable =3
                    GridlineColor =10921638
                    LayoutCachedLeft =15510
                    LayoutCachedTop =30
                    LayoutCachedWidth =17025
                    LayoutCachedHeight =525
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =1
                    BorderThemeColorIndex =-1
                    ForeThemeColorIndex =8
                    ForeTint =100.0
                    GroupTable =3
                End
                Begin EmptyCell
                    Left =14505
                    Top =585
                    Width =945
                    Height =516
                    Name ="EmptyCell1043"
                    GroupTable =3
                    BottomPadding =288
                    GridlineColor =10921638
                    LayoutCachedLeft =14505
                    LayoutCachedTop =585
                    LayoutCachedWidth =15450
                    LayoutCachedHeight =1101
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
                    GroupTable =3
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
Public fileName As String
Public sPartFile As String
Public pageNum As Long
Public hyTop As String
Public hyBot As String ' used to store hyperlinks to PDFs of top and bottom parts
Public lTop As String
Public lBot As String

Private Sub cmdPicBot_Click()
Dim db As DAO.Database
Dim qdf As DAO.QueryDef
Dim rs As DAO.Recordset
Dim qryName As String

qryName = "qryPRESS"

'opens individual part's PDF if available
'checks variable and reassigns if missing
    If (IsNull(hyBot) = False) And (hyBot <> "") Then
        Call pdfOpen(hyBot, 1)
    Else:
        Set db = CurrentDb
        Set qdf = db.QueryDefs(qryName)
        Set rs = qdf.OpenRecordset
        
        With rs
            .MoveFirst
            lBot = Nz(![partBot])
            hyBot = indPDF0107(lBot, True)
            If (IsNull(hyBot) = False) And (hyBot <> "") Then
                Call pdfOpen(hyBot, 1)
            End If
            .Close
        End With
        qdf.Close
        db.Close
    End If
End Sub

Private Sub cmdPicTop_Click()
Dim db As DAO.Database
Dim qdf As DAO.QueryDef
Dim rs As DAO.Recordset
Dim qryName As String

qryName = "qryPRESS"

'opens individual part's PDF if available
'checks variable and reassigns if missing
    If (IsNull(hyTop) = False) And (hyTop <> "") Then
        Call pdfOpen(hyTop, 1)
    Else:
        Set db = CurrentDb
        Set qdf = db.QueryDefs(qryName)
        Set rs = qdf.OpenRecordset
        
        With rs
            .MoveFirst
            lTop = Nz(![partTop])
            hyTop = indPDF0107(lTop, True)
            If (IsNull(hyTop) = False) And (hyTop <> "") Then
                Call pdfOpen(hyTop, 1)
            End If
            .Close
        End With
        qdf.Close
        db.Close
    End If
End Sub

Private Sub cmdSETUP_Click()
    Call pdfOpen(fileName, pageNum)
End Sub

Private Sub cmdUndo_Click()

    'Clear textboxes
    txtTOP.Caption = ""
    txtBOTTOM.Caption = ""
    txtTOOL.RowSource = ""
    txtPART.Value = ""
    cmdSETUP.Enabled = False
    txtPART.SetFocus
    
    With cmdPicBot
        .Enabled = False
        .Visible = False
    End With
    
    With cmdPicTop
        .Enabled = False
        .Visible = False
    End With

End Sub

Private Sub Command834_Click()

    DoCmd.OpenForm "fmPRESS_NEW", acNormal, , , , acDialog
    
End Sub

Private Sub Form_Load()
On Error Resume Next
    Me.Parent!lblBANNER.Caption = "Press Fixtures"
    Call cmdUndo_Click

End Sub

Private Sub Label1042_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub Label1042_Click()
    DoCmd.OpenForm "fmWHERE_USED", acNormal, , , , acDialog
End Sub

Private Sub txtPart_AfterUpdate()

Dim db As DAO.Database
Dim qdf As DAO.QueryDef
Dim rst As DAO.Recordset
Dim sID As String
Dim sEntry As String
Dim sPDF As String
Dim qryName As String
Dim partPRESS As String
Dim top As String
Dim bottom As String
Dim tool As String
Dim sPn As String
Dim sPR As String
Dim sN As String
Dim sL As String
Dim sIn As String

qryName = "qryPRESS"

sPn = "qryPARTNUM_ALL"
sPR = "tblPRESS"
sL = " LEFT JOIN "
sN = "n/a"
sIn = " INNER JOIN "

'reset hyperlinks
    hyTop = ""
    hyBot = ""

Set db = CurrentDb
Set qdf = db.QueryDefs(qryName)

If IsNull(Trim(txtPART)) = False Then
    On Error GoTo absentTalonPartNum
    sEntry = sqlStr(txtPART)
            
    qdf.SQL = "SELECT TOP 1 tblPARTNUM.partNum, refREV.rev, " & sPR & ".partTop, " & sPn & ".partNumber AS topStr, " & _
                        sPR & ".partBot, " & sPn & "_1.partNumber AS botStr, " & sPR & ".ID, " & sPR & ".fileName, " & sPR & ".filePage " & vbCr & _
                "FROM (((" & sPR & sL & "refREV ON " & sPR & ".rev = refREV.ID)" & sIn & "tblPARTNUM ON " & sPR & ".partNum = tblPARTNUM.ID)" & _
                        sL & sPn & " ON " & sPR & ".partTop = " & sPn & ".uniqID)" & sL & sPn & " AS " & sPn & "_1 ON " & sPR & ".partBot = " & sPn & "_1.uniqID " & vbCr & _
                "WHERE (((tblPARTNUM.partNum) = " & sEntry & ")) " & vbCr & _
                "ORDER BY refREV.rev DESC;"
                
    Set rst = qdf.OpenRecordset
    
    With rst
        If (.RecordCount = 0) Then
            MsgBox ("There are no assemblies entered for this part number.")
            Call cmdUndo_Click
        Else:
            'Pick up information about the task
            .MoveFirst
            
            'Pull data from first record
            sID = ![ID]
            lTop = Nz(![partTop])
            lBot = Nz(![partBot])
            top = Nz(![topStr], sN)
            bottom = Nz(![BOTStr], sN)
            tool = "SELECT uTOOL.tool, " & sPn & ".partNumber " & vbCr & _
                "FROM (select id, partTool1 as tool from " & sPR & " Union select id, partTool2 as tool from " & sPR & _
                        " Union select id, partTool3 as tool from " & sPR & ")  AS uTOOL" & sIn & sPn & " ON uTOOL.tool = " & sPn & ".uniqID " & vbCr & _
                "WHERE (((uTOOL.ID) = " & sID & ")) " & vbCr & _
                "ORDER BY " & sPn & ".partNumber;"

            sPDF = Nz(![fileName], sN)

            'Checks if a process layout was made for that part number
            If (sPDF <> sN) And (sPDF <> "") Then
                cmdSETUP.Enabled = True
                fileName = "H:\Engineering\Drawings Overflow\PROCESS LAYOUTS\PDF\" & sPDF & ".pdf"
                pageNum = Nz(![filePage], 1)
            Else:
                cmdSETUP.Enabled = False
            End If
            
            'checks if an individual pdf is available for the top/bottom parts
            On Error GoTo pdfErr:
                hyBot = indPDF0107(lBot, True)
                hyTop = indPDF0107(lTop, True)
                
                If (hyBot <> "") And (IsNull(hyBot) = False) Then
                    cmdPicBot.Enabled = True
                    cmdPicBot.Visible = True
                End If

                If (hyTop <> "") And (IsNull(hyTop) = False) Then
                    cmdPicTop.Enabled = True
                    cmdPicTop.Visible = True
                End If
        End If
    End With
    
captFill:
    'Populate fields based on first entry
    txtTOP.Caption = top
    txtBOTTOM.Caption = bottom
    txtTOOL.RowSource = tool
    
    'close open records
    qdf.Close
    rst.Close
    db.Close

End If

errExit:
    Exit Sub

absentTalonPartNum:
    MsgBox "No information has been entered for this part number."
    Resume errExit

pdfErr:
    MsgBox "There was an error when searching for individual PDF's."
    Resume captFill
    
End Sub

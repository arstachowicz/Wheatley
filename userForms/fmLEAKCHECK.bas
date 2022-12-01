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
    Width =14280
    DatasheetFontHeight =11
    ItemSuffix =1033
    Left =3165
    Top =825
    Right =21840
    Bottom =11790
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0x2f55cc7a9514e540
    End
    Caption ="Leak Check Fixture Search"
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
            Height =7080
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7665
                    Top =645
                    Width =3750
                    Height =570
                    FontSize =20
                    TabIndex =1
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtPART"
                    AfterUpdate ="[Event Procedure]"
                    GroupTable =3
                    BottomPadding =360
                    GridlineColor =10921638

                    LayoutCachedLeft =7665
                    LayoutCachedTop =645
                    LayoutCachedWidth =11415
                    LayoutCachedHeight =1215
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
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
                    Top =645
                    Width =7605
                    Height =570
                    FontSize =18
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label336"
                    Caption ="Part #:"
                    GroupTable =3
                    RightPadding =0
                    BottomPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =645
                    LayoutCachedWidth =7635
                    LayoutCachedHeight =1215
                    RowStart =1
                    RowEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =3
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =1605
                    Width =7605
                    Height =570
                    FontSize =18
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label342"
                    Caption ="Top #:"
                    GroupTable =3
                    RightPadding =0
                    BottomPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =1605
                    LayoutCachedWidth =7635
                    LayoutCachedHeight =2175
                    RowStart =2
                    RowEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =3
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =2565
                    Width =7605
                    Height =570
                    FontSize =18
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label348"
                    Caption ="Bottom #:"
                    GroupTable =3
                    RightPadding =0
                    BottomPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =2565
                    LayoutCachedWidth =7635
                    LayoutCachedHeight =3135
                    RowStart =3
                    RowEnd =3
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =3
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =7665
                    Top =1605
                    Width =3750
                    Height =570
                    FontSize =20
                    FontWeight =700
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtTOP"
                    GroupTable =3
                    BottomPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =7665
                    LayoutCachedTop =1605
                    LayoutCachedWidth =11415
                    LayoutCachedHeight =2175
                    RowStart =2
                    RowEnd =2
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =93.0
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
                    Left =7665
                    Top =2565
                    Width =3750
                    Height =570
                    FontSize =20
                    FontWeight =700
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtBOTTOM"
                    GroupTable =3
                    BottomPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =7665
                    LayoutCachedTop =2565
                    LayoutCachedWidth =11415
                    LayoutCachedHeight =3135
                    RowStart =3
                    RowEnd =3
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =93.0
                    BorderThemeColorIndex =7
                    BorderTint =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =3
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =7665
                    Top =5940
                    Width =3750
                    Height =525
                    FontSize =14
                    TabIndex =4
                    ForeColor =3355443
                    Name ="cmdSETUP"
                    Caption ="Process Layout"
                    OnClick ="[Event Procedure]"
                    GroupTable =3
                    TopPadding =360
                    GridlineColor =10921638

                    CursorOnHover =1
                    LayoutCachedLeft =7665
                    LayoutCachedTop =5940
                    LayoutCachedWidth =11415
                    LayoutCachedHeight =6465
                    RowStart =5
                    RowEnd =5
                    ColumnStart =1
                    ColumnEnd =1
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
                    Left =7665
                    Top =6525
                    Width =3750
                    Height =525
                    FontSize =14
                    TabIndex =5
                    ForeColor =3355443
                    Name ="cmdUNDO"
                    Caption ="Clear"
                    OnClick ="[Event Procedure]"
                    GroupTable =3
                    GridlineColor =10921638

                    CursorOnHover =1
                    LayoutCachedLeft =7665
                    LayoutCachedTop =6525
                    LayoutCachedWidth =11415
                    LayoutCachedHeight =7050
                    RowStart =6
                    RowEnd =6
                    ColumnStart =1
                    ColumnEnd =1
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
                    Top =5940
                    Width =7605
                    Height =1110
                    Name ="EmptyCell777"
                    GroupTable =3
                    TopPadding =360
                    RightPadding =0
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =5940
                    LayoutCachedWidth =7635
                    LayoutCachedHeight =7050
                    RowStart =5
                    RowEnd =6
                    LayoutGroup =1
                    GroupTable =3
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =3525
                    Width =7605
                    Height =2025
                    FontSize =18
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label946"
                    Caption ="Manifold:"
                    GroupTable =3
                    RightPadding =0
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =3525
                    LayoutCachedWidth =7635
                    LayoutCachedHeight =5550
                    RowStart =4
                    RowEnd =4
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =3
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =30
                    Width =12750
                    Height =435
                    FontSize =16
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label985"
                    Caption ="Do not know where a particular part is used and which assembly it is used on?"
                    GroupTable =3
                    BottomPadding =144
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =30
                    LayoutCachedWidth =12780
                    LayoutCachedHeight =465
                    ColumnEnd =3
                    LayoutGroup =1
                    ForeTint =100.0
                    GroupTable =3
                End
                Begin Label
                    FontUnderline = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =12810
                    Top =30
                    Width =1440
                    Height =435
                    FontSize =16
                    BorderColor =10066329
                    Name ="Label986"
                    Caption ="Click Here."
                    OnClick ="[Event Procedure]"
                    OnMouseMove ="[Event Procedure]"
                    GroupTable =3
                    LeftPadding =0
                    BottomPadding =144
                    GridlineColor =10921638
                    LayoutCachedLeft =12810
                    LayoutCachedTop =30
                    LayoutCachedWidth =14250
                    LayoutCachedHeight =465
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =1
                    BorderThemeColorIndex =-1
                    ForeThemeColorIndex =8
                    ForeTint =100.0
                    GroupTable =3
                End
                Begin ListBox
                    TabStop = NotDefault
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =7665
                    Top =3525
                    Width =3750
                    Height =2025
                    FontSize =20
                    FontWeight =700
                    TabIndex =3
                    ForeColor =2500134
                    Name ="txtMani"
                    RowSourceType ="Value List"
                    GroupTable =3
                    GridlineColor =10921638
                    AllowValueListEdits =0

                    LayoutCachedLeft =7665
                    LayoutCachedTop =3525
                    LayoutCachedWidth =11415
                    LayoutCachedHeight =5550
                    RowStart =4
                    RowEnd =4
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =93.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =3
                End
                Begin EmptyCell
                    Left =11475
                    Top =645
                    Width =780
                    Height =570
                    Name ="EmptyCell1011"
                    GroupTable =3
                    BottomPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =11475
                    LayoutCachedTop =645
                    LayoutCachedWidth =12255
                    LayoutCachedHeight =1215
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    GroupTable =3
                End
                Begin EmptyCell
                    Left =12285
                    Top =645
                    Width =1965
                    Height =2490
                    Name ="EmptyCell1013"
                    GroupTable =3
                    LeftPadding =0
                    BottomPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =12285
                    LayoutCachedTop =645
                    LayoutCachedWidth =14250
                    LayoutCachedHeight =3135
                    RowStart =1
                    RowEnd =3
                    ColumnStart =3
                    ColumnEnd =4
                    LayoutGroup =1
                    GroupTable =3
                End
                Begin CommandButton
                    Enabled = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =11475
                    Top =1605
                    Width =780
                    Height =570
                    FontSize =14
                    ForeColor =3355443
                    Name ="cmdTopInfo"
                    Caption ="cmdCapInfo"
                    OnClick ="[Event Procedure]"
                    GroupTable =3
                    BottomPadding =360
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
                    LayoutCachedLeft =11475
                    LayoutCachedTop =1605
                    LayoutCachedWidth =12255
                    LayoutCachedHeight =2175
                    RowStart =2
                    RowEnd =2
                    ColumnStart =2
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
                    WebImagePaddingBottom =23
                    Overlaps =1
                End
                Begin CommandButton
                    Enabled = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =11475
                    Top =2565
                    Width =780
                    Height =570
                    FontSize =14
                    TabIndex =2
                    ForeColor =3355443
                    Name ="cmdPicBot"
                    Caption ="cmdBotInfo"
                    OnClick ="[Event Procedure]"
                    GroupTable =3
                    BottomPadding =360
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
                    LayoutCachedLeft =11475
                    LayoutCachedTop =2565
                    LayoutCachedWidth =12255
                    LayoutCachedHeight =3135
                    RowStart =3
                    RowEnd =3
                    ColumnStart =2
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
                    WebImagePaddingBottom =23
                    Overlaps =1
                End
                Begin EmptyCell
                    Left =11475
                    Top =3525
                    Width =2775
                    Height =2025
                    Name ="EmptyCell1030"
                    GroupTable =3
                    GridlineColor =10921638
                    LayoutCachedLeft =11475
                    LayoutCachedTop =3525
                    LayoutCachedWidth =14250
                    LayoutCachedHeight =5550
                    RowStart =4
                    RowEnd =4
                    ColumnStart =2
                    ColumnEnd =4
                    LayoutGroup =1
                    GroupTable =3
                End
                Begin EmptyCell
                    Left =11475
                    Top =5940
                    Width =2775
                    Height =1110
                    Name ="EmptyCell1032"
                    GroupTable =3
                    TopPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =11475
                    LayoutCachedTop =5940
                    LayoutCachedWidth =14250
                    LayoutCachedHeight =7050
                    RowStart =5
                    RowEnd =6
                    ColumnStart =2
                    ColumnEnd =4
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
Dim fileName As String
Dim sPartFile As String
Dim pageNum As Long
Dim lTop As String
Dim lBot As String
Dim hyTop As String
Dim hyBot As String

Private Sub cmdPicBot_Click()
Dim db As DAO.Database
Dim qdf As DAO.QueryDef
Dim rs As DAO.Recordset
Dim qryName As String

qryName = "qryLEAK_CHECK"

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
            lBot = Nz(![BOTStr])
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

Private Sub cmdSETUP_Click()
    Call pdfOpen(fileName, pageNum)
End Sub

Private Sub cmdTopInfo_Click()
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
            lTop = Nz(![topStr])
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

Private Sub cmdUndo_Click()

    'Clear textboxes
    txtTOP.Caption = ""
    txtBOTTOM.Caption = ""
    txtMANI.RowSource = ""
    
    cmdSETUP.Enabled = False
    
    With txtPART
        .Value = Null
        .SetFocus
    End With

End Sub

Private Sub Command834_Click()

    DoCmd.OpenForm "fmLEAKCHECK_NEW", acNormal, , , , acDialog
    
End Sub

Private Sub Form_Load()
On Error Resume Next
    Me.Parent!lblBANNER.Caption = "Leak Check Fixtures"
    Call cmdUndo_Click

End Sub


Private Sub Label986_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub Label986_Click()
    DoCmd.OpenForm "fmWHERE_USED", acNormal, , , , acDialog
End Sub

Private Sub txtPart_AfterUpdate()

Dim db As DAO.Database
Dim qdf As DAO.QueryDef
Dim rst As DAO.Recordset
Dim lID As Long
Dim top As String
Dim bottom As String
Dim mani As String
Dim partLeak As String
Dim qryName As String

'for building the sql
Dim sP7 As String
Dim sL As String
Dim sN As String
Dim sA As String
Dim sLt As String
Dim sPn As String
Dim sID As String

qryName = "qryLEAK_CHECK"
sL = "tblLEAK_CHECK"
sP7 = "qryPARTNUM_ALL"

sLt = " LEFT JOIN "
sA = " AS "
sN = "n/a"
sPn = ".partNumber"
sID = ".uniqID"


partLeak = Nz(Trim(txtPART.Value))

Set db = CurrentDb
Set qdf = db.QueryDefs(qryName)

If (IsNull(partLeak) = False) Then
    On Error GoTo absentTalonPartNum
    lID = DLookup("[ID]", "qryPARTNUM", "[partNum] = '" & partLeak & "'")
    
    qdf.SQL = "SELECT TOP 1 " & sL & ".topNum, " & sP7 & sPn & sA & "topStr, " & sL & ".bottomNum, " & sP7 & "_1" & sPn & sA & "botStr, " & _
                                sL & ".maniNum1, " & sP7 & "_2" & sPn & sA & "manStr1, " & sL & ".maniNum2, " & sP7 & "_3" & sPn & sA & "manStr2, " & _
                                sL & ".processLayout, " & sL & ".filePage " & vbCr & _
                "FROM ((((" & sL & sLt & "refREV ON " & sL & ".rev = refREV.ID)" & sLt & sP7 & " ON " & sL & ".topNum = " & sP7 & sID & ")" & _
                              sLt & sP7 & sA & sP7 & "_1 ON " & sL & ".bottomNum = " & sP7 & "_1" & sID & ")" & sLt & sP7 & sA & sP7 & "_2 ON " & _
                              sL & ".maniNum1 = " & sP7 & "_2" & sID & ")" & sLt & sP7 & sA & sP7 & "_3 ON " & sL & ".maniNum2 = " & sP7 & "_3" & sID & vbCr & _
                " WHERE (((" & sL & ".partNum) = " & lID & ") And ((" & sL & ".obsolete) = False) And ((" & sL & ".[R&D]) = False)) " & vbCr & _
                "ORDER BY refREV.rev DESC;"

    Set rst = qdf.OpenRecordset
    
    With rst
        If .RecordCount = 0 Then
            MsgBox ("There are no assemblies entered for this part number.")
            Call cmdUndo_Click
        Else:
            'Pick up information about the task
            .MoveFirst
            
            'Pull data from first record
            lTop = Nz(![Topnum], sN)
            lBot = Nz(![bottomNum], sN)
            top = Nz(![topStr], sN)
            bottom = Nz(![BOTStr], sN)
            mani = Nz(![manStr1], sN) & ";" & Nz(![manStr2])

            'Checks if a process layout was made for that part number
            If IsNull(![processlayout]) = False Then
                cmdSETUP.Enabled = True
                fileName = "H:\Engineering\Drawings Overflow\PROCESS LAYOUTS\PDF\" & ![processlayout] & ".pdf"
                    
                    If IsNull(![filePage]) = False Then
                        pageNum = ![filePage]
                    Else:
                        pageNum = 1
                    End If
            
            Else:
                cmdSETUP.Enabled = False
            End If
                   
            'checks if an individual pdf is available for the top/bottom parts
            hyTop = indPDF0107(lTop, True)
            hyBot = indPDF0107(lBot, True)
            If (hyTop <> "") And (IsNull(hyTop) = False) Then
                cmdTopInfo.Enabled = True
                cmdTopInfo.Visible = True
            End If
                
            If (hyBot <> "") And (IsNull(hyBot) = False) Then
                cmdPicBot.Enabled = True
                cmdPicBot.Visible = True
            End If
                         
        End If
        .Close
    End With
    
captionBuild:
    'Populate fields based on first entry
    txtTOP.Caption = top
    txtBOTTOM.Caption = bottom
    txtMANI.RowSource = mani
    
    'close items
    qdf.Close
    db.Close
    
End If

errExit:
    Exit Sub

absentTalonPartNum:
    MsgBox "No information has been entered for this part number."
    Resume errExit


End Sub

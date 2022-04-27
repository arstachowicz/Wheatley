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
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =18038
    DatasheetFontHeight =11
    ItemSuffix =321
    Right =24855
    Bottom =13800
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0xd53e1d9f7061e540
    End
    Caption ="Part Info View"
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
        Begin WebBrowser
            OldBorderStyle =1
            BackThemeColorIndex =1
            BorderThemeColorIndex =1
            BorderShade =65.0
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
            Height =6480
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin CommandButton
                    Default = NotDefault
                    OverlapFlags =85
                    Left =2940
                    Top =5040
                    Width =2100
                    Height =480
                    FontSize =16
                    TabIndex =5
                    ForeColor =3355443
                    Name ="cmdClose"
                    Caption ="Close"
                    OnClick ="[Event Procedure]"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638

                    CursorOnHover =1
                    LayoutCachedLeft =2940
                    LayoutCachedTop =5040
                    LayoutCachedWidth =5040
                    LayoutCachedHeight =5520
                    RowStart =7
                    RowEnd =7
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    ForeTint =100.0
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
                Begin CommandButton
                    OverlapFlags =85
                    Left =2940
                    Top =4500
                    Width =2100
                    Height =479
                    FontSize =16
                    TabIndex =4
                    ForeColor =3355443
                    Name ="cmdUPDATE"
                    Caption ="Update"
                    OnClick ="[Event Procedure]"
                    GroupTable =1
                    TopPadding =360
                    GridlineColor =10921638

                    CursorOnHover =1
                    LayoutCachedLeft =2940
                    LayoutCachedTop =4500
                    LayoutCachedWidth =5040
                    LayoutCachedHeight =4979
                    RowStart =6
                    RowEnd =6
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    ForeTint =100.0
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
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =2940
                    Top =420
                    Width =3900
                    Height =480
                    FontSize =16
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="lblPART"
                    GroupTable =1
                    RightPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =2940
                    LayoutCachedTop =420
                    LayoutCachedWidth =6840
                    LayoutCachedHeight =900
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderTint =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =180
                    Top =420
                    Width =2700
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label3"
                    Caption ="Part Number:"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =180
                    LayoutCachedTop =420
                    LayoutCachedWidth =2880
                    LayoutCachedHeight =900
                    RowStart =1
                    RowEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =180
                    Top =2040
                    Width =2700
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label48"
                    Caption ="Location:"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =180
                    LayoutCachedTop =2040
                    LayoutCachedWidth =2880
                    LayoutCachedHeight =2520
                    RowStart =4
                    RowEnd =4
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =2940
                    Top =960
                    Width =3900
                    Height =480
                    FontSize =16
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="lblUSE"
                    Caption =" "
                    GroupTable =1
                    RightPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =2940
                    LayoutCachedTop =960
                    LayoutCachedWidth =6840
                    LayoutCachedHeight =1440
                    RowStart =2
                    RowEnd =2
                    ColumnStart =1
                    ColumnEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderTint =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =180
                    Top =960
                    Width =2700
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label15"
                    Caption ="Part Useage:"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =180
                    LayoutCachedTop =960
                    LayoutCachedWidth =2880
                    LayoutCachedHeight =1440
                    RowStart =2
                    RowEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =180
                    Top =2580
                    Width =2700
                    Height =3600
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label24"
                    Caption ="Notes/Description:"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =180
                    LayoutCachedTop =2580
                    LayoutCachedWidth =2880
                    LayoutCachedHeight =6180
                    RowStart =5
                    RowEnd =8
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
                    Left =2940
                    Top =2040
                    Width =3900
                    Height =480
                    FontSize =16
                    TabIndex =2
                    ColumnInfo ="\"\";\"\";\"Location\";\"\";\"10\";\"510\""
                    Name ="lblLOC"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tblPART_STORAGE.ID, tblPART_STORAGE.locName FROM tblPART_STORAGE ORDER BY"
                        " tblPART_STORAGE.locName; "
                    ColumnWidths ="0;1440"
                    GroupTable =1
                    RightPadding =360
                    GridlineColor =10921638
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =2940
                    LayoutCachedTop =2040
                    LayoutCachedWidth =6840
                    LayoutCachedHeight =2520
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
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =2940
                    Top =2580
                    Width =3900
                    Height =1530
                    FontSize =16
                    TabIndex =3
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="lblNOTE"
                    GroupTable =1
                    RightPadding =360
                    GridlineColor =10921638

                    LayoutCachedLeft =2940
                    LayoutCachedTop =2580
                    LayoutCachedWidth =6840
                    LayoutCachedHeight =4110
                    RowStart =5
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
                End
                Begin WebBrowser
                    TabStop = NotDefault
                    BorderWidth =1
                    OverlapFlags =85
                    Left =7230
                    Top =120
                    Width =10656
                    Height =6060
                    AutoActivate =1
                    Name ="pdfViewer"
                    OleData = Begin
                        0x000e0000d0cf11e0a1b11ae1000000000000000000000000000000003e000300 ,
                        0xfeff090006000000000000000000000001000000020000000000000000100000 ,
                        0x0400000001000000feffffff0000000003000000ffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xfffffffffdfffffffeffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffff52006f006f007400200045006e007400720079000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000016000500ffffffffffffffffffffffff000000000000000000000000 ,
                        0x000000000000000000000000000000000000000000000000feffffff00000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000ffffffffffffffffffffffff000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000ffffffffffffffffffffffff000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000ffffffffffffffffffffffff000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000052006f006f007400200045006e007400720079000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000016000500ffffffffffffffff0100000061f956880a34d011a96b00c0 ,
                        0x4fd705a2000000000000000000000000d0fbc9d3ee38d6010500000000010000 ,
                        0x0000000003004f006c0065004f0062006a006500630074004400610074006100 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x000000001e000201ffffffff02000000ffffffff000000000000000000000000 ,
                        0x00000000000000000000000000000000000000000000000001000000ac000000 ,
                        0x0000000003004100630063006500730073004f0062006a005300690074006500 ,
                        0x4400610074006100000000000000000000000000000000000000000000000000 ,
                        0x0000000026000200ffffffffffffffffffffffff000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000038000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000ffffffffffffffffffffffff000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000fffffffffffffffffefffffffdfffffffefffffffeffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xfffffffffeffffff0200000003000000feffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffff38000000000000000100000000000000000000000000000000000000 ,
                        0x0000000038000000000000000000000000000000000000000000000000000000 ,
                        0x0000000061f956880a34d011a96b00c04fd705a24c000000ce180000670c0000 ,
                        0x0000000000000000000000000000000000000000000000004c00000000000000 ,
                        0x0000000001000000e0d057007335cf11ae6908002b2e12620800000000000000 ,
                        0x4c0000000114020000000000c000000000000046800000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000001000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End
                    GroupTable =1
                    RightPadding =144
                    BottomPadding =150

                    LayoutCachedLeft =7230
                    LayoutCachedTop =120
                    LayoutCachedWidth =17886
                    LayoutCachedHeight =6180
                    LayoutGroup =1
                    RowEnd =8
                    ColumnStart =3
                    ColumnEnd =3
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    GridlineThemeColorIndex =5
                    GridlineShade =100.0
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =2940
                    Top =5700
                    Width =2100
                    Height =480
                    Name ="EmptyCell272"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =2940
                    LayoutCachedTop =5700
                    LayoutCachedWidth =5040
                    LayoutCachedHeight =6180
                    RowStart =8
                    RowEnd =8
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =5100
                    Top =4500
                    Width =1740
                    Height =1680
                    Name ="EmptyCell279"
                    GroupTable =1
                    TopPadding =360
                    RightPadding =360
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =5100
                    LayoutCachedTop =4500
                    LayoutCachedWidth =6840
                    LayoutCachedHeight =6180
                    RowStart =6
                    RowEnd =8
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =180
                    Top =120
                    Width =6660
                    Height =122
                    Name ="EmptyCell287"
                    GroupTable =1
                    RightPadding =360
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =180
                    LayoutCachedTop =120
                    LayoutCachedWidth =6840
                    LayoutCachedHeight =242
                    ColumnEnd =2
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin ListBox
                    TabStop = NotDefault
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2940
                    Top =1500
                    Width =3900
                    Height =480
                    FontSize =16
                    TabIndex =1
                    ForeColor =2500134
                    Name ="listLinked"
                    RowSourceType ="Value List"
                    RowSource ="n/a"
                    ColumnWidths ="0;1440"
                    GroupTable =1
                    RightPadding =360
                    GridlineColor =10921638

                    LayoutCachedLeft =2940
                    LayoutCachedTop =1500
                    LayoutCachedWidth =6840
                    LayoutCachedHeight =1980
                    RowStart =3
                    RowEnd =3
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
                    Left =180
                    Top =1500
                    Width =2700
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label18"
                    Caption ="Linked Value:"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =180
                    LayoutCachedTop =1500
                    LayoutCachedWidth =2880
                    LayoutCachedHeight =1980
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
Dim sPart As String
Dim sID As String
Dim sTblPart As String
Dim sN As String

Private Sub cmdCLOSE_Click()
    DoCmd.Close
End Sub

Private Sub cmdUpdate_Click()
Dim db As DAO.Database
Dim sP As String
Dim sNotes As String
Dim stSQL As String
Dim i As Long
Dim nID As String

    Set db = CurrentDb
    sP = ", "
    nID = ""
    sNotes = sqlStr(lblNOTE)
    
    'remove letters and include only numbers in sID
    For i = 1 To Len(sID)
        If IsNumeric(Mid(sID, i, 1)) Then
            nID = nID & Mid(sID, i, 1)
        End If
    Next i

    'only allow updates of 'notes' and 'status' columns
    
    If (sTblPart <> "") And (sTblPart <> sN) Then
        'update EP table
        stSQL = "Update " & sTblPart & vbCr & _
                " SET [location] = " & Nz(lblLOC.Value, "Null") & sP & _
                     "[notes] = " & sNotes & vbCr & _
                " WHERE [autoID] = " & nID & ";"
         db.Execute stSQL, dbFailOnError
         MsgBox "Successfully updated!"
    End If
    
    db.Close
    
End Sub

Private Sub Form_Load()
Dim db As DAO.Database
Dim qdf As DAO.QueryDef
Dim rs As DAO.Recordset
Dim qry As String
Dim sHyper As String
Dim sRev As String


qry = "qryPARTNUM_ALL"
sN = "n/a"
listLinked.RowSourceType = "Value List"
listLinked.RowSource = sN


Set db = CurrentDb
Set qdf = db.QueryDefs(qry)
Set rs = qdf.OpenRecordset

    If Len(Me.OpenArgs) > 0 Then
       sID = [Forms]![fmPART_INFO].OpenArgs
       
       'search all query for matching uniqID
       With rs
       
            If (.RecordCount <> 0) Then
                .MoveFirst
                Do Until .EOF
                    If (!uniqID = sID) Then
                        
                        'pull some values and store as string
                        sPart = Nz(!partNumber, sN)
                        sTblPart = Nz(!tbl)
                        sRev = Nz(!Rev, "A")
                        
                        'populate fields based on record
                        Call linkedUpdate
                        lblPART.Caption = sPart
                        lblUSE.Caption = Nz(!partType, sN)
                        lblLOC.Value = Nz(!Location, 12)
                        lblNOTE.Value = Nz(!Notes, sN)
                        sTblPart = Nz(!tbl, sN)

                        'pull up PDF in browser control
                        sHyper = indPDF0107(sID, True)
                        
                        'pull pdf and display in webcontrol
                        If (sHyper <> "") And (IsNull(sHyper) = False) Then
                            pdfViewer.ControlSource = "=" & """" & sHyper & """"
                        Else:
                            pdfViewer.ControlSource = ""
                        End If
                        
                        Exit Do
                    End If
                    .MoveNext
                Loop
            End If
            .Close
       End With
        
       
    End If
    
    qdf.Close
    db.Close
    
End Sub

Private Sub linkedUpdate()
'searches for any linked parts using the qryLinked
Dim db2 As DAO.Database
Dim qdfLink As DAO.QueryDef
Dim rsLink As DAO.Recordset
Dim sQry As String
Dim sAll As String

sQry = "qryLINKED"
sAll = "qryPARTNUM_ALL"
Set db2 = CurrentDb
Set qdfLink = db2.QueryDefs(sQry)

    qdfLink.SQL = "SELECT " & sAll & ".uniqID, " & sAll & ".partNumber, " & sAll & ".linkedID " & vbCr & _
        "From " & sAll & vbCr & _
        " WHERE (((" & sAll & ".uniqID) = """ & sID & """) And ((" & sAll & ".partNumber) <> """ & sPart & """)) Or (((" & sAll & ".partNumber) <> """ & sPart & """) And ((" & sAll & ".linkedID) = """ & sID & """)) " & vbCr & _
        "ORDER BY " & sAll & ".partNumber;"
                
Set rsLink = qdfLink.OpenRecordset

'checks if anything is entered, if so, update the linked listbox. Displays "n/a" if nothing is available.
With listLinked
    If rsLink.RecordCount > 0 Then
        .RowSourceType = "Table/Query"
        .RowSource = sQry
        .ColumnCount = 2
        .ColumnWidths = "0;1"
        .Enabled = True
    Else:
        .RowSourceType = "Value List"
        .RowSource = "n/a"
        .ColumnCount = 1
        .ColumnWidths = "1"
        .Enabled = False
    End If
End With

'empty
    rsLink.Close
    qdfLink.Close
    db2.Close

End Sub

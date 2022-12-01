Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =20175
    DatasheetFontHeight =11
    ItemSuffix =41
    Right =24555
    Bottom =14055
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0x8fe257d60a04e540
    End
    Caption ="Waste Water Monitoring"
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
        Begin Subform
            BorderLineStyle =0
            BorderThemeColorIndex =1
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            BorderShade =65.0
            ShowPageHeaderAndPageFooter =1
        End
        Begin Tab
            FontSize =11
            FontName ="Calibri"
            ThemeFontIndex =0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            UseTheme =1
            Shape =3
            BackThemeColorIndex =1
            BackShade =85.0
            BorderLineStyle =0
            BorderThemeColorIndex =2
            BorderTint =60.0
            HoverThemeColorIndex =1
            PressedThemeColorIndex =1
            HoverForeThemeColorIndex =0
            HoverForeTint =75.0
            PressedForeThemeColorIndex =0
            PressedForeTint =75.0
            ForeThemeColorIndex =0
            ForeTint =75.0
        End
        Begin Page
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
        Begin Section
            Height =10290
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Tab
                    OverlapFlags =85
                    Left =45
                    Top =15
                    Width =20130
                    Height =10275
                    FontSize =14
                    FontWeight =500
                    TabFixedWidth =6480
                    Name ="TabCtl0"
                    FontName ="Calibri Light"
                    GridlineColor =10921638

                    LayoutCachedLeft =45
                    LayoutCachedTop =15
                    LayoutCachedWidth =20175
                    LayoutCachedHeight =10290
                    BackThemeColorIndex =-1
                    BackShade =100.0
                    BorderThemeColorIndex =5
                    BorderTint =100.0
                    HoverThemeColorIndex =6
                    PressedThemeColorIndex =3
                    HoverForeThemeColorIndex =5
                    HoverForeTint =100.0
                    PressedForeColor =3355443
                    PressedForeTint =100.0
                    ForeColor =3355443
                    ForeTint =100.0
                    Begin
                        Begin Page
                            OverlapFlags =87
                            Left =120
                            Top =570
                            Width =19980
                            Height =9645
                            BorderColor =10921638
                            Name ="Page1"
                            Caption ="pH"
                            GridlineColor =10921638
                            LayoutCachedLeft =120
                            LayoutCachedTop =570
                            LayoutCachedWidth =20100
                            LayoutCachedHeight =10215
                            WebImagePaddingLeft =2
                            WebImagePaddingTop =2
                            WebImagePaddingRight =2
                            WebImagePaddingBottom =2
                            Begin
                                Begin Subform
                                    OverlapFlags =215
                                    OldBorderStyle =0
                                    Left =165
                                    Top =600
                                    Width =19830
                                    Height =9444
                                    BorderColor =10921638
                                    Name ="Child5"
                                    SourceObject ="Form.fmPH"
                                    GroupTable =2
                                    BottomPadding =150
                                    GridlineColor =10921638

                                    LayoutCachedLeft =165
                                    LayoutCachedTop =600
                                    LayoutCachedWidth =19995
                                    LayoutCachedHeight =10044
                                    LayoutGroup =1
                                    GroupTable =2
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =215
                            Left =120
                            Top =570
                            Width =19980
                            Height =9645
                            BorderColor =10921638
                            Name ="Page2"
                            Caption ="Waste Water"
                            GridlineColor =10921638
                            LayoutCachedLeft =120
                            LayoutCachedTop =570
                            LayoutCachedWidth =20100
                            LayoutCachedHeight =10215
                            WebImagePaddingLeft =2
                            WebImagePaddingTop =2
                            WebImagePaddingRight =2
                            WebImagePaddingBottom =2
                            Begin
                                Begin Subform
                                    OverlapFlags =247
                                    OldBorderStyle =0
                                    Left =150
                                    Top =600
                                    Width =19215
                                    Height =8664
                                    BorderColor =10921638
                                    Name ="Child10"
                                    SourceObject ="Form.fmWASTEWATER"
                                    GroupTable =3
                                    BottomPadding =150
                                    GridlineColor =10921638

                                    LayoutCachedLeft =150
                                    LayoutCachedTop =600
                                    LayoutCachedWidth =19365
                                    LayoutCachedHeight =9264
                                    LayoutGroup =2
                                    GroupTable =3
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =215
                            Left =120
                            Top =570
                            Width =19980
                            Height =9645
                            BorderColor =10921638
                            Name ="DI Water"
                            EventProcPrefix ="DI_Water"
                            GridlineColor =10921638
                            LayoutCachedLeft =120
                            LayoutCachedTop =570
                            LayoutCachedWidth =20100
                            LayoutCachedHeight =10215
                            WebImagePaddingLeft =2
                            WebImagePaddingTop =2
                            WebImagePaddingRight =2
                            WebImagePaddingBottom =2
                            Begin
                                Begin Subform
                                    TabStop = NotDefault
                                    OverlapFlags =247
                                    OldBorderStyle =0
                                    Left =180
                                    Top =660
                                    Width =19212
                                    Height =8664
                                    BorderColor =10921638
                                    Name ="Child36"
                                    SourceObject ="Form.fmDI_WATER"
                                    GroupTable =4
                                    BottomPadding =150
                                    GridlineColor =10921638

                                    LayoutCachedLeft =180
                                    LayoutCachedTop =660
                                    LayoutCachedWidth =19392
                                    LayoutCachedHeight =9324
                                    LayoutGroup =3
                                    GroupTable =4
                                End
                            End
                        End
                    End
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

Private Sub Form_Load()
On Error Resume Next
    Me.Parent!lblBANNER.Caption = "Waste Water"
End Sub

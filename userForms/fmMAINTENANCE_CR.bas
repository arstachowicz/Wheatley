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
    Width =24330
    DatasheetFontHeight =11
    ItemSuffix =37
    Left =3165
    Top =825
    Right =27540
    Bottom =13470
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0x8fe257d60a04e540
    End
    Caption ="CR Maintenance"
    DatasheetFontName ="Calibri"
    OnLoad ="[Event Procedure]"
    AllowDatasheetView =0
    FilterOnLoad =0
    ShowPageMargins =0
    DisplayOnSharePointSite =1
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
    DatasheetForeColor12 =5855577
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
            CanGrow = NotDefault
            Height =11670
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Tab
                    OverlapFlags =85
                    Left =120
                    Top =60
                    Width =24210
                    Height =11610
                    FontSize =14
                    FontWeight =500
                    TabFixedWidth =3960
                    Name ="TabCtl0"
                    FontName ="Calibri Light"
                    GridlineColor =10921638

                    LayoutCachedLeft =120
                    LayoutCachedTop =60
                    LayoutCachedWidth =24330
                    LayoutCachedHeight =11670
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
                            Left =195
                            Top =615
                            Width =24060
                            Height =10980
                            BorderColor =10921638
                            Name ="Page1"
                            Caption ="Daily"
                            GridlineColor =10921638
                            LayoutCachedLeft =195
                            LayoutCachedTop =615
                            LayoutCachedWidth =24255
                            LayoutCachedHeight =11595
                            WebImagePaddingLeft =2
                            WebImagePaddingTop =2
                            WebImagePaddingRight =2
                            WebImagePaddingBottom =2
                            Begin
                                Begin Subform
                                    OverlapFlags =215
                                    OldBorderStyle =0
                                    Left =345
                                    Top =660
                                    Width =23070
                                    Height =10764
                                    BorderColor =10921638
                                    Name ="Child5"
                                    SourceObject ="Form.fmMAINTENANCE_DAILY_CR"
                                    GroupTable =2
                                    BottomPadding =150

                                    LayoutCachedLeft =345
                                    LayoutCachedTop =660
                                    LayoutCachedWidth =23415
                                    LayoutCachedHeight =11424
                                    LayoutGroup =1
                                    GridlineThemeColorIndex =2
                                    GridlineShade =100.0
                                    GroupTable =2
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =215
                            Left =195
                            Top =615
                            Width =24060
                            Height =10980
                            BorderColor =10921638
                            Name ="Page2"
                            Caption ="Weekly"
                            GridlineColor =10921638
                            LayoutCachedLeft =195
                            LayoutCachedTop =615
                            LayoutCachedWidth =24255
                            LayoutCachedHeight =11595
                            WebImagePaddingLeft =2
                            WebImagePaddingTop =2
                            WebImagePaddingRight =2
                            WebImagePaddingBottom =2
                            Begin
                                Begin Subform
                                    OverlapFlags =247
                                    OldBorderStyle =0
                                    Left =330
                                    Top =660
                                    Width =19185
                                    Height =10104
                                    BorderColor =10921638
                                    Name ="Child10"
                                    SourceObject ="Form.fmMAINTENANCE_WEEKLY_Cr"
                                    GroupTable =3
                                    BottomPadding =150
                                    GridlineColor =10921638

                                    LayoutCachedLeft =330
                                    LayoutCachedTop =660
                                    LayoutCachedWidth =19515
                                    LayoutCachedHeight =10764
                                    LayoutGroup =2
                                    GroupTable =3
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =215
                            Left =195
                            Top =615
                            Width =24060
                            Height =10980
                            BorderColor =10921638
                            Name ="Page27"
                            Caption ="Monthly"
                            GridlineColor =10921638
                            LayoutCachedLeft =195
                            LayoutCachedTop =615
                            LayoutCachedWidth =24255
                            LayoutCachedHeight =11595
                            WebImagePaddingLeft =2
                            WebImagePaddingTop =2
                            WebImagePaddingRight =2
                            WebImagePaddingBottom =2
                            Begin
                                Begin Subform
                                    OverlapFlags =247
                                    OldBorderStyle =0
                                    Left =345
                                    Top =660
                                    Width =23550
                                    Height =10464
                                    BorderColor =10921638
                                    Name ="Child29"
                                    SourceObject ="Form.fmMAINTENANCE_MONTHLY_CR"
                                    GroupTable =7
                                    BottomPadding =150
                                    GridlineColor =10921638

                                    LayoutCachedLeft =345
                                    LayoutCachedTop =660
                                    LayoutCachedWidth =23895
                                    LayoutCachedHeight =11124
                                    LayoutGroup =4
                                    GroupTable =7
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =215
                            Left =195
                            Top =615
                            Width =24060
                            Height =10980
                            BorderColor =10921638
                            Name ="Page4"
                            Caption ="Quarterly"
                            GridlineColor =10921638
                            LayoutCachedLeft =195
                            LayoutCachedTop =615
                            LayoutCachedWidth =24255
                            LayoutCachedHeight =11595
                            WebImagePaddingLeft =2
                            WebImagePaddingTop =2
                            WebImagePaddingRight =2
                            WebImagePaddingBottom =2
                            Begin
                                Begin Subform
                                    OverlapFlags =247
                                    OldBorderStyle =0
                                    Left =375
                                    Top =645
                                    Width =23580
                                    Height =9345
                                    BorderColor =10921638
                                    Name ="Child20"
                                    SourceObject ="Form.fmMAINTENANCE_QUARTERLY_CL"
                                    GroupTable =5
                                    BottomPadding =150
                                    GridlineColor =10921638

                                    LayoutCachedLeft =375
                                    LayoutCachedTop =645
                                    LayoutCachedWidth =23955
                                    LayoutCachedHeight =9990
                                    LayoutGroup =3
                                    GroupTable =5
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =215
                            Left =195
                            Top =615
                            Width =24060
                            Height =10980
                            BorderColor =10921638
                            Name ="Meter Check"
                            EventProcPrefix ="Meter_Check"
                            GridlineColor =10921638
                            LayoutCachedLeft =195
                            LayoutCachedTop =615
                            LayoutCachedWidth =24255
                            LayoutCachedHeight =11595
                            WebImagePaddingLeft =2
                            WebImagePaddingTop =2
                            WebImagePaddingRight =2
                            WebImagePaddingBottom =2
                            Begin
                                Begin Subform
                                    OverlapFlags =247
                                    OldBorderStyle =0
                                    BorderWidth =1
                                    Left =240
                                    Top =660
                                    Width =23640
                                    Height =10575
                                    BorderColor =10921638
                                    Name ="fmMETERS_CR"
                                    SourceObject ="Form.fmMETERS_CR"
                                    GroupTable =8
                                    GridlineColor =10921638
                                    HorizontalAnchor =2
                                    VerticalAnchor =2

                                    LayoutCachedLeft =240
                                    LayoutCachedTop =660
                                    LayoutCachedWidth =23880
                                    LayoutCachedHeight =11235
                                    LayoutGroup =5
                                    GroupTable =8
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
    Me.Parent!lblBANNER.Caption = "Clean Line Maintenance"
End Sub

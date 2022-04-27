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
    Width =19800
    DatasheetFontHeight =11
    ItemSuffix =49
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
            CanGrow = NotDefault
            Height =9285
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Tab
                    OverlapFlags =85
                    Left =600
                    Top =60
                    Width =19200
                    Height =9180
                    FontSize =14
                    FontWeight =500
                    TabFixedWidth =3816
                    Name ="TabCtl0"
                    FontName ="Calibri Light"
                    GridlineColor =10921638

                    LayoutCachedLeft =600
                    LayoutCachedTop =60
                    LayoutCachedWidth =19800
                    LayoutCachedHeight =9240
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
                            Left =675
                            Top =615
                            Width =19050
                            Height =8550
                            BorderColor =10921638
                            Name ="Page1"
                            Caption ="Daily"
                            GridlineColor =10921638
                            LayoutCachedLeft =675
                            LayoutCachedTop =615
                            LayoutCachedWidth =19725
                            LayoutCachedHeight =9165
                            WebImagePaddingLeft =2
                            WebImagePaddingTop =2
                            WebImagePaddingRight =2
                            WebImagePaddingBottom =2
                            Begin
                                Begin Subform
                                    OverlapFlags =215
                                    OldBorderStyle =0
                                    Left =870
                                    Top =645
                                    Width =18405
                                    Height =8370
                                    BorderColor =10921638
                                    Name ="Child5"
                                    SourceObject ="Form.fmMAINTENANCE_DAILY_cr"
                                    GroupTable =2
                                    BottomPadding =150
                                    GridlineColor =10921638

                                    LayoutCachedLeft =870
                                    LayoutCachedTop =645
                                    LayoutCachedWidth =19275
                                    LayoutCachedHeight =9015
                                    LayoutGroup =1
                                    GroupTable =2
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =215
                            Left =675
                            Top =615
                            Width =19050
                            Height =8550
                            BorderColor =10921638
                            Name ="Page2"
                            Caption ="Weekly"
                            GridlineColor =10921638
                            LayoutCachedLeft =675
                            LayoutCachedTop =615
                            LayoutCachedWidth =19725
                            LayoutCachedHeight =9165
                            WebImagePaddingLeft =2
                            WebImagePaddingTop =2
                            WebImagePaddingRight =2
                            WebImagePaddingBottom =2
                            Begin
                                Begin Subform
                                    OverlapFlags =247
                                    OldBorderStyle =0
                                    Left =870
                                    Top =645
                                    Width =18465
                                    Height =8310
                                    BorderColor =10921638
                                    Name ="fmMAINTENANCE_WEEKLY_CR"
                                    SourceObject ="Form.fmMAINTENANCE_WEEKLY_CR"
                                    GroupTable =7
                                    GridlineColor =10921638
                                    HorizontalAnchor =2
                                    VerticalAnchor =2

                                    LayoutCachedLeft =870
                                    LayoutCachedTop =645
                                    LayoutCachedWidth =19335
                                    LayoutCachedHeight =8955
                                    LayoutGroup =5
                                    GroupTable =7
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =215
                            Left =675
                            Top =615
                            Width =19050
                            Height =8550
                            BorderColor =10921638
                            Name ="Page3"
                            Caption ="Monthly"
                            GridlineColor =10921638
                            LayoutCachedLeft =675
                            LayoutCachedTop =615
                            LayoutCachedWidth =19725
                            LayoutCachedHeight =9165
                            WebImagePaddingLeft =2
                            WebImagePaddingTop =2
                            WebImagePaddingRight =2
                            WebImagePaddingBottom =2
                            Begin
                                Begin Subform
                                    OverlapFlags =247
                                    OldBorderStyle =0
                                    Left =870
                                    Top =645
                                    Width =18585
                                    Height =8295
                                    BorderColor =10921638
                                    Name ="Child15"
                                    SourceObject ="Form.fmMAINTENANCE_MONTHLY_CR"
                                    GroupTable =4
                                    BottomPadding =150
                                    GridlineColor =10921638

                                    LayoutCachedLeft =870
                                    LayoutCachedTop =645
                                    LayoutCachedWidth =19455
                                    LayoutCachedHeight =8940
                                    LayoutGroup =2
                                    GroupTable =4
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =215
                            Left =675
                            Top =615
                            Width =19050
                            Height =8550
                            BorderColor =10921638
                            Name ="Page4"
                            Caption ="Quarterly"
                            GridlineColor =10921638
                            LayoutCachedLeft =675
                            LayoutCachedTop =615
                            LayoutCachedWidth =19725
                            LayoutCachedHeight =9165
                            WebImagePaddingLeft =2
                            WebImagePaddingTop =2
                            WebImagePaddingRight =2
                            WebImagePaddingBottom =2
                            Begin
                                Begin Subform
                                    OverlapFlags =247
                                    OldBorderStyle =0
                                    Left =780
                                    Top =735
                                    Width =18615
                                    Height =7980
                                    BorderColor =10921638
                                    Name ="Child20"
                                    SourceObject ="Form.fmMETERS_CR"
                                    GroupTable =5
                                    BottomPadding =150
                                    GridlineColor =10921638

                                    LayoutCachedLeft =780
                                    LayoutCachedTop =735
                                    LayoutCachedWidth =19395
                                    LayoutCachedHeight =8715
                                    LayoutGroup =3
                                    GroupTable =5
                                End
                            End
                        End
                        Begin Page
                            OverlapFlags =215
                            Left =675
                            Top =615
                            Width =19050
                            Height =8550
                            BorderColor =10921638
                            Name ="Page33"
                            Caption ="Meter Readings"
                            GridlineColor =10921638
                            LayoutCachedLeft =675
                            LayoutCachedTop =615
                            LayoutCachedWidth =19725
                            LayoutCachedHeight =9165
                            WebImagePaddingLeft =2
                            WebImagePaddingTop =2
                            WebImagePaddingRight =2
                            WebImagePaddingBottom =2
                            Begin
                                Begin Subform
                                    OverlapFlags =247
                                    OldBorderStyle =0
                                    Left =870
                                    Top =645
                                    Width =18585
                                    Height =8370
                                    BorderColor =10921638
                                    Name ="Child34"
                                    SourceObject ="Form.fmMAINTENANCE_METERS_CR"
                                    GroupTable =6
                                    BottomPadding =150
                                    GridlineColor =10921638

                                    LayoutCachedLeft =870
                                    LayoutCachedTop =645
                                    LayoutCachedWidth =19455
                                    LayoutCachedHeight =9015
                                    LayoutGroup =4
                                    GroupTable =6
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
    Me.Parent!lblBANNER.Caption = "Clean Room Maintenance"
End Sub

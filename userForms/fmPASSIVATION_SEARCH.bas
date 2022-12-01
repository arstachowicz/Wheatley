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
    Width =14505
    DatasheetFontHeight =11
    ItemSuffix =1674
    Right =18540
    Bottom =14055
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0x2f55cc7a9514e540
    End
    Caption ="Passivation Search"
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
            OldBorderStyle =1
            FontSize =20
            FontWeight =700
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
            ForeTint =75.0
            GridlineShade =65.0
            Shape =1
            Gradient =12
            BackTint =60.0
            BorderLineStyle =0
            BorderColor =16777215
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
            Height =4200
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =7710
                    Top =300
                    Width =4050
                    Height =576
                    FontSize =20
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtPART"
                    AfterUpdate ="[Event Procedure]"
                    GroupTable =6
                    BottomPadding =360
                    GridlineColor =10921638

                    LayoutCachedLeft =7710
                    LayoutCachedTop =300
                    LayoutCachedWidth =11760
                    LayoutCachedHeight =876
                    ColumnStart =3
                    ColumnEnd =5
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =6
                End
                Begin Label
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =3
                    Left =3660
                    Top =300
                    Width =4020
                    Height =576
                    FontSize =18
                    FontWeight =400
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label336"
                    Caption ="Part #:"
                    GroupTable =6
                    RightPadding =0
                    BottomPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =3660
                    LayoutCachedTop =300
                    LayoutCachedWidth =7680
                    LayoutCachedHeight =876
                    ColumnEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =6
                End
                Begin Label
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =3
                    Left =3660
                    Top =1260
                    Width =3120
                    Height =576
                    FontSize =18
                    FontWeight =400
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label342"
                    Caption ="Frame Assembly:"
                    GroupTable =6
                    GridlineColor =10921638
                    LayoutCachedLeft =3660
                    LayoutCachedTop =1260
                    LayoutCachedWidth =6780
                    LayoutCachedHeight =1836
                    RowStart =1
                    RowEnd =1
                    ColumnEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =6
                End
                Begin Label
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =3
                    Left =3660
                    Top =1890
                    Width =3120
                    Height =570
                    FontSize =18
                    FontWeight =400
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label348"
                    Caption ="Manifold Flange:"
                    GroupTable =6
                    GridlineColor =10921638
                    LayoutCachedLeft =3660
                    LayoutCachedTop =1890
                    LayoutCachedWidth =6780
                    LayoutCachedHeight =2460
                    RowStart =2
                    RowEnd =2
                    ColumnEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =6
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =6840
                    Top =1260
                    Width =4920
                    Height =576
                    FontSize =18
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtFrame"
                    GroupTable =6
                    GridlineColor =10921638
                    LayoutCachedLeft =6840
                    LayoutCachedTop =1260
                    LayoutCachedWidth =11760
                    LayoutCachedHeight =1836
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =5
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =93.0
                    BorderThemeColorIndex =7
                    BorderTint =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =6
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =85
                    TextAlign =1
                    Left =6840
                    Top =1890
                    Width =4920
                    Height =570
                    FontSize =18
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtFLANGE"
                    GroupTable =6
                    GridlineColor =10921638
                    LayoutCachedLeft =6840
                    LayoutCachedTop =1890
                    LayoutCachedWidth =11760
                    LayoutCachedHeight =2460
                    RowStart =2
                    RowEnd =2
                    ColumnStart =2
                    ColumnEnd =5
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =93.0
                    BorderThemeColorIndex =7
                    BorderTint =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =6
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =8130
                    Top =2850
                    Width =2895
                    Height =518
                    FontSize =14
                    TabIndex =3
                    Name ="cmdSETUP"
                    Caption ="Process Layout"
                    OnClick ="[Event Procedure]"
                    GroupTable =6
                    TopPadding =360
                    RightPadding =15

                    CursorOnHover =1
                    LayoutCachedLeft =8130
                    LayoutCachedTop =2850
                    LayoutCachedWidth =11025
                    LayoutCachedHeight =3368
                    RowStart =3
                    RowEnd =3
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =1
                    ForeThemeColorIndex =0
                    ForeTint =100.0
                    GridlineThemeColorIndex =1
                    UseTheme =1
                    BackColor =15715959
                    BorderThemeColorIndex =0
                    BorderTint =100.0
                    HoverThemeColorIndex =6
                    HoverShade =90.0
                    PressedThemeColorIndex =8
                    HoverForeThemeColorIndex =0
                    PressedForeThemeColorIndex =0
                    GroupTable =6
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =24
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =8130
                    Top =3435
                    Width =2895
                    Height =525
                    FontSize =14
                    TabIndex =4
                    Name ="cmdUndo"
                    Caption ="Clear"
                    OnClick ="[Event Procedure]"
                    GroupTable =6
                    RightPadding =15

                    CursorOnHover =1
                    LayoutCachedLeft =8130
                    LayoutCachedTop =3435
                    LayoutCachedWidth =11025
                    LayoutCachedHeight =3960
                    RowStart =4
                    RowEnd =4
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =1
                    ForeThemeColorIndex =0
                    ForeTint =100.0
                    GridlineThemeColorIndex =1
                    UseTheme =1
                    BackColor =15715959
                    BorderThemeColorIndex =0
                    BorderTint =100.0
                    HoverThemeColorIndex =6
                    HoverShade =90.0
                    PressedThemeColorIndex =8
                    HoverForeThemeColorIndex =0
                    PressedForeThemeColorIndex =0
                    GroupTable =6
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin CommandButton
                    Visible = NotDefault
                    Enabled = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =11820
                    Top =1260
                    Width =570
                    Height =576
                    FontSize =14
                    TabIndex =1
                    Name ="cmdPicFrame"
                    Caption ="Command1590"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="View PDF of individual fixture"
                    GroupTable =6
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
                    LayoutCachedLeft =11820
                    LayoutCachedTop =1260
                    LayoutCachedWidth =12390
                    LayoutCachedHeight =1836
                    RowStart =1
                    RowEnd =1
                    ColumnStart =6
                    ColumnEnd =6
                    LayoutGroup =1
                    ForeThemeColorIndex =0
                    ForeTint =100.0
                    GridlineThemeColorIndex =1
                    UseTheme =1
                    BackColor =15715959
                    BorderThemeColorIndex =0
                    BorderTint =100.0
                    HoverThemeColorIndex =6
                    HoverShade =90.0
                    PressedThemeColorIndex =8
                    HoverForeThemeColorIndex =0
                    PressedForeThemeColorIndex =0
                    GroupTable =6
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin CommandButton
                    Visible = NotDefault
                    Enabled = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =11820
                    Top =1890
                    Width =570
                    Height =570
                    FontSize =14
                    TabIndex =2
                    Name ="cmdPicFlan"
                    Caption ="Command1595"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="View PDF of individual fixture"
                    GroupTable =6
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
                    LayoutCachedLeft =11820
                    LayoutCachedTop =1890
                    LayoutCachedWidth =12390
                    LayoutCachedHeight =2460
                    RowStart =2
                    RowEnd =2
                    ColumnStart =6
                    ColumnEnd =6
                    LayoutGroup =1
                    ForeThemeColorIndex =0
                    ForeTint =100.0
                    GridlineThemeColorIndex =1
                    UseTheme =1
                    BackColor =15715959
                    BorderThemeColorIndex =0
                    BorderTint =100.0
                    HoverThemeColorIndex =6
                    HoverShade =90.0
                    PressedThemeColorIndex =8
                    HoverForeThemeColorIndex =0
                    PressedForeThemeColorIndex =0
                    GroupTable =6
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin EmptyCell
                    Left =11820
                    Top =300
                    Width =2655
                    Height =576
                    Name ="EmptyCell1640"
                    GroupTable =6
                    BottomPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =11820
                    LayoutCachedTop =300
                    LayoutCachedWidth =14475
                    LayoutCachedHeight =876
                    ColumnStart =6
                    ColumnEnd =7
                    LayoutGroup =1
                    GroupTable =6
                End
                Begin EmptyCell
                    Left =11070
                    Top =2850
                    Width =3405
                    Height =1110
                    Name ="EmptyCell1656"
                    GroupTable =6
                    TopPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =11070
                    LayoutCachedTop =2850
                    LayoutCachedWidth =14475
                    LayoutCachedHeight =3960
                    RowStart =3
                    RowEnd =4
                    ColumnStart =5
                    ColumnEnd =7
                    LayoutGroup =1
                    GroupTable =6
                End
                Begin EmptyCell
                    Left =12450
                    Top =1260
                    Width =2025
                    Height =1200
                    Name ="EmptyCell1658"
                    GroupTable =6
                    GridlineColor =10921638
                    LayoutCachedLeft =12450
                    LayoutCachedTop =1260
                    LayoutCachedWidth =14475
                    LayoutCachedHeight =2460
                    RowStart =1
                    RowEnd =2
                    ColumnStart =7
                    ColumnEnd =7
                    LayoutGroup =1
                    GroupTable =6
                End
                Begin EmptyCell
                    Left =3660
                    Top =2850
                    Width =4440
                    Height =1110
                    Name ="EmptyCell1661"
                    GroupTable =6
                    TopPadding =360
                    RightPadding =0
                    GridlineColor =10921638
                    LayoutCachedLeft =3660
                    LayoutCachedTop =2850
                    LayoutCachedWidth =8100
                    LayoutCachedHeight =3960
                    RowStart =3
                    RowEnd =4
                    ColumnEnd =3
                    LayoutGroup =1
                    GroupTable =6
                End
            End
        End
        Begin FormFooter
            Height =0
            Name ="FormFooter"
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
Public lFrame As String
Public lFlange As String
Public sFileName As String
Public lPage As Long

Private Sub cmdPicFLAN_Click()
    sFileName = indPDF0107(lFlange, False)
    Call pdfOpen(sFileName, 1)
End Sub

Private Sub cmdPicFRAME_Click()
    sFileName = indPDF0107(lFrame, False)
    Call pdfOpen(sFileName, 1)
End Sub

Private Sub cmdSETUP_Click()

    Call pdfOpen(sFileName, lPage)
    
End Sub

Private Sub cmdUndo_Click()

    'Clear textboxes
    Call clearFields
    txtPART = Null
    
End Sub

Private Sub Form_Load()
On Error Resume Next

    Me.Parent!lblBANNER.Caption = "Passivation Fixtures"
    Call cmdUndo_Click

End Sub

Private Sub lblWHERE_USED_Click()

    DoCmd.OpenForm "fmWHERE_USED", acNormal, , , , acDialog

End Sub

Private Sub lblWHERE_USED_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub txtPart_AfterUpdate()
    Dim db As DAO.Database
    Dim qdf As DAO.QueryDef
    Dim rst As DAO.Recordset
    Dim sSel As String
    Dim sPart As String
    Dim tbl As String
    Dim qry As String
    Dim sN As String
    Dim sP As String
    Dim sL As String
    Dim sAll As String
    Dim sFrame As String
    Dim sFlange As String

    Set db = CurrentDb
    qry = "qryPASSIVATION"
    sAll = "qryPARTNUM_ALL"
    tbl = "tblPASSIVATE"
    sN = "n/a"
    sP = ", "
    sL = " LEFT JOIN "
    
'Clear old data
    Call clearFields
    sPart = sqlStr(txtPART)
    
If (IsNull(sPart) = False) And (sPart <> "Null") Then

    On Error GoTo absentTalonPartNum
    'build SQL
    Set qdf = db.QueryDefs(qry)

    sSel = "SELECT TOP 1 " & tbl & ".partNum, tblPARTNUM.partNum" & sP & sAll & ".partNumber AS fixStr" & sP & sAll & "_1.partNumber AS maniStr" & sP & tbl & ".fileName" & sP & tbl & ".pageNum" & sP & tbl & ".fixtureNum" & sP & tbl & ".maniNum " & vbCr & _
           "FROM (((" & tbl & sL & "refREV ON " & tbl & ".rev = refREV.ID)" & sL & sAll & " ON " & tbl & ".fixtureNum = " & sAll & ".uniqID)" & _
                    sL & sAll & " AS " & sAll & "_1 ON " & tbl & ".maniNum = " & sAll & "_1.uniqID) INNER JOIN tblPARTNUM ON " & tbl & ".partNum = tblPARTNUM.ID " & vbCr & _
           "WHERE (((tblPARTNUM.partNum)=" & sPart & ") AND ((" & tbl & ".obsolete)=False) AND ((" & tbl & ".[r&d])=False)) " & vbCr & _
           "ORDER BY refREV.rev DESC;"
    
    qdf.SQL = sSel

    Set rst = qdf.OpenRecordset
    
    With rst
        If .RecordCount = 0 Then
            MsgBox ("There are no assemblies entered for this part number.")
            cmdSETUP.Enabled = False
            Call cmdUndo_Click
        Else:
            'Pull data from first record
            .MoveFirst
            
            'pull frame assembly info
            sFrame = Nz(![fixStr], sN)
            lFrame = Nz(![fixtureNum], sN)
            If (lFrame <> sN) Then
                cmdPicFrame.Enabled = True
                cmdPicFrame.Visible = True
            End If
            
            'pull flange info
            sFlange = Nz(![maniStr], sN)
            lFlange = Nz(![maniNum], sN)
            If (lFlange <> sN) Then
                cmdPicFlan.Enabled = True
                cmdPicFlan.Visible = True
            End If
            
            'pull pdf assembly info
            sFileName = Nz(![fileName])
            lPage = Nz(![pageNum], 1)
            
            'Checks if a process layout was made for that part number
                If (sFileName <> "") Then
                    cmdSETUP.Enabled = True
                    sFileName = "H:\Engineering\Drawings Overflow\PROCESS LAYOUTS\PDF\" & sFileName & ".pdf"
                Else:
                    cmdSETUP.Enabled = False
                End If
            
        End If
        .Close
    End With
    
    'Populate fields based on first entry
        txtFLANGE.Caption = sFlange
        txtFrame.Caption = sFrame
        
    qdf.Close
    db.Close
End If

    
macro_exit:
    Exit Sub
    
absentTalonPartNum:
    MsgBox "This part number is not in the system."
    cmdSETUP.Enabled = False
    Resume macro_exit
    
    
End Sub

Private Sub clearFields()

'clear field
    txtPART.SetFocus
    cmdSETUP.Enabled = False
    txtFrame.Caption = ""
    txtFLANGE.Caption = ""
    
    With cmdPicFrame
        .Enabled = False
        .Visible = False
    End With
    
    With cmdPicFlan
        .Enabled = False
        .Visible = False
    End With
    
End Sub

Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =17138
    DatasheetFontHeight =11
    ItemSuffix =71
    Left =3165
    Top =825
    Right =27540
    Bottom =13470
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0x0b149e1db5dbe440
    End
    RecordSource ="tblTECHNAME"
    Caption ="Technician Info"
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
        Begin Subform
            BorderLineStyle =0
            BorderThemeColorIndex =1
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            BorderShade =65.0
            ShowPageHeaderAndPageFooter =1
        End
        Begin ToggleButton
            ForeThemeColorIndex =0
            ForeTint =75.0
            GridlineThemeColorIndex =1
            GridlineShade =65.0
            UseTheme =1
            Shape =2
            Bevel =1
            BackColor =-1
            BackThemeColorIndex =4
            BackTint =60.0
            OldBorderStyle =0
            BorderLineStyle =0
            BorderColor =-1
            BorderThemeColorIndex =4
            BorderTint =60.0
            ThemeFontIndex =1
            HoverThemeColorIndex =4
            HoverTint =40.0
            PressedThemeColorIndex =4
            PressedShade =75.0
            HoverForeThemeColorIndex =0
            HoverForeTint =75.0
            PressedForeThemeColorIndex =1
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
            Height =9750
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Subform
                    TabStop = NotDefault
                    OverlapFlags =85
                    BorderWidth =2
                    Left =2250
                    Top =150
                    Width =14865
                    Height =9555
                    Name ="childForm"
                    SourceObject ="Form.fmTECHNICIAN_edit"
                    GroupTable =2
                    RightPadding =0
                    GridlineColor =10921638

                    LayoutCachedLeft =2250
                    LayoutCachedTop =150
                    LayoutCachedWidth =17115
                    LayoutCachedHeight =9705
                    RowEnd =3
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    BorderThemeColorIndex =6
                    BorderShade =50.0
                    GroupTable =2
                End
                Begin EmptyCell
                    Left =165
                    Top =2145
                    Width =1890
                    Height =7560
                    Name ="EmptyCell40"
                    GroupTable =2
                    LeftPadding =144
                    RightPadding =144
                    GridlineColor =10921638
                    LayoutCachedLeft =165
                    LayoutCachedTop =2145
                    LayoutCachedWidth =2055
                    LayoutCachedHeight =9705
                    RowStart =3
                    RowEnd =3
                    LayoutGroup =1
                    BackThemeColorIndex =4
                    BackTint =20.0
                    GroupTable =2
                End
                Begin EmptyCell
                    Left =165
                    Top =150
                    Width =1890
                    Height =630
                    Name ="EmptyCell51"
                    GroupTable =2
                    LeftPadding =144
                    RightPadding =144
                    GridlineColor =10921638
                    LayoutCachedLeft =165
                    LayoutCachedTop =150
                    LayoutCachedWidth =2055
                    LayoutCachedHeight =780
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin ToggleButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =165
                    Top =840
                    Width =1890
                    Height =570
                    FontSize =14
                    FontWeight =400
                    TabIndex =1
                    ForeColor =2500134
                    Name ="tglAdd"
                    Caption ="Add"
                    FontName ="Calibri"
                    OnMouseMove ="[Event Procedure]"
                    OnClick ="[Event Procedure]"
                    GroupTable =2
                    LeftPadding =144
                    RightPadding =144
                    GridlineColor =10921638

                    LayoutCachedLeft =165
                    LayoutCachedTop =840
                    LayoutCachedWidth =2055
                    LayoutCachedHeight =1410
                    RowStart =1
                    RowEnd =1
                    LayoutGroup =1
                    ForeTint =100.0
                    ForeShade =75.0
                    BackColor =16245684
                    BackTint =40.0
                    OldBorderStyle =1
                    BorderThemeColorIndex =7
                    BorderTint =100.0
                    HoverThemeColorIndex =6
                    HoverTint =100.0
                    PressedThemeColorIndex =8
                    PressedShade =100.0
                    HoverForeColor =3355443
                    HoverForeTint =100.0
                    PressedForeThemeColorIndex =0
                    PressedForeShade =75.0
                    GroupTable =2
                    WebImagePaddingLeft =10
                    WebImagePaddingTop =2
                    WebImagePaddingRight =9
                    Overlaps =1
                End
                Begin ToggleButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =165
                    Top =1470
                    Width =1890
                    Height =615
                    FontSize =14
                    FontWeight =400
                    TabIndex =2
                    ForeColor =2500134
                    Name ="tglEDIT"
                    Caption ="Edit"
                    FontName ="Calibri"
                    OnMouseMove ="[Event Procedure]"
                    OnClick ="[Event Procedure]"
                    GroupTable =2
                    LeftPadding =144
                    RightPadding =144
                    GridlineColor =10921638

                    LayoutCachedLeft =165
                    LayoutCachedTop =1470
                    LayoutCachedWidth =2055
                    LayoutCachedHeight =2085
                    RowStart =2
                    RowEnd =2
                    LayoutGroup =1
                    ForeTint =100.0
                    ForeShade =75.0
                    BackColor =16245684
                    BackTint =40.0
                    OldBorderStyle =1
                    BorderThemeColorIndex =7
                    BorderTint =100.0
                    HoverThemeColorIndex =6
                    HoverTint =100.0
                    PressedThemeColorIndex =8
                    PressedShade =100.0
                    HoverForeColor =3355443
                    HoverForeTint =100.0
                    PressedForeThemeColorIndex =0
                    PressedForeShade =75.0
                    GroupTable =2
                    WebImagePaddingLeft =10
                    WebImagePaddingTop =2
                    WebImagePaddingRight =9
                    WebImagePaddingBottom =1
                    Overlaps =1
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

Private Sub Form_Load()
On Error Resume Next
    Me.Parent!lblBANNER.Caption = "Technician View"
    Call tglEDIT_Click
End Sub

Private Sub tglAdd_Click()
    tglAdd = True
    tglEDIT = False
    Call tglButton
    
End Sub

Private Sub tglAdd_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
End Sub

Private Sub tglEDIT_Click()
    tglEDIT = True
    tglAdd = False
    Call tglButton
End Sub

Private Sub tglEdit_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    MouseCursor (32649)
    
End Sub

Private Sub tglButton()

On Error GoTo Macro11_Err
Dim sForm As String
Dim sPath As String

sForm = "fmTECHNICIAN"
sPath = Me.Parent.Name & ".NavigationSubform>fmTECHNICIAN.ChildForm"

    With CodeContextObject
        If (.tglEDIT = True) Then
            sForm = sForm & "_edit"
            DoCmd.BrowseTo acForm, sForm, sPath, "", "", 1
        Else
            sForm = sForm & "_NEW"
            DoCmd.BrowseTo acForm, sForm, sPath, "", "", 0
        End If
    End With


Macro11_Exit:
    Exit Sub

Macro11_Err:
    'MsgBox Error$
    Resume Macro11_Exit
    
End Sub

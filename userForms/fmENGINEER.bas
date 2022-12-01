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
    Width =24218
    DatasheetFontHeight =11
    ItemSuffix =207
    Left =3165
    Top =825
    Right =27540
    Bottom =13470
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0x2dbd37b38e40e540
    End
    Caption ="Engineer View"
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
            Height =11850
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin Subform
                    TabStop = NotDefault
                    OverlapFlags =85
                    BorderWidth =2
                    Left =4290
                    Top =120
                    Width =19905
                    Height =11685
                    Name ="childForm"
                    SourceObject ="Form.fmPARTNUM_BROWSE"
                    GroupTable =2
                    RightPadding =0
                    GridlineColor =10921638

                    LayoutCachedLeft =4290
                    LayoutCachedTop =120
                    LayoutCachedWidth =24195
                    LayoutCachedHeight =11805
                    RowEnd =4
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    BorderThemeColorIndex =6
                    BorderShade =50.0
                    GroupTable =2
                End
                Begin EmptyCell
                    Left =180
                    Top =2640
                    Width =3915
                    Height =9165
                    Name ="EmptyCell143"
                    GroupTable =2
                    LeftPadding =180
                    RightPadding =144
                    GridlineColor =10921638
                    LayoutCachedLeft =180
                    LayoutCachedTop =2640
                    LayoutCachedWidth =4095
                    LayoutCachedHeight =11805
                    RowStart =4
                    RowEnd =4
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =180
                    Top =750
                    Width =3915
                    Height =570
                    FontSize =18
                    TabIndex =1
                    Name ="cmbView"
                    RowSourceType ="Value List"
                    RowSource ="1;\"Electropolishing\";2;\"Leak Check\";3;\"Press Fixture\";4;\"Passivation\";5;"
                        "\"01/07/156 Parts\";7;\"Talon Parts\";8;\"Electrodes\";9;\"Supervisors\";10;\"La"
                        "boratory\";11;\"Bathe\""
                    ColumnWidths ="0;1440"
                    AfterUpdate ="[Event Procedure]"
                    GroupTable =2
                    LeftPadding =180
                    RightPadding =144
                    GridlineColor =10921638
                    AllowValueListEdits =0
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =180
                    LayoutCachedTop =750
                    LayoutCachedWidth =4095
                    LayoutCachedHeight =1320
                    RowStart =1
                    RowEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeThemeColorIndex =0
                    ForeShade =75.0
                    GroupTable =2
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =180
                    Top =2010
                    Width =3915
                    Height =570
                    FontSize =18
                    TabIndex =2
                    Name ="cmbAction"
                    RowSourceType ="Value List"
                    RowSource ="1;\"Add New\";2;\"Edit\";3;\"Browse\""
                    ColumnWidths ="0;1440"
                    BeforeUpdate ="[Event Procedure]"
                    GroupTable =2
                    LeftPadding =180
                    RightPadding =144
                    GridlineColor =10921638
                    AllowValueListEdits =0
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =180
                    LayoutCachedTop =2010
                    LayoutCachedWidth =4095
                    LayoutCachedHeight =2580
                    RowStart =3
                    RowEnd =3
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeThemeColorIndex =0
                    ForeShade =75.0
                    GroupTable =2
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =180
                    Top =1380
                    Width =3915
                    Height =570
                    FontSize =18
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label205"
                    Caption ="Action:"
                    GroupTable =2
                    LeftPadding =180
                    RightPadding =144
                    GridlineColor =10921638
                    LayoutCachedLeft =180
                    LayoutCachedTop =1380
                    LayoutCachedWidth =4095
                    LayoutCachedHeight =1950
                    RowStart =2
                    RowEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =180
                    Top =120
                    Width =3915
                    Height =576
                    FontSize =18
                    TopMargin =43
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label206"
                    Caption ="View:"
                    GroupTable =2
                    LeftPadding =180
                    RightPadding =144
                    GridlineColor =10921638
                    LayoutCachedLeft =180
                    LayoutCachedTop =120
                    LayoutCachedWidth =4095
                    LayoutCachedHeight =696
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
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
Dim sSubFrm As String
Dim sFrm As String
Dim lMove As Long

Private Sub cmd_01_ADD_Click()
    sFrm = "fmpart_01_new"
    lMove = 0
    Call browseFrm
End Sub

Private Sub cmd_01_EDIT_Click()
    sFrm = "fmpart_01_EDIT"
    lMove = 1
    Call browseFrm
End Sub

Private Sub Command133_Click()
    sFrm = "fmpart_01_BROWSE"
    lMove = 3
    Call browseFrm
End Sub

Private Sub cmbAction_BeforeUpdate(Cancel As Integer)
    Call cmbView_AfterUpdate
    
End Sub

Private Sub cmbView_AfterUpdate()
'Build path based on combobox selections
If (cmbView <> "") Or (cmbAction <> "") Then

    sFrm = "fm"
    '1;"Electropolishing";2;"Leak Check";3;"Press Fixture";4;"Passivation";5;"01/07/156 Parts";'7;"Talon Parts";8;"Electrodes";9;"Supervisors";10;"Laboratory"
    With cmbView
        If .Value = 1 Then
            sFrm = sFrm & "EP"
        ElseIf .Value = 2 Then
            sFrm = sFrm & "LEAKCHECK"
        ElseIf .Value = 3 Then
            sFrm = sFrm & "PRESS"
        ElseIf .Value = 4 Then
            sFrm = sFrm & "PASSIVATION"
        ElseIf .Value = 5 Then
            sFrm = sFrm & "PART"
        ElseIf .Value = 7 Then
            sFrm = sFrm & "PARTNUM"
        ElseIf .Value = 8 Then
            sFrm = sFrm & "PART_01_ELECTRODE"
        ElseIf .Value = 9 Then
            sFrm = sFrm & "SUPERVISOR"
        ElseIf .Value = 10 Then
            sFrm = sFrm & "LABORATORIES"
        ElseIf .Value = 11 Then
            sFrm = sFrm & "BATH"
        End If
    End With
    
    With cmbAction
        If .Value = 1 Then
            lMove = 0
            sFrm = sFrm & "_NEW"
        ElseIf .Value = 2 Then
            lMove = 1
            sFrm = sFrm & "_EDIT"
        ElseIf .Value = 3 Then
            lMove = 3
            sFrm = sFrm & "_BROWSE"
        End If
    End With
    
    If (IsNull(sFrm) = False) And (IsNull(lMove) = False) Then
        Call browseFrm
    End If
    
End If

End Sub

Private Sub Form_Load()
On Error Resume Next
    Me.Parent!lblBANNER.Caption = "Engineer View"

End Sub

Private Sub browseFrm()
On Error GoTo browseErr:
    sSubFrm = Me.Parent.Name & ".NavigationSubform>fmENGINEER.ChildForm"
    DoCmd.BrowseTo acForm, sFrm, sSubFrm, "", "", lMove
    
err_Exit:
    Exit Sub
    
browseErr:
    MsgBox "There isn't a form available for these selections."
End Sub

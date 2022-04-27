Version =20
VersionRequired =20
Begin Form
    AllowFilters = NotDefault
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowEdits = NotDefault
    DataEntry = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =18390
    DatasheetFontHeight =11
    ItemSuffix =448
    Left =3930
    Top =1545
    Right =22545
    Bottom =9525
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0xe7fd44b353ece440
    End
    RecordSource ="tblMETERS_CR"
    Caption ="Meter Check"
    DatasheetFontName ="Calibri"
    OnLoad ="[Event Procedure]"
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
        Begin Section
            Height =5880
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =3
                    ListRows =10
                    ListWidth =1440
                    Left =10275
                    Top =1755
                    Width =5595
                    Height =524
                    FontSize =18
                    ColumnInfo ="\"\";\"\";\"First Name\";\"\";\"Last Name\";\"\";\"10\";\"100\""
                    Name ="cmbName"
                    ControlSource ="techNAME"
                    RowSourceType ="Table/Query"
                    RowSource ="qryEMPLOYEE_CR"
                    ColumnWidths ="0;1440;1440"
                    GroupTable =1
                    GridlineColor =10921638
                    AllowValueListEdits =0
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =10275
                    LayoutCachedTop =1755
                    LayoutCachedWidth =15870
                    LayoutCachedHeight =2279
                    RowStart =2
                    RowEnd =2
                    ColumnStart =2
                    ColumnEnd =4
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
                            Left =30
                            Top =1755
                            Width =10185
                            Height =524
                            FontSize =18
                            LeftMargin =44
                            TopMargin =22
                            RightMargin =44
                            BottomMargin =22
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label51"
                            Caption ="Technician:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =30
                            LayoutCachedTop =1755
                            LayoutCachedWidth =10215
                            LayoutCachedHeight =2279
                            RowStart =2
                            RowEnd =2
                            ColumnEnd =1
                            LayoutGroup =1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =10275
                    Top =2340
                    Width =3030
                    Height =524
                    FontSize =18
                    TabIndex =1
                    ForeColor =6710886
                    Name ="cmdEnter"
                    Caption ="Command151"
                    ControlTipText ="Add Record"
                    GroupTable =1
                    BottomPadding =720
                    GridlineColor =10921638
                    OnClickEmMacro = Begin
                        Version =196611
                        ColumnsShown =0
                        Begin
                            Action ="OnError"
                            Argument ="0"
                        End
                        Begin
                            Action ="SetLocalVar"
                            Argument ="__*L0_"
                            Argument ="IsNull([cmbName])=False"
                        End
                        Begin
                            Action ="SetLocalVar"
                            Argument ="__*L0C_"
                            Argument ="[LocalVars]![__*L0_]"
                        End
                        Begin
                            Condition ="[LocalVars]![__*L0C_]"
                            Action ="GoToRecord"
                            Argument ="-1"
                            Argument =""
                            Argument ="5"
                        End
                        Begin
                            Condition ="..."
                            Action ="MsgBox"
                            Argument ="The check has successfully been recorded."
                            Argument ="0"
                            Argument ="0"
                            Argument ="Success"
                        End
                        Begin
                            Action ="SetLocalVar"
                            Argument ="__*L0C_"
                            Argument ="(Not [LocalVars]![__*L0_])"
                        End
                        Begin
                            Condition ="[LocalVars]![__*L0C_]"
                            Action ="MsgBox"
                            Argument ="Please enter your name."
                            Argument ="-1"
                            Argument ="0"
                            Argument ="Alert"
                        End
                        Begin
                            Action ="SetLocalVar"
                            Argument ="__*L0C_"
                            Argument ="False"
                        End
                        Begin
                            Condition ="[MacroError]<>0"
                            Action ="MsgBox"
                            Argument ="=[MacroError].[Description]"
                            Argument ="-1"
                            Argument ="0"
                        End
                        Begin
                            Comment ="_AXL:<?xml version=\"1.0\" encoding=\"UTF-16\" standalone=\"no\"?>\015\012<UserI"
                                "nterfaceMacro For=\"cmdEnter\" Event=\"OnClick\" xmlns=\"http://schemas.microsof"
                                "t.com/office/accessservices/2009/11/application\"><Statements><Action Name=\"OnE"
                                "rror\"/><ConditionalBlock><If><Co"
                        End
                        Begin
                            Comment ="_AXL:ndition>IsNull([cmbName])=False</Condition><Statements><Action Name=\"GoToR"
                                "ecord\"><Argument Name=\"Record\">New</Argument></Action><Action Name=\"MessageB"
                                "ox\"><Argument Name=\"Message\">The check has successfully been recorded.</Argum"
                                "ent><Argument Name=\"B"
                        End
                        Begin
                            Comment ="_AXL:eep\">No</Argument><Argument Name=\"Title\">Success</Argument></Action></St"
                                "atements></If><Else><Statements><Action Name=\"MessageBox\"><Argument Name=\"Mes"
                                "sage\">Please enter your name.</Argument><Argument Name=\"Title\">Alert</Argumen"
                                "t></Action></Statement"
                        End
                        Begin
                            Comment ="_AXL:s></Else></ConditionalBlock><ConditionalBlock><If><Condition>[MacroError]&l"
                                "t;&gt;0</Condition><Statements><Action Name=\"MessageBox\"><Argument Name=\"Mess"
                                "age\">=[MacroError].[Description]</Argument></Action></Statements></If></Conditi"
                                "onalBlock></State"
                        End
                        Begin
                            Comment ="_AXL:ments></UserInterfaceMacro>"
                        End
                    End
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
                    LayoutCachedLeft =10275
                    LayoutCachedTop =2340
                    LayoutCachedWidth =13305
                    LayoutCachedHeight =2864
                    RowStart =3
                    RowEnd =3
                    ColumnStart =2
                    ColumnEnd =3
                    LayoutGroup =1
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
                    GroupTable =1
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingRight =1
                    WebImagePaddingBottom =47
                    Overlaps =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =30
                    Top =120
                    Width =18330
                    Height =735
                    FontSize =14
                    BorderColor =10066329
                    ForeColor =6052956
                    Name ="Label268"
                    Caption ="See 16-10-3-CN-0076 for further instructions.\015\012See 16-10-3-CN-0051 for cal"
                        "ibration instructions."
                    GroupTable =1
                    BottomPadding =288
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =120
                    LayoutCachedWidth =18360
                    LayoutCachedHeight =855
                    ColumnEnd =5
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    ForeTint =80.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =2340
                    Width =10185
                    Height =524
                    FontSize =18
                    LeftMargin =44
                    TopMargin =22
                    RightMargin =44
                    BottomMargin =22
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label290"
                    Caption ="Mark as Completed:"
                    GroupTable =1
                    BottomPadding =720
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =2340
                    LayoutCachedWidth =10215
                    LayoutCachedHeight =2864
                    RowStart =3
                    RowEnd =3
                    ColumnEnd =1
                    LayoutGroup =1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin TextBox
                    TabStop = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =8415
                    Top =4110
                    Width =1800
                    Height =516
                    FontSize =18
                    TabIndex =2
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtTEMPERATURE"
                    AfterUpdate ="[Event Procedure]"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =8415
                    LayoutCachedTop =4110
                    LayoutCachedWidth =10215
                    LayoutCachedHeight =4626
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
                            Left =30
                            Top =4110
                            Width =8325
                            Height =516
                            FontSize =18
                            LeftMargin =44
                            TopMargin =22
                            RightMargin =44
                            BottomMargin =22
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label299"
                            Caption ="ᵒC to ᵒF:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =30
                            LayoutCachedTop =4110
                            LayoutCachedWidth =8355
                            LayoutCachedHeight =4626
                            RowStart =5
                            RowEnd =5
                            LayoutGroup =1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =30
                    Top =3615
                    Width =18330
                    Height =435
                    FontSize =16
                    BorderColor =10066329
                    ForeColor =6052956
                    Name ="Label316"
                    Caption ="Conversion Help (optional)"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =3615
                    LayoutCachedWidth =18360
                    LayoutCachedHeight =4050
                    RowStart =4
                    RowEnd =4
                    ColumnEnd =5
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    ForeTint =80.0
                    GroupTable =1
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    OverlapFlags =85
                    TextAlign =2
                    Left =10275
                    Top =4110
                    Width =1800
                    Height =516
                    FontSize =18
                    TopMargin =14
                    BackColor =15921906
                    ForeColor =3355443
                    Name ="lblTEMPERATURE"
                    Caption ="68"
                    GroupTable =1
                    LayoutCachedLeft =10275
                    LayoutCachedTop =4110
                    LayoutCachedWidth =12075
                    LayoutCachedHeight =4626
                    RowStart =5
                    RowEnd =5
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    BackShade =95.0
                    BorderThemeColorIndex =7
                    BorderTint =100.0
                    ForeTint =100.0
                    GridlineThemeColorIndex =5
                    GridlineShade =100.0
                    GroupTable =1
                End
                Begin TextBox
                    TabStop = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =8415
                    Top =4680
                    Width =1800
                    Height =525
                    FontSize =18
                    TabIndex =3
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtRESISTANCE"
                    AfterUpdate ="[Event Procedure]"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =8415
                    LayoutCachedTop =4680
                    LayoutCachedWidth =10215
                    LayoutCachedHeight =5205
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
                            Left =30
                            Top =4680
                            Width =8325
                            Height =525
                            FontSize =18
                            LeftMargin =44
                            TopMargin =22
                            RightMargin =44
                            BottomMargin =22
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label365"
                            Caption ="μS to MΩ: "
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =30
                            LayoutCachedTop =4680
                            LayoutCachedWidth =8355
                            LayoutCachedHeight =5205
                            RowStart =6
                            RowEnd =6
                            LayoutGroup =1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin Label
                    BackStyle =1
                    OldBorderStyle =1
                    BorderWidth =1
                    OverlapFlags =85
                    TextAlign =2
                    Left =10275
                    Top =4680
                    Width =1800
                    Height =525
                    FontSize =18
                    BackColor =15921906
                    ForeColor =3355443
                    Name ="lblRESISTANCE"
                    GroupTable =1
                    LayoutCachedLeft =10275
                    LayoutCachedTop =4680
                    LayoutCachedWidth =12075
                    LayoutCachedHeight =5205
                    RowStart =6
                    RowEnd =6
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    BackShade =95.0
                    BorderThemeColorIndex =7
                    BorderTint =100.0
                    ForeTint =100.0
                    GridlineThemeColorIndex =5
                    GridlineShade =100.0
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =13365
                    Top =1170
                    Width =4995
                    Height =524
                    Name ="EmptyCell388"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =13365
                    LayoutCachedTop =1170
                    LayoutCachedWidth =18360
                    LayoutCachedHeight =1694
                    RowStart =1
                    RowEnd =1
                    ColumnStart =4
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =12135
                    Top =4110
                    Width =6225
                    Height =1095
                    Name ="EmptyCell404"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =12135
                    LayoutCachedTop =4110
                    LayoutCachedWidth =18360
                    LayoutCachedHeight =5205
                    RowStart =5
                    RowEnd =6
                    ColumnStart =3
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =10275
                    Top =1170
                    Width =3030
                    Height =524
                    FontSize =18
                    FontWeight =700
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="lblNEXT"
                    Caption ="6/17/2020"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =10275
                    LayoutCachedTop =1170
                    LayoutCachedWidth =13305
                    LayoutCachedHeight =1694
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =3
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =30
                    Top =1170
                    Width =10185
                    Height =524
                    FontSize =18
                    LeftMargin =44
                    TopMargin =22
                    RightMargin =44
                    BottomMargin =22
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label439"
                    Caption ="Next Scheduled Test:"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =1170
                    LayoutCachedWidth =10215
                    LayoutCachedHeight =1694
                    RowStart =1
                    RowEnd =1
                    ColumnEnd =1
                    LayoutGroup =1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =13365
                    Top =2340
                    Width =4995
                    Height =524
                    Name ="EmptyCell444"
                    GroupTable =1
                    BottomPadding =720
                    GridlineColor =10921638
                    LayoutCachedLeft =13365
                    LayoutCachedTop =2340
                    LayoutCachedWidth =18360
                    LayoutCachedHeight =2864
                    RowStart =3
                    RowEnd =3
                    ColumnStart =4
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =15930
                    Top =1755
                    Width =2430
                    Height =524
                    Name ="EmptyCell447"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =15930
                    LayoutCachedTop =1755
                    LayoutCachedWidth =18360
                    LayoutCachedHeight =2279
                    RowStart =2
                    RowEnd =2
                    ColumnStart =5
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =1
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

#If VBA7 Then
    Private Declare PtrSafe Function GetClientRect Lib "user32" (ByVal hwnd As Long, lpRect As SCREEN) As Long
    Private Declare PtrSafe Function GetDesktopWindow Lib "user32" () As Long
#Else
    Private Declare Function GetClientRect Lib "user32" (ByVal hwnd As Long, lpRect As SCREEN) As Long
    Private Declare Function GetDesktopWindow Lib "user32" () As Long
#End If

Private Type SCREEN
        Left As Long
        top As Long
        Right As Long
        bottom As Long
End Type

Private Sub Image169_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)

MouseCursor (32649)

End Sub

Private Sub Form_Load()
On Error Resume Next

Me.Parent!lblBANNER.Caption = "CR Quarterly Maintenance"


Dim ScreenHeight As Integer
Dim ScreenWidth As Integer
Dim freq As Integer
Dim ifreq As Integer
Dim Scrn As SCREEN
Dim ret As Long
Dim ctl As Control
Dim lastDate As Date
Dim nextDate As Date
Dim tabLoc As String
    
    ret = GetClientRect(CLng(GetDesktopWindow()), Scrn)
    ScreenHeight = Scrn.bottom - Scrn.top
    ScreenWidth = Scrn.Right - Scrn.Left
    
    freq = Nz(DLookup("[frequency]", "tblTASKLIST", "[ID] = 11"))
    tabLoc = Nz(DLookup("[tableREL]", "tblTASKLIST", "[ID] = 11"))
    lastDate = Nz(DMax("[timeDate]", tabLoc))
    
    With Forms![fmHome]![NavigationSubform].Form![Child20]
        If ScreenHeight = 768 And ScreenWidth = 1366 Then
            ![EmptyCell63].Width = ![EmptyCell63].Width / 1.75
            '![EmptyCell535].Width = ![EmptyCell535].Width / 1.5
        End If
        
        If ScreenHeight = 900 And ScreenWidth = 1600 Then
            ![EmptyCell63].Width = ![EmptyCell63].Width / 1.5
            '![EmptyCell535].Width = ![EmptyCell535].Width / 1.5
        End If
    End With
    
lblTEMPERATURE.Caption = ""
lblRESISTANCE.Caption = ""

    'Assign appropriate time for next test date
    If freq = 1 Then 'daily
        nextDate = DateAdd("d", 1, lastDate)
    ElseIf freq = 2 Then 'every other day
        nextDate = DateAdd("d", 2, lastDate)
    ElseIf freq = 7 Then 'weekly
        nextDate = DateAdd("ww", 1, lastDate)
    ElseIf freq = 14 Then 'biweekly
        nextDate = DateAdd("ww", 2, lastDate)
    ElseIf freq = 30 Then 'monthly
        nextDate = DateAdd("m", 1, lastDate)
    ElseIf freq = 81 Then 'quarterly
        nextDate = DateAdd("q", 1, lastDate)
    ElseIf freq = 325 Then 'annually
        nextDate = DateAdd("yyyy", 1, lastDate)
    Else:
        MsgBox "Error when pulling testing frequency information.", vbOKOnly, "Error"
        lblNEXT.Caption = "ERROR"
        Exit Sub
    End If
    
    lblNEXT.Caption = nextDate

End Sub

Private Sub txtRESISTANCE_AfterUpdate() 'used to convert units

Dim conduct As Double
Dim resist As Double

conduct = txtRESISTANCE.Value
resist = Round(1 / conduct)
lblRESISTANCE.Caption = resist

End Sub

Private Sub txtTEMPERATURE_AfterUpdate() 'used to convert units

Dim celsius As Double
Dim fahren As Double

celsius = txtTEMPERATURE.Value
fahren = Round(celsius * (9 / 5) + 32, 2)
lblTEMPERATURE.Caption = fahren

End Sub

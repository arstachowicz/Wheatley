Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =13718
    DatasheetFontHeight =11
    ItemSuffix =277
    Right =17835
    Bottom =13680
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0x2864220770dfe440
    End
    RecordSource ="tblTASKLIST"
    Caption ="Adjust Tasks"
    DatasheetFontName ="Calibri"
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
            Height =7814
            Name ="Detail"
            AutoHeight =1
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin ListBox
                    TabStop = NotDefault
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    BorderWidth =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =8835
                    Top =600
                    Width =4830
                    Height =3015
                    ColumnWidth =1572
                    FontSize =14
                    TabIndex =2
                    BackColor =15921906
                    ForeColor =3355443
                    Name ="frequency"
                    ControlSource ="frequency"
                    RowSourceType ="Value List"
                    RowSource ="1;\"Daily\";2;\"Every other day\";7;\"Weekly\";14;\"Biweekly\";30;\"Monthly\";81"
                        ";\"Quarterly\";325;\"Annually\""
                    ColumnWidths ="0;1440"
                    StatusBarText ="How often is this task completed? Daily = 1, Every other day = 2, Weekly = 7, et"
                        "c."
                    GroupTable =1

                    LayoutCachedLeft =8835
                    LayoutCachedTop =600
                    LayoutCachedWidth =13665
                    LayoutCachedHeight =3615
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =4
                    LayoutGroup =1
                    BackShade =95.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    GridlineThemeColorIndex =5
                    GridlineShade =100.0
                    GroupTable =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =4755
                            Top =600
                            Width =4020
                            Height =3015
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label6"
                            Caption ="Frequency:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =4755
                            LayoutCachedTop =600
                            LayoutCachedWidth =8775
                            LayoutCachedHeight =3615
                            RowStart =1
                            RowEnd =1
                            ColumnStart =1
                            ColumnEnd =1
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin ListBox
                    TabStop = NotDefault
                    OverlapFlags =85
                    BorderWidth =1
                    IMESentenceMode =3
                    ColumnCount =3
                    Left =8835
                    Top =3675
                    Width =4830
                    Height =3240
                    ColumnWidth =2592
                    FontSize =14
                    TabIndex =3
                    BackColor =15921906
                    ForeColor =3355443
                    Name ="supervisorResponsible"
                    ControlSource ="supervisorResponsible"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tblSUPERVISORS.ID, tblSUPERVISORS.firstName, tblSUPERVISORS.lastName FROM"
                        " tblSUPERVISORS ORDER BY tblSUPERVISORS.firstName, tblSUPERVISORS.lastName; "
                    ColumnWidths ="0;1800;1440"
                    StatusBarText ="Which supervisor(s) are responsible for tracking this task?"
                    GroupTable =1
                    AllowValueListEdits =0

                    LayoutCachedLeft =8835
                    LayoutCachedTop =3675
                    LayoutCachedWidth =13665
                    LayoutCachedHeight =6915
                    RowStart =2
                    RowEnd =2
                    ColumnStart =2
                    ColumnEnd =4
                    LayoutGroup =1
                    BackShade =95.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    GridlineThemeColorIndex =5
                    GridlineShade =100.0
                    GroupTable =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =4755
                            Top =3675
                            Width =4020
                            Height =3240
                            FontSize =16
                            TopMargin =29
                            BorderColor =10066329
                            ForeColor =3355443
                            Name ="Label9"
                            Caption ="Supervisor(s) Responsible:"
                            GroupTable =1
                            GridlineColor =10921638
                            LayoutCachedLeft =4755
                            LayoutCachedTop =3675
                            LayoutCachedWidth =8775
                            LayoutCachedHeight =6915
                            RowStart =2
                            RowEnd =2
                            ColumnStart =1
                            ColumnEnd =1
                            LayoutGroup =1
                            BackThemeColorIndex =-1
                            BorderThemeColorIndex =-1
                            ForeTint =100.0
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =10110
                    Top =6975
                    Width =1140
                    Height =480
                    ColumnWidth =2088
                    FontSize =16
                    TabIndex =4
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="alertEmail"
                    ControlSource ="alertEmail"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =10110
                    LayoutCachedTop =6975
                    LayoutCachedWidth =11250
                    LayoutCachedHeight =7455
                    RowStart =3
                    RowEnd =3
                    ColumnStart =3
                    ColumnEnd =3
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
                    Left =4755
                    Top =6975
                    Width =5295
                    Height =780
                    FontSize =14
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label21"
                    Caption ="# of Day(s) Past Due Date to Send Email Alerts:"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =4755
                    LayoutCachedTop =6975
                    LayoutCachedWidth =10050
                    LayoutCachedHeight =7755
                    RowStart =3
                    RowEnd =4
                    ColumnStart =1
                    ColumnEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =11310
                    Top =6975
                    Width =2355
                    Height =780
                    Name ="EmptyCell48"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =11310
                    LayoutCachedTop =6975
                    LayoutCachedWidth =13665
                    LayoutCachedHeight =7755
                    RowStart =3
                    RowEnd =4
                    ColumnStart =4
                    ColumnEnd =4
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin ListBox
                    TabStop = NotDefault
                    OverlapFlags =85
                    BorderWidth =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =30
                    Top =600
                    Width =4665
                    Height =7155
                    FontSize =14
                    TabIndex =1
                    BackColor =15921906
                    ForeColor =3355443
                    Name ="List66"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT [tblTASKLIST].[ID], [tblTASKLIST].[taskTitle] FROM tblTASKLIST ORDER BY ["
                        "taskTitle]; "
                    ColumnWidths ="0;2244"
                    AfterUpdate ="[Event Procedure]"
                    GroupTable =1

                    LayoutCachedLeft =30
                    LayoutCachedTop =600
                    LayoutCachedWidth =4695
                    LayoutCachedHeight =7755
                    RowStart =1
                    RowEnd =4
                    LayoutGroup =1
                    BackShade =95.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    GridlineThemeColorIndex =5
                    GridlineShade =100.0
                    GroupTable =1
                End
                Begin Label
                    FontUnderline = NotDefault
                    OverlapFlags =85
                    TextAlign =2
                    Left =30
                    Top =60
                    Width =4665
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label85"
                    Caption ="Task List"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =30
                    LayoutCachedTop =60
                    LayoutCachedWidth =4695
                    LayoutCachedHeight =540
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =4755
                    Top =60
                    Width =4020
                    Height =480
                    FontSize =16
                    TopMargin =29
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label3"
                    Caption ="Task Name:"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =4755
                    LayoutCachedTop =60
                    LayoutCachedWidth =8775
                    LayoutCachedHeight =540
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =1
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =8835
                    Top =60
                    Width =4830
                    Height =480
                    FontSize =16
                    LeftMargin =44
                    TopMargin =29
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="taskTitle"
                    ControlSource ="taskTitle"
                    GroupTable =1
                    GridlineColor =10921638

                    LayoutCachedLeft =8835
                    LayoutCachedTop =60
                    LayoutCachedWidth =13665
                    LayoutCachedHeight =540
                    ColumnStart =2
                    ColumnEnd =4
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =10110
                    Top =7515
                    Width =1140
                    Name ="EmptyCell275"
                    GroupTable =1
                    GridlineColor =10921638
                    LayoutCachedLeft =10110
                    LayoutCachedTop =7515
                    LayoutCachedWidth =11250
                    LayoutCachedHeight =7755
                    RowStart =4
                    RowEnd =4
                    ColumnStart =3
                    ColumnEnd =3
                    LayoutGroup =1
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

Private Sub List66_AfterUpdate()

'Select the record highlighted and display
DoCmd.SearchForRecord , "", acFirst, "[ID] = " & Str(Nz(SCREEN.ActiveControl, 0))

End Sub

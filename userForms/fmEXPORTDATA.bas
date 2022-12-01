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
    Width =24035
    DatasheetFontHeight =11
    ItemSuffix =498
    Left =3165
    Top =825
    Right =27540
    Bottom =13470
    DatasheetForeColor =3355443
    RecSrcDt = Begin
        0x7c8b74c4d5dbe440
    End
    Caption ="Load Data"
    OnOpen ="[Event Procedure]"
    OnClose ="[Event Procedure]"
    DatasheetFontName ="Calibri"
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
        Begin Line
            BorderLineStyle =0
            BorderThemeColorIndex =0
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
        Begin OptionGroup
            SpecialEffect =3
            BorderLineStyle =0
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
        Begin Section
            CanGrow = NotDefault
            Height =11040
            Name ="Detail"
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =2085
                    Top =5130
                    Width =1800
                    Height =435
                    FontSize =14
                    TabIndex =9
                    ForeColor =3355443
                    Name ="cmdExcelOpen"
                    Caption ="Excel"
                    GroupTable =2
                    RightPadding =12
                    GridlineColor =10921638
                    OnClickEmMacro = Begin
                        Version =196611
                        ColumnsShown =0
                        Begin
                            Condition ="IsNull([cmbTask])=True"
                            Action ="MsgBox"
                            Argument ="Select a spreadsheet."
                            Argument ="-1"
                            Argument ="0"
                        End
                        Begin
                            Condition ="..."
                            Action ="StopMacro"
                        End
                        Begin
                            Action ="OutputTo"
                            Argument ="1"
                            Argument ="=DLookUp(\"[qryRel]\",\"tblTaskList\",\"[ID]=\" & [cmbTask])"
                            Argument ="ExcelWorkbook(*.xlsx)"
                            Argument =""
                            Argument ="-1"
                            Argument =""
                            Argument =""
                            Argument ="0"
                        End
                        Begin
                            Comment ="_AXL:<?xml version=\"1.0\" encoding=\"UTF-16\" standalone=\"no\"?>\015\012<UserI"
                                "nterfaceMacro For=\"cmdExcelOpen\" Event=\"OnClick\" xmlns=\"http://schemas.micr"
                                "osoft.com/office/accessservices/2009/11/application\"><Statements><ConditionalBl"
                                "ock><If><Condition>IsNull([cmbT"
                        End
                        Begin
                            Comment ="_AXL:ask])=True</Condition><Statements><Action Name=\"MessageBox\"><Argument Nam"
                                "e=\"Message\">Select a spreadsheet.</Argument></Action><Action Name=\"StopMacro\""
                                "/></Statements></If></ConditionalBlock><Action Name=\"ExportWithFormatting\"><Ar"
                                "gument Name=\"ObjectT"
                        End
                        Begin
                            Comment ="_AXL:ype\">Query</Argument><Argument Name=\"ObjectName\">=DLookUp(\"[qryRel]\",\""
                                "tblTaskList\",\"[ID]=\" &amp; [cmbTask])</Argument><Argument Name=\"OutputFormat"
                                "\">ExcelWorkbook(*.xlsx)</Argument><Argument Name=\"AutoStart\">Yes</Argument></"
                                "Action></Statements></Use"
                        End
                        Begin
                            Comment ="_AXL:rInterfaceMacro>"
                        End
                    End

                    CursorOnHover =1
                    LayoutCachedLeft =2085
                    LayoutCachedTop =5130
                    LayoutCachedWidth =3885
                    LayoutCachedHeight =5565
                    RowStart =7
                    RowEnd =7
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
                    GroupTable =2
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =2085
                    Top =5625
                    Width =1800
                    Height =435
                    FontSize =14
                    TabIndex =11
                    ForeColor =3355443
                    Name ="buttonExcel"
                    Caption ="Excel"
                    GroupTable =2
                    RightPadding =12
                    GridlineColor =10921638
                    OnClickEmMacro = Begin
                        Version =196611
                        ColumnsShown =0
                        Begin
                            Action ="SetLocalVar"
                            Argument ="__*L0_"
                            Argument ="IsNull([cmbTask])=True"
                        End
                        Begin
                            Action ="SetLocalVar"
                            Argument ="__*L0C_"
                            Argument ="[LocalVars]![__*L0_]"
                        End
                        Begin
                            Condition ="[LocalVars]![__*L0C_]"
                            Action ="MsgBox"
                            Argument ="Select a spreadsheet."
                            Argument ="-1"
                            Argument ="0"
                        End
                        Begin
                            Condition ="..."
                            Action ="StopMacro"
                        End
                        Begin
                            Action ="SetLocalVar"
                            Argument ="__*L0C_"
                            Argument ="(Not [LocalVars]![__*L0_])"
                        End
                        Begin
                            Condition ="[LocalVars]![__*L0C_]"
                            Action ="SendObject"
                            Argument ="1"
                            Argument ="=DLookUp(\"[qryRel]\",\"tblTaskList\",\"[ID]=\" & [cmbTask])"
                            Argument ="ExcelWorkbook(*.xlsx)"
                            Argument =""
                            Argument =""
                            Argument =""
                            Argument ="=DLookUp(\"[taskTitle]\",\"tblTaskList\",\"[ID]=\" & [cmbTask]) & \" Excel Repor"
                                "t\""
                            Argument ="=\"Attached is a copy of data collected for the task, \" & DLookUp(\"[taskTitle]"
                                "\",\"tblTaskList\",\"[ID]=\" & [cmbTask]) & \", for the dates between \" & [Temp"
                                "Vars]![tmpDate1] & \" and \" & [TempVars]![tmpDate2] & \".\""
                            Argument ="-1"
                        End
                        Begin
                            Action ="SetLocalVar"
                            Argument ="__*L0C_"
                            Argument ="False"
                        End
                        Begin
                            Comment ="_AXL:<?xml version=\"1.0\" encoding=\"UTF-16\" standalone=\"no\"?>\015\012<UserI"
                                "nterfaceMacro For=\"buttonExcel\" Event=\"OnClick\" xmlns=\"http://schemas.micro"
                                "soft.com/office/accessservices/2009/11/application\"><Statements><ConditionalBlo"
                                "ck><If><Condition>IsNull([cmbTa"
                        End
                        Begin
                            Comment ="_AXL:sk])=True</Condition><Statements><Action Name=\"MessageBox\"><Argument Name"
                                "=\"Message\">Select a spreadsheet.</Argument></Action><Action Name=\"StopMacro\""
                                "/></Statements></If><Else><Statements><Action Name=\"EMailDatabaseObject\"><Argu"
                                "ment Name=\"ObjectType"
                        End
                        Begin
                            Comment ="_AXL:\">Query</Argument><Argument Name=\"ObjectName\">=DLookUp(\"[qryRel]\",\"tb"
                                "lTaskList\",\"[ID]=\" &amp; [cmbTask])</Argument><Argument Name=\"OutputFormat\""
                                ">ExcelWorkbook(*.xlsx)</Argument><Argument Name=\"Subject\">=DLookUp(\"[taskTitl"
                                "e]\",\"tblTaskList\",\"[ID]=\" &"
                        End
                        Begin
                            Comment ="_AXL:amp; [cmbTask]) &amp; \" Excel Report\"</Argument><Argument Name=\"MessageT"
                                "ext\">=\"Attached is a copy of data collected for the task, \" &amp; DLookUp(\"["
                                "taskTitle]\",\"tblTaskList\",\"[ID]=\" &amp; [cmbTask]) &amp; \", for the dates "
                                "between \" &amp; [TempVars]"
                        End
                        Begin
                            Comment ="_AXL:![tmpDate1] &amp; \" and \" &amp; [TempVars]![tmpDate2] &amp; \".\"</Argume"
                                "nt></Action></Statements></Else></ConditionalBlock></Statements></UserInterfaceM"
                                "acro>"
                        End
                    End

                    CursorOnHover =1
                    LayoutCachedLeft =2085
                    LayoutCachedTop =5625
                    LayoutCachedWidth =3885
                    LayoutCachedHeight =6060
                    RowStart =8
                    RowEnd =8
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
                    GroupTable =2
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =3930
                    Top =5625
                    Width =1800
                    Height =435
                    FontSize =14
                    TabIndex =12
                    ForeColor =3355443
                    Name ="cmdPDFEmail"
                    Caption ="PDF"
                    GroupTable =2
                    RightPadding =12
                    GridlineColor =10921638
                    OnClickEmMacro = Begin
                        Version =196611
                        ColumnsShown =0
                        Begin
                            Action ="SetLocalVar"
                            Argument ="__*L0_"
                            Argument ="IsNull([cmbTask])=True"
                        End
                        Begin
                            Action ="SetLocalVar"
                            Argument ="__*L0C_"
                            Argument ="[LocalVars]![__*L0_]"
                        End
                        Begin
                            Condition ="[LocalVars]![__*L0C_]"
                            Action ="MsgBox"
                            Argument ="Select a spreadsheet."
                            Argument ="-1"
                            Argument ="0"
                        End
                        Begin
                            Condition ="..."
                            Action ="StopMacro"
                        End
                        Begin
                            Action ="SetLocalVar"
                            Argument ="__*L0C_"
                            Argument ="(Not [LocalVars]![__*L0_])"
                        End
                        Begin
                            Condition ="[LocalVars]![__*L0C_]"
                            Action ="SendObject"
                            Argument ="1"
                            Argument ="=DLookUp(\"[qryRel]\",\"tblTaskList\",\"[ID]=\" & [cmbTask])"
                            Argument ="PDFFormat(*.pdf)"
                            Argument =""
                            Argument =""
                            Argument =""
                            Argument ="=DLookUp(\"[taskTitle]\",\"tblTaskList\",\"[ID]=\" & [cmbTask]) & \" PDF Report\""
                            Argument ="=\"Attached is a copy of data collected for the task, \" & DLookUp(\"[taskTitle]"
                                "\",\"tblTaskList\",\"[ID]=\" & [cmbTask]) & \", for the dates between \" & [Temp"
                                "Vars]![tmpDate1] & \" and \" & [TempVars]![tmpDate2] & \".\""
                            Argument ="-1"
                        End
                        Begin
                            Action ="SetLocalVar"
                            Argument ="__*L0C_"
                            Argument ="False"
                        End
                        Begin
                            Comment ="_AXL:<?xml version=\"1.0\" encoding=\"UTF-16\" standalone=\"no\"?>\015\012<UserI"
                                "nterfaceMacro For=\"cmdPDFEmail\" Event=\"OnClick\" xmlns=\"http://schemas.micro"
                                "soft.com/office/accessservices/2009/11/application\"><Statements><ConditionalBlo"
                                "ck><If><Condition>IsNull([cmbTa"
                        End
                        Begin
                            Comment ="_AXL:sk])=True</Condition><Statements><Action Name=\"MessageBox\"><Argument Name"
                                "=\"Message\">Select a spreadsheet.</Argument></Action><Action Name=\"StopMacro\""
                                "/></Statements></If><Else><Statements><Action Name=\"EMailDatabaseObject\"><Argu"
                                "ment Name=\"ObjectType"
                        End
                        Begin
                            Comment ="_AXL:\">Query</Argument><Argument Name=\"ObjectName\">=DLookUp(\"[qryRel]\",\"tb"
                                "lTaskList\",\"[ID]=\" &amp; [cmbTask])</Argument><Argument Name=\"OutputFormat\""
                                ">PDFFormat(*.pdf)</Argument><Argument Name=\"Subject\">=DLookUp(\"[taskTitle]\","
                                "\"tblTaskList\",\"[ID]=\" &amp; "
                        End
                        Begin
                            Comment ="_AXL:[cmbTask]) &amp; \" PDF Report\"</Argument><Argument Name=\"MessageText\">="
                                "\"Attached is a copy of data collected for the task, \" &amp; DLookUp(\"[taskTit"
                                "le]\",\"tblTaskList\",\"[ID]=\" &amp; [cmbTask]) &amp; \", for the dates between"
                                " \" &amp; [TempVars]![tmpDa"
                        End
                        Begin
                            Comment ="_AXL:te1] &amp; \" and \" &amp; [TempVars]![tmpDate2] &amp; \".\"</Argument></Ac"
                                "tion></Statements></Else></ConditionalBlock></Statements></UserInterfaceMacro>"
                        End
                    End

                    CursorOnHover =1
                    LayoutCachedLeft =3930
                    LayoutCachedTop =5625
                    LayoutCachedWidth =5730
                    LayoutCachedHeight =6060
                    RowStart =8
                    RowEnd =8
                    ColumnStart =2
                    ColumnEnd =3
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
                    GroupTable =2
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =3930
                    Top =5130
                    Width =1800
                    Height =435
                    FontSize =14
                    TabIndex =10
                    ForeColor =3355443
                    Name ="cmdPDFOpen"
                    Caption ="PDF"
                    GroupTable =2
                    RightPadding =12
                    GridlineColor =10921638
                    OnClickEmMacro = Begin
                        Version =196611
                        ColumnsShown =0
                        Begin
                            Condition ="IsNull([cmbTask])=True"
                            Action ="MsgBox"
                            Argument ="Select a spreadsheet."
                            Argument ="-1"
                            Argument ="0"
                        End
                        Begin
                            Condition ="..."
                            Action ="StopMacro"
                        End
                        Begin
                            Action ="OutputTo"
                            Argument ="1"
                            Argument ="=DLookUp(\"[qryRel]\",\"tblTaskList\",\"[ID]=\" & [cmbTask])"
                            Argument ="PDFFormat(*.pdf)"
                            Argument =""
                            Argument ="-1"
                            Argument =""
                            Argument =""
                            Argument ="0"
                        End
                        Begin
                            Comment ="_AXL:<?xml version=\"1.0\" encoding=\"UTF-16\" standalone=\"no\"?>\015\012<UserI"
                                "nterfaceMacro For=\"cmdPDFOpen\" Event=\"OnClick\" xmlns=\"http://schemas.micros"
                                "oft.com/office/accessservices/2009/11/application\"><Statements><ConditionalBloc"
                                "k><If><Condition>IsNull([cmbTas"
                        End
                        Begin
                            Comment ="_AXL:k])=True</Condition><Statements><Action Name=\"MessageBox\"><Argument Name="
                                "\"Message\">Select a spreadsheet.</Argument></Action><Action Name=\"StopMacro\"/"
                                "></Statements></If></ConditionalBlock><Action Name=\"ExportWithFormatting\"><Arg"
                                "ument Name=\"ObjectTyp"
                        End
                        Begin
                            Comment ="_AXL:e\">Query</Argument><Argument Name=\"ObjectName\">=DLookUp(\"[qryRel]\",\"t"
                                "blTaskList\",\"[ID]=\" &amp; [cmbTask])</Argument><Argument Name=\"OutputFormat\""
                                ">PDFFormat(*.pdf)</Argument><Argument Name=\"AutoStart\">Yes</Argument></Action>"
                                "</Statements></UserInterf"
                        End
                        Begin
                            Comment ="_AXL:aceMacro>"
                        End
                    End

                    CursorOnHover =1
                    LayoutCachedLeft =3930
                    LayoutCachedTop =5130
                    LayoutCachedWidth =5730
                    LayoutCachedHeight =5565
                    RowStart =7
                    RowEnd =7
                    ColumnStart =2
                    ColumnEnd =3
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
                    GroupTable =2
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =2085
                    Top =60
                    Width =6300
                    Height =504
                    FontSize =18
                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"400\""
                    Name ="cmbTask"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tblTASKLIST.ID, tblTASKLIST.taskTitle FROM tblTASKLIST WHERE (((IsNull([q"
                        "ryRel]))=0)) ORDER BY tblTASKLIST.taskTitle; "
                    ColumnWidths ="0;1440"
                    AfterUpdate ="[Event Procedure]"
                    GroupTable =2
                    RightPadding =12
                    BottomPadding =180
                    GridlineColor =10921638
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =2085
                    LayoutCachedTop =60
                    LayoutCachedWidth =8385
                    LayoutCachedHeight =564
                    ColumnStart =1
                    ColumnEnd =5
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
                    TextAlign =3
                    Left =60
                    Top =60
                    Width =1992
                    Height =504
                    FontSize =16
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label99"
                    Caption ="Load Data:"
                    GroupTable =2
                    RightPadding =0
                    BottomPadding =180
                    GridlineColor =10921638
                    LayoutCachedLeft =60
                    LayoutCachedTop =60
                    LayoutCachedWidth =2052
                    LayoutCachedHeight =564
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin EmptyCell
                    Left =5775
                    Top =3660
                    Width =2610
                    Height =3225
                    Name ="EmptyCell147"
                    GroupTable =2
                    RightPadding =12
                    GridlineColor =10921638
                    LayoutCachedLeft =5775
                    LayoutCachedTop =3660
                    LayoutCachedWidth =8385
                    LayoutCachedHeight =6885
                    RowStart =5
                    RowEnd =9
                    ColumnStart =4
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =60
                    Top =5625
                    Width =1992
                    Height =1260
                    FontSize =16
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label149"
                    Caption ="Email:  "
                    GroupTable =2
                    RightPadding =0
                    GridlineColor =10921638
                    LayoutCachedLeft =60
                    LayoutCachedTop =5625
                    LayoutCachedWidth =2052
                    LayoutCachedHeight =6885
                    RowStart =8
                    RowEnd =9
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =60
                    Top =5130
                    Width =1992
                    Height =435
                    FontSize =16
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label150"
                    Caption ="Save As:  "
                    GroupTable =2
                    RightPadding =0
                    GridlineColor =10921638
                    LayoutCachedLeft =60
                    LayoutCachedTop =5130
                    LayoutCachedWidth =2052
                    LayoutCachedHeight =5565
                    RowStart =7
                    RowEnd =7
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =60
                    Top =780
                    Width =1992
                    Height =504
                    FontSize =16
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label185"
                    Caption ="Date Range:"
                    GroupTable =2
                    RightPadding =0
                    BottomPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =60
                    LayoutCachedTop =780
                    LayoutCachedWidth =2052
                    LayoutCachedHeight =1284
                    RowStart =1
                    RowEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =3930
                    Top =780
                    Width =630
                    Height =504
                    FontSize =16
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label187"
                    Caption ="to"
                    GroupTable =2
                    RightPadding =12
                    BottomPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =3930
                    LayoutCachedTop =780
                    LayoutCachedWidth =4560
                    LayoutCachedHeight =1284
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =2085
                    Top =780
                    Width =1800
                    Height =504
                    FontSize =18
                    TabIndex =2
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtDate1"
                    Format ="Short Date"
                    AfterUpdate ="[Event Procedure]"
                    GroupTable =2
                    RightPadding =12
                    BottomPadding =360
                    GridlineColor =10921638

                    LayoutCachedLeft =2085
                    LayoutCachedTop =780
                    LayoutCachedWidth =3885
                    LayoutCachedHeight =1284
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
                    GroupTable =2
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =4605
                    Top =780
                    Width =2160
                    Height =504
                    FontSize =18
                    TabIndex =3
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22
                    ForeColor =2500134
                    Name ="txtDate2"
                    Format ="Short Date"
                    AfterUpdate ="[Event Procedure]"
                    GroupTable =2
                    RightPadding =12
                    BottomPadding =360
                    GridlineColor =10921638

                    LayoutCachedLeft =4605
                    LayoutCachedTop =780
                    LayoutCachedWidth =6765
                    LayoutCachedHeight =1284
                    RowStart =1
                    RowEnd =1
                    ColumnStart =3
                    ColumnEnd =4
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeTint =100.0
                    ForeShade =75.0
                    GroupTable =2
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    AccessKey =68
                    Left =6810
                    Top =780
                    Width =1575
                    Height =504
                    FontSize =14
                    TabIndex =4
                    ForeColor =3355443
                    Name ="cmdDate"
                    Caption ="All &Data"
                    OnClick ="[Event Procedure]"
                    UnicodeAccessKey =68
                    GroupTable =2
                    RightPadding =12
                    BottomPadding =360
                    GridlineColor =10921638

                    CursorOnHover =1
                    LayoutCachedLeft =6810
                    LayoutCachedTop =780
                    LayoutCachedWidth =8385
                    LayoutCachedHeight =1284
                    RowStart =1
                    RowEnd =1
                    ColumnStart =5
                    ColumnEnd =5
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
                    GroupTable =2
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =2
                    WebImagePaddingBottom =23
                    Overlaps =1
                End
                Begin ComboBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =3930
                    Top =2760
                    Width =4455
                    Height =510
                    FontSize =18
                    TabIndex =6
                    ColumnInfo ="\"\";\"\";\"\";\"\";\"10\";\"510\""
                    Name ="cmbChemical"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tblCHEMICALS.ID, tblCHEMICALS.chemical FROM tblCHEMICALS ORDER BY tblCHEM"
                        "ICALS.chemical; "
                    ColumnWidths ="0;1440"
                    AfterUpdate ="[Event Procedure]"
                    GroupTable =2
                    RightPadding =12
                    BottomPadding =360
                    GridlineColor =10921638
                    AllowValueListEdits =0
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =3930
                    LayoutCachedTop =2760
                    LayoutCachedWidth =8385
                    LayoutCachedHeight =3270
                    RowStart =4
                    RowEnd =4
                    ColumnStart =2
                    ColumnEnd =5
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
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =3930
                    Top =2190
                    Width =2835
                    Height =510
                    FontSize =18
                    TabIndex =5
                    ColumnInfo ="\"\";\"\";\"Line\";\"\";\"10\";\"510\""
                    Name ="cmbLine"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tblLINES.ID, tblLINES.Line FROM tblLINES ORDER BY tblLINES.Line; "
                    ColumnWidths ="0;1440"
                    AfterUpdate ="[Event Procedure]"
                    GroupTable =2
                    RightPadding =12
                    GridlineColor =10921638
                    AllowValueListEdits =0
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =3930
                    LayoutCachedTop =2190
                    LayoutCachedWidth =6765
                    LayoutCachedHeight =2700
                    RowStart =3
                    RowEnd =3
                    ColumnStart =2
                    ColumnEnd =4
                    LayoutGroup =1
                    BackThemeColorIndex =3
                    BackShade =98.0
                    BorderThemeColorIndex =7
                    BorderShade =100.0
                    ForeThemeColorIndex =0
                    ForeShade =75.0
                    GroupTable =2
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2085
                    Top =6450
                    Width =3645
                    Height =435
                    FontSize =14
                    TabIndex =13
                    ForeColor =3355443
                    Name ="cmbUNDO"
                    Caption ="Clear"
                    OnClick ="[Event Procedure]"
                    GroupTable =2
                    TopPadding =360
                    RightPadding =12
                    GridlineColor =10921638

                    CursorOnHover =1
                    LayoutCachedLeft =2085
                    LayoutCachedTop =6450
                    LayoutCachedWidth =5730
                    LayoutCachedHeight =6885
                    RowStart =9
                    RowEnd =9
                    ColumnStart =1
                    ColumnEnd =3
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
                    GroupTable =2
                    WebImagePaddingLeft =2
                    WebImagePaddingTop =24
                    WebImagePaddingBottom =1
                    Overlaps =1
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =2085
                    Top =2760
                    Width =1800
                    Height =510
                    FontSize =16
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label268"
                    Caption ="Chemical:"
                    GroupTable =2
                    RightPadding =12
                    BottomPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =2085
                    LayoutCachedTop =2760
                    LayoutCachedWidth =3885
                    LayoutCachedHeight =3270
                    RowStart =4
                    RowEnd =4
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =60
                    Top =2190
                    Width =3825
                    Height =510
                    FontSize =16
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label338"
                    Caption ="Line:"
                    GroupTable =2
                    RightPadding =12
                    GridlineColor =10921638
                    LayoutCachedLeft =60
                    LayoutCachedTop =2190
                    LayoutCachedWidth =3885
                    LayoutCachedHeight =2700
                    RowStart =3
                    RowEnd =3
                    ColumnEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3930
                    Top =3660
                    Width =1800
                    Height =510
                    FontSize =18
                    TabIndex =7
                    ColumnInfo ="\"\";\"\";\"4\";\"4\""
                    Name ="cmbBuilding"
                    RowSourceType ="Table/Query"
                    RowSource ="tblBUILDINGS"
                    AfterUpdate ="[Event Procedure]"
                    GroupTable =2
                    RightPadding =12
                    GridlineColor =10921638
                    AllowValueListEdits =0
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =3930
                    LayoutCachedTop =3660
                    LayoutCachedWidth =5730
                    LayoutCachedHeight =4170
                    RowStart =5
                    RowEnd =5
                    ColumnStart =2
                    ColumnEnd =3
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
                    TextAlign =3
                    Left =2085
                    Top =3660
                    Width =1800
                    Height =510
                    FontSize =16
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label362"
                    Caption ="Building:"
                    GroupTable =2
                    RightPadding =12
                    GridlineColor =10921638
                    LayoutCachedLeft =2085
                    LayoutCachedTop =3660
                    LayoutCachedWidth =3885
                    LayoutCachedHeight =4170
                    RowStart =5
                    RowEnd =5
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin ComboBox
                    Enabled = NotDefault
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =3930
                    Top =4230
                    Width =1800
                    Height =510
                    FontSize =18
                    TabIndex =8
                    Name ="cmbTank"
                    RowSourceType ="Value List"
                    RowSource ="\"\";\"1\";\"2\";\"3\""
                    AfterUpdate ="[Event Procedure]"
                    GroupTable =2
                    RightPadding =12
                    BottomPadding =360
                    GridlineColor =10921638
                    LeftMargin =44
                    TopMargin =14
                    RightMargin =44
                    BottomMargin =22

                    LayoutCachedLeft =3930
                    LayoutCachedTop =4230
                    LayoutCachedWidth =5730
                    LayoutCachedHeight =4740
                    RowStart =6
                    RowEnd =6
                    ColumnStart =2
                    ColumnEnd =3
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
                    TextAlign =3
                    Left =2085
                    Top =4230
                    Width =1800
                    Height =510
                    FontSize =16
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label380"
                    Caption ="Tank:"
                    GroupTable =2
                    RightPadding =12
                    BottomPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =2085
                    LayoutCachedTop =4230
                    LayoutCachedWidth =3885
                    LayoutCachedHeight =4740
                    RowStart =6
                    RowEnd =6
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin Label
                    FontUnderline = NotDefault
                    OverlapFlags =85
                    TextAlign =2
                    Left =60
                    Top =1680
                    Width =8325
                    Height =444
                    FontSize =16
                    BorderColor =10066329
                    ForeColor =3355443
                    Name ="Label391"
                    Caption ="Optional Filters"
                    GroupTable =2
                    RightPadding =12
                    GridlineColor =10921638
                    LayoutCachedLeft =60
                    LayoutCachedTop =1680
                    LayoutCachedWidth =8385
                    LayoutCachedHeight =2124
                    RowStart =2
                    RowEnd =2
                    ColumnEnd =5
                    LayoutGroup =1
                    BackThemeColorIndex =-1
                    BorderThemeColorIndex =-1
                    ForeTint =100.0
                    GroupTable =2
                End
                Begin Subform
                    TabStop = NotDefault
                    OverlapFlags =215
                    Left =8760
                    Top =60
                    Width =15255
                    Height =10950
                    TabIndex =1
                    BorderColor =10921638
                    Name ="Child465"
                    SourceObject ="Query.qryMETALCONTENT"
                    GroupTable =2
                    LeftPadding =360
                    RightPadding =12
                    GridlineColor =10921638

                    LayoutCachedLeft =8760
                    LayoutCachedTop =60
                    LayoutCachedWidth =24015
                    LayoutCachedHeight =11010
                    RowEnd =10
                    ColumnStart =6
                    ColumnEnd =6
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin Label
                    OverlapFlags =93
                    Left =11520
                    Top =1320
                    Width =876
                    Height =300
                    BorderColor =10066329
                    ForeColor =10066329
                    Name ="Label466"
                    Caption ="Child465:"
                    GridlineColor =10921638
                    LayoutCachedLeft =11520
                    LayoutCachedTop =1320
                    LayoutCachedWidth =12396
                    LayoutCachedHeight =1620
                End
                Begin EmptyCell
                    Left =60
                    Top =2760
                    Width =1992
                    Height =1980
                    Name ="EmptyCell487"
                    GroupTable =2
                    RightPadding =0
                    BottomPadding =360
                    GridlineColor =10921638
                    LayoutCachedLeft =60
                    LayoutCachedTop =2760
                    LayoutCachedWidth =2052
                    LayoutCachedHeight =4740
                    RowStart =4
                    RowEnd =6
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin EmptyCell
                    Left =6810
                    Top =2190
                    Width =1575
                    Height =510
                    Name ="EmptyCell490"
                    GroupTable =2
                    RightPadding =12
                    GridlineColor =10921638
                    LayoutCachedLeft =6810
                    LayoutCachedTop =2190
                    LayoutCachedWidth =8385
                    LayoutCachedHeight =2700
                    RowStart =3
                    RowEnd =3
                    ColumnStart =5
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin EmptyCell
                    Left =60
                    Top =7275
                    Width =1992
                    Height =3735
                    Name ="EmptyCell491"
                    GroupTable =2
                    TopPadding =360
                    RightPadding =0
                    GridlineColor =10921638
                    LayoutCachedLeft =60
                    LayoutCachedTop =7275
                    LayoutCachedWidth =2052
                    LayoutCachedHeight =11010
                    RowStart =10
                    RowEnd =10
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin EmptyCell
                    Left =2085
                    Top =7275
                    Width =3645
                    Height =3735
                    Name ="EmptyCell492"
                    GroupTable =2
                    TopPadding =360
                    RightPadding =12
                    GridlineColor =10921638
                    LayoutCachedLeft =2085
                    LayoutCachedTop =7275
                    LayoutCachedWidth =5730
                    LayoutCachedHeight =11010
                    RowStart =10
                    RowEnd =10
                    ColumnStart =1
                    ColumnEnd =3
                    LayoutGroup =1
                    GroupTable =2
                End
                Begin EmptyCell
                    Left =5775
                    Top =7275
                    Width =2610
                    Height =3735
                    Name ="EmptyCell495"
                    GroupTable =2
                    TopPadding =360
                    RightPadding =12
                    GridlineColor =10921638
                    LayoutCachedLeft =5775
                    LayoutCachedTop =7275
                    LayoutCachedWidth =8385
                    LayoutCachedHeight =11010
                    RowStart =10
                    RowEnd =10
                    ColumnStart =4
                    ColumnEnd =5
                    LayoutGroup =1
                    GroupTable =2
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
Dim taskID As Long
Dim ctrl As Control
Dim tmpCHEM, tmpLINE, tmpTANK, tmpDate1, tmpDate2, tmpBUILDING As TempVars

Private Sub cmbBuilding_AfterUpdate()

    With Forms![fmHome]![NavigationSubform].Form
        If !cmbBUILDING.Value <> "" Then
            TempVars!tmpBUILDING = !cmbBUILDING.Value
        Else:
            TempVars!tmpBUILDING = "*"
        End If
    End With
    
End Sub

Private Sub cmbChemical_AfterUpdate()

If cmbChemical <> "" Then
    TempVars!tmpCHEM = CLng(cmbChemical.Value)
Else:
    'if nothing is selected, change temp vars to empty
    TempVars!tmpCHEM = "*"
    
End If

'change query's view
    Call previewQry
    
End Sub

Private Sub cmbLINE_AfterUpdate()
'update chemical field with change in line field

If cmbLine <> "" Then
    TempVars!tmpLINE = CLng(cmbLine.Value)
Else:
    'if nothing is selected, change temp vars to empty
    TempVars!tmpLINE = "*"
End If

'change query's view
    Call previewQry

End Sub

Private Sub cmbTank_AfterUpdate()

If cmbTank <> "" Then
    TempVars!tmpTANK = cmbTank.Value
Else:
    'if nothing is selected, change temp vars to empty
    TempVars!tmpLINE = "*"
End If

'change query's view
    Call previewQry

    
End Sub

Private Sub cmbTask_AfterUpdate()

    If IsNull(cmbTask) = False Then
        taskID = cmbTask.Value
        Call fieAdjust
        Call previewQry
        
        TempVars!tmpLINE = "*"
        TempVars!tmpCHEM = "*"
        TempVars!tmpTANK = "*"
        TempVars!tmpBUILDING = "*"
    End If
    
End Sub

Private Sub previewQry()
On Error GoTo qryLookErr
'provides a preview of what the query looks like, allows user to see before saving
Dim qryName As String

    qryName = DLookup("[qryRel]", "tblTaskList", "[ID] = " & taskID)
    Child465.SourceObject = "Query." & qryName
    Child465.Requery

subExit:
    Exit Sub

qryLookErr:
    MsgBox "There was an error searching for the query."
    Resume subExit
    
End Sub

Private Sub fieAdjust()

    If (taskID = 1) Or (taskID = 2) Or (taskID = 5) Or (taskID = 21) Then
        cmbLine.Enabled = True
        cmbChemical.Enabled = True
        
        cmbBUILDING.Enabled = False
        cmbTank.Enabled = False
        
    ElseIf (taskID = 8) Then
    
        cmbBUILDING.Enabled = True
        cmbTank.Enabled = True
        
        cmbLine.Enabled = False
        cmbChemical.Enabled = False
        
    Else:
    
        cmbLine.Enabled = False
        cmbChemical.Enabled = False
        cmbBUILDING.Enabled = False
        cmbTank.Enabled = False
        
    End If
    
    cmbLine.Requery
    cmbChemical.Requery
    cmbBUILDING.Requery
    cmbTank.Requery
    

End Sub

Private Sub cmbUndo_Click()
    
    'Clear fields
    cmbTask = Null
    txtDate1 = Null
    txtDate2 = Null
    cmbLine = Null
    cmbChemical = Null
    cmbBUILDING = Null
    cmbTank = Null
    cmbTask = Null
    
    cmbLine.Enabled = False
    cmbChemical.Enabled = False
    cmbBUILDING.Enabled = False
    cmbTank.Enabled = False
    
    Child465.SourceObject = ""
    TempVars.RemoveAll
    cmbTask.SetFocus
    
End Sub

Private Sub cmdDate_Click()

'enter values for all dates to be selected
    With CodeContextObject
        TempVars!tmpDate1 = #1/1/2010#
        TempVars!tmpDate2 = Date
        .txtDate1 = TempVars!tmpDate1
        .txtDate2 = TempVars!tmpDate2
    End With

    Call previewQry
    
End Sub

Private Sub Form_Close()

    TempVars.RemoveAll
    
End Sub

Private Sub Form_Open(Cancel As Integer)
On Error Resume Next
    Me.Parent!lblBANNER.Caption = "Export Data"
    cmbTask.SetFocus
    
End Sub

Private Sub dateTmp(Ctrol As Control)

    If (IsNull(taskID) = False) And (taskID <> 0) Then
        If (txtDate2.Value < txtDate1.Value) Then
                Beep
                MsgBox "The date you entered is later than the end date.", vbOKOnly, "Error"
        Else:
            If (IsNull(Ctrol) = False) Then
                If Ctrol.Name = "txtDate1" Then
                    TempVars!tmpDate1 = Ctrol.Value
                ElseIf ctrl.Name = "txtDate2" Then
                    TempVars!tmpDate2 = Ctrol.Value
                End If
            Else:
                TempVars!tmpDate1 = ""
                TempVars!tmpDate2 = ""
            End If
                
            Call previewQry
            Child465.Requery
        End If
    Else:
        cmbTask.SetFocus
    End If
    
End Sub

Private Sub txtDate1_AfterUpdate()

    Set ctrl = SCREEN.ActiveControl
    Call dateTmp(ctrl)

End Sub

Private Sub txtDate2_AfterUpdate()

    Set ctrl = SCREEN.ActiveControl
    Call dateTmp(ctrl)

End Sub

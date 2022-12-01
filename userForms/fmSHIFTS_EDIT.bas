Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridX =24
    GridY =24
    Width =5658
    DatasheetFontHeight =11
    ItemSuffix =33
    Right =13368
    Bottom =10632
    RecSrcDt = Begin
        0xad9b65619315e540
    End
    RecordSource ="tblSHIFTS"
    Caption ="Edit Shifts"
    DatasheetFontName ="Calibri"
    AllowDatasheetView =0
    FilterOnLoad =0
    ShowPageMargins =0
    DisplayOnSharePointSite =1
    DatasheetAlternateBackColor =15921906
    DatasheetGridlinesColor12 =0
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
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =2
            BackTint =20.0
        End
        Begin Section
            Height =4938
            Name ="Detail"
            AutoHeight =1
            AlternateBackThemeColorIndex =1
            AlternateBackShade =95.0
            BackThemeColorIndex =1
            Begin
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =1524
                    Top =2508
                    Width =2604
                    Height =420
                    FontSize =14
                    TabIndex =1
                    LeftMargin =44
                    TopMargin =22
                    RightMargin =44
                    BottomMargin =22
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="startTime"
                    ControlSource ="startTime"
                    Format ="Medium Time"
                    StatusBarText ="Time the shift starts"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    ShowDatePicker =0

                    LayoutCachedLeft =1524
                    LayoutCachedTop =2508
                    LayoutCachedWidth =4128
                    LayoutCachedHeight =2928
                    RowStart =1
                    RowEnd =1
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    GroupTable =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =36
                            Top =2508
                            Width =1420
                            Height =420
                            FontSize =14
                            LeftMargin =44
                            TopMargin =22
                            RightMargin =44
                            BottomMargin =22
                            BorderColor =8355711
                            ForeColor =4210752
                            Name ="Label6"
                            Caption ="Start Time:"
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =36
                            LayoutCachedTop =2508
                            LayoutCachedWidth =1456
                            LayoutCachedHeight =2928
                            RowStart =1
                            RowEnd =1
                            LayoutGroup =1
                            ForeTint =75.0
                            GroupTable =1
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    IMESentenceMode =3
                    Left =1524
                    Top =3120
                    Width =2604
                    Height =420
                    FontSize =14
                    TabIndex =2
                    LeftMargin =44
                    TopMargin =22
                    RightMargin =44
                    BottomMargin =22
                    BorderColor =10921638
                    ForeColor =4210752
                    Name ="endTime"
                    ControlSource ="endTime"
                    Format ="Medium Time"
                    StatusBarText ="Time the shift ends"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    ShowDatePicker =0

                    LayoutCachedLeft =1524
                    LayoutCachedTop =3120
                    LayoutCachedWidth =4128
                    LayoutCachedHeight =3540
                    RowStart =2
                    RowEnd =2
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    GroupTable =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =36
                            Top =3120
                            Width =1420
                            Height =420
                            FontSize =14
                            LeftMargin =44
                            TopMargin =22
                            RightMargin =44
                            BottomMargin =22
                            BorderColor =8355711
                            ForeColor =4210752
                            Name ="Label9"
                            Caption ="End Time:"
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =36
                            LayoutCachedTop =3120
                            LayoutCachedWidth =1456
                            LayoutCachedHeight =3540
                            RowStart =2
                            RowEnd =2
                            LayoutGroup =1
                            ForeTint =75.0
                            GroupTable =1
                        End
                    End
                End
                Begin ListBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    ColumnCount =2
                    Left =1524
                    Top =360
                    Width =2604
                    Height =1956
                    FontSize =14
                    ForeColor =4210752
                    BorderColor =10921638
                    Name ="shift"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tblSHIFTS.ID, tblSHIFTS.shift FROM tblSHIFTS ORDER BY tblSHIFTS.shift; "
                    ColumnWidths ="0;1440"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    AfterUpdateEmMacro = Begin
                        Version =196611
                        ColumnsShown =0
                        Begin
                            Action ="SearchForRecord"
                            Argument ="-1"
                            Argument =""
                            Argument ="2"
                            Argument ="=\"[ID] = \" & Str(Nz([Screen].[ActiveControl],0))"
                        End
                        Begin
                            Comment ="_AXL:<?xml version=\"1.0\" encoding=\"UTF-16\" standalone=\"no\"?>\015\012<UserI"
                                "nterfaceMacro For=\"shift\" Event=\"AfterUpdate\" xmlns=\"http://schemas.microso"
                                "ft.com/office/accessservices/2009/11/application\"><Statements><Action Name=\"Se"
                                "archForRecord\"><Argument Name=\"W"
                        End
                        Begin
                            Comment ="_AXL:hereCondition\">=\"[ID] = \" &amp; Str(Nz([Screen].[ActiveControl],0))</Arg"
                                "ument></Action></Statements></UserInterfaceMacro>"
                        End
                    End

                    LayoutCachedLeft =1524
                    LayoutCachedTop =360
                    LayoutCachedWidth =4128
                    LayoutCachedHeight =2316
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    GroupTable =1
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =36
                            Top =360
                            Width =1420
                            Height =1956
                            FontSize =14
                            LeftMargin =44
                            TopMargin =22
                            RightMargin =44
                            BottomMargin =22
                            BorderColor =8355711
                            ForeColor =4210752
                            Name ="Label3"
                            Caption ="Shift:"
                            GroupTable =1
                            BottomPadding =150
                            GridlineColor =10921638
                            LayoutCachedLeft =36
                            LayoutCachedTop =360
                            LayoutCachedWidth =1456
                            LayoutCachedHeight =2316
                            LayoutGroup =1
                            ForeTint =75.0
                            GroupTable =1
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =1524
                    Top =4356
                    Width =2604
                    Height =432
                    TabIndex =4
                    ForeColor =4210752
                    Name ="Command18"
                    Caption ="Command18"
                    ControlTipText ="Close Form"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    OnClickEmMacro = Begin
                        Version =196611
                        ColumnsShown =8
                        Begin
                            Action ="Close"
                            Argument ="-1"
                            Argument =""
                            Argument ="0"
                        End
                        Begin
                            Comment ="_AXL:<?xml version=\"1.0\" encoding=\"UTF-16\" standalone=\"no\"?>\015\012<UserI"
                                "nterfaceMacro For=\"Command18\" xmlns=\"http://schemas.microsoft.com/office/acce"
                                "ssservices/2009/11/application\"><Statements><Action Name=\"CloseWindow\"/></Sta"
                                "tements></UserInterfaceMacro>"
                        End
                    End
                    ImageData = Begin
                        0x2800000010000000100000000100200000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000003255d6273255d68d ,
                        0x3255d6cf3255d6ff3255d6ff3255d6cf3255d68d3255d6270000000000000000 ,
                        0x00000000000000000000000000000000000000003255d6723255d6f63255d6ff ,
                        0x3255d6ff3255d6ff3255d6ff3255d6ff3255d6ff3255d6f63255d67200000000 ,
                        0x0000000000000000000000003255d6063255d6b73255d6ff3255d6ff3255d6ff ,
                        0x3255d6ff3255d6ff3255d6ff3255d6ff3255d6ff3255d6ff3255d6ff3255d6b7 ,
                        0x3255d60600000000000000003255d6933255d6ff3255d6ff3759d7f94d6bdbe5 ,
                        0x3255d6ff3255d6ff3255d6ff3255d6ff4d6bdbe53759d7f93255d6ff3255d6ff ,
                        0x3255d690000000003255d62d3255d6fc3255d6ff3c5ed8f4eef1fccefcfcfee5 ,
                        0x4a69dbe73255d6ff3255d6ff4a69dbe7fcfcfee5eef1fcce3c5ed8f43255d6ff ,
                        0x3255d6fc3255d62d3255d6933255d6ff3255d6ff3457d6fce4e9fac8ffffffff ,
                        0xfafbfee04766dae94766dae9fafbfee0ffffffffe4e9fac83759d7f93255d6ff ,
                        0x3255d6ff3255d6903255d6db3255d6ff3255d6ff3255d6ff3759d7f9e8ecfaca ,
                        0xfffffffff9fafedcf8f9fedaffffffffe8ecfaca3759d7f93255d6ff3255d6ff ,
                        0x3255d6ff3255d6d53255d6f93255d6ff3255d6ff3255d6ff3255d6ff395bd7f6 ,
                        0xeceffbcdffffffffffffffffeceffbcd395bd7f63255d6ff3255d6ff3255d6ff ,
                        0x3255d6ff3255d6f33255d6f93255d6ff3255d6ff3255d6ff3255d6ff395bd7f6 ,
                        0xf2f4fcd3fffffffffffffffff2f4fcd33c5ed8f43255d6ff3255d6ff3255d6ff ,
                        0x3255d6ff3255d6f03255d6d83255d6ff3255d6ff3255d6ff395bd7f6eff2fcd0 ,
                        0xfffffffff5f6fdd4f5f6fdd4ffffffffeff2fcd0395bd7f63255d6ff3255d6ff ,
                        0x3255d6ff3255d6d53255d6903255d6ff3255d6ff3759d7f9ebeefbcbffffffff ,
                        0xf8f9feda4162d9ee4162d9eef8f9fedaffffffffebeefbcb3759d7f93255d6ff ,
                        0x3255d6ff3255d68d3255d62d3255d6fc3255d6ff395bd7f6ebeefbcbf9fafede ,
                        0x4464daec3255d6ff3255d6ff4464daecf9fafedeebeefbcb395bd7f63255d6ff ,
                        0x3255d6fc3255d62a000000003255d6903255d6ff3255d6ff3759d7f94766dae9 ,
                        0x3255d6ff3255d6ff3255d6ff3255d6ff4766dae93759d7f93255d6ff3255d6ff ,
                        0x3255d68d00000000000000003255d6063255d6b73255d6ff3255d6ff3255d6ff ,
                        0x3255d6ff3255d6ff3255d6ff3255d6ff3255d6ff3255d6ff3255d6ff3255d6b7 ,
                        0x3255d606000000000000000000000000000000003255d6723255d6f63255d6ff ,
                        0x3255d6ff3255d6ff3255d6ff3255d6ff3255d6ff3255d6f63255d67200000000 ,
                        0x0000000000000000000000000000000000000000000000003255d6273255d68d ,
                        0x3255d6cc3255d6fc3255d6fc3255d6cc3255d68d3255d6270000000000000000 ,
                        0x0000000000000000
                    End

                    LayoutCachedLeft =1524
                    LayoutCachedTop =4356
                    LayoutCachedWidth =4128
                    LayoutCachedHeight =4788
                    RowStart =4
                    RowEnd =4
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    BackColor =15715959
                    BorderColor =15715959
                    HoverColor =16047780
                    PressedColor =11305492
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    GroupTable =1
                    WebImagePaddingLeft =3
                    WebImagePaddingTop =3
                    WebImagePaddingRight =2
                    WebImagePaddingBottom =12
                    Overlaps =1
                End
                Begin EmptyCell
                    Left =36
                    Top =4356
                    Width =1420
                    Height =432
                    Name ="EmptyCell21"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =36
                    LayoutCachedTop =4356
                    LayoutCachedWidth =1456
                    LayoutCachedHeight =4788
                    RowStart =4
                    RowEnd =4
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =4188
                    Top =360
                    Height =1956
                    Name ="EmptyCell23"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =4188
                    LayoutCachedTop =360
                    LayoutCachedWidth =5628
                    LayoutCachedHeight =2316
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =4188
                    Top =2508
                    Height =420
                    Name ="EmptyCell24"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =4188
                    LayoutCachedTop =2508
                    LayoutCachedWidth =5628
                    LayoutCachedHeight =2928
                    RowStart =1
                    RowEnd =1
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =4188
                    Top =3120
                    Height =420
                    Name ="EmptyCell25"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =4188
                    LayoutCachedTop =3120
                    LayoutCachedWidth =5628
                    LayoutCachedHeight =3540
                    RowStart =2
                    RowEnd =2
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =4188
                    Top =4356
                    Height =432
                    Name ="EmptyCell26"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =4188
                    LayoutCachedTop =4356
                    LayoutCachedWidth =5628
                    LayoutCachedHeight =4788
                    RowStart =4
                    RowEnd =4
                    ColumnStart =2
                    ColumnEnd =2
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =1524
                    Top =3732
                    Width =2604
                    Height =432
                    TabIndex =3
                    ForeColor =4210752
                    Name ="Command27"
                    Caption ="Command27"
                    ControlTipText ="Save Record"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    OnClickEmMacro = Begin
                        Version =196611
                        ColumnsShown =0
                        Begin
                            Action ="OnError"
                            Argument ="0"
                        End
                        Begin
                            Action ="RunCommand"
                            Argument ="97"
                        End
                        Begin
                            Action ="MsgBox"
                            Argument ="Saved record"
                            Argument ="0"
                            Argument ="0"
                            Argument ="Success"
                        End
                        Begin
                            Action ="Close"
                            Argument ="2"
                            Argument ="fmSHIFTS_EDIT"
                            Argument ="2"
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
                                "nterfaceMacro For=\"Command27\" Event=\"OnClick\" xmlns=\"http://schemas.microso"
                                "ft.com/office/accessservices/2009/11/application\"><Statements><Action Name=\"On"
                                "Error\"/><Action Name=\"SaveRecord"
                        End
                        Begin
                            Comment ="_AXL:\"/><Action Name=\"MessageBox\"><Argument Name=\"Message\">Saved record</Ar"
                                "gument><Argument Name=\"Beep\">No</Argument><Argument Name=\"Title\">Success</Ar"
                                "gument></Action><Action Name=\"CloseWindow\"><Argument Name=\"ObjectType\">Form<"
                                "/Argument><Argument Name=\""
                        End
                        Begin
                            Comment ="_AXL:ObjectName\">fmSHIFTS_EDIT</Argument><Argument Name=\"Save\">No</Argument><"
                                "/Action><ConditionalBlock><If><Condition>[MacroError]&lt;&gt;0</Condition><State"
                                "ments><Action Name=\"MessageBox\"><Argument Name=\"Message\">=[MacroError].[Desc"
                                "ription]</Argument><"
                        End
                        Begin
                            Comment ="_AXL:/Action></Statements></If></ConditionalBlock></Statements></UserInterfaceMa"
                                "cro>"
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

                    LayoutCachedLeft =1524
                    LayoutCachedTop =3732
                    LayoutCachedWidth =4128
                    LayoutCachedHeight =4164
                    RowStart =3
                    RowEnd =3
                    ColumnStart =1
                    ColumnEnd =1
                    LayoutGroup =1
                    BackColor =15715959
                    BorderColor =15715959
                    HoverColor =16047780
                    PressedColor =11305492
                    HoverForeColor =4210752
                    PressedForeColor =4210752
                    GroupTable =1
                    WebImagePaddingLeft =3
                    WebImagePaddingTop =3
                    WebImagePaddingRight =2
                    WebImagePaddingBottom =12
                    Overlaps =1
                End
                Begin EmptyCell
                    Left =36
                    Top =3732
                    Width =1420
                    Height =432
                    Name ="EmptyCell30"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =36
                    LayoutCachedTop =3732
                    LayoutCachedWidth =1456
                    LayoutCachedHeight =4164
                    RowStart =3
                    RowEnd =3
                    LayoutGroup =1
                    GroupTable =1
                End
                Begin EmptyCell
                    Left =4188
                    Top =3732
                    Height =432
                    Name ="EmptyCell32"
                    GroupTable =1
                    BottomPadding =150
                    GridlineColor =10921638
                    LayoutCachedLeft =4188
                    LayoutCachedTop =3732
                    LayoutCachedWidth =5628
                    LayoutCachedHeight =4164
                    RowStart =3
                    RowEnd =3
                    ColumnStart =2
                    ColumnEnd =2
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

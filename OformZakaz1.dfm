object OformZakaz: TOformZakaz
  Left = 0
  Top = 0
  Caption = #1055#1088#1077#1076#1074#1072#1088#1080#1090#1077#1083#1100#1085#1099#1081' '#1087#1088#1086#1089#1084#1086#1090#1088
  ClientHeight = 583
  ClientWidth = 953
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = fastr
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object frxPreview1: TfrxPreview
    Left = 0
    Top = 0
    Width = 953
    Height = 583
    Align = alClient
    OutlineVisible = False
    OutlineWidth = 120
    ThumbnailVisible = False
    UseReportHints = True
  end
  object fastr: TMainMenu
    Left = 632
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N7: TMenuItem
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1086#1090#1095#1077#1090#1072
      end
      object N5: TMenuItem
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1086#1090#1095#1077#1090#1072
      end
      object N4: TMenuItem
        Caption = #1055#1077#1095#1072#1090#1100' '#1086#1090#1095#1077#1090#1072
      end
    end
    object N2: TMenuItem
      Caption = #1055#1077#1088#1077#1081#1090#1080
      object N6: TMenuItem
        Caption = #1042' '#1075#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
      end
    end
    object N3: TMenuItem
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
    end
  end
  object frxDBDatasetZakaz: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = NewZakaz.DataSourceZakaz
    BCDToCurrency = False
    Left = 584
    Top = 176
  end
  object frxReport1: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxPreview1
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42611.476721620400000000
    ReportOptions.LastChange = 42611.512223067140000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 712
    Top = 320
    Datasets = <
      item
        DataSet = frxDBDatasetZakaz
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDatasetZap4
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = frxDBDatasetUsl
        DataSetName = 'frxDBDataset3'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 116.010513340000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Left = 2.239744440000000000
          Top = 31.566068880000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100':')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 4.899402230000000000
          Top = 67.629148890000000000
          Width = 325.039580000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1047#1072#1082#1072#1079'-'#1053#1072#1088#1103#1076' '#1085#1072' '#1088#1072#1073#1086#1090#1099' '#8470)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 344.855872220000000000
          Top = 67.480416670000000000
          Width = 324.199684440000000000
          Height = 37.375352220000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDataset1."zakaz_ID"]')
          ParentFont = False
        end
        object frxDBDataset1worker_ID: TfrxMemoView
          Left = 141.548546660000000000
          Top = 31.539785550000000000
          Width = 87.147907780000000000
          Height = 18.897650000000000000
          DataField = 'worker_ID'
          DataSet = frxDBDatasetZakaz
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."worker_ID"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo2: TfrxMemoView
        Left = 2.239744440000000000
        Top = 15.555555550000000000
        Width = 60.472480000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1044#1072#1090#1072': ')
        ParentFont = False
      end
      object frxDBDataset1dateof: TfrxMemoView
        Left = 68.215213330000000000
        Top = 18.215213330000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataField = 'dateof'
        DataSet = frxDBDatasetZakaz
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset1."dateof"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Height = 16.010513330000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
      end
      object Memo1: TfrxMemoView
        Left = 16.666666660000000000
        Top = 197.777777780000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #1041#1086#1083#1090)
      end
      object Memo8: TfrxMemoView
        Left = 16.666666670000000000
        Top = 233.333333330000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #1043#1072#1081#1082#1072)
      end
      object Memo9: TfrxMemoView
        Left = 16.666666670000000000
        Top = 268.888888890000000000
        Width = 111.154916670000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #1057#1080#1085#1093#1088#1086#1085#1080#1079#1072#1090#1086#1088)
      end
      object Memo10: TfrxMemoView
        Left = 16.666666670000000000
        Top = 307.777777780000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #1042#1090#1091#1083#1082#1072)
      end
      object Memo11: TfrxMemoView
        Left = 18.888888890000000000
        Top = 572.222222220000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #1050#1088#1091#1090#1080#1090#1100)
      end
      object Memo12: TfrxMemoView
        Left = 18.888888900000000000
        Top = 607.777777770000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #1063#1080#1085#1080#1090#1100)
      end
      object Memo13: TfrxMemoView
        Left = 18.888888900000000000
        Top = 643.333333330000000000
        Width = 111.154916670000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #1055#1080#1083#1080#1090#1100)
      end
      object Memo14: TfrxMemoView
        Left = 18.888888900000000000
        Top = 682.222222220000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          #1050#1088#1072#1089#1080#1090#1100)
      end
      object Line1: TfrxLineView
        Left = 4.444444440000000000
        Top = 420.000000000000000000
        Width = 708.888888890000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line2: TfrxLineView
        Left = 3.333333330000000000
        Top = 775.555555560000000000
        Width = 708.888888890000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line3: TfrxLineView
        Left = 3.333333330000000000
        Top = 174.888888880000000000
        Width = 708.888888890000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line4: TfrxLineView
        Left = 3.333333330000000000
        Top = 136.666666670000000000
        Width = 708.888888890000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line5: TfrxLineView
        Left = 4.444444440000000000
        Top = 511.111111110000000000
        Width = 707.777777780000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line6: TfrxLineView
        Left = 4.444444440000000000
        Top = 551.111111110000000000
        Width = 708.888888890000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line7: TfrxLineView
        Left = 713.333333330000000000
        Top = 511.111111110000000000
        Height = 264.444444440000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line8: TfrxLineView
        Left = 712.222222220000000000
        Top = 136.666666660000000000
        Height = 283.333333330000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line9: TfrxLineView
        Left = 3.333333330000000000
        Top = 137.777777780000000000
        Height = 281.111111110000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line10: TfrxLineView
        Left = 3.666666670000000000
        Top = 511.111111110000000000
        Height = 264.444444450000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo5: TfrxMemoView
        Left = 16.666666670000000000
        Top = 140.000000000000000000
        Width = 276.710472220000000000
        Height = 32.230983330000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1077#1088#1077#1095#1077#1085#1100' '#1079#1072#1087#1095#1072#1089#1090#1077#1081' '#1074' '#1079#1072#1082#1072#1079#1077)
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        Left = 16.666666670000000000
        Top = 516.666666670000000000
        Width = 276.710472220000000000
        Height = 32.230983330000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1055#1077#1088#1077#1095#1077#1085#1100' '#1091#1089#1083#1091#1075' '#1074' '#1079#1072#1082#1072#1079#1077)
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        Left = 46.500000000000000000
        Top = 813.500000000000000000
        Width = 76.500000000000000000
        Height = 27.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1050#1083#1080#1077#1085#1090':')
        ParentFont = False
      end
      object Memo16: TfrxMemoView
        Left = 43.500000000000000000
        Top = 872.500000000000000000
        Width = 128.375000000000000000
        Height = 27.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100':')
        ParentFont = False
      end
      object Memo17: TfrxMemoView
        Left = 199.250000000000000000
        Top = 813.625000000000000000
        Width = 76.500000000000000000
        Height = 27.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1048#1074#1072#1085#1086#1074)
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        Left = 199.125000000000000000
        Top = 870.750000000000000000
        Width = 107.000000000000000000
        Height = 27.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          #1041#1086#1088#1084#1086#1090#1095#1091#1082)
        ParentFont = False
      end
    end
  end
  object frxDBDatasetZap4: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = NewZakaz.DataSourceZPZ
    BCDToCurrency = False
    Left = 368
    Top = 368
  end
  object frxDBDatasetUsl: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    DataSource = NewZakaz.DataSourceUPZ
    BCDToCurrency = False
    Left = 488
    Top = 392
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 736
    Top = 112
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 816
    Top = 112
  end
end

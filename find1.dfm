object Poisk: TPoisk
  Left = 0
  Top = 0
  Caption = #1055#1086#1080#1089#1082
  ClientHeight = 280
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 1
    Top = 24
    Width = 553
    Height = 41
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 14
      Width = 34
      Height = 13
      Caption = #1055#1086#1080#1089#1082
    end
  end
  object Edit1: TEdit
    Left = 176
    Top = 35
    Width = 361
    Height = 21
    TabOrder = 1
    OnChange = Edit1Change
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 76
    Width = 751
    Height = 204
    Align = alBottom
    DataSource = DataSourceFind
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ADOQueryFind: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM client order by fam;')
    Left = 680
    Top = 16
  end
  object DataSourceFind: TDataSource
    DataSet = ADOQueryFind
    Left = 624
    Top = 8
  end
  object MainMenu1: TMainMenu
    Left = 560
    Top = 8
    object N1: TMenuItem
      Caption = #1050#1083#1080#1077#1085#1090#1099
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1040#1074#1090#1086#1084#1086#1073#1080#1083#1080
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1047#1072#1082#1072#1079#1099
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #1047#1072#1087#1095#1072#1089#1090#1080
      OnClick = N4Click
    end
  end
end

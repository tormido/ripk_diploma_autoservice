object CostNormoHour: TCostNormoHour
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1042#1074#1077#1076#1077#1085#1080#1077' '#1085#1086#1074#1086#1081' '#1089#1090#1086#1080#1084#1086#1089#1090#1080' '#1085#1086#1088#1084#1086#1095#1072#1089#1072
  ClientHeight = 357
  ClientWidth = 356
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 18
    Top = 24
    Width = 184
    Height = 13
    Caption = #1044#1072#1090#1072' '#1074#1074#1077#1076#1077#1085#1080#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1080' '#1095#1072#1089#1072
  end
  object Label2: TLabel
    Left = 18
    Top = 62
    Width = 128
    Height = 13
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1085#1086#1088#1084#1086#1095#1072#1089#1072
  end
  object Label3: TLabel
    Left = 18
    Top = 101
    Width = 86
    Height = 13
    Caption = #1057#1090#1072#1074#1082#1072' '#1053#1044#1057' %'
  end
  object Label4: TLabel
    Left = 18
    Top = 140
    Width = 185
    Height = 13
    Caption = #1053#1072#1076#1073#1072#1074#1082#1072' '#1076#1083#1103' '#1072#1074#1090#1086' '#1076#1086' 5 '#1083#1077#1090' %'
  end
  object Label5: TLabel
    Left = 18
    Top = 178
    Width = 184
    Height = 13
    Caption = #1053#1072#1076#1073#1072#1074#1082#1072' '#1076#1083#1103' '#1072#1074#1090#1086' 5 - 8 '#1083#1077#1090' %'
  end
  object Label6: TLabel
    Left = 18
    Top = 217
    Width = 212
    Height = 13
    Caption = #1053#1072#1076#1073#1072#1074#1082#1072' '#1076#1083#1103' '#1072#1074#1090#1086' '#1089#1090#1072#1088#1096#1077' 8 '#1083#1077#1090' %'
  end
  object Label7: TLabel
    Left = 18
    Top = 251
    Width = 212
    Height = 26
    Caption = #1053#1072#1076#1073#1072#1074#1082#1072' '#1079#1072' '#1101#1083#1077#1082#1090#1088#1086#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1077' '#1080' '#1076#1080#1072#1075#1085#1086#1089#1090#1080#1095#1077#1089#1082#1080#1077' '#1088#1072#1073#1086#1090#1099' %'
    WordWrap = True
  end
  object Button1: TButton
    Left = 138
    Top = 304
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 248
    Top = 304
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 1
    OnClick = Button2Click
  end
  object DBEdit1: TDBEdit
    Left = 248
    Top = 21
    Width = 89
    Height = 21
    DataField = 'init_date'
    DataSource = DataSourceNormo4as
    Enabled = False
    TabOrder = 2
    Visible = False
    OnChange = DBEdit1Change
  end
  object DBEdit2: TDBEdit
    Left = 248
    Top = 54
    Width = 89
    Height = 21
    DataField = 'hourCost'
    DataSource = DataSourceNormo4as
    TabOrder = 3
    OnKeyPress = DBEdit2KeyPress
  end
  object DBEdit3: TDBEdit
    Left = 248
    Top = 93
    Width = 89
    Height = 21
    DataField = 'NDS'
    DataSource = DataSourceNormo4as
    TabOrder = 4
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit4: TDBEdit
    Left = 248
    Top = 132
    Width = 89
    Height = 21
    DataField = 'add5year'
    DataSource = DataSourceNormo4as
    TabOrder = 5
    OnKeyPress = DBEdit4KeyPress
  end
  object DBEdit5: TDBEdit
    Left = 248
    Top = 170
    Width = 89
    Height = 21
    DataField = 'add58year'
    DataSource = DataSourceNormo4as
    TabOrder = 6
    OnKeyPress = DBEdit5KeyPress
  end
  object DBEdit6: TDBEdit
    Left = 248
    Top = 214
    Width = 89
    Height = 21
    DataField = 'add8year'
    DataSource = DataSourceNormo4as
    TabOrder = 7
    OnKeyPress = DBEdit6KeyPress
  end
  object DBEdit7: TDBEdit
    Left = 248
    Top = 256
    Width = 89
    Height = 21
    DataField = 'addElectro'
    DataSource = DataSourceNormo4as
    TabOrder = 8
    OnKeyPress = DBEdit7KeyPress
  end
  object DateTimePicker1: TDateTimePicker
    Left = 248
    Top = 16
    Width = 89
    Height = 21
    Date = 42609.682598958330000000
    Time = 42609.682598958330000000
    TabOrder = 9
    OnChange = DateTimePicker1Change
  end
  object ADOQueryNormo4as: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from stoimost_normo4asa ORDER BY  init_ID DESC')
    Left = 184
    Top = 56
  end
  object DataSourceNormo4as: TDataSource
    DataSet = ADOQueryNormo4as
    Left = 184
    Top = 104
  end
end

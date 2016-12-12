object AddAuto: TAddAuto
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #1053#1086#1074#1099#1081' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1100
  ClientHeight = 532
  ClientWidth = 520
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
    Left = 16
    Top = 96
    Width = 55
    Height = 13
    Caption = #1043#1086#1089#1085#1086#1084#1077#1088
  end
  object Label2: TLabel
    Left = 16
    Top = 53
    Width = 62
    Height = 13
    Caption = 'VIN (17 '#1079#1085')'
  end
  object Label3: TLabel
    Left = 16
    Top = 141
    Width = 38
    Height = 13
    Caption = #1052#1072#1088#1082#1072
  end
  object Label4: TLabel
    Left = 16
    Top = 189
    Width = 50
    Height = 13
    Caption = #1052#1086#1076#1077#1083#1100' '
  end
  object Label5: TLabel
    Left = 257
    Top = 189
    Width = 72
    Height = 13
    Caption = #1062#1074#1077#1090' '#1087#1086' RAL'
  end
  object Label6: TLabel
    Left = 258
    Top = 53
    Width = 88
    Height = 13
    Caption = #1044#1072#1090#1072' '#1087#1088#1086#1076#1072#1078#1080
  end
  object Label7: TLabel
    Left = 257
    Top = 96
    Width = 89
    Height = 13
    Caption = #1050#1086#1076' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
  end
  object Label8: TLabel
    Left = 257
    Top = 141
    Width = 128
    Height = 13
    Caption = #1050#1086#1076' '#1082#1086#1088#1086#1073#1082#1080' '#1087#1077#1088#1077#1076#1072#1095
  end
  object Label9: TLabel
    Left = 16
    Top = 235
    Width = 59
    Height = 13
    Caption = #1042#1083#1072#1076#1077#1083#1077#1094
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 313
    Width = 520
    Height = 219
    Align = alBottom
    DataSource = DataSourceAuto
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Auto_ID'
        Title.Caption = #8470
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'autonumber'
        Title.Caption = #1075#1086#1089#1085#1086#1084#1077#1088
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VIN'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Marka_ID'
        Title.Caption = #1084#1072#1088#1082#1072'_ID'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Model_ID'
        Title.Caption = #1084#1086#1076#1077#1083#1100'_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Color_ID'
        Title.Caption = #1094#1074#1077#1090'_ID'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dateofsale'
        Title.Caption = #1076#1072#1090#1072' '#1087#1088#1086#1076#1072#1078#1080
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'code_engine'
        Title.Caption = #1082#1086#1076' '#1044#1042#1057
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'code_gearbox'
        Title.Caption = #1082#1086#1076' '#1050#1055#1055
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Client _ID'
        Title.Caption = #1082#1083#1080#1077#1085#1090'_ID'
        Width = 65
        Visible = True
      end>
  end
  object DBEdit6: TDBEdit
    Left = 320
    Top = 35
    Width = 65
    Height = 21
    DataField = 'dateofsale'
    DataSource = DataSourceAuto
    TabOrder = 1
    Visible = False
  end
  object DBEdit7: TDBEdit
    Left = 391
    Top = 90
    Width = 121
    Height = 21
    DataField = 'code_engine'
    DataSource = DataSourceAuto
    TabOrder = 2
    OnKeyPress = DBEdit7KeyPress
  end
  object DBEdit8: TDBEdit
    Left = 391
    Top = 137
    Width = 121
    Height = 21
    DataField = 'code_gearbox'
    DataSource = DataSourceAuto
    TabOrder = 3
  end
  object Button1: TButton
    Left = 254
    Top = 278
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 345
    Top = 278
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 437
    Top = 278
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 6
    OnClick = Button3Click
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 49
    Width = 145
    Height = 21
    DataField = 'VIN'
    DataSource = DataSourceAuto
    TabOrder = 7
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit2: TDBEdit
    Left = 88
    Top = 92
    Width = 145
    Height = 21
    DataField = 'autonumber'
    DataSource = DataSourceAuto
    TabOrder = 8
    OnKeyPress = DBEdit2KeyPress
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 88
    Top = 135
    Width = 145
    Height = 21
    DataField = 'Marka_ID'
    DataSource = DataSourceAuto
    KeyField = 'marka_ID'
    ListField = 'Marka'
    ListSource = DataSourceMarka
    TabOrder = 9
    OnClick = DBLookupComboBox1Click
    OnCloseUp = DBLookupComboBox1CloseUp
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 88
    Top = 186
    Width = 145
    Height = 21
    DataField = 'Model_ID'
    DataSource = DataSourceAuto
    KeyField = 'model_ID'
    ListField = 'Model'
    ListSource = DataSourceModel
    TabOrder = 10
    OnCloseUp = DBLookupComboBox1CloseUp
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 88
    Top = 233
    Width = 145
    Height = 21
    DataField = 'Client _ID'
    DataSource = DataSourceAuto
    KeyField = 'client_ID'
    ListField = 'fam'
    ListSource = ClientReg.DataSourceClient
    TabOrder = 11
    OnCloseUp = DBLookupComboBox1CloseUp
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 360
    Top = 186
    Width = 152
    Height = 21
    DataField = 'Color_ID'
    DataSource = DataSourceAuto
    KeyField = 'Color_ID'
    ListField = 'Color_name'
    ListSource = DataSourceColor
    TabOrder = 12
  end
  object DateTimePicker1: TDateTimePicker
    Left = 392
    Top = 49
    Width = 120
    Height = 20
    Date = 42609.725462407400000000
    Time = 42609.725462407400000000
    TabOrder = 13
    OnChange = DateTimePicker1Change
  end
  object ADOQueryAuto: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from auto Order BY Auto_ID')
    Left = 584
    Top = 24
  end
  object DataSourceAuto: TDataSource
    DataSet = ADOQueryAuto
    Left = 656
    Top = 8
  end
  object ADOQueryMarka: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from marka Order BY marka_ID')
    Left = 584
    Top = 72
  end
  object ADOQueryModel: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from model Order BY model_ID')
    Left = 584
    Top = 120
  end
  object ADOQueryColor: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from ColorRal Order BY Color_ID')
    Left = 584
    Top = 168
  end
  object DataSourceMarka: TDataSource
    DataSet = ADOQueryMarka
    Left = 656
    Top = 56
  end
  object DataSourceModel: TDataSource
    DataSet = ADOQueryModel
    Left = 656
    Top = 104
  end
  object DataSourceColor: TDataSource
    DataSet = ADOQueryColor
    Left = 656
    Top = 152
  end
end

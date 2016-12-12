object ClientReg: TClientReg
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' '#1082#1083#1080#1077#1085#1090#1072
  ClientHeight = 542
  ClientWidth = 766
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 317
    Width = 766
    Height = 225
    Align = alBottom
    DataSource = DataSourceClient
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'client_ID'
        Title.Caption = #1082#1086#1076' '#1082#1083#1080#1077#1085#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fam'
        Title.Caption = #1092#1072#1084#1080#1083#1080#1103
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name1'
        Title.Caption = #1080#1084#1103
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name2'
        Title.Caption = #1086#1090#1095#1077#1089#1090#1074#1086
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dateofbirth'
        Title.Caption = #1076#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'passpnumb'
        Title.Caption = #1085#1086#1084#1077#1088' '#1087#1072#1089#1087#1086#1088#1090#1072
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'country'
        Title.Caption = #1057#1090#1088#1072#1085#1072
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'addr'
        Title.Caption = #1072#1076#1088#1077#1089
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tel'
        Title.Caption = #1090#1077#1083#1077#1092#1086#1085
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 150
        Visible = True
      end>
  end
  object DateTimePicker1: TDateTimePicker
    Left = 363
    Top = 165
    Width = 124
    Height = 21
    Date = 42607.982188125000000000
    Time = 42607.982188125000000000
    MinDate = 3654.000000000000000000
    TabOrder = 1
    OnChange = DateTimePicker1Change
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 505
    Height = 321
    ActivePage = TabSheet1
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = #1050#1083#1080#1077#1085#1090' - '#1092#1080#1079#1080#1095#1077#1089#1082#1086#1077' '#1083#1080#1094#1086
      object Label1: TLabel
        Left = 3
        Top = 19
        Width = 107
        Height = 13
        Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
      end
      object Label11: TLabel
        Left = 3
        Top = 48
        Width = 50
        Height = 13
        Caption = #1060#1072#1084#1080#1083#1080#1103
      end
      object Label12: TLabel
        Left = 186
        Top = 48
        Width = 23
        Height = 13
        Caption = #1048#1084#1103
      end
      object Label13: TLabel
        Left = 359
        Top = 48
        Width = 56
        Height = 13
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
      end
      object Label14: TLabel
        Left = 3
        Top = 107
        Width = 91
        Height = 13
        Caption = #1040#1076#1088#1077#1089' '#1082#1083#1080#1077#1085#1090#1072':'
      end
      object Label15: TLabel
        Left = 3
        Top = 144
        Width = 81
        Height = 13
        Caption = #1043#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086
      end
      object Label16: TLabel
        Left = 3
        Top = 187
        Width = 51
        Height = 13
        Caption = #1058#1077#1083#1077#1092#1086#1085
      end
      object Label17: TLabel
        Left = 248
        Top = 187
        Width = 48
        Height = 13
        Caption = 'E-mail @'
      end
      object Label18: TLabel
        Left = 248
        Top = 144
        Width = 95
        Height = 13
        Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      end
      object Button4: TButton
        Left = 232
        Top = 232
        Width = 75
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 0
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 320
        Top = 232
        Width = 75
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 1
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 408
        Top = 232
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 2
        OnClick = Button6Click
      end
      object DBEdit1: TDBEdit
        Left = 0
        Top = 67
        Width = 161
        Height = 21
        DataField = 'fam'
        DataSource = DataSourceClient
        TabOrder = 3
        OnChange = DBEdit1Change
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 175
        Top = 67
        Width = 162
        Height = 21
        DataField = 'name1'
        DataSource = DataSourceClient
        TabOrder = 4
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 343
        Top = 67
        Width = 140
        Height = 21
        DataField = 'name2'
        DataSource = DataSourceClient
        TabOrder = 5
        OnKeyPress = DBEdit3KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 100
        Top = 104
        Width = 383
        Height = 21
        DataField = 'addr'
        DataSource = DataSourceClient
        TabOrder = 6
      end
      object DBEdit5: TDBEdit
        Left = 287
        Top = 131
        Width = 66
        Height = 21
        DataField = 'dateofbirth'
        DataSource = DataSourceClient
        TabOrder = 7
        Visible = False
      end
      object DBEdit7: TDBEdit
        Left = 76
        Top = 184
        Width = 157
        Height = 21
        DataField = 'tel'
        DataSource = DataSourceClient
        TabOrder = 8
        OnKeyPress = DBEdit7KeyPress
      end
      object DBEdit8: TDBEdit
        Left = 302
        Top = 184
        Width = 181
        Height = 21
        DataField = 'email'
        DataSource = DataSourceClient
        TabOrder = 9
        OnKeyPress = DBEdit8KeyPress
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 90
        Top = 141
        Width = 145
        Height = 21
        DataField = 'nation'
        DataSource = DataSourceClient
        KeyField = 'country_ID'
        ListField = 'country'
        ListSource = DataSourceCountry
        TabOrder = 10
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103
      Enabled = False
      ImageIndex = 2
      object Label10: TLabel
        Left = 7
        Top = 32
        Width = 110
        Height = 13
        Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080':'
      end
      object Label6: TLabel
        Left = 192
        Top = 77
        Width = 76
        Height = 13
        Caption = #1043#1086#1076' '#1074#1099#1087#1091#1089#1082#1072
      end
      object Label2: TLabel
        Left = 7
        Top = 77
        Width = 157
        Height = 13
        Caption = 'VIN-'#1082#1086#1076' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103'(17'#1079#1085')'
      end
      object Label8: TLabel
        Left = 192
        Top = 180
        Width = 55
        Height = 13
        Caption = #1043#1086#1089#1085#1086#1084#1077#1088
      end
      object Label4: TLabel
        Left = 7
        Top = 180
        Width = 123
        Height = 13
        Caption = #1052#1086#1076#1077#1083#1100' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103':'
      end
      object Label3: TLabel
        Left = 7
        Top = 134
        Width = 114
        Height = 13
        Caption = #1052#1072#1088#1082#1072' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103':'
      end
      object Label9: TLabel
        Left = 192
        Top = 226
        Width = 72
        Height = 13
        Caption = #1062#1074#1077#1090' '#1087#1086' RAL'
      end
      object Label5: TLabel
        Left = 7
        Top = 226
        Width = 92
        Height = 13
        Caption = #1050#1086#1076' '#1076#1074#1080#1075#1072#1090#1077#1083#1103':'
      end
      object Label7: TLabel
        Left = 192
        Top = 134
        Width = 42
        Height = 13
        Caption = #1055#1088#1086#1073#1077#1075
      end
      object Edit2: TEdit
        Left = 7
        Top = 153
        Width = 157
        Height = 21
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 7
        Top = 107
        Width = 157
        Height = 21
        TabOrder = 1
      end
      object Edit3: TEdit
        Left = 7
        Top = 199
        Width = 157
        Height = 21
        TabOrder = 2
      end
      object Edit4: TEdit
        Left = 7
        Top = 248
        Width = 157
        Height = 21
        TabOrder = 3
      end
      object Edit5: TEdit
        Left = 192
        Top = 107
        Width = 121
        Height = 21
        TabOrder = 4
      end
      object Edit6: TEdit
        Left = 192
        Top = 153
        Width = 121
        Height = 21
        TabOrder = 5
      end
      object Edit7: TEdit
        Left = 192
        Top = 199
        Width = 121
        Height = 21
        TabOrder = 6
      end
      object Edit8: TEdit
        Left = 192
        Top = 248
        Width = 121
        Height = 21
        TabOrder = 7
      end
      object Button1: TButton
        Left = 352
        Top = 168
        Width = 75
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 8
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 352
        Top = 199
        Width = 75
        Height = 25
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100
        TabOrder = 9
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 352
        Top = 230
        Width = 75
        Height = 25
        Caption = #1047#1072#1087#1080#1089#1072#1090#1100
        TabOrder = 10
        OnClick = Button3Click
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 552
    Top = 8
    object N1: TMenuItem
      Caption = #1055#1077#1088#1077#1081#1090#1080
      object N4: TMenuItem
        Caption = #1042' '#1075#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
        OnClick = N4Click
      end
    end
    object N2: TMenuItem
      Caption = #1057#1082#1083#1072#1076
      object N5: TMenuItem
        Caption = #1054#1089#1090#1072#1090#1086#1082
      end
    end
    object N3: TMenuItem
      Caption = #1041#1091#1093#1075#1072#1083#1090#1077#1088#1080#1103
      object N6: TMenuItem
        Caption = #1087#1088#1086#1074#1077#1088#1082#1072' '#1089#1095#1077#1090#1072' '
      end
      object N7: TMenuItem
        Caption = #1084#1077#1089#1103#1095#1085#1099#1081' '#1086#1090#1095#1077#1090
      end
    end
  end
  object ADOQueryClient: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select client.*, countries.country from (client left join countr' +
        'ies on (client.nation=countries.country_ID))  ORDER BY client_ID')
    Left = 552
    Top = 72
  end
  object DataSourceClient: TDataSource
    DataSet = ADOQueryClient
    Left = 616
    Top = 88
  end
  object ADOQueryCountry: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from countries ORDER BY country_ID')
    Left = 552
    Top = 120
  end
  object DataSourceCountry: TDataSource
    DataSet = ADOQueryCountry
    Left = 616
    Top = 136
  end
end

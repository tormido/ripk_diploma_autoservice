object NewWorker: TNewWorker
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1089#1086#1090#1088#1091#1076#1085#1080#1082
  ClientHeight = 488
  ClientWidth = 822
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
    Left = 24
    Top = 72
    Width = 50
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object Label2: TLabel
    Left = 24
    Top = 112
    Width = 176
    Height = 13
    Caption = #1050#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1072#1103' '#1082#1072#1090#1077#1075#1086#1088#1080#1103
  end
  object Label3: TLabel
    Left = 24
    Top = 152
    Width = 138
    Height = 13
    Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072' '#1085#1072' '#1088#1072#1073#1086#1090#1091
  end
  object Label4: TLabel
    Left = 376
    Top = 72
    Width = 76
    Height = 13
    Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
  end
  object Label5: TLabel
    Left = 380
    Top = 112
    Width = 63
    Height = 13
    Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103
  end
  object Label6: TLabel
    Left = 376
    Top = 152
    Width = 89
    Height = 13
    Caption = #1051#1080#1095#1085#1099#1081' '#1087#1072#1088#1086#1083#1100
  end
  object Button1: TButton
    Left = 408
    Top = 183
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 504
    Top = 183
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 1
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 822
    Height = 41
    Align = alTop
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 278
    Width = 822
    Height = 210
    Align = alBottom
    DataSource = DataSourceRepSotr
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'worker_ID'
        Title.Caption = #1058#1072#1073'.'#8470
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fam'
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datofstart'
        Title.Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qual_level'
        Title.Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'level'
        Title.Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prof'
        Title.Caption = #1055#1088#1086#1092#1077#1089#1089#1080#1103
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'passwrd'
        Title.Caption = #1055#1072#1088#1086#1083#1100
        Width = 70
        Visible = True
      end>
  end
  object Button3: TButton
    Left = 600
    Top = 183
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 4
    OnClick = Button3Click
  end
  object DBEdit1: TDBEdit
    Left = 150
    Top = 69
    Width = 201
    Height = 21
    DataField = 'fam'
    DataSource = DataSourceRepSotr
    TabOrder = 5
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit2: TDBEdit
    Left = 230
    Top = 109
    Width = 121
    Height = 21
    DataField = 'qual_level'
    DataSource = DataSourceRepSotr
    TabOrder = 6
    OnKeyPress = DBEdit2KeyPress
  end
  object DBEdit3: TDBEdit
    Left = 41
    Top = 171
    Width = 121
    Height = 21
    DataField = 'datofstart'
    DataSource = DataSourceRepSotr
    TabOrder = 7
    Visible = False
  end
  object DBEdit6: TDBEdit
    Left = 471
    Top = 149
    Width = 202
    Height = 21
    DataField = 'passwrd'
    DataSource = DataSourceRepSotr
    TabOrder = 8
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 471
    Top = 69
    Width = 202
    Height = 21
    DataField = 'education_ID'
    DataSource = DataSourceRepSotr
    KeyField = 'education_ID'
    ListField = 'level'
    ListSource = DataSourceEducation
    TabOrder = 9
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 471
    Top = 109
    Width = 204
    Height = 21
    DataField = 'vocation_ID'
    DataSource = DataSourceRepSotr
    KeyField = 'vocation_ID'
    ListField = 'prof'
    ListSource = DataSourceVocation
    TabOrder = 10
  end
  object DateTimePicker1: TDateTimePicker
    Left = 216
    Top = 152
    Width = 135
    Height = 21
    Date = 42609.690279085640000000
    Time = 42609.690279085640000000
    TabOrder = 11
    OnChange = DateTimePicker1Change
  end
  object DataSourceWorker: TDataSource
    DataSet = ADOQueryWorker
    Left = 792
    Top = 65528
  end
  object ADOQueryWorker: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from employees ORDER BY worker_ID')
    Left = 720
    Top = 8
  end
  object ADOQueryEducation: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from education ORDER BY education_ID')
    Left = 720
    Top = 56
  end
  object ADOQueryVocation: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from vocation ORDER BY vocation_ID')
    Left = 720
    Top = 104
  end
  object DataSourceEducation: TDataSource
    DataSet = ADOQueryEducation
    Left = 792
    Top = 40
  end
  object DataSourceVocation: TDataSource
    DataSet = ADOQueryVocation
    Left = 792
    Top = 88
  end
  object ADOQueryRepSotr: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select employees.worker_ID, employees.fam, employees.datofstart,' +
        ' employees.qual_level, employees.education_ID, employees.vocatio' +
        'n_ID, education.level, vocation.prof, employees.passwrd from (em' +
        'ployees'
      
        'left join education on (employees.education_ID=education.educati' +
        'on_ID)) left join vocation on (employees.vocation_ID=vocation.vo' +
        'cation_ID);')
    Left = 720
    Top = 160
  end
  object DataSourceRepSotr: TDataSource
    DataSet = ADOQueryRepSotr
    Left = 792
    Top = 144
  end
end

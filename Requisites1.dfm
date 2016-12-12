object Requisites: TRequisites
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099
  ClientHeight = 264
  ClientWidth = 470
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
    Top = 16
    Width = 160
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
  end
  object Label2: TLabel
    Left = 24
    Top = 134
    Width = 24
    Height = 13
    Caption = #1059#1053#1055
  end
  object Label3: TLabel
    Left = 144
    Top = 134
    Width = 31
    Height = 13
    Caption = #1054#1050#1055#1054
  end
  object Label4: TLabel
    Left = 24
    Top = 88
    Width = 37
    Height = 13
    Caption = #1040#1076#1088#1077#1089
  end
  object Label5: TLabel
    Left = 272
    Top = 134
    Width = 51
    Height = 13
    Caption = #1058#1077#1083#1077#1092#1086#1085
  end
  object Label6: TLabel
    Left = 24
    Top = 180
    Width = 29
    Height = 13
    Caption = #1060#1072#1082#1089
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 264
    Width = 593
    Height = 65
    DataSource = DataSourceRequisits
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'org_name'
        Title.Alignment = taCenter
        Title.Caption = #1085#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNP'
        Title.Alignment = taCenter
        Title.Caption = #1059#1053#1055
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OKPO'
        Title.Alignment = taCenter
        Title.Caption = #1054#1050#1055#1054
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'addr'
        Title.Alignment = taCenter
        Title.Caption = #1040#1044#1056#1045#1057
        Width = 283
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tel'
        Title.Alignment = taCenter
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fax'
        Title.Alignment = taCenter
        Title.Caption = #1060#1072#1082#1089
        Width = 124
        Visible = True
      end>
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 107
    Width = 425
    Height = 21
    DataField = 'addr'
    DataSource = DataSourceRequisits
    TabOrder = 1
    OnKeyPress = DBEdit2KeyPress
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 153
    Width = 81
    Height = 21
    DataField = 'UNP'
    DataSource = DataSourceRequisits
    TabOrder = 2
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit4: TDBEdit
    Left = 272
    Top = 153
    Width = 177
    Height = 21
    DataField = 'tel'
    DataSource = DataSourceRequisits
    TabOrder = 3
    OnKeyPress = DBEdit4KeyPress
  end
  object DBEdit5: TDBEdit
    Left = 144
    Top = 153
    Width = 81
    Height = 21
    DataField = 'OKPO'
    DataSource = DataSourceRequisits
    TabOrder = 4
    OnKeyPress = DBEdit5KeyPress
  end
  object DBEdit6: TDBEdit
    Left = 24
    Top = 199
    Width = 217
    Height = 21
    DataField = 'fax'
    DataSource = DataSourceRequisits
    TabOrder = 5
    OnKeyPress = DBEdit6KeyPress
  end
  object DBMemo1: TDBMemo
    Left = 24
    Top = 35
    Width = 425
    Height = 54
    DataField = 'org_name'
    DataSource = DataSourceRequisits
    TabOrder = 6
    OnChange = DBMemo1Change
    OnKeyPress = DBMemo1KeyPress
  end
  object Button1: TButton
    Left = 272
    Top = 233
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 374
    Top = 233
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 8
    OnClick = Button2Click
  end
  object ADOQueryRequisits: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from requisites')
    Left = 168
    Top = 224
  end
  object DataSourceRequisits: TDataSource
    DataSet = ADOQueryRequisits
    Left = 64
    Top = 224
  end
end

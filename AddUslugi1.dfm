object AddUslugi: TAddUslugi
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
  ClientHeight = 427
  ClientWidth = 646
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
  object Label1: TLabel
    Left = 24
    Top = 40
    Width = 149
    Height = 13
    Caption = #1050#1086#1076' '#1088#1072#1073#1086#1090#1099' (8 '#1089#1080#1084#1074#1086#1083#1086#1074')'
  end
  object Label2: TLabel
    Left = 24
    Top = 72
    Width = 103
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
  end
  object Label3: TLabel
    Left = 24
    Top = 108
    Width = 169
    Height = 13
    Caption = #1053#1086#1088#1084#1072' '#1074#1088#1077#1084#1077#1085#1080' ('#1089#1072#1085#1090#1080#1095#1072#1089#1086#1074')'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 206
    Width = 646
    Height = 221
    Align = alBottom
    DataSource = DataSourceWork
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'work_ID'
        Title.Alignment = taCenter
        Title.Caption = #1053#1086#1084#1077#1088' '#1074' '#1073#1072#1079#1077
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'workCode'
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076' '#1091#1089#1083#1091#1075#1080
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'workname'
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1091#1089#1083#1091#1075#1080
        Width = 330
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'worknorm'
        Title.Alignment = taCenter
        Title.Caption = #1053#1086#1088#1084#1072' ('#1089#1072#1085#1090#1080#1095#1072#1089#1086#1074')'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 215
    Top = 35
    Width = 322
    Height = 21
    DataField = 'workCode'
    DataSource = DataSourceWork
    TabOrder = 1
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit2: TDBEdit
    Left = 215
    Top = 69
    Width = 322
    Height = 21
    DataField = 'workname'
    DataSource = DataSourceWork
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 215
    Top = 105
    Width = 75
    Height = 21
    DataField = 'worknorm'
    DataSource = DataSourceWork
    TabOrder = 3
    OnKeyPress = DBEdit3KeyPress
  end
  object Button1: TButton
    Left = 215
    Top = 152
    Width = 75
    Height = 25
    Caption = #1086#1090#1084#1077#1085#1072
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 327
    Top = 152
    Width = 75
    Height = 25
    Caption = #1089#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 438
    Top = 152
    Width = 75
    Height = 25
    Caption = #1091#1076#1072#1083#1080#1090#1100
    TabOrder = 6
    OnClick = Button3Click
  end
  object ADOQueryWork: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from works ORDER BY work_ID')
    Left = 584
    Top = 8
  end
  object DataSourceWork: TDataSource
    DataSet = ADOQueryWork
    Left = 584
    Top = 56
  end
  object MainMenu1: TMainMenu
    Left = 592
    Top = 136
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1069#1082#1089#1087#1086#1088#1090
      end
      object N3: TMenuItem
        Caption = #1055#1077#1095#1072#1090#1100
      end
      object N4: TMenuItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
      end
    end
  end
end

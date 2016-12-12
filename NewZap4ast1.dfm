object NewZap4ast: TNewZap4ast
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #1047#1072#1087#1095#1072#1089#1090#1080
  ClientHeight = 502
  ClientWidth = 578
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
    Top = 27
    Width = 84
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object Label2: TLabel
    Left = 24
    Top = 59
    Width = 131
    Height = 13
    Caption = #1047#1072#1074#1086#1076#1089#1082#1072#1103' '#1082#1086#1076#1080#1088#1086#1074#1082#1072
  end
  object Label3: TLabel
    Left = 24
    Top = 91
    Width = 96
    Height = 13
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' (BYN)'
  end
  object Label4: TLabel
    Left = 24
    Top = 128
    Width = 112
    Height = 13
    Caption = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1089#1082#1083#1072#1076#1077
  end
  object Button1: TButton
    Left = 61
    Top = 176
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 176
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 1
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 248
    Width = 578
    Height = 254
    Align = alBottom
    DataSource = DataSourceZap4asti
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'part_ID'
        Title.Alignment = taCenter
        Title.Caption = #1085#1086#1084#1077#1088
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'partname'
        Title.Alignment = taCenter
        Title.Caption = #1085#1072#1079#1074#1072#1085#1080#1077' '#1079#1072#1087#1095#1072#1089#1090#1080
        Width = 328
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'partcode'
        Title.Alignment = taCenter
        Title.Caption = #1079#1072#1074#1086#1076#1089#1082#1086#1081' '#1082#1086#1076
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'partcost'
        Title.Alignment = taCenter
        Title.Caption = #1094#1077#1085#1072' ('#1088#1091#1073')'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'balance'
        Title.Alignment = taCenter
        Title.Caption = #1086#1089#1090#1072#1090#1086#1082
        Width = 63
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 184
    Top = 24
    Width = 361
    Height = 21
    DataField = 'partname'
    DataSource = DataSourceZap4asti
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 184
    Top = 56
    Width = 361
    Height = 21
    DataField = 'partcode'
    DataSource = DataSourceZap4asti
    TabOrder = 4
  end
  object DBEdit3: TDBEdit
    Left = 184
    Top = 93
    Width = 121
    Height = 21
    DataField = 'partcost'
    DataSource = DataSourceZap4asti
    TabOrder = 5
    OnKeyPress = DBEdit3KeyPress
  end
  object DBEdit4: TDBEdit
    Left = 184
    Top = 120
    Width = 121
    Height = 21
    DataField = 'balance'
    DataSource = DataSourceZap4asti
    TabOrder = 6
  end
  object Button3: TButton
    Left = 312
    Top = 176
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 7
    OnClick = Button3Click
  end
  object ADOQueryZap4asti: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from parts ORDER BY part_ID')
    Left = 440
    Top = 104
  end
  object DataSourceZap4asti: TDataSource
    DataSet = ADOQueryZap4asti
    Left = 568
    Top = 104
  end
  object MainMenu1: TMainMenu
    Left = 608
    Top = 200
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

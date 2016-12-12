object NewZakaz: TNewZakaz
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #1047#1072#1082#1072#1079
  ClientHeight = 598
  ClientWidth = 914
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 0
    Width = 729
    Height = 598
    ActivePage = TabSheet3
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #1044#1072#1085#1085#1099#1077' '#1079#1072#1082#1072#1079#1072
      object Panel1: TPanel
        Left = -12
        Top = 25
        Width = 730
        Height = 193
        TabOrder = 0
        object Label1: TLabel
          Left = 19
          Top = 9
          Width = 80
          Height = 13
          Caption = #1053#1086#1084#1077#1088' '#1079#1072#1082#1072#1079#1072
        end
        object Label2: TLabel
          Left = 19
          Top = 43
          Width = 74
          Height = 13
          Caption = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
        end
        object Label3: TLabel
          Left = 19
          Top = 67
          Width = 121
          Height = 13
          Caption = #1047#1072#1103#1074#1083#1077#1085#1085#1099#1077' '#1088#1072#1073#1086#1090#1099
        end
        object Label5: TLabel
          Left = 335
          Top = 9
          Width = 71
          Height = 13
          Caption = #1040#1074#1090#1086#1084#1086#1073#1080#1083#1100
        end
        object Label4: TLabel
          Left = 19
          Top = 163
          Width = 41
          Height = 13
          Caption = #1050#1083#1080#1077#1085#1090
        end
        object Label10: TLabel
          Left = 335
          Top = 46
          Width = 41
          Height = 13
          Caption = #1087#1088#1086#1073#1077#1075
        end
        object Label11: TLabel
          Left = 335
          Top = 84
          Width = 102
          Height = 13
          Caption = #1092#1072#1084#1080#1083#1080#1103' '#1084#1072#1089#1090#1077#1088#1072
        end
        object DBMemo1: TDBMemo
          Left = 19
          Top = 81
          Width = 294
          Height = 73
          DataField = 'comment'
          DataSource = DataSourceZakaz
          TabOrder = 0
          OnChange = DBMemo1Change
        end
        object Button4: TButton
          Left = 430
          Top = 158
          Width = 75
          Height = 25
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          TabOrder = 1
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 530
          Top = 158
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 2
          OnClick = Button5Click
        end
        object DBCheckBox1: TDBCheckBox
          Left = 335
          Top = 119
          Width = 97
          Height = 17
          Caption = #1042#1099#1087#1086#1083#1085#1077#1085
          DataField = 'done'
          DataSource = DataSourceZakaz
          TabOrder = 3
        end
        object DBCheckBox2: TDBCheckBox
          Left = 508
          Top = 119
          Width = 97
          Height = 17
          AllowGrayed = True
          Caption = #1054#1087#1083#1072#1095#1077#1085
          DataField = 'paid'
          DataSource = DataSourceZakaz
          TabOrder = 4
        end
        object DateTimePicker1: TDateTimePicker
          Left = 127
          Top = 40
          Width = 186
          Height = 21
          Date = 42607.989319756950000000
          Time = 42607.989319756950000000
          TabOrder = 5
          OnChange = DateTimePicker1Change
        end
        object DBEdit6: TDBEdit
          Left = 443
          Top = 40
          Width = 179
          Height = 21
          DataField = 'run'
          DataSource = DataSourceZakaz
          TabOrder = 6
          OnChange = DBEdit6Change
          OnKeyPress = DBEdit6KeyPress
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 96
          Top = 160
          Width = 145
          Height = 21
          DataField = 'client_ID'
          DataSource = DataSourceZakaz
          KeyField = 'client_ID'
          ListField = 'fam'
          ListSource = ClientReg.DataSourceClient
          TabOrder = 7
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 446
          Top = 0
          Width = 176
          Height = 21
          DataField = 'auto_ID'
          DataSource = DataSourceZakaz
          KeyField = 'Auto_ID'
          ListField = 'autonumber'
          ListSource = AddAuto.DataSourceAuto
          TabOrder = 8
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 443
          Top = 81
          Width = 179
          Height = 21
          DataField = 'worker_ID'
          DataSource = DataSourceZakaz
          KeyField = 'worker_ID'
          ListField = 'fam'
          ListSource = NewWorker.DataSourceWorker
          TabOrder = 9
        end
        object DBEdit2: TDBEdit
          Left = 176
          Top = 54
          Width = 121
          Height = 21
          DataField = 'dateof'
          DataSource = DataSourceZakaz
          TabOrder = 10
          Visible = False
        end
      end
      object DBEdit1: TDBEdit
        Left = 116
        Top = 31
        Width = 185
        Height = 21
        DataField = 'zakaz_ID'
        DataSource = DataSourceZakaz
        Enabled = False
        TabOrder = 1
        OnChange = DBEdit1Change
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 399
        Width = 718
        Height = 171
        DataSource = DataSourceZakaz
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'zakaz_ID'
            Title.Caption = #1085#1086#1084#1077#1088' '#1079#1072#1082#1072#1079#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dateof'
            Title.Caption = #1076#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'comment'
            Title.Caption = #1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'client_ID'
            Title.Caption = #1082#1083#1080#1077#1085#1090'_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'auto_ID'
            Title.Caption = #1072#1074#1090#1086#1084#1086#1073#1080#1083#1100'_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'run'
            Title.Caption = #1087#1088#1086#1073#1077#1075
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'worker_ID'
            Title.Caption = #1089#1086#1090#1088#1091#1076#1085#1080#1082'_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'done'
            Title.Caption = #1074#1099#1087#1086#1083#1085#1077#1085
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'paid'
            Title.Caption = #1086#1087#1083#1072#1095#1077#1085
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 224
        Width = 718
        Height = 169
        TabOrder = 3
        object GroupBox2: TGroupBox
          Left = 0
          Top = 0
          Width = 713
          Height = 161
          Caption = #1055#1077#1088#1077#1089#1095#1077#1090' '#1086#1073#1097#1077#1081' '#1089#1090#1086#1080#1084#1086#1089#1090#1080' '#1079#1072#1082#1072#1079#1072
          TabOrder = 0
          object Label6: TLabel
            Left = 16
            Top = 24
            Width = 184
            Height = 13
            Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072#1087#1095#1072#1089#1090#1077#1081' '#1074' '#1079#1072#1082#1072#1079#1077
          end
          object Label7: TLabel
            Left = 16
            Top = 56
            Width = 125
            Height = 13
            Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1079#1072#1087#1095#1072#1089#1090#1077#1081
          end
          object Label8: TLabel
            Left = 16
            Top = 91
            Width = 160
            Height = 13
            Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1088#1072#1073#1086#1090' '#1087#1086' '#1079#1072#1082#1072#1079#1091
          end
          object Label9: TLabel
            Left = 16
            Top = 125
            Width = 146
            Height = 13
            Caption = #1054#1073#1097#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' '#1079#1072#1082#1072#1079#1072
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      ParentCustomHint = False
      Caption = #1059#1089#1083#1091#1075#1080' '#1087#1086' '#1079#1072#1082#1072#1079#1091
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = False
      object Label12: TLabel
        Left = 24
        Top = 21
        Width = 101
        Height = 13
        Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1091#1089#1083#1091#1075#1091
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 264
        Width = 721
        Height = 306
        Align = alBottom
        DataSource = DataSourceUPZ
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'upz_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'zakaz_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'work_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'workname'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'workCode'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'worknorm'
            Visible = True
          end>
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 16
        Top = 40
        Width = 313
        Height = 21
        DataField = 'work_ID'
        DataSource = DataSourceUPZ
        KeyField = 'work_ID'
        ListField = 'workname'
        ListSource = AddUslugi.DataSourceWork
        TabOrder = 1
        OnClick = DBLookupComboBox4Click
      end
      object Button2: TButton
        Left = 158
        Top = 183
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100' '
        TabOrder = 2
        OnClick = Button2Click
      end
      object Button1: TButton
        Left = 77
        Top = 183
        Width = 75
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 3
        OnClick = Button1Click
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 0
        Width = 57
        Height = 21
        DataField = 'zakaz_ID'
        DataSource = DataSourceUPZ
        Enabled = False
        TabOrder = 4
      end
      object Button8: TButton
        Left = 238
        Top = 183
        Width = 75
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 5
        OnClick = Button8Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1047#1072#1087#1095#1072#1089#1090#1080' '#1087#1086' '#1079#1072#1082#1072#1079#1091
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 28
      object Label14: TLabel
        Left = 24
        Top = 21
        Width = 115
        Height = 13
        Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1079#1072#1087#1095#1072#1089#1090#1100
      end
      object Label15: TLabel
        Left = 24
        Top = 67
        Width = 121
        Height = 13
        Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 16
        Top = 40
        Width = 313
        Height = 21
        DataField = 'part_ID'
        DataSource = DataSourceZPZ
        KeyField = 'part_ID'
        ListField = 'partname'
        ListSource = NewZap4ast.DataSourceZap4asti
        TabOrder = 0
        OnClick = DBLookupComboBox5Click
      end
      object Button6: TButton
        Left = 77
        Top = 183
        Width = 75
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 1
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 158
        Top = 183
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100' '
        TabOrder = 2
        OnClick = Button7Click
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 264
        Width = 721
        Height = 306
        Align = alBottom
        DataSource = DataSourceZPZ
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'zpz_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'zakaz_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'part_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'amt'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'partname'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'partcode'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'partcost'
            Visible = True
          end>
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 86
        Width = 313
        Height = 21
        DataField = 'amt'
        DataSource = DataSourceZPZ
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 16
        Top = 0
        Width = 57
        Height = 21
        DataField = 'zakaz_ID'
        DataSource = DataSourceZPZ
        Enabled = False
        TabOrder = 5
      end
      object Button9: TButton
        Left = 238
        Top = 183
        Width = 75
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 6
        OnClick = Button9Click
      end
    end
  end
  object Button3: TButton
    Left = 331
    Top = 207
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 1
    OnClick = Button3Click
  end
  object MainMenu1: TMainMenu
    Left = 640
    Top = 8
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N8: TMenuItem
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1086#1090#1095#1077#1090#1072
        OnClick = N8Click
      end
      object N5: TMenuItem
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1086#1090#1095#1077#1090#1072
        object PDF1: TMenuItem
          Caption = 'PDF'
          OnClick = PDF1Click
        end
        object RTF1: TMenuItem
          Caption = 'RTF'
          OnClick = RTF1Click
        end
      end
      object N4: TMenuItem
        Caption = #1055#1077#1095#1072#1090#1100' '#1086#1090#1095#1077#1090#1072
        OnClick = N4Click
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
      object N7: TMenuItem
        Caption = #1060#1086#1090#1086' '#1074#1086#1083#1086#1089#1072#1090#1086#1081' '#1080' '#1083#1099#1089#1086#1081' '#1082#1080#1089#1082#1080
        OnClick = N7Click
      end
    end
  end
  object ADOQueryZakaz: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from zakaz ORDER BY zakaz_ID')
    Left = 712
    Top = 8
  end
  object DataSourceZakaz: TDataSource
    DataSet = ADOQueryZakaz
    Left = 784
    Top = 24
  end
  object ADOQueryZPZ: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from zap4asti_po_zakazu')
    Left = 712
    Top = 104
  end
  object DataSourceUPZ: TDataSource
    DataSet = ADOQueryUPZ
    Left = 784
    Top = 72
  end
  object DataSourceZPZ: TDataSource
    DataSet = ADOQueryZPZ
    Left = 784
    Top = 120
  end
  object ADOQueryUPZ: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from uslugi_po_zakazu ')
    Left = 712
    Top = 56
  end
  object ADOQueryDelUsl: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from zakaz ORDER BY zakaz_ID')
    Left = 744
    Top = 264
  end
  object DataSourceDelUsl: TDataSource
    DataSet = ADOQueryDelUsl
    Left = 840
    Top = 272
  end
  object ADOQueryDelZP4: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from zakaz ORDER BY zakaz_ID')
    Left = 744
    Top = 328
  end
  object DataSourceDelZp4: TDataSource
    DataSet = ADOQueryDelZP4
    Left = 840
    Top = 344
  end
end

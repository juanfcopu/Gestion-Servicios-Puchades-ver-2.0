object FClientes: TFClientes
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Cliente'
  ClientHeight = 741
  ClientWidth = 1342
  Color = clBtnFace
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1336
    Height = 110
    Align = alTop
    Anchors = [akTop, akRight]
    Caption = 'Datos del Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 1380
    object GridPanel2: TGridPanel
      Left = 2
      Top = 15
      Width = 1332
      Height = 93
      Align = alClient
      ColumnCollection = <
        item
          Value = 31.674129194655710000
        end
        item
          Value = 28.917999114429130000
        end
        item
          Value = 19.805169006120510000
        end
        item
          Value = 19.602702684794650000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = GroupBox4
          Row = 0
        end
        item
          Column = 1
          Control = GroupBox3
          Row = 0
        end
        item
          Column = 2
          Control = GroupBox2
          Row = 0
        end
        item
          Column = 3
          Control = GroupBox5
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 0
      ExplicitLeft = 112
      ExplicitTop = 48
      ExplicitWidth = 81
      ExplicitHeight = 33
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 11
        Top = 4
        Width = 408
        Height = 78
        Margins.Left = 10
        Margins.Bottom = 10
        Align = alClient
        Caption = 'Datos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 414
        object LabeledEdit1: TLabeledEdit
          AlignWithMargins = True
          Left = 9
          Top = 32
          Width = 41
          Height = 21
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'Codigo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object LabeledEdit2: TLabeledEdit
          AlignWithMargins = True
          Left = 56
          Top = 32
          Width = 235
          Height = 21
          EditLabel.Width = 37
          EditLabel.Height = 13
          EditLabel.Caption = 'Nombre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object LabeledEdit3: TLabeledEdit
          AlignWithMargins = True
          Left = 305
          Top = 32
          Width = 91
          Height = 21
          EditLabel.Width = 25
          EditLabel.Height = 13
          EditLabel.Caption = 'C.I.F'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 432
        Top = 4
        Width = 371
        Height = 78
        Margins.Left = 10
        Margins.Bottom = 10
        Align = alClient
        Caption = 'Direcci'#243'n '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ExplicitLeft = 453
        ExplicitTop = 307
        ExplicitWidth = 185
        ExplicitHeight = 105
        object LabeledEdit6: TLabeledEdit
          Left = 57
          Top = 17
          Width = 285
          Height = 21
          EditLabel.Width = 43
          EditLabel.Height = 13
          EditLabel.Caption = 'Direcci'#243'n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          ParentFont = False
          TabOrder = 0
        end
        object LabeledEdit7: TLabeledEdit
          Left = 77
          Top = 54
          Width = 58
          Height = 21
          EditLabel.Width = 65
          EditLabel.Height = 13
          EditLabel.Caption = 'Codigo Postal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          ParentFont = False
          TabOrder = 1
        end
        object LabeledEdit8: TLabeledEdit
          Left = 180
          Top = 52
          Width = 162
          Height = 21
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'Ciudad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          ParentFont = False
          TabOrder = 2
        end
      end
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 816
        Top = 4
        Width = 243
        Height = 78
        Margins.Left = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
        Caption = 'Datos Bancarios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        ExplicitLeft = 854
        ExplicitTop = 68
        ExplicitWidth = 185
        ExplicitHeight = 105
        object LabeledEdit4: TLabeledEdit
          Left = 62
          Top = 54
          Width = 175
          Height = 21
          EditLabel.Width = 50
          EditLabel.Height = 13
          EditLabel.Caption = 'N'#186' Cuenta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          ParentFont = False
          TabOrder = 0
        end
        object LabeledEdit5: TLabeledEdit
          Left = 62
          Top = 17
          Width = 175
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 29
          EditLabel.Height = 13
          EditLabel.Caption = 'Banco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          ParentFont = False
          TabOrder = 1
        end
      end
      object GroupBox5: TGroupBox
        AlignWithMargins = True
        Left = 1072
        Top = 4
        Width = 256
        Height = 85
        Align = alClient
        Caption = 'Familia y Administrador'
        TabOrder = 3
        ExplicitLeft = 1096
        ExplicitTop = 16
        ExplicitWidth = 121
        ExplicitHeight = 57
        object Label1: TLabel
          AlignWithMargins = True
          Left = 15
          Top = 20
          Width = 32
          Height = 13
          Caption = 'Familia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          AlignWithMargins = True
          Left = 11
          Top = 57
          Width = 66
          Height = 14
          Caption = 'Administrador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object ComboBox1: TComboBox
          AlignWithMargins = True
          Left = 91
          Top = 17
          Width = 157
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'ComboBox1'
        end
        object ComboBox2: TComboBox
          AlignWithMargins = True
          Left = 91
          Top = 52
          Width = 157
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = 'ComboBox1'
        end
      end
    end
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 116
    Width = 1342
    Height = 625
    Align = alClient
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        ColumnSpan = 2
        Control = Panel1
        Row = 2
      end
      item
        Column = 0
        Control = Frame11
        Row = 0
      end>
    ExpandStyle = emAddColumns
    RowCollection = <
      item
        Value = 38.463416191288080000
      end
      item
        Value = 38.459660731788840000
      end
      item
        Value = 23.076923076923070000
      end>
    TabOrder = 1
    ExplicitLeft = -3
    ExplicitTop = 109
    ExplicitWidth = 1386
    ExplicitHeight = 517
    object Panel1: TPanel
      Left = 1
      Top = 479
      Width = 1340
      Height = 145
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 0
      ExplicitLeft = 49
      ExplicitWidth = 1299
      object DBChart1: TDBChart
        Left = 1
        Top = 1
        Width = 1338
        Height = 143
        Title.Text.Strings = (
          'TDBChart')
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 72
        ExplicitTop = 64
        ExplicitWidth = 544
        ExplicitHeight = 57
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
      end
    end
    inline Frame11: TFrame1
      Left = 1
      Top = 1
      Width = 670
      Height = 239
      Align = alClient
      Anchors = []
      TabOrder = 1
      ExplicitLeft = 9
      ExplicitTop = 9
      ExplicitWidth = 670
      ExplicitHeight = 239
      inherited Panel1: TPanel
        Width = 670
        Height = 239
        inherited HeaderControl1: THeaderControl
          Width = 662
          Sections = <
            item
              ImageIndex = -1
              Text = 'Presupuestos'
              Width = 120
            end>
        end
        inherited ListView1: TListView
          Width = 662
          Height = 189
        end
      end
    end
  end
end

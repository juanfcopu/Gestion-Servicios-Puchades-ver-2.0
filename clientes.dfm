object FClientes: TFClientes
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Cliente'
  ClientHeight = 628
  ClientWidth = 1386
  Color = clBtnFace
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1386
    Height = 105
    Align = alTop
    Caption = 'Datos del Cliente'
    TabOrder = 0
    ExplicitLeft = -16
    ExplicitTop = 8
    ExplicitWidth = 1270
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 1007
      Top = 18
      Width = 354
      Height = 82
      Margins.Left = 20
      Margins.Right = 20
      Align = alLeft
      Caption = 'Datos Bancarios'
      TabOrder = 0
      ExplicitLeft = 903
      ExplicitTop = 15
      ExplicitHeight = 84
      object LabeledEdit4: TLabeledEdit
        Left = 73
        Top = 55
        Width = 264
        Height = 21
        EditLabel.Width = 50
        EditLabel.Height = 13
        EditLabel.Caption = 'N'#186' Cuenta'
        LabelPosition = lpLeft
        TabOrder = 0
      end
      object LabeledEdit5: TLabeledEdit
        Left = 73
        Top = 17
        Width = 264
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 29
        EditLabel.Height = 13
        EditLabel.Caption = 'Banco'
        LabelPosition = lpLeft
        TabOrder = 1
      end
    end
    object GroupBox3: TGroupBox
      AlignWithMargins = True
      Left = 511
      Top = 18
      Width = 473
      Height = 82
      Align = alLeft
      Caption = 'Direcci'#243'n '
      TabOrder = 1
      ExplicitLeft = 424
      ExplicitTop = 15
      ExplicitHeight = 84
      object LabeledEdit6: TLabeledEdit
        Left = 79
        Top = 17
        Width = 370
        Height = 21
        EditLabel.Width = 43
        EditLabel.Height = 13
        EditLabel.Caption = 'Direcci'#243'n'
        LabelPosition = lpLeft
        TabOrder = 0
      end
      object LabeledEdit7: TLabeledEdit
        Left = 79
        Top = 52
        Width = 82
        Height = 22
        EditLabel.Width = 65
        EditLabel.Height = 13
        EditLabel.Caption = 'Codigo Postal'
        LabelPosition = lpLeft
        TabOrder = 1
      end
      object LabeledEdit8: TLabeledEdit
        Left = 215
        Top = 52
        Width = 235
        Height = 22
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Ciudad'
        LabelPosition = lpLeft
        TabOrder = 2
      end
    end
    object GroupBox4: TGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 500
      Height = 82
      Align = alLeft
      Caption = 'Direcci'#243'n '
      TabOrder = 2
      object LabeledEdit1: TLabeledEdit
        Left = 16
        Top = 32
        Width = 41
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Codigo'
        TabOrder = 0
      end
      object LabeledEdit2: TLabeledEdit
        Left = 71
        Top = 32
        Width = 235
        Height = 21
        EditLabel.Width = 37
        EditLabel.Height = 13
        EditLabel.Caption = 'Nombre'
        TabOrder = 1
      end
      object LabeledEdit3: TLabeledEdit
        Left = 312
        Top = 32
        Width = 97
        Height = 21
        EditLabel.Width = 25
        EditLabel.Height = 13
        EditLabel.Caption = 'C.I.F'
        TabOrder = 2
      end
      object ComboBox1: TComboBox
        Left = 16
        Top = 58
        Width = 145
        Height = 21
        TabOrder = 3
        Text = 'ComboBox1'
      end
    end
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 105
    Width = 1386
    Height = 523
    Align = alClient
    Caption = 'GridPanel1'
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <>
    RowCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    TabOrder = 1
    ExplicitLeft = 200
    ExplicitTop = 176
    ExplicitWidth = 841
    ExplicitHeight = 321
  end
end

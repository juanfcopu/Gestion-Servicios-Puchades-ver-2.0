object FAdministradores: TFAdministradores
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Administrador'
  ClientHeight = 612
  ClientWidth = 1296
  Color = clBtnFace
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 40
    Width = 1290
    Height = 129
    Align = alTop
    Anchors = [akTop, akRight]
    Caption = 'Datos del Administrador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object gridpanel: TGridPanel
      Left = 2
      Top = 15
      Width = 1286
      Height = 112
      Align = alClient
      ColumnCollection = <
        item
          Value = 33.238152329142940000
        end
        item
          Value = 29.471522017190630000
        end
        item
          Value = 37.290325653666430000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = grp2
          Row = 0
        end
        item
          Column = 2
          Control = grp3
          Row = 0
        end
        item
          Column = 1
          Control = grp5
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end
        item
          SizeStyle = ssAuto
        end>
      TabOrder = 0
      object grp2: TGroupBox
        AlignWithMargins = True
        Left = 11
        Top = 4
        Width = 413
        Height = 97
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
        object lbledt1: TLabeledEdit
          AlignWithMargins = True
          Left = 9
          Top = 40
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
        object lbledt2: TLabeledEdit
          AlignWithMargins = True
          Left = 56
          Top = 40
          Width = 169
          Height = 21
          EditLabel.Width = 37
          EditLabel.Height = 13
          EditLabel.Caption = 'Nombre'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = []
          EditLabel.ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object lbledt3: TLabeledEdit
          AlignWithMargins = True
          Left = 249
          Top = 40
          Width = 152
          Height = 21
          EditLabel.Width = 42
          EditLabel.Height = 13
          EditLabel.Caption = 'Apellidos'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = []
          EditLabel.ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object lbledt9: TLabeledEdit
          AlignWithMargins = True
          Left = 56
          Top = 73
          Width = 345
          Height = 21
          EditLabel.Width = 37
          EditLabel.Height = 13
          EditLabel.Caption = 'Nombre'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = []
          EditLabel.ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          ParentFont = False
          TabOrder = 3
        end
      end
      object grp3: TGroupBox
        AlignWithMargins = True
        Left = 815
        Top = 4
        Width = 460
        Height = 97
        Margins.Left = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object lbledt4: TLabeledEdit
          Left = 279
          Top = 20
          Width = 147
          Height = 21
          EditLabel.Width = 51
          EditLabel.Height = 13
          EditLabel.Caption = 'Tel'#233'fono 2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          ParentFont = False
          TabOrder = 0
        end
        object lbledt5: TLabeledEdit
          Left = 62
          Top = 20
          Width = 147
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 51
          EditLabel.Height = 13
          EditLabel.Caption = 'Tel'#233'fono 1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          ParentFont = False
          TabOrder = 1
        end
        object lbledt10: TLabeledEdit
          Left = 62
          Top = 60
          Width = 187
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 18
          EditLabel.Height = 13
          EditLabel.Caption = 'Mail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          ParentFont = False
          TabOrder = 2
        end
        object lbledt11: TLabeledEdit
          Left = 278
          Top = 60
          Width = 147
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 18
          EditLabel.Height = 13
          EditLabel.Caption = 'Fax'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          ParentFont = False
          TabOrder = 3
        end
      end
      object grp5: TGroupBox
        AlignWithMargins = True
        Left = 437
        Top = 4
        Width = 365
        Height = 97
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
        TabOrder = 2
        object lbledt6: TLabeledEdit
          Left = 72
          Top = 20
          Width = 281
          Height = 21
          EditLabel.Width = 43
          EditLabel.Height = 13
          EditLabel.Caption = 'Direcci'#243'n'
          LabelPosition = lpLeft
          TabOrder = 0
        end
        object lbledt7: TLabeledEdit
          Left = 72
          Top = 61
          Width = 77
          Height = 21
          EditLabel.Width = 65
          EditLabel.Height = 13
          EditLabel.Caption = 'Codigo Postal'
          LabelPosition = lpLeft
          TabOrder = 1
        end
        object lbledt8: TLabeledEdit
          Left = 200
          Top = 61
          Width = 153
          Height = 21
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'Ciudad'
          LabelPosition = lpLeft
          TabOrder = 2
        end
      end
    end
  end
  object coolbar: TCoolBar
    Left = 0
    Top = 0
    Width = 1296
    Height = 37
    Bands = <>
    ExplicitLeft = 3
    ExplicitTop = -3
    object tlb1: TToolBar
      Left = 11
      Top = 0
      Width = 1281
      Height = 25
      Caption = 'tlb1'
      TabOrder = 0
      object btn1: TToolButton
        Left = 0
        Top = 0
        Caption = 'btn1'
        ImageIndex = 0
        OnClick = btn1Click
      end
    end
  end
  object gridpanel11: TGridPanel
    Left = 0
    Top = 172
    Width = 1296
    Height = 440
    Align = alClient
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = lv1
        Row = 0
      end>
    RowCollection = <
      item
        Value = 76.664190348332470000
      end
      item
        Value = 23.335809651667530000
      end>
    TabOrder = 2
    object lv1: TListView
      Left = 1
      Top = 1
      Width = 1294
      Height = 335
      Align = alClient
      Columns = <
        item
          AutoSize = True
          Caption = 'Nombre'
        end
        item
          AutoSize = True
          Caption = 'CIF'
        end
        item
          AutoSize = True
          Caption = 'Direcci'#243'n'
        end
        item
          AutoSize = True
          Caption = 'Codigo Postal'
        end
        item
          AutoSize = True
          Caption = 'Ciudad'
        end>
      TabOrder = 0
      ViewStyle = vsReport
      OnDblClick = lv1DblClick
    end
  end
  object fdadministrador: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select * from administradores where idAdministrador=:idAdministr' +
        'ador'
      '')
    Left = 352
    Top = 67
    ParamData = <
      item
        Name = 'IDADMINISTRADOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdclientes: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select IdContactos, nombre, cif, ciudad,codigopostal,direccion'
      'from clientes'
      'where idAdministrador=:idAdministrador')
    Left = 408
    Top = 260
    ParamData = <
      item
        Name = 'IDADMINISTRADOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object bndsrcdb1: TBindSourceDB
    DataSet = DataModule1.fdClientes
    ScopeMappings = <>
    Left = 640
    Top = 304
  end
  object bndngslst1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 180
    Top = 65533
    object LinkClientes: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb2
      FieldName = 'nombre'
      Control = lv1
      FillExpressions = <
        item
          SourceMemberName = 'cif'
          ControlMemberName = 'SubItems[0]'
        end
        item
          SourceMemberName = 'ciudad'
          ControlMemberName = 'SubItems[3]'
        end
        item
          SourceMemberName = 'codigopostal'
          ControlMemberName = 'SubItems[2]'
        end
        item
          SourceMemberName = 'direccion'
          ControlMemberName = 'SubItems[1]'
        end>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object lnkcntrltfld1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb3
      FieldName = 'IdAdministrador'
      Control = lbledt1
      Track = True
    end
    object lnkcntrltfld2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb3
      FieldName = 'Nombre'
      Control = lbledt2
      Track = True
    end
    object lnkcntrltfld3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb3
      FieldName = 'Apellidos'
      Control = lbledt3
      Track = True
    end
    object lnkcntrltfld4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb3
      FieldName = 'NombreApellidos'
      Control = lbledt9
      Track = True
    end
    object lnkcntrltfld5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb3
      FieldName = 'Direccion'
      Control = lbledt6
      Track = True
    end
    object lnkcntrltfld6: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb3
      FieldName = 'CodPostal'
      Control = lbledt7
      Track = True
    end
    object lnkcntrltfld7: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb3
      FieldName = 'Ciudad'
      Control = lbledt8
      Track = True
    end
    object lnkcntrltfld8: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb3
      FieldName = 'TelefonoTrabajo'
      Control = lbledt5
      Track = True
    end
    object lnkcntrltfld9: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb3
      FieldName = 'TelefonoMovil'
      Control = lbledt4
      Track = True
    end
    object lnkcntrltfld10: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb3
      FieldName = 'correo'
      Control = lbledt10
      Track = True
    end
    object lnkcntrltfld11: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb3
      FieldName = 'NumFax'
      Control = lbledt11
      Track = True
    end
  end
  object bndsrcdb2: TBindSourceDB
    DataSet = fdclientes
    ScopeMappings = <>
    Left = 648
    Top = 312
  end
  object bndsrcdb3: TBindSourceDB
    DataSet = fdadministrador
    ScopeMappings = <>
    Left = 656
    Top = 320
  end
  object mm1: TMainMenu
    Left = 128
    Top = 16
  end
end

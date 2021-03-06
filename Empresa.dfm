object FEmpresa: TFEmpresa
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Datos Empresa'
  ClientHeight = 225
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel1: TGridPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 739
    Height = 219
    Align = alClient
    ColumnCollection = <
      item
        Value = 84.406122577310840000
      end
      item
        Value = 15.593877422689160000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = GroupBox1
        Row = 0
      end
      item
        Column = 1
        Control = Panel1
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
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 616
      Height = 211
      Align = alClient
      Caption = 'Datos Generales'
      TabOrder = 1
      object lbedIdEmpresa: TLabeledEdit
        Left = 24
        Top = 56
        Width = 121
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        TabOrder = 0
      end
      object lbedNombreEmpresa: TLabeledEdit
        Left = 176
        Top = 56
        Width = 121
        Height = 21
        EditLabel.Width = 37
        EditLabel.Height = 13
        EditLabel.Caption = 'Nombre'
        TabOrder = 1
      end
      object lbedCIF: TLabeledEdit
        Left = 336
        Top = 56
        Width = 121
        Height = 21
        EditLabel.Width = 25
        EditLabel.Height = 13
        EditLabel.Caption = 'C.I.F'
        TabOrder = 2
      end
      object lbedCodigoPostal: TLabeledEdit
        Left = 24
        Top = 112
        Width = 121
        Height = 21
        EditLabel.Width = 65
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo Postal'
        TabOrder = 3
      end
      object lbedDireccion: TLabeledEdit
        Left = 176
        Top = 112
        Width = 281
        Height = 21
        EditLabel.Width = 43
        EditLabel.Height = 13
        EditLabel.Caption = 'Direcci'#243'n'
        TabOrder = 4
      end
      object lbedCiudad: TLabeledEdit
        Left = 480
        Top = 112
        Width = 121
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Ciudad'
        TabOrder = 5
      end
      object lbedTelefonoFijo: TLabeledEdit
        Left = 24
        Top = 168
        Width = 121
        Height = 21
        EditLabel.Width = 62
        EditLabel.Height = 13
        EditLabel.Caption = 'T'#233'lefono Fijo'
        TabOrder = 6
      end
      object lbedTelefonoMovil: TLabeledEdit
        Left = 176
        Top = 168
        Width = 121
        Height = 21
        EditLabel.Width = 69
        EditLabel.Height = 13
        EditLabel.Caption = 'T'#233'lefono Movil'
        TabOrder = 7
      end
      object lbedmail: TLabeledEdit
        Left = 336
        Top = 168
        Width = 265
        Height = 21
        EditLabel.Width = 18
        EditLabel.Height = 13
        EditLabel.Caption = 'Mail'
        TabOrder = 8
      end
    end
    object Panel1: TPanel
      Left = 623
      Top = 1
      Width = 115
      Height = 217
      Align = alClient
      TabOrder = 0
      object btnAceptar: TButton
        Left = 16
        Top = 16
        Width = 83
        Height = 33
        Caption = 'Aceptar'
        TabOrder = 0
        OnClick = btnAceptarClick
      end
      object btnCerrar: TButton
        Left = 16
        Top = 55
        Width = 83
        Height = 33
        Caption = 'Cerrar'
        TabOrder = 1
        OnClick = btnCerrarClick
      end
    end
  end
  object FDEmpresa: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from empresa')
    Left = 531
    Top = 19
  end
  object bndsrcdb1: TBindSourceDB
    DataSet = FDEmpresa
    ScopeMappings = <>
    Left = 440
    Top = 16
  end
  object bndngslst1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object lnkcntrltfld1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb1
      FieldName = 'CorreoElectronico'
      Control = lbedmail
      Track = True
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb1
      FieldName = 'TelefonoMovil'
      Control = lbedTelefonoMovil
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb1
      FieldName = 'CIF'
      Control = lbedCIF
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb1
      FieldName = 'TelefonoCasa'
      Control = lbedTelefonoFijo
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb1
      FieldName = 'idEmpresa'
      Control = lbedIdEmpresa
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb1
      FieldName = 'Ciudad'
      Control = lbedCiudad
      Track = True
    end
    object LinkControlToField6: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb1
      FieldName = 'Direccion'
      Control = lbedDireccion
      Track = True
    end
    object LinkControlToField7: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb1
      FieldName = 'CodigoPostal'
      Control = lbedCodigoPostal
      Track = True
    end
    object LinkControlToField8: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = bndsrcdb1
      FieldName = 'NombreEmpresa'
      Control = lbedNombreEmpresa
      Track = True
    end
  end
end

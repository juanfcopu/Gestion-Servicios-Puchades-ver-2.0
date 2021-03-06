object FInsertarCliente: TFInsertarCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Insertar cliente'
  ClientHeight = 580
  ClientWidth = 946
  Color = clBtnFace
  Constraints.MaxHeight = 609
  Constraints.MaxWidth = 952
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 946
    Height = 580
    Align = alClient
    ColumnCollection = <
      item
        Value = 54.545454545454540000
      end
      item
        Value = 45.454545454545450000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = GroupBox4
        Row = 0
      end
      item
        Column = 1
        Control = GridPanel2
        Row = 0
      end
      item
        Column = 0
        ColumnSpan = 2
        Control = GridPanel3
        Row = 1
      end>
    RowCollection = <
      item
        Value = 31.441597233139440000
      end
      item
        Value = 68.558402766860560000
      end>
    TabOrder = 0
    object GroupBox4: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 508
      Height = 175
      Align = alClient
      Caption = 'Datos Generales'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object rDBEdit1: TrDBEdit
        Left = 9
        Top = 40
        Width = 41
        Height = 21
        CharCase = ecUpperCase
        DataField = 'IdContactos'
        DataSource = dsinsertarcliente
        TabOrder = 0
        DBEditLabel.OwnCaption = 'C'#243'digo'
        DBEditLabel.ShowRequiredBold = True
      end
      object rDBEdit2: TrDBEdit
        Left = 56
        Top = 40
        Width = 235
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Nombre'
        DataSource = dsinsertarcliente
        TabOrder = 1
        DBEditLabel.OwnCaption = 'Nombre'
        DBEditLabel.ShowRequiredBold = True
      end
      object rDBEdit3: TrDBEdit
        Left = 297
        Top = 40
        Width = 91
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CIF'
        DataSource = dsinsertarcliente
        TabOrder = 2
        DBEditLabel.OwnCaption = 'C.I.F'
        DBEditLabel.ShowRequiredBold = True
      end
      object rDBEdit4: TrDBEdit
        Left = 10
        Top = 101
        Width = 77
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CodigoPostal'
        DataSource = dsinsertarcliente
        TabOrder = 3
        DBEditLabel.OwnCaption = 'C'#243'digo Postal'
        DBEditLabel.ShowRequiredBold = True
      end
      object rDBEdit5: TrDBEdit
        Left = 93
        Top = 101
        Width = 281
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Direccion'
        DataSource = dsinsertarcliente
        TabOrder = 4
        DBEditLabel.OwnCaption = 'Direcci'#243'n'
        DBEditLabel.ShowRequiredBold = True
      end
      object rDBEdit6: TrDBEdit
        Left = 380
        Top = 101
        Width = 109
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Ciudad'
        DataSource = dsinsertarcliente
        TabOrder = 5
        DBEditLabel.OwnCaption = 'Ciudad'
        DBEditLabel.ShowRequiredBold = True
      end
    end
    object GridPanel2: TGridPanel
      Left = 515
      Top = 1
      Width = 430
      Height = 181
      Align = alClient
      ColumnCollection = <
        item
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = GroupBox5
          Row = 0
        end
        item
          Column = 0
          Control = GroupBox2
          Row = 1
        end>
      RowCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      TabOrder = 0
      object GroupBox5: TGroupBox
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 422
        Height = 83
        Align = alClient
        Caption = 'Familia y Administrador'
        TabOrder = 0
        object rDBLookupComboBox1: TrDBLookupComboBox
          Left = 80
          Top = 53
          Width = 321
          Height = 21
          DataField = 'idAdministrador'
          DataSource = dsinsertarcliente
          DropDownRows = 15
          KeyField = 'idadministrador'
          ListField = 'nombreapellidos'
          ListSource = dsadministradores
          TabOrder = 0
          DBEditLabel.OwnCaption = 'Administrador'
          DBEditLabel.Position = lpLeftCenter
          BoundLabel.Position = lpTopRight
          EmptyDisplayValue = 'Vac'#237'o'
        end
        object rDBComboBox2: TrDBComboBox
          Left = 80
          Top = 26
          Width = 321
          Height = 21
          DataField = 'familia'
          DataSource = dsinsertarcliente
          DropDownCount = 15
          Items.Strings = (
            'COMUNIDAD DE PROPIETARIOS'
            'SOCIEDAD LIMITADA'
            'COMUNIDAD DE BIENES'
            'PROPIETARIO')
          TabOrder = 1
          BoundLabel.Caption = 'Familia'
          BoundLabel.Position = lpLeftCenter
        end
      end
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 4
        Top = 93
        Width = 422
        Height = 84
        Align = alClient
        Caption = 'Datos Bancarios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object rDBEdit7: TrDBEdit
          Left = 62
          Top = 25
          Width = 339
          Height = 21
          CharCase = ecUpperCase
          DataField = 'banco'
          DataSource = dsinsertarcliente
          TabOrder = 0
          DBEditLabel.OwnCaption = 'Banco'
          DBEditLabel.ShowRequiredBold = True
          DBEditLabel.ShowRequiredMark = False
          DBEditLabel.Position = lpLeftCenter
        end
        object rDBEdit8: TrDBEdit
          Left = 62
          Top = 54
          Width = 339
          Height = 21
          CharCase = ecUpperCase
          DataField = 'IBAN'
          DataSource = dsinsertarcliente
          TabOrder = 1
          DBEditLabel.OwnCaption = 'IBAN'
          DBEditLabel.ShowRequiredBold = True
          DBEditLabel.ShowRequiredMark = False
          DBEditLabel.Position = lpLeftCenter
        end
      end
    end
    object GridPanel3: TGridPanel
      Left = 1
      Top = 182
      Width = 944
      Height = 397
      Align = alClient
      ColumnCollection = <
        item
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = PageControl1
          Row = 0
        end
        item
          Column = 0
          Control = Panel1
          Row = 1
        end>
      RowCollection = <
        item
          Value = 78.952685637312680000
        end
        item
          Value = 21.047314362687320000
        end>
      TabOrder = 2
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 942
        Height = 311
        ActivePage = datosFacturacion
        Align = alClient
        TabOrder = 0
        OnChange = PageControl1Change
        OnChanging = PageControl1Changing
        object datosFacturacion: TTabSheet
          Caption = 'Datos Facturaci'#243'n'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object GroupBox1: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 928
            Height = 277
            Align = alClient
            Caption = 'Datos Facturaci'#243'n'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            DesignSize = (
              928
              277)
            object Button1: TButton
              Left = 816
              Top = 113
              Width = 105
              Height = 33
              Anchors = [akTop, akRight]
              Caption = 'Copiar Datos'
              TabOrder = 4
              OnClick = Button1Click
            end
            object rDBEdit9: TrDBEdit
              Left = 77
              Top = 30
              Width = 60
              Height = 21
              CharCase = ecUpperCase
              DataField = 'IdContactos'
              DataSource = dsinsertarcliente
              TabOrder = 0
              DBEditLabel.OwnCaption = 'C'#243'digo'
              DBEditLabel.ShowRequiredBold = True
              DBEditLabel.ShowRequiredMark = False
              DBEditLabel.Position = lpLeftCenter
            end
            object rDBEdit10: TrDBEdit
              Left = 77
              Top = 64
              Width = 240
              Height = 21
              CharCase = ecUpperCase
              DataField = 'nombrefactura'
              DataSource = dsinsertarcliente
              TabOrder = 2
              DBEditLabel.OwnCaption = 'Nombre'
              DBEditLabel.ShowRequiredBold = True
              DBEditLabel.ShowRequiredMark = False
              DBEditLabel.Position = lpLeftCenter
            end
            object rDBEdit11: TrDBEdit
              Left = 77
              Top = 100
              Width = 96
              Height = 21
              CharCase = ecUpperCase
              DataField = 'ciffactura'
              DataSource = dsinsertarcliente
              TabOrder = 3
              DBEditLabel.OwnCaption = 'C.I.F'
              DBEditLabel.ShowRequiredBold = True
              DBEditLabel.ShowRequiredMark = False
              DBEditLabel.Position = lpLeftCenter
            end
            object rDBEdit12: TrDBEdit
              Left = 77
              Top = 134
              Width = 126
              Height = 21
              CharCase = ecUpperCase
              DataField = 'ciudadfactura'
              DataSource = dsinsertarcliente
              TabOrder = 5
              DBEditLabel.OwnCaption = 'Ciudad'
              DBEditLabel.ShowRequiredBold = True
              DBEditLabel.ShowRequiredMark = False
              DBEditLabel.Position = lpLeftCenter
            end
            object rDBEdit13: TrDBEdit
              Left = 77
              Top = 167
              Width = 286
              Height = 21
              CharCase = ecUpperCase
              DataField = 'direccionfactura'
              DataSource = dsinsertarcliente
              TabOrder = 6
              DBEditLabel.OwnCaption = 'Direcci'#243'n'
              DBEditLabel.ShowRequiredBold = True
              DBEditLabel.ShowRequiredMark = False
              DBEditLabel.Position = lpLeftCenter
            end
            object rDBEdit14: TrDBEdit
              Left = 77
              Top = 203
              Width = 82
              Height = 21
              CharCase = ecUpperCase
              DataField = 'codigopostalfactura'
              DataSource = dsinsertarcliente
              TabOrder = 7
              DBEditLabel.OwnCaption = 'C'#243'digo Postal'
              DBEditLabel.ShowRequiredBold = True
              DBEditLabel.ShowRequiredMark = False
              DBEditLabel.Position = lpLeftCenter
            end
            object rDBComboBox1: TrDBComboBox
              Left = 590
              Top = 30
              Width = 307
              Height = 26
              CharCase = ecUpperCase
              DataField = 'familia'
              DataSource = dsinsertarcliente
              DropDownCount = 15
              Items.Strings = (
                '0'
                '1'
                '2'
                '3'
                '4')
              TabOrder = 1
              BoundLabel.Position = lpTopRight
              DisplayedItems.ListItems.Strings = (
                'COMUNIDAD DE PROPIETARIOS'
                'COMUNIDAD DE BIENES'
                'SOCIEDAD LIMITADA'
                'PROPIETARIO  RESIDENCIA'
                'PROPIETARIO 2'#186' RESIDENCIA')
              DisplayedItems.AddItemAsFirstColumn = True
              OnGetListItemProps = rDBComboBox1GetListItemProps
              ItemHeightEx = 20
            end
          end
        end
        object datoscontactos: TTabSheet
          Caption = 'Contactos'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object ctrlbr1: TControlBar
            Left = 0
            Top = 0
            Width = 934
            Height = 33
            Align = alTop
            TabOrder = 0
            object RzDBNavigator1: TRzDBNavigator
              Left = 47
              Top = 2
              Width = 310
              Height = 22
              DataSource = dscontactos
              BorderOuter = fsNone
              TabOrder = 0
            end
          end
          object rDBGrid1: TrDBGrid
            Left = 0
            Top = 33
            Width = 934
            Height = 250
            Align = alClient
            DataSource = dscontactos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            TitleLines = 2
            RowFixHeight = 23
            FooterRow.FooterVisible = True
            FooterRow.FieldFooterDefs.Strings = (
              'pta=%COUNTVALcontactos;')
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'pta'
                Title.Alignment = taCenter
                Title.Caption = 'Puerta'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nombre'
                Title.Caption = 'Nombre'
                Width = 245
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'telefono1'
                Title.Alignment = taCenter
                Title.Caption = 'Tel'#233'fono 1'
                Width = 103
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'telefono2'
                Title.Alignment = taCenter
                Title.Caption = 'Tel'#233'fono 2'
                Width = 103
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'telefono3'
                Title.Alignment = taCenter
                Title.Caption = 'Tel'#233'fono 3'
                Width = 103
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'mail'
                Title.Caption = 'Mail'
                Width = 263
                Visible = True
              end>
          end
        end
      end
      object Panel1: TPanel
        Left = 1
        Top = 312
        Width = 942
        Height = 84
        Align = alClient
        TabOrder = 1
        DesignSize = (
          942
          84)
        object btaceptar: TButton
          Left = 704
          Top = 16
          Width = 105
          Height = 33
          Anchors = [akTop, akRight]
          Caption = 'Guardar'
          TabOrder = 0
          OnClick = btaceptarClick
        end
        object btcancelar: TButton
          Left = 815
          Top = 16
          Width = 105
          Height = 33
          Anchors = [akTop, akRight]
          Cancel = True
          Caption = 'Cancelar'
          TabOrder = 1
          OnClick = btcancelarClick
        end
      end
    end
  end
  object fdinsertarClientes: TFDQuery
    OnNewRecord = fdcontactosNewRecord
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from clientes where idContactos=:id_cliente')
    Left = 440
    Top = 40
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdinsertarClientesIdContactos: TIntegerField
      FieldName = 'IdContactos'
      Origin = 'IdContactos'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdinsertarClientesNombre: TStringField
      FieldName = 'Nombre'
      Origin = 'Nombre'
      Required = True
      Size = 100
    end
    object fdinsertarClientesDireccion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Origin = 'Direccion'
      Size = 255
    end
    object fdinsertarClientesCiudad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = 'Ciudad'
      Size = 50
    end
    object fdinsertarClientesTelefonoCasa: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TelefonoCasa'
      Origin = 'TelefonoCasa'
    end
    object fdinsertarClientesTelefonoMovil: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TelefonoMovil'
      Origin = 'TelefonoMovil'
    end
    object fdinsertarClientesmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = 'mail'
      Size = 50
    end
    object fdinsertarClientesNumFax: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NumFax'
      Origin = 'NumFax'
    end
    object fdinsertarClientesCIF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIF'
      Origin = 'CIF'
      Size = 50
    end
    object fdinsertarClientesCodigoPostal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodigoPostal'
      Origin = 'CodigoPostal'
      Size = 50
    end
    object fdinsertarClientesidAdministrador: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idAdministrador'
      Origin = 'idAdministrador'
    end
    object fdinsertarClientesCP: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CP'
      Origin = 'CP'
    end
    object fdinsertarClientesIBAN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IBAN'
      Origin = 'IBAN'
      Size = 255
    end
    object fdinsertarClientesbanco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'banco'
      Origin = 'banco'
      Size = 100
    end
    object fdinsertarClientesnombrefactura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nombrefactura'
      Origin = 'nombrefactura'
      Size = 100
    end
    object fdinsertarClientesciffactura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ciffactura'
      Origin = 'ciffactura'
      Size = 50
    end
    object fdinsertarClientesciudadfactura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ciudadfactura'
      Origin = 'ciudadfactura'
      Size = 50
    end
    object fdinsertarClientesdireccionfactura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'direccionfactura'
      Origin = 'direccionfactura'
      Size = 255
    end
    object fdinsertarClientescodigopostalfactura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigopostalfactura'
      Origin = 'codigopostalfactura'
      Size = 50
    end
    object fdinsertarClientesfamilia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'familia'
      Origin = 'familia'
    end
  end
  object fdadministradores: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select idadministrador, nombreapellidos from administradores')
    Left = 840
    Top = 64
  end
  object fdcontactos: TFDQuery
    AfterOpen = fdcontactosAfterOpen
    AfterInsert = fdcontactosAfterInsert
    AfterPost = fdcontactosAfterPost
    AfterDelete = fdcontactosAfterDelete
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from contactosclientes where id_cliente=:id_cliente')
    Left = 582
    Top = 326
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsinsertarcliente: TDataSource
    DataSet = fdinsertarClientes
    Left = 236
    Top = 20
  end
  object dsadministradores: TDataSource
    DataSet = fdadministradores
    Left = 508
    Top = 60
  end
  object dscontactos: TDataSource
    DataSet = fdcontactos
    Left = 465
    Top = 324
  end
end

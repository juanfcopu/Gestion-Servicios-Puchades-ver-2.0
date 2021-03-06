object FFacturas: TFFacturas
  Left = 1646
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Facturas'
  ClientHeight = 782
  ClientWidth = 1129
  Color = clBtnFace
  Constraints.MaxWidth = 1175
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1129
    Height = 782
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 55
      Width = 1121
      Height = 93
      Align = alTop
      Anchors = [akTop, akRight]
      Caption = 'Datos del Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 12
        Top = 18
        Width = 1104
        Height = 63
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
        object BTBuscarCliente: TButton
          Left = 701
          Top = 16
          Width = 32
          Height = 32
          HotImageIndex = 0
          ImageAlignment = iaCenter
          ImageIndex = 0
          Images = DataModule1.icopeque
          PressedImageIndex = 0
          Style = bsCommandLink
          TabOrder = 0
          StyleElements = []
          OnClick = BTBuscarClienteClick
        end
        object rDBEdit1: TrDBEdit
          Left = 72
          Top = 24
          Width = 41
          Height = 21
          CharCase = ecUpperCase
          DataField = 'idcontactos'
          DataSource = dsCliente
          TabOrder = 1
          DBEditLabel.OwnCaption = 'C'#243'digo'
          DBEditLabel.Position = lpLeftCenter
        end
        object rDBEdit2: TrDBEdit
          Left = 157
          Top = 24
          Width = 142
          Height = 21
          CharCase = ecUpperCase
          DataField = 'cif'
          DataSource = dsCliente
          TabOrder = 2
          DBEditLabel.OwnCaption = 'C.I.F'
          DBEditLabel.Position = lpLeftCenter
        end
        object rDBEdit3: TrDBEdit
          Left = 358
          Top = 24
          Width = 337
          Height = 21
          CharCase = ecUpperCase
          DataField = 'nombre'
          DataSource = dsCliente
          TabOrder = 3
          DBEditLabel.OwnCaption = 'Nombre'
          DBEditLabel.Position = lpLeftCenter
        end
        object Button1: TButton
          Left = 864
          Top = 40
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 4
          OnClick = Button1Click
        end
      end
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 154
      Width = 1121
      Height = 87
      Align = alTop
      Caption = 'Datos Facturas'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object rDBEdit4: TrDBEdit
        Left = 75
        Top = 16
        Width = 60
        Height = 21
        CharCase = ecUpperCase
        DataField = 'idFactura'
        DataSource = dsFacturas
        TabOrder = 0
        DBEditLabel.OwnCaption = 'N'#250'mero'
        DBEditLabel.Position = lpLeftCenter
      end
      object rDBEdit5: TrDBEdit
        Left = 203
        Top = 16
        Width = 60
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ano'
        DataSource = dsFacturas
        TabOrder = 1
        DBEditLabel.OwnCaption = 'A'#241'o'
        DBEditLabel.Position = lpLeftCenter
      end
      object rDBEdit7: TrDBEdit
        Left = 511
        Top = 57
        Width = 57
        Height = 21
        DataField = 'Iva'
        DataSource = dsFacturas
        ReadOnly = True
        TabOrder = 6
        DBEditLabel.OwnCaption = 'I.V.A'
        DBEditLabel.Position = lpLeftCenter
      end
      object rDBDateTimePicker1: TrDBDateTimePicker
        Left = 111
        Top = 57
        Width = 113
        Height = 21
        Date = 43734.909575613430000000
        Time = 43734.909575613430000000
        TabOrder = 4
        DataField = 'FechaFactura'
        DataSource = dsFacturas
        DBEditLabel.OwnCaption = 'Fecha Factura'
        DBEditLabel.Position = lpLeftCenter
        FormatEmpty = '__.__.__'
      end
      object rDBEdit8: TrDBEdit
        Left = 908
        Top = 57
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Total'
        DataSource = dsFacturas
        ReadOnly = True
        TabOrder = 8
        DBEditLabel.OwnCaption = 'Total Factura'
        DBEditLabel.Position = lpLeftCenter
      end
      object rDBEdit9: TrDBEdit
        Left = 320
        Top = 57
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TotalBruto'
        DataSource = dsFacturas
        ReadOnly = True
        TabOrder = 5
        DBEditLabel.OwnCaption = 'SubTotal'
        DBEditLabel.Position = lpLeftCenter
      end
      object rDBEdit10: TrDBEdit
        Left = 660
        Top = 57
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        DataField = 'importeIVA'
        DataSource = dsFacturas
        ReadOnly = True
        TabOrder = 7
        DBEditLabel.OwnCaption = 'Total I.V.A'
        DBEditLabel.Position = lpLeftCenter
      end
      object rDBEdit11: TrDBEdit
        Left = 908
        Top = 17
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        DataField = 'id_asiento'
        DataSource = dsFacturas
        ReadOnly = True
        TabOrder = 2
        DBEditLabel.OwnCaption = 'N'#186' Asiento'
        DBEditLabel.Position = lpLeftCenter
      end
      object rDBMemo1: TrDBMemo
        Left = 386
        Top = 16
        Width = 403
        Height = 21
        DataField = 'Concepto'
        DataSource = dsFacturas
        PopupMenu = rDBMemo1.pmSearch
        ScrollBars = ssVertical
        TabOrder = 9
        DBEditLabel.Position = lpLeftCenter
      end
      object rDBEdit6: TrDBEdit
        Left = 1058
        Top = 38
        Width = 60
        Height = 21
        CharCase = ecUpperCase
        DataField = 'obra'
        DataSource = dsFacturas
        ReadOnly = True
        TabOrder = 10
        Visible = False
        DBEditLabel.OwnCaption = 'Obra'
        DBEditLabel.Visible = False
      end
    end
    object ToolBar1: TToolBar
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1121
      Height = 45
      ButtonHeight = 42
      ButtonWidth = 41
      Caption = 'ToolBar1'
      Images = DataModule1.ImageList1
      List = True
      TabOrder = 0
      object ToolButton1: TToolButton
        AlignWithMargins = True
        Left = 0
        Top = 0
        Hint = 'Guardar factura'
        Action = guardarfactura
        ImageIndex = 7
        ParentShowHint = False
        ShowHint = True
      end
      object ToolButton4: TToolButton
        Left = 41
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        AlignWithMargins = True
        Left = 49
        Top = 0
        Hint = 'Abrir presupuesto'
        Caption = 'Abrir Presupuesto'
        ImageIndex = 57
        ParentShowHint = False
        ShowHint = True
        OnClick = ToolButton6Click
      end
      object ToolButton2: TToolButton
        AlignWithMargins = True
        Left = 90
        Top = 0
        Hint = 'Guardar en PDF'
        Caption = 'PDF'
        ImageIndex = 11
        ParentShowHint = False
        ShowHint = True
        OnClick = ToolButton2Click
      end
      object ToolButton3: TToolButton
        AlignWithMargins = True
        Left = 131
        Top = 0
        Hint = 'Enviar mail'
        Caption = 'Mail'
        Enabled = False
        ImageIndex = 12
        ParentShowHint = False
        ShowHint = True
      end
      object ToolButton5: TToolButton
        AlignWithMargins = True
        Left = 172
        Top = 0
        Hint = 'Nueva obra'
        Caption = 'Abrir Obra'
        ImageIndex = 22
        ParentShowHint = False
        ShowHint = True
      end
      object ToolButton7: TToolButton
        Left = 213
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        AlignWithMargins = True
        Left = 221
        Top = 0
        Hint = 'Carpeta de presupuestos'
        Caption = 'Abrir carpeta'
        Enabled = False
        ImageIndex = 14
        ParentShowHint = False
        ShowHint = True
      end
      object ToolButton10: TToolButton
        Left = 262
        Top = 0
        Hint = 'Carpetas documentaci'#243'n y fotograf'#237'as'
        Caption = 'Carpetas documentaci'#243'n'
        Enabled = False
        ImageIndex = 8
      end
      object ToolButton9: TToolButton
        AlignWithMargins = True
        Left = 303
        Top = 0
        Hint = 'Cerrar'
        Caption = 'Cerrar Presupuesto'
        ImageIndex = 15
        ParentShowHint = False
        ShowHint = True
        OnClick = cerrarpresExecute
      end
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 541
      Width = 792
      Height = 240
      Margins.Bottom = 30
      Align = alLeft
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Observaciones'
      TabOrder = 4
      object rDBMemoEx1: TrDBMemoEx
        Left = 2
        Top = 15
        Width = 788
        Height = 223
        Align = alClient
        DataField = 'observaciones'
        DataSource = dsFacturas
        PopupMenu = rDBMemoEx1.pmSearch
        ScrollBars = ssVertical
        TabOrder = 0
        DBEditLabel.OwnCaption = ' '
        ButtonFrm.Width = 18
        ButtonFrm.Height = 15
        ButtonFrm.Visible = False
        ButtonEdit.Width = 18
        ButtonEdit.Height = 15
        BoundLabel.AlignWithMargins = True
        BoundLabel.Margins.Left = 0
        BoundLabel.Margins.Top = 0
        BoundLabel.Margins.Right = 40
        BoundLabel.Margins.Bottom = 0
        BoundLabel.Position = lpTopRight
      end
    end
    object GroupBox5: TGroupBox
      AlignWithMargins = True
      Left = 818
      Top = 548
      Width = 307
      Height = 230
      Margins.Top = 7
      Align = alRight
      Anchors = [akRight, akBottom]
      TabOrder = 5
      DesignSize = (
        307
        230)
      object Shape1: TShape
        Left = 17
        Top = -2
        Width = 22
        Height = 44
        Anchors = [akTop, akRight]
        Shape = stCircle
      end
      object Guardar: TButton
        Left = 143
        Top = 11
        Width = 80
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Guardar'
        Enabled = False
        Images = DataModule1.ImageList1
        TabOrder = 1
        OnClick = GuardarClick
      end
      object Aceptar: TButton
        Left = 61
        Top = 11
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Aceptar'
        TabOrder = 0
        OnClick = AceptarClick
      end
      object cerrar: TButton
        Left = 229
        Top = 11
        Width = 75
        Height = 26
        Anchors = [akTop, akRight]
        Caption = 'Cerrar'
        TabOrder = 2
        OnClick = cerrarClick
      end
    end
    object grp1: TGroupBox
      Left = 1
      Top = 244
      Width = 1127
      Height = 297
      Align = alTop
      Caption = 'L'#237'neas'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object ctrlbr1: TControlBar
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 1117
        Height = 32
        Align = alTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object tlb1: TToolBar
          Left = 224
          Top = 2
          Width = 0
          Height = 66
          AutoSize = True
          Caption = 'Editar'
          Images = ImageList1
          List = True
          TabOrder = 1
          object btn1: TToolButton
            Left = 0
            Top = 0
            Action = EditCut
            Wrap = True
          end
          object btn2: TToolButton
            Left = 0
            Top = 22
            Action = EditCopy
            Wrap = True
          end
          object btn3: TToolButton
            Left = 0
            Top = 44
            Action = EditPaste
          end
        end
        object rzdbnvgtr1: TRzDBNavigator
          Left = 11
          Top = 2
          Width = 200
          Height = 22
          DataSource = dslineas
          BorderOuter = fsNone
          TabOrder = 0
        end
        object ToolBar2: TToolBar
          Left = 251
          Top = 2
          Width = 70
          Height = 22
          Caption = 'ToolBar2'
          Images = ImageList1
          TabOrder = 2
          object ToolButton11: TToolButton
            Left = 0
            Top = 0
            Action = EditCut
          end
          object ToolButton12: TToolButton
            Left = 23
            Top = 0
            Action = EditCopy
          end
          object ToolButton13: TToolButton
            Left = 46
            Top = 0
            Action = EditPaste
          end
        end
        object tlb2: TToolBar
          Left = 375
          Top = 2
          Width = 150
          Height = 48
          ButtonHeight = 30
          ButtonWidth = 31
          Caption = 'tlb2'
          Images = DataModule1.icopeque
          TabOrder = 3
          object btn4: TToolButton
            Left = 0
            Top = 0
            Action = abrirObra
          end
        end
      end
      object rDBGridClientes1: TrDBGrid_MS
        AlignWithMargins = True
        Left = 5
        Top = 56
        Width = 1117
        Height = 154
        Align = alClient
        DataSource = dslineas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        ColumnWidth = cwAutoWidth
        TitleLines = 2
        RowFixHeight = 23
        FooterRow.FooterVisible = True
        FooterRow.FieldFooterDefs.Strings = (
          'total=%SUM ;')
        Columns = <
          item
            Expanded = False
            FieldName = 'nlinea'
            Title.Alignment = taCenter
            Title.Caption = 'L'#237'nea'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descripcion'
            Title.Caption = 'Descripci'#243'n'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 515
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cantidad'
            Title.Alignment = taCenter
            Title.Caption = 'Cantidad'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'importe'
            Title.Alignment = taCenter
            Title.Caption = 'Importe'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descuento'
            Title.Alignment = taCenter
            Title.Caption = 'Descuento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lineasobras_obras_ID_obra'
            Title.Alignment = taCenter
            Title.Caption = 'Obra'
            Width = 75
            Visible = True
          end>
      end
      object rdbtotales1: TrDBGrid
        AlignWithMargins = True
        Left = 5
        Top = 216
        Width = 1117
        Height = 76
        Align = alBottom
        DataSource = dsFacturas
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OptionsEx2.FixedCell.TitleExBtn = False
        OptionsEx2.FixedCell.TitleBtn = False
        OptionsEx2.Editors.BoolGlyphs = False
        OptionsEx2.Editors.Memo = obtNone
        OptionsEx2.Editors.Graphic = obtNone
        OptionsEx2.Editors.DateTimePicker = False
        OptionsEx2.Editors.NotProcDblClick = True
        OptionsEx2.Appearance.DragToScrollData = True
        ColorActiveRow = clWindow
        ColumnWidth = cwAutoWidth
        TitleLines = 2
        RowFixHeight = 25
        RowVerticalAlign = taVerticalCenter
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TotalBruto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 154
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'retencion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Retenci'#243'n'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 154
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'importeRetencion'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Total Retenci'#243'n'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 154
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'baseimponible'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Base Imponible'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 154
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Iva'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'I.V.A'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 154
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'importeIVA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Total I.V.A'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 154
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Total Factura'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 154
            Visible = True
          end>
      end
    end
  end
  object fdCliente: TFDQuery
    Connection = DataModule1.FDConnection1
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'select idcontactos, nombre, cif, familia from clientes where idc' +
        'ontactos=:id_cliente')
    Left = 368
    Top = 40
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdClienteidcontactos: TFDAutoIncField
      FieldName = 'idcontactos'
      Origin = 'IdContactos'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdClientenombre: TStringField
      FieldName = 'nombre'
      Origin = 'Nombre'
      Required = True
      Size = 100
    end
    object fdClientecif: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cif'
      Origin = 'CIF'
      Size = 50
    end
    object fdClientefamilia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'familia'
      Origin = 'familia'
    end
  end
  object fdfacturas: TFDQuery
    AfterInsert = fdfacturasAfterInsert
    AfterEdit = fdfacturasAfterEdit
    AfterDelete = fdfacturasAfterDelete
    CachedUpdates = True
    Connection = DataModule1.FDConnection1
    SchemaAdapter = FDSchemaAdapter1
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      'select * from facturas where idfactura=:id_factura and ano=:ano')
    Left = 20
    Top = 220
    ParamData = <
      item
        Name = 'ID_FACTURA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ANO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdfacturasidFactura: TIntegerField
      FieldName = 'idFactura'
      Origin = 'idFactura'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdfacturasidCliente: TIntegerField
      FieldName = 'idCliente'
      Origin = 'idCliente'
      Required = True
    end
    object fdfacturasFechaFactura: TDateTimeField
      FieldName = 'FechaFactura'
      Origin = 'FechaFactura'
      Required = True
    end
    object fdfacturasConcepto: TMemoField
      FieldName = 'Concepto'
      Origin = 'Concepto'
      Required = True
      BlobType = ftMemo
    end
    object fdfacturasTotalBruto: TFloatField
      FieldName = 'TotalBruto'
      Origin = 'TotalBruto'
      Required = True
      OnChange = fdfacturasTotalBrutoChange
      DisplayFormat = '#.00 '#8364
    end
    object fdfacturasIva: TSmallintField
      FieldName = 'Iva'
      Origin = 'Iva'
      Required = True
      DisplayFormat = '0 %'
    end
    object fdfacturasTotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total'
      Origin = 'Total'
      DisplayFormat = '#.00 '#8364
    end
    object fdfacturasEmisorFactura: TIntegerField
      FieldName = 'EmisorFactura'
      Origin = 'EmisorFactura'
      Required = True
    end
    object fdfacturaspagada: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'pagada'
      Origin = 'pagada'
    end
    object fdfacturasano: TIntegerField
      FieldName = 'ano'
      Origin = 'ano'
      Required = True
    end
    object mfldfdfacturasobservaciones: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'observaciones'
      Origin = 'observaciones'
      BlobType = ftMemo
    end
    object fdfacturascantidad: TIntegerField
      FieldName = 'cantidad'
      Origin = 'cantidad'
      Required = True
    end
    object fltfldIVA: TFloatField
      FieldName = 'importeIVA'
      Origin = 'importeIVA'
      Required = True
      DisplayFormat = '#.00 '#8364
    end
    object fdfacturasretencion: TIntegerField
      FieldName = 'retencion'
      OnChange = fdfacturasTotalBrutoChange
      DisplayFormat = '0 %'
    end
    object fltfldfdfacturasimporteRetencion: TFloatField
      FieldName = 'importeRetencion'
    end
    object fltfldfacturasbaseimponible: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'baseimponible'
      Origin = 'baseimponible'
    end
    object fdfacturasid_asiento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_asiento'
      Origin = 'id_asiento'
    end
    object fdfacturasacuenta: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'acuenta'
      Origin = 'acuenta'
    end
    object fdfacturastipo: TIntegerField
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
    end
    object fdfacturasobra: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'obra'
      Origin = 'obra'
    end
    object fdfacturascertificacion: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'certificacion'
      Origin = 'certificacion'
    end
    object fdfacturaslineacertificacion: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'lineacertificacion'
      Origin = 'lineacertificacion'
    end
  end
  object fdlineas: TFDQuery
    AfterOpen = fdlineasAfterOpen
    BeforeInsert = fdlineasBeforeInsert
    AfterInsert = fdlineasAfterInsert
    AfterEdit = fdlineasAfterEdit
    AfterPost = fdlineasAfterPost
    AfterDelete = fdlineasAfterDelete
    CachedUpdates = True
    IndexFieldNames = 'facturas_idfactura;facturas_ano'
    Aggregates = <
      item
        Name = 'SUMATOTAL'
        Expression = 'SUM(TOTAL)'
        Active = True
      end>
    AggregatesActive = True
    MasterSource = dsFacturas
    MasterFields = 'idFactura;ano'
    DetailFields = 'facturas_ano;facturas_idfactura'
    Connection = DataModule1.FDConnection1
    SchemaAdapter = FDSchemaAdapter1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      
        'select * from lineasfacturas where facturas_idfactura=:id_factur' +
        'a and facturas_ano=:ano')
    Left = 888
    Top = 419
    ParamData = <
      item
        Name = 'ID_FACTURA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ANO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdlineasid_lineafactura: TFDAutoIncField
      FieldName = 'id_lineafactura'
      Origin = 'id_lineafactura'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdlineasdescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descripcion'
      Origin = 'descripcion'
      Size = 255
    end
    object fdlineastotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'total'
      Origin = 'total'
      DisplayFormat = '#.00 '#8364
    end
    object fdlineasfacturas_ano: TIntegerField
      FieldName = 'facturas_ano'
      Origin = 'facturas_ano'
      Required = True
    end
    object fdlineasfacturas_idfactura: TIntegerField
      FieldName = 'facturas_idfactura'
      Origin = 'facturas_idfactura'
      Required = True
    end
    object fdlineascantidad: TFloatField
      FieldName = 'cantidad'
      Required = True
      OnChange = fdlineascantidadChange
    end
    object fdlineasimporte: TFloatField
      FieldName = 'importe'
      Required = True
      OnChange = fdlineasimporteChange
      DisplayFormat = '#.00 '#8364
    end
    object fdlineasiva: TFloatField
      FieldName = 'iva'
      Required = True
    end
    object fdlineasdescuento: TIntegerField
      FieldName = 'descuento'
      Origin = 'descuento'
      Required = True
      OnChange = fdlineasdescuentoChange
      DisplayFormat = '0 %'
    end
    object fdlineasnlinea: TIntegerField
      FieldName = 'nlinea'
      Origin = 'nlinea'
      Required = True
    end
    object fdlineaslineasobras_id_lineaobra: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'lineasobras_id_lineaobra'
      Origin = 'lineasobras_id_lineaobra'
    end
    object fdlineaslineasobras_obras_ID_obra: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'lineasobras_obras_ID_obra'
      Origin = 'lineasobras_obras_ID_obra'
    end
  end
  object dialruta: TOpenDialog
    Left = 628
    Top = 148
  end
  object ImageList1: TImageList
    Left = 696
    Top = 377
    Bitmap = {
      494C010104000800FC0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7CE72FFF1D265FFF2D2
      67FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000008000000080000000800000008000
      000080000000800000008000000080000000000000000000000000000000F1DE
      95FFEFDA8FFFF0D884FFF1D67CFFF0D371FFF1D26BFFF0D16AFFFEEAA3FFEAD4
      82FFF4D064FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000000000000000000000000
      0000800000000000000000000000800000000000000000000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000000000000000000000000000F3DC
      91FF968144FF8A7A45FF129328FF18902BFF9C8D55FFA6975FFFB1A369FFB8A8
      7DFFF2D475FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000000000000000000000000
      0000800000000000000000000000800000000000000080000000000000000000
      0000800000000000000000000000000000000000000086868600008080008686
      8600008080008686860080000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF0080000000000000000000000000000000CBB3
      5FFF998649FF00000000219E38FF209D37FF0000000000000000000000000000
      0000F0D779FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000080000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00800000000000000000000000000000000000
      0000800000000000000000000000800000000000000080000000000000000000
      0000800000000000000000000000000000000000000000808000868686000080
      8000868686000080800080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000000000000000000000000000CFB1
      64FF22201D24000000002FAD4AFF2CAA47FF34C251FF00000000000000000000
      0000F4D983FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000000000000000000000000
      0000000000008000000080000000800000000000000080000000000000000000
      0000800000000000000000000000000000000000000086868600008080008686
      8600008080008686860080000000FFFFFF00000000000000000000000000FFFF
      FF0080000000800000008000000080000000000000000000000000000000D1B3
      6CFF0000000026A53FFF3AB956FF36B552FF3FC45DFF00000000000000000000
      0000F1DC8BFF0000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00800000000000000000000000000000000000
      0000000000000000000000000000800000000000000080000000800000008000
      0000000000000000000000000000000000000000000000808000868686000080
      8000868686000080800080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080000000FFFFFF0080000000000000000000000000000000E0D59BFFD1B1
      6AFF000000002FB14CFF3EBF5EFF3BBC5BFF25A93FFF00000000000000000000
      0000F3DE93FF0000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000000000000000000000000
      0000000000000000000000000000800000000000000080000000000000000000
      0000000000000000000000000000000000000000000086868600008080008686
      8600008080008686860080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00800000008000000000000000000000000000000000000000F1E097FFBAA2
      60FF25A73CFF39BA57FF0E7621FF3CC262FF30B24DFF2EAF46FF000000000000
      0000F4E19DFF0000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF000000000000000000FFFF
      FF00800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000868686000080
      8000868686000080800080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000F6E6A1FFA08A
      50FF2DB24BFF40C15EFF248D3CFF0000000038BC57FF20A33CFF000000000000
      0000F3E4A5FF0000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080000000FFFFFF0080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600008080008686
      8600008080008686860000808000868686000080800086868600008080008686
      8600008080000000000000000000000000000000000000000000FCE5A1FFC1A7
      65FF3CC05BFF32B449FF00000000000000003DCB62FF2CB44AFF000000000000
      0000F3E8AFFF0000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000868686000000
      0000000000000000000000000000000000000000000000000000000000008686
      8600868686000000000000000000000000000000000000000000F7DD90FFCDAF
      68FF000000000000000000000000000000000000000037BE57FF2BA945FF0000
      0000F7E9B8FF0000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000086868600868686000000
      0000000000000000000000000000000000000000000000000000000000008686
      8600008080000000000000000000000000000000000000000000EDD278FFBBA4
      60FF0000000000000000000000000000000000000000000000002DB74BFF0000
      0000FAEABFFF0000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000868686000080
      80000000000000FFFF00000000000000000000FFFF0000000000868686000080
      8000868686000000000000000000000000000000000000000000EED16EFFA291
      59FF00000000000000000000000000000000000000000000000030C154FF23B1
      40FFF9EEC8FF0000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFBD2FFF4D5
      72FFEAD083FFF5D985FFF4DC90FFF7E19AFFF7E5A6FFF8E8B3FFFAECBCFF39BA
      51FF12862DFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F3D9
      75FFF5DA84FFF1DD8FFFEFDF9CFFF1E4B0FFFAF0C8FFFFF6D4FFFBF1D3FFF3E7
      C5FF2BB74CFF17772AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFF0000FFFFF9FFFC000000
      FE00F6CF80000000FE00F6B700000000FE00F6B7000000008000F8B700000000
      8000FE8F000100008000FE3F000300008000FF7F000300008001FE3F00030000
      8003FEBF000300008007FC9F0FC30000807FFDDF0003000080FFFDDF80070000
      81FFFDDFF87F0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object ActionManager2: TActionManager
    Images = ImageList1
    Left = 936
    Top = 17
    StyleName = 'Platform Default'
    object EditCopy: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 0
      ShortCut = 16451
    end
    object EditCut: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16472
    end
    object EditPaste: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 2
      ShortCut = 16470
    end
    object AprobarTodos: TAction
      Caption = 'AprobarTodos'
      Hint = 'Aprobar todos los presupuestos'
      ImageIndex = 3
    end
    object guardarfactura: TAction
      Caption = 'guardarfactura'
      OnExecute = guardarfacturaExecute
      OnUpdate = guardarfacturaUpdate
    end
    object abrirObra: TAction
      Caption = 'abrirObra'
      ImageIndex = 5
      OnExecute = abrirObraExecute
      OnUpdate = abrirObraUpdate
    end
  end
  object dsFacturas: TDataSource
    DataSet = fdfacturas
    Left = 76
    Top = 247
  end
  object dsCliente: TDataSource
    DataSet = fdCliente
    Left = 428
    Top = 47
  end
  object FDSchemaAdapter1: TFDSchemaAdapter
    BeforeApplyUpdate = FDSchemaAdapter1BeforeApplyUpdate
    AfterApplyUpdate = FDSchemaAdapter1AfterApplyUpdate
    Left = 440
    Top = 519
  end
  object dslineas: TDataSource
    DataSet = fdlineas
    Left = 740
    Top = 438
  end
end

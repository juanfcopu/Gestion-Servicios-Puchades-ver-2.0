object listfacturascompras: Tlistfacturascompras
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Facturas de compras'
  ClientHeight = 617
  ClientWidth = 1307
  Color = clBtnFace
  DragKind = dkDock
  DragMode = dmAutomatic
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
  object Panel1: TPanel
    Left = 0
    Top = 43
    Width = 1307
    Height = 286
    Align = alTop
    TabOrder = 1
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 341
      Height = 278
      Align = alLeft
      Caption = 'Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      ExplicitHeight = 254
      object beBuscar: TButtonedEdit
        Left = 71
        Top = 28
        Width = 258
        Height = 21
        Align = alCustom
        CharCase = ecUpperCase
        TabOrder = 1
        OnChange = beBuscarChange
      end
      object rbcliente: TRadioButton
        Left = 16
        Top = 24
        Width = 49
        Height = 25
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object rbnumero: TRadioButton
        Left = 16
        Top = 55
        Width = 97
        Height = 25
        Caption = 'N'#186' Factura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object GroupBox4: TGroupBox
      AlignWithMargins = True
      Left = 575
      Top = 4
      Width = 258
      Height = 278
      Align = alLeft
      Caption = 'Filtrar Fecha Facturas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      ExplicitHeight = 254
      object Label2: TLabel
        Left = 16
        Top = 16
        Width = 30
        Height = 13
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 144
        Top = 16
        Width = 28
        Height = 13
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DateTimePicker1: TDateTimePicker
        Left = 16
        Top = 31
        Width = 105
        Height = 21
        Date = 43102.878434259260000000
        Time = 43102.878434259260000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DateTimePicker2: TDateTimePicker
        Left = 144
        Top = 31
        Width = 105
        Height = 21
        Date = 43102.878434259260000000
        Time = 43102.878434259260000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Button1: TButton
        Left = 144
        Top = 58
        Width = 105
        Height = 27
        Caption = 'Buscar'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 351
      Top = 4
      Width = 218
      Height = 278
      Align = alLeft
      Caption = 'Ver'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      ExplicitHeight = 254
      object rb1Trimestres: TRadioButton
        Left = 137
        Top = 8
        Width = 113
        Height = 17
        Caption = 'Trimestre 1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = rb1TrimestresClick
      end
      object rb2trimestre: TRadioButton
        Left = 137
        Top = 26
        Width = 113
        Height = 17
        Caption = 'Trimestre 2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = rb2trimestreClick
      end
      object rbTodas: TRadioButton
        Left = 18
        Top = 55
        Width = 113
        Height = 17
        Caption = 'Todas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = rbTodasClick
      end
      object rb3trimestre: TRadioButton
        Left = 137
        Top = 44
        Width = 113
        Height = 17
        Caption = 'Trimestre 3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = rb3trimestreClick
      end
      object rb4trimestre: TRadioButton
        Left = 137
        Top = 63
        Width = 113
        Height = 17
        Caption = 'Trimestre 4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = rb4trimestreClick
      end
      object RzComboBox1: TRzComboBox
        Left = 3
        Top = 20
        Width = 118
        Height = 21
        TabOrder = 1
        OnChange = RzComboBox1Change
      end
    end
    object rGroupBox1: TrGroupBox
      Left = 836
      Top = 1
      Width = 253
      Height = 284
      Align = alLeft
      Caption = 'Nueva'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      MinMaxBtnType = mmbRound
      MinimizeAnimate = True
      OnMinimizeChange = rGroupBox1MinimizeChange
      ExplicitHeight = 260
      object rDBRecView1: TrDBRecView
        Left = 2
        Top = 17
        Width = 249
        Height = 265
        DataSource = ds1
        DBGrid = rDBGridClientes1
        FieldsAsLink.Strings = (
          'nombre=user_defined')
        OptionsEx = [goNumberRight, goUseGridPickList]
        Fields.Strings = (
          'nombre=Proveedor'
          'ticket=Ticket'
          'Nfactura=Factura'
          'fecha=Fecha'
          'importe=Importe'
          'tasaIVA=Tasa I.V.A'
          'IVA=I.V.A'
          'total=Total'
          'formapago=Forma Pago'
          'vencimiento=Vencimiento')
        SpecFields.Strings = (
          'Nfactura=0'
          'nombre=0')
        SpecFont.Charset = DEFAULT_CHARSET
        SpecFont.Color = clWindowText
        SpecFont.Height = -11
        SpecFont.Name = 'Tahoma'
        SpecFont.Style = []
        Align = alClient
        DefaultColWidth = 90
        DefaultRowHeight = 25
        DefaultDrawing = False
        FixedColor = clAppWorkSpace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSizing, goTabs, goAlwaysShowEditor]
        ParentFont = False
        ScrollBars = ssNone
        TabOrder = 0
        OnClick = rDBRecView1Click
        OnKeyPress = rDBRecView1KeyPress
        ExplicitHeight = 241
      end
    end
  end
  object stat1: TStatusBar
    Left = 0
    Top = 592
    Width = 1307
    Height = 25
    Panels = <>
    SimplePanel = True
  end
  object tlb1: TToolBar
    Left = 0
    Top = 0
    Width = 1307
    Height = 43
    ButtonHeight = 42
    ButtonWidth = 42
    Caption = 'tlb1'
    Images = DataModule1.ImageList1
    TabOrder = 0
    object btn1: TToolButton
      Left = 0
      Top = 0
      Caption = 'btn1'
      ImageIndex = 15
      OnClick = btn1Click
    end
    object btn3: TToolButton
      Left = 42
      Top = 0
      Caption = 'btn3'
      ImageIndex = 40
      OnClick = btn3Click
    end
    object btn4: TToolButton
      Left = 84
      Top = 0
      Caption = 'btn4'
      ImageIndex = 41
    end
    object btn5: TToolButton
      Left = 126
      Top = 0
      Caption = 'btn5'
      ImageIndex = 42
      OnClick = btn5Click
    end
    object btn6: TToolButton
      Left = 168
      Top = 0
      Width = 8
      Caption = 'btn6'
      ImageIndex = 43
      Style = tbsSeparator
    end
    object btn7: TToolButton
      Left = 176
      Top = 0
      Caption = 'btn7'
      ImageIndex = 43
      OnClick = btn7Click
    end
  end
  object rDBGridClientes1: TrDBGrid_MS
    Left = 0
    Top = 329
    Width = 1307
    Height = 263
    Align = alClient
    DataSource = ds1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OptionsEx = [dgTitleExBtn, dgTitleBtn, dgFixColBtn, dgBool, dgMemo, dgMemoShowText, dgGraphic, dgDateTimePicker, dgDragCell, dgUseTitlePopup, dgAutoPickListWidth]
    OptionsEx2.ActivateOptionsEx2 = True
    OptionsEx2.Editors.Memo = obtContent
    OptionsEx2.Appearance.DragCell = True
    SortDesc = True
    Sorter = DataModule1.rDBGridSorter_FireDac1
    ColumnWidth = cwAutoWidth
    TitleLines = 2
    RowLines = 2
    RowVerticalAlign = taVerticalCenter
    FixedColText.FixedColWidth = 50
    FixedColText.ShowCheckbox = True
    FooterRow.FooterVisible = True
    FooterRow.ParentFont = False
    FooterRow.Font.Charset = DEFAULT_CHARSET
    FooterRow.Font.Color = clHighlight
    FooterRow.Font.Height = -15
    FooterRow.Font.Name = 'Tahoma'
    FooterRow.Font.Style = [fsBold]
    FooterRow.Color = clWhite
    FooterRow.FieldFooterDefs.Strings = (
      'importe=%SUM '#8364';'
      'IVA=%SUM '#8364';'
      'total=%SUM '#8364';')
    FieldsAsLink.Strings = (
      'nombre=user_defined')
    FieldsAutoPickList.Strings = (
      'formapago'
      'tasaIVA')
    LookupListItemIncreaseWidth = 20
    OnLoadPickList = rDBGridClientes1LoadPickList
    Columns = <
      item
        Expanded = False
        FieldName = 'nombre'
        Title.Caption = 'Proveedor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 301
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ticket'
        Title.Alignment = taCenter
        Title.Caption = 'Ticket'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 103
        Visible = True
      end
      item
        Alignment = taCenter
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'Nfactura'
        Title.Alignment = taCenter
        Title.Caption = 'Factura'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 104
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'fecha'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 119
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'importe'
        Title.Alignment = taCenter
        Title.Caption = 'Importe'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 115
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tasaIVA'
        Title.Alignment = taCenter
        Title.Caption = 'Tasa I.V.A'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 117
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IVA'
        Title.Alignment = taCenter
        Title.Caption = 'I.V.A'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 85
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'total'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 125
        Visible = True
      end
      item
        Alignment = taCenter
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'formapago'
        Title.Alignment = taCenter
        Title.Caption = 'Forma Pago'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 118
        Visible = True
      end
      item
        Alignment = taCenter
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'vencimiento'
        Title.Caption = 'Vencimiento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object ds1: TDataSource
    DataSet = DataModule1.fdqfacturascompras
    Left = 1104
    Top = 336
  end
  object fdqproveedores: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT nombre, id_proveedor from proveedores order by nombre')
    Left = 1000
    Top = 384
  end
end

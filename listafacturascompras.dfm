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
    Height = 318
    Align = alTop
    TabOrder = 1
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 317
      Height = 310
      Align = alLeft
      Caption = 'Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object beBuscar: TButtonedEdit
        Left = 80
        Top = 28
        Width = 228
        Height = 21
        Align = alCustom
        CharCase = ecUpperCase
        TabOrder = 1
        OnChange = beBuscarChange
      end
      object rbcliente: TRadioButton
        Left = 16
        Top = 24
        Width = 58
        Height = 25
        Caption = 'Proveedor'
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
      Left = 718
      Top = 4
      Width = 258
      Height = 310
      Align = alLeft
      Caption = 'Filtrar Fecha Facturas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
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
      Left = 494
      Top = 4
      Width = 218
      Height = 310
      Align = alLeft
      Caption = 'Ver'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object rb1Trimestres: TRadioButton
        Tag = 1
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
        OnClick = rb2trimestreClick
      end
      object rb2trimestre: TRadioButton
        Tag = 2
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
        OnClick = rb2trimestreClick
      end
      object rb3trimestre: TRadioButton
        Tag = 3
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
        OnClick = rb2trimestreClick
      end
      object rb4trimestre: TRadioButton
        Tag = 4
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
        OnClick = rb2trimestreClick
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
      Left = 979
      Top = 1
      Width = 253
      Height = 316
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
      object rDBRecView1: TrDBRecView
        Left = 2
        Top = 17
        Width = 249
        Height = 297
        DataSource = ds1
        DBGrid = rdbfacturascompras
        OptionsEx = [goNumberRight, goUseGridPickList]
        Fields.Strings = (
          'nombre=Proveedor'
          'ticket=Ticket'
          'NFactura=NFactura'
          'categoriades=Categoria'
          'fecha=Fecha'
          'Importe=Importe'
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
        PickLists.Strings = (
          '[tasaIVA]'
          '10'
          '21'
          ''
          '[formapago]'
          'CONTADO'
          'DOMICILIADO'
          'CHEQUE')
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
      end
    end
    object GroupBox3: TGroupBox
      AlignWithMargins = True
      Left = 327
      Top = 4
      Width = 161
      Height = 310
      Align = alLeft
      Caption = 'Agrupar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object cbAgruparAdmin: TCheckBox
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 151
        Height = 17
        Align = alTop
        Caption = 'Filtrar '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = cbAgruparAdminClick
      end
      object chkCamposBusqueda: TCheckBox
        Left = 5
        Top = 41
        Width = 132
        Height = 17
        Caption = 'Buscar por campos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = chkCamposBusquedaClick
      end
    end
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
      Hint = 'A'#241'adir factura compras'
      Caption = 'btn3'
      ImageIndex = 60
      ParentShowHint = False
      ShowHint = True
      OnClick = btn3Click
    end
    object btn5: TToolButton
      Left = 84
      Top = 0
      Hint = 'Borrar factura compras'
      Caption = 'btn5'
      ImageIndex = 61
      ParentShowHint = False
      ShowHint = True
      OnClick = btn5Click
    end
    object btn6: TToolButton
      Left = 126
      Top = 0
      Width = 8
      Caption = 'btn6'
      ImageIndex = 43
      Style = tbsSeparator
    end
    object btn7: TToolButton
      Left = 134
      Top = 0
      Hint = 'Exportar Excel'
      Caption = 'btn7'
      ImageIndex = 43
      ParentShowHint = False
      ShowHint = True
      OnClick = btn7Click
    end
    object btnGenAsiento: TToolButton
      Left = 176
      Top = 0
      Hint = 'Generar Asiento'
      Caption = 'btnGenAsiento'
      ImageIndex = 64
      ParentShowHint = False
      ShowHint = True
      OnClick = btnGenAsientoClick
    end
  end
  object RzStatusBar1: TRzStatusBar
    AlignWithMargins = True
    Left = 3
    Top = 595
    Width = 1301
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 2
    object RzStatusPane1: TRzStatusPane
      Left = 0
      Top = 0
      Width = 300
      Height = 19
      Align = alLeft
      BlinkIntervalOff = 100
      BlinkIntervalOn = 100
      Caption = ''
      ExplicitHeight = 25
    end
    object RzFieldStatus1: TRzFieldStatus
      Left = 300
      Top = 0
      Width = 300
      Height = 19
      Align = alLeft
      BlinkIntervalOff = 100
      BlinkIntervalOn = 100
      Caption = ''
      ExplicitHeight = 25
    end
    object RzDBStatusPane1: TRzDBStatusPane
      Left = 600
      Top = 0
      Width = 150
      Height = 19
      Align = alLeft
      ParentShowHint = False
      BlinkIntervalOff = 100
      BlinkIntervalOn = 100
      DataField = 'nombre'
      ExplicitHeight = 25
    end
    object RzDBStateStatus1: TRzDBStateStatus
      Left = 750
      Top = 0
      Height = 19
      Align = alLeft
      BlinkIntervalOff = 100
      BlinkIntervalOn = 100
      ExplicitLeft = 1307
      ExplicitHeight = 20
    end
  end
  object rdbfacturascompras: TrDBGrid_MS
    AlignWithMargins = True
    Left = 3
    Top = 364
    Width = 1301
    Height = 225
    Align = alClient
    DataSource = ds1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Sorter = DataModule1.rDBGridSorter_FireDac1
    ColumnWidth = cwAutoWidth
    TitleLines = 2
    RowLines = 2
    FooterRow.FooterVisible = True
    FooterRow.FieldFooterDefs.Strings = (
      'total=%SUM '#8364';10;'
      'Importe=%SUM '#8364';10;'
      'NFactura=%COUNTALL facturas;10;'
      'IVA=%SUM '#8364';10;')
    Columns = <
      item
        Expanded = False
        FieldName = 'nombre'
        Title.Caption = 'Proveedor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 144
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
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFactura'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 149
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'categoriades'
        Title.Alignment = taCenter
        Title.Caption = 'Categoria'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 144
        Visible = True
      end
      item
        Alignment = taCenter
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'fecha'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Importe'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 83
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
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IVA'
        Title.Alignment = taCenter
        Title.Caption = 'I.V.A'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 74
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
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 79
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'formapago'
        Title.Alignment = taCenter
        Title.Caption = 'Forma Pago'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 74
        Visible = True
      end
      item
        Alignment = taCenter
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'vencimiento'
        Title.Alignment = taCenter
        Title.Caption = 'Vencimiento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 74
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id_asiento'
        Title.Alignment = taCenter
        Title.Caption = 'Asiento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 56
        Visible = True
      end
      item
        Alignment = taCenter
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'fechacontable'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha Contable'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 98
        Visible = True
      end>
  end
  object fdqproveedores: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT nombre, id_proveedor from proveedores order by nombre')
    Left = 1000
    Top = 448
  end
  object ds1: TDataSource
    DataSet = DataModule1.fdfactcompras
    Left = 280
    Top = 472
  end
end

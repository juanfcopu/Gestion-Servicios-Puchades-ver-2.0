object principal: Tprincipal
  Left = 1509
  Top = 0
  AlphaBlend = True
  Caption = 'Gesti'#243'n Servicios Puchades ver 2.0'
  ClientHeight = 877
  ClientWidth = 1385
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 858
    Width = 1385
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 2
    VisualStyle = vsGradient
    object RzFieldStatus1: TRzFieldStatus
      Left = 0
      Top = 0
      Width = 235
      Height = 19
      Align = alLeft
      BlinkIntervalOff = 100
      BlinkIntervalOn = 100
      Caption = ''
    end
    object RzClockStatus1: TRzClockStatus
      Left = 729
      Top = 0
      Height = 19
      Align = alLeft
      BlinkIntervalOff = 100
      BlinkIntervalOn = 100
      ExplicitLeft = 715
      ExplicitTop = 6
    end
    object RzFieldStatus2: TRzFieldStatus
      Left = 235
      Top = 0
      Width = 494
      Height = 19
      Align = alLeft
      BlinkIntervalOff = 100
      BlinkIntervalOn = 100
      Caption = ''
    end
  end
  object RzToolbar1: TRzToolbar
    Left = 0
    Top = 0
    Width = 1385
    Height = 29
    Images = DataModule1.ImageList1
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = [sdTop]
    BorderWidth = 0
    TabOrder = 0
    VisualStyle = vsGradient
    ToolbarControls = (
      RzToolButton1)
    object RzToolButton1: TRzToolButton
      Left = 4
      Top = 2
      ImageIndex = 58
      OnClick = RzToolButton1Click
    end
  end
  object RzSplitter1: TRzSplitter
    AlignWithMargins = True
    Left = 3
    Top = 32
    Width = 1205
    Height = 823
    Position = 243
    Percent = 20
    Align = alClient
    TabOrder = 1
    BarSize = (
      243
      0
      247
      823)
    UpperLeftControls = (
      RzGroupBar1)
    LowerRightControls = (
      PageControl2)
    object RzGroupBar1: TRzGroupBar
      Left = 0
      Top = 0
      Width = 243
      Height = 823
      GradientColorStart = clBtnFace
      GradientColorStop = clBtnShadow
      GroupBorderSize = 8
      Align = alClient
      Color = clBtnShadow
      Enabled = False
      ParentColor = False
      TabOrder = 0
      object RzClientes: TRzGroup
        CaptionHeight = 30
        CaptionImageIndex = 11
        Items = <
          item
            Caption = 'Listado'
            OnClick = RzClientesItems0Click
          end
          item
            Action = DataModule1.crearclientes
          end>
        Opened = True
        OpenedHeight = 77
        DividerVisible = False
        SmallImages = DataModule1.icopeque
        Caption = 'Clientes'
        ParentColor = False
      end
      object RzGroup1: TRzGroup
        CaptionHeight = 30
        CaptionImageIndex = 13
        Items = <
          item
            Action = DataModule1.listapresupuestos
          end
          item
            Action = DataModule1.insertarpresupuesto
          end
          item
            Action = DataModule1.previsionejecucion
          end>
        Opened = True
        OpenedHeight = 97
        DividerVisible = False
        SmallImages = DataModule1.icopeque
        Caption = 'Presupuestos'
        ParentColor = False
      end
      object RzGroup2: TRzGroup
        CaptionHeight = 30
        CaptionImageIndex = 5
        Items = <
          item
            Action = DataModule1.listaObras
          end>
        Opened = True
        OpenedHeight = 57
        DividerVisible = False
        SmallImages = DataModule1.icopeque
        Caption = 'Obras'
        ParentColor = False
      end
      object RzGroup3: TRzGroup
        CaptionHeight = 30
        CaptionImageIndex = 9
        Items = <
          item
            Action = DataModule1.listafacturas
          end
          item
            Action = DataModule1.insertarFactura
          end>
        Opened = True
        OpenedHeight = 77
        DividerVisible = False
        SmallImages = DataModule1.icopeque
        Caption = 'Facturas'
        ParentColor = False
      end
      object RzGroup4: TRzGroup
        CaptionHeight = 30
        CaptionImageIndex = 11
        Items = <
          item
            Action = DataModule1.lstadmnistradores
          end
          item
            Action = DataModule1.crearadministrador
          end>
        Opened = True
        OpenedHeight = 77
        DividerVisible = False
        SmallImages = DataModule1.icopeque
        Caption = 'Administradores'
        ParentColor = False
      end
      object RzGroup5: TRzGroup
        CaptionHeight = 30
        CaptionImageIndex = 15
        Items = <
          item
            Action = DataModule1.actFacturascompras
          end
          item
            Action = DataModule1.actNominas
          end
          item
            Action = DataModule1.actlistsegurossociales
          end
          item
            Action = DataModule1.actseguro
          end
          item
            Action = DataModule1.movimientosbancos
          end>
        Opened = True
        OpenedHeight = 137
        DividerVisible = False
        SmallImages = DataModule1.icopeque
        Caption = 'Gastos'
        ParentColor = False
      end
      object RzGroup9: TRzGroup
        GroupController = RzGroupController1
        Items = <
          item
            Action = DataModule1.IPresupuestosAprovados
          end
          item
            Action = DataModule1.IpresupuestosAprovadosFecha
          end
          item
            Action = DataModule1.IpresupuestosTipo
          end
          item
            Action = DataModule1.IObrasSinFactura
          end
          item
            Action = DataModule1.ICostesObras
          end
          item
            Action = DataModule1.IFacturasImpagadas
          end>
        Opened = True
        OpenedHeight = 147
        Caption = 'Informes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object RzGroup6: TRzGroup
        CaptionHeight = 30
        CaptionImageIndex = 14
        Items = <
          item
            Action = DataModule1.actConfiguracion
          end
          item
            Action = DataModule1.actEmpresa
          end>
        Opened = True
        OpenedHeight = 77
        DividerVisible = False
        SmallImages = DataModule1.icopeque
        Caption = 'Configuraci'#243'n'
        ParentColor = False
      end
      object RzGroup7: TRzGroup
        Items = <
          item
            Action = DataModule1.actEstadisticasVentaCompras
          end
          item
            Action = DataModule1.actCalendario
          end
          item
            Action = DataModule1.actasientos
          end>
        Opened = True
        OpenedHeight = 87
        DividerVisible = False
        Caption = 'Estadisticas'
        ParentColor = False
      end
      object RzGroup8: TRzGroup
        Items = <
          item
            Action = DataModule1.actBancos
          end
          item
            Action = DataModule1.listtrabajadores
          end
          item
            Action = DataModule1.actproveedores
          end>
        Opened = True
        OpenedHeight = 87
        DividerVisible = False
        Caption = 'Entidades'
        ParentColor = False
      end
      object RzGroup10: TRzGroup
        Items = <
          item
            Action = DataModule1.actCopiarFotos
          end>
        Opened = True
        OpenedHeight = 47
        DividerVisible = False
        Caption = 'Herramientas'
        ParentColor = False
      end
    end
    object PageControl2: TRzPageControl
      Left = 0
      Top = 0
      Width = 958
      Height = 823
      Hint = ''
      Align = alClient
      DockSite = True
      ShowCloseButton = True
      ShowCloseButtonOnActiveTab = True
      TabOrder = 0
      TabStyle = tsSquareCorners
      OnClose = pagecontrol2Close
      OnDockOver = PageControl2DockOver
      FixedDimension = 19
    end
  end
  object RzPanel1: TRzPanel
    Left = 1211
    Top = 29
    Width = 174
    Height = 829
    Align = alRight
    DockSite = True
    TabOrder = 3
    object Label1: TLabel
      Left = 4
      Top = 4
      Width = 166
      Height = 21
      Align = alTop
      AutoSize = False
      Caption = 'Actualizado:'
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      GlowSize = 5
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 2
    end
    object ListBox1: TListBox
      AlignWithMargins = True
      Left = 7
      Top = 28
      Width = 160
      Height = 129
      Align = alTop
      DragKind = dkDock
      DragMode = dmAutomatic
      ItemHeight = 13
      TabOrder = 0
    end
    object CharFacturacion: TDBChart
      AlignWithMargins = True
      Left = 7
      Top = 163
      Width = 160
      Height = 214
      Title.Text.Strings = (
        'TDBChart')
      Align = alTop
      TabOrder = 1
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
    end
  end
  object AppEvent1: TApplicationEvents
    Left = 1318
    Top = 42
  end
  object RzGroupController1: TRzGroupController
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Left = 554
    Top = 624
  end
end

object FclientesDatos: TFclientesDatos
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'FclientesDatos'
  ClientHeight = 738
  ClientWidth = 1343
  Color = clBtnFace
  DragKind = dkDock
  DragMode = dmAutomatic
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
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 1343
    Height = 42
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 35
        Width = 1337
      end>
    object ToolBar1: TToolBar
      Left = 11
      Top = 0
      Width = 1328
      Height = 35
      ButtonHeight = 38
      ButtonWidth = 39
      Caption = 'ToolBar1'
      Images = DataModule1.ImageList1
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Hint = 'Editar cliente'
        Caption = 'Editar Cliente'
        ImageIndex = 24
        ParentShowHint = False
        ShowHint = True
        OnClick = ToolButton1Click
      end
      object btnGuardar: TToolButton
        Left = 39
        Top = 0
        Hint = 'Guardar cliente'
        Caption = 'btnGuardar'
        Enabled = False
        ImageIndex = 7
        ParentShowHint = False
        ShowHint = True
        OnClick = btnGuardarClick
      end
    end
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 45
    Width = 1337
    Height = 129
    Align = alTop
    Anchors = [akTop, akRight]
    Caption = 'Datos del Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object GridPanel2: TGridPanel
      Left = 2
      Top = 15
      Width = 1333
      Height = 112
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
          Column = 2
          Control = GroupBox2
          Row = 0
        end
        item
          Column = 3
          Control = GroupBox5
          Row = 0
        end
        item
          Column = 1
          Control = GroupBox3
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
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 11
        Top = 4
        Width = 408
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
        object rDBEdit1: TrDBEdit
          Left = 9
          Top = 40
          Width = 38
          Height = 21
          DataField = 'IdContactos'
          DataSource = dsclientes
          ReadOnly = True
          TabOrder = 0
          DBEditLabel.OwnCaption = 'C'#243'digo'
        end
        object rDBEdit2: TrDBEdit
          Left = 53
          Top = 40
          Width = 241
          Height = 21
          DataField = 'Nombre'
          DataSource = dsclientes
          TabOrder = 1
          DBEditLabel.OwnCaption = 'Nombre'
        end
        object rDBEdit3: TrDBEdit
          Left = 307
          Top = 40
          Width = 93
          Height = 21
          DataField = 'CIF'
          DataSource = dsclientes
          TabOrder = 2
          DBEditLabel.OwnCaption = 'C.I.F'
        end
      end
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 816
        Top = 4
        Width = 243
        Height = 97
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
        object rDBEdit7: TrDBEdit
          Left = 62
          Top = 24
          Width = 174
          Height = 21
          DataField = 'banco'
          DataSource = dsclientes
          TabOrder = 0
          DBEditLabel.OwnCaption = 'Banco'
          DBEditLabel.Position = lpLeftCenter
        end
        object rDBEdit8: TrDBEdit
          Left = 62
          Top = 60
          Width = 174
          Height = 21
          DataField = 'IBAN'
          DataSource = dsclientes
          TabOrder = 1
          DBEditLabel.OwnCaption = 'IBAN'
          DBEditLabel.Position = lpLeftCenter
        end
      end
      object GroupBox5: TGroupBox
        AlignWithMargins = True
        Left = 1072
        Top = 4
        Width = 257
        Height = 104
        Align = alClient
        Caption = 'Familia y Administrador'
        TabOrder = 3
        object rDBComboBox2: TrDBComboBox
          Left = 48
          Top = 24
          Width = 193
          Height = 21
          DataField = 'familia'
          DataSource = dsclientes
          DropDownCount = 15
          Items.Strings = (
            'COMUNIDAD DE PROPIETARIOS'
            'SOCIEDAD LIMITADA'
            'COMUNIDAD DE BIENES'
            'PROPIETARIO')
          TabOrder = 0
          DBEditLabel.OwnCaption = 'Familia'
          DBEditLabel.Position = lpLeftCenter
          BoundLabel.Position = lpTopRight
        end
        object rDBLookupComboBox1: TrDBLookupComboBox
          Left = 80
          Top = 67
          Width = 161
          Height = 21
          DataField = 'administrador'
          DataSource = dsclientes
          DropDownRows = 15
          TabOrder = 1
          DBEditLabel.OwnCaption = 'Administrador'
          DBEditLabel.Position = lpLeftCenter
          BoundLabel.Position = lpTopRight
        end
      end
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 432
        Top = 4
        Width = 371
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
        TabOrder = 1
        object rDBEdit4: TrDBEdit
          Left = 64
          Top = 17
          Width = 289
          Height = 21
          DataField = 'Direccion'
          DataSource = dsclientes
          TabOrder = 0
          DBEditLabel.OwnCaption = 'Direcci'#243'n'
          DBEditLabel.Position = lpLeftCenter
        end
        object rDBEdit5: TrDBEdit
          Left = 73
          Top = 61
          Width = 81
          Height = 21
          DataField = 'CodigoPostal'
          DataSource = dsclientes
          TabOrder = 1
          DBEditLabel.OwnCaption = 'C'#243'digo Postal'
          DBEditLabel.Position = lpLeftCenter
        end
        object rDBEdit6: TrDBEdit
          Left = 217
          Top = 61
          Width = 136
          Height = 21
          DataField = 'Ciudad'
          DataSource = dsclientes
          TabOrder = 2
          DBEditLabel.OwnCaption = 'Ciudad'
          DBEditLabel.Position = lpLeftCenter
        end
      end
    end
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 177
    Width = 1343
    Height = 542
    Align = alClient
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end
      item
        SizeStyle = ssAuto
      end>
    ControlCollection = <
      item
        Column = 0
        Control = PanelPRESUPUESTOS
        Row = 0
      end
      item
        Column = 1
        Control = PanelFACTURAS
        Row = 0
      end
      item
        Column = 0
        Control = pnlOBRAS
        Row = 1
      end
      item
        Column = 1
        Control = pnContactos
        Row = 1
      end>
    ExpandStyle = emAddColumns
    RowCollection = <
      item
        Value = 38.463416191288090000
      end
      item
        Value = 38.459660731788840000
      end
      item
        Value = 23.076923076923070000
      end>
    TabOrder = 2
    object PanelPRESUPUESTOS: TPanel
      Left = 1
      Top = 1
      Width = 670
      Height = 207
      Align = alClient
      DragKind = dkDock
      DragMode = dmAutomatic
      TabOrder = 0
      ExplicitWidth = 300
      object HeaderControl1: THeaderControl
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 662
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Images = DataModule1.ImageList1
        Sections = <
          item
            FixedWidth = True
            ImageIndex = 30
            Text = 'Presupuestos'
            Width = 150
          end
          item
            ImageIndex = -1
            Width = 512
          end>
        OnSectionClick = HeaderControl1SectionClick
        ParentFont = False
      end
      object VSTP: TVirtualStringTree
        AlignWithMargins = True
        Left = 4
        Top = 42
        Width = 662
        Height = 142
        Align = alClient
        BorderWidth = 1
        DefaultNodeHeight = 25
        Header.AutoSizeIndex = 9
        Header.DefaultHeight = 25
        Header.Height = 20
        Header.Images = DataModule1.icopeque
        Header.Options = [hoAutoResize, hoColumnResize, hoDrag, hoOwnerDraw, hoShowImages, hoShowSortGlyphs, hoVisible, hoFullRepaintOnResize]
        Images = DataModule1.icopeque
        TabOrder = 1
        TreeOptions.MiscOptions = [toAcceptOLEDrop, toCheckSupport, toEditable, toFullRepaintOnResize, toInitOnSave, toWheelPanning, toFullRowDrag, toEditOnClick, toEditOnDblClick]
        TreeOptions.PaintOptions = [toHotTrack, toShowButtons, toShowDropmark, toShowRoot, toShowTreeLines, toShowVertGridLines, toThemeAware, toUseBlendedImages, toUseExplorerTheme]
        TreeOptions.SelectionOptions = [toExtendedFocus, toFullRowSelect]
        OnAfterCellPaint = VSTPAfterCellPaint
        OnBeforeCellPaint = VSTPBeforeCellPaint
        OnChange = VSTPChange
        OnCreateEditor = VSTPCreateEditor
        OnEdited = VSTPEdited
        OnEditing = VSTPEditing
        OnGetText = VSTPGetText
        OnPaintText = VSTPPaintText
        OnGetImageIndex = VSTPGetImageIndex
        OnGetNodeDataSize = VSTPGetNodeDataSize
        OnHeaderDraw = VSTPHeaderDraw
        OnInitChildren = VSTPInitChildren
        OnInitNode = VSTPInitNode
        Columns = <
          item
            MaxWidth = 100
            Position = 0
            Text = 'Presupuesto'
            Width = 100
          end
          item
            MaxWidth = 120
            Position = 1
            Text = 'Fecha'
            Width = 100
          end
          item
            MaxWidth = 1000
            Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coSmartResize, coAllowFocus, coEditable, coStyleColor]
            Position = 2
            Text = 'Descripci'#243'n'
            Width = 250
          end
          item
            Alignment = taCenter
            MaxWidth = 110
            Position = 3
            Text = 'Importe'
            Width = 100
          end
          item
            Alignment = taCenter
            MaxWidth = 100
            Position = 4
            Text = 'Aprobado'
            Width = 100
          end>
      end
      object Button1: TButton
        Left = 480
        Top = 4
        Width = 32
        Height = 32
        Align = alCustom
        Anchors = [akTop, akRight]
        ImageAlignment = iaCenter
        ImageIndex = 1
        Images = DataModule1.icopeque
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 518
        Top = 4
        Width = 32
        Height = 32
        Align = alCustom
        Anchors = [akTop, akRight]
        ImageAlignment = iaCenter
        ImageIndex = 3
        Images = DataModule1.icopeque
        TabOrder = 3
        OnClick = Button2Click
      end
      object rzStatusBarPresupuestos: TRzStatusBar
        Left = 1
        Top = 187
        Width = 668
        Height = 19
        BorderInner = fsNone
        BorderOuter = fsNone
        BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
        BorderWidth = 0
        TabOrder = 4
        object RzStatusPane1: TRzStatusPane
          Left = 0
          Top = 0
          Height = 19
          Align = alLeft
          BlinkIntervalOff = 100
          BlinkIntervalOn = 100
          Caption = ''
          ExplicitLeft = 668
          ExplicitHeight = 20
        end
      end
    end
    object PanelFACTURAS: TPanel
      Left = 671
      Top = 1
      Width = 670
      Height = 207
      Align = alClient
      TabOrder = 1
      object HeaderControl2: THeaderControl
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 662
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Images = DataModule1.ImageList1
        Sections = <
          item
            ImageIndex = 45
            Text = 'Facturas'
            Width = 150
          end
          item
            ImageIndex = -1
            Width = 600
          end>
        ParentFont = False
      end
      object VSTF: TVirtualStringTree
        AlignWithMargins = True
        Left = 4
        Top = 42
        Width = 662
        Height = 142
        Align = alClient
        DefaultNodeHeight = 25
        Header.AutoSizeIndex = 0
        Header.DefaultHeight = 25
        Header.Height = 25
        Header.Options = [hoColumnResize, hoDrag, hoOwnerDraw, hoShowImages, hoShowSortGlyphs, hoVisible]
        Images = DataModule1.icopeque
        TabOrder = 1
        TreeOptions.MiscOptions = [toAcceptOLEDrop, toCheckSupport, toEditable, toFullRepaintOnResize, toInitOnSave, toWheelPanning, toEditOnClick, toEditOnDblClick]
        TreeOptions.PaintOptions = [toShowButtons, toShowDropmark, toShowRoot, toShowTreeLines, toShowVertGridLines, toThemeAware, toUseBlendedImages, toUseExplorerTheme]
        TreeOptions.SelectionOptions = [toExtendedFocus, toFullRowSelect]
        OnAfterCellPaint = VSTFAfterCellPaint
        OnBeforeCellPaint = VSTPBeforeCellPaint
        OnChange = VSTPChange
        OnCreateEditor = VSTFCreateEditor
        OnEdited = VSTFEdited
        OnEditing = VSTFEditing
        OnGetText = VSTFGetText
        OnPaintText = VSTPPaintText
        OnGetImageIndex = VSTFGetImageIndex
        OnGetNodeDataSize = VSTFGetNodeDataSize
        OnInitChildren = VSTFInitChildren
        OnInitNode = VSTFInitNode
        Columns = <
          item
            MaxWidth = 120
            Position = 0
            Text = 'N'#186' Factura'
            Width = 120
          end
          item
            MaxWidth = 100
            Position = 1
            Text = 'Fecha'
            Width = 100
          end
          item
            Position = 2
            Text = 'Concepto'
            Width = 250
          end
          item
            MaxWidth = 110
            Position = 3
            Text = 'Base Imponible'
            Width = 100
          end
          item
            MaxWidth = 110
            Position = 4
            Text = 'I.V.A'
            Width = 100
          end
          item
            MaxWidth = 110
            Position = 5
            Text = 'Total'
            Width = 100
          end
          item
            Alignment = taCenter
            CaptionAlignment = taCenter
            MaxWidth = 110
            Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment, coEditable, coStyleColor]
            Position = 6
            Text = 'Pagado'
            Width = 100
          end>
      end
      object rzstatusbarFacturas: TRzStatusBar
        Left = 1
        Top = 187
        Width = 668
        Height = 19
        BorderInner = fsNone
        BorderOuter = fsNone
        BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
        BorderWidth = 0
        TabOrder = 2
        object RzStatusPane2: TRzStatusPane
          Left = 0
          Top = 0
          Height = 19
          Align = alLeft
          BlinkIntervalOff = 100
          BlinkIntervalOn = 100
          Caption = ''
          ExplicitLeft = 668
          ExplicitHeight = 20
        end
      end
    end
    object pnlOBRAS: TPanel
      Left = 1
      Top = 208
      Width = 670
      Height = 207
      Align = alClient
      TabOrder = 2
      object HeaderControl3: THeaderControl
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 662
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Images = DataModule1.ImageList1
        Sections = <
          item
            ImageIndex = 22
            Text = 'Obras'
            Width = 150
          end
          item
            CheckBox = True
            ImageIndex = -1
            Width = 600
          end>
        ParentFont = False
      end
      object VSTO: TVirtualStringTree
        AlignWithMargins = True
        Left = 4
        Top = 42
        Width = 662
        Height = 142
        Align = alClient
        DefaultNodeHeight = 25
        Header.AutoSizeIndex = 0
        Header.Options = [hoColumnResize, hoDrag, hoShowImages, hoShowSortGlyphs, hoVisible]
        Images = DataModule1.icopeque
        TabOrder = 1
        TreeOptions.MiscOptions = [toAcceptOLEDrop, toCheckSupport, toEditable, toFullRepaintOnResize, toInitOnSave, toWheelPanning, toEditOnClick, toEditOnDblClick]
        TreeOptions.PaintOptions = [toHotTrack, toShowButtons, toShowDropmark, toShowRoot, toShowTreeLines, toShowVertGridLines, toThemeAware, toUseBlendedImages, toUseExplorerTheme]
        TreeOptions.SelectionOptions = [toExtendedFocus, toFullRowSelect]
        OnBeforeCellPaint = VSTPBeforeCellPaint
        OnCreateEditor = VSTOCreateEditor
        OnEdited = VSTOEdited
        OnEditing = VSTOEditing
        OnGetText = VSTOGetText
        OnPaintText = VSTPPaintText
        OnGetImageIndex = VSTOGetImageIndex
        OnGetNodeDataSize = VSTOGetNodeDataSize
        OnInitChildren = VSTOInitChildren
        OnInitNode = VSTOInitNode
        Columns = <
          item
            MaxWidth = 110
            Position = 0
            Text = 'Obra'
            Width = 100
          end
          item
            MaxWidth = 110
            Position = 1
            Text = 'Fecha'
            Width = 100
          end
          item
            Position = 2
            Text = 'Descripci'#243'n'
            Width = 250
          end
          item
            MaxWidth = 110
            Position = 3
            Text = 'Fin de Obra'
            Width = 100
          end
          item
            Alignment = taCenter
            MaxWidth = 110
            Position = 4
            Text = 'Total'
            Width = 100
          end
          item
            Position = 5
            Text = 'Presupuesto'
            Width = 100
          end>
      end
      object rzstatusBarObras: TRzStatusBar
        Left = 1
        Top = 187
        Width = 668
        Height = 19
        BorderInner = fsNone
        BorderOuter = fsNone
        BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
        BorderWidth = 0
        TabOrder = 2
        object RzStatusPane3: TRzStatusPane
          Left = 0
          Top = 0
          Height = 19
          Align = alLeft
          BlinkIntervalOff = 100
          BlinkIntervalOn = 100
          Caption = ''
          ExplicitLeft = 668
          ExplicitHeight = 20
        end
      end
    end
    object pnContactos: TPanel
      Left = 671
      Top = 208
      Width = 670
      Height = 207
      Align = alClient
      TabOrder = 3
      object HeaderControl4: THeaderControl
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 662
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Images = DataModule1.ImageList1
        Sections = <
          item
            ImageIndex = 22
            Text = 'Contactos'
            Width = 150
          end
          item
            CheckBox = True
            ImageIndex = -1
            Width = 600
          end>
        ParentFont = False
      end
      object rDBGrid_MS1: TrDBGrid_MS
        AlignWithMargins = True
        Left = 4
        Top = 42
        Width = 662
        Height = 161
        Align = alClient
        DataSource = dscontactos
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Sorter = DataModule1.rDBGridSorter_FireDac1
        TitleLines = 2
        RowLines = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'pta'
            Title.Alignment = taCenter
            Title.Caption = 'Puerta'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nombre'
            Title.Caption = 'Nombre'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefono1'
            Title.Caption = 'Tel'#233'fono 1'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefono2'
            Title.Caption = 'Tel'#233'fono 2'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefono3'
            Title.Caption = 'Tel'#233'fono 3'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mail'
            Title.Caption = 'Mail'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 719
    Width = 1343
    Height = 19
    Anchors = []
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 3
    object RzDBStatusPane1: TRzDBStatusPane
      Left = 0
      Top = 0
      Height = 19
      Align = alLeft
      ParentShowHint = False
      BlinkIntervalOff = 100
      BlinkIntervalOn = 100
      ExplicitLeft = 1343
      ExplicitHeight = 20
    end
    object RzDBStateStatus1: TRzDBStateStatus
      Left = 100
      Top = 0
      Height = 19
      Align = alLeft
      DataSource = dspresupuestos
      BlinkIntervalOff = 100
      BlinkIntervalOn = 100
      ExplicitLeft = 1343
      ExplicitHeight = 20
    end
  end
  object fdclientes: TFDQuery
    AfterInsert = fdclientesAfterInsert
    AfterEdit = fdclientesAfterEdit
    AfterPost = fdclientesAfterPost
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from clientes where idContactos=:id_cliente')
    Left = 797
    Top = 131
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdclientesIdContactos: TIntegerField
      FieldName = 'IdContactos'
      Origin = 'IdContactos'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdclientesNombre: TStringField
      FieldName = 'Nombre'
      Origin = 'Nombre'
      Required = True
      Size = 100
    end
    object fdclientesDireccion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Direccion'
      Origin = 'Direccion'
      Size = 255
    end
    object fdclientesCiudad: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ciudad'
      Origin = 'Ciudad'
      Size = 50
    end
    object fdclientesTelefonoCasa: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TelefonoCasa'
      Origin = 'TelefonoCasa'
    end
    object fdclientesTelefonoMovil: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TelefonoMovil'
      Origin = 'TelefonoMovil'
    end
    object fdclientesmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = 'mail'
      Size = 50
    end
    object fdclientesNumFax: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NumFax'
      Origin = 'NumFax'
    end
    object fdclientesCIF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIF'
      Origin = 'CIF'
      Size = 50
    end
    object fdclientesCodigoPostal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodigoPostal'
      Origin = 'CodigoPostal'
      Size = 50
    end
    object fdclientesidAdministrador: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idAdministrador'
      Origin = 'idAdministrador'
    end
    object fdclientesCP: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'CP'
      Origin = 'CP'
    end
    object fdclientesIBAN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IBAN'
      Origin = 'IBAN'
      Size = 255
    end
    object fdclientesbanco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'banco'
      Origin = 'banco'
      Size = 100
    end
    object fdclientesnombrefactura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nombrefactura'
      Origin = 'nombrefactura'
      Size = 100
    end
    object fdclientesciffactura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ciffactura'
      Origin = 'ciffactura'
      Size = 50
    end
    object fdclientesciudadfactura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ciudadfactura'
      Origin = 'ciudadfactura'
      Size = 50
    end
    object fdclientesdireccionfactura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'direccionfactura'
      Origin = 'direccionfactura'
      Size = 255
    end
    object fdclientescodigopostalfactura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigopostalfactura'
      Origin = 'codigopostalfactura'
      Size = 50
    end
    object fdclientesadministrador: TStringField
      FieldKind = fkLookup
      FieldName = 'administrador'
      LookupDataSet = FDAdministradores
      LookupKeyFields = 'IdAdministrador'
      LookupResultField = 'nombre'
      KeyFields = 'idAdministrador'
      Lookup = True
    end
    object fdclientesfamilia: TIntegerField
      FieldName = 'familia'
      Origin = 'familia'
    end
  end
  object dsclientes: TDataSource
    DataSet = fdclientes
    Left = 877
    Top = 144
  end
  object fdpresupuestos: TFDQuery
    AfterOpen = fdpresupuestosAfterOpen
    AfterRefresh = fdpresupuestosAfterRefresh
    IndexFieldNames = 'id_presupuesto;grupo'
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select C.nombre, P.Id_ClientePrev, P.id_presupuesto, P.descripci' +
        'on, P.Aprovado, P.FechaPresupuesto, P.grupo, P.Total, P.TotalApr' +
        'obado'
      'From presupuestos P, clientes C'
      
        'where C.idContactos=P.id_ClientePrev and P.id_clienteprev=:id_cl' +
        'iente '
      'order by P.id_presupuesto DESC, P.grupo DESC '
      '')
    Left = 341
    Top = 243
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object fdpresupuestosnombre: TStringField
      FieldName = 'nombre'
      Origin = 'nombre'
      Required = True
      Size = 100
    end
    object fdpresupuestosId_ClientePrev: TIntegerField
      FieldName = 'Id_ClientePrev'
      Origin = 'Id_ClientePrev'
      Required = True
    end
    object fdpresupuestosid_presupuesto: TIntegerField
      FieldName = 'id_presupuesto'
      Origin = 'id_presupuesto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdpresupuestosdescripcion: TMemoField
      FieldName = 'descripcion'
      Origin = 'descripcion'
      Required = True
      BlobType = ftMemo
    end
    object fdpresupuestosAprovado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Aprovado'
      Origin = 'Aprovado'
    end
    object fdpresupuestosFechaPresupuesto: TDateTimeField
      FieldName = 'FechaPresupuesto'
      Origin = 'FechaPresupuesto'
      Required = True
    end
    object fdpresupuestosgrupo: TIntegerField
      FieldName = 'grupo'
      Origin = 'grupo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdpresupuestosTotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total'
      Origin = 'Total'
    end
    object fdpresupuestosTotalAprobado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TotalAprobado'
      Origin = 'TotalAprobado'
    end
  end
  object dspresupuestos: TDataSource
    DataSet = fdpresupuestos
    Left = 329
    Top = 314
  end
  object fdfacturas: TFDQuery
    AfterOpen = fdfacturasAfterOpen
    AfterRefresh = fdfacturasAfterRefresh
    IndexFieldNames = 'idfactura;ano'
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select f.idfactura, f.pagada,f.importeIVA,  f.cantidad, f.emisor' +
        'factura, f.ano, f.iva, f.total, f.totalbruto, f.fechafactura, f.' +
        'concepto, f.idcliente'
      'from facturas f '
      'where f.idcliente=:id_cliente ')
    Left = 853
    Top = 267
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdfacturasidfactura: TIntegerField
      FieldName = 'idfactura'
      Origin = 'idFactura'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdfacturaspagada: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'pagada'
      Origin = 'pagada'
    end
    object fdfacturascantidad: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cantidad'
      Origin = 'cantidad'
    end
    object fdfacturasemisorfactura: TIntegerField
      FieldName = 'emisorfactura'
      Origin = 'EmisorFactura'
      Required = True
    end
    object fdfacturasano: TIntegerField
      FieldName = 'ano'
      Origin = 'ano'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdfacturasiva: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'iva'
      Origin = 'Iva'
    end
    object fdfacturastotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'total'
      Origin = 'Total'
    end
    object fdfacturastotalbruto: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'totalbruto'
      Origin = 'TotalBruto'
    end
    object fdfacturasfechafactura: TDateTimeField
      FieldName = 'fechafactura'
      Origin = 'FechaFactura'
      Required = True
    end
    object fdfacturasconcepto: TMemoField
      FieldName = 'concepto'
      Origin = 'Concepto'
      Required = True
      BlobType = ftMemo
    end
    object fdfacturasidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'idCliente'
      Required = True
    end
    object fdfacturasimporteIVA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'importeIVA'
      Origin = 'importeIVA'
    end
  end
  object dsfacturas: TDataSource
    DataSet = fdfacturas
    Left = 839
    Top = 330
  end
  object fdobras: TFDQuery
    AfterOpen = fdobrasAfterOpen
    AfterRefresh = fdobrasAfterRefresh
    Connection = DataModule1.FDConnection1
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    SQL.Strings = (
      
        'select  o.id_obra, c.Nombre, o.Path, o.id_cliente, o.fechaComien' +
        'zo, o.descripcion, o.ImporteObra, o.FechaFin,o.Ejecutado'
      'from obras o, clientes c'
      'where c.idcontactos=o.ID_Cliente and  o.id_cliente=:id_cliente'
      '')
    Left = 349
    Top = 483
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdobrasid_obra: TFDAutoIncField
      FieldName = 'id_obra'
      Origin = 'ID_obra'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdobrasNombre: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nombre'
      Origin = 'Nombre'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object fdobrasPath: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'Path'
      Origin = 'Path'
      BlobType = ftMemo
    end
    object fdobrasid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Origin = 'ID_Cliente'
      Required = True
    end
    object fdobrasfechaComienzo: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'fechaComienzo'
      Origin = 'FechaComienzo'
    end
    object fdobrasdescripcion: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'descripcion'
      Origin = 'Descripcion'
      BlobType = ftMemo
    end
    object fdobrasImporteObra: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ImporteObra'
      Origin = 'ImporteObra'
    end
    object fdobrasFechaFin: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'FechaFin'
      Origin = 'FechaFin'
    end
    object fdobrasEjecutado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Ejecutado'
      Origin = 'Ejecutado'
    end
  end
  object dsobras: TDataSource
    DataSet = fdobras
    Left = 353
    Top = 537
  end
  object fdlineaspresupuesto: TFDQuery
    IndexFieldNames = 'presupuestos_id_presupuesto;presupuestos_grupo'
    MasterSource = dspresupuestos
    MasterFields = 'id_presupuesto;grupo'
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from lineaspresupuesto where'
      'presupuestos_id_presupuesto=:id_presupuesto and'
      'presupuestos_grupo=:grupo')
    Left = 433
    Top = 250
    ParamData = <
      item
        Name = 'ID_PRESUPUESTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'GRUPO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdlineaspresupuestoId_Partida: TIntegerField
      FieldName = 'Id_Partida'
      Origin = 'Id_Partida'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdlineaspresupuestoDescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = 'Descripcion'
      Size = 255
    end
    object fdlineaspresupuestoTotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total'
      Origin = 'Total'
    end
    object fdlineaspresupuestoAprovado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Aprovado'
      Origin = 'Aprovado'
    end
    object fdlineaspresupuestoEjecutado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Ejecutado'
      Origin = 'Ejecutado'
    end
    object fdlineaspresupuestopresupuestos_id_presupuesto: TIntegerField
      FieldName = 'presupuestos_id_presupuesto'
      Origin = 'presupuestos_id_presupuesto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdlineaspresupuestopresupuestos_grupo: TIntegerField
      FieldName = 'presupuestos_grupo'
      Origin = 'presupuestos_grupo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdlineaspresupuestoobra: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'obra'
      Origin = 'obra'
    end
    object fdlineaspresupuestofecha_aprobado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'fecha_aprobado'
      Origin = 'fecha_aprobado'
    end
  end
  object dslineasPresu: TDataSource
    DataSet = fdlineaspresupuesto
    Left = 425
    Top = 314
  end
  object fdlineasfacturas: TFDQuery
    IndexFieldNames = 'facturas_idfactura;facturas_ano'
    MasterSource = dsfacturas
    MasterFields = 'idfactura;ano'
    Connection = DataModule1.FDConnection1
    FetchOptions.AssignedValues = [evDetailCascade]
    SQL.Strings = (
      
        'select * from lineasfacturas where facturas_idfactura=:idfactura' +
        ' and facturas_ano=:ano')
    Left = 952
    Top = 265
    ParamData = <
      item
        Name = 'IDFACTURA'
        ParamType = ptInput
      end
      item
        Name = 'ANO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdlineasfacturasid_lineafactura: TFDAutoIncField
      FieldName = 'id_lineafactura'
      Origin = 'id_lineafactura'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdlineasfacturasdescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descripcion'
      Origin = 'descripcion'
      Size = 255
    end
    object fdlineasfacturastotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'total'
      Origin = 'total'
    end
    object fdlineasfacturasfacturas_ano: TIntegerField
      FieldName = 'facturas_ano'
      Origin = 'facturas_ano'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdlineasfacturasfacturas_idfactura: TIntegerField
      FieldName = 'facturas_idfactura'
      Origin = 'facturas_idfactura'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdlineasfacturascantidad: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'cantidad'
      Origin = 'cantidad'
    end
    object fdlineasfacturasimporte: TFloatField
      FieldName = 'importe'
      Origin = 'importe'
      Required = True
    end
    object fdlineasfacturasiva: TFloatField
      FieldName = 'iva'
      Origin = 'iva'
      Required = True
    end
    object fdlineasfacturasdescuento: TIntegerField
      FieldName = 'descuento'
      Origin = 'descuento'
      Required = True
    end
    object fdlineasfacturaslineasobras_id_lineaobra: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'lineasobras_id_lineaobra'
      Origin = 'lineasobras_id_lineaobra'
    end
    object fdlineasfacturaslineasobras_obras_ID_obra: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'lineasobras_obras_ID_obra'
      Origin = 'lineasobras_obras_ID_obra'
    end
    object fdlineasfacturasnlinea: TIntegerField
      FieldName = 'nlinea'
      Origin = 'nlinea'
      Required = True
    end
  end
  object dslineasFact: TDataSource
    DataSet = fdlineasfacturas
    Left = 943
    Top = 330
  end
  object FDlineasObras: TFDQuery
    MasterSource = dsobras
    MasterFields = 'id_obra'
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from lineasobras where obras_ID_obra=:ID_OBRA')
    Left = 432
    Top = 481
    ParamData = <
      item
        Name = 'ID_OBRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDlineasObrasid_lineaobra: TIntegerField
      FieldName = 'id_lineaobra'
      Origin = 'id_lineaobra'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDlineasObrasdescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descripcion'
      Origin = 'descripcion'
      Size = 255
    end
    object FDlineasObrastotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'total'
      Origin = 'total'
    end
    object FDlineasObrasejecutado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'ejecutado'
      Origin = 'ejecutado'
    end
    object FDlineasObrasobras_ID_obra: TIntegerField
      FieldName = 'obras_ID_obra'
      Origin = 'obras_ID_obra'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDlineasObraspresupuestos_id_presupuesto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'presupuestos_id_presupuesto'
      Origin = 'presupuestos_id_presupuesto'
    end
    object FDlineasObraspresupuestos_grupo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'presupuestos_grupo'
      Origin = 'presupuestos_grupo'
    end
    object FDlineasObraspresupuestos_Id_Partida: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'presupuestos_Id_Partida'
      Origin = 'presupuestos_Id_Partida'
    end
    object FDlineasObrasfacturas_id_factura: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'facturas_id_factura'
      Origin = 'facturas_id_factura'
    end
    object FDlineasObrasfacturas_ano: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'facturas_ano'
      Origin = 'facturas_ano'
    end
  end
  object dslineasObras: TDataSource
    DataSet = FDlineasObras
    Left = 433
    Top = 537
  end
  object fdContactos: TFDQuery
    MasterSource = dsclientes
    MasterFields = 'IdContactos'
    Connection = DataModule1.FDConnection1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select * from contactosclientes where id_cliente=:id_cliente')
    Left = 709
    Top = 603
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdContactosid_contacto: TFDAutoIncField
      FieldName = 'id_contacto'
      Origin = 'id_contacto'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdContactosid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      Required = True
    end
    object fdContactospta: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pta'
      Origin = 'pta'
      Size = 5
    end
    object fdContactosnombre: TStringField
      FieldName = 'nombre'
      Origin = 'nombre'
      Required = True
      Size = 50
    end
    object fdContactostelefono1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'telefono1'
      Origin = 'telefono1'
    end
    object fdContactostelefono2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'telefono2'
      Origin = 'telefono2'
    end
    object fdContactostelefono3: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'telefono3'
      Origin = 'telefono3'
    end
    object fdContactosmail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'mail'
      Origin = 'mail'
      Size = 100
    end
  end
  object dscontactos: TDataSource
    DataSet = fdContactos
    Left = 793
    Top = 609
  end
  object FDAdministradores: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select IdAdministrador, nombre from administradores')
    Left = 1037
    Top = 164
  end
end

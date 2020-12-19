object FPresupuestos: TFPresupuestos
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Presupuesto'
  ClientHeight = 782
  ClientWidth = 1169
  Color = clBtnFace
  Constraints.MaxWidth = 1300
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1169
    Height = 782
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 55
      Width = 1161
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
        Width = 1144
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
        object rDBCodigo: TrDBEdit
          AlignWithMargins = True
          Left = 56
          Top = 24
          Width = 41
          Height = 22
          CharCase = ecUpperCase
          DataField = 'idcontactos'
          DataSource = dscliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          DBEditLabel.OwnCaption = 'Codigo'
          DBEditLabel.Position = lpLeftCenter
        end
        object rDBCIF: TrDBEdit
          Left = 151
          Top = 24
          Width = 140
          Height = 22
          DataField = 'cif'
          DataSource = dscliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          DBEditLabel.OwnCaption = 'C.I.F'
          DBEditLabel.Position = lpLeftCenter
        end
        object rDBNombre: TrDBEdit
          Left = 360
          Top = 24
          Width = 335
          Height = 22
          DataField = 'nombre'
          DataSource = dscliente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          DBEditLabel.OwnCaption = 'Nombre'
          DBEditLabel.ShowRequiredMark = False
          DBEditLabel.Position = lpLeftCenter
          DBEditLabel.Color = clWhite
          DBEditLabel.ParentColor = False
        end
      end
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 154
      Width = 1161
      Height = 127
      Align = alTop
      Caption = 'Datos Presupuesto'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      DesignSize = (
        1161
        127)
      object spaprobado: TShape
        Left = 1020
        Top = 51
        Width = 25
        Height = 17
        Anchors = [akTop, akRight]
        Shape = stCircle
        ExplicitLeft = 980
      end
      object spNoaprobado: TShape
        Left = 1020
        Top = 74
        Width = 25
        Height = 17
        Anchors = [akTop, akRight]
        Shape = stCircle
        ExplicitLeft = 980
      end
      object spcarpetas: TShape
        Left = 1020
        Top = 97
        Width = 25
        Height = 17
        Anchors = [akTop, akRight]
        Shape = stCircle
        ExplicitLeft = 980
      end
      object Label2: TLabel
        Left = 1056
        Top = 52
        Width = 55
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Aprobado'
        ExplicitLeft = 1016
      end
      object Label3: TLabel
        Left = 1056
        Top = 75
        Width = 71
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'No aprobado'
        ExplicitLeft = 1016
      end
      object Label4: TLabel
        Left = 1056
        Top = 98
        Width = 51
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Carpetas'
        ExplicitLeft = 1016
      end
      object spdocumento: TShape
        Left = 1020
        Top = 28
        Width = 25
        Height = 17
        Anchors = [akTop, akRight]
        Shape = stCircle
        ExplicitLeft = 980
      end
      object Label13: TLabel
        Left = 1056
        Top = 29
        Width = 65
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Documento'
        ExplicitLeft = 1016
      end
      object btpath: TButton
        Left = 753
        Top = 89
        Width = 32
        Height = 26
        Anchors = [akTop, akRight]
        ImageIndex = 0
        Images = DataModule1.icopeque
        Style = bsCommandLink
        TabOrder = 4
        StyleElements = []
        OnClick = btpathClick
      end
      object rDBNumero: TrDBEdit
        Left = 84
        Top = 16
        Width = 80
        Height = 22
        DataField = 'id_presupuesto'
        DataSource = dspresupuesto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DBEditLabel.OwnCaption = 'N'#250'mero'
        DBEditLabel.Position = lpLeftCenter
        DBEditLabel.Font.Charset = DEFAULT_CHARSET
        DBEditLabel.Font.Color = clWindowText
        DBEditLabel.Font.Height = -11
        DBEditLabel.Font.Name = 'Tahoma'
        DBEditLabel.Font.Style = [fsBold]
        DBEditLabel.ParentFont = False
      end
      object rDBRutaPath: TrDBMemo
        Left = 84
        Top = 94
        Width = 600
        Height = 21
        DataField = 'Path'
        DataSource = dspresupuesto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        PopupMenu = rDBRutaPath.pmSearch
        ScrollBars = ssVertical
        TabOrder = 5
        DBEditLabel.OwnCaption = 'Ruta'
        DBEditLabel.ShowRequiredMark = False
        DBEditLabel.Position = lpLeftCenter
        DBEditLabel.Font.Charset = DEFAULT_CHARSET
        DBEditLabel.Font.Color = clWindowText
        DBEditLabel.Font.Height = -11
        DBEditLabel.Font.Name = 'Tahoma'
        DBEditLabel.Font.Style = []
        DBEditLabel.ParentFont = False
      end
      object rDBRutaDescripcion: TrDBMemo
        Left = 84
        Top = 55
        Width = 600
        Height = 21
        DataField = 'Descripcion'
        DataSource = dspresupuesto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        PopupMenu = rDBRutaPath.pmSearch
        ScrollBars = ssVertical
        TabOrder = 1
        DBEditLabel.OwnCaption = 'Descripci'#243'n'
        DBEditLabel.Position = lpLeftCenter
        DBEditLabel.Font.Charset = DEFAULT_CHARSET
        DBEditLabel.Font.Color = clWindowText
        DBEditLabel.Font.Height = -11
        DBEditLabel.Font.Name = 'Tahoma'
        DBEditLabel.Font.Style = [fsBold]
        DBEditLabel.ParentFont = False
      end
      object rDBDateTimePicker1: TrDBDateTimePicker
        Left = 431
        Top = 16
        Width = 113
        Height = 22
        Date = 43617.635961863420000000
        Time = 43617.635961863420000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        DataField = 'FechaPresupuesto'
        DataSource = dspresupuesto
        DBEditLabel.OwnCaption = 'Fecha'
        DBEditLabel.Position = lpLeftCenter
        DBEditLabel.Font.Charset = DEFAULT_CHARSET
        DBEditLabel.Font.Color = clWindowText
        DBEditLabel.Font.Height = -11
        DBEditLabel.Font.Name = 'Tahoma'
        DBEditLabel.Font.Style = []
        DBEditLabel.ParentFont = False
        FormatEmpty = '__.__.__'
      end
      object rDBEdit1: TrDBEdit
        Left = 252
        Top = 16
        Width = 80
        Height = 22
        DataField = 'grupo'
        DataSource = dspresupuesto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        DBEditLabel.OwnCaption = 'Grupo'
        DBEditLabel.Position = lpLeftCenter
        DBEditLabel.Font.Charset = DEFAULT_CHARSET
        DBEditLabel.Font.Color = clWindowText
        DBEditLabel.Font.Height = -11
        DBEditLabel.Font.Name = 'Tahoma'
        DBEditLabel.Font.Style = [fsBold]
        DBEditLabel.ParentFont = False
      end
    end
    object PageControl1: TPageControl
      AlignWithMargins = True
      Left = 4
      Top = 287
      Width = 1161
      Height = 282
      ActivePage = lineas
      Align = alTop
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = PageControl1Change
      object lineas: TTabSheet
        Caption = 'Lineas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        object ControlBar2: TControlBar
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1147
          Height = 32
          Align = alTop
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object ToolBar2: TToolBar
            Left = 314
            Top = 2
            Width = 72
            Height = 22
            AutoSize = True
            Caption = 'Editar'
            Images = ImageList1
            List = True
            TabOrder = 1
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
          object ToolBar3: TToolBar
            AlignWithMargins = True
            Left = 399
            Top = 2
            Width = 158
            Height = 48
            Caption = 'ToolBar3'
            Images = ImageList1
            TabOrder = 2
            object ToolButton14: TToolButton
              AlignWithMargins = True
              Left = 0
              Top = 0
              Action = AprobarTodos
            end
            object btn1: TToolButton
              Left = 23
              Top = 0
              Caption = 'btn1'
              ImageIndex = 4
              OnClick = btn1Click
            end
          end
          object RzDBNavigator1: TRzDBNavigator
            Left = 11
            Top = 2
            Width = 290
            Height = 22
            DataSource = dslineas
            BorderOuter = fsNone
            TabOrder = 0
          end
        end
        object rDBGridClientesDBGridLineas: TrDBGrid_MS
          Left = 0
          Top = 38
          Width = 1153
          Height = 131
          Align = alClient
          DataSource = dslineas
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 2
          RowFixHeight = 20
          FooterRow.FooterVisible = True
          FooterRow.FieldFooterDefs.Strings = (
            'Id_Partida=%COUNTVAL partidas;'
            'Total=%SUM '#8364';')
          FieldsAutoPickList.Strings = (
            'Descripcion'
            'tipo')
          OnLoadPickList = rDBGridClientesDBGridLineasLoadPickList
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Id_Partida'
              Title.Alignment = taCenter
              Title.Caption = 'Partida'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descripcion'
              Title.Caption = 'Descripci'#243'n'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 532
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Total'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 74
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Aprovado'
              Title.Alignment = taCenter
              Title.Caption = 'Aprobado'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 74
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Ejecutado'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 67
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'presupuestos_id_presupuesto'
              Title.Alignment = taRightJustify
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'presupuestos_grupo'
              Title.Alignment = taRightJustify
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'obra'
              Title.Alignment = taCenter
              Title.Caption = 'Obra'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 48
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'tipo'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 67
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'categoriades'
              Title.Alignment = taCenter
              Title.Caption = 'Categor'#237'a'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 118
              Visible = True
            end
            item
              Alignment = taCenter
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'diasejecucion'
              Title.Alignment = taCenter
              Title.Caption = 'Tiempo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 57
              Visible = True
            end
            item
              Alignment = taCenter
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'fecha_aprobado'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha Aprobado'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
        object rDBGrid2: TrDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 172
          Width = 1147
          Height = 79
          Align = alBottom
          DataSource = dspresupuesto
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          ColumnWidth = cwAutoWidth
          TitleLines = 2
          RowLines = 2
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Partidas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMenuHighlight
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 242
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMenuHighlight
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 183
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'partidasAprobadas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Partidas Aprobadas'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 381
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'TotalAprobado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Total Aprobado'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 299
              Visible = True
            end>
        end
      end
      object documentacion: TTabSheet
        Caption = 'Documentaci'#243'n'
        ImageIndex = 1
        object RzShellList1: TRzShellList
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1147
          Height = 248
          Align = alClient
          Enabled = False
          IconOptions.AutoArrange = True
          TabOrder = 0
        end
      end
      object fotografias: TTabSheet
        Caption = 'Fotograf'#237'as'
        ImageIndex = 2
        object RzShellList2: TRzShellList
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 855
          Height = 248
          Align = alClient
          Enabled = False
          IconOptions.AutoArrange = True
          MultiSelect = True
          TabOrder = 0
          OnSelectItem = RzShellList2SelectItem
        end
        object rImageZoom1: TrImageZoom
          AlignWithMargins = True
          Left = 864
          Top = 3
          Width = 286
          Height = 248
          Align = alRight
          DragCursor = crSizeAll
          PopupMenu = rImageZoom1._ImagePopup
          ReduceToFit = True
          SaveInJPG = False
        end
      end
      object ts1: TTabSheet
        Caption = 'Contactos'
        ImageIndex = 3
        object ctrlbr1: TControlBar
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1147
          Height = 32
          Align = alTop
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object tlb1: TToolBar
            Left = 314
            Top = 2
            Width = 72
            Height = 22
            AutoSize = True
            Caption = 'Editar'
            Images = ImageList1
            List = True
            TabOrder = 1
            object btn2: TToolButton
              Left = 0
              Top = 0
              Action = EditCut
            end
            object btn3: TToolButton
              Left = 23
              Top = 0
              Action = EditCopy
            end
            object btn4: TToolButton
              Left = 46
              Top = 0
              Action = EditPaste
            end
          end
          object tlb2: TToolBar
            AlignWithMargins = True
            Left = 399
            Top = 2
            Width = 158
            Height = 48
            ButtonHeight = 30
            ButtonWidth = 31
            Caption = 'ToolBar3'
            Images = DataModule1.icopeque
            TabOrder = 2
            object btn5: TToolButton
              Left = 0
              Top = 0
              Caption = 'btn1'
              ImageIndex = 12
              OnClick = btn1Click
            end
          end
          object RzDBNavigator2: TRzDBNavigator
            Left = 11
            Top = 2
            Width = 290
            Height = 22
            DataSource = dsContactosPresupuesto
            BorderOuter = fsNone
            TabOrder = 0
          end
        end
        object rDBGrid1: TrDBGrid
          Left = 0
          Top = 38
          Width = 1153
          Height = 216
          Align = alClient
          DataSource = dsContactosPresupuesto
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 2
          RowFixHeight = 23
          FixedColText.FixedColWidth = 23
          FooterRow.FooterVisible = True
          FooterRow.FieldFooterDefs.Strings = (
            'id_contacto=%COUNTVAL contactos;')
          Columns = <
            item
              Expanded = False
              FieldName = 'id_presupuesto'
              Title.Alignment = taRightJustify
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'id_contacto'
              Title.Alignment = taRightJustify
              Title.Caption = 'C'#243'digo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 50
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'pta'
              Title.Alignment = taCenter
              Title.Caption = 'Puerta'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nombre'
              Title.Caption = 'Nombre'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 245
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'telefono1'
              Title.Alignment = taCenter
              Title.Caption = 'Tel'#233'fono 1'
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
              Expanded = False
              FieldName = 'telefono2'
              Title.Alignment = taCenter
              Title.Caption = 'Tel'#233'fono 2'
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
              Expanded = False
              FieldName = 'telefono3'
              Title.Alignment = taCenter
              Title.Caption = 'Tel'#233'fono 3'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mail'
              Title.Caption = 'Mail'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 263
              Visible = True
            end>
        end
      end
    end
    object ToolBar1: TToolBar
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1161
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
        Action = guardarpresupuesto
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
        Action = abrirpresupuesto
        ParentShowHint = False
        ShowHint = True
      end
      object ToolButton2: TToolButton
        AlignWithMargins = True
        Left = 90
        Top = 0
        Action = guardarPDF
        Enabled = False
        ParentShowHint = False
        ShowHint = True
      end
      object ToolButton3: TToolButton
        AlignWithMargins = True
        Left = 131
        Top = 0
        Action = mail
        Enabled = False
        ParentShowHint = False
        ShowHint = True
      end
      object ToolButton5: TToolButton
        AlignWithMargins = True
        Left = 172
        Top = 0
        Action = crearObra
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
        Action = abrircarpeta
        Enabled = False
        ParentShowHint = False
        ShowHint = True
      end
      object ToolButton10: TToolButton
        Left = 262
        Top = 0
        Action = carpetadocumentacion
        Enabled = False
      end
      object ToolButton9: TToolButton
        AlignWithMargins = True
        Left = 303
        Top = 0
        Hint = 'Salir'
        Action = cerrarpres
        ParentShowHint = False
        ShowHint = True
      end
    end
    object GroupBox3: TGroupBox
      AlignWithMargins = True
      Left = 402
      Top = 575
      Width = 439
      Height = 176
      Margins.Bottom = 30
      Align = alLeft
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Trabajadores Asignados'
      TabOrder = 4
      object rdbtrabajAsig: TrDBGrid_MS
        AlignWithMargins = True
        Left = 5
        Top = 47
        Width = 429
        Height = 124
        Align = alClient
        DataSource = dstrabajAsignados
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        ColumnWidth = cwAutoWidth
        TitleLines = 2
        RowLines = 2
        RowVerticalAlign = taVerticalCenter
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'id_trabajador'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nombre'
            Title.Caption = 'Trabajador'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 258
            Visible = True
          end>
      end
      object ToolBar4: TToolBar
        Left = 2
        Top = 15
        Width = 435
        Height = 29
        Caption = 'ToolBar4'
        TabOrder = 1
        object RzDBNavigator3: TRzDBNavigator
          Left = 0
          Top = 0
          Width = 290
          Height = 22
          DataSource = dstrabajAsignados
          BorderOuter = fsNone
          TabOrder = 0
        end
      end
    end
    object GroupBox5: TGroupBox
      AlignWithMargins = True
      Left = 858
      Top = 579
      Width = 307
      Height = 199
      Margins.Top = 7
      Align = alRight
      Anchors = [akRight, akBottom]
      TabOrder = 5
      DesignSize = (
        307
        199)
      object Shape1: TShape
        Left = 17
        Top = -2
        Width = 22
        Height = 44
        Anchors = [akTop, akRight]
        Shape = stCircle
      end
      object Guardar: TButton
        Left = 142
        Top = 12
        Width = 80
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Guardar'
        Enabled = False
        Images = DataModule1.ImageList1
        TabOrder = 2
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
        TabOrder = 1
        OnClick = cerrarClick
      end
    end
    object GroupBox6: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 575
      Width = 392
      Height = 176
      Margins.Bottom = 30
      Align = alLeft
      Caption = 'Observaciones'
      TabOrder = 6
      object rDBMemo2: TrDBMemo
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 382
        Height = 153
        Align = alClient
        DataField = 'observaciones'
        DataSource = dspresupuesto
        PopupMenu = rDBMemo2.pmSearch
        ScrollBars = ssVertical
        TabOrder = 0
        DBEditLabel.OwnCaption = ' '
      end
    end
  end
  object fdCliente: TFDQuery
    AfterOpen = fdClienteAfterOpen
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
  object fdpresupuesto: TFDQuery
    AfterInsert = fdpresupuestoAfterInsert
    AfterEdit = fdpresupuestoAfterEdit
    CachedUpdates = True
    AfterApplyUpdates = fdpresupuestoAfterApplyUpdates
    Connection = DataModule1.FDConnection1
    SchemaAdapter = FDSchemaAdapter1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      
        'select * from presupuestos P, clientes C where id_presupuesto=:i' +
        'd_presupuesto and grupo=:grupo and C.IdContactos=P.id_clientePre' +
        'v')
    Left = 556
    Top = 172
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
    object fdpresupuestoid_presupuesto: TIntegerField
      FieldName = 'id_presupuesto'
      Origin = 'id_presupuesto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdpresupuestoId_ClientePrev: TIntegerField
      FieldName = 'Id_ClientePrev'
      Origin = 'Id_ClientePrev'
      Required = True
    end
    object mfldDescripcion: TMemoField
      FieldName = 'Descripcion'
      Origin = 'Descripcion'
      Required = True
      BlobType = ftMemo
    end
    object mfldPath: TMemoField
      FieldName = 'Path'
      Origin = 'Path'
      Required = True
      OnChange = mfldPathChange
      BlobType = ftMemo
    end
    object blnfldAprovado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Aprovado'
      Origin = 'Aprovado'
    end
    object blnfldEjecutado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Ejecutado'
      Origin = 'Ejecutado'
    end
    object dtmfldFechaPresupuesto: TDateTimeField
      FieldName = 'FechaPresupuesto'
      Origin = 'FechaPresupuesto'
      Required = True
      OnChange = dtmfldFechaPresupuestoChange
    end
    object fltfldTotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total'
      Origin = 'Total'
      currency = True
    end
    object fdpresupuestoPartidas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Partidas'
      Origin = 'Partidas'
    end
    object fltfldTotalAprobado: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TotalAprobado'
      Origin = 'TotalAprobado'
      currency = True
    end
    object mfldDescripcionAprovado: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'DescripcionAprovado'
      Origin = 'DescripcionAprovado'
      BlobType = ftMemo
    end
    object fdpresupuestogrupo: TIntegerField
      FieldName = 'grupo'
      Origin = 'grupo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdpresupuestopartidasAprobadas: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'partidasAprobadas'
      Origin = 'partidasAprobadas'
    end
    object mfldfdpresupuestoobservaciones: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'observaciones'
      Origin = 'observaciones'
      BlobType = ftMemo
    end
  end
  object fdlineas1: TFDQuery
    AfterOpen = fdlineas1AfterOpen
    AfterInsert = fdlineas1AfterInsert
    AfterEdit = fdlineas1AfterEdit
    AfterPost = fdlineas1AfterPost
    AfterDelete = fdlineas1AfterDelete
    CachedUpdates = True
    IndexFieldNames = 'presupuestos_id_presupuesto;presupuestos_grupo'
    Aggregates = <
      item
        Name = 'SUMATOTAL'
        Expression = 'SUM(TOTAL)'
        Active = True
      end
      item
        Name = 'SUMAPROBADOS'
        Expression = 'SUM(IF(APROVADO=TRUE,TOTAL,0))'
        Active = True
      end>
    MasterSource = dspresupuesto
    MasterFields = 'id_presupuesto;grupo'
    DetailFields = 'presupuestos_id_presupuesto;presupuestos_grupo'
    Connection = DataModule1.FDConnection1
    SchemaAdapter = FDSchemaAdapter1
    SQL.Strings = (
      
        'select * from lineaspresupuesto where presupuestos_id_Presupuest' +
        'o=:id_presupuesto and presupuestos_grupo=:grupopresupuesto order' +
        ' by id_partida ASC')
    Left = 440
    Top = 435
    ParamData = <
      item
        Name = 'ID_PRESUPUESTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'GRUPOPRESUPUESTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdlineas1Id_Partida: TIntegerField
      FieldName = 'Id_Partida'
      Origin = 'Id_Partida'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdlineas1Descripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = 'Descripcion'
      Size = 255
    end
    object fdlineas1Total: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total'
      Origin = 'Total'
    end
    object fdlineas1Aprovado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Aprovado'
      Origin = 'Aprovado'
      OnChange = FdlineasAprovadoChange
    end
    object fdlineas1Ejecutado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Ejecutado'
      Origin = 'Ejecutado'
    end
    object fdlineas1presupuestos_id_presupuesto: TIntegerField
      FieldName = 'presupuestos_id_presupuesto'
      Origin = 'presupuestos_id_presupuesto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdlineas1presupuestos_grupo: TIntegerField
      FieldName = 'presupuestos_grupo'
      Origin = 'presupuestos_grupo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdlineas1obra: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'obra'
      Origin = 'obra'
    end
    object fdlineas1fecha_aprobado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'fecha_aprobado'
      Origin = 'fecha_aprobado'
    end
  end
  object dialruta: TOpenDialog
    Left = 628
    Top = 148
  end
  object ActionManager1: TActionManager
    Images = DataModule1.ImageList1
    Left = 612
    Top = 20
    StyleName = 'Platform Default'
    object abrircarpeta: TAction
      Caption = 'Abrir carpeta'
      Hint = 'Carpeta de presupuestos'
      ImageIndex = 14
      OnExecute = abrircarpetaExecute
      OnUpdate = abrircarpetaUpdate
    end
    object abrirpresupuesto: TAction
      Caption = 'Abrir Presupuesto'
      Hint = 'Abrir presupuesto'
      ImageIndex = 13
      OnExecute = abrirpresupuestoExecute
      OnUpdate = abrirpresupuestoUpdate
    end
    object guardarpresupuesto: TAction
      Caption = 'Guardar'
      Enabled = False
      Hint = 'Guardar Presupuesto'
      ImageIndex = 7
      OnExecute = guardarpresupuestoExecute
    end
    object guardarPDF: TAction
      Caption = 'PDF'
      Hint = 'Guardar en PDF'
      ImageIndex = 11
      OnExecute = guardarPDFExecute
      OnUpdate = guardarPDFUpdate
    end
    object mail: TAction
      Caption = 'Mail'
      Hint = 'Enviar mail'
      ImageIndex = 12
      OnExecute = mailExecute
      OnUpdate = mailUpdate
    end
    object cerrarpres: TAction
      Caption = 'Cerrar Presupuesto'
      Hint = 'Cerrar'
      ImageIndex = 15
      OnExecute = cerrarpresExecute
    end
    object carpetadocumentacion: TAction
      Caption = 'Carpetas documentaci'#243'n'
      Hint = 'Carpetas documentaci'#243'n y fotograf'#237'as'
      ImageIndex = 8
      OnExecute = carpetadocumentacionExecute
      OnUpdate = carpetadocumentacionUpdate
    end
    object crearObra: TAction
      Caption = 'Nueva obra'
      Hint = 'Nueva obra'
      ImageIndex = 22
      OnExecute = crearObraExecute
      OnUpdate = crearObraUpdate
    end
  end
  object dspresupuesto: TDataSource
    DataSet = fdpresupuesto
    Left = 616
    Top = 264
  end
  object ImageList1: TImageList
    Left = 688
    Top = 441
    Bitmap = {
      494C0101040008000C0110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 992
    Top = 49
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
      OnExecute = AprobarTodosExecute
    end
  end
  object dslineas: TDataSource
    DataSet = Fdlineas
    Left = 360
    Top = 439
  end
  object dscliente: TDataSource
    DataSet = fdCliente
    Left = 460
    Top = 28
  end
  object fdqryContactosPresupuesto: TFDQuery
    AfterInsert = fdqryContactosPresupuestoAfterInsert
    AfterEdit = fdqryContactosPresupuestoAfterEdit
    AfterDelete = fdqryContactosPresupuestoAfterDelete
    CachedUpdates = True
    AfterApplyUpdates = fdqryContactosPresupuestoAfterApplyUpdates
    Connection = DataModule1.FDConnection1
    SchemaAdapter = FDSchemaAdapter1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      
        'SELECT * FROM presupuestoscontactos where id_presupuesto=:idpres' +
        'upuesto and grupo=:grupo')
    Left = 568
    Top = 439
    ParamData = <
      item
        Name = 'IDPRESUPUESTO'
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
    object fdqryContactosPresupuestoid_presupuesto: TIntegerField
      FieldName = 'id_presupuesto'
      Origin = 'id_presupuesto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryContactosPresupuestoid_contacto: TIntegerField
      FieldName = 'id_contacto'
      Origin = 'id_contacto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryContactosPresupuestopta: TStringField
      FieldKind = fkLookup
      FieldName = 'pta'
      LookupDataSet = fdqrycontactoscliente
      LookupKeyFields = 'id_contacto'
      LookupResultField = 'pta'
      KeyFields = 'id_contacto'
      Lookup = True
    end
    object fdqryContactosPresupuestonombre: TStringField
      FieldKind = fkLookup
      FieldName = 'nombre'
      LookupDataSet = fdqrycontactoscliente
      LookupKeyFields = 'id_contacto'
      LookupResultField = 'nombre'
      KeyFields = 'id_contacto'
      Lookup = True
    end
    object fdqryContactosPresupuestotelefono1: TIntegerField
      FieldKind = fkLookup
      FieldName = 'telefono1'
      LookupDataSet = fdqrycontactoscliente
      LookupKeyFields = 'id_contacto'
      LookupResultField = 'telefono1'
      KeyFields = 'id_contacto'
      Lookup = True
    end
    object fdqryContactosPresupuestotelefono2: TIntegerField
      FieldKind = fkLookup
      FieldName = 'telefono2'
      LookupDataSet = fdqrycontactoscliente
      LookupKeyFields = 'id_contacto'
      LookupResultField = 'telefono2'
      KeyFields = 'id_contacto'
      Lookup = True
    end
    object fdqryContactosPresupuestotelefono3: TIntegerField
      FieldKind = fkLookup
      FieldName = 'telefono3'
      LookupDataSet = fdqrycontactoscliente
      LookupKeyFields = 'id_contacto'
      LookupResultField = 'telefono3'
      KeyFields = 'id_contacto'
      Lookup = True
    end
    object fdqryContactosPresupuestomail: TStringField
      FieldKind = fkLookup
      FieldName = 'mail'
      LookupDataSet = fdqrycontactoscliente
      LookupKeyFields = 'id_contacto'
      LookupResultField = 'mail'
      KeyFields = 'id_contacto'
      Lookup = True
    end
    object fdqryContactosPresupuestogrupo: TIntegerField
      FieldName = 'grupo'
      Required = True
    end
  end
  object fdqrycontactoscliente: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from contactosclientes where id_cliente=:idcliente')
    Left = 792
    Top = 559
    ParamData = <
      item
        Name = 'IDCLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsContactosPresupuesto: TDataSource
    DataSet = fdqryContactosPresupuesto
    Left = 784
    Top = 455
  end
  object FDSchemaAdapter1: TFDSchemaAdapter
    AfterApplyUpdate = FDSchemaAdapter1AfterApplyUpdate
    Left = 272
    Top = 439
  end
  object Fdlineas: TFDQuery
    AfterOpen = fdlineas1AfterOpen
    AfterInsert = fdlineas1AfterInsert
    AfterEdit = fdlineas1AfterEdit
    AfterPost = fdlineas1AfterPost
    AfterDelete = fdlineas1AfterDelete
    CachedUpdates = True
    IndexFieldNames = 'presupuestos_id_presupuesto;presupuestos_grupo'
    Aggregates = <
      item
        Name = 'SUMATOTAL'
        Expression = 'SUM(TOTAL)'
        Active = True
      end
      item
        Name = 'SUMAPROBADOS'
        Expression = 'SUM(IIF(APROVADO=TRUE,TOTAL,0))'
        Active = True
      end
      item
        Name = 'TOTALAPROBADOS'
        Expression = 'SUM(IIF(APROVADO=TRUE,1,0))'
        Active = True
      end>
    AggregatesActive = True
    MasterSource = dspresupuesto
    MasterFields = 'id_presupuesto;grupo'
    Connection = DataModule1.FDConnection1
    SchemaAdapter = FDSchemaAdapter1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select * from lineaspresupuesto ')
    Left = 176
    Top = 439
    object FdlineasId_Partida: TIntegerField
      FieldName = 'Id_Partida'
      Origin = 'Id_Partida'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FdlineasDescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = 'Descripcion'
      Size = 255
    end
    object FdlineasTotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total'
      Origin = 'Total'
      currency = True
    end
    object FdlineasAprovado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Aprovado'
      Origin = 'Aprovado'
      OnChange = FdlineasAprovadoChange
    end
    object FdlineasEjecutado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Ejecutado'
      Origin = 'Ejecutado'
    end
    object Fdlineaspresupuestos_id_presupuesto: TIntegerField
      FieldName = 'presupuestos_id_presupuesto'
      Origin = 'presupuestos_id_presupuesto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Fdlineaspresupuestos_grupo: TIntegerField
      FieldName = 'presupuestos_grupo'
      Origin = 'presupuestos_grupo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Fdlineasobra: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'obra'
      Origin = 'obra'
    end
    object Fdlineasfecha_aprobado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'fecha_aprobado'
      Origin = 'fecha_aprobado'
    end
    object Fdlineasdiasejecucion: TIntegerField
      FieldName = 'diasejecucion'
      Required = True
    end
    object Fdlineastipo: TStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
      FixedChar = True
      Size = 8
    end
    object Fdlineascategoria: TIntegerField
      FieldName = 'categoria'
      Origin = 'categoria'
      Required = True
    end
    object Fdlineascategoriades: TStringField
      FieldKind = fkLookup
      FieldName = 'categoriades'
      LookupDataSet = fdcategoria
      LookupKeyFields = 'id_categoriapresupuestos'
      LookupResultField = 'descripcion'
      KeyFields = 'categoria'
      Lookup = True
    end
  end
  object fdtrabajAsignados: TFDQuery
    AfterInsert = fdlineas1AfterEdit
    AfterEdit = fdlineas1AfterEdit
    AfterDelete = fdlineas1AfterEdit
    CachedUpdates = True
    IndexFieldNames = 'id_presupuesto;grupo'
    MasterSource = dspresupuesto
    MasterFields = 'id_presupuesto;grupo'
    Connection = DataModule1.FDConnection1
    SchemaAdapter = FDSchemaAdapter1
    SQL.Strings = (
      'Select * from presupuestostrabajadores PT')
    Left = 624
    Top = 631
    object fdtrabajAsignadosid_presupuesto: TIntegerField
      FieldName = 'id_presupuesto'
      Origin = 'id_presupuesto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdtrabajAsignadosgrupo: TIntegerField
      FieldName = 'grupo'
      Origin = 'grupo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdtrabajAsignadosid_trabajador: TIntegerField
      FieldName = 'id_trabajador'
      Origin = 'id_trabajador'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdtrabajAsignadosnombre: TStringField
      FieldKind = fkLookup
      FieldName = 'nombre'
      LookupDataSet = fdtrabajadores
      LookupKeyFields = 'id_trabajador'
      LookupResultField = 'nombre'
      KeyFields = 'id_trabajador'
      Lookup = True
    end
  end
  object dstrabajAsignados: TDataSource
    DataSet = fdtrabajAsignados
    Left = 490
    Top = 671
  end
  object fdtrabajadores: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select id_trabajador, nombre from trabajadores where activado = ' +
        'true')
    Left = 728
    Top = 648
  end
  object fdcategoria: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from categoriapresupuestos')
    Left = 884
    Top = 242
  end
end

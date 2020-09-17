object FCalendario: TFCalendario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Calendario'
  ClientHeight = 636
  ClientWidth = 1296
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 943
    Top = 29
    Width = 5
    Height = 550
    ExplicitLeft = 754
    ExplicitTop = 35
    ExplicitHeight = 243
  end
  object Splitter3: TSplitter
    Left = 0
    Top = 579
    Width = 1296
    Height = 5
    Cursor = crVSplit
    Align = alBottom
    ExplicitLeft = -8
    ExplicitTop = 323
  end
  object Button3: TButton
    Left = 753
    Top = 56
    Width = 75
    Height = 25
    Caption = 'guardar'
    TabOrder = 0
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 617
    Width = 1296
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 1
  end
  object RzToolbar1: TRzToolbar
    Left = 0
    Top = 0
    Width = 1296
    Height = 29
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = [sdTop]
    BorderWidth = 0
    TabOrder = 2
  end
  object RzPanel3: TRzPanel
    Left = 0
    Top = 29
    Width = 185
    Height = 550
    Align = alLeft
    DockSite = True
    TabOrder = 3
    OnDockOver = RzPanel1DockOver
    object RzCalendar1: TRzCalendar
      Left = 4
      Top = 4
      Width = 177
      Height = 236
      OnChange = RzCalendar1Change
      Align = alClient
      BorderOuter = fsLowered
      Constraints.MaxHeight = 236
      TabOrder = 0
    end
  end
  object RzPanel2: TRzPanel
    Left = 185
    Top = 29
    Width = 758
    Height = 550
    Align = alLeft
    TabOrder = 4
    object Splitter1: TSplitter
      Left = 2
      Top = 126
      Width = 754
      Height = 5
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 107
      ExplicitWidth = 276
    end
    object rGroupBox2: TrGroupBox
      Left = 2
      Top = 2
      Width = 754
      Height = 124
      Align = alTop
      Caption = 'Trabajadores'
      TabOrder = 0
      CaptionHeight = 25
      CaptionColor = clSilver
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -16
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      CaptionParentFont = False
      CaptionAlignment = taLeftJustify
      object rDBGrid_MS1: TrDBGrid_MS
        Left = 2
        Top = 28
        Width = 750
        Height = 94
        Align = alClient
        DataSource = ds1
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        ColumnWidth = cwAutoWidth
        RowFixHeight = 25
        RowVerticalAlign = taVerticalCenter
        FixedColText.FixedColWidth = 30
        FixedColText.ShowCheckbox = True
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
            Width = 226
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
            Width = 401
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'dias'
            Title.Alignment = taCenter
            Title.Caption = 'D'#237'as'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
    object rGroupBox4: TrGroupBox
      Left = 2
      Top = 131
      Width = 754
      Height = 417
      Align = alClient
      Caption = 'Obras'
      TabOrder = 1
      CaptionHeight = 25
      CaptionColor = clSilver
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -16
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      CaptionParentFont = False
      CaptionAlignment = taLeftJustify
      object rDBGrid2: TrDBGrid
        Left = 2
        Top = 28
        Width = 750
        Height = 387
        Align = alClient
        DataSource = ds2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        ColumnWidth = cwAutoWidth
        ColumnWidthAfterDblClick = cwAutoWidth
        RowFixHeight = 25
        RowVerticalAlign = taVerticalCenter
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_obra'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
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
            Width = 159
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descripcion'
            Title.Caption = 'Descripci'#243'n'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 406
            Visible = True
          end
          item
            Alignment = taCenter
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'FechaComienzo'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha Inicio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 79
            Visible = True
          end>
      end
    end
  end
  object RzPanel4: TRzPanel
    Left = 948
    Top = 29
    Width = 348
    Height = 550
    Align = alClient
    TabOrder = 5
    object rGroupBox3: TrGroupBox
      Left = 2
      Top = 2
      Width = 344
      Height = 546
      Align = alClient
      Caption = 'D'#237'a'
      TabOrder = 0
      CaptionHeight = 35
      CaptionColor = clSilver
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -27
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      CaptionParentFont = False
      CaptionAlignment = taLeftJustify
      object rDBGrid_MS3: TrDBGrid_MS
        Left = 2
        Top = 92
        Width = 340
        Height = 452
        Align = alClient
        DataSource = ds3
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
            Expanded = False
            FieldName = 'trabajador'
            Title.Caption = 'Trabajador'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cliente'
            Title.Caption = 'Obra'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 162
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'horas'
            Title.Alignment = taCenter
            Title.Caption = 'Horas'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 48
            Visible = True
          end>
      end
      object RzToolbar2: TRzToolbar
        Left = 2
        Top = 38
        Width = 340
        Height = 54
        Images = DataModule1.ImageList2
        BorderInner = fsNone
        BorderOuter = fsGroove
        BorderSides = [sdTop]
        BorderWidth = 0
        TabOrder = 1
        ToolbarControls = (
          RzToolButton1
          RzToolButton2
          RzToolButton3
          RzSpacer1
          RzToolButton4
          RzDBNavigator1
          RzToolButton5)
        object RzToolButton1: TRzToolButton
          Left = 4
          Top = 2
          Hint = 'Nuevo'
          ImageIndex = 19
          ParentShowHint = False
          ShowHint = True
          OnClick = ToolButton1Click
        end
        object RzToolButton2: TRzToolButton
          Left = 29
          Top = 2
          ImageIndex = 20
          Action = revertir
          ParentShowHint = False
          ShowHint = True
        end
        object RzToolButton3: TRzToolButton
          Left = 54
          Top = 2
          ImageIndex = 18
          Action = guardar
          ParentShowHint = False
          ShowHint = True
        end
        object RzSpacer1: TRzSpacer
          Left = 79
          Top = 2
        end
        object RzToolButton4: TRzToolButton
          Left = 87
          Top = 2
          Hint = 'Copia un d'#237'a'
          ImageIndex = 21
          ParentShowHint = False
          ShowHint = True
          OnClick = Button5Click
        end
        object RzToolButton5: TRzToolButton
          Left = 236
          Top = 27
          OnClick = Button4Click
        end
        object RzDBNavigator1: TRzDBNavigator
          Left = 4
          Top = 27
          Width = 232
          Height = 25
          DataSource = ds3
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbPost, nbCancel, nbRefresh]
          BorderOuter = fsNone
          TabOrder = 0
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 584
    Width = 1296
    Height = 33
    Align = alBottom
    TabOrder = 6
    object rGroupBox1: TrGroupBox
      Left = 1
      Top = 1
      Width = 1294
      Height = 31
      Align = alClient
      Caption = 'rGroupBox1'
      TabOrder = 0
      CaptionHeight = 35
      CaptionColor = clSilver
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -27
      CaptionFont.Name = 'Tahoma'
      CaptionFont.Style = [fsBold]
      CaptionParentFont = False
      CaptionAlignment = taLeftJustify
      object StringGrid1: TStringGrid
        Left = 2
        Top = 38
        Width = 1290
        Height = 7
        Align = alClient
        DefaultDrawing = False
        TabOrder = 0
        OnDrawCell = StringGrid1DrawCell
        ColWidths = (
          64
          64
          64
          64
          64)
        RowHeights = (
          24
          24
          24
          24
          24)
      end
    end
  end
  object FDTrabajadores: TFDQuery
    OnCalcFields = FDTrabajadoresCalcFields
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select   id_trabajador,nombre from trabajadores where activado=t' +
        'rue')
    Left = 216
    Top = 104
    object FDTrabajadoresid_trabajador: TFDAutoIncField
      FieldName = 'id_trabajador'
      Origin = 'id_trabajador'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTrabajadoresnombre: TStringField
      FieldName = 'nombre'
      Origin = 'Nombre'
      Required = True
      Size = 255
    end
    object FDTrabajadoresdias: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'dias'
      Calculated = True
    end
  end
  object FDObras: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select O.ID_obra,LO.Descripcion, LO.id_lineaobra, LO.FechaComien' +
        'zo, C.nombre from obras O, lineasobras LO, clientes C where O.Id' +
        '_Obra=LO.obras_ID_Obra and O.id_cliente=C.IdContactos and LO.fec' +
        'hafin is null order by C.nombre,LO.id_lineaobra')
    Left = 272
    Top = 456
  end
  object ds1: TDataSource
    DataSet = FDTrabajadores
    Left = 400
    Top = 128
  end
  object ds2: TDataSource
    DataSet = FDObras
    Left = 896
    Top = 176
  end
  object ds3: TDataSource
    DataSet = fdcalendario
    Left = 760
    Top = 168
  end
  object fdcalendario: TFDQuery
    CachedUpdates = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select C.id_cal,C.id_trabajador,C.fecha_trabajo, C.id_obra,C.id_' +
        'lineaobra,C.horas,LO.descripcion from calendario C, lineasobras ' +
        'LO where C.id_obra=LO.obras_id_obra and C.id_lineaobra=LO.id_lin' +
        'eaobra and  Month(fecha_trabajo)=:mes')
    Left = 760
    Top = 112
    ParamData = <
      item
        Name = 'MES'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdcalendarioid_cal: TFDAutoIncField
      FieldName = 'id_cal'
      Origin = 'id_cal'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdcalendarioid_trabajador: TIntegerField
      FieldName = 'id_trabajador'
      Origin = 'id_trabajador'
      Required = True
    end
    object fdcalendarioid_obra: TIntegerField
      FieldName = 'id_obra'
      Origin = 'id_obra'
      Required = True
    end
    object fdcalendariofecha_trabajo: TDateField
      FieldName = 'fecha_trabajo'
      Origin = 'fecha_trabajo'
      Required = True
    end
    object fdcalendariotrabajador: TStringField
      FieldKind = fkLookup
      FieldName = 'trabajador'
      LookupDataSet = DataModule1.fdtrabajadores
      LookupKeyFields = 'id_trabajador'
      LookupResultField = 'nombre'
      KeyFields = 'id_trabajador'
      Lookup = True
    end
    object fdcalendariocliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = fdObrasclientes
      LookupKeyFields = 'ID_obra'
      LookupResultField = 'nombre'
      KeyFields = 'id_obra'
      OnGetText = fdcalendarioclienteGetText
      Size = 40
      Lookup = True
    end
    object fdcalendarioid_lineaobra: TIntegerField
      FieldName = 'id_lineaobra'
      Origin = 'id_lineaobra'
      Required = True
    end
    object fdcalendariohoras: TIntegerField
      FieldName = 'horas'
      Origin = 'horas'
      Required = True
    end
    object fdcalendariodescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descripcion'
      Origin = 'descripcion'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
  end
  object ActionManager1: TActionManager
    Left = 673
    Top = 345
    StyleName = 'Platform Default'
    object guardar: TAction
      Caption = 'guardar'
      OnExecute = guardarExecute
      OnUpdate = guardarUpdate
    end
    object revertir: TAction
      Caption = 'revertir'
      OnExecute = revertirExecute
      OnUpdate = revertirUpdate
    end
  end
  object fdObrasclientes: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select O.id_obra, C.nombre from clientes C, obras O where C.idco' +
        'ntactos=O.id_cliente ')
    Left = 795
    Top = 456
  end
end
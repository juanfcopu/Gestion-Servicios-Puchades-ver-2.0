object FPresupuestos: TFPresupuestos
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Presupuesto'
  ClientHeight = 744
  ClientWidth = 919
  Color = clBtnFace
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 919
    Height = 744
    Align = alClient
    TabOrder = 0
    DesignSize = (
      919
      744)
    object Shape1: TShape
      Left = 620
      Top = 686
      Width = 22
      Height = 44
      Anchors = [akTop, akRight]
      Shape = stCircle
    end
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 55
      Width = 911
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
      TabOrder = 0
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 12
        Top = 18
        Width = 894
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
        object LabeledEdit1: TLabeledEdit
          AlignWithMargins = True
          Left = 65
          Top = 24
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
          LabelPosition = lpLeft
          ParentFont = False
          TabOrder = 0
        end
        object LabeledEdit2: TLabeledEdit
          AlignWithMargins = True
          Left = 361
          Top = 24
          Width = 337
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
          TabOrder = 2
        end
        object LabeledEdit3: TLabeledEdit
          AlignWithMargins = True
          Left = 160
          Top = 24
          Width = 140
          Height = 21
          EditLabel.Width = 25
          EditLabel.Height = 13
          EditLabel.Caption = 'C.I.F'
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
          TabOrder = 1
        end
        object Button1: TButton
          Left = 701
          Top = 16
          Width = 32
          Height = 32
          HotImageIndex = 1
          ImageAlignment = iaCenter
          ImageIndex = 0
          Images = DataModule1.icopeque
          PressedImageIndex = 0
          Style = bsCommandLink
          TabOrder = 3
          StyleElements = []
          OnClick = Button1Click
        end
      end
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 154
      Width = 911
      Height = 105
      Align = alTop
      Caption = 'Datos Presupuesto'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 238
        Top = 35
        Width = 29
        Height = 13
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object spaprobado: TShape
        Left = 775
        Top = 32
        Width = 25
        Height = 17
        Shape = stCircle
      end
      object spNoaprobado: TShape
        Left = 775
        Top = 55
        Width = 25
        Height = 17
        Shape = stCircle
      end
      object spcarpetas: TShape
        Left = 775
        Top = 78
        Width = 25
        Height = 17
        Shape = stCircle
      end
      object Label2: TLabel
        Left = 811
        Top = 33
        Width = 55
        Height = 13
        Caption = 'Aprobado'
      end
      object Label3: TLabel
        Left = 811
        Top = 56
        Width = 71
        Height = 13
        Caption = 'No aprobado'
      end
      object Label4: TLabel
        Left = 811
        Top = 79
        Width = 51
        Height = 13
        Caption = 'Carpetas'
      end
      object LabeledEdit4: TLabeledEdit
        Left = 77
        Top = 32
        Width = 129
        Height = 21
        EditLabel.Width = 37
        EditLabel.Height = 13
        EditLabel.Caption = 'N'#250'mero'
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
        TabOrder = 0
      end
      object LabeledEdit6: TLabeledEdit
        Left = 448
        Top = 32
        Width = 57
        Height = 21
        EditLabel.Width = 39
        EditLabel.Height = 13
        EditLabel.Caption = 'Partidas'
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
        TabOrder = 1
      end
      object LabeledEdit7: TLabeledEdit
        Left = 616
        Top = 32
        Width = 129
        Height = 21
        EditLabel.Width = 87
        EditLabel.Height = 13
        EditLabel.Caption = 'Total Presupuesto'
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
        TabOrder = 2
      end
      object LabeledEdit8: TLabeledEdit
        Left = 77
        Top = 72
        Width = 633
        Height = 21
        EditLabel.Width = 23
        EditLabel.Height = 13
        EditLabel.Caption = 'Ruta'
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
      object DateTimePicker1: TDateTimePicker
        Left = 272
        Top = 32
        Width = 113
        Height = 21
        Date = 43089.918521747680000000
        Time = 43089.918521747680000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnChange = DateTimePicker1Change
      end
      object Button2: TButton
        Left = 713
        Top = 64
        Width = 32
        Height = 32
        ImageIndex = 0
        Images = DataModule1.icopeque
        Style = bsCommandLink
        TabOrder = 5
        StyleElements = []
        OnClick = Button2Click
      end
    end
    object PageControl1: TPageControl
      AlignWithMargins = True
      Left = 4
      Top = 265
      Width = 911
      Height = 419
      ActivePage = lineas
      Align = alTop
      Anchors = [akTop]
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnResize = PageControl1Resize
      object lineas: TTabSheet
        Caption = 'Lineas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        object Label5: TLabel
          Left = 828
          Top = 292
          Width = 31
          Height = 13
          Caption = 'Label5'
        end
        object Label6: TLabel
          Left = 828
          Top = 308
          Width = 31
          Height = 13
          Caption = 'Label5'
        end
        object Label7: TLabel
          Left = 828
          Top = 339
          Width = 31
          Height = 13
          Caption = 'Label5'
        end
        object Label8: TLabel
          Left = 828
          Top = 273
          Width = 31
          Height = 13
          Caption = 'Label5'
        end
        object StringGrid1: TStringGrid
          Tag = 5
          AlignWithMargins = True
          Left = 3
          Top = 41
          Width = 897
          Height = 225
          Align = alTop
          DefaultDrawing = False
          FixedCols = 0
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goEditing, goTabs, goAlwaysShowEditor, goThumbTracking]
          TabOrder = 0
          OnDrawCell = StringGrid1DrawCell
          OnExit = StringGrid1Exit
          OnKeyUp = StringGrid1KeyUp
          OnMouseMove = StringGrid1MouseMove
          OnSelectCell = StringGrid1SelectCell
          ColWidths = (
            70
            64
            64
            75
            75)
        end
        object CheckBox1: TCheckBox
          Left = 614
          Top = 104
          Width = 20
          Height = 20
          Alignment = taLeftJustify
          Color = clBtnFace
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          Visible = False
          OnExit = CheckBox1Exit
        end
        object CheckBox2: TCheckBox
          Left = 663
          Top = 104
          Width = 20
          Height = 20
          Color = clBtnFace
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          Visible = False
          OnExit = CheckBox2Exit
        end
        object ControlBar2: TControlBar
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 897
          Height = 32
          Align = alTop
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          object NavigatorBindSourceDB3: TBindNavigator
            AlignWithMargins = True
            Left = 11
            Top = 2
            Width = 207
            Height = 22
            DataSource = BindSourceDB3
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel, nbRefresh]
            Flat = True
            Orientation = orHorizontal
            TabOrder = 0
          end
        end
        object LabeledEdit10: TLabeledEdit
          Left = 632
          Top = 284
          Width = 137
          Height = 21
          BiDiMode = bdRightToLeft
          EditLabel.Width = 93
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdRightToLeft
          EditLabel.Caption = 'Total  Aprobado '
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentBiDiMode = False
          EditLabel.ParentFont = False
          LabelPosition = lpLeft
          ParentBiDiMode = False
          TabOrder = 4
          OnChange = LabeledEdit10Change
        end
        object LabeledEdit9: TLabeledEdit
          Left = 632
          Top = 346
          Width = 137
          Height = 21
          BiDiMode = bdRightToLeft
          EditLabel.Width = 133
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdRightToLeft
          EditLabel.Caption = 'Total Aprobado con IVA'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentBiDiMode = False
          EditLabel.ParentFont = False
          LabelPosition = lpLeft
          ParentBiDiMode = False
          TabOrder = 5
        end
        object LabeledEdit5: TLabeledEdit
          Left = 217
          Top = 288
          Width = 129
          Height = 21
          BiDiMode = bdRightToLeft
          EditLabel.Width = 106
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdRightToLeft
          EditLabel.Caption = 'Total Presupuesto '
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentBiDiMode = False
          EditLabel.ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 6
          OnChange = LabeledEdit5Change
        end
        object LabeledEdit11: TLabeledEdit
          Left = 217
          Top = 344
          Width = 129
          Height = 21
          BiDiMode = bdRightToLeft
          EditLabel.Width = 149
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdRightToLeft
          EditLabel.Caption = 'Total Presupuesto con IVA'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentBiDiMode = False
          EditLabel.ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 7
        end
        object LabeledEdit12: TLabeledEdit
          Left = 632
          Top = 314
          Width = 137
          Height = 21
          BiDiMode = bdRightToLeft
          EditLabel.Width = 84
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdRightToLeft
          EditLabel.Caption = 'Aprobado   IVA'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentBiDiMode = False
          EditLabel.ParentFont = False
          LabelPosition = lpLeft
          ParentBiDiMode = False
          TabOrder = 8
          OnChange = LabeledEdit10Change
        end
        object LabeledEdit13: TLabeledEdit
          Left = 217
          Top = 315
          Width = 129
          Height = 21
          BiDiMode = bdRightToLeft
          EditLabel.Width = 97
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdRightToLeft
          EditLabel.Caption = 'Presupuesto  IVA'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentBiDiMode = False
          EditLabel.ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 9
          OnChange = LabeledEdit5Change
        end
      end
      object documentacion: TTabSheet
        Caption = 'Documentaci'#243'n'
        ImageIndex = 1
        object ShellListView1: TShellListView
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 897
          Height = 385
          AutoRefresh = True
          ObjectTypes = [otFolders, otNonFolders]
          Root = 'C:\'
          Sorted = True
          Align = alClient
          ReadOnly = False
          HideSelection = False
          MultiSelect = True
          TabOrder = 0
          Visible = False
        end
      end
      object fotografias: TTabSheet
        Caption = 'Fotograf'#237'as'
        ImageIndex = 2
        object ShellListView2: TShellListView
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 897
          Height = 385
          AutoRefresh = True
          ObjectTypes = [otFolders, otNonFolders]
          Root = 'rfDesktop'
          Sorted = True
          Align = alClient
          ReadOnly = False
          HideSelection = False
          MultiSelect = True
          TabOrder = 0
          Visible = False
        end
      end
    end
    object Guardar: TButton
      Left = 669
      Top = 693
      Width = 80
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Guardar'
      Enabled = False
      Images = DataModule1.ImageList1
      TabOrder = 3
      OnClick = GuardarClick
    end
    object Aceptar: TButton
      Left = 755
      Top = 693
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Aceptar'
      TabOrder = 4
      OnClick = AceptarClick
    end
    object cerrar: TButton
      Left = 836
      Top = 693
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cerrar'
      TabOrder = 5
      OnClick = cerrarClick
    end
    object ToolBar1: TToolBar
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 911
      Height = 45
      ButtonHeight = 42
      ButtonWidth = 41
      Caption = 'ToolBar1'
      Images = DataModule1.ImageList1
      List = True
      TabOrder = 6
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
        ParentShowHint = False
        ShowHint = True
      end
      object ToolButton3: TToolButton
        AlignWithMargins = True
        Left = 131
        Top = 0
        Action = mail
        ParentShowHint = False
        ShowHint = True
      end
      object ToolButton5: TToolButton
        AlignWithMargins = True
        Left = 172
        Top = 0
        Caption = 'ToolButton5'
        ImageIndex = 3
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
        ParentShowHint = False
        ShowHint = True
      end
      object ToolButton10: TToolButton
        Left = 262
        Top = 0
        Action = carpetadocumentacion
      end
      object ToolButton9: TToolButton
        AlignWithMargins = True
        Left = 303
        Top = 0
        Action = cerrarpres
        ParentShowHint = False
        ShowHint = True
      end
    end
    object DBGrid1: TDBGrid
      Left = 688
      Top = 272
      Width = 217
      Height = 121
      DataSource = DataSource1
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
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
  end
  object fdpresupuesto: TFDQuery
    AfterInsert = fdpresupuestoAfterInsert
    AfterEdit = fdpresupuestoAfterEdit
    CachedUpdates = True
    AfterApplyUpdates = fdpresupuestoAfterApplyUpdates
    Connection = DataModule1.FDConnection1
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      
        'select * from presupuestos where id_ClientePrev=:id_cliente and ' +
        'id_presupuesto=:id_presupuesto and FechaPresupuesto=:fecha')
    Left = 20
    Top = 220
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_PRESUPUESTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FECHA'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdlineas: TFDQuery
    AfterInsert = fdlineasAfterInsert
    AfterEdit = fdlineasAfterEdit
    BeforePost = fdlineasBeforePost
    AfterDelete = fdlineasAfterDelete
    CachedUpdates = True
    AfterApplyUpdates = fdlineasAfterApplyUpdates
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select * from lineaspresupuesto where id_Presupuesto=:id_presupu' +
        'esto and fechapresupuesto=:fechapresupuesto order by id_partida ' +
        'ASC')
    Left = 432
    Top = 427
    ParamData = <
      item
        Name = 'ID_PRESUPUESTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FECHAPRESUPUESTO'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end>
    object fdlineasId_Partida: TIntegerField
      FieldName = 'Id_Partida'
      Origin = 'Id_Partida'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdlineasId_Presupuesto: TIntegerField
      FieldName = 'Id_Presupuesto'
      Origin = 'Id_Presupuesto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdlineasDescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = 'Descripcion'
      Size = 255
    end
    object fdlineasTotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total'
      Origin = 'Total'
    end
    object fdlineasAprovado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Aprovado'
      Origin = 'Aprovado'
    end
    object fdlineasEjecutado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Ejecutado'
      Origin = 'Ejecutado'
    end
    object fdlineasFechaPresupuesto: TDateTimeField
      FieldName = 'FechaPresupuesto'
      Origin = 'FechaPresupuesto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = fdCliente
    ScopeMappings = <>
    Left = 408
    Top = 24
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 844
    Top = 53
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'cif'
      Control = LabeledEdit3
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'nombre'
      Control = LabeledEdit2
      Track = True
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'idcontactos'
      Control = LabeledEdit1
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'id_presupuesto'
      Control = LabeledEdit4
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'Partidas'
      Control = LabeledEdit6
      Track = True
    end
    object LinkControlToField6: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'Total'
      Control = LabeledEdit7
      Track = True
    end
    object LinkControlToField7: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'Path'
      Control = LabeledEdit8
      Track = True
    end
    object LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB3
      GridControl = StringGrid1
      Columns = <
        item
          MemberName = 'Id_Partida'
          Width = 70
          ColumnStyle = 'ProgressColumn'
        end
        item
          MemberName = 'Descripcion'
          Header = 'Descripci'#243'n'
        end
        item
          MemberName = 'Total'
        end
        item
          MemberName = 'Aprovado'
          Header = 'Aprobado'
          Width = 75
        end
        item
          MemberName = 'Ejecutado'
          Width = 75
        end>
    end
    object LinkControlToField8: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'FechaPresupuesto'
      Control = DateTimePicker1
      Track = True
    end
    object LinkControlToField9: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'TotalAprobado'
      Control = LabeledEdit10
      Track = True
    end
    object LinkControlToField12: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'Total'
      Control = LabeledEdit5
      Track = True
      CustomFormat = '%s + " '#8364'"'
    end
    object LinkControlToField10: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB3
      FieldName = 'Aprovado'
      Control = CheckBox1
      Track = True
    end
    object LinkControlToField11: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB3
      FieldName = 'Ejecutado'
      Control = CheckBox2
      Track = True
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = fdpresupuesto
    ScopeMappings = <>
    Left = 24
    Top = 176
  end
  object BindSourceDB3: TBindSourceDB
    DataSet = fdlineas
    ScopeMappings = <>
    Left = 328
    Top = 424
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
    end
    object abrirpresupuesto: TAction
      Caption = 'Abrir Presupuesto'
      Hint = 'Abrir presupuesto'
      ImageIndex = 13
      OnExecute = abrirpresupuestoExecute
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
    end
    object mail: TAction
      Caption = 'Mail'
      Hint = 'Enviar mail'
      ImageIndex = 12
      OnExecute = mailExecute
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
    end
  end
  object FDQuery1: TFDQuery
    AfterInsert = fdlineasAfterInsert
    AfterEdit = fdlineasAfterEdit
    CachedUpdates = True
    AfterApplyUpdates = fdlineasAfterApplyUpdates
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'SELECT A.mail FROM clientes C, administradores A, presupuestos P' +
        ' WHERE P.id_presupuesto=:idpresupuesto AND P.id_ClientePrev=C.id' +
        'Contactos AND C.idAdministrador=A.idAdministrador')
    Left = 528
    Top = 427
    ParamData = <
      item
        Name = 'IDPRESUPUESTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 412
      end>
    object IntegerField1: TIntegerField
      FieldName = 'Id_Partida'
      Origin = 'Id_Partida'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'Id_Presupuesto'
      Origin = 'Id_Presupuesto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descripcion'
      Origin = 'Descripcion'
      Size = 255
    end
    object FloatField1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total'
      Origin = 'Total'
    end
    object BooleanField1: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Aprovado'
      Origin = 'Aprovado'
    end
    object BooleanField2: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Ejecutado'
      Origin = 'Ejecutado'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'FechaPresupuesto'
      Origin = 'FechaPresupuesto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = fdlineas
    Left = 616
    Top = 264
  end
end
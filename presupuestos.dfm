object FPresupuestos: TFPresupuestos
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Presupuesto'
  ClientHeight = 782
  ClientWidth = 1147
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
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1147
    Height = 782
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 55
      Width = 1139
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
        Width = 1122
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
          TabOrder = 3
          StyleElements = []
          OnClick = BTBuscarClienteClick
        end
      end
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 154
      Width = 1139
      Height = 151
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
        Left = 49
        Top = 78
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
        Left = 1020
        Top = 75
        Width = 25
        Height = 17
        Shape = stCircle
      end
      object spNoaprobado: TShape
        Left = 1020
        Top = 98
        Width = 25
        Height = 17
        Shape = stCircle
      end
      object spcarpetas: TShape
        Left = 1020
        Top = 121
        Width = 25
        Height = 17
        Shape = stCircle
      end
      object Label2: TLabel
        Left = 1056
        Top = 76
        Width = 55
        Height = 13
        Caption = 'Aprobado'
      end
      object Label3: TLabel
        Left = 1056
        Top = 99
        Width = 71
        Height = 13
        Caption = 'No aprobado'
      end
      object Label4: TLabel
        Left = 1056
        Top = 122
        Width = 51
        Height = 13
        Caption = 'Carpetas'
      end
      object Shape2: TShape
        Left = 757
        Top = 59
        Width = 1
        Height = 81
      end
      object spdocumento: TShape
        Left = 1020
        Top = 52
        Width = 25
        Height = 17
        Shape = stCircle
      end
      object Label13: TLabel
        Left = 1056
        Top = 53
        Width = 65
        Height = 13
        Caption = 'Documento'
      end
      object LabeledEdit4: TLabeledEdit
        Left = 84
        Top = 32
        Width = 129
        Height = 21
        EditLabel.Width = 44
        EditLabel.Height = 13
        EditLabel.Caption = 'N'#250'mero'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'Tahoma'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LabelPosition = lpLeft
        ParentFont = False
        TabOrder = 0
      end
      object LabeledEdit6: TLabeledEdit
        Left = 263
        Top = 75
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
        Left = 424
        Top = 75
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
        Top = 115
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
        Left = 84
        Top = 75
        Width = 113
        Height = 21
        Date = 43201.377841041660000000
        Time = 43201.377841041660000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnChange = DateTimePicker1Change
      end
      object btpath: TButton
        Left = 713
        Top = 107
        Width = 32
        Height = 32
        ImageIndex = 0
        Images = DataModule1.icopeque
        Style = bsCommandLink
        TabOrder = 5
        StyleElements = []
        OnClick = btpathClick
      end
      object LabeledEdit16: TLabeledEdit
        Left = 862
        Top = 75
        Width = 129
        Height = 21
        EditLabel.Width = 74
        EditLabel.Height = 13
        EditLabel.Caption = 'Total Aprobado'
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
        TabOrder = 6
        OnChange = LabeledEdit10Change
      end
      object LabeledEdit17: TLabeledEdit
        Left = 862
        Top = 115
        Width = 129
        Height = 21
        EditLabel.Width = 94
        EditLabel.Height = 13
        EditLabel.Caption = 'Partidas Aprobadas'
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
        TabOrder = 7
      end
      object LabeledEdit18: TLabeledEdit
        Left = 303
        Top = 32
        Width = 688
        Height = 21
        EditLabel.Width = 65
        EditLabel.Height = 13
        EditLabel.Caption = 'Descripci'#243'n'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'Tahoma'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LabelPosition = lpLeft
        ParentFont = False
        TabOrder = 8
      end
    end
    object PageControl1: TPageControl
      AlignWithMargins = True
      Left = 4
      Top = 311
      Width = 1139
      Height = 419
      ActivePage = lineas
      Align = alTop
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
        object Label9: TLabel
          Left = 828
          Top = 358
          Width = 31
          Height = 13
          Caption = 'Label5'
        end
        object Label10: TLabel
          Left = 886
          Top = 272
          Width = 31
          Height = 13
          Caption = 'Label5'
        end
        object Label11: TLabel
          Left = 886
          Top = 305
          Width = 31
          Height = 13
          Caption = 'Label5'
        end
        object Label12: TLabel
          Left = 886
          Top = 337
          Width = 31
          Height = 13
          Caption = 'Label5'
        end
        object StringGrid1: TStringGrid
          Tag = 5
          AlignWithMargins = True
          Left = 3
          Top = 41
          Width = 1125
          Height = 225
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DefaultDrawing = False
          FixedCols = 0
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goHorzLine, goDrawFocusSelected, goColSizing, goColMoving, goEditing, goTabs, goThumbTracking]
          TabOrder = 0
          OnClick = StringGrid1Click
          OnDrawCell = StringGrid1DrawCell
          OnExit = StringGrid1Exit
          OnGetEditText = StringGrid1GetEditText
          OnKeyDown = StringGrid1KeyDown
          OnKeyPress = StringGrid1KeyPress
          OnKeyUp = StringGrid1KeyUp
          OnMouseMove = StringGrid1MouseMove
          OnSelectCell = StringGrid1SelectCell
          ColWidths = (
            64
            64
            64
            64
            64)
        end
        object ControlBar2: TControlBar
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1125
          Height = 32
          Align = alTop
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
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
            ConfirmDelete = False
            TabOrder = 0
            BeforeAction = NavigatorBindSourceDB3BeforeAction
          end
          object ToolBar2: TToolBar
            Left = 231
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
            Left = 316
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
          end
        end
        object LabeledEdit10: TLabeledEdit
          Left = 632
          Top = 275
          Width = 137
          Height = 21
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          EditLabel.Width = 93
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdLeftToRight
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
          TabOrder = 2
          OnChange = LabeledEdit10Change
        end
        object LabeledEdit9: TLabeledEdit
          Left = 632
          Top = 356
          Width = 137
          Height = 21
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          EditLabel.Width = 133
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdLeftToRight
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
          TabOrder = 3
        end
        object LabeledEdit5: TLabeledEdit
          Left = 217
          Top = 277
          Width = 129
          Height = 21
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          EditLabel.Width = 106
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdLeftToRight
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
          TabOrder = 4
          OnChange = LabeledEdit5Change
        end
        object LabeledEdit11: TLabeledEdit
          Left = 217
          Top = 354
          Width = 129
          Height = 21
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          EditLabel.Width = 149
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdLeftToRight
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
          TabOrder = 5
        end
        object LabeledEdit12: TLabeledEdit
          Left = 632
          Top = 329
          Width = 137
          Height = 21
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          EditLabel.Width = 84
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdLeftToRight
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
          TabOrder = 6
          OnChange = LabeledEdit10Change
        end
        object LabeledEdit13: TLabeledEdit
          Left = 217
          Top = 327
          Width = 129
          Height = 21
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          EditLabel.Width = 97
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdLeftToRight
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
          TabOrder = 7
          OnChange = LabeledEdit5Change
        end
        object LabeledEdit14: TLabeledEdit
          Left = 217
          Top = 304
          Width = 129
          Height = 21
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          EditLabel.Width = 47
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdLeftToRight
          EditLabel.Caption = 'Tipo IVA'
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
          TabOrder = 8
          OnChange = LabeledEdit5Change
        end
        object LabeledEdit15: TLabeledEdit
          Left = 632
          Top = 302
          Width = 137
          Height = 21
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          EditLabel.Width = 47
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdLeftToRight
          EditLabel.Caption = 'Tipo IVA'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'Tahoma'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentBiDiMode = False
          EditLabel.ParentFont = False
          LabelPosition = lpLeft
          ParentBiDiMode = False
          TabOrder = 9
          OnChange = LabeledEdit10Change
        end
      end
      object documentacion: TTabSheet
        Caption = 'Documentaci'#243'n'
        ImageIndex = 1
        object ShellListView1: TShellListView
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1125
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
          Width = 1125
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
    object ToolBar1: TToolBar
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1139
      Height = 45
      ButtonHeight = 42
      ButtonWidth = 41
      Caption = 'ToolBar1'
      Images = DataModule1.ImageList1
      List = True
      TabOrder = 3
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
        Caption = 'ToolButton5'
        Enabled = False
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
        Action = cerrarpres
        ParentShowHint = False
        ShowHint = True
      end
    end
    object DBGrid1: TDBGrid
      Left = 818
      Top = 4
      Width = 217
      Height = 176
      DataSource = DataSource1
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object GroupBox3: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 736
      Width = 807
      Height = 15
      Margins.Bottom = 30
      Align = alLeft
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Observaciones'
      TabOrder = 5
      DesignSize = (
        807
        15)
      object Memo1: TMemo
        AlignWithMargins = True
        Left = 16
        Top = 16
        Width = 779
        Height = 0
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
      end
    end
    object GroupBox5: TGroupBox
      AlignWithMargins = True
      Left = 836
      Top = 740
      Width = 307
      Height = 38
      Margins.Top = 7
      Align = alRight
      Anchors = [akTop, akRight]
      TabOrder = 6
      DesignSize = (
        307
        38)
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
        TabOrder = 0
        OnClick = GuardarClick
      end
      object Aceptar: TButton
        Left = 61
        Top = 11
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Aceptar'
        TabOrder = 1
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
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    SQL.Strings = (
      
        'select * from presupuestos where id_ClientePrev=:id_cliente and ' +
        'id_presupuesto=:id_presupuesto and grupo=:grupo')
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
        Name = 'GRUPO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdlineas: TFDQuery
    AfterInsert = fdlineasAfterInsert
    AfterEdit = fdlineasAfterEdit
    BeforePost = fdlineasBeforePost
    AfterPost = fdlineasAfterPost
    BeforeDelete = fdlineasBeforeDelete
    AfterDelete = fdlineasAfterDelete
    CachedUpdates = True
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
    AfterApplyUpdates = fdlineasAfterApplyUpdates
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select * from lineaspresupuesto where presupuestos_id_Presupuest' +
        'o=:id_presupuesto and presupuestos_grupo=:grupopresupuesto order' +
        ' by id_partida ASC')
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
        Name = 'GRUPOPRESUPUESTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdlineasId_Partida: TIntegerField
      FieldName = 'Id_Partida'
      Origin = 'Id_Partida'
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
      DisplayFormat = '#.00'
    end
    object fdlineasAprovado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Aprovado'
      Origin = 'Aprovado'
      OnChange = fdlineasAprovadoChange
    end
    object fdlineasEjecutado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Ejecutado'
      Origin = 'Ejecutado'
    end
    object fdlineaspresupuestos_id_presupuesto: TIntegerField
      FieldName = 'presupuestos_id_presupuesto'
      Origin = 'presupuestos_id_presupuesto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdlineaspresupuestos_grupo: TIntegerField
      FieldName = 'presupuestos_grupo'
      Origin = 'presupuestos_grupo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = fdCliente
    ScopeMappings = <>
    Left = 424
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
    object LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB3
      GridControl = StringGrid1
      Columns = <
        item
          MemberName = 'Id_Partida'
          Header = 'N'#186' Partida'
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
        end
        item
          MemberName = 'Ejecutado'
        end>
      OnAssigningValue = LinkGridToDataSourceBindSourceDB3AssigningValue
    end
    object LinkControlToField13: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'TotalAprobado'
      Control = LabeledEdit16
      Track = True
    end
    object LinkControlToField10: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'partidasAprobadas'
      Control = LabeledEdit17
      Track = True
    end
    object LinkControlToField11: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'observaciones'
      Control = Memo1
      Track = False
    end
    object LinkControlToField14: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'Descripcion'
      Control = LabeledEdit18
      Track = True
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = fdpresupuesto
    ScopeMappings = <>
    Left = 24
    Top = 176
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
  object BindSourceDB3: TBindSourceDB
    DataSet = fdlineas
    ScopeMappings = <>
    Left = 448
    Top = 368
  end
  object ImageList1: TImageList
    Left = 664
    Top = 433
    Bitmap = {
      494C010104000800440010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    Left = 680
    Top = 369
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
end

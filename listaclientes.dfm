object listclientes: Tlistclientes
  Left = 0
  Top = 0
  Align = alCustom
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  BorderWidth = 1
  Caption = 'Lista Clientes'
  ClientHeight = 615
  ClientWidth = 1414
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 42
    Width = 1414
    Height = 113
    Align = alTop
    TabOrder = 1
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 303
      Top = 4
      Width = 161
      Height = 105
      Align = alLeft
      Caption = 'Agrupar'
      TabOrder = 1
      object cbAgruparAdmin: TCheckBox
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 151
        Height = 17
        Align = alTop
        Caption = 'Filtrar '
        TabOrder = 0
        OnClick = cbAgruparAdminClick
      end
      object chkCamposBusqueda: TCheckBox
        Left = 5
        Top = 41
        Width = 116
        Height = 17
        Caption = 'Buscar por campos'
        TabOrder = 1
        OnClick = chkCamposBusquedaClick
      end
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 293
      Height = 105
      Align = alLeft
      Caption = 'Buscar'
      TabOrder = 0
      object lbed1: TLabeledEdit
        Left = 56
        Top = 29
        Width = 193
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 42
        EditLabel.Height = 14
        EditLabel.BiDiMode = bdRightToLeft
        EditLabel.Caption = 'Cliente'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -12
        EditLabel.Font.Name = 'Tahoma'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentBiDiMode = False
        EditLabel.ParentFont = False
        LabelPosition = lpLeft
        TabOrder = 0
        OnChange = lbed1Change
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1414
    Height = 42
    ButtonHeight = 42
    ButtonWidth = 42
    Caption = 'ToolBar1'
    Images = DataModule1.ImageList1
    TabOrder = 0
    object btn1: TToolButton
      Left = 0
      Top = 0
      Hint = 'Salir'
      Caption = 'btn1'
      ImageIndex = 15
      ParentShowHint = False
      ShowHint = True
      OnClick = btn1Click
    end
    object btn2: TToolButton
      Left = 42
      Top = 0
      Width = 8
      Caption = 'btn2'
      ImageIndex = 16
      Style = tbsSeparator
    end
    object btncrearclientes: TToolButton
      Left = 50
      Top = 0
      Hint = 'A'#241'adir Cliente'
      Caption = 'Insertar Cliente'
      ImageIndex = 23
      ParentShowHint = False
      ShowHint = True
      OnClick = btncrearclientesClick
    end
    object ToolButton1: TToolButton
      Left = 92
      Top = 0
      Hint = 'Editar Cliente'
      Caption = 'ToolButton1'
      ImageIndex = 24
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton1Click
    end
    object btn3: TToolButton
      Left = 134
      Top = 0
      Hint = 'Borrar Cliente'
      Caption = 'btn3'
      ImageIndex = 25
      ParentShowHint = False
      ShowHint = True
      OnClick = btn3Click
    end
    object btn4: TToolButton
      Left = 176
      Top = 0
      Hint = 'Ver Cliente'
      Caption = 'btn4'
      ImageIndex = 26
      ParentShowHint = False
      ShowHint = True
      OnClick = btn4Click
    end
    object btn5: TToolButton
      Left = 218
      Top = 0
      Width = 8
      Caption = 'btn5'
      ImageIndex = 27
      Style = tbsSeparator
    end
    object btn6: TToolButton
      Left = 226
      Top = 0
      Hint = 'Exportar a Excel'
      Caption = 'btn6'
      ImageIndex = 43
      ParentShowHint = False
      ShowHint = True
      OnClick = btn6Click
    end
    object btn7: TToolButton
      Left = 268
      Top = 0
      Hint = 'Filtrar'
      Caption = 'btn7'
      ImageIndex = 44
      ParentShowHint = False
      ShowHint = True
      OnClick = btn7Click
    end
  end
  object rDBGridClientes1: TrDBGrid_MS
    Left = 0
    Top = 155
    Width = 1414
    Height = 460
    Align = alClient
    DataSource = ds1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDblClick = rDBGridClientes1DblClick
    OptionsEx2.ActivateOptionsEx2 = True
    OptionsEx2.FixedCell.TitleExBtn = False
    OptionsEx2.FixedCell.FixedCols = 1
    SortFieldName = 'nombre'
    Sorter = DataModule1.rDBGridSorter_FireDac1
    ColumnWidth = cwAutoWidth
    TitleLines = 2
    RowLines = 2
    RowVerticalAlign = taVerticalCenter
    FixedColText.FixedColWidth = 100
    FixedColText.ShowCheckbox = True
    FixedColText.TitleText = 'C'#243'digo'
    FixedColText.TextMask = '<<idContactos>>'
    FooterRow.FooterVisible = True
    FooterRow.FieldFooterDefs.Strings = (
      'nombre=Total: %SUM;')
    Columns = <
      item
        Expanded = False
        FieldName = 'nombre'
        Title.Caption = 'Nombre'
        Width = 254
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CIF'
        Title.Alignment = taCenter
        Title.Caption = 'C.I.F'
        Width = 134
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodigoPostal'
        Title.Alignment = taCenter
        Title.Caption = 'Codigo Postal'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'direccion'
        Title.Caption = 'Direcci'#243'n'
        Width = 393
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ciudad'
        Title.Alignment = taCenter
        Width = 168
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nombreapellidos'
        Title.Alignment = taCenter
        Title.Caption = 'Administrador'
        Width = 224
        Visible = True
      end>
  end
  object ds1: TDataSource
    Left = 1128
    Top = 280
  end
end

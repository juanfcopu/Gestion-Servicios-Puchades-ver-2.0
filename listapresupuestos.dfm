object listpresupuestos: Tlistpresupuestos
  Left = 0
  Top = 0
  Align = alCustom
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  BorderWidth = 1
  Caption = 'Lista Presupuestos'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 43
    Width = 1414
    Height = 110
    Align = alTop
    TabOrder = 1
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 245
      Height = 102
      Align = alLeft
      Caption = 'Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object lbed1: TLabeledEdit
        Left = 51
        Top = 31
        Width = 174
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 42
        EditLabel.Height = 14
        EditLabel.Caption = 'Cliente'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -12
        EditLabel.Font.Name = 'Tahoma'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        LabelPosition = lpLeft
        TabOrder = 0
        OnChange = lbed1Change
      end
    end
    object GroupBox4: TGroupBox
      AlignWithMargins = True
      Left = 407
      Top = 4
      Width = 306
      Height = 102
      Align = alLeft
      Caption = 'Filtrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
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
        Left = 184
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
        Left = 184
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
        Left = 184
        Top = 64
        Width = 105
        Height = 27
        Caption = 'Buscar'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 255
      Top = 4
      Width = 146
      Height = 102
      Align = alLeft
      Caption = 'Ver'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object rb1: TRadioButton
        Left = 11
        Top = 38
        Width = 113
        Height = 17
        Caption = 'Aprobados'
        TabOrder = 1
        OnClick = rb1Click
      end
      object rb2: TRadioButton
        Left = 11
        Top = 15
        Width = 113
        Height = 17
        Caption = 'Todas'
        TabOrder = 0
        OnClick = rb2Click
      end
    end
  end
  object tlb1: TToolBar
    Left = 0
    Top = 0
    Width = 1414
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
    object btn2: TToolButton
      Left = 42
      Top = 0
      Width = 8
      Caption = 'btn2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object btn3: TToolButton
      Left = 50
      Top = 0
      Caption = 'btn3'
      ImageIndex = 31
      OnClick = btn3Click
    end
    object btn4: TToolButton
      Left = 92
      Top = 0
      Caption = 'btn4'
      ImageIndex = 32
      OnClick = btn4Click
    end
    object btn5: TToolButton
      Left = 134
      Top = 0
      Caption = 'btn5'
      ImageIndex = 33
      OnClick = btn5Click
    end
    object ToolButton1: TToolButton
      Left = 176
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 34
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 184
      Top = 0
      Caption = 'ToolButton3'
      ImageIndex = 43
      OnClick = ToolButton3Click
    end
    object btnmail: TToolButton
      Left = 226
      Top = 0
      Caption = 'btnmail'
      ImageIndex = 12
      OnClick = btnmailClick
    end
    object ToolButton2: TToolButton
      Left = 268
      Top = 0
      Caption = 'ToolButton2'
      ImageIndex = 13
      OnClick = ToolButton2Click
    end
  end
  object stat1: TStatusBar
    Left = 0
    Top = 588
    Width = 1414
    Height = 27
    Panels = <>
    SimplePanel = True
  end
  object rDBGridClientes1: TrDBGrid_MS
    Left = 0
    Top = 153
    Width = 1414
    Height = 435
    Align = alClient
    DataSource = ds1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = rDBGridClientes1DblClick
    OptionsEx2.Editors.Memo = obtContent
    SortDesc = True
    Sorter = DataModule1.rDBGridSorter_FireDac1
    ColumnWidth = cwAutoWidth
    TitleLines = 2
    RowLines = 2
    RowVerticalAlign = taVerticalCenter
    FixedColText.FixedColWidth = 95
    FixedColText.ShowCheckbox = True
    FixedColText.TitleText = 'N'#186' Presupuesto'
    FixedColText.TextMask = '<<id_presupuesto>>'
    FixedColText.ParentFont = False
    FixedColText.Font.Charset = DEFAULT_CHARSET
    FixedColText.Font.Color = clWindowText
    FixedColText.Font.Height = -12
    FixedColText.Font.Name = 'Tahoma'
    FixedColText.Font.Style = [fsBold]
    FixedColText.TextAlign = taCenter
    FooterRow.FooterVisible = True
    FooterRow.FieldFooterDefs.Strings = (
      'Total=%SUM '#8364';B;$00FF9933;10;'
      'TotalAprobado=%SUM '#8364';B;Green;10;'
      'nombre=%COUNTVAL presupuestos;B;10;')
    OnFixColClick = rDBGridClientes1FixColClick
    Columns = <
      item
        Expanded = False
        FieldName = 'grupo'
        Title.Caption = 'Grupo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 61
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
        Width = 274
        Visible = True
      end
      item
        Alignment = taCenter
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'FechaPresupuesto'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 140
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
        Width = 437
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Aprovado'
        Title.Alignment = taCenter
        Title.Caption = 'Aprobado'
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
        FieldName = 'TotalAprobado'
        Title.Alignment = taCenter
        Title.Caption = 'Total Aprobado'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 158
        Visible = True
      end>
  end
  object ds1: TDataSource
    DataSet = DataModule1.fdpresupuestos
    Left = 1240
    Top = 408
  end
end

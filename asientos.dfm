object FAsientos: TFAsientos
  Left = 1509
  Top = 216
  BorderStyle = bsToolWindow
  Caption = 'Asientos'
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
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 43
    Width = 1307
    Height = 118
    Align = alTop
    TabOrder = 1
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 397
      Height = 110
      Align = alLeft
      Caption = 'Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object beBuscar: TButtonedEdit
        Left = 119
        Top = 26
        Width = 258
        Height = 21
        Align = alCustom
        CharCase = ecUpperCase
        TabOrder = 1
        OnChange = beBuscarChange
      end
      object rbasiento: TRadioButton
        Left = 16
        Top = 24
        Width = 97
        Height = 25
        Caption = 'Asiento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object rbdocumento: TRadioButton
        Left = 16
        Top = 55
        Width = 97
        Height = 25
        Caption = 'Documento:'
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
      Left = 559
      Top = 4
      Width = 282
      Height = 110
      Align = alLeft
      Caption = 'Filtrar Fecha Facturas'
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
        Top = 66
        Width = 105
        Height = 27
        Caption = 'Buscar'
        TabOrder = 2
      end
    end
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 407
      Top = 4
      Width = 146
      Height = 110
      Align = alLeft
      Caption = 'Ver'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object rbPagadas: TRadioButton
        Left = 16
        Top = 39
        Width = 113
        Height = 17
        Caption = 'Pagadas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object rbImpagadas: TRadioButton
        Left = 16
        Top = 64
        Width = 113
        Height = 17
        Caption = 'Impagadas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object rbTodas: TRadioButton
        Left = 16
        Top = 16
        Width = 113
        Height = 17
        Caption = 'Todas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
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
    object btn2: TToolButton
      Left = 42
      Top = 0
      Width = 8
      Caption = 'btn2'
      ImageIndex = 16
      Style = tbsSeparator
    end
    object btn3: TToolButton
      Left = 50
      Top = 0
      Hint = 'A'#241'adir asiento'
      Caption = 'Nueva'
      ImageIndex = 64
      ParentShowHint = False
      ShowHint = True
    end
    object btn5: TToolButton
      Left = 92
      Top = 0
      Caption = 'btn5'
      ImageIndex = 65
      OnClick = btn5Click
    end
    object ToolButton1: TToolButton
      Left = 134
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 43
      Style = tbsSeparator
    end
    object btnExcel: TToolButton
      Left = 142
      Top = 0
      Hint = 'Exportar Excel'
      Caption = 'btnExcel'
      ImageIndex = 43
      ParentShowHint = False
      ShowHint = True
      OnClick = btnExcelClick
    end
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 598
    Width = 1307
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 2
    object RzDBStateStatus1: TRzDBStateStatus
      Left = 0
      Top = 0
      Width = 134
      Height = 19
      Align = alLeft
      DataSource = ds1
      BlinkIntervalOff = 100
      BlinkIntervalOn = 100
    end
  end
  object rDBGridAsientos: TrDBGrid_MS
    Left = 0
    Top = 161
    Width = 1307
    Height = 437
    Align = alClient
    DataSource = ds1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    SortFieldName = 'id_asiento'
    Sorter = DataModule1.rDBGridSorter_FireDac1
    ColumnWidth = cwAutoWidth
    TitleLines = 2
    RowLines = 2
    Columns = <
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
        Width = 90
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
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_cuenta'
        Title.Caption = 'Cuenta contable'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 202
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'documento'
        Title.Alignment = taCenter
        Title.Caption = 'Documento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 181
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'concepto'
        Title.Caption = 'Concepto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 607
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'importe'
        Title.Alignment = taCenter
        Title.Caption = 'Importe'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end>
  end
  object ds1: TDataSource
    DataSet = DataModule1.fdasientos
    Left = 368
    Top = 312
  end
end

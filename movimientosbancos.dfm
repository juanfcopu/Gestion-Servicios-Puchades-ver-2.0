object FMovimientosBancarios: TFMovimientosBancarios
  Left = 0
  Top = 0
  Caption = 'Movimientos Bancarios'
  ClientHeight = 613
  ClientWidth = 1286
  Color = clBtnFace
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
    Width = 1286
    Height = 238
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -21
    ExplicitWidth = 1307
    object GroupBox4: TGroupBox
      AlignWithMargins = True
      Left = 228
      Top = 4
      Width = 258
      Height = 230
      Align = alLeft
      Caption = 'Filtrar Fecha Facturas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      ExplicitLeft = 575
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
      Left = 4
      Top = 4
      Width = 218
      Height = 230
      Align = alLeft
      Caption = 'Ver'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 351
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
        OnClick = rb1TrimestresClick
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
        OnClick = rb1TrimestresClick
      end
      object rbTodas: TRadioButton
        Left = 18
        Top = 49
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
        OnClick = rb1TrimestresClick
      end
      object rb3trimestre: TRadioButton
        Tag = 3
        Left = 137
        Top = 45
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
        OnClick = rb1TrimestresClick
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
        OnClick = rb1TrimestresClick
      end
      object RzComboBox1: TRzComboBox
        Left = 3
        Top = 20
        Width = 118
        Height = 21
        TabOrder = 1
      end
    end
    object rGroupBox1: TrGroupBox
      Left = 489
      Top = 1
      Width = 253
      Height = 236
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
      ExplicitLeft = 836
      object rDBRecView1: TrDBRecView
        AlignWithMargins = True
        Left = 5
        Top = 20
        Width = 243
        Height = 211
        DataSource = ds1
        DBGrid = rDBGridClientes1
        FieldsAsLink.Strings = (
          'nombre=user_defined')
        OptionsEx = [goUseGridPickList]
        Fields.Strings = (
          'id_movimiento=C'#243'digo'
          'nombre=Banco'
          'fecha=Fecha'
          'descripcion=Descripci'#243'n'
          'tipo=Tipo'
          'importes=Importe')
        SpecFont.Charset = DEFAULT_CHARSET
        SpecFont.Color = clWindowText
        SpecFont.Height = -11
        SpecFont.Name = 'Tahoma'
        SpecFont.Style = []
        Align = alClient
        DefaultColWidth = 90
        DefaultRowHeight = 25
        DefaultDrawing = False
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSizing, goEditing]
        ScrollBars = ssVertical
        TabOrder = 0
        OnClick = rDBRecView1Click
        OnKeyPress = rDBRecView1KeyPress
        ExplicitLeft = 96
        ExplicitTop = 112
        ExplicitWidth = 320
        ExplicitHeight = 120
      end
    end
  end
  object rDBGridClientes1: TrDBGrid_MS
    Left = 0
    Top = 281
    Width = 1286
    Height = 313
    Align = alClient
    DataSource = ds1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OptionsEx2.Editors.Memo = obtContent
    OptionsEx2.Editors.OnlyPickListValues = True
    OptionsEx2.Appearance.DragCell = True
    SortDesc = True
    Sorter = DataModule1.rDBGridSorter_FireDac1
    ColumnWidth = cwAutoWidth
    TitleLines = 2
    RowLines = 2
    RowVerticalAlign = taVerticalCenter
    FixedColText.FixedColWidth = 50
    FixedColText.ShowCheckbox = True
    FooterRow.FooterVisible = True
    FooterRow.ParentFont = False
    FooterRow.Font.Charset = DEFAULT_CHARSET
    FooterRow.Font.Color = clHighlight
    FooterRow.Font.Height = -15
    FooterRow.Font.Name = 'Tahoma'
    FooterRow.Font.Style = [fsBold]
    FooterRow.Color = clWhite
    FooterRow.FieldFooterDefs.Strings = (
      'importe=%SUM '#8364';'
      'IVA=%SUM '#8364';'
      'total=%SUM '#8364';'
      'importedevengado='
      'ssocialTrabajador=%SUM '#8364';'
      'ssocialEmpresa=%SUM '#8364';'
      'BaseCotizacion=%SUM '#8364';'
      'TotalPercibir=%SUM '#8364';'
      'irpf=%SUM '#8364';'
      'importes=%SUM '#8364';Red;')
    FieldsAsLink.Strings = (
      'nombre=user_defined')
    FieldsAutoPickList.Strings = (
      'tipo')
    LookupListItemIncreaseWidth = 20
    OnLoadPickList = rDBGridClientes1LoadPickList
    Columns = <
      item
        Expanded = False
        FieldName = 'id_movimiento'
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 167
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nombre'
        Title.Caption = 'Banco'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 180
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
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 136
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
        Width = 282
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
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 133
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'importes'
        Title.Alignment = taCenter
        Title.Caption = 'Importe'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 122
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
        Visible = True
      end>
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 594
    Width = 1286
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 2
    ExplicitLeft = -21
    ExplicitTop = 280
    ExplicitWidth = 1307
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
      DataSource = ds1
      ExplicitHeight = 25
    end
    object RzDBStateStatus1: TRzDBStateStatus
      Left = 750
      Top = 0
      Height = 19
      Align = alLeft
      DataSource = ds1
      BlinkIntervalOff = 100
      BlinkIntervalOn = 100
      ExplicitLeft = 1307
      ExplicitHeight = 20
    end
  end
  object tlb1: TToolBar
    Left = 0
    Top = 0
    Width = 1286
    Height = 43
    ButtonHeight = 42
    ButtonWidth = 42
    Caption = 'tlb1'
    Images = DataModule1.ImageList1
    TabOrder = 3
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
      Caption = 'btn3'
      ImageIndex = 46
    end
    object btn4: TToolButton
      Left = 92
      Top = 0
      Caption = 'btn4'
      ImageIndex = 41
    end
    object btn5: TToolButton
      Left = 134
      Top = 0
      Caption = 'btn5'
      ImageIndex = 42
    end
    object btn6: TToolButton
      Left = 176
      Top = 0
      Width = 8
      Caption = 'btn6'
      ImageIndex = 43
      Style = tbsSeparator
    end
    object btn7: TToolButton
      Left = 184
      Top = 0
      Caption = 'btn7'
      ImageIndex = 43
      OnClick = btn7Click
    end
  end
  object ds1: TDataSource
    DataSet = DataModule1.fdmovimientosbancarios
    Left = 432
    Top = 224
  end
  object FDbancos: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from bancos')
    Left = 600
    Top = 432
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = DataModule1.FDConnection1
    Left = 744
    Top = 440
  end
end

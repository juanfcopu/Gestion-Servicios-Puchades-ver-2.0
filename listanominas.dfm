object listnominas: Tlistnominas
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'N'#243'minas'
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 43
    Width = 1307
    Height = 238
    Align = alTop
    TabOrder = 1
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 341
      Height = 230
      Align = alLeft
      Caption = 'Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object beBuscar: TButtonedEdit
        Left = 71
        Top = 24
        Width = 258
        Height = 21
        Align = alCustom
        CharCase = ecUpperCase
        TabOrder = 1
        OnChange = beBuscarChange
      end
      object rbcliente: TRadioButton
        Left = 16
        Top = 22
        Width = 49
        Height = 25
        Caption = 'Trabajador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox4: TGroupBox
      AlignWithMargins = True
      Left = 575
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
      TabOrder = 3
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
      Left = 351
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
      TabOrder = 2
      object rb1Trimestres: TRadioButton
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
        OnClick = rbTodasClick
      end
      object rb2trimestre: TRadioButton
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
        OnClick = rbTodasClick
      end
      object rbTodas: TRadioButton
        Left = 18
        Top = 55
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
        OnClick = rbTodasClick
      end
      object rb3trimestre: TRadioButton
        Left = 137
        Top = 44
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
        OnClick = rbTodasClick
      end
      object rb4trimestre: TRadioButton
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
        OnClick = rbTodasClick
      end
      object RzComboBox1: TRzComboBox
        Left = 3
        Top = 20
        Width = 118
        Height = 21
        TabOrder = 1
        OnChange = RzComboBox1Change
      end
    end
    object rGroupBox1: TrGroupBox
      Left = 836
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
      object rDBRecView1: TrDBRecView
        Left = 2
        Top = 17
        Width = 249
        Height = 217
        DataSource = ds1
        DBGrid = rDBGridClientes1
        FieldsAsLink.Strings = (
          'nombre=user_defined')
        OptionsEx = [goUseGridPickList]
        Fields.Strings = (
          'nombre=Trabajador'
          'fechanomina=Fecha'
          'importedevengado=Devengado'
          'BaseCotizacion=Base Cotizaci'#243'n'
          'ssocialEmpresa=Seg. Social Trabajador'
          'ssocialEmpresa=Seg. Social Empresa'
          'irpf=I.R.P.F'
          'embargo=Embargo'
          'TotalPercibir=Total a Pagar')
        SpecFields.Strings = (
          'nombre=0')
        SpecFont.Charset = DEFAULT_CHARSET
        SpecFont.Color = clWindowText
        SpecFont.Height = -11
        SpecFont.Name = 'Tahoma'
        SpecFont.Style = []
        Align = alClient
        DefaultColWidth = 90
        DefaultRowHeight = 25
        DefaultDrawing = False
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSizing]
        ScrollBars = ssNone
        TabOrder = 0
        OnClick = rDBRecView1Click
        OnKeyPress = rDBRecView1KeyPress
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
      Caption = 'btn3'
      ImageIndex = 46
      OnClick = btn3Click
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
      OnClick = btn5Click
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
  object rDBGridClientes1: TrDBGrid_MS
    Left = 0
    Top = 281
    Width = 1307
    Height = 317
    Align = alClient
    DataSource = ds1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OptionsEx2.Editors.Memo = obtContent
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
      'irpf=%SUM '#8364';')
    FieldsAsLink.Strings = (
      'nombre=user_defined')
    LookupListItemIncreaseWidth = 20
    Columns = <
      item
        Expanded = False
        FieldName = 'nombre'
        Title.Caption = 'Trabajador'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 297
        Visible = True
      end
      item
        Alignment = taCenter
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'fechanomina'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 101
        Visible = True
      end
      item
        Alignment = taCenter
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'importedevengado'
        Title.Alignment = taCenter
        Title.Caption = 'Devengado'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 102
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ssocialTrabajador'
        Title.Alignment = taCenter
        Title.Caption = 'Seg. Social Trabajador'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 158
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ssocialEmpresa'
        Title.Alignment = taCenter
        Title.Caption = 'Seg. Social Empresa'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 137
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'irpf'
        Title.Alignment = taCenter
        Title.Caption = 'I.R.P.F'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 83
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'embargo'
        Title.Alignment = taCenter
        Title.Caption = 'Embargo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalPercibir'
        Title.Alignment = taCenter
        Title.Caption = 'Total a Pagar'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 78
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id_asiento'
        Title.Caption = 'Asiento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 66
        Visible = True
      end
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'fechacontable'
        Title.Caption = 'Fecha Contable'
        Width = 70
        Visible = True
      end>
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
    TabOrder = 3
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
  object ds1: TDataSource
    DataSet = DataModule1.fdqnominas
    Left = 1104
    Top = 336
  end
  object fdqtrabajadores: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'SELECT nombre, id_trabajador from trabajadores order by nombre')
    Left = 1000
    Top = 384
  end
end

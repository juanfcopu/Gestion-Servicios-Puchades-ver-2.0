object listtrabajadores: Tlisttrabajadores
  Left = 0
  Top = 0
  Align = alCustom
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  BorderWidth = 1
  Caption = 'Lista Trabajadores'
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
        Left = 88
        Top = 39
        Width = 193
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 69
        EditLabel.Height = 14
        EditLabel.BiDiMode = bdRightToLeft
        EditLabel.Caption = 'Descripci'#243'n'
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
    object grp1: TGroupBox
      Left = 480
      Top = 4
      Width = 233
      Height = 105
      Caption = 'Filtrar por Fecha Pago'
      TabOrder = 2
      object lbl1: TLabel
        Left = 7
        Top = 19
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
      object lbl2: TLabel
        Left = 127
        Top = 19
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
      object dtp1: TDateTimePicker
        Left = 6
        Top = 35
        Width = 97
        Height = 21
        Date = 43918.929428287040000000
        Time = 43918.929428287040000000
        TabOrder = 0
      end
      object dtp2: TDateTimePicker
        Left = 126
        Top = 35
        Width = 97
        Height = 21
        Date = 43918.929496261570000000
        Time = 43918.929496261570000000
        TabOrder = 1
      end
      object btn8: TButton
        Left = 136
        Top = 62
        Width = 75
        Height = 25
        Caption = 'Buscar'
        TabOrder = 2
        OnClick = btn8Click
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
      Caption = 'Nuevo Seguro'
      ImageIndex = 49
      ParentShowHint = False
      ShowHint = True
      OnClick = btncrearclientesClick
    end
    object ToolButton1: TToolButton
      Left = 92
      Top = 0
      Hint = 'Editar Seguro'
      Caption = 'Editar Seguro'
      ImageIndex = 51
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton1Click
    end
    object btn3: TToolButton
      Left = 134
      Top = 0
      Hint = 'Borrar Seguro'
      Caption = 'Borrar Seguro'
      ImageIndex = 50
      ParentShowHint = False
      ShowHint = True
      OnClick = btn3Click
    end
    object btn4: TToolButton
      Left = 176
      Top = 0
      Hint = 'Ver Seguro'
      Caption = 'Ver Seguro'
      ImageIndex = 48
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
  object rdbgridtrabajadores: TrDBGrid_MS
    AlignWithMargins = True
    Left = 3
    Top = 158
    Width = 1408
    Height = 454
    Align = alClient
    DataSource = ds1
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
        FieldName = 'id_trabajador'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nombre'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 291
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NIE'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 139
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NSegSocial'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Seguridad Social'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 152
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IBAN'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 217
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'telefono'
        Title.Alignment = taCenter
        Title.Caption = 'T'#233'lefono'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 149
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'activado'
        Title.Alignment = taCenter
        Title.Caption = 'Activado'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 149
        Visible = True
      end>
  end
  object ds1: TDataSource
    DataSet = DataModule1.fdtrabajadores
    Left = 680
    Top = 304
  end
end

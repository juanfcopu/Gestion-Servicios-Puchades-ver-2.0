object FLineasPresupuestoObra: TFLineasPresupuestoObra
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Selecciona L'#237'neas Presupuesto'
  ClientHeight = 307
  ClientWidth = 1095
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object statuslineas: TStatusBar
    Left = 0
    Top = 288
    Width = 1095
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object tlbarlineas: TToolBar
    Left = 0
    Top = 0
    Width = 1095
    Height = 33
    ButtonHeight = 38
    ButtonWidth = 39
    Caption = 'tlbarlineas'
    Images = DataModule1.ImageList1
    TabOrder = 0
    object btnselectodos: TToolButton
      Left = 0
      Top = 0
      Hint = 'Deselecionar Todos'
      Caption = 'btnselectodos'
      ImageIndex = 20
      ParentShowHint = False
      ShowHint = True
      OnClick = btnselectodosClick
    end
    object btndeselecTodos: TToolButton
      Left = 39
      Top = 0
      Hint = 'Seleccionar Todos'
      Caption = 'btndeselecTodos'
      ImageIndex = 18
      ParentShowHint = False
      ShowHint = True
      OnClick = btndeselecTodosClick
    end
    object btVista: TToolButton
      Left = 78
      Top = 0
      Caption = 'btVista'
      ImageIndex = 10
      Style = tbsCheck
      OnClick = btVistaClick
    end
    object btn1: TToolButton
      Left = 117
      Top = 0
      Width = 39
      AutoSize = True
      Caption = 'btn1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object btaAceptar: TToolButton
      Left = 156
      Top = 0
      Hint = 'Insertar'
      Caption = 'btaAceptar'
      Enabled = False
      ImageIndex = 19
      ParentShowHint = False
      ShowHint = True
      OnClick = btaAceptarClick
    end
    object btCerrar: TToolButton
      Left = 195
      Top = 0
      Hint = 'Cancelar'
      Caption = 'btCerrar'
      ImageIndex = 9
      ParentShowHint = False
      ShowHint = True
      OnClick = btCerrarClick
    end
  end
  object rDBGridClientes1: TrDBGrid_MS
    Left = 0
    Top = 33
    Width = 1095
    Height = 255
    Align = alClient
    DataSource = ds1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OptionsEx2.FixedCell.TitleExBtnHintRecCount = True
    OptionsEx2.Groups.Active = True
    Sorter = DataModule1.rDBGridSorter_FireDac1
    ColumnWidth = cwAutoWidth
    TitleLines = 2
    RowLines = 2
    FixedColText.FixedColWidth = 50
    FixedColText.ShowCheckbox = True
    FieldsGroups.Strings = (
      '[1::Presupuesto::::::::0]'
      'id_presupuesto=M'
      'grupo=0'
      'FechaPresupuesto=0'
      '')
    OnBoolClick = rDBGridClientes1BoolClick
    OnGetFixedColState = rDBGridClientes1GetFixedColState
    Columns = <
      item
        Expanded = False
        FieldName = 'id_presupuesto'
        Title.Alignment = taCenter
        Title.Caption = 'Presupuesto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'grupo'
        Title.Alignment = taCenter
        Title.Caption = 'Grupo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 76
        Visible = True
      end
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'FechaPresupuesto'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_Partida'
        Title.Alignment = taCenter
        Title.Caption = 'Partida'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 76
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
        Width = 424
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
        Width = 76
        Visible = True
      end
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'Fecha_Aprobado'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha Aprobado'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 106
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
        Width = 65
        Visible = True
      end>
  end
  object ds1: TDataSource
    DataSet = fdqlpresupuestos
    Left = 224
    Top = 136
  end
  object fdqlpresupuestos: TFDQuery
    AfterOpen = fdqlpresupuestosAfterOpen
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'SELECT  P.id_clientePrev,LP.diasejecucion, P.id_presupuesto, P.g' +
        'rupo, LP.Aprovado, LP.descripcion,LP.Total,LP.id_Partida,LP.obra' +
        ',P.FechaPresupuesto,LP.Fecha_Aprobado, LP.presupuestos_Id_presup' +
        'uesto,LP.presupuestos_grupo FROM lineaspresupuesto LP,presupuest' +
        'os P WHERE LP.presupuestos_id_presupuesto=P.id_presupuesto AND L' +
        'P.presupuestos_grupo=P.grupo AND P.id_ClientePrev=:IDCLIENTE AND' +
        ' LP.Aprovado=true AND (LP.obra is null)')
    Left = 488
    Top = 144
    ParamData = <
      item
        Name = 'IDCLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqlpresupuestosid_clientePrev: TIntegerField
      FieldName = 'id_clientePrev'
      Origin = 'id_clientePrev'
      Required = True
    end
    object fdqlpresupuestosid_presupuesto: TIntegerField
      FieldName = 'id_presupuesto'
      Origin = 'id_presupuesto'
      Required = True
    end
    object fdqlpresupuestosgrupo: TIntegerField
      FieldName = 'grupo'
      Origin = 'grupo'
      Required = True
    end
    object fdqlpresupuestosAprovado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'Aprovado'
      Origin = 'Aprovado'
    end
    object fdqlpresupuestosdescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descripcion'
      Origin = 'descripcion'
      Size = 255
    end
    object fdqlpresupuestosTotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total'
      Origin = 'Total'
    end
    object fdqlpresupuestosid_Partida: TIntegerField
      FieldName = 'id_Partida'
      Origin = 'id_Partida'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqlpresupuestosobra: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'obra'
      Origin = 'obra'
    end
    object fdqlpresupuestosFechaPresupuesto: TDateTimeField
      FieldName = 'FechaPresupuesto'
      Origin = 'FechaPresupuesto'
      Required = True
    end
    object fdqlpresupuestosFecha_Aprobado: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Fecha_Aprobado'
      Origin = 'Fecha_Aprobado'
    end
    object fdqlpresupuestospresupuestos_Id_presupuesto: TIntegerField
      FieldName = 'presupuestos_Id_presupuesto'
      Origin = 'presupuestos_Id_presupuesto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqlpresupuestospresupuestos_grupo: TIntegerField
      FieldName = 'presupuestos_grupo'
      Origin = 'presupuestos_grupo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqlpresupuestosdiasejecucion: TIntegerField
      FieldName = 'diasejecucion'
      Origin = 'diasejecucion'
      Required = True
    end
  end
end

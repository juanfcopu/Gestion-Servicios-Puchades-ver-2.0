object FLineasObrasFacturas: TFLineasObrasFacturas
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Selecciona L'#237'neas Obras'
  ClientHeight = 299
  ClientWidth = 1149
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
    Top = 280
    Width = 1149
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
    Width = 1149
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
      OnClick = btndeselecTodosClick
    end
    object btndeselecTodos: TToolButton
      Left = 39
      Top = 0
      Hint = 'Seleccionar Todos'
      Caption = 'btndeselecTodos'
      ImageIndex = 18
      ParentShowHint = False
      ShowHint = True
      OnClick = btnselectodosClick
    end
    object btVista: TToolButton
      Left = 78
      Top = 0
      Caption = 'btVista'
      ImageIndex = 22
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
    Width = 1149
    Height = 247
    Align = alClient
    DataSource = ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 2
    RowLines = 2
    FixedColText.FixedColWidth = 50
    FixedColText.ShowCheckbox = True
    OnGetFixedColState = rDBGridClientes1GetFixedColState
  end
  object ds1: TDataSource
    DataSet = fdqlobras
    Left = 432
    Top = 160
  end
  object fdqlobras: TFDQuery
    AfterOpen = fdqlobrasAfterOpen
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'SELECT O.ID_Cliente, O.descripcion as descripObra, O.id_obra, LO' +
        '.id_lineaobra, LO.obras_ID_obra, LO.descripcion,LO.Total,LO.fact' +
        'uras_id_factura,LO.facturas_ano,O.FechaComienzo,O.FechaFin FROM ' +
        'lineasobras LO,obras O WHERE LO.obras_id_obra=O.id_obra AND O.id' +
        '_cliente=:IDCLIENTE AND LO.facturas_id_factura is null')
    Left = 536
    Top = 184
    ParamData = <
      item
        Name = 'IDCLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqlobrasid_lineaobra: TIntegerField
      FieldName = 'id_lineaobra'
      Origin = 'id_lineaobra'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqlobrasobras_ID_obra: TIntegerField
      FieldName = 'obras_ID_obra'
      Origin = 'obras_ID_obra'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqlobrasdescripcion: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descripcion'
      Origin = 'descripcion'
      Size = 255
    end
    object fdqlobrasTotal: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Total'
      Origin = 'Total'
    end
    object fdqlobrasfacturas_id_factura: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'facturas_id_factura'
      Origin = 'facturas_id_factura'
    end
    object fdqlobrasfacturas_ano: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'facturas_ano'
      Origin = 'facturas_ano'
    end
    object fdqlobrasFechaComienzo: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'FechaComienzo'
      Origin = 'FechaComienzo'
    end
    object fdqlobrasFechaFin: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'FechaFin'
      Origin = 'FechaFin'
    end
    object fdqlobrasid_obra: TFDAutoIncField
      FieldName = 'id_obra'
      Origin = 'id_obra'
      ReadOnly = True
    end
    object fdqlobrasID_Cliente: TIntegerField
      FieldName = 'ID_Cliente'
      Origin = 'ID_Cliente'
      Required = True
    end
    object fdqlobrasdescripObra: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'descripObra'
      Origin = 'descripObra'
      BlobType = ftMemo
    end
  end
end

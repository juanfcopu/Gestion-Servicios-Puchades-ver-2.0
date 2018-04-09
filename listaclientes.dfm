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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ListView1: TListView
    Left = 0
    Top = 113
    Width = 1414
    Height = 502
    Align = alClient
    Columns = <
      item
        AutoSize = True
        Caption = 'Cliente'
        ImageIndex = 6
        MaxWidth = 188
      end
      item
        AutoSize = True
        Caption = 'CIF'
      end
      item
        AutoSize = True
        Caption = 'Direcci'#243'n'
      end
      item
        Alignment = taCenter
        AutoSize = True
        Caption = 'Codigo Postal'
      end
      item
        AutoSize = True
        Caption = 'Ciudad'
      end>
    DoubleBuffered = True
    FlatScrollBars = True
    LargeImages = DataModule1.ImageList1
    GroupHeaderImages = DataModule1.ImageList1
    RowSelect = True
    ParentDoubleBuffered = False
    ShowWorkAreas = True
    TabOrder = 0
    ViewStyle = vsReport
    OnDblClick = ListView1DblClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1414
    Height = 113
    Align = alTop
    TabOrder = 1
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 447
      Top = 65
      Width = 161
      Height = 44
      Align = alLeft
      Caption = 'Agrupar'
      TabOrder = 0
      object cbAgruparAdmin: TCheckBox
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 151
        Height = 17
        Align = alTop
        Caption = 'Agrupar porAministrador'
        TabOrder = 0
        OnClick = cbAgruparAdminClick
      end
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 65
      Width = 293
      Height = 44
      Align = alLeft
      Caption = 'Buscar'
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 19
        Width = 33
        Height = 13
        Caption = 'Cliente'
      end
      object beBuscar: TButtonedEdit
        Left = 65
        Top = 16
        Width = 225
        Height = 21
        Align = alCustom
        CharCase = ecUpperCase
        TabOrder = 0
        OnChange = beBuscarChange
      end
    end
    object GroupBox4: TGroupBox
      AlignWithMargins = True
      Left = 303
      Top = 65
      Width = 138
      Height = 44
      Align = alLeft
      Caption = 'Ordenar'
      TabOrder = 2
      object cbOrdenarC: TCheckBox
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 128
        Height = 17
        Align = alTop
        Caption = 'Ordenar por nombre'
        TabOrder = 0
        OnClick = cbOrdenarCClick
      end
    end
    object ControlBar1: TControlBar
      Left = 1
      Top = 1
      Width = 1412
      Height = 61
      Align = alTop
      TabOrder = 3
      object ToolBar1: TToolBar
        Left = 88
        Top = 2
        Width = 217
        Height = 48
        Caption = 'ToolBar1'
        TabOrder = 0
      end
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DataModule1.fdClientes
    ScopeMappings = <>
    Left = 440
    Top = 304
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 356
    Top = 305
    object LinkControlToPropertyGroupView: TLinkControlToProperty
      Category = 'Quick Bindings'
      Control = cbAgruparAdmin
      Track = True
      Component = ListView1
      ComponentProperty = 'GroupView'
    end
    object linklistaclientes: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'nombre'
      Control = ListView1
      AutoActivate = False
      FillExpressions = <
        item
          SourceMemberName = 'CIF'
          ControlMemberName = 'SubItems[0]'
        end
        item
          SourceMemberName = 'direccion'
          ControlMemberName = 'SubItems[1]'
        end
        item
          SourceMemberName = 'CodigoPostal'
          ControlMemberName = 'SubItems[2]'
        end
        item
          SourceMemberName = 'Ciudad'
          ControlMemberName = 'SubItems[3]'
        end>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
end

object FClientes: TFClientes
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Cliente'
  ClientHeight = 741
  ClientWidth = 1342
  Color = clBtnFace
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 45
    Width = 1336
    Height = 129
    Align = alTop
    Anchors = [akTop, akRight]
    Caption = 'Datos del Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object GridPanel2: TGridPanel
      Left = 2
      Top = 15
      Width = 1332
      Height = 112
      Align = alClient
      ColumnCollection = <
        item
          Value = 31.674129194655710000
        end
        item
          Value = 28.917999114429130000
        end
        item
          Value = 19.805169006120510000
        end
        item
          Value = 19.602702684794650000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = GroupBox4
          Row = 0
        end
        item
          Column = 2
          Control = GroupBox2
          Row = 0
        end
        item
          Column = 3
          Control = GroupBox5
          Row = 0
        end
        item
          Column = 1
          Control = GroupBox3
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end
        item
          SizeStyle = ssAuto
        end>
      TabOrder = 0
      OnResize = GridPanel2Resize
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 11
        Top = 4
        Width = 408
        Height = 97
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
          Left = 9
          Top = 40
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
          ParentFont = False
          TabOrder = 0
        end
        object LabeledEdit2: TLabeledEdit
          AlignWithMargins = True
          Left = 56
          Top = 40
          Width = 235
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
          ParentFont = False
          TabOrder = 1
        end
        object LabeledEdit3: TLabeledEdit
          AlignWithMargins = True
          Left = 305
          Top = 40
          Width = 91
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
          ParentFont = False
          TabOrder = 2
        end
      end
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 816
        Top = 4
        Width = 243
        Height = 97
        Margins.Left = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alClient
        Caption = 'Datos Bancarios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object LabeledEdit4: TLabeledEdit
          Left = 62
          Top = 54
          Width = 175
          Height = 21
          EditLabel.Width = 50
          EditLabel.Height = 13
          EditLabel.Caption = 'N'#186' Cuenta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          ParentFont = False
          TabOrder = 0
        end
        object LabeledEdit5: TLabeledEdit
          Left = 62
          Top = 17
          Width = 175
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 29
          EditLabel.Height = 13
          EditLabel.Caption = 'Banco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          LabelPosition = lpLeft
          ParentFont = False
          TabOrder = 1
        end
      end
      object GroupBox5: TGroupBox
        AlignWithMargins = True
        Left = 1072
        Top = 4
        Width = 256
        Height = 104
        Align = alClient
        Caption = 'Familia y Administrador'
        TabOrder = 2
        object Label1: TLabel
          AlignWithMargins = True
          Left = 15
          Top = 20
          Width = 32
          Height = 13
          Caption = 'Familia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          AlignWithMargins = True
          Left = 11
          Top = 57
          Width = 66
          Height = 13
          Caption = 'Administrador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object ComboBox1: TComboBox
          AlignWithMargins = True
          Left = 91
          Top = 17
          Width = 157
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'COMUNIDAD DE PROPIETARIOS'
          Items.Strings = (
            'COMUNIDAD DE PROPIETARIOS'
            'PROPIETARIO  RESIDENCIA'
            'PROPIETARIO 2'#186' RESIDENCIA')
        end
        object ComboBox2: TComboBox
          AlignWithMargins = True
          Left = 91
          Top = 52
          Width = 157
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = 'ComboBox1'
          Items.Strings = (
            'ADMINISTRACI'#211'N F.M PORTA'#209'A'
            'ADMINISTRACIONES FELIU'
            'ADMINISTRACIONES RIVELLES'
            'CARLOS  ORRICO'
            'CAROLINA GALVEZ'
            'EMILIA PICAZO'
            'ENRIQUE MARTIN'
            'ESPERANZA  SERRANO AMADOR'
            'ESPERANZA LOPEZ'
            'JOSE  IGNACIO'
            'JUAN  QUINTO'
            'JUAN LUIS  MARQU'#201'S ROMERO'
            'LDCOMUNIDADES '
            'MIGUEL  GURREA LLOPIS'
            'NURIA L'#211'PEZ RIBELLES'
            'PABLO  BELLIDO'
            'PILAR '
            'RAM'#211'N GUILLOT'
            'RUIZ   MAURI S.L'
            'SAN JUAN  S.L'
            'SIN ADMINISTRADOR'
            'TERESA DE LA CAMARA'
            'TOMAS  MU'#209'OZ'
            'VILLANUEVA ROIG S.L S.L')
        end
      end
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 432
        Top = 4
        Width = 371
        Height = 97
        Margins.Left = 10
        Margins.Bottom = 10
        Align = alClient
        Caption = 'Direcci'#243'n '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object LabeledEdit6: TLabeledEdit
          Left = 72
          Top = 20
          Width = 281
          Height = 21
          EditLabel.Width = 43
          EditLabel.Height = 13
          EditLabel.Caption = 'Direcci'#243'n'
          LabelPosition = lpLeft
          TabOrder = 0
        end
        object LabeledEdit7: TLabeledEdit
          Left = 72
          Top = 61
          Width = 77
          Height = 21
          EditLabel.Width = 65
          EditLabel.Height = 13
          EditLabel.Caption = 'Codigo Postal'
          LabelPosition = lpLeft
          TabOrder = 1
        end
        object LabeledEdit8: TLabeledEdit
          Left = 200
          Top = 61
          Width = 153
          Height = 21
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'Ciudad'
          LabelPosition = lpLeft
          TabOrder = 2
        end
      end
    end
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 177
    Width = 1342
    Height = 564
    Align = alClient
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end
      item
        SizeStyle = ssAuto
      end>
    ControlCollection = <
      item
        Column = 0
        ColumnSpan = 2
        Control = Panel1
        Row = 2
      end
      item
        Column = 0
        Control = Frame11
        Row = 0
      end
      item
        Column = 1
        Control = Frame21
        Row = 0
      end
      item
        Column = 0
        Control = Frame31
        Row = 1
      end
      item
        Column = 1
        Control = Frame41
        Row = 1
      end>
    ExpandStyle = emAddColumns
    RowCollection = <
      item
        Value = 38.463416191288090000
      end
      item
        Value = 38.459660731788840000
      end
      item
        Value = 23.076923076923070000
      end>
    TabOrder = 1
    object Panel1: TPanel
      Left = 1
      Top = 433
      Width = 1340
      Height = 130
      Align = alClient
      TabOrder = 0
      object Label3: TLabel
        Left = 816
        Top = 80
        Width = 42
        Height = 16
        Caption = 'Label3'
      end
      object DBGrid1: TDBGrid
        Left = 41
        Top = 6
        Width = 320
        Height = 120
        DataSource = dsfdpresupuestos
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
      end
      object DBGrid2: TDBGrid
        Left = 388
        Top = 6
        Width = 320
        Height = 120
        DataSource = dsfdlineaspresupuesto
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
      end
      object rDBRecordSelection1: TrDBRecordSelection
        Left = 768
        Top = 32
        Width = 129
        Height = 24
        AutoDropDown = True
        DropDownCount = 15
        Enabled = False
        TabOrder = 2
        DataSource = dsfdpresupuestos
        RecIdField = 'id_presupuesto'
        DBEditLabel.ShowRequiredMark = False
      end
    end
    inline Frame11: TFrame1
      Left = 1
      Top = 1
      Width = 670
      Height = 216
      Align = alClient
      Anchors = []
      TabOrder = 1
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 670
      ExplicitHeight = 216
      inherited Panel1: TPanel
        Width = 670
        Height = 216
        ExplicitWidth = 670
        ExplicitHeight = 216
        inherited HeaderControl1: THeaderControl
          Width = 662
          Sections = <
            item
              ImageIndex = -1
              Text = 'Presupuestos'
              Width = 120
            end>
          ExplicitWidth = 662
        end
        inherited Button1: TButton
          Top = 5
          Caption = ''
          ImageAlignment = iaCenter
          ImageIndex = 1
          Images = DataModule1.icopeque
          Visible = True
          OnClick = Frame11Button1Click
          ExplicitTop = 5
        end
        inherited Button2: TButton
          Top = 5
          Caption = ''
          ImageAlignment = iaCenter
          ImageIndex = 3
          Images = DataModule1.icopeque
          Visible = True
          OnClick = Frame11Button2Click
          ExplicitTop = 5
        end
        inherited Button3: TButton
          Left = 398
          Top = 5
          Caption = ''
          ImageAlignment = iaCenter
          ImageIndex = 2
          Images = DataModule1.icopeque
          Visible = True
          StyleElements = []
          OnClick = Frame11Button3Click
          ExplicitLeft = 398
          ExplicitTop = 5
        end
        inherited ListViewPresupuestos: TListView
          Width = 662
          Height = 166
          Checkboxes = True
          Columns = <
            item
              Caption = 'N'#250'mero'
              Width = 65
            end
            item
              Caption = 'Grupo'
            end
            item
              Caption = 'Descripci'#243'n'
            end
            item
              Caption = 'Total'
            end>
          DragMode = dmAutomatic
          Font.Height = -13
          Font.Style = [fsBold]
          RowSelect = True
          ParentFont = False
          ViewStyle = vsReport
          OnAdvancedCustomDrawItem = Frame11ListView1AdvancedCustomDrawItem
          OnDblClick = Frame11ListView1DblClick
          ExplicitLeft = 4
          ExplicitTop = 46
          ExplicitWidth = 662
          ExplicitHeight = 166
        end
      end
    end
    inline Frame21: TFrame2
      Left = 671
      Top = 1
      Width = 670
      Height = 216
      Align = alClient
      Anchors = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      ExplicitLeft = 671
      ExplicitTop = 1
      ExplicitWidth = 670
      ExplicitHeight = 216
      inherited Panel1: TPanel
        Width = 670
        Height = 216
        ExplicitWidth = 670
        ExplicitHeight = 216
        inherited HeaderControl1: THeaderControl
          Width = 662
          ExplicitWidth = 662
        end
        inherited Button1: TButton
          Font.Height = -13
          Font.Style = [fsBold]
          Visible = True
        end
        inherited Button2: TButton
          Font.Height = -13
          Font.Style = [fsBold]
          Visible = True
        end
        inherited Button3: TButton
          Font.Height = -13
          Font.Style = [fsBold]
          Visible = True
        end
        inherited ListViewFacturas: TListView
          Width = 662
          Height = 166
          Columns = <
            item
              Caption = 'N'#250'mero'
              Width = 70
            end
            item
              Caption = 'Concepto'
            end
            item
              Caption = 'Fecha'
              Width = 94
            end>
          Font.Height = -13
          RowSelect = True
          ViewStyle = vsReport
          Visible = True
          OnAdvancedCustomDrawItem = Frame11ListView1AdvancedCustomDrawItem
          ExplicitWidth = 662
          ExplicitHeight = 166
        end
      end
    end
    inline Frame31: TFrame3
      Left = 1
      Top = 217
      Width = 670
      Height = 216
      Align = alClient
      TabOrder = 3
      ExplicitLeft = 1
      ExplicitTop = 217
      ExplicitWidth = 670
      ExplicitHeight = 216
      inherited Panel1: TPanel
        Width = 670
        Height = 216
        ExplicitWidth = 670
        ExplicitHeight = 216
        inherited ListViewObras: TListView
          Width = 662
          Height = 166
          Columns = <
            item
              Caption = 'N'#250'mero'
              Width = 65
            end
            item
              Caption = 'Descripci'#243'n'
            end
            item
              Caption = 'Fecha Origen'
              Width = 96
            end>
          DragKind = dkDock
          Font.Height = -13
          RowSelect = True
          ViewStyle = vsReport
          OnAdvancedCustomDrawItem = Frame11ListView1AdvancedCustomDrawItem
          OnDragDrop = Frame31ListViewObrasDragDrop
          OnDragOver = Frame31ListViewObrasDragOver
          ExplicitWidth = 662
          ExplicitHeight = 166
        end
        inherited HeaderControl1: THeaderControl
          Width = 662
          ExplicitWidth = 662
        end
      end
    end
    inline Frame41: TFrame4
      AlignWithMargins = True
      Left = 674
      Top = 220
      Width = 664
      Height = 210
      Align = alClient
      Anchors = []
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      ExplicitLeft = 674
      ExplicitTop = 220
      ExplicitWidth = 664
      ExplicitHeight = 210
      inherited Panel1: TPanel
        Width = 664
        Height = 210
        ExplicitWidth = 664
        ExplicitHeight = 210
        inherited ListViewContactos: TListView
          Width = 656
          Height = 160
          Columns = <
            item
              AutoSize = True
              Caption = 'Puerta'
            end
            item
              AutoSize = True
              Caption = 'Nombre'
            end
            item
              AutoSize = True
              Caption = 'Tel'#233'fono 1'
            end
            item
              AutoSize = True
              Caption = 'Tel'#233'fono 2'
            end
            item
              AutoSize = True
              Caption = 'Tel'#233'fono 3'
            end
            item
              Caption = 'Mail'
            end>
          Font.Height = -13
          OnAdvancedCustomDrawItem = Frame11ListView1AdvancedCustomDrawItem
          ExplicitWidth = 656
          ExplicitHeight = 160
        end
        inherited HeaderControl1: THeaderControl
          Width = 656
          ExplicitWidth = 656
        end
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 1342
    Height = 42
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 35
        Width = 1336
      end>
    object ToolBar1: TToolBar
      Left = 11
      Top = 0
      Width = 1327
      Height = 35
      ButtonHeight = 25
      ButtonWidth = 33
      Caption = 'ToolBar1'
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Caption = 'Editar Cliente'
        OnClick = ToolButton1Click
      end
    end
  end
  object fdclientes: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from clientes where idContactos=:id_cliente')
    Left = 525
    Top = 131
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdpresupuestos: TFDQuery
    IndexFieldNames = 'id_presupuesto;grupo'
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from presupuestos P '
      'where P.id_clienteprev=:id_cliente '
      'order by P.id_presupuesto DESC, P.grupo DESC ')
    Left = 397
    Top = 283
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdfacturas: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select * from facturas where idcliente=:id_cliente order by Fech' +
        'aFactura DESC')
    Left = 853
    Top = 267
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdobras: TFDQuery
    Connection = DataModule1.FDConnection1
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    SQL.Strings = (
      'select * from obras where id_cliente=:id_cliente')
    Left = 341
    Top = 499
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdContactos: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from contactosclientes where id_cliente=:id_cliente')
    Left = 805
    Top = 515
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = fdclientes
    ScopeMappings = <>
    Left = 456
    Top = 120
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 28
    Top = 141
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CodigoPostal'
      Control = LabeledEdit7
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'Ciudad'
      Control = LabeledEdit8
      AutoActivate = False
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'Direccion'
      Control = LabeledEdit6
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'IBAN'
      Control = LabeledEdit4
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'banco'
      Control = LabeledEdit5
      Track = True
    end
    object LinkControlToField6: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'CIF'
      Control = LabeledEdit3
      Track = True
    end
    object LinkControlToField7: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'Nombre'
      Control = LabeledEdit2
      Track = True
    end
    object LinkControlToField8: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'IdContactos'
      Control = LabeledEdit1
      Track = True
    end
    object LinkPropertyToFieldItemIndex: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'familia'
      Component = ComboBox1
      ComponentProperty = 'ItemIndex'
    end
    object LinkListControlToField1: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB3
      FieldName = 'idFactura'
      Control = Frame21.ListViewFacturas
      AutoActivate = False
      FillExpressions = <
        item
          SourceMemberName = 'Concepto'
          ControlMemberName = 'SubItems[0]'
        end
        item
          SourceMemberName = 'FechaFactura'
          ControlMemberName = 'SubItems[1]'
        end>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkListControlToField3: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB4
      FieldName = 'ID_obra'
      Control = Frame31.ListViewObras
      AutoActivate = False
      FillExpressions = <
        item
          SourceMemberName = 'Descripcion'
          ControlMemberName = 'SubItems[0]'
        end
        item
          SourceMemberName = 'FechaComienzo'
          ControlMemberName = 'SubItems[1]'
        end>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkListControlToField4: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB5
      FieldName = 'pta'
      Control = Frame41.ListViewContactos
      AutoActivate = False
      FillExpressions = <
        item
          SourceMemberName = 'nombre'
          ControlMemberName = 'SubItems[0]'
        end
        item
          SourceMemberName = 'telefono1'
          ControlMemberName = 'SubItems[1]'
        end
        item
          SourceMemberName = 'telefono2'
          ControlMemberName = 'SubItems[2]'
        end
        item
          SourceMemberName = 'telefono3'
          ControlMemberName = 'SubItems[3]'
        end
        item
          SourceMemberName = 'mail'
          ControlMemberName = 'SubItems[4]'
        end>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'idAdministrador'
      Control = ComboBox2
      Track = True
      FillDataSource = BindSourceDB6
      FillValueFieldName = 'idAdministrador'
      FillDisplayFieldName = 'NombreApellidos'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkListControlToField2: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'id_presupuesto'
      Control = Frame11.ListViewPresupuestos
      FillExpressions = <
        item
          SourceMemberName = 'grupo'
          ControlMemberName = 'SubItems[0]'
        end
        item
          SourceMemberName = 'Descripcion'
          ControlMemberName = 'SubItems[1]'
        end
        item
          SourceMemberName = 'Total'
          ControlMemberName = 'SubItems[2]'
        end>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
  object fdAdministradores: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select idAdministrador, NombreApellidos from administradores')
    Left = 1248
    Top = 32
  end
  object BindSourceDB2: TBindSourceDB
    DataSource.AutoEdit = False
    DataSet = fdpresupuestos
    ScopeMappings = <>
    Left = 304
    Top = 280
  end
  object BindSourceDB3: TBindSourceDB
    DataSource.AutoEdit = False
    DataSet = fdfacturas
    ScopeMappings = <>
    Left = 800
    Top = 296
  end
  object BindSourceDB4: TBindSourceDB
    DataSource.AutoEdit = False
    DataSet = fdobras
    ScopeMappings = <>
    Left = 496
    Top = 504
  end
  object BindSourceDB5: TBindSourceDB
    DataSet = fdContactos
    ScopeMappings = <>
    Left = 752
    Top = 480
  end
  object BindSourceDB6: TBindSourceDB
    DataSet = fdAdministradores
    ScopeMappings = <>
    Left = 1184
    Top = 8
  end
  object dsfdpresupuestos: TDataSource
    DataSet = fdpresupuestos
    Left = 209
    Top = 282
  end
  object fdlineaspresupuesto: TFDQuery
    IndexFieldNames = 'presupuestos_id_presupuesto;presupuestos_grupo'
    MasterSource = dsfdpresupuestos
    MasterFields = 'id_presupuesto;grupo'
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from lineaspresupuesto where'
      'presupuestos_id_presupuesto=:id_presupuesto and'
      'presupuestos_grupo=:grupo')
    Left = 505
    Top = 282
    ParamData = <
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
  object dsfdlineaspresupuesto: TDataSource
    DataSet = fdlineaspresupuesto
    Left = 585
    Top = 650
  end
  object FDlineasObras: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from lineasobras where id_lineaobra=:ID_OBRA')
    Left = 440
    Top = 513
    ParamData = <
      item
        Name = 'ID_OBRA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end

object listadministradores: Tlistadministradores
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Lista Administradores'
  ClientHeight = 617
  ClientWidth = 1416
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
    Top = 44
    Width = 1416
    Height = 113
    Align = alTop
    TabOrder = 0
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 341
      Height = 105
      Align = alLeft
      Caption = 'Buscar'
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 19
        Width = 66
        Height = 13
        Caption = 'Administrador'
      end
      object beBuscar: TButtonedEdit
        Left = 88
        Top = 16
        Width = 225
        Height = 21
        Align = alCustom
        CharCase = ecUpperCase
        TabOrder = 0
      end
    end
    object GroupBox4: TGroupBox
      AlignWithMargins = True
      Left = 351
      Top = 4
      Width = 138
      Height = 105
      Align = alLeft
      Caption = 'Ordenar'
      TabOrder = 1
      object cbOrdenarC: TCheckBox
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 128
        Height = 17
        Align = alTop
        Caption = 'Ordenar por nombre'
        TabOrder = 0
      end
    end
  end
  object tlb1: TToolBar
    Left = 0
    Top = 0
    Width = 1416
    Height = 44
    ButtonHeight = 42
    ButtonWidth = 42
    Caption = 'tlb1'
    Images = DataModule1.ImageList1
    TabOrder = 1
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
      ImageIndex = 35
      OnClick = btn3Click
    end
    object btn6: TToolButton
      Left = 92
      Top = 0
      Caption = 'btn6'
      ImageIndex = 36
      OnClick = btn6Click
    end
    object btn5: TToolButton
      Left = 134
      Top = 0
      Caption = 'btn5'
      ImageIndex = 37
    end
    object btn4: TToolButton
      Left = 176
      Top = 0
      Caption = 'btn4'
      ImageIndex = 34
      OnClick = btn4Click
    end
  end
  object rdbgrid1: TrDBGrid_MS
    AlignWithMargins = True
    Left = 3
    Top = 160
    Width = 1410
    Height = 454
    Align = alClient
    DataSource = ds1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 2
    RowLines = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'NombreApellidos'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idAdministrador'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NombreApellidos'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'correo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefonomovil'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefonotrabajo'
        Visible = True
      end>
  end
  object ds1: TDataSource
    DataSet = DataModule1.fdadministradores
    Left = 432
    Top = 424
  end
end

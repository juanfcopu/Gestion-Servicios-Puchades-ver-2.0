object configuracion: Tconfiguracion
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Configuracion'
  ClientHeight = 364
  ClientWidth = 749
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
  object pgc1: TPageControl
    Left = 0
    Top = 0
    Width = 749
    Height = 364
    ActivePage = ts1
    Align = alClient
    TabOrder = 0
    object tsServidor: TTabSheet
      Caption = 'Servidor'
      object btn1: TButton
        Left = 336
        Top = 272
        Width = 75
        Height = 25
        Caption = 'Aceptar'
        TabOrder = 5
        OnClick = btn1Click
      end
      object lbEservidor: TLabeledEdit
        Left = 160
        Top = 48
        Width = 121
        Height = 21
        EditLabel.Width = 40
        EditLabel.Height = 13
        EditLabel.Caption = 'Servidor'
        LabelPosition = lpLeft
        TabOrder = 1
      end
      object lbEpuerto: TLabeledEdit
        Left = 160
        Top = 93
        Width = 121
        Height = 21
        EditLabel.Width = 37
        EditLabel.Height = 13
        EditLabel.Caption = 'Pucerto'
        LabelPosition = lpLeft
        TabOrder = 2
      end
      object lbEdriver: TLabeledEdit
        Left = 160
        Top = 3
        Width = 121
        Height = 21
        EditLabel.Width = 29
        EditLabel.Height = 13
        EditLabel.Caption = 'Driver'
        LabelPosition = lpLeft
        TabOrder = 0
      end
      object lbEDataBase: TLabeledEdit
        Left = 160
        Top = 144
        Width = 121
        Height = 21
        EditLabel.Width = 53
        EditLabel.Height = 13
        EditLabel.Caption = 'lbEservidor'
        LabelPosition = lpLeft
        TabOrder = 3
      end
      object lbEVerdorLib: TLabeledEdit
        Left = 160
        Top = 192
        Width = 473
        Height = 21
        EditLabel.Width = 53
        EditLabel.Height = 13
        EditLabel.Caption = 'lbEservidor'
        LabelPosition = lpLeft
        TabOrder = 4
      end
      object btncancelar: TButton
        Left = 456
        Top = 272
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 6
        OnClick = btCancelar2Click
      end
    end
    object tsPath: TTabSheet
      Caption = 'PATH'
      ImageIndex = 1
      object lbPathUSer: TLabeledEdit
        Left = 152
        Top = 88
        Width = 450
        Height = 21
        EditLabel.Width = 55
        EditLabel.Height = 13
        EditLabel.Caption = 'PATH USER'
        LabelPosition = lpLeft
        TabOrder = 0
      end
      object lbPathPlantillas: TLabeledEdit
        Left = 152
        Top = 128
        Width = 450
        Height = 21
        EditLabel.Width = 87
        EditLabel.Height = 13
        EditLabel.Caption = 'PATH PLANTILLAS'
        LabelPosition = lpLeft
        TabOrder = 1
      end
      object lbPathPresupuestos: TLabeledEdit
        Left = 152
        Top = 176
        Width = 450
        Height = 21
        EditLabel.Width = 106
        EditLabel.Height = 13
        EditLabel.Caption = 'PATH PRESUPUESTOS'
        LabelPosition = lpLeft
        TabOrder = 2
      end
      object lbPathObras: TLabeledEdit
        Left = 152
        Top = 216
        Width = 450
        Height = 21
        EditLabel.Width = 63
        EditLabel.Height = 13
        EditLabel.Caption = 'PATH OBRAS'
        LabelPosition = lpLeft
        TabOrder = 3
      end
      object btAceptar: TButton
        Left = 288
        Top = 288
        Width = 75
        Height = 25
        Caption = 'btAceptar'
        TabOrder = 4
        OnClick = btAceptarClick
      end
      object btCancelar1: TButton
        Left = 400
        Top = 288
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 5
        OnClick = btCancelar2Click
      end
    end
    object tsIVA: TTabSheet
      Caption = 'I.V.A y Descuentos'
      ImageIndex = 2
      object lbIVAdefecto: TLabeledEdit
        Left = 160
        Top = 96
        Width = 73
        Height = 21
        EditLabel.Width = 57
        EditLabel.Height = 13
        EditLabel.Caption = 'IVA defecto'
        LabelPosition = lpLeft
        TabOrder = 0
        OnKeyPress = lbIVAdefectoKeyPress
      end
      object btAceptar2: TButton
        Left = 240
        Top = 272
        Width = 75
        Height = 25
        Caption = 'Aceptar'
        TabOrder = 1
        OnClick = btAceptar2Click
      end
      object btCancelar2: TButton
        Left = 392
        Top = 272
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 2
        OnClick = btCancelar2Click
      end
    end
    object ts1: TTabSheet
      Caption = 'Empresa'
      ImageIndex = 3
      object lbedEmpresa: TLabeledEdit
        Left = 280
        Top = 88
        Width = 121
        Height = 21
        EditLabel.Width = 41
        EditLabel.Height = 13
        EditLabel.Caption = 'Empresa'
        LabelPosition = lpLeft
        TabOrder = 0
      end
      object btn2: TButton
        Left = 248
        Top = 280
        Width = 75
        Height = 25
        Caption = 'Aceptar'
        TabOrder = 1
        OnClick = btn2Click
      end
      object btn3: TButton
        Left = 400
        Top = 280
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 2
        OnClick = btCancelar2Click
      end
    end
  end
end

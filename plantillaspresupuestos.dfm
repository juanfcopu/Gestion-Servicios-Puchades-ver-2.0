object FPlantillasPresupuestos: TFPlantillasPresupuestos
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Plantillas Presupuestos'
  ClientHeight = 487
  ClientWidth = 722
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
  object rztlbr1: TRzToolbar
    Left = 0
    Top = 0
    Width = 722
    Height = 29
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = [sdTop]
    BorderWidth = 0
    TabOrder = 0
    ExplicitWidth = 573
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 29
    Width = 722
    Height = 396
    Align = alTop
    BorderShadow = clSilver
    TabOrder = 1
    object rStringGridEd1: TrStringGridEd
      Left = 2
      Top = 2
      Width = 718
      Height = 392
      Align = alClient
      ColCount = 2
      DefaultColWidth = 90
      DefaultRowHeight = 25
      DefaultDrawing = False
      FixedCols = 0
      RowCount = 6
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
      TabOrder = 0
      Columns = <
        item
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TitleCaption = 'Plantilla'
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          TitleParentFont = False
          Width = 195
        end
        item
          ButtonStyle = sgbEllipsis
          AutoAlignment = True
          TitleCaption = 'Path'
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          TitleParentFont = False
          Width = 515
        end>
      ExplicitHeight = 292
      ColWidths = (
        195
        515)
      RowHeights = (
        25
        25
        25
        25
        25
        25)
    end
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 468
    Width = 722
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 2
    ExplicitTop = 362
    ExplicitWidth = 573
    object RzStatusPane1: TRzStatusPane
      Left = 0
      Top = 0
      Width = 177
      Height = 19
      Align = alLeft
      BlinkIntervalOff = 100
      BlinkIntervalOn = 100
      Caption = ''
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 425
    Width = 722
    Height = 43
    Align = alClient
    TabOrder = 3
    ExplicitTop = 305
    ExplicitWidth = 573
    ExplicitHeight = 40
    object Button1: TButton
      Left = 88
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      TabOrder = 0
    end
    object btn1: TButton
      Left = 208
      Top = 6
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cerrar'
      TabOrder = 1
      OnClick = btn1Click
    end
  end
end

object principal: Tprincipal
  Left = 0
  Top = 0
  Caption = 'Gesti'#243'n Servicios Puchades ver 2.0'
  ClientHeight = 757
  ClientWidth = 1184
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  ScreenSnap = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 735
    Width = 1184
    Height = 22
    Panels = <>
  end
  object Panel3: TPanel
    Left = 0
    Top = 49
    Width = 1184
    Height = 686
    Align = alClient
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 224
      Top = 1
      Width = 10
      Height = 684
      Beveled = True
      ResizeStyle = rsNone
      ExplicitHeight = 733
    end
    object Panel2: TPanel
      Left = 238
      Top = 1
      Width = 945
      Height = 684
      Align = alRight
      Alignment = taLeftJustify
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object PageControl2: TPageControl
        Left = 1
        Top = 1
        Width = 943
        Height = 682
        Align = alClient
        DockSite = True
        Images = DataModule1.ImageList1
        TabOrder = 0
        OnDockDrop = PageControl2DockDrop
        OnDockOver = PageControl2DockOver
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 223
      Height = 684
      Align = alLeft
      DockSite = True
      DragMode = dmAutomatic
      ShowCaption = False
      TabOrder = 1
      VerticalAlignment = taAlignTop
      OnDockOver = Panel1DockOver
    end
  end
  object ControlBar1: TControlBar
    Left = 0
    Top = 0
    Width = 1184
    Height = 49
    Align = alTop
    TabOrder = 2
  end
  object MainMenu1: TMainMenu
    Left = 482
    Top = 73
    object Clientes1: TMenuItem
      Caption = 'Clientes'
    end
  end
end

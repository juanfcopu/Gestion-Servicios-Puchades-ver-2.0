object Frame3: TFrame3
  Left = 0
  Top = 0
  Width = 451
  Height = 305
  Align = alClient
  TabOrder = 0
  OnResize = FrameResize
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 451
    Height = 305
    Align = alClient
    TabOrder = 0
    object ListViewObras: TListView
      AlignWithMargins = True
      Left = 4
      Top = 46
      Width = 443
      Height = 255
      Align = alClient
      Columns = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnResize = ListViewObrasResize
    end
    object HeaderControl1: THeaderControl
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 443
      Height = 36
      Sections = <
        item
          ImageIndex = -1
          Text = 'Obras'
          Width = 120
        end>
    end
    object Button1: TButton
      Left = 404
      Top = 1
      Width = 32
      Height = 32
      Caption = 'Button1'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 442
      Top = 1
      Width = 32
      Height = 32
      Caption = 'Button1'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 480
      Top = 1
      Width = 32
      Height = 32
      Caption = 'Button1'
      TabOrder = 2
    end
    object btncrearfactura: TButton
      Left = 366
      Top = 2
      Width = 32
      Height = 32
      Caption = 'Button1'
      TabOrder = 3
    end
  end
end

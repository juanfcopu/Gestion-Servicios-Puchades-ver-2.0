object Frame4: TFrame4
  Left = 0
  Top = 0
  Width = 451
  Height = 304
  Align = alClient
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  OnResize = FrameResize
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 451
    Height = 304
    Align = alClient
    Alignment = taLeftJustify
    TabOrder = 0
    object ListView1: TListView
      AlignWithMargins = True
      Left = 4
      Top = 46
      Width = 443
      Height = 254
      Align = alClient
      Columns = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      RowSelect = True
      ParentFont = False
      TabOrder = 0
      ViewStyle = vsReport
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
          Text = 'Contactos'
          Width = 120
        end>
    end
    object Button1: TButton
      Left = 435
      Top = 1
      Width = 32
      Height = 32
      Caption = 'Button1'
      TabOrder = 2
    end
    object Button2: TButton
      Left = 474
      Top = 1
      Width = 32
      Height = 32
      Caption = 'Button1'
      TabOrder = 3
    end
    object Button3: TButton
      Left = 512
      Top = 1
      Width = 32
      Height = 32
      Caption = 'Button1'
      TabOrder = 4
    end
  end
end

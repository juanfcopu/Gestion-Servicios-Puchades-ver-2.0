object FEstadisticasGastosVentas: TFEstadisticasGastosVentas
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Estad'#237'sticas Gastos'
  ClientHeight = 785
  ClientWidth = 1012
  Color = clBtnFace
  DragKind = dkDock
  DragMode = dmAutomatic
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
  object lbl1: TLabel
    Left = 384
    Top = 136
    Width = 16
    Height = 13
    Caption = 'lbl1'
  end
  object tlb1: TToolBar
    Left = 0
    Top = 0
    Width = 1012
    Height = 38
    ButtonHeight = 38
    ButtonWidth = 39
    Caption = 'tlb1'
    Images = DataModule1.ImageList1
    TabOrder = 0
    object btnExpandirArbol: TToolButton
      Left = 0
      Top = 0
      Action = actExpandirArbol
      ImageIndex = 53
    end
    object btnContraer: TToolButton
      Left = 39
      Top = 0
      Action = actContraer
      ImageIndex = 55
    end
    object btn1: TToolButton
      Left = 78
      Top = 0
      Caption = 'btn1'
      ImageIndex = 54
      OnClick = btn1Click
    end
    object ToolButton1: TToolButton
      Left = 117
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 57
      OnClick = ToolButton1Click
    end
    object rComboBoxEx1: TrComboBoxEx
      AlignWithMargins = True
      Left = 156
      Top = 0
      Width = 122
      Height = 21
      Align = alTop
      TabOrder = 0
      OnChange = rComboBoxEx1Change
      Items.Strings = (
        '1'#186' TRIMESTRE'
        '2'#186' TRIMESTRE'
        '3'#186' TRIMESTRE'
        '4'#186' TRIMESTRE'
        'ANUAL')
    end
    object rComboBoxEx2: TrComboBoxEx
      Left = 278
      Top = 0
      Width = 145
      Height = 21
      TabOrder = 1
      Text = 'rComboBoxEx2'
      OnChange = rComboBoxEx2Change
    end
  end
  object rzspltr1: TRzSplitter
    Left = 0
    Top = 38
    Width = 1012
    Height = 747
    Position = 253
    Percent = 25
    Align = alClient
    TabOrder = 1
    BarSize = (
      253
      0
      257
      747)
    UpperLeftControls = (
      rCheckTreeView1
      ActInd1)
    LowerRightControls = (
      rzPageControl1)
    object rCheckTreeView1: TrCheckTreeView
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 247
      Height = 741
      Align = alClient
      AutoExpand = True
      Indent = 19
      TabOrder = 0
      OnClick = rCheckTreeView1Click
      OnDblClick = rCheckTreeView1DblClick
    end
    object ActInd1: TActivityIndicator
      Left = 88
      Top = 264
    end
    object rzPageControl1: TRzPageControl
      Left = 0
      Top = 0
      Width = 755
      Height = 747
      Hint = ''
      ActivePage = TabSheet3
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabIndex = 0
      TabOrder = 0
      TabStyle = tsSquareCorners
      OnChange = RzPageControl1Change
      FixedDimension = 22
      object TabSheet3: TRzTabSheet
        OnShow = TabSheet3Show
        Caption = 'Liquidaci'#243'n I.V.A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        DesignSize = (
          751
          718)
        object RzStringGrid1: TRzStringGrid
          Left = 16
          Top = 81
          Width = 713
          Height = 352
          ColCount = 6
          DefaultColWidth = 100
          DefaultRowHeight = 35
          DefaultDrawing = False
          FixedCols = 2
          RowCount = 9
          Options = [goFixedVertLine, goVertLine, goRangeSelect]
          TabOrder = 0
          OnDrawCell = RzStringGrid1DrawCell
          ColWidths = (
            100
            100
            100
            100
            100
            100)
          RowHeights = (
            35
            35
            35
            35
            35
            35
            35
            35
            35)
        end
        object RzGroupBox2: TRzGroupBox
          Left = 16
          Top = 424
          Width = 713
          Height = 129
          Caption = 'Cuentas contables'
          TabOrder = 1
          object LabeledEdit3: TLabeledEdit
            Left = 32
            Top = 40
            Width = 121
            Height = 24
            Alignment = taRightJustify
            EditLabel.Width = 56
            EditLabel.Height = 16
            EditLabel.Caption = '47200010'
            TabOrder = 0
            OnKeyPress = LabeledEdit3KeyPress
          end
          object LabeledEdit4: TLabeledEdit
            Left = 32
            Top = 86
            Width = 121
            Height = 24
            Alignment = taRightJustify
            EditLabel.Width = 56
            EditLabel.Height = 16
            EditLabel.Caption = '47200021'
            TabOrder = 1
            OnKeyPress = LabeledEdit3KeyPress
          end
          object LabeledEdit5: TLabeledEdit
            Left = 208
            Top = 40
            Width = 121
            Height = 24
            Alignment = taRightJustify
            EditLabel.Width = 56
            EditLabel.Height = 16
            EditLabel.Caption = '47700010'
            TabOrder = 2
            OnKeyPress = LabeledEdit3KeyPress
          end
          object LabeledEdit6: TLabeledEdit
            Left = 208
            Top = 86
            Width = 121
            Height = 24
            Alignment = taRightJustify
            EditLabel.Width = 56
            EditLabel.Height = 16
            EditLabel.Caption = '47700021'
            TabOrder = 3
            OnKeyPress = LabeledEdit3KeyPress
          end
          object LabeledEdit7: TLabeledEdit
            Left = 520
            Top = 56
            Width = 121
            Height = 24
            Alignment = taRightJustify
            EditLabel.Width = 93
            EditLabel.Height = 16
            EditLabel.Caption = 'Total liquidaci'#243'n'
            TabOrder = 4
          end
          object RzButton1: TRzButton
            Left = 384
            Top = 56
            Width = 81
            Height = 33
            Caption = 'Calcular'
            TabOrder = 5
            OnClick = RzButton1Click
          end
        end
        object LabeledEdit1: TLabeledEdit
          Left = 88
          Top = 19
          Width = 121
          Height = 24
          EditLabel.Width = 56
          EditLabel.Height = 16
          EditLabel.Caption = 'Trimestre'
          LabelPosition = lpLeft
          TabOrder = 2
        end
        object LabeledEdit2: TLabeledEdit
          Left = 312
          Top = 19
          Width = 121
          Height = 24
          EditLabel.Width = 22
          EditLabel.Height = 16
          EditLabel.Caption = 'A'#241'o'
          LabelPosition = lpLeft
          TabOrder = 3
        end
        object Button1: TButton
          AlignWithMargins = True
          Left = 624
          Top = 19
          Width = 102
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Calcular'
          TabOrder = 4
          OnClick = Button1Click
        end
      end
      object TabSheet1: TRzTabSheet
        OnShow = TabSheet1Show
        Caption = 'Liquidaci'#243'n I.R.P.F'
        DesignSize = (
          751
          718)
        object RzStringGrid2: TRzStringGrid
          Left = 16
          Top = 52
          Width = 721
          Height = 655
          ColCount = 6
          DefaultColWidth = 100
          DefaultRowHeight = 35
          DefaultDrawing = False
          FixedCols = 2
          RowCount = 18
          Options = [goFixedVertLine, goVertLine, goRangeSelect]
          TabOrder = 0
          OnDrawCell = RzStringGrid2DrawCell
          ColWidths = (
            100
            100
            100
            100
            100
            100)
          RowHeights = (
            35
            35
            35
            35
            35
            35
            35
            35
            35
            35
            35
            35
            35
            35
            35
            35
            35
            35)
        end
        object LabeledEdit8: TLabeledEdit
          Left = 88
          Top = 22
          Width = 121
          Height = 24
          EditLabel.Width = 56
          EditLabel.Height = 16
          EditLabel.Caption = 'Trimestre'
          LabelPosition = lpLeft
          TabOrder = 1
        end
        object LabeledEdit9: TLabeledEdit
          Left = 304
          Top = 22
          Width = 121
          Height = 24
          EditLabel.Width = 22
          EditLabel.Height = 16
          EditLabel.Caption = 'A'#241'o'
          LabelPosition = lpLeft
          TabOrder = 2
        end
        object Button2: TButton
          Left = 632
          Top = 21
          Width = 102
          Height = 25
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Calcular'
          TabOrder = 3
          OnClick = Button2Click
        end
      end
      object TabSheet2: TRzTabSheet
        Caption = 'Cuentas de explotaci'#243'n'
        object rGroupBox1: TrGroupBox
          Left = 0
          Top = 69
          Width = 751
          Height = 172
          Align = alTop
          Caption = 'Cuentas contables'
          TabOrder = 0
          CaptionHeight = 30
          CaptionColor = clSilver
          CaptionFont.Charset = DEFAULT_CHARSET
          CaptionFont.Color = clWindowText
          CaptionFont.Height = -19
          CaptionFont.Name = 'Tahoma'
          CaptionFont.Style = [fsBold]
          CaptionParentFont = False
          CaptionAlignment = taLeftJustify
          object rdbcuentas: TrDBGrid_MS
            Left = 2
            Top = 33
            Width = 747
            Height = 137
            Align = alClient
            DataSource = dscuentas
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            ColumnWidth = cwAutoWidth
            TitleLines = 2
            RowLines = 2
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'id_cuenta'
                Title.Alignment = taCenter
                Title.Caption = 'Cuenta'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 222
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descripcion'
                Title.Caption = 'Descripci'#243'n'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 487
                Visible = True
              end>
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 751
          Height = 69
          Align = alTop
          TabOrder = 1
          DesignSize = (
            751
            69)
          object LabeledEdit11: TLabeledEdit
            Left = 336
            Top = 30
            Width = 121
            Height = 24
            EditLabel.Width = 22
            EditLabel.Height = 16
            EditLabel.Caption = 'A'#241'o'
            LabelPosition = lpLeft
            TabOrder = 0
          end
          object LabeledEdit10: TLabeledEdit
            Left = 96
            Top = 30
            Width = 121
            Height = 24
            EditLabel.Width = 56
            EditLabel.Height = 16
            EditLabel.Caption = 'Trimestre'
            LabelPosition = lpLeft
            TabOrder = 1
          end
          object Button3: TButton
            Left = 568
            Top = 29
            Width = 97
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Calcular'
            TabOrder = 2
            OnClick = Button2Click
          end
        end
        object rGroupBox2: TrGroupBox
          Left = 0
          Top = 241
          Width = 751
          Height = 477
          Align = alClient
          Caption = 'Cuentas contables'
          TabOrder = 2
          CaptionHeight = 30
          CaptionColor = clSilver
          CaptionFont.Charset = DEFAULT_CHARSET
          CaptionFont.Color = clWindowText
          CaptionFont.Height = -19
          CaptionFont.Name = 'Tahoma'
          CaptionFont.Style = [fsBold]
          CaptionParentFont = False
          CaptionAlignment = taLeftJustify
          object rdbdiario: TrDBGrid_MS
            Left = 2
            Top = 33
            Width = 747
            Height = 442
            Align = alClient
            DataSource = dsdiario
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            ColumnWidth = cwAutoWidth
            FooterRow.FooterVisible = True
            FooterRow.FieldFooterDefs.Strings = (
              'importe=%SUM '#8364';'
              'id_asiento=%COUNTVAL asientos;')
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'id_asiento'
                Title.Alignment = taCenter
                Title.Caption = 'Asiento'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 70
                Visible = True
              end
              item
                Alignment = taCenter
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'fecha'
                Title.Alignment = taCenter
                Title.Caption = 'Fecha'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 115
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'documento'
                Title.Caption = 'Documento'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 145
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'concepto'
                Title.Caption = 'Concepto'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 279
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'importe'
                Title.Alignment = taCenter
                Title.Caption = 'Importe'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 94
                Visible = True
              end>
          end
        end
      end
      object TabSheet4: TRzTabSheet
        Caption = 'Facturaci'#243'n mensual'
        object RzLabel1: TRzLabel
          Left = 91
          Top = 306
          Width = 51
          Height = 16
          Caption = 'RzLabel1'
          BlinkIntervalOff = 100
          BlinkIntervalOn = 100
        end
        object RzLabel2: TRzLabel
          Left = 275
          Top = 306
          Width = 51
          Height = 16
          Caption = 'RzLabel1'
          BlinkIntervalOff = 100
          BlinkIntervalOn = 100
        end
        object RzLabel3: TRzLabel
          Left = 91
          Top = 562
          Width = 51
          Height = 16
          Caption = 'RzLabel1'
          BlinkIntervalOff = 100
          BlinkIntervalOn = 100
        end
        object RzLabel4: TRzLabel
          Left = 275
          Top = 562
          Width = 51
          Height = 16
          Caption = 'RzLabel1'
          BlinkIntervalOff = 100
          BlinkIntervalOn = 100
        end
        object DBChart1: TDBChart
          Left = 64
          Top = 59
          Width = 633
          Height = 211
          Border.Color = clDefault
          Border.Width = 0
          Border.Visible = True
          BorderRound = 40
          Title.Font.Height = -19
          Title.Text.Strings = (
            'Facturaci'#243'n Mensual')
          Title.TextFormat = ttfHtml
          BottomAxis.Title.Angle = 360
          BottomAxis.Title.Caption = 'Meses'
          Chart3DPercent = 26
          LeftAxis.Axis.Color = clBlue
          LeftAxis.Axis.Width = 3
          LeftAxis.LabelsSeparation = 0
          LeftAxis.Title.Caption = 'Importe ('#8364')'
          LeftAxis.Title.Color = 16744448
          LeftAxis.TitleSize = 20
          Legend.Alignment = laLeft
          Legend.CheckBoxesStyle = cbsRadio
          Legend.Title.Text.Strings = (
            'Mes')
          View3D = False
          DragMode = dmAutomatic
          TabOrder = 0
          DragKind = dkDock
          DefaultCanvas = 'TTeeCanvas3D'
          PrintMargins = (
            15
            34
            15
            34)
          ColorPaletteIndex = 13
          object Series1: TBarSeries
            ColorEachPoint = True
            Marks.Visible = False
            DataSource = fdfacturacionmensual
            Title = 'Gastos mensuales por categoria de compras'
            Transparency = 7
            XLabelsSource = 'nombremes'
            Sides = 3
            XValues.Name = 'X'
            XValues.Order = loAscending
            XValues.ValueSource = 'mes'
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'suma'
          end
        end
        object DBChart2: TDBChart
          Left = 64
          Top = 344
          Width = 633
          Height = 196
          Border.Color = clDefault
          Border.Width = 0
          Border.Visible = True
          BorderRound = 40
          Title.Font.Height = -19
          Title.Text.Strings = (
            'Facturaci'#243'nTrimestral')
          Title.TextFormat = ttfHtml
          BottomAxis.Title.Angle = 360
          BottomAxis.Title.Caption = 'Trimestre'
          Chart3DPercent = 26
          ClipPoints = False
          LeftAxis.Axis.Color = clBlue
          LeftAxis.Axis.Width = 3
          LeftAxis.LabelsSeparation = 0
          LeftAxis.Title.Caption = 'Importe ('#8364')'
          LeftAxis.Title.Color = 16744448
          LeftAxis.TitleSize = 20
          Legend.Alignment = laLeft
          Legend.Brush.Image.Data = {
            07544269746D6170360C0000424D360C00000000000036000000280000002000
            0000200000000100180000000000000C00000000000000000000000000000000
            0000D2D2D2CACACABABABAB6B6B6AFAFAFB9B9B9C6C6C6C7C7C7C4C4C4C8C8C8
            CFCFCFCDCDCDCBCBCBD1D1D1D6D6D6D7D7D7D8D8D8D7D7D7D5D5D5D1D1D1D4D4
            D4D5D5D5D9D9D9DCDCDCDBDBDBDBDBDBDBDBDBD9D9D9D3D3D3CDCDCDC8C8C8C6
            C6C6D9D9D9D0D0D0BFBFBFBDBDBDB8B8B8BFBFBFC9C9C9C9C9C9C8C8C8CCCCCC
            D2D2D2D2D2D2D3D3D3D8D8D8D8D8D8D7D7D7D8D8D8D7D7D7D6D6D6D5D5D5D8D8
            D8D7D7D7D9D9D9DBDBDBDADADADADADAD9D9D9D7D7D7D1D1D1CBCBCBC5C5C5C3
            C3C3D7D7D7D3D3D3C5C5C5C1C1C1C5C5C5C5C5C5C9C9C9C7C7C7CACACACECECE
            D1D1D1CFCFCFD3D3D3D6D6D6D6D6D6D8D8D8D7D7D7D6D6D6D8D8D8DBDBDBDADA
            DAD8D8D8D8D8D8DBDBDBDBDBDBD8D8D8D6D6D6D4D4D4CECECEC8C8C8C4C4C4C5
            C5C5D4D4D4CECECEC9C9C9C6C6C6C8C8C8C9C9C9C9C9C9C7C7C7C7C7C7CCCCCC
            D0D0D0D0D0D0D1D1D1D4D4D4D8D8D8D8D8D8DDDDDDDFDFDFDEDEDEDCDCDCD9D9
            D9D9D9D9D9D9D9D8D8D8D8D8D8D4D4D4D0D0D0CBCBCBC7C7C7C8C8C8CCCCCCCC
            CCCCCFCFCFCDCDCDCECECECECECECDCDCDCFCFCFCECECECBCBCBCBCBCBCFCFCF
            D3D3D3D4D4D4D4D4D4D6D6D6D9D9D9DADADADDDDDDDFDFDFDFDFDFDEDEDEDDDD
            DDDDDDDDDCDCDCDADADAD9D9D9D4D4D4CECECECACACAC8C8C8CDCDCDD2D2D2D4
            D4D4CFCFCFD1D1D1D7D7D7D7D7D7D2D2D2D4D4D4D4D4D4D1D1D1CFCFCFD1D1D1
            D4D4D4D5D5D5D4D4D4D6D6D6D9D9D9DADADADCDCDCDCDCDCDEDEDEDFDFDFDEDE
            DEDEDEDEDEDEDEDDDDDDDADADAD7D7D7D0D0D0CCCCCCCECECED4D4D4D9D9D9DA
            DADAD3D3D3D7D7D7D9D9D9D8D8D8D5D5D5D8D8D8D8D8D8D6D6D6D2D2D2D3D3D3
            D7D7D7D8D8D8D8D8D8D8D8D8DADADADBDBDBDADADADADADADBDBDBDCDCDCDADA
            DADCDCDCDEDEDEDEDEDEDCDCDCDADADAD3D3D3CECECED1D1D1D7D7D7DBDBDBDD
            DDDDD8D8D8D8D8D8D5D5D5D4D4D4D4D4D4D8D8D8D9D9D9D7D7D7D3D3D3D5D5D5
            D9D9D9DBDBDBDCDCDCDCDCDCDDDDDDDCDCDCDBDBDBDADADADADADADADADADADA
            DADCDCDCDEDEDEDEDEDEDCDCDCD9D9D9D2D2D2CECECED3D3D3D8D8D8DADADADB
            DBDBDCDCDCD7D7D7D2D2D2D3D3D3D3D3D3D7D7D7D9D9D9D6D6D6D3D3D3D3D3D3
            D8D8D8DBDBDBDCDCDCDCDCDCDEDEDEDEDEDEDDDDDDDCDCDCDADADAD9D9D9DCDC
            DCDEDEDEE0E0E0DEDEDEDBDBDBD8D8D8D2D2D2D0D0D0D7D7D7DBDBDBDADADAD5
            D5D5D7D7D7D4D4D4D2D2D2D3D3D3D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5
            D8D8D8DADADADBDBDBDEDEDEE1E1E1DFDFDFDDDDDDE0E0E0DEDEDED7D7D7DBDB
            DBDCDCDCDDDDDDDCDCDCDADADAD5D6D6D1D3D3D2D4D4D7D9D9D8DADAD5D7D7D2
            D4D4D9D9D9D7D7D7D3D3D3D2D2D2D5D5D5D6D6D6D8D8D8DADADADCDCDCDADADA
            DCDCDCDEDEDEDEDEDEDFDFDFE0E0E0DDDDDDDADADADCDCDCDBDBDBD5D5D5DADA
            DAD9D9D9DADADADBDBDBD7D7D7D3D4D4CFD1D1CFD1D1D4D6D6D8DADAD9DBDBD9
            DBDBD7D7D7D8D8D8D7D7D7D7D7D7DADADADBDBDBDCDCDCDEDEDEDFDFDFE0E0E0
            E2E2E2E3E3E3E1E1E1DEDEDEDDDDDDDBDBDBD7D7D7D8D8D8D7D7D7D2D2D2D8D8
            D8D6D6D6D8D8D8DADADAD6D6D6D2D3D3D2D4D4D4D6D6D7D9D9DADCDCDADCDCDA
            DCDCD6D6D6D8D8D8DDDDDDDFDFDFE1E1E1E0E0E0DFDFDFDEDEDEDDDDDDDFDFDF
            E0E0E0E2E2E2E2E2E2E0E0E0DEDEDEDADADAD5D5D5D6D6D6D3D3D3CECECED6D6
            D6D5D5D5D6D6D6D7D7D7D4D4D4D1D2D2D5D7D7DADCDCDBDDDDD9DBDBD7D9D9D8
            DADAD9D9D9DBDBDBDFDFDFE0E0E0E1E1E1E1E1E1E0E0E0DEDEDEDEDEDEDDDDDD
            DBDBDBDDDDDDE1E1E1E1E1E1DFDFDFDADADAD6D6D6D5D5D5D0D0D0C9C9C9CFCF
            CFD2D2D2D1D1D1CFCFCFCFCFCFD0D1D1D6D8D8DCDEDEDCDEDEDADCDCD9DBDBDB
            DDDDDEDEDEE0E0E0E0E0E0DDDDDDDDDDDDDEDEDEDFDFDFE0E0E0E1E1E1E0E0E0
            DCDCDCDBDBDBDEDEDEDEDEDEDCDCDCDCDCDCD7D7D7D6D6D6CFCFCFC7C7C7C7C7
            C7CCCCCCCBCBCBC7C7C7CACACAD1D2D2D8DADADDDFDFDEE0E0DEE0E0DFE1E1DE
            E0E0E5E5E5E4E4E4DEDEDEDBDBDBDADADADBDBDBDEDEDEE0E0E0E2E2E2E3E3E3
            DEDEDEDBDBDBDEDEDEDEDEDEDBDBDBDDDDDDDFDFDFDDDDDDD6D6D6D0D0D0C5C5
            C5C3C3C3C2C2C2C7C7C7D1D1D1D4D6D6D9DBDBDEE0E0DEE0E0DEE0E0DDDFDFDE
            E0E0E3E3E3E1E1E1DEDEDEDCDCDCDADADADBDBDBDEDEDEE0E0E0E2E2E2E1E1E1
            DDDDDDDBDBDBDDDDDDDBDBDBD8D8D8DADADADDDDDDDDDDDDDCDCDCDBDBDBCFCF
            CFCBCBCBCBCBCBD0D0D0D6D6D6D5D7D7D9DBDBDCDEDEDCDEDEDADCDCDADCDCDB
            DDDDDCDCDCDBDBDBDBDBDBDCDCDCDDDDDDDDDDDDE0E0E0E1E1E1E3E3E3E1E1E1
            DEDEDEDCDCDCDDDDDDDBDBDBD9D9D9DCDCDCDBDBDBDBDBDBDEDEDEDFDFDFDBDB
            DBD5D5D5D4D4D4D9D9D9DADADAD8DADADBDDDDDDDFDFDADCDCD8DADAD8DADAD8
            DADADBDBDBDBDBDBDDDDDDDFDFDFE1E1E1E2E2E2E3E3E3E4E4E4E5E5E5E3E3E3
            E0E0E0DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDADADADADADADDDDDDE0E0E0E0E0
            E0DBDBDBDADADADCDCDCDADADADBDCDCDEE0E0DEE0E0DBDDDDD9DBDBD8DADAD8
            DADADDDDDDDEDEDEE0E0E0E2E2E2E3E3E3E3E3E3E4E4E4E5E5E5E5E5E5E3E3E3
            E1E1E1DEDEDEDDDDDDE0E0E0E2E2E2DEDEDEDBDBDBDBDBDBDEDEDEE2E2E2E1E1
            E1DFDFDFDDDDDDDCDCDCDADADADCDEDEDFE1E1DFE1E1DCDEDEDADCDCD9DBDBDA
            DCDCDDDDDCDFDFDFE1E1E1E3E3E2E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E3E3E3
            E0E0E0DDDDDDDCDCDCE0E0E0E4E4E4E2E2E2DDDEDEDCDDDDDFDFDFE1E1E1E1E1
            E1E1E1E1DEDEDEDBDBDBDADBDBDCDEDEDEE0E0DEE0E0DBDDDDDADCDCDBDDDDDC
            DEDEDFE0DEE1E2E0E3E4E2E4E5E3E4E4E4E5E5E5E4E4E4E4E4E4E4E4E4E2E2E2
            DEDEDEDCDCDCDCDCDCDEDEDEDEDEDEDADCDCD9DBDBDDDFDFE1E3E3E0E2E2DEE0
            E0DDDFDFDCDEDEDBDDDDDADCDCDBDDDDD9DBDBD8DADADADCDCDCDEDEDCDEDEDA
            DCDCE2E3E1E3E4E2E4E5E3E5E6E4E5E5E5E5E5E5E4E4E4E3E3E3E2E2E2E1E1E1
            DEDEDEDCDCDCDBDBDBDCDCDCDCDCDCD9DBDBD9DBDBDDDFDFE1E3E3E1E3E3DEE0
            E0DDDFDFDDDFDFDBDDDDD9DBDBD8DADAD9DBDBD9DBDBD9DBDBDCDEDEDEE0E0DD
            DFDFE5E6E4E6E7E5E5E6E4E5E6E4E6E6E6E5E5E5E4E4E4E3E3E3E0E0E0DEDEDE
            DDDDDDDBDBDBD9D9D9D9D9D9D8D8D8D7D9D9D9DBDBDCDEDEDFE1E1DFE1E1DDDF
            DFDEE0E0DDDFDFDADCDCD7D9D9D6D8D8D9DBDBDADCDCD6D8D8D8DADADDDFDFDE
            E0E0E7E8E6E7E8E6E6E7E5E6E7E5E6E6E6E4E4E4E5E5E5E4E4E4DEDEDEDCDCDC
            DBDBDBDADADAD9D9D9D8D8D8D6D7D7D7D9D9DADCDCDCDEDEDDDFDFDEE0E0DDDF
            DFDDDFDFDCDEDED8DADAD4D6D6D1D3D3D3D5D5D3D5D5CFD1D1CFD1D1D5D7D7DB
            DDDDE8E9E7E7E8E6E7E8E6E6E7E5E4E4E4E3E3E3E4E4E4E5E5E5DEDEDEDCDCDC
            DCDCDCDCDCDCDBDBDBDADADAD9DADADADCDCDFE1E1DFE1E1DEE0E0DFE1E1DDDF
            DFDCDEDED8DADAD5D7D7D2D4D4D0D2D2D1D3D3D1D3D3D1D3D3D1D3D3D3D5D5D8
            DADAE7E8E6E8E9E7E6E7E5E6E7E5E3E3E3E1E1E1E4E4E4E5E5E5DFDFDFDDDDDD
            DEDEDEDFDFDFDFDFDFDFDFDFDDDEDEDFE1E1E3E5E5E2E4E4E1E3E3E1E3E3DDDF
            DFDADCDCD6D8D8D3D5D5D1D3D3D4D6D6D6D8D8D7D9D9DCDEDEDDDFDFDADCDCD5
            D7D7E6E7E5E7E8E6E7E8E6E5E6E4E1E1E1E1E1E1E1E1E1E1E1E1E2E2E2E0E0E0
            E0E0E0E1E1E1E3E3E3E4E4E4E3E4E4E2E4E4E3E5E5E3E5E5E2E4E4E1E3E3DDDF
            DFDADCDCD5D7D7D3D5D5D5D7D7D7D9D9D4D6D6D3D5D5D7D9D9D9DBDBD9DBDBD7
            D9D9E6E7E5E6E7E5E6E7E5E5E6E4E3E3E3E2E2E2E1E1E1E0E0E0E1E1E1E0E0E0
            E1E1E1E2E2E2E3E3E3E4E4E4E4E4E4E4E6E6E3E5E5E2E4E4E0E2E2DEE0E0DEE0
            E0DDDFDFD8DADAD6D8D8D8DADADBDDDDD7D9D9D3D5D5D4D6D6D7D9D9D8DADAD7
            D9D9E4E5E3E3E4E2E2E3E1E1E2E0E1E1E1E0E0E0DEDEDEDDDDDDDCDCDCDFDFDF
            E2E2E2E3E3E3E4E4E4E4E4E4E3E4E4E2E4E4E2E4E4E1E3E3DFE1E1DEE0E0DEE0
            E0DDDFDFDADCDCD8DADADADCDCDBDDDDDADCDCD8DADAD8DADADADCDCDADCDCD7
            D9D9E0E1DFE0E1DFE0E1DFE1E2E0E0E0E0DFDFDFDDDDDDDDDDDDDDDDDDE0E0E0
            E3E3E3E4E4E4E5E5E5E5E5E5E3E3E3E0E2E2E0E2E2E1E3E3E0E2E2E0E2E2DCDE
            DEDCDEDEDADCDCD9DBDBDADCDCDADCDCDBDDDDDBDDDDDADCDCD9DBDBDADCDCDC
            DEDEDEDFDDDDDEDCDDDEDCDDDEDCDDDDDDDDDDDDDDDDDDDEDEDEDFDFDFE2E2E2
            E4E4E4E5E5E5E5E5E5E5E5E5E3E3E3DFE1E1E0E2E2E0E2E2DFE1E1DEE0E0DADC
            DCDBDDDDDBDDDDD9DBDBDBDDDDD9DBDBDBDDDDDCDEDED9DBDBD9DBDBDCDEDEE1
            E3E3}
          Legend.CheckBoxesStyle = cbsRadio
          Legend.Title.Text.Strings = (
            'Mes')
          Legend.Transparency = 2
          View3D = False
          View3DOptions.Orthogonal = False
          Zoom.Allow = False
          TabOrder = 1
          DefaultCanvas = 'TTeeCanvas3D'
          PrintMargins = (
            15
            34
            15
            34)
          ColorPaletteIndex = 13
          object BarSeries1: TBarSeries
            ColorEachPoint = True
            Marks.Visible = False
            DataSource = fdfacturaciontrimestral
            Title = 'Gastos mensuales por categoria de compras'
            Transparency = 7
            XLabelsSource = 'trimestre'
            MultiBar = mbNone
            Sides = 3
            XValues.Name = 'X'
            XValues.Order = loAscending
            XValues.ValueSource = 'trimestre'
            YValues.Name = 'Bar'
            YValues.Order = loNone
            YValues.ValueSource = 'suma'
          end
        end
      end
      object TabSheet5: TRzTabSheet
        Caption = 'Liquidaci'#243'n I.R.P.F Trabajadores'
        object Image1: TImage
          Left = 40
          Top = 80
          Width = 217
          Height = 237
        end
        object LabeledEdit12: TLabeledEdit
          Left = 126
          Top = 22
          Width = 121
          Height = 24
          EditLabel.Width = 56
          EditLabel.Height = 16
          EditLabel.Caption = 'Trimestre'
          LabelPosition = lpLeft
          TabOrder = 0
        end
        object LabeledEdit13: TLabeledEdit
          Left = 328
          Top = 22
          Width = 121
          Height = 24
          EditLabel.Width = 22
          EditLabel.Height = 16
          EditLabel.Caption = 'A'#241'o'
          LabelPosition = lpLeft
          TabOrder = 1
        end
        object rdbIRPFTrab: TrDBGrid_MS
          Left = 40
          Top = 80
          Width = 681
          Height = 503
          DataSource = dsIRPFTrab
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          ColumnWidth = cwAutoWidth
          TitleLines = 2
          RowLines = 2
          FooterRow.FooterVisible = True
          FooterRow.FieldFooterDefs.Strings = (
            'irpf=%SUM '#8364';')
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'id_trabajador'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nombre'
              Title.Caption = 'Nombre'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 433
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'irpf'
              Title.Alignment = taCenter
              Title.Caption = 'I.R.P.F'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 102
              Visible = True
            end>
        end
      end
    end
  end
  object fdq1: TFDQuery
    Connection = DataModule1.FDConnection1
    Left = 160
    Top = 264
  end
  object actmgr1: TActionManager
    Left = 689
    Top = 6
    StyleName = 'Platform Default'
    object actExpandirArbol: TAction
      Caption = 'Expandir'
      OnExecute = actExpandirArbolExecute
      OnUpdate = actExpandirArbolUpdate
    end
    object actContraer: TAction
      Caption = 'Contraer'
      OnExecute = actContraerExecute
      OnUpdate = actContraerUpdate
    end
  end
  object PrintDialog1: TPrintDialog
    Options = [poPrintToFile, poPageNums, poSelection, poWarning]
    Left = 776
    Top = 8
  end
  object FDcuentas: TFDQuery
    AfterScroll = FDcuentasAfterScroll
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from plancontable')
    Left = 154
    Top = 392
  end
  object fddiario: TFDQuery
    AfterOpen = fddiarioAfterOpen
    AfterPost = fddiarioAfterPost
    AfterRefresh = fddiarioAfterRefresh
    IndexesActive = False
    IndexFieldNames = 'id_cuenta'
    MasterSource = dscuentas
    MasterFields = 'id_cuenta'
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select * from diario where Month(fecha) between :f1 and :f2 and ' +
        'Year(fecha)=:ano and id_cuenta=:id_cuenta')
    Left = 178
    Top = 456
    ParamData = <
      item
        Name = 'F1'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'F2'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ANO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_CUENTA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dscuentas: TDataSource
    DataSet = FDcuentas
    Left = 226
    Top = 392
  end
  object dsdiario: TDataSource
    DataSet = fddiario
    Left = 226
    Top = 456
  end
  object fdGastosPorCategoria: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select CF.descripcion, Month(F.fecha), SUM(F.Importe)  from cate' +
        'goriafacturascompras CF, fproveedores F where F.categoria=CF.id_' +
        'categoriacompra GROUP BY CF.descripcion, Month(F.fecha)')
    Left = 778
    Top = 88
  end
  object ds: TDataSource
    DataSet = fdfacturacionmensual
    Left = 930
    Top = 72
  end
  object fdfacturacionmensual: TFDQuery
    Aggregates = <
      item
        Name = 'SUMAGRE'
        Expression = 'SUM(suma)'
        Active = True
      end
      item
        Name = 'SUMAVG'
        Expression = 'AVG(suma)'
        Active = True
      end>
    AggregatesActive = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select Month(FechaFactura) as mes,MonthName(FechaFactura) as nom' +
        'bremes, SUM(baseimponible) as suma from facturas where Year(Fech' +
        'aFactura)=:ano group by Month(FechaFactura), MonthName(fechafact' +
        'ura), Year(fechafactura) ')
    Left = 282
    Top = 80
    ParamData = <
      item
        Name = 'ANO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdfacturaciontrimestral: TFDQuery
    Aggregates = <
      item
        Name = 'SUMAGRE'
        Expression = 'SUM(suma)'
        Active = True
      end
      item
        Name = 'SUMAVG'
        Expression = 'AVG(suma)'
        Active = True
      end>
    AggregatesActive = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select Quarter(FechaFactura) as trimestre, SUM(baseimponible) as' +
        ' suma from facturas where Year(FechaFactura)=:ano group by Quart' +
        'er(FechaFactura), Year(FechaFactura)')
    Left = 130
    Top = 544
    ParamData = <
      item
        Name = 'ANO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdIRPFTrab: TFDQuery
    AfterOpen = fdIRPFTrabAfterOpen
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select T.id_trabajador, T.nombre, SUM(N.irpf) as irpf from traba' +
        'jadores T, nominas N where T.id_trabajador=N.trabajadores_id_tra' +
        'bajador and Month(fechanomina) between :f1 and :f2 and Year(fech' +
        'anomina)=:ano Group by T.id_trabajador,T.nombre')
    Left = 418
    Top = 600
    ParamData = <
      item
        Name = 'F1'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'F2'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ANO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsIRPFTrab: TDataSource
    DataSet = fdIRPFTrab
    Left = 682
    Top = 624
  end
end

object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 591
  Width = 1048
  object frxFacturasImpagadas: TfrxReport
    Version = '5.6.18'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44018.933439004600000000
    ReportOptions.LastChange = 44068.733261226800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 144
    Top = 24
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 7.559059999999999000
          Width = 313.700990000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'FACTURA IMPAGADAS')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 124.724490000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."idAdministrador"'
        object frxDBDataset1nombre_1: TfrxMemoView
          Top = 3.779529999999994000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'nombre_1'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            '[frxDBDataset1."nombre_1"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 449.764070000000000000
          Top = 34.015770000000010000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            'Total Factura')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 566.929500000000000000
          Top = 34.015770000000010000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            'A Cuenta')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 650.079160000000000000
          Top = 34.015770000000010000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            'Pendiente')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1nombre: TfrxMemoView
          Left = 177.637910000000000000
          Top = 3.779529999999994000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          DataField = 'nombre'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."nombre"]')
        end
        object frxDBDataset1idFactura: TfrxMemoView
          Top = 3.779529999999994000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'idFactura'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."idFactura"]')
        end
        object frxDBDataset1ano: TfrxMemoView
          Left = 30.236240000000000000
          Top = 3.779529999999994000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'ano'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."ano"]')
        end
        object frxDBDataset1Debe: TfrxMemoView
          Left = 650.079160000000000000
          Top = 3.779529999999994000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'Debe'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."Debe"]')
          ParentFont = False
        end
        object frxDBDataset1Total: TfrxMemoView
          Left = 472.441250000000000000
          Top = 3.779529999999994000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."Total"]')
          ParentFont = False
        end
        object frxDBDataset1acuenta: TfrxMemoView
          Left = 555.590910000000000000
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."acuenta"]')
          ParentFont = False
        end
        object frxDBDataset1FechaFactura: TfrxMemoView
          Left = 83.149660000000000000
          Top = 3.779529999999994000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'FechaFactura'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."FechaFactura"]')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 400.630180000000000000
          Top = 11.338589999999980000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[(SUM((<frxDBDataset1."Debe">),MasterData1,0))] ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 347.716760000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Left = 283.464750000000000000
          Top = 15.118119999999980000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[(SUM((<frxDBDataset1."Debe">),MasterData1,0))] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 476.220780000000000000
          Top = 15.118119999999980000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 37.795300000000000000
          Top = 11.338590000000010000
          Width = 657.638220000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = FDFacturasImpagadas
    BCDToCurrency = False
    Left = 240
    Top = 24
  end
  object FDFacturasImpagadas: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select F.idFactura, F.FechaFactura, F.ano, C.nombre, A.idAdminis' +
        'trador, A.nombre, F.total-F.acuenta as Debe, F.Total, F.acuenta ' +
        'from facturas F, clientes C, administradores A where F.idCliente' +
        '=C.idcontactos and C.idAdministrador=A.idAdministrador and  F.pa' +
        'gada=false order by A.IdAdministrador')
    Left = 32
    Top = 24
  end
  object FDPresupuestosAprobados: TFDQuery
    Filtered = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select P.id_presupuesto, P.grupo, P.fechapresupuesto,P.TotalApro' +
        'bado,C.nombre, A.idAdministrador, A.nombre from presupuestos P, ' +
        'clientes C, administradores A where P.id_ClientePrev=C.idcontact' +
        'os and C.idAdministrador=A.idAdministrador and  P.Aprovado=true ' +
        'and P.Ejecutado=false order by A.IdAdministrador,P.id_presupuest' +
        'o')
    Left = 32
    Top = 88
  end
  object frxPresupuestosAprobados: TfrxReport
    Version = '5.6.18'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44018.933439004600000000
    ReportOptions.LastChange = 44068.961275405090000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 144
    Top = 88
    Datasets = <
      item
        DataSet = frxDBDataset3
        DataSetName = 'frxDetallePresupuestos'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'PresupuestosAprobados'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 7.559059999999999000
          Width = 313.700990000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'PRESUPUESTOS APROBADOS')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 393.071120000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Left = 37.795300000000000000
          Top = 11.338590000000010000
          Width = 657.638220000000000000
          Color = clBlack
          Diagonal = True
        end
        object COUNT: TfrxMemoView
          Left = 207.874150000000000000
          Top = 18.897650000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[COUNT(MasterData1,0)]')
        end
        object Memo10: TfrxMemoView
          Left = 604.724800000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            '[SUM(<PresupuestosAprobados."TotalAprobado">,MasterData1,0)]')
        end
        object Memo11: TfrxMemoView
          Left = 11.338590000000000000
          Top = 18.897650000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'N'#186' Presupuestos Aprobados:')
        end
        object Memo12: TfrxMemoView
          Left = 517.795610000000000000
          Top = 18.897650000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Importe Total:')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset2
        DataSetName = 'PresupuestosAprobados'
        RowCount = 0
        object frxDBDataset1id_presupuesto: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779529999999994000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'id_presupuesto'
          DataSet = frxDBDataset2
          DataSetName = 'PresupuestosAprobados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[PresupuestosAprobados."id_presupuesto"]')
          ParentFont = False
        end
        object frxDBDataset1fechapresupuesto: TfrxMemoView
          Left = 117.165430000000000000
          Top = 3.779529999999994000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'fechapresupuesto'
          DataSet = frxDBDataset2
          DataSetName = 'PresupuestosAprobados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[PresupuestosAprobados."fechapresupuesto"]')
          ParentFont = False
        end
        object frxDBDataset1nombre: TfrxMemoView
          Left = 249.448980000000000000
          Top = 3.779529999999994000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          DataField = 'nombre'
          DataSet = frxDBDataset2
          DataSetName = 'PresupuestosAprobados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[PresupuestosAprobados."nombre"]')
          ParentFont = False
        end
        object frxDBDataset1TotalAprobado: TfrxMemoView
          Left = 597.165740000000000000
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset2
          DataSetName = 'PresupuestosAprobados'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haRight
          Memo.UTF8W = (
            '[PresupuestosAprobados."TotalAprobado"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 52.913420000000000000
          Top = 37.795300000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            'Fecha Aprobado')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 162.519790000000000000
          Top = 37.795300000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            'D'#237'as Estimados')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 264.567100000000000000
          Top = 37.795300000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            'Descripci'#243'n')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 604.724800000000000000
          Top = 30.236240000000010000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 68.031540000000000000
        Top = 124.724490000000000000
        Width = 718.110700000000000000
        Condition = 'PresupuestosAprobados."idAdministrador"'
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 41.574829999999990000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            'N'#186' Presupuesto')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 120.944960000000000000
          Top = 41.574829999999990000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            'Fecha Presupuesto')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 253.228510000000000000
          Top = 41.574829999999990000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            'Descripci'#243'n')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 631.181510000000000000
          Top = 41.574829999999990000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 30.236240000000000000
          Width = 657.638220000000000000
          Color = clBlack
          Diagonal = True
        end
        object PresupuestosAprobadosnombre_1: TfrxMemoView
          Top = 7.559059999999988000
          Width = 400.630180000000000000
          Height = 22.677180000000000000
          DataField = 'nombre_1'
          DataSet = frxDBDataset2
          DataSetName = 'PresupuestosAprobados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            '[PresupuestosAprobados."nombre_1"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset3
        DataSetName = 'frxDetallePresupuestos'
        RowCount = 0
        object frxDetallePresupuestosfecha_aprobado: TfrxMemoView
          Left = 52.913420000000000000
          Top = 11.338590000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'fecha_aprobado'
          DataSet = frxDBDataset3
          DataSetName = 'frxDetallePresupuestos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDetallePresupuestos."fecha_aprobado"]')
          ParentFont = False
        end
        object frxDetallePresupuestosdiasejecucion: TfrxMemoView
          Left = 162.519790000000000000
          Top = 11.338590000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'diasejecucion'
          DataSet = frxDBDataset3
          DataSetName = 'frxDetallePresupuestos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDetallePresupuestos."diasejecucion"]')
          ParentFont = False
        end
        object frxDetallePresupuestosDescripcion: TfrxMemoView
          Left = 260.787570000000000000
          Top = 11.338590000000010000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'Descripcion'
          DataSet = frxDBDataset3
          DataSetName = 'frxDetallePresupuestos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDetallePresupuestos."Descripcion"]')
          ParentFont = False
        end
        object frxDetallePresupuestosTotal: TfrxMemoView
          Left = 604.724800000000000000
          Top = 11.338590000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset3
          DataSetName = 'frxDetallePresupuestos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDetallePresupuestos."Total"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'PresupuestosAprobados'
    CloseDataSource = False
    DataSet = FDPresupuestosAprobados
    BCDToCurrency = False
    Left = 248
    Top = 88
  end
  object dsPresupuestosAprobados: TDataSource
    DataSet = FDPresupuestosAprobados
    Left = 160
    Top = 152
  end
  object fdDetallePresupuestos: TFDQuery
    IndexFieldNames = 'presupuestos_id_presupuesto;presupuestos_grupo'
    MasterSource = dsPresupuestosAprobados
    MasterFields = 'id_presupuesto;grupo'
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select * from lineaspresupuesto where Aprovado=true and ejecutad' +
        'o=false')
    Left = 48
    Top = 152
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDetallePresupuestos'
    CloseDataSource = False
    DataSet = fdDetallePresupuestos
    BCDToCurrency = False
    Left = 256
    Top = 152
  end
  object frxDOCXExport1: TfrxDOCXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 552
    Top = 24
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 472
    Top = 24
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    PictureType = gpPNG
    Left = 640
    Top = 24
  end
  object frxFacturas: TfrxReport
    Version = '5.6.18'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44068.976249097200000000
    ReportOptions.LastChange = 44087.898007557900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 144
    Top = 224
    Datasets = <
      item
        DataSet = frxDBDataset5
        DataSetName = 'frxDetalleFacturas'
      end
      item
        DataSet = frxDBDataset4
        DataSetName = 'frxFacturas'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 117.165430000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Picture1: TfrxPictureView
          Left = 11.338590000000000000
          Top = 18.897650000000000000
          Width = 317.480520000000000000
          Height = 83.149660000000000000
          Picture.Data = {
            0A544A504547496D6167657E240000FFD8FFE000104A46494600010101006000
            600000FFDB00430006040506050406060506070706080A100A0A09090A140E0F
            0C1017141818171416161A1D251F1A1B231C1616202C20232627292A29191F2D
            302D283025282928FFDB0043010707070A080A130A0A13281A161A2828282828
            2828282828282828282828282828282828282828282828282828282828282828
            28282828282828282828282828FFC00011080068015E03012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F6B9
            3C657C5DBCB86DC2E78041271F9D37FE131D43FE795B7FDF2DFE34EF01C51CB7
            F7025447023C80C33DC5759A84BA5E9E8AD7696F186385FDD824FE42988E47FE
            131D43FE795B7FDF2DFE347FC263A87FCF2B6FFBE5BFC6BA1FED9D03FBD07FDF
            83FE1525B6A7A1DCCC91446DCC8E70A0C58C9FC4500735FF00098EA1FF003CAD
            BFEF96FF001A3FE131D43FE795B7FDF2DFE35DCFD8EDBFE7DE1FFBE0565DD6A5
            A25B4ED0CC6DC48A70C0459C1FC0500735FF00098EA1FF003CADBFEF96FF001A
            3FE131D43FE795B7FDF2DFE35D0FF6CE81FDE83FEFC1FF000ABBA7CBA66A08CD
            66904814E1BF76063F31401C9C7E32BEDEBBE1B72B9E40041C7E75BFE32F1127
            867C3D26AB25BBDC22141E5AB6D3F3103AFE3587E3E8638AEAD3CA8D1328D9DA
            A0679A8FE340CFC34BC3E8613FF8FAD63889B85294A3BA4CEDCB68C2BE2E952A
            9AA94927F36730DF1CEDFF00874498FD671FE15137C745FE1D058FD6EB1FFB2D
            788D15F33FDA989FE6FC11FAAAE13CAFFE7DFE2FFCCF6A6F8E8FFC3A02FE377F
            FD8544DF1CEE7F8743847D6E49FF00D96BC6A8A4F33C4FF37E08A5C2B95AFF00
            975F8BFF0033D81BE396A1FC1A35A8FACAC7FA544DF1C3563D34BB11FF00027F
            F1AF24A2A7FB4713FCFF0091A2E19CAD7FCB95F7BFF33D5CFC6ED6BB69D603FE
            FBFF001A8DBE366BC7EED969C3FE02FF00FC55796514BFB4313FCE57FAB7967F
            CF95F8FF0099EA0DF1A7C447A5B69C3FED9B7FF1551B7C66F129E9169E3FED93
            7FF155E67452FAFE23F9D94B87B2D5FF002E51E90DF193C507A7D807FDB13FE3
            51B7C60F151E92D98FA41FFD7AF3BA293C6E23F9D96B21CB97FCB98FDC7A037C
            5CF161E9756EBF4B75A89BE2BF8B8F4D4631F4B78FFC2B84A297D72BFF003BFB
            CAFEC4CB97FCB88FDC8EDDBE2978BDBFE62807D208FF00F89A89BE2678B5BFE6
            2EE3E9127F8571B56ED74DBEBC7096965733B1E8228998FE828589C44B693FBD
            84B2BCBA9ABCA9417C91D137C46F1637FCC6A7FC1507F4A8DBE20F8ADBAEB775
            F8607F4A6DAF80BC53758F2B44BC19FF009E8BE5FF00E858ADDB0F83FE29B950
            678ED2D7DA59813FF8EE6B58C7193DB9BF138AA54C9287C5ECD7FE03FA182DE3
            CF14B75D72F7F07C546DE36F13375D7750FF00BFC6BBFB3F81D7CF8FB66B16D1
            7B45117FE6456ED9FC10D2531F6BD4EF65F508AA80FE86B78E0F1B2DEEBE670D
            4CEF21A5B24FD21FF00F1F6F18788CF5D7351FFC086FF1A8DBC57E206EBADEA7
            FF00812FFE35F40D97C26F0A5B637D9CD704779666FE4315BB67E0BF0DDA63C9
            D12C063A168431FCCD6F1CB312FE29FE2CE0A9C5795C3F8587BFCA2BFCCF9853
            C41E219CE23D575590FA2DC487FAD6959DAF8DB50C7D9935E941FE2CCA17F33C
            57D4F05ADBDBA048208A351D02200054D8ADE3953FB5519E7D4E3087FCBAC345
            7AEBFA23E6BB5F037C40BB2370BC8C1EF2DE631FF8F66B6ADBE12F8AA6C7DAF5
            B862F5C4D2391FA0AF7AA2B78E59496EDBF99E7D4E2AC64BE08C23E91FF3B9E3
            B65F05D89CEA3E21B9907F7628F6FEA58FF2AD8B4F83BE1C8883732DFDD7FD74
            9B03F402BD2A8ADA381A11FB270D4CFF0031A9BD56BD2CBF2B1C9D97C3BF0AD9
            91E5E8F039F594993FF4226B6ACF43D2AC98359E9B67030E8638554FE82B4A8A
            DE34A11F852479F57175EB7F126DFAB6252D1456873851451401C27C3EFF0090
            85CFFD72FEA2A6F889FEB2C7E8FF00D2A1F87DFF00210B9FFAE5FD454FF10FFD
            6597D1FF00A53EA2E8496BE0FB79AD6294DD4C0BA062001C64562DD582E9BE24
            B7B68DD9D5648CEE6EBC9157EDFC632C36F1C42CD0EC50B9DE79C0FA566C97ED
            AA788ADAE4C610B4918DA0E7A11401E9B5E6F0D82EA7E28B9B691D915A590EE5
            1CF04D7A4579A7DBDB4BF12DD5CAC6242B2C836938EA4D0819B577E0FB782D66
            945D4C4A2160081CE0547F0EFF00D65F7D13FAD4373E31967B796236683CC52B
            9DE78C8FA54FF0EC7EF2F8F6C20FE74011FC43FF008FAB3FF71BF9D33E320CFC
            32D47D8427FF0022253FE21FFC7D59FF00B8DFCE8F8BCBBBE18EA83FD888FF00
            E444AC315FC19FA3FC8F432A76C7517FDE8FE68F9749C0C92001C935CCCDE24B
            8B8B878F48B26B854382E41C7E95D62E977BA9C12C3656B71333A95FDD465B19
            1ED5C5D835E783EE65D3BC43A75D593BB798A6488A93DB3CF51C7515F3B82C3A
            9D39CF9399AD91FA7677994A8E22950557D9C257BC959B4D6CBCAFDC9E3F11DE
            DBCA89A9E9AF1AB9DA1901EBF8F5FCEBA81C8AE83C19E149FC69106D12FF004A
            9B8DC636B91E628F529F787E22AEFC48F054DE01F0B1D5B58D42D9E6790436F6
            D02B319243CE32718000249F6A2A612AD66BD9D2E57FD77270F9CE1302A4ABE2
            D545D34D57DDB9C9515D8786FE0678C75BD222D4354D7ADF489A7412476820F3
            0A02380E78C1F6E6AD7C32F0FDBE9FF102E3C11F1134F8E7D55A2371637714CC
            A9708012460633C0620E07DD20D6BFD8B5ADBA397FD78C0DDAE497DCBFCCE169
            CA8CE7E4566FA0CD761F152F6D3C05F19F46B6D2F4A8EE34E6B10E74F11093CF
            99BCD541F302796D9D3D2BD13C0FE17F88722EAB79E26D534FB0179632476763
            631AA9B3989051B2171F2E08EADD6B58E492B5E7347255E3CA49DA9516FD5DBF
            CCF21B4F0BEBB78A1ADB47D42456E8C206C1FC715B763F0C7C5B778234A6857F
            BD34A8BFA673FA57A3FECE3E32D53C49A16ADA6F89A779B5DD22EDA298C80072
            8738CE3D195C7E02A2F8EBE2AD6ADBC45E14F09784AF9ECB56D5AE434B32004C
            70E76F7078FBC7FE015BC725A49DA52679B578E717257A74E2BEF7FE479C6B5F
            093C770EABA4C7616F6B25A4F26DB99125522119192DBB0718CFDDCF4AF40B3F
            81A831F6DD69CFA88A0C7EA49A4F8CFE26D6FC3DE3AF87BA7695A94F05ADF5C8
            8AE9460F9C3CC8C7CD91E84F4F5AEBFE31FC4187E1EF85C5E8845CEA372FE4D9
            DB93C3BE39271CE07F80EF5D7FD9B87B24E27912E28CC9CA52556D7F4FC2FB19
            B67F05FC390E0DC4D7F707B869028FD056F597C35F09DA7DCD22290FACAECFFC
            CD799693E18F8CFE20B21A9EA3E3183459661E64564B003B01E81805E3FF001E
            3EB5DEFC296F1F44BA8D97C414B297ECECAB6D7B030DD700F538000C0E39214F
            B77AD6383A10DA28E3A99CE3EB7C75A5F7BFD0C9F07E8FE27B3F8A9AE457BA2E
            996DE0E588FD8A48A089496CAEDC11F3938DD9DDC57AAAA2AF0AAA3E82BC6BC1
            5E29D6AFBF687F1668377A84B2E91696C5E0B6206D8DB317238CFF0011FCE9FF
            00173E246B367E27B2F057806DE3B9F12DDA869657195B65232383C671F31278
            031D735D0A096891E7CAACA7AC9B67B2515E0F75E0FF008CD6163F6FB4F1CDAD
            F5FA0DED64D0A847F55562B83F881F515D6FC14F891278E74EBDB5D5AD459788
            74C7F2AF20008079237007A720823B1145894CF4BA2BE74F0E6B1E3BF8B3AFEB
            F2E89E298FC39A4E9B706DE2822843CADC9C16EFC81D73D78038AF46F86BA47C
            40D1F59BEB7F18EB967AC6902206D6658C2CA5F3DF006001EB9EA307AD0D5813
            B9E8B45145218514514005145140051451400514514005145140051451401C27
            C3EFF9085CFF00D72FEA2BB5BAB582ED42DCC31CAA0E4075CE2B8AF87DFF0021
            0B9FFAE5FD456978DB52BAB116C969298BCCDC588EA718A7D446CFF62E9BFF00
            3E36FF00F7C0A921D2EC6090490DA408EBD1820C8AE116F3C44CA194DE952320
            843CFE94FB1D63568755B78AEA69BE69155A39571904D160B9E8954E7D32C6E2
            5324D6903B9EACC8093572BCF352D5F569757B986D6697E59195638973C03486
            767FD8BA6FFCF8DBFF00DF02AD5ADAC168A56DA18E25272422819AF3E6BCF112
            A96637A140C9250F1FA56FF82752BABEFB525DCA65F2F69527A8CE7FC2988CFF
            00887FF1F567FEE37F3AEC844935B2A4A8AE8546558641AE37E21FFC7D59FF00
            B8DFCEBB587FD4A7FBA2931A76651D6751D3FC3FA3DD6A3A8CB1DA585AC66496
            42301547B0EA7D855696DB41F176911492C3A7EAFA74CBB919D166420FA67356
            7C41A369FE20D22E74BD62D92E6C6E176C91BF7F423D083C83D8D787CFF00B55
            D1AEA57F0178DF51D22DA46DC6DDCB71FF00024619FC4534909B6725FB41F813
            49F86EDA3789FC1534BA4DF35DF962DE3949190A5B7AE4E4018C11D3E615B1FB
            504B7B7FE07F026B52AB5BA991649FE4DDE548F1AB0C83D7186E2B7F40F80935
            C6BB6DAAFC40F135DF88A4B720C76EFBB61C1CE19998923D86335EC3E26F0FE9
            BE25D0AE748D62D967B1B85DAC9D318E841EC41E86AB9B6279773CAECFC19F12
            AF6D21B9B5F8A892DBCC8248E44D39086523208E7D29BA4FC2AF13B7C41D13C4
            7E22F1AC5AADCE947223FB188DCC67702B907A1C9EA3D6A0B1F841E32F0E2BD9
            F843E225D59E924E12DEE2DC48621E839C0FA802BB1F86BF0D97C1F7F79AAEA1
            ADEA1ADEB978A239AEAE6421768E400993F9927DB1436091E77E3E823B8FDAC3
            C16932075166AE01F5513B03F8100D7D0D5E73AF7C3A9F53F8C5A278D57508E3
            874EB7F25AD4C44B3F120C86CE07FACF4ED5E8D52FA1496E7CFF007E83E1EFED
            2D6B76B88F48F1644627CF0AB3923F5DE14FFDB4353FC2E5FF0084E7E36F8A3C
            6921F334FD2FFE25BA79232338C165FC371FFB695DCFC64F8783E21F87ED6CE1
            BC1617D69702782E4A6EDBC6187041E783F502B47E15F8322F01F836D7458E61
            7132B34B3CE176F9B231E4E3E981F853BE82B3B9E59FB457FC950F861FF5FBFF
            00B562A8FF006A81F64F10780356BB52DA5DADF309CE3207CF1B73F5556FCABD
            03E25FC3A9FC63E2CF0A6B10EA11DAA68B3F9CF1B4458CBF3A3601CF1F77F5AE
            B3C61E19D33C5DA0DC691ADDBF9D69360F070C8C3A329EC4534D2B0ADB9AD6F3
            4571047340EB2452287474390C0F420F714AB346F2BC692234898DEA0E4AE7A6
            476AF08B5F82FE31D122363E19F8917D69A4F448648D898D7D061B03F0C5779F
            0C3E1B5B781DAFAF25D4EF756D66FF001F6ABDB973F381D005C9FCC927DEA5A4
            526CF3BF87BFF2753E38FF00AF33FCE1A87439A2D1FF006B6D697562236D46D3
            6D93C9C062523C007DC230FA8C57A1786FE1D4FA47C5BD7BC64FA8472C3A9426
            25B51110D1FDCE4B679FB9E9DEAD7C51F867A4FC41B6B76BC926B2D4ED39B5BE
            B7FBF1F39C11DC6467D476239AABAB936763BB6202924E00EA4D7CF3F04E48F5
            6F8FDF10B58D2C86D28AB45BD3EEBB99170C3EBB1CFE35A137C1FF001D5FDAFF
            0066EA9F132FA5D248DAC8B0B6F75EE09DDCFE24D7A6F827C0DA3F837C30744D
            1E39121901F3A62F8965623058B0C73E98E9DA96890F56CF3BF167C0E8EEF5CB
            8F10F813C4577E1FD46E58CAE21626276272482A41504F3DC7B547F09FC6DE2D
            B3F88B79E02F1FBC1797D1C266B7BC880058000E0E000415E41C0231CD3E0F83
            FE2BF0EC8F1F81FE20DF5869C49D9697708996307B0C9C7E3B45747F0D3E167F
            C22DAF5E788B5CD66E35DF115D2796D7532ED08BC6428C93D80CE7A0C0029DF4
            D45677D0F4CA28A2A0B0A28A2800A28A2800A28A2800A28A2800A28A2800A28A
            280384F87DFF00210B9FFAE5FD454DF113FD658FD1FF00A543F0FBFE42173FF5
            CBFA8ADEF13E88FABAC061956378F3F787041C7F853EA2E85CD3EFAD16C2D835
            D40088D410641E95C86B92A4BE2F85E27575DF172A723B549FF0865E7FCFCDBF
            EBFE15634FF085C417D0CB35C4452370C4203938A00ED2B80D1E448BC6770F2B
            AA28925F998E077AEFEB8CD4BC2371717F3CD0DC4412472E0367233CD240CE87
            51BEB46D3EE42DD404989800241CF06B9CF877FEB2FBFDD4FF00D9AA0FF8432F
            3FE7E6DFF5FF000ADFF0BE88FA42CE66956479703E5E800CFF008D30313E21FF
            00C7D59FFB8DFCEBB587FD4A7FBA2B8AF887FF001F567FEE37F3AED61FF529FE
            E8A00C9F196A33E93E15D5B50B4DBF68B6B69258F70C8DC0646457CF1FF0BB3C
            59EB61FF007E0FF8D7BDFC4AFF00927FE20FFAF297FF004135E13FB3B4314FE3
            7B849E34917EC4E70EB91F796BCDC5CAA7B585384AD73EDF876861165D88C5E2
            692A8E0D6FE847FF000BB3C59EB61FF7E0FF008D58B4F8E5E258A406E2D74E9D
            3B8F2D949FC4357D1BFD9D643A5A5BFF00DFB159DAAF85741D5A229A86936530
            231B8C4030FA30E453786AEB6A8651CF72893B54C0A4BC9EBF92392F017C57D2
            BC51709657519D3F517E12391B72487D15BD7D8D7A40AF94BE2DF82C78275DB7
            7D3A493EC1740C90127E68D948CAE7DB20835F41FC31D764F11F8274EBFB839B
            82A6294FAB29C13F8E33F8D5E1ABCE5274AAEE8E7CF729C352A14F30C037ECA7
            A59F47FD2675545145769F2C1451450014514500145437D750D959CF7574FB2D
            E08DA591F04ED551927039E82B9FF0578EFC37E365BB6F0C6A42F85A1513110C
            91ECDD9DBF7D467EE9E9E9401D3514514005145140051451400514514005155F
            51BCB7D3B4FB9BDBD93CBB5B689A695F04ED4504B1C0E4E003D2B0FC17E38F0E
            F8D61BA97C31A88BE8ED99526222923DA48247DF519E87A50074945145001451
            4500145145001451450014514500709F0FBFE42173FF005CBFA8AEA759D62DB4
            958CDC8763213B55064F15CB7C3EFF009085CFFD72FEA2A6F889FEB2CBE8FF00
            D29F51742FFF00C26761FF003C6E7FEF91FE35359F8AEC6EAEA38024E8D21DA0
            B28C67F3A8ACFC2DA6CB670C8E92EE74563F39EA4573BA8D943A7F8A20B7B704
            461E320139EA451A01E8F5817BE2AB1B4BA920649DDA33B495518CFE26B7EBCE
            ACACA1BFF165CDBDC8263696427071D09A10CDFF00F84CEC3FE78DCFFDF23FC6
            B5346D62DB56590DB0753191B95C60F3D2B32F7C2FA6C3673C88920648D987CE
            7A8159FF000EFF00D65F7FBA9FD6810CF887FF001F567FEE37F3AED61FF529FE
            E8AE2BE21FFC7D59FF00B8DFCEBB587FD4A7FBA28039DF895FF24FFC41FF005E
            52FF00E826BC37F66FFF0091EAE7FEBC9FFF00424AF72F897FF24FFC41FF005E
            52FF00E826BE69F859E2CB6F06F88A5D46F2DE6B88DEDDA1091100E49073CFD2
            BCBC5C943114E52D8FBDE1DA1531193E2E9525793B597C8FAEE8AF1BFF0085F7
            A37FD02350FF00BE93FC6B3B55F8F8BE595D2B456DE470F712F03F0039FCEBA5
            E36825F11E1C385B359BB7B16BD5AFF324FDA6AF61FB1E8B62306E0C8F31FF00
            654003F527F4AEABE00C2D17C38B567C8124D2BAE7D3763FA5786E99A77887E2
            778A9A594BCAEEC04D705711C09E9EDEC3BFEB4FFDA724BAF0AF887C1DA56877
            D79676915884D904CC81B1263270464D73E19BAB5A55EDA6C8F673C8C32FCB28
            E55CC9D44F9A56E9BFF99F5B0A2990FF00AA4FA0AE13E3CDC4D69F08FC4B3DAC
            D2413A5B029246C5594EF5E84722BD23E1D2D6C77D457857EC81A85E6A3F0F35
            49751BBB8BB95754750F3CAD2103CA8B8C93D3934FFDA23E30DC7829A1D03C34
            A926BF7481DA52BBFECE8785C2F773D81E9E872295C7CAEF63DCB3457C9DA37C
            1BF8A3E29B54D53C43E2DB8D3A798798B0CF732BC8B9E9955202FD074F6ABBA4
            F87BE33FC3BF1469B059DF3F88B4CBB99626124CF342A3BEFDDF347C02770E3E
            BD28B8F95773E8AF1AFF00C89BAF7FD784FF00FA2DABE7AFD88FFE3D7C5DFEFD
            AFF296BE85F1A7FC899AF67AFF0067CFFF00A2DABE29F825E32D7741D3B59D07
            C1766D73E25D6E6812D9B6822144126F7E78CFCC3AF03927A50F71C55E2D1F78
            668AF94EFBE07FC54BF84DEDE78CD65BF237F94D7D3F07D036303F9553F82BF1
            2FC55E13F8871F82BC7535D4F0CF38B4C5E31792DA63C210E7928491DC8C1047
            B971727667D714555D51AED74DBA6D35626BE11318166CEC3263E50D8E719C57
            CD76FE00F8C1F10657BFF1478964F0F5BB1212D229194A8FFAE6840C7BB36699
            295F73E9ECD15F22F8DFE197C43F86DA4C9E22D0FC657BA85BD9FEF275496446
            45EEC50B32B2FAFF002AF71F80BF1064F887E0917D7A891EA76929B6BB0830AC
            C0021C0EC083F9834AE371D2E8F49A335E0BFB467C61BAF084D1786FC2DB4EBB
            7081A59F6EE36EADF742AF773FA0C71C8AE2340F823F123C4B691EA7E22F175C
            E9D7328F31619A79659573FDEC300A7D81345C6A3A5D9F487C45FF00927DE27F
            FB05DD7FE8A6AF09FD897FE409E29FFAF883FF00416AC6D7EF3E20FC24D2751D
            2FC5F76DAFF85F56B59AD23BC0ED235BC8F1B05E5BE65E71953918E9CD6CFEC4
            BFF204F14FFD7C41FF00A0B51D476B459F4BD19AF2CF8F5F1522F871A2429649
            1DC6BB7B916D0BFDD8D4759180EC3A01DCFD0D794683F0ABE2678F6C935AF14F
            8C6EF4B1763CD8ED8BC8CCAA79198D4AAA7D3AFAE28B92A3A5D9F55515F24F89
            34BF89FF0004A4835B87C412EBBA0891567595DDD064F01D189DB9E8194F5FD7
            E8FF000B78CB4FF10F80E0F14DA6E168F6CD3BA672D194077A1F7041145C1C6D
            AA3A7CD15F1E785BFE13AF8F9E20D5EE17C492E8BA459B2FEE61760881CB6D50
            8A46E38539626BA2BAF835F13FC28C977E0FF1A4D7ED1B03E434CF113CFF0071
            8B237D09A2E3E55D59F50D155F4E8EE22D3EDA3BD944F74B1AACB285DA1DF1C9
            03B64E78AB14C80A28A280384F87DFF210B9FF00AE5FD454DF113FD658FD1FFA
            543F0FBFE42173FF005CBFA8A9BE21FF00ACB1FA3FF4A7D45D0EB74DFF00907D
            AFFD725FE55C4F88BFE47287FDF8BFA576DA6FFC83AD7FEB92FF002AE27C45FF
            0023943FEFC5FD2840CEFABCCAE6EE7D2FC45753C4A048B2BE038E3049AF4DA6
            B468C72C8A4FB8A433CF26F15EA3343244EB06D752A7087A1FC6B4BE1E2306BD
            720ED21003EFCD761E4C7FF3CD3FEF914E550A30A001EC29DC56388F887FF1F5
            67FEE37F3AED61FF00529FEE8AE2BE217FC7D59FFB8DFCEBB587FD4A7FBA2803
            9DF895FF0024FF00C41FF5E52FFE826BE74F833E1BD3BC53E299AC7578DE4B75
            B66940472A770651D47D4D7D17F12FFE49FF00883FEBCA5FFD04D786FECDFF00
            F23D5CFF00D793FF00E8495E662A2A588A699F77C3F5674726C654A6ED256B35
            E87A97FC29AF07FF00CF9DCFFE043559B3F84BE0EB595641A6194AF4134CEE3F
            119C1AEF28AEC587A4B68AFB8F979673984959D797FE04CAD61636BA7DBADBD8
            DBC56F02F44890281F80AF94BF6C7FF91F3C2DFF005EBFFB56BEB6AF993F6CEF
            0EDE4F6DA17886D6177B7B4DF6D70EA3FD5EE20A13ED9DC33EB8F5AD5AD34386
            327295E4CFA621FF00529FEE8AF3EFDA19D53E0D789CB1C66DD547D4BAE2B86F
            877FB46F85AEBC3B69178B6E66D375586209337D9DE48E56031B94A038CF5C10
            315C2FC70F8A8FF12342BED1BC156B72DA1D8A7DB352BD95360755236A81D40D
            C41E79240E300D17128BB9DC7EC61FF24DB56FFB0ABFFE898ABCFF00498935FF
            00DB1A75D5BE710DFCCD1A377F2626F2FF002D8A7F0AF40FD8C7FE49B6ADFF00
            6157FF00D1315721FB45786358F05FC48B3F891E1E84C96E648E59CAA9221994
            05F9F1FC2E3033EA48EE29742BED347D5D4578FF00853F685F02EB1A6472EA7A
            836917BB7F7B6D7113B60F7DACA0823F23ED58DE24FDA3B444D634FD3BC1BA7D
            D6BF3CF7091C852368C1527044608DCCDE990053B91CACF5FF001AFF00C89BAF
            7FD83E7FFD16D5F35FEC4FA65BCBA8789F537406E608E0B78D88FBAAE5CB63EB
            B17F2AFA4BC60C5FC11ADB94642DA74E4AB632BFBA6E0E3BD7CF9FB11FFC7AF8
            BBFDFB5FE52D0F71AF859F4FD7C83FB45C296FFB46786A484057952C64723BB7
            9ECB9FC947E55F5F57C8BFB49FFC9C3F857FEB8D97FE94BD0C29EE7D47E2BF10
            E9FE15F0F5EEB3AC4BE5595AA6F72064B1E8140EE49200FAD7CFD0FC70F883E2
            B9A69BC03E071369A8C504D346F293F5605541F6E715DFFED3DA3DEEB3F08F51
            4D3A37964B6963BA78D064B46A7E6E3D81CFE15C7FECFBF17BC1DA77C3CD3743
            D66FE2D26FEC159196652125CB13BD580C739E41E73404569730BC59E36F8D17
            7E16D62DF57F065A41A6CD67347752881818E22843B7FAC3D064F4AD2FD89CFF
            00C53FE261FF004F511FFC70D5CF8D1F1BB45BEF0CEA3E1DF04C926B1A8DFDBC
            90CB2C11B7970C454F98D923E63B73D381D49E2A97EC4FFF00201F138FFA7987
            FF00416A5D4AFB2F4393D06DE3D77F6C2BA1AAAF9821D4277446EE628DBCBFCB
            6A9FC2BEC1AF927F687F0F6AFE04F8A569F10F42899AD2596399DC025629D46D
            2AF8E8AE07E39615EB5E13F8FF00E06D6B4C8E6BFD4C69379B4196DAE91BE53D
            F6B01861FAFB0A68524DA4D1D4FC66D3EDB52F855E2A86F40F2D74E9A7527F85
            D10BA9FF00BE94578DFEC4DFF203F14FFD7C41FF00A0B533E327C598BC75A3DF
            784FE1DC735FA490493EA17C63648E3B78C6F60B9C1E71C923D86734FF00D897
            FE407E29FF00AF883FF416A3A859A8BB9C3FED15A8DD37ED0D6D8B06D4BEC22D
            16DEC8296FB4747D98009396623815E87FF0BABE24FF00D129D4FF00F01EE7FF
            008DD56FDAB7C15AA8D474CF1DF8796469F4F554B9F2972D16C62C92E3B80490
            7D38ED9AEBBE1F7ED05E12D774787FB7EFA3D1B56550278A7522366EEC8C0630
            7D0E0FF3A43DD2D0E0FC5BF13BE217897C33A9E8B77F0AF54486FADDE06716B7
            04A6E1C301B3A8383F8576BFB2D68DA9D8FC2FD434BF11E9B7B645AFA55105E4
            2D13346D1A6480C01C125B9FAD3FC71FB44784F44B7F2FC3D23EBFA8B10122B7
            5658C73DDC8FD141FC2BD0F57F157F67FC3E9FC4EDA6DE868ECBED42C5E33E70
            38C8460338E7A9EC326989DED6B1F35DF7C35F893F09BC4975A97C3C32EA3A64
            A7A40A24664049092C4796233D573F866BA2F08FED31341A8A69DF103426B090
            30492E6DD597CB3D32F1373F5C1FC2BB7F05FED0BE0AD76CE3FED4BC6D16FF00
            68F321BA52533DF6C80608FAE0FB57987ED4DE36F05F8A745D36D3C3F716FA96
            B71DC86FB45BC64EC8B0415DF8E7276F033D28F41ABB76923EACB3BA86F6D21B
            AB49526B7990491C8872AEA464107D08A9AB8AF82FA65F68DF0B7C3761AAAB25
            E456A3CC46EA9925829F70081F8576B4CCDEE145145023CE07873598246F2632
            3B6E4940C8FCE925F0F6B52E3CD85DF1D374A0E3F5A28A7715878D0F5E0A0059
            401C00261FE351B7877597937B42C5FF00BC6419FE745145C2C4BFD89AFF00A4
            DFF7FC7F8D1FD89AFF00A4DFF7FC7F8D145170B07F626BFE937FDFF1FE347F62
            6BFE937FDFF1FE345145C2C31BC39ACCF2289A363CE373CA0E3F5AF468D76A2A
            FA0C5145218D9A28E789E29916489C6D647190C3D08AAB67A569F632992CEC6D
            6DE4236968A25538F4C814514ACB7294E49593D0BB451453242A1BCB582F6D65
            B6BC8629EDE55292452A065753D41078228A2803CD2E7E02FC39B8B933378795
            189C958EE6655FC8362BA887E1FF00862DFC2B75E1CB5D1EDEDF48BA5DB3C30E
            50C9CE72CC0EE278EA4E68A28B0EECB1E09F07689E0AD366B0F0DD99B4B49663
            3BA1919F2E4019CB127A28ADDB8862B885E1B889258A452AE8EA19581EA083D4
            5145023CD750F813F0EAFEE9A793C3B1C4CC725609E4897F0556007E02BA3F08
            7C3CF0A783E4693C3DA2DADA4EC3699B05E4C7A6E624E3F1A28A07CCCE92FAD6
            2BEB1B8B4B95DF04F1B4522E719561823F235CEF81FC03E1DF032DE2F866C0D9
            ADD94330333C9BB6E71F789C7DE3451408EA6B8FF137C37F0BF89BC4769AEEB5
            A71B8D4ED551619BCE91768462CBC0600E093DA8A2804EC75E40208201046083
            5E6FADFC10F87DACDF497977E1F8A39E46DCE6DE6921563DCED5603F4A28A069
            B5B1ADA07C31F07F87F4FBDB3D2343B7823BD85ADEE1F2CD23C6C082BBC92C01
            04F43573C0FE05F0FF0081E0BA87C33626CE3BA65794195E4DC40C0FBC4FAD14
            501767437B696F7D6B2DB5EC115C5B4ABB648A540E8E3D083C115E657DF00BE1
            CDDDC999B41311272561BA9517F20D81F85145009B5B1D5E85E01F0C681A1DEE
            91A3E9105AD95EC6D15C84277CAACA548672771E09EFC76A5F03F817C3FE0786
            EA1F0CD89B38EE995E51E6BC9B8A8207DE271D4D145017674CCA194860082304
            1EF5E75AE7C14F87FAD5E497579E1D812791B739B691E00C7D76A301FA514500
            9B5B1A1E15F857E0BF0B5DADD68DA05AC774BF76794B4CEBFEE97271F8576A40
            230464514500DB6701E22F83DE03F105E3DD6A3E1DB617121CBBDBB34058FA90
            840269FE17F843E06F0CDF477BA568102DDC67292CCEF3143EA379383EE28A28
            0BB3BDA28A281051451401FFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 148.661410000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        Child = frxFacturas.Child1
        DataSet = frxDBDataset4
        DataSetName = 'frxFacturas'
        RowCount = 0
        StartNewPage = True
        object Shape2: TfrxShapeView
          Left = 8.897650000000000000
          Top = 11.338590000000000000
          Width = 695.433520000000000000
          Height = 120.944960000000000000
        end
        object Line3: TfrxLineView
          Left = 7.559060000000000000
          Top = 32.385590000000000000
          Width = 696.000000000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 356.173470000000000000
          Top = 12.259740000000000000
          Height = 120.944960000000000000
          Color = clBlack
          Diagonal = True
        end
        object frxFacturasnombrefactura: TfrxMemoView
          Left = 461.102660000000000000
          Top = 37.795300000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'nombrefactura'
          DataSet = frxDBDataset4
          DataSetName = 'frxFacturas'
          Memo.UTF8W = (
            '[frxFacturas."nombrefactura"]')
        end
        object frxFacturasciffactura: TfrxMemoView
          Left = 461.102660000000000000
          Top = 60.472480000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ciffactura'
          DataSet = frxDBDataset4
          DataSetName = 'frxFacturas'
          Memo.UTF8W = (
            '[frxFacturas."ciffactura"]')
        end
        object frxFacturasdireccionfactura: TfrxMemoView
          Left = 464.882190000000000000
          Top = 83.149660000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'direccionfactura'
          DataSet = frxDBDataset4
          DataSetName = 'frxFacturas'
          Memo.UTF8W = (
            '[frxFacturas."direccionfactura"]')
        end
        object frxFacturascodigopostalfactura: TfrxMemoView
          Left = 464.882190000000000000
          Top = 109.606370000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'codigopostalfactura'
          DataSet = frxDBDataset4
          DataSetName = 'frxFacturas'
          Memo.UTF8W = (
            '[frxFacturas."codigopostalfactura"]')
        end
        object frxFacturasciudadfactura: TfrxMemoView
          Left = 536.693260000000000000
          Top = 109.606370000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'ciudadfactura'
          DataSet = frxDBDataset4
          DataSetName = 'frxFacturas'
          Memo.UTF8W = (
            '[frxFacturas."ciudadfactura"]')
        end
        object Memo1: TfrxMemoView
          Left = 366.614410000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Cliente:')
        end
        object Memo2: TfrxMemoView
          Left = 366.614410000000000000
          Top = 60.472480000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'C.I.F:')
        end
        object Memo3: TfrxMemoView
          Left = 366.614410000000000000
          Top = 83.149660000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Direcci'#243'n'
            ':')
        end
        object Memo4: TfrxMemoView
          Left = 366.614410000000000000
          Top = 109.606370000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'C'#243'digo Postal:')
        end
        object Memo7: TfrxMemoView
          Left = 68.031540000000000000
          Top = 13.338590000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'JUAN FCO. PUCHADES RAM'#211'N')
        end
        object Memo8: TfrxMemoView
          Left = 79.370130000000000000
          Top = 37.795300000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '53.202.918-P')
        end
        object Memo9: TfrxMemoView
          Left = 79.370130000000000000
          Top = 60.472480000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'C/ M'#218'SICO GIMENO PUCHALT N'#186' 13 - 8')
        end
        object Memo10: TfrxMemoView
          Left = 79.370130000000000000
          Top = 83.149660000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Telf. 664 29 89 51')
        end
        object Memo11: TfrxMemoView
          Left = 79.370130000000000000
          Top = 109.606370000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Mail: juanfcopu@icloud.com')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 47.244094490000000000
        Top = 480.000310000000000000
        Width = 718.110700000000000000
        AllowSplit = True
        DataSet = frxDBDataset5
        DataSetName = 'frxDetalleFacturas'
        RowCount = 0
        object frxDetalleFacturasnlinea: TfrxMemoView
          Left = 37.795300000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'nlinea'
          DataSet = frxDBDataset5
          DataSetName = 'frxDetalleFacturas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            '[frxDetalleFacturas."nlinea"]')
          ParentFont = False
        end
        object frxDetalleFacturasdescripcion: TfrxMemoView
          Left = 125.795300000000000000
          Top = 15.118120000000000000
          Width = 251.630180000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'descripcion'
          DataSet = frxDBDataset5
          DataSetName = 'frxDetalleFacturas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            '[frxDetalleFacturas."descripcion"]')
          ParentFont = False
        end
        object frxDetalleFacturascantidad: TfrxMemoView
          Left = 402.795300000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'cantidad'
          DataSet = frxDBDataset5
          DataSetName = 'frxDetalleFacturas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            '[frxDetalleFacturas."cantidad"]')
          ParentFont = False
        end
        object frxDetalleFacturasimporte: TfrxMemoView
          Left = 496.795300000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'importe'
          DataSet = frxDBDataset5
          DataSetName = 'frxDetalleFacturas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            '[frxDetalleFacturas."importe"]')
          ParentFont = False
        end
        object frxDetalleFacturasimporte1: TfrxMemoView
          Left = 597.795300000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'importe'
          DataSet = frxDBDataset5
          DataSetName = 'frxDetalleFacturas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8W = (
            '[frxDetalleFacturas."importe"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 551.811380000000000000
        Width = 718.110700000000000000
        object Line14: TfrxLineView
          Left = 578.268090000000000000
          Top = 15.118120000000000000
          Height = 34.015770000000000000
          GroupIndex = 1
          Color = clBlack
          Diagonal = True
        end
        object Line13: TfrxLineView
          Left = 483.779840000000000000
          Top = 15.118120000000000000
          Height = 34.015770000000000000
          GroupIndex = 1
          Color = clBlack
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 389.291590000000000000
          Top = 15.118120000000000000
          Height = 34.015770000000000000
          GroupIndex = 1
          Color = clBlack
          Diagonal = True
        end
        object Line11: TfrxLineView
          Left = 294.803340000000000000
          Top = 15.118120000000000000
          Height = 34.015770000000000000
          GroupIndex = 1
          Color = clBlack
          Diagonal = True
        end
        object Line10: TfrxLineView
          Left = 200.315090000000000000
          Top = 15.118120000000000000
          Height = 34.015770000000000000
          GroupIndex = 1
          Color = clBlack
          Diagonal = True
        end
        object Line9: TfrxLineView
          Left = 105.826840000000000000
          Top = 15.118120000000000000
          Height = 34.015770000000000000
          GroupIndex = 1
          Color = clBlack
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 578.268090000000000000
          Top = 49.133890000000000000
          Height = 34.015770000000000000
          GroupIndex = 1
          Color = clBlack
          Diagonal = True
        end
        object Line7: TfrxLineView
          Left = 483.779840000000000000
          Top = 49.133890000000000000
          Height = 34.015770000000000000
          GroupIndex = 1
          Color = clBlack
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 389.291590000000000000
          Top = 49.133890000000000000
          Height = 34.015770000000000000
          GroupIndex = 1
          Color = clBlack
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 294.803340000000000000
          Top = 49.133890000000000000
          Height = 34.015770000000000000
          GroupIndex = 1
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 200.315090000000000000
          Top = 49.133890000000000000
          Height = 34.015770000000000000
          GroupIndex = 1
          Color = clBlack
          Diagonal = True
        end
        object Line1: TfrxLineView
          Left = 105.826840000000000000
          Top = 49.133890000000000000
          Height = 34.015770000000000000
          GroupIndex = 1
          Color = clBlack
          Diagonal = True
        end
        object Shape1: TfrxShapeView
          Left = 18.897650000000000000
          Top = 49.133890000000000000
          Width = 680.315400000000000000
          Height = 34.015770000000000000
          GroupIndex = 1
        end
        object Shape3: TfrxShapeView
          Left = 18.897650000000000000
          Top = 15.118120000000000000
          Width = 680.315400000000000000
          Height = 34.015770000000000000
          GroupIndex = 1
        end
        object frxFacturasretencion: TfrxMemoView
          Left = 117.165430000000000000
          Top = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'retencion'
          DataSet = frxDBDataset4
          DataSetName = 'frxFacturas'
          DisplayFormat.FormatStr = '%g %'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxFacturas."retencion"]')
          ParentFont = False
        end
        object frxFacturasimporteRetencion: TfrxMemoView
          Left = 207.874150000000000000
          Top = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'importeRetencion'
          DataSet = frxDBDataset4
          DataSetName = 'frxFacturas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxFacturas."importeRetencion"]')
          ParentFont = False
        end
        object frxFacturasTotalBruto: TfrxMemoView
          Left = 26.456710000000000000
          Top = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'TotalBruto'
          DataSet = frxDBDataset4
          DataSetName = 'frxFacturas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxFacturas."TotalBruto"]')
          ParentFont = False
        end
        object frxFacturasbaseimponible: TfrxMemoView
          Left = 306.141930000000000000
          Top = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'baseimponible'
          DataSet = frxDBDataset4
          DataSetName = 'frxFacturas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxFacturas."baseimponible"]')
          ParentFont = False
        end
        object frxFacturasIva: TfrxMemoView
          Left = 396.850650000000000000
          Top = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Iva'
          DataSet = frxDBDataset4
          DataSetName = 'frxFacturas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxFacturas."Iva"]')
          ParentFont = False
        end
        object frxFacturasimporteIVA: TfrxMemoView
          Left = 491.338900000000000000
          Top = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'importeIVA'
          DataSet = frxDBDataset4
          DataSetName = 'frxFacturas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxFacturas."importeIVA"]')
          ParentFont = False
        end
        object frxFacturasTotal: TfrxMemoView
          Left = 600.945270000000000000
          Top = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'Total'
          DataSet = frxDBDataset4
          DataSetName = 'frxFacturas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxFacturas."Total"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 18.897650000000000000
          Top = 22.677180000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Importe Bruto')
        end
        object Memo13: TfrxMemoView
          Left = 117.165430000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Retenci'#243'n %')
        end
        object Memo14: TfrxMemoView
          Left = 207.874150000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Retenci'#243'n '#8364)
        end
        object Memo15: TfrxMemoView
          Left = 294.803340000000000000
          Top = 22.677180000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Base Imponible')
        end
        object Memo16: TfrxMemoView
          Left = 415.748300000000000000
          Top = 22.677180000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'I.V.A')
        end
        object Memo17: TfrxMemoView
          Left = 510.236550000000000000
          Top = 22.677180000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'I.V.A')
        end
        object Memo18: TfrxMemoView
          Left = 619.842920000000000000
          Top = 22.677180000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Total')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 710.551640000000000000
        Width = 718.110700000000000000
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 90.708720000000000000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        object frxFacturasFechaFactura: TfrxMemoView
          Left = 502.677490000000000000
          Top = 7.559060000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset4
          DataSetName = 'frxFacturas'
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8W = (
            '[frxFacturas."FechaFactura"]')
        end
        object frxFacturasidFactura: TfrxMemoView
          Left = 102.047310000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'idFactura'
          DataSet = frxDBDataset4
          DataSetName = 'frxFacturas'
          Memo.UTF8W = (
            '[frxFacturas."idFactura"]')
        end
        object frxFacturasano: TfrxMemoView
          Left = 147.401670000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ano'
          DataSet = frxDBDataset4
          DataSetName = 'frxFacturas'
          Memo.UTF8W = (
            '[frxFacturas."ano"]')
        end
        object Memo5: TfrxMemoView
          Left = 449.764070000000000000
          Top = 7.559060000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Fecha:')
        end
        object Memo6: TfrxMemoView
          Left = 26.456710000000000000
          Top = 7.559060000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'N'#186' Factura:')
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  object FDfacturas: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      
        'select * from facturas F, clientes C where F.idCliente=C.IdConta' +
        'ctos')
    Left = 40
    Top = 224
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxFacturas'
    CloseDataSource = False
    DataSet = FDfacturas
    BCDToCurrency = False
    Left = 248
    Top = 224
  end
  object FDDetalleFacturas: TFDQuery
    Active = True
    IndexFieldNames = 'facturas_idfactura;facturas_ano'
    MasterSource = dsfacturas
    MasterFields = 'idFactura;ano'
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from lineasfacturas')
    Left = 40
    Top = 296
  end
  object dsfacturas: TDataSource
    DataSet = FDfacturas
    Left = 144
    Top = 296
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxDetalleFacturas'
    CloseDataSource = False
    DataSet = FDDetalleFacturas
    BCDToCurrency = False
    Left = 248
    Top = 296
  end
end

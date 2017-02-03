object INFORMES: TINFORMES
  Left = 0
  Top = 0
  Caption = 'INFORMES'
  ClientHeight = 554
  ClientWidth = 1028
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object R_CLIENTES_TODOS: TfrxReport
    Version = '4.9.32'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42235.735264965300000000
    ReportOptions.LastChange = 42247.371727129600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      '                                    '
      'begin'
      '                                     '
      'end;'
      ''
      '  '
      ''
      ''
      '                                             '
      ''
      ''
      ''
      'begin'
      ''
      'end.')
    Left = 328
    Top = 144
    Datasets = <
      item
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'mivariable'
        Value = '1'
      end
      item
        Name = 'mivariable2'
        Value = ''
      end>
    Style = <
      item
        Name = 'Title'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 52479
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 1065.827460000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 1065.827460000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Listado Econ'#243'mico de Clientes.')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 1065.827460000000000000
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 45.354360000000000000
        Top = 151.181200000000000000
        Width = 1065.827460000000000000
        Condition = 'rdb_comodin."CLIENTE"'
        OutlineText = 'rdb_comodin."CLIENTE"'
        ResetPageNumbers = True
        object Memo2: TfrxMemoView
          Top = 22.677180000000000000
          Width = 1046.929133858270000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Top = 22.677180000000000000
          Width = 67.954104050000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FECHA')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 71.733634050000000000
          Top = 22.677180000000000000
          Width = 175.387818770000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            ' NTO. ALBARAN')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 250.121452820000000000
          Top = 22.677180000000000000
          Width = 171.237399640000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REFERENCIA CLIENTE')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 424.154152460000000000
          Top = 22.677180000000000000
          Width = 227.101369990000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CONSIGNATARIO')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 653.357872450000000000
          Top = 22.677180000000000000
          Width = 165.429021220000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'POBLACION')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          Left = 820.023133670000000000
          Top = 22.677180000000000000
          Width = 73.118844390000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'BULTOS')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          Left = 895.346678060000000000
          Top = 22.677180000000000000
          Width = 45.004175100000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PESO')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          Left = 941.571323150000000000
          Top = 22.677180000000000000
          Width = 57.444390700000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRECIO')
          ParentFont = False
          Style = 'Header'
        end
        object Memo11: TfrxMemoView
          Align = baWidth
          Width = 1065.827460000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 52479
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[rdb_comodin."cliente"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
        object rdb_comodinNOMBRE: TfrxMemoView
          Left = 181.417440000000000000
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Memo.UTF8W = (
            '[rdb_comodin."NOMBRE"]')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 219.212740000000000000
        Width = 1065.827460000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
        RowCount = 0
        object Memo21: TfrxMemoView
          Left = 2.000000000000000000
          Top = 0.787260000000000000
          Width = 1062.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 1'
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 652.475992450000000000
          Top = 1.000000000000000000
          Width = 214.562911220000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo16OnBeforePrint'
          ShowHint = False
          DataField = 'loc_consig'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."loc_consig"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Width = 71.733634050000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'fecha_alb'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."fecha_alb"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 84.733634050000000000
          Width = 171.608288770000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          DisplayFormat.FormatStr = '###-###-######'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."albaran"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 266.019102820000000000
          Width = 209.032699640000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'referencia'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."referencia"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 842.684543670000000000
          Width = 35.323544390000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'bultos'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[rdb_comodin."bultos"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 906.685268060000000000
          Width = 37.445115100000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'kilos'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[rdb_comodin."kilos"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 959.248503150000000000
          Width = 38.546740700000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[rdb_comodin."cobramos"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 425.917912460000000000
          Width = 253.558079990000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."consigna"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 49.133890000000000000
        Top = 271.685220000000000000
        Width = 1065.827460000000000000
        object Shape5: TfrxShapeView
          Left = 253.228510000000000000
          Top = 5.000000000000000000
          Width = 721.890230000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 16774348
          Shape = skRoundRectangle
        end
        object Shape1: TfrxShapeView
          Left = 417.008040000000000000
          Top = 9.559060000000000000
          Width = 211.653680000000000000
          Height = 22.677180000000000000
          ShowHint = False
        end
        object Shape4: TfrxShapeView
          Left = 759.126470000000000000
          Top = 9.779530000000000000
          Width = 211.653680000000000000
          Height = 22.677180000000000000
          ShowHint = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 264.567100000000000000
          Top = 10.338590000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8W = (
            'TOTAL CLIENTE')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 423.307360000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 876.850960000000000000
          Top = 10.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            '[SUM(<rdb_comodin."cobramos">)]')
        end
        object Memo23: TfrxMemoView
          Left = 525.354670000000000000
          Top = 10.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Registros')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 767.244590000000000000
          Top = 10.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 438.425480000000000000
        Width = 1065.827460000000000000
        object SysMemo4: TfrxSysMemoView
          Left = 793.701300000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'P'#225'gina  [PAGE#] de [TOTALPAGES#]')
        end
        object SysMemo1: TfrxSysMemoView
          Left = 15.118120000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'mm.dd.aaaa'
          Memo.UTF8W = (
            '[date]')
        end
      end
      object Footer1: TfrxFooter
        Height = 56.692950000000000000
        Top = 340.157700000000000000
        Width = 1065.827460000000000000
        object Shape2: TfrxShapeView
          Left = 22.677180000000000000
          Top = 4.559060000000000000
          Width = 668.976810000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 10218495
          Shape = skRoundRectangle
        end
        object SysMemo6: TfrxSysMemoView
          Left = 585.827150000000000000
          Top = 9.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<rdb_comodin."cobramos">,MasterData1)]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 325.039580000000000000
          Top = 11.338590000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL SUMA GENERAL')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          Left = 41.574830000000000000
          Top = 11.338590000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[COUNT()]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 124.724490000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Registros')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          Left = 34.015770000000000000
          Top = 11.338590000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
      end
    end
  end
  object query_comodin: TMyQuery
    SQLDelete.Strings = (
      'DELETE FROM albaran'
      'WHERE'
      '  CLIENTE = :Old_CLIENTE')
    SQLUpdate.Strings = (
      'UPDATE albaran'
      'SET'
      
        '  ALBARAN = :ALBARAN, REFERENCIA = :REFERENCIA, CLIENTE = :CLIEN' +
        'TE, REMITENTE = :REMITENTE, FECHA_ALB = :FECHA_ALB'
      'WHERE'
      '  CLIENTE = :Old_CLIENTE')
    SQLRefresh.Strings = (
      
        'SELECT ALBARAN, REFERENCIA, CLIENTE, REMITENTE, FECHA_ALB FROM a' +
        'lbaran'
      'WHERE'
      '  CLIENTE = :CLIENTE')
    SQLLock.Strings = (
      'SELECT * FROM albaran'
      'WHERE'
      '  CLIENTE = :Old_CLIENTE'
      'FOR UPDATE')
    Connection = conesiones.conexion_general
    SQL.Strings = (
      'SELECT'
      'ALBARAN.ID,'
      'albaran.ALBARAN,'
      'ALBARAN.DIR_RECOGIDA,'
      'ALBARAN.FECHA_ALB,'
      'ALBARAN.CONSIGNA,'
      'albaran.REFERENCIA,'
      'ALBARAN.LOC_CONSIG,'
      'ALBARAN.BULTOS,'
      'ALBARAN.KILOS,'
      'ALBARAN.COBRAMOS,'
      'albaran.pagamos,'
      'albaran.CLIENTE,'
      'albaran.REMITENTE,'
      'clientes.NOMBRE,'
      'albaran.proveedor,'
      'ALBARAN.F_CONCERT,'
      'ALBARAN.CP_CONSIG,'
      'ALBARAN.DIR_CONSIG,'
      'ALBARAN.OB_PROVEEDOR'
      'FROM'
      'albaran'
      'INNER JOIN clientes ON albaran.CLIENTE = clientes.CLIENTE'
      'ORDER BY ID'
      ' LIMIT 20')
    Active = True
    Left = 136
    Top = 216
  end
  object data_comodin: TMyDataSource
    DataSet = query_comodin
    Left = 32
    Top = 416
  end
  object rdb_comodin: TfrxDBDataset
    UserName = 'rdb_comodin'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ALBARAN=ALBARAN'
      'DIR_RECOGIDA=DIR_RECOGIDA'
      'FECHA_ALB=FECHA_ALB'
      'CONSIGNA=CONSIGNA'
      'REFERENCIA=REFERENCIA'
      'LOC_CONSIG=LOC_CONSIG'
      'BULTOS=BULTOS'
      'KILOS=KILOS'
      'COBRAMOS=COBRAMOS'
      'pagamos=pagamos'
      'CLIENTE=CLIENTE'
      'REMITENTE=REMITENTE'
      'NOMBRE=NOMBRE'
      'proveedor=proveedor'
      'F_CONCERT=F_CONCERT'
      'CP_CONSIG=CP_CONSIG'
      'DIR_CONSIG=DIR_CONSIG'
      'OB_PROVEEDOR=OB_PROVEEDOR')
    DataSet = query_comodin
    BCDToCurrency = False
    Left = 40
    Top = 24
  end
  object frxPDFExport1: TfrxPDFExport
    ShowDialog = False
    FileName = 'G:\programa ttes\DESARROLLOS\DESCARGAS\cobasa txt.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 944
    Top = 264
  end
  object frxMailExport1: TfrxMailExport
    FileName = 'ORDEN DE CARGA'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Address = 'jvmontoro@destinalogistica.com'
    Subject = 'ERER'
    Lines.Strings = (
      'REWRREWREW')
    ShowExportDialog = True
    FromMail = 'jvmontoro@gmail.com'
    FromName = 'JVMONTORO@GMAIL.COM'
    FromCompany = 'sdfdf'
    Signature.Strings = (
      'sdfdsdfs')
    SmtpHost = 'smtp.gmail.com'
    SmtpPort = 25
    Login = 'jvmontoro@destinalogistica.com'
    Password = 'DesTinA087'
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = True
    Left = 952
    Top = 96
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 944
    Top = 32
  end
  object frxXLSExport2: TfrxXLSExport
    FileName = 'C:\Users\Public\Documents\1.xls'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    ExportEMF = True
    OpenExcelAfterExport = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 952
    Top = 160
  end
  object informe_recogidas: TfrxReport
    Version = '4.9.32'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42247.629250578700000000
    ReportOptions.LastChange = 42247.746345127300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 328
    Top = 24
    Datasets = <
      item
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
      end>
    Variables = <
      item
        Name = ' mis variables'
        Value = Null
      end
      item
        Name = 'empresa'
        Value = Null
      end>
    Style = <
      item
        Name = 'Title'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 52479
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 37.795300000000000000
        Top = 16.000000000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '      LISTA DE CARGA ')
          ParentFont = False
          VAlign = vaCenter
        end
        object InputBox: TfrxMemoView
          Left = 262.000000000000000000
          Top = 3.102350000000000000
          Width = 326.000000000000000000
          Height = 26.000000000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[InputBox('#39' Transportista '#39','#39' Nombre de la empresa de Transporte' +
              '? '#39','#39'  '#39')]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 72.000000000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Width = 1046.929133858270000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 26.456710000000000000
        Top = 156.000000000000000000
        Width = 1046.929810000000000000
        Condition = 'rdb_comodin."proveedor"'
        object SysMemo3: TfrxSysMemoView
          Left = 442.205010000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[SUM(<rdb_comodin."KILOS">,MasterData1)]')
        end
        object Memo18: TfrxMemoView
          Left = 7.559060000000000000
          Width = 400.630180000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clWhite
          DataField = 'proveedor'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[rdb_comodin."proveedor"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 45.354360000000000000
        Top = 208.000000000000000000
        Width = 1046.929810000000000000
        Condition = 'rdb_comodin."REMITENTE"'
        KeepTogether = True
        object Memo5: TfrxMemoView
          Left = 880.160624010000000000
          Top = 22.677180000000000000
          Width = 100.775931480000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clAqua
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'BULTOS')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 981.157025490000000000
          Top = 22.677180000000000000
          Width = 51.913728360000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clAqua
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'KILOS')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 9.559060000000000000
          Top = 22.677180000000000000
          Width = 135.226893930000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clAqua
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REFERENCIA')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 567.336973930000000000
          Top = 22.677180000000000000
          Width = 148.603180090000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clAqua
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'POBLACION')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 9.661410000000000000
          Top = 0.220470000000000000
          Width = 184.315090000000000000
          Height = 18.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'REMITENTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 716.000000000000000000
          Top = 22.566790000000000000
          Width = 166.603180090000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clAqua
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FECHA ENTREGA')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 142.000000000000000000
          Top = 22.566790000000000000
          Width = 425.226893930000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clAqua
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '                      CONSIGNATARIO')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 198.000000000000000000
          Width = 422.315090000000000000
          Height = 18.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[rdb_comodin."DIR_RECOGIDA"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 24.000000000000000000
        Top = 272.000000000000000000
        Width = 1046.929810000000000000
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
        RowCount = 0
        object Memo14: TfrxMemoView
          Left = 4.000000000000000000
          Top = 2.000000000000000000
          Width = 1038.000000000000000000
          Height = 22.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Color = 14737632
          Highlight.Condition = '<Line> mod 2 = 1'
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 10.000000000000000000
          Top = 2.000000000000000000
          Width = 189.321203930000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'REFERENCIA'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."REFERENCIA"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 558.943343930000000000
          Top = 4.000000000000000000
          Width = 185.878690090000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'LOC_CONSIG'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."LOC_CONSIG"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 912.381094010000000000
          Top = 2.000000000000000000
          Width = 62.980631480000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BULTOS'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[rdb_comodin."BULTOS"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 975.157025490000000000
          Top = 4.000000000000000000
          Width = 51.913728360000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[rdb_comodin."KILOS"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 494.535560000000000000
          Top = 4.000000000000000000
          Width = 65.069193930000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CP_CONSIG'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[rdb_comodin."CP_CONSIG"]')
          ParentFont = False
        end
        object rdb_comodinF_CONCERT: TfrxMemoView
          Left = 748.000000000000000000
          Top = 4.535250000000000000
          Width = 160.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'F_CONCERT'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."F_CONCERT"]')
          ParentFont = False
        end
        object rdb_comodinCONSIGNA: TfrxMemoView
          Left = 202.000000000000000000
          Top = 4.535250000000000000
          Width = 286.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'CONSIGNA'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[rdb_comodin."CONSIGNA"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 412.000000000000000000
        Width = 1046.929810000000000000
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 30.897650000000000000
        Top = 340.000000000000000000
        Width = 1046.929810000000000000
        object Shape2: TfrxShapeView
          Left = 275.905690000000000000
          Top = 10.220470000000000000
          Width = 597.165740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 4643583
        end
        object SysMemo1: TfrxSysMemoView
          Left = 682.315400000000000000
          Top = 10.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<rdb_comodin."KILOS">,MasterData1)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 151.622140000000000000
          Top = 10.000000000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 4643583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'TOTAL  EN ')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 302.362400000000000000
          Top = 10.000000000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[rdb_comodin."DIR_RECOGIDA"]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 486.236550000000000000
          Top = 10.000000000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<rdb_comodin."BULTOS">,MasterData1)]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 777.890230000000000000
          Top = 10.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'KILOS')
        end
        object Memo19: TfrxMemoView
          Left = 612.031850000000000000
          Top = 10.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'BULTOS')
        end
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 448.000000000000000000
        Width = 1046.929810000000000000
        object Memo21: TfrxMemoView
          Left = 650.031850000000000000
          Top = 2.000000000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 13296895
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[SUM(<rdb_comodin."KILOS">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 478.000000000000000000
          Top = 2.031230000000000000
          Width = 172.000000000000000000
          Height = 20.000000000000000000
          ShowHint = False
          Color = 13296895
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'TOTAL KILOS HOY')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 32.000000000000000000
        Top = 508.000000000000000000
        Width = 1046.929810000000000000
        object Memo13: TfrxMemoView
          Left = 746.000000000000000000
          Top = 4.000000000000000000
          Width = 24.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[(<Page>)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 692.000000000000000000
          Top = 4.000000000000000000
          Width = 50.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'P'#225'gina')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 24.000000000000000000
          Top = 4.000000000000000000
          Width = 238.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Color = clWhite
          DisplayFormat.FormatStr = 'dd mmm aaaa'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[(<Date>)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 777.000000000000000000
          Top = 6.000000000000000000
          Width = 20.000000000000000000
          Height = 14.000000000000000000
          ShowHint = False
          Memo.UTF8W = (
            'de')
        end
        object TotalPages1: TfrxMemoView
          Left = 808.000000000000000000
          Top = 4.000000000000000000
          Width = 18.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[TotalPages#]')
        end
      end
    end
  end
  object informe_quien: TfrxReport
    Version = '4.9.32'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42249.622769826400000000
    ReportOptions.LastChange = 42249.626145844900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 328
    Top = 88
    Datasets = <
      item
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 52479
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.DropShadow = True
          HAlign = haCenter
          Memo.UTF8W = (
            'QUIEN SE LLEVA QUE ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 37.795300000000000000
        Top = 94.488250000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Top = 15.118120000000000000
          Width = 1046.929133860000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Top = 15.118120000000000000
          Width = 91.574213450000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FECHA')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 91.574213450000000000
          Top = 15.118120000000000000
          Width = 292.468899920000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            ' REFERENCIA')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 384.043113370000000000
          Top = 15.118120000000000000
          Width = 279.164619350000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '                   CONSIGNATARIO')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 663.207732720000000000
          Top = 15.118120000000000000
          Width = 76.266031280000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            ' BULTOS')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 735.694233990000000000
          Top = 15.118120000000000000
          Width = 94.084942750000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '   KILOS')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          Left = 803.322466740000000000
          Top = 15.118120000000000000
          Width = 239.827137120000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '                     PROVEEDOR')
          ParentFont = False
          Style = 'Header'
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 26.456710000000000000
        Top = 207.874150000000000000
        Width = 1046.929810000000000000
        Condition = 'rdb_comodin."REMITENTE"'
        object Memo9: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 52479
          DataField = 'REMITENTE'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[rdb_comodin."REMITENTE"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 241.889920000000000000
        Width = 1046.929810000000000000
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
        RowCount = 0
        object Memo10: TfrxMemoView
          Width = 91.574213453057900000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FECHA_ALB'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."FECHA_ALB"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          Left = 78.574213450000000000
          Width = 205.539709920000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'REFERENCIA'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."REFERENCIA"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          Left = 433.177003370000000000
          Width = 230.030729350000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CONSIGNA'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."CONSIGNA"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo13: TfrxMemoView
          Left = 663.207732720000000000
          Width = 61.147911280000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BULTOS'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[rdb_comodin."BULTOS"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo14: TfrxMemoView
          Left = 724.355643990000000000
          Width = 48.730582750000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'KILOS'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[rdb_comodin."KILOS"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo15: TfrxMemoView
          Left = 810.881526740000000000
          Width = 273.842907120000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'proveedor'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."proveedor"]')
          ParentFont = False
          Style = 'Data'
        end
        object rdb_comodinLOC_CONSIG: TfrxMemoView
          Left = 245.669450000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LOC_CONSIG'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Memo.UTF8W = (
            '[rdb_comodin."LOC_CONSIG"]')
        end
        object rdb_comodinCP_CONSIG: TfrxMemoView
          Left = 201.433210000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CP_CONSIG'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Memo.UTF8W = (
            '[rdb_comodin."CP_CONSIG"]')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Top = 313.700990000000000000
        Width = 1046.929810000000000000
      end
      object PageFooter1: TfrxPageFooter
        Height = 26.456710000000000000
        Top = 343.937230000000000000
        Width = 1046.929810000000000000
        object Memo16: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo17: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
      end
    end
  end
  object RDB_CARTAPORTE: TfrxDBDataset
    UserName = 'RDB_CARTAPORTE'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ALBARAN=ALBARAN'
      'REFERENCIA=REFERENCIA'
      'CLIENTE=CLIENTE'
      'NOMBRE=NOMBRE'
      'REMITENTE=REMITENTE'
      'EXPEDIDOR=EXPEDIDOR'
      'ONU=ONU'
      'CLASIFICACION=CLASIFICACION'
      'EMBALAJE=EMBALAJE'
      'ETIQUETA=ETIQUETA'
      'CATEGORIA=CATEGORIA'
      'valor_ex=valor_ex'
      'PESO=PESO'
      'imagen=imagen'
      'NOMBRE_ADR=NOMBRE_ADR'
      'dir_expedidor=dir_expedidor'
      'consigna=consigna'
      'cp_consig=cp_consig'
      'loc_consig=loc_consig'
      'dir_consig=dir_consig'
      'empresa_tta=empresa_tta'
      'matriculas=matriculas'
      'conductor=conductor'
      'DNI=DNI'
      'ORDENANTE=ORDENANTE'
      'LOC_EXPEDIDOR=LOC_EXPEDIDOR'
      'CP_EXPEDIDOR=CP_EXPEDIDOR'
      'TUNEL=TUNEL'
      'descripcion_bultos=descripcion_bultos')
    DataSet = QUERY_CARTAPORTE
    BCDToCurrency = False
    Left = 144
    Top = 24
  end
  object QUERY_CARTAPORTE: TMyQuery
    Connection = conesiones.conexion_general
    SQL.Strings = (
      'SELECT * FROM ALBARAN_ADR WHERE ALBARAN='#39'046046000332'#39)
    Left = 144
    Top = 96
  end
  object R_CARTAPORTE: TfrxReport
    Version = '4.9.32'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42256.498283518500000000
    ReportOptions.LastChange = 42256.812926724500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 312
    Top = 304
    Datasets = <
      item
        DataSet = RDB_CARTAPORTE
        DataSetName = 'RDB_CARTAPORTE'
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
      object Memo1: TfrxMemoView
        Left = 64.252010000000000000
        Top = 3.779530000000000000
        Width = 563.149970000000000000
        Height = 26.456710000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          'CARTA DE PORTE PARA MERCANCIAS PELIGROSAS  (ADR)')
        ParentFont = False
      end
      object Shape1: TfrxShapeView
        Left = 11.338590000000000000
        Top = 57.795300000000000000
        Width = 328.819110000000000000
        Height = 117.165430000000000000
        ShowHint = False
      end
      object Memo2: TfrxMemoView
        Left = 86.929190000000000000
        Top = 58.574830000000000000
        Width = 151.181200000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          'Expedidor/Cargador')
        ParentFont = False
      end
      object RDB_CARTAPORTEEXPEDIDOR: TfrxMemoView
        Left = 18.897650000000000000
        Top = 84.252010000000000000
        Width = 313.700990000000000000
        Height = 26.456710000000000000
        ShowHint = False
        DataField = 'EXPEDIDOR'
        DataSet = RDB_CARTAPORTE
        DataSetName = 'RDB_CARTAPORTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[RDB_CARTAPORTE."EXPEDIDOR"]')
        ParentFont = False
      end
      object RDB_CARTAPORTEdir_expedidor: TfrxMemoView
        Left = 15.118120000000000000
        Top = 114.488250000000000000
        Width = 313.700990000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataField = 'dir_expedidor'
        DataSet = RDB_CARTAPORTE
        DataSetName = 'RDB_CARTAPORTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[RDB_CARTAPORTE."dir_expedidor"]')
        ParentFont = False
      end
      object RDB_CARTAPORTECP_EXPEDIDOR: TfrxMemoView
        Left = 15.118120000000000000
        Top = 137.165430000000000000
        Width = 64.252010000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataField = 'CP_EXPEDIDOR'
        DataSet = RDB_CARTAPORTE
        DataSetName = 'RDB_CARTAPORTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[RDB_CARTAPORTE."CP_EXPEDIDOR"]')
        ParentFont = False
      end
      object RDB_CARTAPORTELOC_EXPEDIDOR: TfrxMemoView
        Left = 90.708720000000000000
        Top = 137.165430000000000000
        Width = 245.669450000000000000
        Height = 18.897650000000000000
        ShowHint = False
        DataField = 'LOC_EXPEDIDOR'
        DataSet = RDB_CARTAPORTE
        DataSetName = 'RDB_CARTAPORTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[RDB_CARTAPORTE."LOC_EXPEDIDOR"]')
        ParentFont = False
      end
      object Shape2: TfrxShapeView
        Left = 340.157700000000000000
        Top = 57.795300000000000000
        Width = 328.819110000000000000
        Height = 117.165430000000000000
        ShowHint = False
      end
      object Memo3: TfrxMemoView
        Left = 458.866420000000000000
        Top = 57.795300000000000000
        Width = 90.708720000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          'Ordenante')
        ParentFont = False
      end
      object RDB_CARTAPORTENOMBRE: TfrxMemoView
        Left = 374.173470000000000000
        Top = 80.472480000000000000
        Width = 245.669450000000000000
        Height = 79.370130000000000000
        ShowHint = False
        StretchMode = smActualHeight
        DataField = 'NOMBRE'
        DataSet = RDB_CARTAPORTE
        DataSetName = 'RDB_CARTAPORTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[RDB_CARTAPORTE."NOMBRE"]')
        ParentFont = False
      end
      object Shape3: TfrxShapeView
        Left = 0.559060000000000000
        Top = 205.078850000000000000
        Width = 718.110700000000000000
        Height = 30.236240000000000000
        ShowHint = False
      end
      object Memo4: TfrxMemoView
        Left = 11.338590000000000000
        Top = 208.858380000000000000
        Width = 64.252010000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          'ONU')
        ParentFont = False
      end
      object Line1: TfrxLineView
        Left = 51.252010000000000000
        Top = 205.078850000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
      object Memo5: TfrxMemoView
        Left = 67.590600000000000000
        Top = 208.858380000000000000
        Width = 136.063080000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          'DENOMINACION')
        ParentFont = False
      end
      object Line2: TfrxLineView
        Left = 230.110390000000000000
        Top = 205.078850000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
      object Memo6: TfrxMemoView
        Left = 229.669450000000000000
        Top = 208.858380000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          'ETIQUETA')
        ParentFont = False
      end
      object Line3: TfrxLineView
        Left = 279.700990000000000000
        Top = 205.078850000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
      object Memo7: TfrxMemoView
        Left = 274.260050000000000000
        Top = 205.858380000000000000
        Width = 64.252010000000000000
        Height = 26.456710000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'GRUPO '
          'EMBALAJE')
        ParentFont = False
      end
      object Line4: TfrxLineView
        Left = 334.071120000000000000
        Top = 205.078850000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
      object Memo8: TfrxMemoView
        Left = 326.850650000000000000
        Top = 206.858380000000000000
        Width = 56.692950000000000000
        Height = 26.456710000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'CODIGO'
          'TUNELES')
        ParentFont = False
        VAlign = vaCenter
      end
      object Line5: TfrxLineView
        Left = 381.102660000000000000
        Top = 205.078850000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
      object Memo9: TfrxMemoView
        Left = 380.661720000000000000
        Top = 205.858380000000000000
        Width = 68.031540000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'KILOS/LITROS'
          'NETOS')
        ParentFont = False
      end
      object Line6: TfrxLineView
        Left = 453.252320000000000000
        Top = 205.078850000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
      object Memo10: TfrxMemoView
        Left = 513.149970000000000000
        Top = 206.858380000000000000
        Width = 143.622140000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'NUMERO Y DESCRIPCION'
          'DE BULTOS')
        ParentFont = False
      end
      object Shape4: TfrxShapeView
        Top = 235.315090000000000000
        Width = 718.110700000000000000
        Height = 7.559060000000000000
        ShowHint = False
        Color = 16763904
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 10000.000000000000000000
        Width = 718.110700000000000000
        RowCount = 0
      end
      object Subreport1: TfrxSubreport
        Top = 242.874150000000000000
        Width = 718.110700000000000000
        Height = 86.929190000000000000
        ShowHint = False
        Page = R_CARTAPORTE.Page2
        PrintOnParent = True
      end
      object Memo11: TfrxMemoView
        Left = 450.220780000000000000
        Top = 207.196970000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'CAT. TTE')
        ParentFont = False
        VAlign = vaCenter
      end
      object Line10: TfrxLineView
        Left = 506.457020000000000000
        Top = 205.196970000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
      object Line11: TfrxLineView
        Left = 664.149970000000000000
        Top = 205.196970000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Frame.Typ = [ftLeft]
      end
      object Memo12: TfrxMemoView
        Left = 664.236550000000000000
        Top = 204.196970000000000000
        Width = 52.913420000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'VALOR EXC.'
          'PARCIAL 1.1.3.6')
        ParentFont = False
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
      Color = clInactiveBorder
      object MasterData2: TfrxMasterData
        Height = 55.472480000000000000
        Top = 27.236240000000000000
        Width = 718.110700000000000000
        DataSet = RDB_CARTAPORTE
        DataSetName = 'RDB_CARTAPORTE'
        RowCount = 0
        object Shape6: TfrxShapeView
          Top = 2.559060000000000000
          Width = 718.110700000000000000
          Height = 52.913420000000000000
          ShowHint = False
        end
        object RDB_CARTAPORTEONU: TfrxMemoView
          Left = 12.559060000000000000
          Top = 12.000000000000000000
          Width = 41.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ONU'
          DataSet = RDB_CARTAPORTE
          DataSetName = 'RDB_CARTAPORTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RDB_CARTAPORTE."ONU"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object RDB_CARTAPORTENOMBRE_ADR: TfrxMemoView
          Left = 63.708720000000000000
          Top = 0.559060000000000000
          Width = 154.960730000000000000
          Height = 45.354360000000000000
          ShowHint = False
          DataField = 'NOMBRE_ADR'
          DataSet = RDB_CARTAPORTE
          DataSetName = 'RDB_CARTAPORTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RDB_CARTAPORTE."NOMBRE_ADR"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object RDB_CARTAPORTEETIQUETA: TfrxMemoView
          Left = 231.771800000000000000
          Top = 11.338590000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ETIQUETA'
          DataSet = RDB_CARTAPORTE
          DataSetName = 'RDB_CARTAPORTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RDB_CARTAPORTE."ETIQUETA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object RDB_CARTAPORTEEMBALAJE: TfrxMemoView
          Left = 281.803340000000000000
          Top = 11.338590000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'EMBALAJE'
          DataSet = RDB_CARTAPORTE
          DataSetName = 'RDB_CARTAPORTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RDB_CARTAPORTE."EMBALAJE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object RDB_CARTAPORTEPESO: TfrxMemoView
          Left = 393.071120000000000000
          Top = 11.338590000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PESO'
          DataSet = RDB_CARTAPORTE
          DataSetName = 'RDB_CARTAPORTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RDB_CARTAPORTE."PESO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line7: TfrxLineView
          Left = 278.086890000000000000
          Top = 1.779530000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          Left = 51.692950000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          Left = 229.771800000000000000
          Top = 0.220470000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          Left = 332.819110000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          Left = 381.071120000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Left = 451.882190000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          Left = 506.016080000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object RDB_CARTAPORTECATEGORIA: TfrxMemoView
          Left = 467.543600000000000000
          Top = 11.338590000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CATEGORIA'
          DataSet = RDB_CARTAPORTE
          DataSetName = 'RDB_CARTAPORTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[RDB_CARTAPORTE."CATEGORIA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object RDB_CARTAPORTEvalor_ex: TfrxMemoView
          Left = 667.457020000000000000
          Top = 17.338590000000000000
          Width = 39.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'valor_ex'
          DataSet = RDB_CARTAPORTE
          DataSetName = 'RDB_CARTAPORTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[RDB_CARTAPORTE."valor_ex"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object RDB_CARTAPORTETUNEL: TfrxMemoView
          Left = 343.937230000000000000
          Top = 2.779530000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'TUNEL'
          DataSet = RDB_CARTAPORTE
          DataSetName = 'RDB_CARTAPORTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[RDB_CARTAPORTE."TUNEL"]')
          ParentFont = False
        end
        object RDB_CARTAPORTEdescripcion_bultos: TfrxMemoView
          Left = 518.929500000000000000
          Top = 5.779530000000000000
          Width = 143.622140000000000000
          Height = 45.354360000000000000
          ShowHint = False
          DataField = 'descripcion_bultos'
          DataSet = RDB_CARTAPORTE
          DataSetName = 'RDB_CARTAPORTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[RDB_CARTAPORTE."descripcion_bultos"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 3.000000000000000000
          Top = 12.763760000000000000
          Width = 18.000000000000000000
          Height = 20.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'UN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line16: TfrxLineView
          Left = 664.709030000000000000
          Top = 1.000000000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
      end
      object Footer1: TfrxFooter
        Height = 910.866730000000000000
        Top = 133.063080000000000000
        Width = 718.110700000000000000
        object Shape9: TfrxShapeView
          Left = 7.559060000000000000
          Top = 37.795300000000000000
          Width = 532.913730000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
        object Shape8: TfrxShapeView
          Left = 426.480520000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
        object Shape7: TfrxShapeView
          Left = 3.779530000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 113.385900000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<RDB_CARTAPORTE."PESO">,MasterData2)]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Total Kilos/litros')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 412.141930000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor para la exenci'#243'n parcial 1.1.3.6:')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 668.354670000000000000
          Width = 40.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<RDB_CARTAPORTE."valor_ex">,MasterData2)]')
          ParentFont = False
        end
        object Shape5: TfrxShapeView
          Top = 22.677180000000000000
          Width = 718.110700000000000000
          Height = 7.559060000000000000
          ShowHint = False
          Color = clAqua
        end
        object Memo15: TfrxMemoView
          Left = 7.559060000000000000
          Top = 37.795300000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#250'mero de Albar'#225'n/Documento de trasporte')
          ParentFont = False
        end
        object RDB_CARTAPORTEALBARAN: TfrxMemoView
          Left = 268.346630000000000000
          Top = 37.795300000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = RDB_CARTAPORTE
          DataSetName = 'RDB_CARTAPORTE'
          DisplayFormat.FormatStr = '###-###-######'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RDB_CARTAPORTE."ALBARAN"]')
          ParentFont = False
        end
        object RDB_CARTAPORTEREFERENCIA: TfrxMemoView
          Left = 407.968770000000000000
          Top = 37.795300000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'REFERENCIA'
          DataSet = RDB_CARTAPORTE
          DataSetName = 'RDB_CARTAPORTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RDB_CARTAPORTE."REFERENCIA"]')
          ParentFont = False
        end
        object Shape10: TfrxShapeView
          Left = 3.779530000000000000
          Top = 105.826840000000000000
          Width = 706.772110000000000000
          Height = 340.157700000000000000
          ShowHint = False
        end
        object Line17: TfrxLineView
          Left = 3.779530000000000000
          Top = 132.283550000000000000
          Width = 706.772110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo16: TfrxMemoView
          Left = 172.535560000000000000
          Top = 109.606370000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            'EL EXPEDIDOR / CARGADOR CERTIFICA:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 41.574830000000000000
          Top = 139.842610000000000000
          Width = 661.417750000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              'Que esta mercanc'#237'a se admite al transporte por carretera siendo ' +
              'su estado, etiquetado, acondicionamiento, carga y documentaci'#243'n,' +
              ' conforme a las disposiciones del Acuerdo Europeo sobre el trans' +
              'porte de Mercanc'#237'as Peligrosas por carretera (ADR).')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 15.118120000000000000
          Top = 151.181200000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8W = (
            #9658)
          ParentFont = False
        end
        object Line18: TfrxLineView
          Left = 3.779530000000000000
          Top = 204.094620000000000000
          Width = 706.772110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo19: TfrxMemoView
          Left = 45.354360000000000000
          Top = 234.330860000000000000
          Width = 650.079160000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #9'El veh'#237'culo cumple las condiciones que establece el Acuerdo Eur' +
              'opeo sobre el transporte de Mercanc'#237'as Peligrosas por carretera ' +
              ' (ADR)')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 143.622140000000000000
          Top = 207.874150000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Memo.UTF8W = (
            'EL ABAJO FIRMANTE (Transportista) DECLARA QUE:')
          ParentFont = False
        end
        object Line19: TfrxLineView
          Left = 3.779530000000000000
          Top = 226.771800000000000000
          Width = 706.772110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo21: TfrxMemoView
          Left = 45.354360000000000000
          Top = 279.685220000000000000
          Width = 650.079160000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #9'Que la carga de la mercanc'#237'as en el veh'#237'culo se ha realizado co' +
              'rrectamente seg'#250'n el citado ADR')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 45.354360000000000000
          Top = 309.921460000000000000
          Width = 650.079160000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #9'Que obra en su poder la Hoja de Instrucciones que se indica en ' +
              'el ADR')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 15.118120000000000000
          Top = 241.889920000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8W = (
            #9658)
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 15.118120000000000000
          Top = 279.685220000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8W = (
            #9658)
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 15.118120000000000000
          Top = 309.921460000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8W = (
            #9658)
          ParentFont = False
        end
        object Line20: TfrxLineView
          Left = 3.779530000000000000
          Top = 343.937230000000000000
          Width = 706.772110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.TopLine.Width = 3.000000000000000000
        end
        object Line21: TfrxLineView
          Left = 3.779530000000000000
          Top = 372.393940000000000000
          Width = 706.772110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo26: TfrxMemoView
          Left = 272.126160000000000000
          Top = 347.937230000000000000
          Width = 151.181200000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'DESTINATARIO')
          ParentFont = False
        end
        object Line22: TfrxLineView
          Left = 3.779530000000000000
          Top = 395.071120000000000000
          Width = 706.772110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line23: TfrxLineView
          Left = 3.779530000000000000
          Top = 419.527830000000000000
          Width = 706.772110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line24: TfrxLineView
          Left = 4.559060000000000000
          Top = 445.984540000000000000
          Width = 706.772110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo27: TfrxMemoView
          Left = 11.338590000000000000
          Top = 374.953000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Raz'#243'n Social')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 11.338590000000000000
          Top = 397.630180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Direcci'#243'n')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 11.338590000000000000
          Top = 424.086890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Localidad')
          ParentFont = False
        end
        object RDB_CARTAPORTEconsigna: TfrxMemoView
          Left = 181.417440000000000000
          Top = 372.173470000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'consigna'
          DataSet = RDB_CARTAPORTE
          DataSetName = 'RDB_CARTAPORTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[RDB_CARTAPORTE."consigna"]')
          ParentFont = False
        end
        object RDB_CARTAPORTEloc_consig: TfrxMemoView
          Left = 181.417440000000000000
          Top = 420.307360000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'loc_consig'
          DataSet = RDB_CARTAPORTE
          DataSetName = 'RDB_CARTAPORTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[RDB_CARTAPORTE."loc_consig"]')
          ParentFont = False
        end
        object RDB_CARTAPORTEdir_consig: TfrxMemoView
          Left = 181.417440000000000000
          Top = 397.630180000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'dir_consig'
          DataSet = RDB_CARTAPORTE
          DataSetName = 'RDB_CARTAPORTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[RDB_CARTAPORTE."dir_consig"]')
          ParentFont = False
        end
        object Shape11: TfrxShapeView
          Left = 3.779530000000000000
          Top = 458.102660000000000000
          Width = 480.000310000000000000
          Height = 105.826840000000000000
          ShowHint = False
        end
        object Line25: TfrxLineView
          Left = 279.685220000000000000
          Top = 458.102660000000000000
          Height = 105.826840000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo30: TfrxMemoView
          Left = 7.559060000000000000
          Top = 458.102660000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'EMPRESA TRANSPORTISTA')
          ParentFont = False
        end
        object Line26: TfrxLineView
          Left = 5.000000000000000000
          Top = 477.000310000000000000
          Width = 480.000310000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line27: TfrxLineView
          Left = 3.779530000000000000
          Top = 495.897960000000000000
          Width = 275.905690000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line28: TfrxLineView
          Left = 3.779530000000000000
          Top = 518.575140000000000000
          Width = 275.905690000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line29: TfrxLineView
          Left = 3.779530000000000000
          Top = 541.252320000000000000
          Width = 275.905690000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo31: TfrxMemoView
          Left = 7.559060000000000000
          Top = 477.000310000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nombre')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 7.559060000000000000
          Top = 496.897960000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Matriculas')
          ParentFont = False
        end
        object RDB_CARTAPORTEmatriculas: TfrxMemoView
          Left = 83.149660000000000000
          Top = 498.677490000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'matriculas'
          DataSet = RDB_CARTAPORTE
          DataSetName = 'RDB_CARTAPORTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[RDB_CARTAPORTE."matriculas"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 7.559060000000000000
          Top = 518.575140000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Conductor')
          ParentFont = False
        end
        object RDB_CARTAPORTEconductor1: TfrxMemoView
          Left = 83.149660000000000000
          Top = 518.575140000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'conductor'
          DataSet = RDB_CARTAPORTE
          DataSetName = 'RDB_CARTAPORTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[RDB_CARTAPORTE."conductor"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 7.559060000000000000
          Top = 541.252320000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'D.N.I.')
          ParentFont = False
        end
        object RDB_CARTAPORTEDNI: TfrxMemoView
          Left = 83.149660000000000000
          Top = 541.252320000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DNI'
          DataSet = RDB_CARTAPORTE
          DataSetName = 'RDB_CARTAPORTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[RDB_CARTAPORTE."DNI"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 313.700990000000000000
          Top = 458.102660000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'FIRMA Y FECHA')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 389.291590000000000000
          Top = 548.811380000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object Shape12: TfrxShapeView
          Left = 487.559370000000000000
          Top = 458.102660000000000000
          Width = 222.992270000000000000
          Height = 105.826840000000000000
          ShowHint = False
        end
        object Line30: TfrxLineView
          Left = 489.000310000000000000
          Top = 477.000310000000000000
          Width = 219.212740000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo36: TfrxMemoView
          Left = 506.000000000000000000
          Top = 456.936920000000000000
          Width = 189.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'FIRMA Y SELLO DEL EXPEDIDOR')
          ParentFont = False
        end
        object RDB_CARTAPORTEempresa_tta: TfrxMemoView
          Left = 86.000000000000000000
          Top = 476.936920000000000000
          Width = 185.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'empresa_tta'
          DataSet = RDB_CARTAPORTE
          DataSetName = 'RDB_CARTAPORTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[RDB_CARTAPORTE."empresa_tta"]')
          ParentFont = False
        end
      end
    end
  end
  object informe_almacenaje: TfrxReport
    Version = '4.9.32'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42266.041468541700000000
    ReportOptions.LastChange = 42272.403788553200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo2OnBeforePrint(Sender: TfrxComponent);'
      '                                                               '
      'begin'
      '    '
      '                                '
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   '
      'end;'
      ''
      'procedure Memo25OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                                                 '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 312
    Top = 368
    Datasets = <
      item
        DataSet = rdb_almacenaje
        DataSetName = 'almacenaje'
      end
      item
        DataSet = rd_almacenajestock
        DataSetName = 'rd_almacenajestock'
      end>
    Variables = <
      item
        Name = ' MIS VARIABLES'
        Value = ''
      end
      item
        Name = 'PRECIOMAN'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.001250000000000000
      RightMargin = 10.001250000000000000
      TopMargin = 10.001250000000000000
      BottomMargin = 10.001250000000000000
      Frame.DropShadow = True
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Height = 28.677180000000000000
        Top = 18.897650000000000000
        Width = 718.101251175000000000
        object Memo2: TfrxMemoView
          Left = 22.000000000000000000
          Top = 3.102350000000000000
          Width = 208.000000000000000000
          Height = 22.000000000000000000
          OnBeforePrint = 'Memo2OnBeforePrint'
          ShowHint = False
          Color = 10218495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'RESUMEN ALMACENAJE ')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 546.000000000000000000
          Top = 4.000000000000000000
          Width = 154.000000000000000000
          Height = 22.000000000000000000
          ShowHint = False
          Color = 10027007
          DisplayFormat.FormatStr = 'MMMM'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[(<almacenaje."fecha_alb">)+30]')
          ParentFont = False
          VAlign = vaCenter
        end
        object almacenajenombre: TfrxMemoView
          Left = 236.000000000000000000
          Top = 4.000000000000000000
          Width = 314.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'nombre'
          DataSet = rdb_almacenaje
          DataSetName = 'almacenaje'
          Memo.UTF8W = (
            '[almacenaje."nombre"]')
        end
        object Memo41: TfrxMemoView
          Left = 626.000000000000000000
          Top = 5.000000000000000000
          Width = 58.000000000000000000
          Height = 20.000000000000000000
          ShowHint = False
          Color = 10027007
          DisplayFormat.FormatStr = 'YYYY'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '/ [(<almacenaje."fecha_alb">)+30]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.000000000000000000
        Top = 218.212740000000000000
        Width = 718.101251175000000000
        DataSet = rdb_almacenaje
        DataSetName = 'almacenaje'
        RowCount = 0
        Stretched = True
        object almacenajereferencia: TfrxMemoView
          Left = 13.000000000000000000
          Top = 0.850340000000000000
          Width = 316.803030000000000000
          Height = 16.000000000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Color = clBtnFace
          DataSet = rdb_almacenaje
          DataSetName = 'almacenaje'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold, fsItalic]
          Highlight.Color = 4227327
          Highlight.Condition = '<almacenaje."ENTRADA">='#39'S'#39
          Memo.UTF8W = (
            '[almacenaje."referencia"]')
          ParentFont = False
        end
        object almacenajePRECIO_ENTRADA: TfrxMemoView
          Left = 454.338590000000000000
          Top = 0.850340000000000000
          Width = 93.795300000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataSet = rdb_almacenaje
          DataSetName = 'almacenaje'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold, fsItalic]
          Highlight.Condition = '<almacenaje."ENTRADA">='#39'S'#39
          Memo.UTF8W = (
            '[(<almacenaje."PRECIO_ENTRADA">)]')
          ParentFont = False
        end
        object almacenajenum_pcking: TfrxMemoView
          Left = 550.456710000000000000
          Top = 0.850340000000000000
          Width = 64.881880000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'num_pcking'
          DataSet = rdb_almacenaje
          DataSetName = 'almacenaje'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[almacenaje."num_pcking"]')
          ParentFont = False
        end
        object almacenajePALTET_PICKING: TfrxMemoView
          Left = 616.795300000000000000
          Top = 0.850340000000000000
          Width = 64.881880000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataField = 'PALTET_PICKING'
          DataSet = rdb_almacenaje
          DataSetName = 'almacenaje'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[almacenaje."PALTET_PICKING"]')
          ParentFont = False
        end
        object almacenajeENTRADA: TfrxMemoView
          Left = 334.204700000000000000
          Top = 0.850340000000000000
          Width = 50.236240000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataSet = rdb_almacenaje
          DataSetName = 'almacenaje'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Color = 33023
          Highlight.Condition = '<almacenaje."ENTRADA">='#39'S'#39
          Memo.UTF8W = (
            '[almacenaje."ENTRADA"]')
          ParentFont = False
        end
        object almacenajenum_palet: TfrxMemoView
          Left = 385.834570000000000000
          Top = 0.850340000000000000
          Width = 66.236240000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataSet = rdb_almacenaje
          DataSetName = 'almacenaje'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[almacenaje."num_palet"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 46.677180000000000000
        Top = 151.181200000000000000
        Width = 718.101251175000000000
        Condition = 'almacenaje."FECHA_ALB"'
        KeepTogether = True
        object Memo3: TfrxMemoView
          Top = 3.551020000000000000
          Width = 720.000000000000000000
          Height = 28.000000000000000000
          ShowHint = False
          Color = 52376
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '                           REFERENCIA')
          ParentFont = False
        end
        object almacenajefecha_alb: TfrxMemoView
          Top = 30.551020000000000000
          Width = 158.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Color = 4643583
          DataSet = rdb_almacenaje
          DataSetName = 'almacenaje'
          DisplayFormat.FormatStr = 'dd mmm aaaa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[almacenaje."fecha_alb"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 345.472480000000000000
          Top = 4.551020000000000000
          Width = 36.000000000000000000
          Height = 14.000000000000000000
          ShowHint = False
          Color = 52376
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Entrada')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 398.472480000000000000
          Top = 3.551020000000000000
          Width = 54.000000000000000000
          Height = 26.000000000000000000
          ShowHint = False
          Color = 52376
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Movimiento'
            'palets')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 469.252010000000000000
          Top = 4.000000000000000000
          Width = 70.000000000000000000
          Height = 26.000000000000000000
          ShowHint = False
          Color = 52376
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Precio'
            ' Manipulaci'#243'n')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 533.354360000000000000
          Top = 4.000000000000000000
          Width = 70.000000000000000000
          Height = 26.000000000000000000
          ShowHint = False
          Color = 52376
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cajas'
            'Picking')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 601.456710000000000000
          Top = 4.000000000000000000
          Width = 70.000000000000000000
          Height = 26.000000000000000000
          ShowHint = False
          Color = 52376
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Palets'
            'Picking')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 718.101251175000000000
        object Memo6: TfrxMemoView
          Left = 48.000000000000000000
          Top = 4.551020000000000000
          Width = 342.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Color = 16763904
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'STOCK AL FINAL DEL DIA              PALETS')
          ParentFont = False
        end
        object almacenajepaletsactual: TfrxMemoView
          Left = 216.000000000000000000
          Top = 4.551020000000000000
          Width = 42.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          DataSet = rdb_almacenaje
          DataSetName = 'almacenaje'
          Memo.UTF8W = (
            '[almacenaje."paletsactual"]')
        end
        object SysMemo1: TfrxSysMemoView
          Left = 671.000000000000000000
          Top = 2.551020000000000000
          Width = 34.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[SUM(<almacenaje."PALTET_PICKING">,MasterData1)]')
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 20.000000000000000000
        Top = 71.811070000000000000
        Width = 718.101251175000000000
      end
      object Footer2: TfrxFooter
        Height = 238.000000000000000000
        Top = 309.921460000000000000
        Width = 718.101251175000000000
        object Memo1: TfrxMemoView
          Left = 10.000000000000000000
          Top = 24.000000000000000000
          Width = 572.000000000000000000
          Height = 22.000000000000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Sumas Parciales')
          ParentFont = False
          VAlign = vaCenter
        end
        object rd_almacenajestocksumaprecio_caja: TfrxMemoView
          Left = 176.000000000000000000
          Top = 58.000000000000000000
          Width = 80.000000000000000000
          Height = 16.000000000000000000
          Visible = False
          ShowHint = False
          DataSet = rd_almacenajestock
          DataSetName = 'rd_almacenajestock'
          Memo.UTF8W = (
            '[rd_almacenajestock."sumaprecio_caja"]')
        end
        object Memo8: TfrxMemoView
          Left = 70.000000000000000000
          Top = 56.000000000000000000
          Width = 80.000000000000000000
          Height = 16.000000000000000000
          Visible = False
          ShowHint = False
          Memo.UTF8W = (
            '[(<rd_almacenajestock."sumanum_pcking">)]')
        end
        object Memo9: TfrxMemoView
          Left = 270.000000000000000000
          Top = 58.000000000000000000
          Width = 294.000000000000000000
          Height = 16.000000000000000000
          Visible = False
          ShowHint = False
          Memo.UTF8W = (
            
              '[(<rd_almacenajestock."sumanum_pcking"> + <rd_almacenajestock."s' +
              'umaprecio_caja">)]')
        end
        object Memo14: TfrxMemoView
          Left = 276.000000000000000000
          Top = 26.000000000000000000
          Width = 80.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(<almacenaje."PRECIO_ENTRADA">,MasterData1,2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 394.000000000000000000
          Top = 27.000000000000000000
          Width = 80.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<almacenaje."num_pcking">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 494.000000000000000000
          Top = 26.000000000000000000
          Width = 80.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<almacenaje."PALTET_PICKING">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 6.000000000000000000
          Top = 117.000000000000000000
          Width = 434.000000000000000000
          Height = 22.000000000000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'TOTAL ALMACENAJE')
          ParentFont = False
          VAlign = vaCenter
        end
        object SUMADIA: TfrxMemoView
          Left = 168.000000000000000000
          Top = 117.000000000000000000
          Width = 80.000000000000000000
          Height = 22.000000000000000000
          ShowHint = False
          DataSet = rd_almacenajestock
          DataSetName = 'rd_almacenajestock'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[rd_almacenajestock."sumastocks_mes"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 249.000000000000000000
          Top = 117.000000000000000000
          Width = 20.000000000000000000
          Height = 22.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haRight
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 647.953000000000000000
          Top = 117.000000000000000000
          Width = 32.000000000000000000
          Height = 22.000000000000000000
          Visible = False
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '0,24')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 302.000000000000000000
          Top = 117.000000000000000000
          Width = 20.000000000000000000
          Height = 22.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haRight
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 492.519790000000000000
          Top = 126.559060000000000000
          Width = 80.000000000000000000
          Height = 18.000000000000000000
          Visible = False
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[(<rd_almacenajestock."sumastocks_mes"> * 0.24)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 6.000000000000000000
          Top = 139.000000000000000000
          Width = 434.000000000000000000
          Height = 22.000000000000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'MANIPULACION')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 330.000000000000000000
          Top = 140.000000000000000000
          Width = 80.000000000000000000
          Height = 20.000000000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(<almacenaje."PRECIO_ENTRADA">,MasterData1,2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 302.000000000000000000
          Top = 140.000000000000000000
          Width = 20.000000000000000000
          Height = 22.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haRight
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 6.000000000000000000
          Top = 160.000000000000000000
          Width = 434.000000000000000000
          Height = 22.000000000000000000
          OnBeforePrint = 'Memo25OnBeforePrint'
          ShowHint = False
          Color = 10027007
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'CAJAS PICKING')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 168.000000000000000000
          Top = 160.000000000000000000
          Width = 80.000000000000000000
          Height = 22.000000000000000000
          ShowHint = False
          DataSet = rd_almacenajestock
          DataSetName = 'rd_almacenajestock'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[(<rd_almacenajestock."sumanum_pcking">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 250.000000000000000000
          Top = 160.000000000000000000
          Width = 20.000000000000000000
          Height = 22.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haRight
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 647.953000000000000000
          Top = 156.220470000000000000
          Width = 32.000000000000000000
          Height = 22.000000000000000000
          Visible = False
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '0,30')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 302.000000000000000000
          Top = 160.000000000000000000
          Width = 20.000000000000000000
          Height = 22.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haRight
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 492.519790000000000000
          Top = 165.779530000000000000
          Width = 80.000000000000000000
          Height = 18.000000000000000000
          Visible = False
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[(<rd_almacenajestock."sumanum_pcking"> * 0.30)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 6.000000000000000000
          Top = 182.000000000000000000
          Width = 434.000000000000000000
          Height = 22.000000000000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'PALETS PICKING')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 168.000000000000000000
          Top = 182.000000000000000000
          Width = 80.000000000000000000
          Height = 22.000000000000000000
          ShowHint = False
          DataSet = rd_almacenajestock
          DataSetName = 'rd_almacenajestock'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<almacenaje."PALTET_PICKING">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 250.000000000000000000
          Top = 181.000000000000000000
          Width = 20.000000000000000000
          Height = 22.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haRight
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 647.953000000000000000
          Top = 197.118120000000000000
          Width = 32.000000000000000000
          Height = 22.000000000000000000
          Visible = False
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '9,00')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 302.000000000000000000
          Top = 182.000000000000000000
          Width = 20.000000000000000000
          Height = 22.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haRight
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 492.519790000000000000
          Top = 191.559060000000000000
          Width = 80.000000000000000000
          Height = 18.000000000000000000
          Visible = False
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[(<SUM(<almacenaje."PALTET_PICKING">,MasterData1)> * 9)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 6.000000000000000000
          Top = 204.000000000000000000
          Width = 434.000000000000000000
          Height = 22.000000000000000000
          ShowHint = False
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'TOTAL FACTURA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 318.000000000000000000
          Top = 206.000000000000000000
          Width = 118.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[(<rd_almacenajestock."sumastocks_mes"> * <campo1>) +(<rd_almace' +
              'najestock."sumanum_pcking"> * 0.30)  + (sum(<almacenaje."PRECIO_' +
              'ENTRADA">,MasterData1,2))+ ((<SUM(<almacenaje."PALTET_PICKING">,' +
              'MasterData1)> * 9))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 6.000000000000000000
          Top = 86.000000000000000000
          Width = 162.000000000000000000
          Height = 30.000000000000000000
          ShowHint = False
          Color = 10027007
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'RESUMEN MES')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 273.346630000000000000
          Top = 118.944960000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%g'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[campo1]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 328.819110000000000000
          Top = 120.944960000000000000
          Width = 80.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[(<rd_almacenajestock."sumastocks_mes"> * <CAMPO1>)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 273.346630000000000000
          Top = 161.519790000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%g'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[campo4]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 328.819110000000000000
          Top = 162.519790000000000000
          Width = 80.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[(<rd_almacenajestock."sumanum_pcking"> *<CAMPO4>)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 273.346630000000000000
          Top = 184.196970000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%g'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[campo3]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 328.819110000000000000
          Top = 185.196970000000000000
          Width = 80.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[(<SUM(<almacenaje."PALTET_PICKING">,MasterData1)> * <CAMPO3>)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 24.000000000000000000
        Top = 608.504330000000000000
        Width = 718.101251175000000000
        object Page: TfrxMemoView
          Left = 570.000000000000000000
          Top = 2.000000000000000000
          Width = 24.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Page] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object TotalPages: TfrxMemoView
          Left = 616.000000000000000000
          Top = 1.000000000000000000
          Width = 26.000000000000000000
          Height = 18.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 516.000000000000000000
          Top = 2.000000000000000000
          Width = 50.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 596.000000000000000000
          Top = 2.000000000000000000
          Width = 20.000000000000000000
          Height = 16.000000000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'de')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object rdb_almacenaje: TfrxDBDataset
    UserName = 'almacenaje'
    CloseDataSource = False
    FieldAliases.Strings = (
      'referencia=referencia'
      'cliente=cliente'
      'nombre=nombre'
      'fecha_alb=fecha_alb'
      'num_palet=num_palet'
      'num_pcking=num_pcking'
      'PALTET_PICKING=PALTET_PICKING'
      'ENTRADA=ENTRADA'
      'PALET_MANIP=PALET_MANIP'
      'PRECIO_ENTRADA=PRECIO_ENTRADA'
      'PRECIO_CAJA=PRECIO_CAJA'
      'PRECIO_PALET_PICKIN=PRECIO_PALET_PICKIN'
      'paletsdeldia=paletsdeldia'
      'paletsanterior=paletsanterior'
      'paletsactual=paletsactual'
      'fecha_alb_1=fecha_alb_1'
      'cliente_1=cliente_1')
    DataSet = query_almacenaje
    BCDToCurrency = False
    Left = 40
    Top = 144
  end
  object query_almacenaje: TMyQuery
    SQLDelete.Strings = (
      'DELETE FROM albaran'
      'WHERE'
      '  CLIENTE = :Old_CLIENTE')
    SQLUpdate.Strings = (
      'UPDATE albaran'
      'SET'
      
        '  ALBARAN = :ALBARAN, REFERENCIA = :REFERENCIA, CLIENTE = :CLIEN' +
        'TE, REMITENTE = :REMITENTE, FECHA_ALB = :FECHA_ALB'
      'WHERE'
      '  CLIENTE = :Old_CLIENTE')
    SQLRefresh.Strings = (
      
        'SELECT ALBARAN, REFERENCIA, CLIENTE, REMITENTE, FECHA_ALB FROM a' +
        'lbaran'
      'WHERE'
      '  CLIENTE = :CLIENTE')
    SQLLock.Strings = (
      'SELECT * FROM albaran'
      'WHERE'
      '  CLIENTE = :Old_CLIENTE'
      'FOR UPDATE')
    Connection = conesiones.conexion_general
    SQL.Strings = (
      'SELECT'
      'almacenaje.referencia,'
      'almacenaje.cliente,'
      'almacenaje.nombre,'
      'almacenaje.fecha_alb,'
      'almacenaje.num_palet,'
      'almacenaje.num_pcking,'
      'almacenaje.PALTET_PICKING,'
      'almacenaje.ENTRADA,'
      'almacenaje.PALET_MANIP,'
      'almacenaje.PRECIO_ENTRADA,'
      'almacenaje.PRECIO_CAJA,'
      'almacenaje.PRECIO_PALET_PICKIN,'
      'almacenaje_stock.paletsdeldia,'
      'almacenaje_stock.paletsanterior,'
      'almacenaje_stock.paletsactual,'
      'almacenaje_stock.fecha_alb,'
      'almacenaje_stock.cliente'
      'FROM'
      'almacenaje'
      
        'INNER JOIN almacenaje_stock ON almacenaje_stock.fecha_alb = alma' +
        'cenaje.fecha_alb'
      'ORDER BY'
      'almacenaje.fecha_alb ASC,'
      'almacenaje.id ASC')
    Active = True
    Left = 448
    Top = 24
  end
  object query_almacenajestock: TMyQuery
    SQLDelete.Strings = (
      'DELETE FROM albaran'
      'WHERE'
      '  CLIENTE = :Old_CLIENTE')
    SQLUpdate.Strings = (
      'UPDATE albaran'
      'SET'
      
        '  ALBARAN = :ALBARAN, REFERENCIA = :REFERENCIA, CLIENTE = :CLIEN' +
        'TE, REMITENTE = :REMITENTE, FECHA_ALB = :FECHA_ALB'
      'WHERE'
      '  CLIENTE = :Old_CLIENTE')
    SQLRefresh.Strings = (
      
        'SELECT ALBARAN, REFERENCIA, CLIENTE, REMITENTE, FECHA_ALB FROM a' +
        'lbaran'
      'WHERE'
      '  CLIENTE = :CLIENTE')
    SQLLock.Strings = (
      'SELECT * FROM albaran'
      'WHERE'
      '  CLIENTE = :Old_CLIENTE'
      'FOR UPDATE')
    Connection = conesiones.conexion_general
    SQL.Strings = (
      'SELECT'
      '*'
      'from almacenaje_precios')
    Active = True
    Left = 136
    Top = 160
  end
  object rd_almacenajestock: TfrxDBDataset
    UserName = 'rd_almacenajestock'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'sumanum_pcking=sumanum_pcking'
      'sumanum_palet_picking=sumanum_palet_picking'
      'sumaprecio_entrada=sumaprecio_entrada'
      'sumaprecio_caja=sumaprecio_caja'
      'sumaprecio_palet_picking=sumaprecio_palet_picking'
      'sumastocks_mes=sumastocks_mes')
    DataSet = query_almacenajestock
    BCDToCurrency = False
    Left = 576
    Top = 24
  end
  object frxReport2: TfrxReport
    Version = '4.9.32'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42289.833840439800000000
    ReportOptions.LastChange = 42289.833840439800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 952
    Top = 328
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'rdb_comodin, cobasa'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 16053492
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
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
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'listado de txt desde cobasa')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Width = 718.110236220472000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Left = 4.000000000000000000
          Top = 1.333333330000000000
          Width = 86.431130390000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FECHA_ALB')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 86.431130391286000000
          Width = 152.762296142336000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ALBARAN')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 239.193426533622000000
          Width = 173.733740976792000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REFERENCIA')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 412.927167510414000000
          Width = 159.435028589663000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CONSIGNA')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          Left = 655.362196100077000000
          Width = 62.748040120395700000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'pagamos')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 566.362196100000000000
          Width = 83.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'COBRAMOS')
          ParentFont = False
          Style = 'Header'
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        Condition = 'rdb_comodin, cobasa."proveedor"'
        object Memo9: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16053492
          DataField = 'proveedor'
          DataSet = frxDBDataset1
          DataSetName = 'rdb_comodin, cobasa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[rdb_comodin, cobasa."proveedor"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'rdb_comodin, cobasa'
        RowCount = 0
        object Memo10: TfrxMemoView
          Left = 1.333333330000000000
          Width = 86.431130390000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FECHA_ALB'
          DataSet = frxDBDataset1
          DataSetName = 'rdb_comodin, cobasa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin, cobasa."FECHA_ALB"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 87.097797060000000000
          Width = 77.428962810000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ALBARAN'
          DataSet = frxDBDataset1
          DataSetName = 'rdb_comodin, cobasa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin, cobasa."ALBARAN"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 171.193426530000000000
          Width = 105.733740980000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'REFERENCIA'
          DataSet = frxDBDataset1
          DataSetName = 'rdb_comodin, cobasa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin, cobasa."REFERENCIA"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 283.593834180000000000
          Width = 278.768361920000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CONSIGNA'
          DataSet = frxDBDataset1
          DataSetName = 'rdb_comodin, cobasa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin, cobasa."CONSIGNA"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 655.362196100077000000
          Width = 62.748040120395700000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'pagamos'
          DataSet = frxDBDataset1
          DataSetName = 'rdb_comodin, cobasa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin, cobasa."pagamos"]')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 564.666666670000000000
          Top = 0.131106670000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[StrToFloat((<rdb_comodin, cobasa."COBRAMOS">))]')
        end
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          Left = 297.333333330000000000
          Top = 0.556276670000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'xzcccczx')
        end
        object SysMemo2: TfrxSysMemoView
          Left = 456.666666660000000000
          Top = 0.556276670000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[SUM(<rdb_comodin, cobasa."COBRAMOS">)]')
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'rdb_comodin, cobasa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ALBARAN=ALBARAN'
      'FECHA_ALB=FECHA_ALB'
      'CONSIGNA=CONSIGNA'
      'REFERENCIA=REFERENCIA'
      'LOC_CONSIG=LOC_CONSIG'
      'BULTOS=BULTOS'
      'KILOS=KILOS'
      'COBRAMOS=COBRAMOS'
      'pagamos=pagamos'
      'CLIENTE=CLIENTE'
      'REMITENTE=REMITENTE'
      'NOMBRE=NOMBRE'
      'proveedor=proveedor'
      'F_CONCERT=F_CONCERT'
      'CP_CONSIG=CP_CONSIG')
    DataSet = MyQuery1
    BCDToCurrency = False
    Left = 40
    Top = 216
  end
  object MyQuery1: TMyQuery
    SQLDelete.Strings = (
      'DELETE FROM albaran'
      'WHERE'
      '  CLIENTE = :Old_CLIENTE')
    SQLUpdate.Strings = (
      'UPDATE albaran'
      'SET'
      
        '  ALBARAN = :ALBARAN, REFERENCIA = :REFERENCIA, CLIENTE = :CLIEN' +
        'TE, REMITENTE = :REMITENTE, FECHA_ALB = :FECHA_ALB'
      'WHERE'
      '  CLIENTE = :Old_CLIENTE')
    SQLRefresh.Strings = (
      
        'SELECT ALBARAN, REFERENCIA, CLIENTE, REMITENTE, FECHA_ALB FROM a' +
        'lbaran'
      'WHERE'
      '  CLIENTE = :CLIENTE')
    SQLLock.Strings = (
      'SELECT * FROM albaran'
      'WHERE'
      '  CLIENTE = :Old_CLIENTE'
      'FOR UPDATE')
    Connection = conesiones.conexion_general
    SQL.Strings = (
      'SELECT'
      'albaran.ALBARAN,'
      'ALBARAN.FECHA_ALB,'
      'ALBARAN.CONSIGNA,'
      'albaran.REFERENCIA,'
      'ALBARAN.LOC_CONSIG,'
      'ALBARAN.BULTOS,'
      'ALBARAN.KILOS,'
      'ALBARAN.COBRAMOS,'
      'albaran.pagamos,'
      'albaran.CLIENTE,'
      'albaran.REMITENTE,'
      'clientes.NOMBRE,'
      'albaran.proveedor,'
      'ALBARAN.F_CONCERT,'
      'ALBARAN.CP_CONSIG'
      'FROM'
      'albaran'
      'INNER JOIN clientes ON albaran.CLIENTE = clientes.CLIENTE'
      'where '
      
        ' proveedor like '#39'%txt%'#39' and (fecha_alb between '#39'2015-08-01'#39' and ' +
        #39'2015-08-31'#39') '
      'order by proveedor, fecha_alb')
    Left = 132
    Top = 280
  end
  object proveedores: TfrxReport
    Version = '4.9.32'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42289.841431608800000000
    ReportOptions.LastChange = 42289.841431608800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 952
    Top = 384
    Datasets = <>
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
    end
  end
  object informe_cargas: TfrxReport
    Version = '4.9.32'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42293.367753171300000000
    ReportOptions.LastChange = 42293.367753171300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 312
    Top = 432
    Datasets = <
      item
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Color = clWhite
      Frame.DropShadow = True
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      Frame.Width = 2.000000000000000000
      object Shape2: TfrxShapeView
        Left = 16.000000000000000000
        Top = 216.000000000000000000
        Width = 524.000000000000000000
        Height = 24.000000000000000000
        ShowHint = False
        Color = clYellow
      end
      object Picture1: TfrxPictureView
        Left = 40.000000000000000000
        Top = 8.000000000000000000
        Width = 140.000000000000000000
        Height = 60.000000000000000000
        ShowHint = False
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Picture.Data = {
          0A544A504547496D616765BD0C0000FFD8FFE000104A46494600010101006000
          600000FFDB0043000A07070807060A0808080B0A0A0B0E18100E0D0D0E1D1516
          1118231F2524221F2221262B372F26293429212230413134393B3E3E3E252E44
          49433C48373D3E3BFFDB0043010A0B0B0E0D0E1C10101C3B2822283B3B3B3B3B
          3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B
          3B3B3B3B3B3B3B3B3B3B3B3B3BFFC0001108005D00CC03012200021101031101
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
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F66A
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
          28A2800A28A2800A28A2800A28A2800A28A2801B4B589E20D667D2160F263493
          CDDD9DF9E318F4FAD62FFC2697DFF3EF07EBFE35C3571F4694DC24F544B9A4EC
          CED68AE4ED7C684B85BBB60AA7F8E239C7E06BA88268EE22596370E8C32A4771
          5AD1C552ADF03B82927B12525733A9F8AAE2C35196D52D63658C8018B104F19A
          A9FF0009B5CFFCF9C7FF007D9AC279861E12716F55E4275228ECBBD15C8DB78C
          2E66B98A236B10123852779E326BA5BBBB86CAD9A79DF622F53FD056D4B154AA
          C5CA2F45B8D493D8B39A2B909FC6B2EF3F67B4409D8C8C727F2A7DB78D09602E
          AD4053FC513671F81AC16658672B737E0C5CF13ACC52567DF6A82DF476D42002
          51B55941C8041207F5AE7BFE135BAFF9F38FFEFB35A56C651A2D293DF51B9A5B
          9D9515C6FF00C26B75FF003E71FF00DF66AFE8DE259F53BF16CF6E88A54B6E56
          24F1530CC2854928C5EAFC84A71674745739AD78927D32FF00ECD1DBA483606C
          B31079ADBB49CDCD9C33B285322062076C8ADE15E9CE72845EAB729493762C51
          5C99F18491DE98A6B64112C8559958E40CE335D4C6EB2A2BA306561904771451
          C4D3AD7E47B09493D87D1581AEF8826D26E9208E0590326ECB311DEB46CEF9AE
          34A4BC640ACD197DA0F14A388A729CA09EAB70E657B17A8AC2B1F15D8DD10929
          36EE7B3F4FCEB6D5D5D43290C0F420E41ABA75A9D55783B8D34F61F451456C30
          A28A280393F1BFDCB3FABFF4A9FC2F636B71A42BCD6D148FBD86E7404D41E37F
          B967F57FE957FC25FF002045FF007DABC48454B309A6BA7E88CFED99BE29D1ED
          AD6DD2F2DA258CEFDAEABC039EF8AB3E0CB82F613C2C7222932BEC08FF00EB54
          FE2FFF00902FFDB45FEB54FC11FEAAEFFDE5FEB4B9234F304A2AD75FA0B69E86
          2F88BFE43F73FEF0FE42BB28F46D30C6A4D8C19DA3F80571DE22FF0090F5CFFB
          C3F90A78B4F116D1817B8C71F39FF1AE3A55553AD52F0E6D7EED494ECDE8764B
          A469CAE1D6C610CA720841C1AC2F1AC8E12D6204EC2598FB918FF1A7F86E1D5A
          3D41DAFBED023F2C81E6B1233915ABAD6929AB5AF965F64887746DE87DFDABD3
          945E230B254E3CADF4DB62DFBD1D1197E19D3EC25D344CD14534E490FBC06DBC
          F0307A5694DE1FD32E25495AD51590E7083686F622B947D0359B29098A273FED
          42FD7FAD247ACEB1A6CE165965C8EB1CE09C8FC6B8A9E2614A11856A56B75B09
          4925668EF258229E230CB1ABC6782A471591AC693610E93732C7690A3AC64AB0
          8C64568E9F7A9A858C7731F01C723D0F7150EBBFF204BBFF00AE66BD6AD1A752
          8B9D93D34FB8B766AE729E16B582EF519239E1495444480E3383915D8DBE9B65
          6D2F9B0DB451BE31B95706B94F067FC8525FFAE27F98AEDAB932B841D0526B5B
          B269AD0E13C5FF00F21A3FF5C97FAD75FA5FFC826D7FEB8AFF002AE43C5FFF00
          21A3FF005C97FAD75FA5FF00C826D7FEB8AFF2ACF07FEF75451F899E7577FF00
          1FB3FF00D746FE75D3F84F56DC9FD9F3B7CCBCC44F71DC561408B27881519432
          B5D6083DC6EA7EA965368BAA8F298AA83BE26F6FFEB5797425528CDD68EC9D99
          116D6A5FF19FFC8521FF00AE3FD4D743A2A093C3F6F19E0345838F7CD723AEEA
          09A9C96D70BC3793865FEEB64E6BB1D03FE40769FF005CEBD2C1CA3531939476
          6BFC8B8EB2672DAB78664D3ADDEE639C3C498C86186E4E2B36CF53BDD3DB36D3
          B20EE87953F8576DE27FF9005CFF00C07FF4215E7FDEB831F4D61ABAF65A6972
          26B95E875D63E328DC84BE84C67FBE9C8FCBAD7436D776F791F996F324ABEAA7
          35E615A3A024EDAC40D0AC85430DE533803DEB7C26655B99424B9AFF0078E351
          ECCF46A29074A5AFA537393F1B7DDB4FABFF004A3C39AC69F63A52C37372B1B8
          663B48278FCAB575AD146B02106E0C3E513D1739CE3DFDAB2BFE1081FF003FE7
          FEFDFF00F5EBC4A94B130C54AAD28DEFDFD3D4CDA9295D157C49AE41A8C4B6D6
          A4BA2B6E6723009EC0569F83AD5E1D3649D811E73E467B81C67F9D25A783ED22
          903DC4AF3E3F848DA0FD6BA0555440AB85503000E82B4C361EABACEBD6DFA208
          C5DEECF3FF00117FC87EEBFDE1FC8575C9AFE94B1A837D16428EE6A86A5E167B
          FD425BA178104841DBE5E71C63D6AAFF00C210DFF3FEBFF7EBFF00AF5CD0862A
          8559CA11BA93EFE7EA4A524DD91BA9AEE9723AA25EC4598E0007A9A6EABADDBE
          928BE665DDCF08A79C7AD645BF839A1B98A6FB729F2DC363CBEB83F5AD8D4F44
          B3D5141994AC8A30B22F047F8D7746A62A74A574A32E85DE4D0D87C43A54E818
          5DA27FB2FF002915CE78A753B4BF9204B561218B3BA4038E71C55893C132EEFD
          DDF295FF006A3E7F9D5AB2F07DB432092EE633E39D806D5FC7D6B92A2C6D78FB
          394524F764BE792B58B9E1789A1D121DE08DE4B807D09E2ACEBBFF00204BBFFA
          E66AF0014000000703155EFED4DED94B6E1F619176EEC6715E9FB270A1ECE3AE
          96FC0BB5A36393F06FFC8524FF00AE47F98AEDAB0745F0F369374F39B912EE4D
          B8098EFF005ADEAC7014A74A8A8CD59DC504D2D4E13C5FFF0021A3FF005C97FA
          D75FA5FF00C826D7FEB92FF2ACBD63C34DAA5EFDA05C8886C0BB7667A7E35B36
          B07D9AD2280B6EF2D02E718CE056786A152188A9392D1EC28A6A4D9C0DAFFC8C
          717FD7D8FF00D0ABB1D734C5D52C5A3000953E68DBD0FA7E359B17851A2D4D2E
          FED808597CCDBE5FBE71D6BA5A8C1E165184E15568D8423A34CF2B7468DD91D4
          AB29C107B1AF41D15847E1EB7908C858B38FA66A96ABE174D42ECDC453881987
          CE366727D7AD6A5A589B6D2D2CCC9BB6C6537E3FA56581C254A1566DAD2DA314
          22E2CE4355F12CFA8C0F6EB02C50BE3393963CE7AD53B1D1AFB5020C301D9FF3
          D1FE55FCFBD75F61E19D3ECB0C63F3E41FC5273F90E95B00003006050B2EA95E
          5CF8896BE41C8DEB239BB1F085B4587BC90CCDFDC5F957FC4D74105BC56F108E
          18D510745518152D15EA51C3D2A4AD05634514B6168A28AE8199D7AC46A36232
          7966FE54DD4B32CF6B6E588495CEEDA719C0E953DDD8A5DB44C6592368892A50
          E0F351B698AF08492795D95B72485BE653ED5E654A555B9A4B46D3DFB2575F31
          9425792CE2D4208A46091ECD99392BBBAE0D4D02C369A8C71C66752CB839E524
          E339C9356E3D320482589CB4BE77FAC67392D45B69B1DBCA25692495C0C2991B
          3B47B5631C2D6524ECBFC95DBB7DC067307B9B146863768FCE632A07F99F9F5A
          B16B15A5D5B49088E54F2DB2D1BB1054E3EBD2A7FECB45816249E58F0C5B72B6
          0E4D4B6B6496A8E159DD9CE599CE49AA861AA735E493D2CEFE9D3E60655BDBA2
          6832DC8DDE6BC6C092C7D6A5118BCBC86DE666F2C5BABED0C464FAD5E5B08D74
          F3661DB610467BF26926D36397CA659248DE35DA1D0E091E8697D526A2924B44
          AEBBB4F50B95AEB75969BF6659CC8D2BF968CC7900FBFB0A9B4994BDB1859C33
          C2C50907391D8D0348B60225605923C9DADC8627A93535BD8C36B33C910D81C0
          0507DDE3BD6B4E9565594ED68A56B5EFA7FC3816E8A28AF4C414514500145145
          0014514500145145001451450014514500145145001451450014514500145145
          0014514500145145001451450014514500145145001451450014514500145145
          0014514500145145007FFFD9}
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
      object Shape1: TfrxShapeView
        Left = 196.000000000000000000
        Top = 8.000000000000000000
        Width = 476.000000000000000000
        Height = 60.000000000000000000
        ShowHint = False
        Color = clAqua
        Frame.Width = 0.100000000000000000
      end
      object Memo1: TfrxMemoView
        Left = 208.000000000000000000
        Top = 16.000000000000000000
        Width = 240.000000000000000000
        Height = 24.000000000000000000
        ShowHint = False
        Color = clAqua
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          'ORDEN DE CARGA N'#186)
        ParentFont = False
      end
      object rdb_comodinALBARAN: TfrxMemoView
        Left = 460.000000000000000000
        Top = 16.000000000000000000
        Width = 192.000000000000000000
        Height = 24.000000000000000000
        ShowHint = False
        Color = clWhite
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
        DisplayFormat.FormatStr = '###-###-######'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[rdb_comodin."ALBARAN"]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 460.000000000000000000
        Top = 44.000000000000000000
        Width = 192.000000000000000000
        Height = 20.000000000000000000
        ShowHint = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'INDICAR EN SU FACTURA')
        ParentFont = False
      end
      object Line1: TfrxLineView
        Left = 8.000000000000000000
        Top = 84.000000000000000000
        Width = 696.000000000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
      end
      object Memo3: TfrxMemoView
        Left = 20.000000000000000000
        Top = 108.000000000000000000
        Width = 140.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          'FECHA DE CARGA')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo4: TfrxMemoView
        Left = 20.000000000000000000
        Top = 136.000000000000000000
        Width = 92.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          'REMITENTE')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo5: TfrxMemoView
        Left = 20.000000000000000000
        Top = 164.000000000000000000
        Width = 140.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          'LUGAR DE CARGA')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo6: TfrxMemoView
        Left = 20.000000000000000000
        Top = 192.000000000000000000
        Width = 96.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          'DIRECCION')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo7: TfrxMemoView
        Left = 20.000000000000000000
        Top = 220.000000000000000000
        Width = 188.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          'REFERENCIA DE CARGA')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo8: TfrxMemoView
        Left = 20.000000000000000000
        Top = 248.000000000000000000
        Width = 160.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          'FECHA DE ENTREGA')
        ParentFont = False
        VAlign = vaCenter
      end
      object rdb_comodinFECHA_ALB: TfrxMemoView
        Left = 328.000000000000000000
        Top = 108.000000000000000000
        Width = 216.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        Color = clWhite
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
        DisplayFormat.FormatStr = 'DD-MMMM-YYYY'
        DisplayFormat.Kind = fkDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          '[rdb_comodin."FECHA_ALB"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object rdb_comodinREMITENTE: TfrxMemoView
        Left = 324.000000000000000000
        Top = 132.000000000000000000
        Width = 376.000000000000000000
        Height = 20.000000000000000000
        ShowHint = False
        Color = clWhite
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          '[rdb_comodin."DIR_RECOGIDA"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object rdb_comodinREFERENCIA: TfrxMemoView
        Left = 328.000000000000000000
        Top = 220.000000000000000000
        Width = 204.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        Color = clWhite
        DataField = 'REFERENCIA'
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          '[rdb_comodin."REFERENCIA"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object rdb_comodinF_CONCERT: TfrxMemoView
        Left = 328.000000000000000000
        Top = 248.000000000000000000
        Width = 144.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        Color = clWhite
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
        DisplayFormat.FormatStr = 'DD-MMMM-YYYY'
        DisplayFormat.Kind = fkDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          '[rdb_comodin."F_CONCERT"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Line2: TfrxLineView
        Left = 8.000000000000000000
        Top = 312.000000000000000000
        Width = 696.000000000000000000
        ShowHint = False
        Frame.Typ = [ftTop]
        Frame.Width = 2.000000000000000000
      end
      object Memo9: TfrxMemoView
        Left = 12.000000000000000000
        Top = 328.000000000000000000
        Width = 112.000000000000000000
        Height = 20.000000000000000000
        ShowHint = False
        Color = clAqua
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          'ENTREGA')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo10: TfrxMemoView
        Left = 12.000000000000000000
        Top = 364.000000000000000000
        Width = 140.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          'CONSIGNATARIO')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo11: TfrxMemoView
        Left = 12.000000000000000000
        Top = 392.000000000000000000
        Width = 140.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          'DIRECCION')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo12: TfrxMemoView
        Left = 12.000000000000000000
        Top = 420.000000000000000000
        Width = 140.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          'LOCALIDAD')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo13: TfrxMemoView
        Left = 12.000000000000000000
        Top = 448.000000000000000000
        Width = 140.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          'BULTOS')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo14: TfrxMemoView
        Left = 12.000000000000000000
        Top = 476.000000000000000000
        Width = 140.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          'PESO')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo15: TfrxMemoView
        Left = 12.000000000000000000
        Top = 504.000000000000000000
        Width = 140.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          'PRECIO')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo16: TfrxMemoView
        Left = 12.000000000000000000
        Top = 532.000000000000000000
        Width = 140.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          'TRANSPORTISTA')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo17: TfrxMemoView
        Left = 12.000000000000000000
        Top = 560.000000000000000000
        Width = 140.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          'OBSERVACIONES')
        ParentFont = False
        VAlign = vaCenter
      end
      object rdb_comodinCONSIGNA: TfrxMemoView
        Left = 192.000000000000000000
        Top = 364.000000000000000000
        Width = 400.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        Color = clWhite
        DataField = 'CONSIGNA'
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          '[rdb_comodin."CONSIGNA"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object rdb_comodinDIR_CONSIG: TfrxMemoView
        Left = 192.000000000000000000
        Top = 392.000000000000000000
        Width = 400.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        DataField = 'DIR_CONSIG'
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          '[rdb_comodin."DIR_CONSIG"]')
        ParentFont = False
      end
      object rdb_comodinLOC_CONSIG: TfrxMemoView
        Left = 192.000000000000000000
        Top = 420.000000000000000000
        Width = 400.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        DataField = 'LOC_CONSIG'
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          '[rdb_comodin."LOC_CONSIG"]')
        ParentFont = False
      end
      object rdb_comodinBULTOS: TfrxMemoView
        Left = 192.000000000000000000
        Top = 448.000000000000000000
        Width = 36.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        DataField = 'BULTOS'
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          '[rdb_comodin."BULTOS"]')
        ParentFont = False
      end
      object rdb_comodinKILOS: TfrxMemoView
        Left = 192.000000000000000000
        Top = 476.000000000000000000
        Width = 52.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        DataField = 'KILOS'
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          '[rdb_comodin."KILOS"]')
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        Left = 264.000000000000000000
        Top = 476.000000000000000000
        Width = 56.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          'KILOS')
        ParentFont = False
      end
      object rdb_comodinpagamos: TfrxMemoView
        Left = 192.000000000000000000
        Top = 504.000000000000000000
        Width = 80.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          '[rdb_comodin."pagamos"]')
        ParentFont = False
      end
      object rdb_comodinproveedor: TfrxMemoView
        Left = 192.000000000000000000
        Top = 528.000000000000000000
        Width = 400.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        DataField = 'proveedor'
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          '[rdb_comodin."proveedor"]')
        ParentFont = False
      end
      object Shape3: TfrxShapeView
        Left = 12.000000000000000000
        Top = 668.000000000000000000
        Width = 692.000000000000000000
        Height = 92.000000000000000000
        ShowHint = False
        Frame.Width = 0.100000000000000000
      end
      object Memo19: TfrxMemoView
        Left = 20.000000000000000000
        Top = 676.000000000000000000
        Width = 148.000000000000000000
        Height = 28.000000000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          'IMPORTANTE!!!')
        ParentFont = False
      end
      object Memo20: TfrxMemoView
        Left = 20.000000000000000000
        Top = 720.000000000000000000
        Width = 540.000000000000000000
        Height = 24.000000000000000000
        ShowHint = False
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          'DEVOLVER ALBARAN DEL CLIENTE FIRMADO Y SELLADO.')
        ParentFont = False
      end
      object Shape4: TfrxShapeView
        Left = 12.000000000000000000
        Top = 776.000000000000000000
        Width = 692.000000000000000000
        Height = 60.000000000000000000
        ShowHint = False
        Frame.Width = 0.100000000000000000
      end
      object Memo21: TfrxMemoView
        Left = 24.000000000000000000
        Top = 784.000000000000000000
        Width = 664.000000000000000000
        Height = 44.000000000000000000
        ShowHint = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          
            'PARA FACILITAR EL VISADO DE SUS FACTURAS, ROGAMOS INCLUYAN COMO ' +
            'REFERENCIA EL NUMERO DE ORDEN DE CARGA QUE FIGURA EN LA CABECERA' +
            ' DE ESTE DOCUMENTO.')
        ParentFont = False
      end
      object rdb_comodinOB_PROVEEDOR: TfrxMemoView
        Left = 192.000000000000000000
        Top = 560.000000000000000000
        Width = 392.000000000000000000
        Height = 80.000000000000000000
        ShowHint = False
        DataField = 'OB_PROVEEDOR'
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 0.100000000000000000
        Memo.UTF8W = (
          '[rdb_comodin."OB_PROVEEDOR"]')
        ParentFont = False
      end
      object InputBox: TfrxMemoView
        Left = 324.000000000000000000
        Top = 164.000000000000000000
        Width = 376.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        Memo.UTF8W = (
          '[InputBox('#39' Lugar de Carga '#39','#39' indicar lugar de carga '#39','#39'  '#39')]')
      end
      object Memo22: TfrxMemoView
        Left = 324.000000000000000000
        Top = 188.000000000000000000
        Width = 376.000000000000000000
        Height = 16.000000000000000000
        ShowHint = False
        Memo.UTF8W = (
          
            '[InputBox('#39' Direcci'#243'n de Carga '#39','#39' Direcci'#243'n, poblaci'#243'n... '#39','#39'  ' +
            #39')]')
      end
    end
  end
  object frxPDFExport2: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 944
    Top = 216
  end
  object frxReport1: TfrxReport
    Version = '4.9.32'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42313.875317164400000000
    ReportOptions.LastChange = 42313.875317164400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo3OnBeforePrint(Sender: TfrxComponent);'
      'var'
      'mivariable:string;  '
      '  '
      '  '
      'begin'
      'mivariable:='#39'0'#39';                            '
      ''
      ''
      ' if mivariable  =  '#39'1'#39'  then'
      'memo10.visible := true'
      '                                             '
      '                                                '
      '                                          '
      ''
      '  '
      'else'
      'memo10.visible := false  '
      '                '
      ''
      'end;'
      '            '
      ''
      'procedure PageHeader1OnBeforePrint(Sender: TfrxComponent);'
      ''
      '  '
      ''
      'var'
      'mivariable:string;  '
      '  '
      '  '
      'begin'
      'mivariable:='#39'0'#39';                            '
      ''
      ''
      ' if mivariable  =  '#39'1'#39'  then'
      'memo6.visible := true'
      '                                             '
      '                                                '
      '                                          '
      ''
      '  '
      'else'
      'memo6.visible := false  '
      'end;'
      ''
      'begin'
      ''
      '  '
      ''
      'end.')
    Left = 64
    Top = 344
    Datasets = <
      item
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'mivariable'
        Value = '1'
      end>
    Style = <
      item
        Name = 'Title'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 16053492
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
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
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 423.307360000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            ' [campo]')
        end
        object SysMemo2: TfrxSysMemoView
          Left = 548.031850000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            '[(3*<CAMPO>)]')
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'PageHeader1OnBeforePrint'
        object Memo2: TfrxMemoView
          Width = 718.110236220472000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Width = 201.140398800000000000
          Height = 22.677180000000000000
          OnBeforePrint = 'Memo3OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ALBARAN')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 201.140398804049000000
          Width = 87.818698697082500000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FECHA_ALB')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 288.959097501132000000
          Width = 207.626343210211000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CONSIGNA')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 496.585440711343000000
          Width = 221.524795509130000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REFERENCIA')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
        RowCount = 0
        object Memo7: TfrxMemoView
          Width = 201.140398804049000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ALBARAN'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."ALBARAN"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo8: TfrxMemoView
          Left = 201.140398804049000000
          Width = 87.818698697082500000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FECHA_ALB'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."FECHA_ALB"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo9: TfrxMemoView
          Left = 288.959097501132000000
          Width = 207.626343210211000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CONSIGNA'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."CONSIGNA"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          Left = 496.585440711343000000
          Width = 221.524795509130000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'REFERENCIA'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."REFERENCIA"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 26.456710000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo12: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo13: TfrxMemoView
          Align = baRight
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object SysMemo1: TfrxSysMemoView
        Left = 154.960730000000000000
        Top = 302.362400000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        ShowHint = False
      end
    end
  end
  object r_clientes_todos_congastos: TfrxReport
    Version = '4.9.32'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42235.735264965300000000
    ReportOptions.LastChange = 42247.371727129600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 328
    Top = 208
    Datasets = <
      item
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 52479
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 1065.827460000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 1065.827460000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Listado Econ'#243'mico de Clientes.')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 1065.827460000000000000
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 45.354360000000000000
        Top = 151.181200000000000000
        Width = 1065.827460000000000000
        Condition = 'rdb_comodin."CLIENTE"'
        OutlineText = 'rdb_comodin."CLIENTE"'
        ResetPageNumbers = True
        object Memo2: TfrxMemoView
          Top = 22.677180000000000000
          Width = 1046.929133858270000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Top = 22.677180000000000000
          Width = 67.954104050000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'FECHA')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 71.733634050000000000
          Top = 22.677180000000000000
          Width = 175.387818770000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            ' NTO. ALBARAN')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 250.121452820000000000
          Top = 22.677180000000000000
          Width = 171.237399640000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REFERENCIA CLIENTE')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 424.154152460000000000
          Top = 22.677180000000000000
          Width = 227.101369990000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CONSIGNATARIO')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 653.357872450000000000
          Top = 22.677180000000000000
          Width = 165.429021220000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'POBLACION')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          Left = 820.023133670000000000
          Top = 22.677180000000000000
          Width = 73.118844390000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'BULTOS')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          Left = 895.346678060000000000
          Top = 22.677180000000000000
          Width = 45.004175100000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PESO')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          Left = 941.571323150000000000
          Top = 22.677180000000000000
          Width = 57.444390700000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PRECIO')
          ParentFont = False
          Style = 'Header'
        end
        object Memo11: TfrxMemoView
          Align = baWidth
          Width = 1065.827460000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 52479
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[rdb_comodin."cliente"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
        object rdb_comodinNOMBRE: TfrxMemoView
          Left = 181.417440000000000000
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Memo.UTF8W = (
            '[rdb_comodin."NOMBRE"]')
        end
        object Memo21: TfrxMemoView
          Left = 1000.575450000000000000
          Top = 22.677180000000000000
          Width = 61.223920700000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'GASTOS')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 219.212740000000000000
        Width = 1065.827460000000000000
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
        RowCount = 0
        object Memo16: TfrxMemoView
          Left = 652.475992450000000000
          Top = 1.000000000000000000
          Width = 214.562911220000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'loc_consig'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."loc_consig"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Width = 71.733634050000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'fecha_alb'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."fecha_alb"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 84.733634050000000000
          Width = 171.608288770000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          DisplayFormat.FormatStr = '###-###-######'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."albaran"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 266.019102820000000000
          Width = 209.032699640000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'referencia'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."referencia"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 842.684543670000000000
          Width = 35.323544390000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'bultos'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[rdb_comodin."bultos"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 906.685268060000000000
          Width = 37.445115100000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'kilos'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[rdb_comodin."kilos"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 959.248503150000000000
          Width = 38.546740700000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[rdb_comodin."cobramos"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 425.917912460000000000
          Width = 253.558079990000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."consigna"]')
          ParentFont = False
        end
        object rdb_comodinpagamos: TfrxMemoView
          Left = 1006.914040000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'pagamos'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[rdb_comodin."pagamos"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 49.133890000000000000
        Top = 271.685220000000000000
        Width = 1065.827460000000000000
        object Shape5: TfrxShapeView
          Left = 253.228510000000000000
          Top = 5.000000000000000000
          Width = 721.890230000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 16774348
          Shape = skRoundRectangle
        end
        object Shape1: TfrxShapeView
          Left = 417.008040000000000000
          Top = 9.559060000000000000
          Width = 211.653680000000000000
          Height = 22.677180000000000000
          ShowHint = False
        end
        object Shape4: TfrxShapeView
          Left = 759.126470000000000000
          Top = 9.779530000000000000
          Width = 211.653680000000000000
          Height = 22.677180000000000000
          ShowHint = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 264.567100000000000000
          Top = 10.338590000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8W = (
            'TOTAL CLIENTE')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 423.307360000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 876.850960000000000000
          Top = 10.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            '[SUM(<rdb_comodin."cobramos">)]')
        end
        object Memo23: TfrxMemoView
          Left = 525.354670000000000000
          Top = 10.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Registros')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 767.244590000000000000
          Top = 10.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Importe')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 438.425480000000000000
        Width = 1065.827460000000000000
        object SysMemo4: TfrxSysMemoView
          Left = 793.701300000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'P'#225'gina  [PAGE#] de [TOTALPAGES#]')
        end
        object SysMemo1: TfrxSysMemoView
          Left = 15.118120000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'mm.dd.aaaa'
          Memo.UTF8W = (
            '[date]')
        end
      end
      object Footer1: TfrxFooter
        Height = 56.692950000000000000
        Top = 340.157700000000000000
        Width = 1065.827460000000000000
        object Shape2: TfrxShapeView
          Left = 22.677180000000000000
          Top = 4.559060000000000000
          Width = 668.976810000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 10218495
          Shape = skRoundRectangle
        end
        object SysMemo6: TfrxSysMemoView
          Left = 585.827150000000000000
          Top = 9.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<rdb_comodin."cobramos">,MasterData1)]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 325.039580000000000000
          Top = 11.338590000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL SUMA GENERAL')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          Left = 41.574830000000000000
          Top = 11.338590000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[COUNT()]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 124.724490000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Registros')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          Left = 34.015770000000000000
          Top = 11.338590000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
      end
    end
  end
  object MyQuery2: TMyQuery
    Connection = conesiones.conexion_general
    SQL.Strings = (
      'select * from entradas_helm'
      ''
      
        'INNER JOIN lotes_helm ON entradas_helm.NUM_COMPRA = lotes_helm.N' +
        'UM_COMPRA')
    Left = 920
    Top = 480
  end
  object informe_coste_proveedor: TfrxReport
    Version = '4.9.32'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42382.613421250000000000
    ReportOptions.LastChange = 42382.613421250000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 312
    Top = 504
    Datasets = <
      item
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 16053492
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 26.456710000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 30.000000000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Width = 1046.929133858270000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Width = 206.695406589382000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ALBARAN')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 206.695406589382000000
          Width = 227.012395588297000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'REFERENCIA')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 433.707802177679000000
          Width = 213.159903089037000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CONSIGNA')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 646.867705266716000000
          Width = 228.859394588199000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'LOC_CONSIG')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 875.727099854915000000
          Width = 60.453509500936700000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'BULTOS')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          Left = 936.180609355852000000
          Width = 47.524516501626900000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'KILOS')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          Left = 983.705125857479000000
          Width = 63.224008000788800000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'pagamos')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          Align = baWidth
          Top = 16.677180000000000000
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16053492
          DataField = 'proveedor'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[rdb_comodin."proveedor"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 26.456710000000000000
        Top = 52.677180000000000000
        Width = 1046.929810000000000000
        Condition = 'rdb_comodin."proveedor"'
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 98.677180000000000000
        Width = 1046.929810000000000000
        Condition = 'rdb_comodin."FECHA_ALB"'
        KeepTogether = True
        OutlineText = 'rdb_comodin."FECHA_ALB"'
        object Memo11: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 16053492
          DataField = 'FECHA_ALB'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[rdb_comodin."FECHA_ALB"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 154.677180000000000000
        Width = 1046.929810000000000000
        DataSet = rdb_comodin
        DataSetName = 'rdb_comodin'
        RowCount = 0
        object Memo12: TfrxMemoView
          Width = 206.695406589382000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ALBARAN'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."ALBARAN"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo13: TfrxMemoView
          Left = 206.695406590000000000
          Width = 227.012395590000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'REFERENCIA'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."REFERENCIA"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo14: TfrxMemoView
          Left = 433.707802177679000000
          Width = 213.159903089037000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CONSIGNA'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."CONSIGNA"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo15: TfrxMemoView
          Left = 646.867705266716000000
          Width = 228.859394588199000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LOC_CONSIG'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."LOC_CONSIG"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo16: TfrxMemoView
          Left = 875.727099854915000000
          Width = 60.453509500936700000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BULTOS'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."BULTOS"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo17: TfrxMemoView
          Left = 936.180609355852000000
          Width = 47.524516501626900000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'KILOS'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."KILOS"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo18: TfrxMemoView
          Left = 983.705125857479000000
          Width = 63.224008000788800000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'pagamos'
          DataSet = rdb_comodin
          DataSetName = 'rdb_comodin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[rdb_comodin."pagamos"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Top = 1000.000000000000000000
        Width = 1046.929810000000000000
      end
      object GroupFooter2: TfrxGroupFooter
        Top = 970.000000000000000000
        Width = 1046.929810000000000000
      end
      object PageFooter1: TfrxPageFooter
        Height = 26.456710000000000000
        Top = 1000.000000000000000000
        Width = 1046.929810000000000000
        object Memo19: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo20: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo21: TfrxMemoView
          Align = baRight
          Left = 971.339210000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
  object frxReport3: TfrxReport
    Version = '4.9.32'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42388.644059432900000000
    ReportOptions.LastChange = 42388.644059432900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 544
    Top = 480
    Datasets = <
      item
        DataSet = DBTARIFAS_PROV
        DataSetName = 'TARIFAS'
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
      object DBCross1: TfrxDBCrossView
        Left = 82.000000000000000000
        Top = 166.000000000000000000
        Width = 209.000000000000000000
        Height = 128.000000000000000000
        ShowHint = False
        ColumnLevels = 2
        DownThenAcross = True
        ShowColumnTotal = False
        ShowRowTotal = False
        CellFields.Strings = (
          'IMPORTE')
        ColumnFields.Strings = (
          'BAREMO'
          'TIPO')
        DataSet = DBTARIFAS_PROV
        DataSetName = 'TARIFAS'
        RowFields.Strings = (
          'TRAMO')
        Memos = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
          662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
          6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2231363922
          20546F703D22323532222057696474683D2231303222204865696768743D2232
          3222205265737472696374696F6E733D223234222053686F7748696E743D2246
          616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222043
          6F6C6F723D2231333433343837392220466F6E742E436861727365743D223122
          20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3133
          2220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D22
          3022204672616D652E5479703D2231352220476170583D22332220476170593D
          2233222048416C69676E3D22686152696768742220506172656E74466F6E743D
          2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
          30222F3E3C546672784D656D6F56696577204C6566743D2238312220546F703D
          223838222057696474683D2231303222204865696768743D2232322220526573
          7472696374696F6E733D223234222053686F7748696E743D2246616C73652220
          416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
          79703D2231352220476170583D22332220476170593D2233222048416C69676E
          3D2268615269676874222056416C69676E3D22766143656E7465722220546578
          743D2230222F3E3C546672784D656D6F56696577204C6566743D223132362220
          546F703D223636222057696474683D22333822204865696768743D2232322220
          5265737472696374696F6E733D223234222053686F7748696E743D2246616C73
          652220416C6C6F7745787072657373696F6E733D2246616C736522204672616D
          652E5479703D2231352220476170583D22332220476170593D2233222048416C
          69676E3D2268615269676874222056416C69676E3D22766143656E7465722220
          546578743D2230222F3E3C546672784D656D6F56696577204C6566743D223132
          362220546F703D223838222057696474683D22333822204865696768743D2232
          3222205265737472696374696F6E733D223234222053686F7748696E743D2246
          616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
          72616D652E5479703D2231352220476170583D22332220476170593D22332220
          48416C69676E3D2268615269676874222056416C69676E3D22766143656E7465
          722220546578743D2230222F3E3C546672784D656D6F56696577204C6566743D
          223135322220546F703D223636222057696474683D2238312220486569676874
          3D22323222205265737472696374696F6E733D223234222053686F7748696E74
          3D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C7365
          22204672616D652E5479703D2231352220476170583D22332220476170593D22
          33222048416C69676E3D2268615269676874222056416C69676E3D2276614365
          6E7465722220546578743D2230222F3E3C546672784D656D6F56696577204C65
          66743D223135322220546F703D223838222057696474683D2238312220486569
          6768743D22323222205265737472696374696F6E733D223234222053686F7748
          696E743D2246616C73652220416C6C6F7745787072657373696F6E733D224661
          6C736522204672616D652E5479703D2231352220476170583D22332220476170
          593D2233222048416C69676E3D2268615269676874222056416C69676E3D2276
          6143656E7465722220546578743D2230222F3E3C2F63656C6C6D656D6F733E3C
          63656C6C6865616465726D656D6F733E3C546672784D656D6F56696577204C65
          66743D2238312220546F703D223434222057696474683D223637222048656967
          68743D22323222205265737472696374696F6E733D2238222053686F7748696E
          743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
          6522204672616D652E5479703D2231352220476170583D22332220476170593D
          2233222056416C69676E3D22766143656E7465722220546578743D22494D504F
          525445222F3E3C546672784D656D6F56696577204C6566743D2238312220546F
          703D223636222057696474683D22363722204865696768743D22323222205265
          737472696374696F6E733D2238222053686F7748696E743D2246616C73652220
          416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
          79703D2231352220476170583D22332220476170593D2233222056416C69676E
          3D22766143656E7465722220546578743D22494D504F525445222F3E3C546672
          784D656D6F56696577204C6566743D22302220546F703D223022205769647468
          3D223022204865696768743D223022205265737472696374696F6E733D223822
          2053686F7748696E743D2246616C73652220416C6C6F7745787072657373696F
          6E733D2246616C736522204672616D652E5479703D2231352220476170583D22
          332220476170593D2233222056416C69676E3D22766143656E74657222205465
          78743D22222F3E3C2F63656C6C6865616465726D656D6F733E3C636F6C756D6E
          6D656D6F733E3C546672784D656D6F56696577204C6566743D22313639222054
          6F703D22323038222057696474683D2231303222204865696768743D22323222
          205265737472696374696F6E733D223234222053686F7748696E743D2246616C
          73652220416C6C6F7745787072657373696F6E733D2246616C73652220436F6C
          6F723D2231333433343837392220466F6E742E436861727365743D2231222046
          6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220
          466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223022
          204672616D652E5479703D2231352220476170583D22332220476170593D2233
          222048416C69676E3D22686143656E7465722220506172656E74466F6E743D22
          46616C7365222056416C69676E3D22766143656E7465722220546578743D2222
          2F3E3C546672784D656D6F56696577204C6566743D223136392220546F703D22
          323330222057696474683D2231303222204865696768743D2232322220526573
          7472696374696F6E733D223234222053686F7748696E743D2246616C73652220
          416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
          79703D2231352220476170583D22332220476170593D2233222048416C69676E
          3D22686143656E746572222056416C69676E3D22766143656E74657222205465
          78743D22222F3E3C2F636F6C756D6E6D656D6F733E3C636F6C756D6E746F7461
          6C6D656D6F733E3C546672784D656D6F56696577204C6566743D223135322220
          546F703D223232222057696474683D22383122204865696768743D2234342220
          5265737472696374696F6E733D2238222056697369626C653D2246616C736522
          2053686F7748696E743D2246616C73652220416C6C6F7745787072657373696F
          6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E74
          2E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E
          742E4E616D653D22417269616C2220466F6E742E5374796C653D223122204672
          616D652E5479703D2231352220476170583D22332220476170593D2233222048
          416C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C
          7365222056416C69676E3D22766143656E7465722220546578743D224772616E
          6420546F74616C222F3E3C546672784D656D6F56696577204C6566743D223132
          362220546F703D223434222057696474683D22333822204865696768743D2232
          3222205265737472696374696F6E733D2238222056697369626C653D2246616C
          7365222053686F7748696E743D2246616C73652220416C6C6F77457870726573
          73696F6E733D2246616C73652220466F6E742E436861727365743D2231222046
          6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220
          466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223122
          204672616D652E5479703D2231352220476170583D22332220476170593D2233
          222048416C69676E3D22686143656E7465722220506172656E74466F6E743D22
          46616C7365222056416C69676E3D22766143656E7465722220546578743D2254
          6F74616C222F3E3C2F636F6C756D6E746F74616C6D656D6F733E3C636F726E65
          726D656D6F733E3C546672784D656D6F56696577204C6566743D223130322220
          546F703D22313836222057696474683D22363722204865696768743D22323222
          205265737472696374696F6E733D2238222053686F7748696E743D2246616C73
          652220416C6C6F7745787072657373696F6E733D2246616C736522204672616D
          652E5479703D2231352220476170583D22332220476170593D2233222048416C
          69676E3D22686143656E746572222056416C69676E3D22766143656E74657222
          20546578743D22494D504F525445222F3E3C546672784D656D6F56696577204C
          6566743D223136392220546F703D22313836222057696474683D223130322220
          4865696768743D22323222205265737472696374696F6E733D2238222053686F
          7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D22
          46616C736522204672616D652E5479703D2231352220476170583D2233222047
          6170593D2233222048416C69676E3D22686143656E746572222056416C69676E
          3D22766143656E7465722220546578743D22424152454D4F2C205449504F222F
          3E3C546672784D656D6F56696577204C6566743D2238312220546F703D223232
          222057696474683D22363722204865696768743D223232222052657374726963
          74696F6E733D2238222056697369626C653D2246616C7365222053686F774869
          6E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C
          736522204672616D652E5479703D2231352220476170583D2233222047617059
          3D2233222048416C69676E3D22686143656E746572222056416C69676E3D2276
          6143656E7465722220546578743D22222F3E3C546672784D656D6F5669657720
          4C6566743D223130322220546F703D22323038222057696474683D2236372220
          4865696768743D22343422205265737472696374696F6E733D2238222053686F
          7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D22
          46616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C
          6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E61
          6D653D22417269616C2220466F6E742E5374796C653D223122204672616D652E
          5479703D2231352220476170583D22332220476170593D2233222048416C6967
          6E3D22686143656E7465722220506172656E74466F6E743D2246616C73652220
          56416C69676E3D22766143656E7465722220546578743D225452414D4F222F3E
          3C2F636F726E65726D656D6F733E3C726F776D656D6F733E3C546672784D656D
          6F56696577204C6566743D223130322220546F703D2232353222205769647468
          3D22363722204865696768743D22323222205265737472696374696F6E733D22
          3234222053686F7748696E743D2246616C73652220416C6C6F77457870726573
          73696F6E733D2246616C736522204672616D652E5479703D2231352220476170
          583D22332220476170593D2233222048416C69676E3D22686143656E74657222
          2056416C69676E3D22766143656E7465722220546578743D22222F3E3C2F726F
          776D656D6F733E3C726F77746F74616C6D656D6F733E3C546672784D656D6F56
          696577204C6566743D22302220546F703D223838222057696474683D22383122
          204865696768743D22323222205265737472696374696F6E733D223822205669
          7369626C653D2246616C7365222053686F7748696E743D2246616C7365222041
          6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
          727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569
          6768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E74
          2E5374796C653D223122204672616D652E5479703D2231352220476170583D22
          332220476170593D2233222048416C69676E3D22686143656E74657222205061
          72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
          722220546578743D224772616E6420546F74616C222F3E3C2F726F77746F7461
          6C6D656D6F733E3C63656C6C66756E6374696F6E733E3C6974656D20312F3E3C
          2F63656C6C66756E6374696F6E733E3C636F6C756D6E736F72743E3C6974656D
          20302F3E3C6974656D20302F3E3C2F636F6C756D6E736F72743E3C726F77736F
          72743E3C6974656D20302F3E3C2F726F77736F72743E3C2F63726F73733E}
      end
    end
  end
  object QUERY_TARIFAS: TMyQuery
    SQLDelete.Strings = (
      'DELETE FROM albaran'
      'WHERE'
      '  CLIENTE = :Old_CLIENTE')
    SQLUpdate.Strings = (
      'UPDATE albaran'
      'SET'
      
        '  ALBARAN = :ALBARAN, REFERENCIA = :REFERENCIA, CLIENTE = :CLIEN' +
        'TE, REMITENTE = :REMITENTE, FECHA_ALB = :FECHA_ALB'
      'WHERE'
      '  CLIENTE = :Old_CLIENTE')
    SQLRefresh.Strings = (
      
        'SELECT ALBARAN, REFERENCIA, CLIENTE, REMITENTE, FECHA_ALB FROM a' +
        'lbaran'
      'WHERE'
      '  CLIENTE = :CLIENTE')
    SQLLock.Strings = (
      'SELECT * FROM albaran'
      'WHERE'
      '  CLIENTE = :Old_CLIENTE'
      'FOR UPDATE')
    Connection = conesiones.conexion_general
    SQL.Strings = (
      'SELECT * FROM TARIFA_PROVEEDOR')
    Left = 448
    Top = 88
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 848
    Top = 32
  end
  object DBTARIFAS_PROV: TfrxDBDataset
    UserName = 'TARIFAS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PROVEEDOR=PROVEEDOR'
      'BAREMO=BAREMO'
      'TRAMO=TRAMO'
      'TIPO=TIPO'
      'IMPORTE=IMPORTE')
    DataSet = QUERY_TARIFAS
    BCDToCurrency = False
    Left = 448
    Top = 152
  end
end

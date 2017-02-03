object f_repaso: Tf_repaso
  Left = 0
  Top = 0
  Caption = 'Repaso de Facturaci'#243'n.'
  ClientHeight = 697
  ClientWidth = 1091
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 288
    Top = 612
    Width = 69
    Height = 13
    Caption = 'Total registros'
  end
  object Label2: TLabel
    Left = 376
    Top = 612
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 48
    Top = 8
    Width = 993
    Height = 409
    Color = clScrollBar
    DataSource = DataSource1
    DragMode = dmAutomatic
    DrawingStyle = gdsGradient
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Fecha'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Org'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Dst'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Albaran'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Referencia'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Remitente'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Consignatario'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'C#P#'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Localidad de Destino'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bultos'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kilos'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Portes'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Seguro'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Varios'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TPagados'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 885
    Top = 600
    Width = 75
    Height = 25
    Caption = 'EJECUTA'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid2: TDBGrid
    AlignWithMargins = True
    Left = 64
    Top = 417
    Width = 961
    Height = 138
    Color = clInactiveCaption
    DataSource = conesiones.data_compara
    DragMode = dmAutomatic
    DrawingStyle = gdsGradient
    FixedColor = clInfoText
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'expedicion'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REMITENTE'
        Width = 246
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONSIGNA'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BULTOS'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KILOS'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imp_camion'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imp_destina'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 88
    Top = 650
    Width = 240
    Height = 25
    DataSource = conesiones.data_compara
    TabOrder = 3
  end
  object Button2: TButton
    Left = 966
    Top = 600
    Width = 75
    Height = 25
    Caption = 'BORRA'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 928
    Top = 631
    Width = 75
    Height = 25
    Caption = 'Elige Ficchero'
    TabOrder = 5
    OnClick = Button3Click
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 160
    Top = 576
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = '[Hoja1$]'
    Left = 24
    Top = 576
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 80
    Top = 576
  end
  object data_enblanco: TDataSource
    Left = 232
    Top = 600
  end
  object excel_compara: TscExcelExport
    DataPipe = dpDataSet
    StyleColumnWidth = cwDefault
    ColumnWidth = 0
    FontHeader.Charset = DEFAULT_CHARSET
    FontHeader.Color = clWindowText
    FontHeader.Height = 1
    FontHeader.Name = 'Tahoma'
    FontHeader.Orientation = 0
    FontHeader.Style = []
    FontHeader.Alignment = haGeneral
    FontHeader.WrapText = False
    BorderHeader.BackAlternateColor = clBlack
    MergeHeaderCells = True
    FontTitles.Charset = DEFAULT_CHARSET
    FontTitles.Color = clWindowText
    FontTitles.Height = 1
    FontTitles.Name = 'Tahoma'
    FontTitles.Orientation = 0
    FontTitles.Style = []
    FontTitles.Alignment = haGeneral
    FontTitles.WrapText = False
    BorderTitles.BackAlternateColor = clBlack
    AutoFilter = False
    FontData.Charset = DEFAULT_CHARSET
    FontData.Color = clWindowText
    FontData.Height = 1
    FontData.Name = 'Tahoma'
    FontData.Orientation = 0
    FontData.Style = []
    FontData.Alignment = haGeneral
    FontData.WrapText = False
    FontSummary.Charset = DEFAULT_CHARSET
    FontSummary.Color = clWindowText
    FontSummary.Height = 1
    FontSummary.Name = 'Tahoma'
    FontSummary.Orientation = 0
    FontSummary.Style = []
    FontSummary.Alignment = haGeneral
    FontSummary.WrapText = False
    BorderSummary.BackAlternateColor = clBlack
    SummarySelection = ssNone
    SummaryCalculation = scSUM
    FontFooter.Charset = DEFAULT_CHARSET
    FontFooter.Color = clWindowText
    FontFooter.Height = 1
    FontFooter.Name = 'Tahoma'
    FontFooter.Orientation = 0
    FontFooter.Style = []
    FontFooter.Alignment = haGeneral
    FontFooter.WrapText = False
    BorderFooter.BackAlternateColor = clBlack
    MergeFooterCells = True
    FontGroup.Charset = DEFAULT_CHARSET
    FontGroup.Color = clWindowText
    FontGroup.Height = 1
    FontGroup.Name = 'Tahoma'
    FontGroup.Orientation = 0
    FontGroup.Style = []
    FontGroup.Alignment = haGeneral
    FontGroup.WrapText = False
    BorderGroup.BackAlternateColor = clBlack
    GroupOptions.ClearContents = True
    GroupOptions.BorderRange = bsRow
    GroupOptions.IntervalFontSize = 2
    Left = 776
    Top = 568
  end
end

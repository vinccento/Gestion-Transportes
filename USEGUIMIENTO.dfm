object f_seguimiento: Tf_seguimiento
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Seguimiento de expediciones'
  ClientHeight = 594
  ClientWidth = 980
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 479
    Top = 125
    Width = 89
    Height = 13
    Caption = 'Situacion del envio'
  end
  object Label4: TLabel
    Left = 479
    Top = 152
    Width = 60
    Height = 13
    Caption = 'Comentarios'
  end
  object Shape2: TShape
    Left = 952
    Top = 81
    Width = 20
    Height = 18
    Brush.Color = clYellow
    Pen.Style = psClear
  end
  object Shape1: TShape
    Left = 954
    Top = 113
    Width = 20
    Height = 18
    Brush.Color = clLime
    Pen.Style = psClear
  end
  object Shape3: TShape
    Left = 954
    Top = 179
    Width = 20
    Height = 18
    Brush.Color = clAqua
    Pen.Style = psClear
  end
  object Shape4: TShape
    Left = 720
    Top = 56
    Width = 57
    Height = 17
    Brush.Color = 5953679
  end
  object Label5: TLabel
    Left = 479
    Top = 179
    Width = 70
    Height = 13
    Caption = 'Fecha entrega'
  end
  object RadioGroup1: TRadioGroup
    Left = 854
    Top = 27
    Width = 121
    Height = 189
    Caption = 'Estados'
    Items.Strings = (
      'En Tansito'
      'En Reparto'
      'Entregado'
      'Incidencia'
      'En preparaci'#243'n')
    TabOrder = 6
    OnClick = RadioGroup1Click
  end
  object Panel1: TPanel
    Left = 16
    Top = 32
    Width = 665
    Height = 73
    Caption = ' '
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 8
      Width = 39
      Height = 13
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 192
      Top = 8
      Width = 95
      Height = 13
      Caption = 'Rango de Fechas'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object ecliente: TEdit
      Left = 14
      Top = 27
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyDown = FormKeyDown
      OnKeyPress = eclienteKeyPress
    end
    object Panel2: TPanel
      Left = 192
      Top = 27
      Width = 313
      Height = 41
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 1
      object fechatimer: TDateTimePicker
        Left = 24
        Top = 11
        Width = 127
        Height = 21
        Date = 42182.983114363430000000
        Time = 42182.983114363430000000
        Checked = False
        TabOrder = 0
        TabStop = False
      end
      object fechatimer_final: TDateTimePicker
        Left = 175
        Top = 11
        Width = 122
        Height = 21
        Date = 42184.826430115740000000
        Time = 42184.826430115740000000
        TabOrder = 1
        TabStop = False
      end
    end
    object Button2: TButton
      Left = 558
      Top = 27
      Width = 75
      Height = 25
      Caption = 'Busca'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 706
    Top = 561
    Width = 234
    Height = 25
    DataSource = conesiones.DATA_SEGUI
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 280
    Width = 969
    Height = 275
    DataSource = conesiones.DATA_SEGUI
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'FECHA_ALB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONSIGNA'
        Title.Caption = 'DESTINATARIO'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOC_CONSIG'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BULTOS'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KILOS'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'F_CONCERT'
        Title.Caption = 'ENTREGA'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTADO'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIFERENCIA'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 572
    Top = 149
    Width = 268
    Height = 21
    DataField = 'COMENTARIO_SEGUI'
    DataSource = conesiones.DATA_SEGUI
    TabOrder = 3
    OnKeyDown = FormKeyDown
    OnKeyPress = DBEdit1KeyPress
  end
  object Panel3: TPanel
    Left = 16
    Top = 125
    Width = 457
    Height = 108
    TabOrder = 4
    object Label12: TLabel
      Left = 23
      Top = 78
      Width = 43
      Height = 13
      Caption = 'C. Postal'
    end
    object Label8: TLabel
      Left = 23
      Top = 51
      Width = 66
      Height = 13
      Caption = 'Consignatario'
    end
    object Label10: TLabel
      Left = 23
      Top = 14
      Width = 52
      Height = 13
      Caption = 'Referencia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dbpoblacion: TDBEdit
      Left = 97
      Top = 75
      Width = 268
      Height = 21
      DataField = 'LOC_CONSIG'
      DataSource = conesiones.DATA_SEGUI
      Enabled = False
      TabOrder = 0
    end
    object dbconsignatario: TDBEdit
      Left = 95
      Top = 48
      Width = 288
      Height = 21
      DataField = 'CONSIGNA'
      DataSource = conesiones.DATA_SEGUI
      Enabled = False
      TabOrder = 1
    end
    object dbreferencia: TDBEdit
      Left = 97
      Top = 14
      Width = 121
      Height = 21
      DataField = 'REFERENCIA'
      DataSource = conesiones.DATA_SEGUI
      Enabled = False
      TabOrder = 2
    end
  end
  object DBEdit2: TDBEdit
    Left = 574
    Top = 122
    Width = 121
    Height = 21
    DataField = 'ESTADO'
    DataSource = conesiones.DATA_SEGUI
    Enabled = False
    TabOrder = 5
    OnChange = DBEdit2Change
    OnKeyDown = FormKeyDown
    OnKeyPress = DBEdit2KeyPress
  end
  object Button1: TButton
    Left = 773
    Top = 198
    Width = 75
    Height = 25
    Caption = 'Exportar'
    TabOrder = 7
    OnClick = Button1Click
  end
  object DBEdit33: TDBEdit
    Left = 498
    Top = 239
    Width = 234
    Height = 27
    DataField = 'PROVEEDOR'
    DataSource = conesiones.DATA_SEGUI
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object DBEdit3: TDBEdit
    Left = 574
    Top = 176
    Width = 121
    Height = 21
    DataField = 'F_concert'
    DataSource = conesiones.DATA_SEGUI
    TabOrder = 9
  end
  object Edit1: TEdit
    Left = 800
    Top = 256
    Width = 121
    Height = 21
    TabOrder = 10
    Text = 'Edit1'
  end
  object DBEdit4: TDBEdit
    Left = 574
    Top = 203
    Width = 121
    Height = 21
    DataField = 'diferencia'
    DataSource = conesiones.DATA_SEGUI
    TabOrder = 11
  end
  object e_seguimiento: TscExcelExport
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
    OnGetCellStyleEvent = e_seguimientoGetCellStyleEvent
    Left = 912
    Top = 208
  end
end

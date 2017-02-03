object f_busca_almacenaje: Tf_busca_almacenaje
  Left = 0
  Top = 0
  Caption = 'Busqueda de Entradas en Almacenaje'
  ClientHeight = 337
  ClientWidth = 761
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid2: TDBGrid
    Left = 231
    Top = 8
    Width = 490
    Height = 178
    Color = clGradientActiveCaption
    DataSource = conesiones.data_control_almacen_grilla
    DragMode = dmAutomatic
    DrawingStyle = gdsGradient
    FixedColor = clMedGray
    GradientEndColor = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyPress = DBGrid2KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'fecha_llegada'
        Title.Caption = 'Fecha de Entrada'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'num_compra'
        Title.Caption = '      Compra/Albar'#225'n'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'producto'
        Title.Caption = '                 Producto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 43
    Top = 232
    Width = 698
    Height = 81
    TabOrder = 4
  end
  object RadioGroup1: TRadioGroup
    Left = 25
    Top = 73
    Width = 200
    Height = 113
    Caption = 'Parametros de Busqueda'
    Ctl3D = True
    DragMode = dmAutomatic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
  end
  object rporcopra: TRadioButton
    Left = 35
    Top = 99
    Width = 169
    Height = 17
    Caption = 'Por N'#250'mero de compra/Albar'#225'n'
    Checked = True
    TabOrder = 1
    TabStop = True
  end
  object rporproducto: TRadioButton
    Left = 35
    Top = 122
    Width = 169
    Height = 17
    Caption = 'Por nombre de Producto'
    TabOrder = 2
  end
  object btnbusca: TButton
    Left = 135
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Buscar'
    Enabled = False
    TabOrder = 6
    OnClick = btnbuscaClick
    OnKeyPress = btnbuscaKeyPress
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object porlote: TRadioButton
    Left = 35
    Top = 145
    Width = 169
    Height = 17
    Caption = 'Por Lote'
    TabOrder = 7
  end
end

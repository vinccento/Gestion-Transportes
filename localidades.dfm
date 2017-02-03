object flocalidades: Tflocalidades
  Left = 0
  Top = 0
  Caption = 'Mantenimiento de Localidades'
  ClientHeight = 535
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000000020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF007777
    7777777777777777777777777777777777777777777777777777777777770000
    00000000000000000000000000000000000F00000F00000000000000F0000006
    00FFF000FFF000000000000FFF000006000F00000F00000000000000F0000000
    6700077700000000000000000000000099777977977977977977977977970000
    07777777777777777777777777774444444444444490000444444444444B4444
    444444444440004444444444444B444444444444444000444444444444444444
    4444444444400044444444444444444444444444444000444444444444444444
    4444444444400044444444444444444444444444444000444444444044F04444
    44444444444000444444444444F0444444444444444000444444FFFF44F04444
    44444444444000444444FFFF44F0444444444444444000444444FFFF44F04444
    44444444444000444444FFFF44F0444444444444444000444444FFFF44F04444
    4444444444400044444444444440444444444444444000444444444444404444
    4444444444400004444444444900444444444444444000000000000000004444
    4444444444900000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000FC71FFE3F820FFC1E820FFC1E820FFC1F001FFE3F0000000F800
    00000001E0000001C0000001C0000001C0000001C0000001C0000001C0010001
    C0010001C0010001C0010001C0010001C0010001C0010001C0010001C0010001
    E0030001FFFF0001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label9: TLabel
    Left = 28
    Top = 19
    Width = 115
    Height = 13
    Caption = 'Par'#225'metro de B'#250'squeda'
  end
  object Panel1: TPanel
    Left = 16
    Top = 5
    Width = 319
    Height = 46
    TabOrder = 2
  end
  object GRILLA: TDBGrid
    Left = 28
    Top = 165
    Width = 613
    Height = 344
    Color = clSkyBlue
    DataSource = conesiones.data_localidades
    DrawingStyle = gdsGradient
    FixedColor = clWhite
    GradientEndColor = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CodPostal'
        Title.Caption = 'C.P.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Municipio'
        Title.Caption = '                                Municipio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 500
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodProv'
        Title.Caption = 'PROV'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 36
        Visible = True
      end>
  end
  object BUSCA_NOMBRE: TEdit
    Left = 163
    Top = 16
    Width = 164
    Height = 21
    TabOrder = 1
    OnExit = BUSCA_NOMBREExit
    OnKeyPress = BUSCA_NOMBREKeyPress
  end
  object MUNICIPIO: TDBEdit
    Left = 83
    Top = 84
    Width = 438
    Height = 21
    DataField = 'Municipio'
    DataSource = conesiones.data_localidades
    TabOrder = 3
  end
  object CODIGOPOSTAL: TDBEdit
    Left = 83
    Top = 57
    Width = 121
    Height = 21
    DataField = 'CodPostal'
    DataSource = conesiones.data_localidades
    TabOrder = 4
    OnChange = CODIGOPOSTALChange
  end
  object PROVINCIA: TDBEdit
    Left = 83
    Top = 111
    Width = 121
    Height = 21
    DataField = 'CodProv'
    DataSource = conesiones.data_localidades
    TabOrder = 5
  end
  object DBEdit1: TDBEdit
    Left = 83
    Top = 138
    Width = 121
    Height = 21
    DataField = 'PROV'
    DataSource = conesiones.MyDataSource1
    TabOrder = 6
  end
  object Button1: TButton
    Left = 528
    Top = 26
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 7
  end
end

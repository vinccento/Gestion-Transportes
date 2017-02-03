object f_parametros_almacen: Tf_parametros_almacen
  Left = 0
  Top = 0
  Caption = 'Par'#225'metros de Almacenaje.'
  ClientHeight = 553
  ClientWidth = 597
  Color = clGradientActiveCaption
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
  object Cliente: TLabel
    Left = 276
    Top = 11
    Width = 33
    Height = 13
    Caption = 'Cliente'
  end
  object Nombre: TLabel
    Left = 276
    Top = 38
    Width = 33
    Height = 13
    Caption = 'Cliente'
  end
  object combo1: TDBLookupComboBox
    Left = 24
    Top = 24
    Width = 177
    Height = 21
    Cursor = crDrag
    DataField = 'nombre'
    DropDownRows = 8
    Enabled = False
    KeyField = 'NOMBRE'
    ListField = 'NOMBRE'
    ListSource = conesiones.data_clientes_almacenaje
    TabOrder = 0
    Visible = False
  end
  object Panel1: TPanel
    Left = 8
    Top = 72
    Width = 305
    Height = 249
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 56
      Width = 100
      Height = 13
      Caption = 'Almacenaje bulto/dia'
    end
    object Label2: TLabel
      Left = 24
      Top = 88
      Width = 103
      Height = 13
      Caption = 'Manipulacion/Entrada'
    end
    object Label3: TLabel
      Left = 24
      Top = 120
      Width = 93
      Height = 13
      Caption = 'Manipulacion/Salida'
    end
    object Label4: TLabel
      Left = 24
      Top = 152
      Width = 64
      Height = 13
      Caption = 'Bultos Picking'
    end
    object Label5: TLabel
      Left = 24
      Top = 184
      Width = 64
      Height = 13
      Caption = 'Palets Picking'
    end
    object Label6: TLabel
      Left = 24
      Top = 212
      Width = 31
      Height = 13
      Caption = 'Extras'
    end
    object Label7: TLabel
      Left = 25
      Top = 16
      Width = 248
      Height = 16
      Caption = 'PARAMETROS ALMACENAJE ESTANDAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 11
      Top = 13
      Width = 282
      Height = 25
    end
    object DBEdit1: TDBEdit
      Left = 144
      Top = 53
      Width = 65
      Height = 21
      DataField = 'ALMACENAJE_DIA'
      DataSource = conesiones.data_clientes_almacenaje
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 144
      Top = 83
      Width = 65
      Height = 21
      DataField = 'MANIPULACION_ENTRADA'
      DataSource = conesiones.data_clientes_almacenaje
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 144
      Top = 118
      Width = 65
      Height = 21
      DataField = 'MANIPULACION_SALIDA'
      DataSource = conesiones.data_clientes_almacenaje
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 144
      Top = 151
      Width = 65
      Height = 21
      DataField = 'CAJA_PICKING'
      DataSource = conesiones.data_clientes_almacenaje
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 144
      Top = 184
      Width = 65
      Height = 21
      DataField = 'PALET_PICKIND'
      DataSource = conesiones.data_clientes_almacenaje
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 144
      Top = 211
      Width = 65
      Height = 21
      DataField = 'EXTRA'
      DataSource = conesiones.data_clientes_almacenaje
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 319
    Top = 72
    Width = 257
    Height = 473
    TabOrder = 2
    object Panel3: TPanel
      Left = 16
      Top = 15
      Width = 225
      Height = 113
      TabOrder = 0
      object Label8: TLabel
        Left = 16
        Top = 11
        Width = 123
        Height = 13
        Caption = 'Descarga cont. 40'#39' granel'
      end
      object Label9: TLabel
        Left = 16
        Top = 36
        Width = 123
        Height = 13
        Caption = 'Descarga cont. 20'#39' granel'
      end
      object Label10: TLabel
        Left = 16
        Top = 61
        Width = 142
        Height = 13
        Caption = 'Descarga cont. 40'#39' paletizado'
      end
      object Label11: TLabel
        Left = 16
        Top = 87
        Width = 142
        Height = 13
        Caption = 'Descarga cont. 20'#39' peletizado'
      end
      object DBEdit7: TDBEdit
        Left = 164
        Top = 8
        Width = 41
        Height = 21
        DataField = '40GRANEL'
        DataSource = conesiones.data_clientes_almacenaje
        TabOrder = 0
      end
      object DBEdit8: TDBEdit
        Left = 164
        Top = 33
        Width = 41
        Height = 21
        DataField = '20GRANEL'
        DataSource = conesiones.data_clientes_almacenaje
        TabOrder = 1
      end
      object DBEdit9: TDBEdit
        Left = 164
        Top = 58
        Width = 41
        Height = 21
        DataField = '40PALET'
        DataSource = conesiones.data_clientes_almacenaje
        TabOrder = 2
      end
      object DBEdit10: TDBEdit
        Left = 164
        Top = 85
        Width = 41
        Height = 21
        DataField = '20PALET'
        DataSource = conesiones.data_clientes_almacenaje
        TabOrder = 3
      end
    end
    object Panel4: TPanel
      Left = 16
      Top = 167
      Width = 225
      Height = 258
      TabOrder = 1
      object Label12: TLabel
        Left = 16
        Top = 14
        Width = 67
        Height = 13
        Caption = 'Palet Europeo'
      end
      object Label13: TLabel
        Left = 16
        Top = 41
        Width = 63
        Height = 13
        Caption = 'Palet Pl'#225'stico'
      end
      object Label15: TLabel
        Left = 16
        Top = 69
        Width = 86
        Height = 13
        Caption = 'Palet Homologado'
      end
      object Label16: TLabel
        Left = 16
        Top = 96
        Width = 52
        Height = 13
        Caption = 'Palet Chep'
      end
      object Label17: TLabel
        Left = 16
        Top = 123
        Width = 73
        Height = 13
        Caption = 'Palet Fumigado'
      end
      object Label18: TLabel
        Left = 16
        Top = 150
        Width = 77
        Height = 13
        Caption = 'Palet Americano'
      end
      object Label19: TLabel
        Left = 16
        Top = 177
        Width = 33
        Height = 13
        Caption = 'Cart'#243'n'
      end
      object Label20: TLabel
        Left = 16
        Top = 204
        Width = 40
        Height = 13
        Caption = 'Retr'#225'ctil'
      end
      object Label21: TLabel
        Left = 16
        Top = 231
        Width = 97
        Height = 13
        Caption = 'repaletizado  por TN'
      end
      object DBEdit11: TDBEdit
        Left = 136
        Top = 11
        Width = 41
        Height = 21
        DataField = 'EUROPEO'
        DataSource = conesiones.data_clientes_almacenaje
        TabOrder = 0
      end
      object DBEdit12: TDBEdit
        Left = 136
        Top = 38
        Width = 41
        Height = 21
        DataField = 'PLASTICO'
        DataSource = conesiones.data_clientes_almacenaje
        TabOrder = 1
      end
      object DBEdit14: TDBEdit
        Left = 136
        Top = 93
        Width = 41
        Height = 21
        DataField = 'CHEP'
        DataSource = conesiones.data_clientes_almacenaje
        TabOrder = 2
      end
      object DBEdit15: TDBEdit
        Left = 136
        Top = 120
        Width = 41
        Height = 21
        DataField = 'FUMIGADO'
        DataSource = conesiones.data_clientes_almacenaje
        TabOrder = 3
      end
      object DBEdit16: TDBEdit
        Left = 136
        Top = 66
        Width = 41
        Height = 21
        DataField = 'HOMOLOGADO'
        DataSource = conesiones.data_clientes_almacenaje
        TabOrder = 4
      end
      object DBEdit17: TDBEdit
        Left = 136
        Top = 147
        Width = 41
        Height = 21
        DataField = 'AMERICANO'
        DataSource = conesiones.data_clientes_almacenaje
        TabOrder = 5
      end
      object DBEdit18: TDBEdit
        Left = 136
        Top = 228
        Width = 41
        Height = 21
        DataField = 'REPALET'
        DataSource = conesiones.data_clientes_almacenaje
        TabOrder = 6
      end
      object DBEdit19: TDBEdit
        Left = 136
        Top = 201
        Width = 41
        Height = 21
        DataField = 'RETRACTIL'
        DataSource = conesiones.data_clientes_almacenaje
        TabOrder = 7
      end
      object DBEdit20: TDBEdit
        Left = 136
        Top = 174
        Width = 41
        Height = 21
        DataField = 'CARTON'
        DataSource = conesiones.data_clientes_almacenaje
        TabOrder = 8
      end
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 41
    Top = 339
    Width = 240
    Height = 25
    DataSource = conesiones.data_clientes_almacenaje
    TabOrder = 3
  end
  object btn_busca: TButton
    Left = 8
    Top = 394
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 4
    OnClick = btn_buscaClick
  end
  object DBEdit21: TDBEdit
    Left = 335
    Top = 8
    Width = 53
    Height = 21
    DataField = 'CLIENTE'
    DataSource = conesiones.data_clientes_almacenaje
    TabOrder = 5
  end
  object DBEdit22: TDBEdit
    Left = 335
    Top = 35
    Width = 241
    Height = 21
    DataField = 'NOMBRE'
    DataSource = conesiones.data_clientes_almacenaje
    TabOrder = 6
  end
end

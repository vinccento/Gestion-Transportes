object TARIFAS: TTARIFAS
  Left = 0
  Top = 0
  Caption = 'TARIFAS'
  ClientHeight = 318
  ClientWidth = 732
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 237
    Width = 240
    Height = 25
    DataSource = conesiones.data_tarifa_prov
    TabOrder = 0
  end
  object PANEL_ENTRADA: TPanel
    Left = 24
    Top = 8
    Width = 209
    Height = 41
    TabOrder = 1
    object TARIFA: TLabel
      Left = 16
      Top = 15
      Width = 37
      Height = 13
      Caption = 'TARIFA'
    end
    object ENTRADA_PROV: TEdit
      Left = 80
      Top = 12
      Width = 121
      Height = 21
      TabOrder = 0
      Text = ' '
      OnKeyPress = ENTRADA_PROVKeyPress
    end
  end
  object PANEL_DATOS: TPanel
    Left = 24
    Top = 72
    Width = 209
    Height = 145
    TabOrder = 2
    object PROVEEDOR: TLabel
      Left = 16
      Top = 8
      Width = 61
      Height = 13
      Caption = 'PROVEEDOR'
    end
    object baremo: TLabel
      Left = 16
      Top = 36
      Width = 42
      Height = 13
      Caption = 'BAREMO'
    end
    object tramo: TLabel
      Left = 16
      Top = 62
      Width = 36
      Height = 13
      Caption = 'TRAMO'
    end
    object tipo: TLabel
      Left = 16
      Top = 89
      Width = 24
      Height = 13
      Caption = 'TIPO'
    end
    object importe: TLabel
      Left = 16
      Top = 116
      Width = 45
      Height = 13
      Caption = 'IMPORTE'
    end
    object DBEdit1: TDBEdit
      Left = 107
      Top = 5
      Width = 94
      Height = 21
      DataField = 'PROVEEDOR'
      DataSource = conesiones.data_tarifa_prov
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 107
      Top = 32
      Width = 41
      Height = 21
      DataField = 'BAREMO'
      DataSource = conesiones.data_tarifa_prov
      TabOrder = 1
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit3: TDBEdit
      Left = 107
      Top = 59
      Width = 57
      Height = 21
      DataField = 'TRAMO'
      DataSource = conesiones.data_tarifa_prov
      TabOrder = 2
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit5: TDBEdit
      Left = 107
      Top = 113
      Width = 57
      Height = 21
      DataField = 'IMPORTE'
      DataSource = conesiones.data_tarifa_prov
      TabOrder = 4
      OnKeyPress = DBEdit5KeyPress
    end
    object DBEdit4: TDBEdit
      Left = 107
      Top = 86
      Width = 57
      Height = 21
      DataField = 'TIPO'
      DataSource = conesiones.data_tarifa_prov
      TabOrder = 3
      OnKeyPress = DBEdit2KeyPress
    end
  end
  object Button1: TButton
    Left = 256
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Alta tarifas'
    TabOrder = 3
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 345
    Top = 39
    Width = 377
    Height = 271
    DataSource = conesiones.data_tarifa_prov
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 256
    Top = 48
    Width = 75
    Height = 33
    Caption = 'Asigna Poblaciones'
    TabOrder = 5
    WordWrap = True
    OnClick = Button2Click
  end
end

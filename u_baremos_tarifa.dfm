object BAREMOS_PROV: TBAREMOS_PROV
  Left = 0
  Top = 0
  Caption = 'ASIGNACION DE BAREMOS A TARIFAS'
  ClientHeight = 356
  ClientWidth = 673
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 8
    Width = 28
    Height = 13
    Caption = 'Tarifa'
  end
  object Edit1: TEdit
    Left = 88
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Panel1: TPanel
    Left = 24
    Top = 57
    Width = 185
    Height = 128
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 38
      Width = 56
      Height = 13
      Caption = 'c'#243'digo prov'
    end
    object Label3: TLabel
      Left = 8
      Top = 65
      Width = 36
      Height = 13
      Caption = 'Baremo'
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 8
      Width = 81
      Height = 21
      TabStop = False
      DataField = 'PROVEEDOR'
      DataSource = conesiones.data_baremos
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 112
      Top = 35
      Width = 57
      Height = 21
      DataField = 'CODIGO'
      DataSource = conesiones.data_baremos
      TabOrder = 1
      OnKeyPress = DBEdit2KeyPress
    end
    object DBEdit3: TDBEdit
      Left = 88
      Top = 62
      Width = 81
      Height = 21
      DataField = 'BAREMO'
      DataSource = conesiones.data_baremos
      TabOrder = 2
      OnKeyPress = DBEdit3KeyPress
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 89
      Width = 161
      Height = 21
      DataField = 'prov'
      DataSource = conesiones.data_baremos
      TabOrder = 3
      OnKeyPress = DBEdit4KeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 248
    Top = 8
    Width = 393
    Height = 288
    DataSource = conesiones.data_baremos
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PROVEEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAREMO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prov'
        Title.Caption = 'PROVINCIA'
        Width = 150
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 376
    Top = 302
    Width = 240
    Height = 25
    DataSource = conesiones.data_baremos
    TabOrder = 3
  end
  object Button1: TButton
    Left = 24
    Top = 208
    Width = 75
    Height = 25
    Caption = 'A'#241'ade'
    TabOrder = 4
    OnClick = Button1Click
  end
end

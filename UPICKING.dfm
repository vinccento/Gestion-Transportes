object tpiking: Ttpiking
  Left = 0
  Top = 0
  Caption = 'PICKIN/CONSUMIBLES EN ALMACENAJE'
  ClientHeight = 297
  ClientWidth = 528
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 377
    Height = 281
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    object Panel3: TPanel
      Left = 16
      Top = 11
      Width = 329
      Height = 70
      Enabled = False
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 33
        Height = 13
        Caption = 'Cliente'
      end
      object Label2: TLabel
        Left = 24
        Top = 43
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object dbcliente: TDBEdit
        Left = 80
        Top = 13
        Width = 121
        Height = 21
        DataField = 'CLIENTE'
        DataSource = conesiones.data_todosalb
        TabOrder = 0
      end
      object dbnombre2: TDBEdit
        Left = 80
        Top = 40
        Width = 241
        Height = 21
        DataField = 'NOMBRE'
        TabOrder = 1
      end
    end
    object Panel4: TPanel
      Left = 16
      Top = 87
      Width = 329
      Height = 186
      TabOrder = 1
      object Label3: TLabel
        Left = 8
        Top = 8
        Width = 98
        Height = 13
        Caption = 'Cuenta Almacenaje?'
      end
      object Label4: TLabel
        Left = 8
        Top = 40
        Width = 102
        Height = 13
        Caption = 'Palets de Almacenaje'
      end
      object Label5: TLabel
        Left = 8
        Top = 72
        Width = 93
        Height = 13
        Caption = 'Palets Manipulaci'#243'n'
      end
      object Label6: TLabel
        Left = 8
        Top = 99
        Width = 77
        Height = 13
        Caption = 'Cajas de Picking'
      end
      object Label7: TLabel
        Left = 6
        Top = 128
        Width = 79
        Height = 13
        Caption = 'Palets de Picking'
      end
      object Label8: TLabel
        Left = 8
        Top = 160
        Width = 79
        Height = 13
        Caption = 'Otros conceptos'
      end
      object Label9: TLabel
        Left = 199
        Top = 8
        Width = 43
        Height = 13
        Caption = 'Entrada?'
      end
      object dbcuenta: TDBEdit
        Left = 152
        Top = 5
        Width = 25
        Height = 21
        DataField = 'CUENTA_ALM'
        DataSource = conesiones.data_todosalb
        TabOrder = 0
        OnKeyPress = dbcuentaKeyPress
      end
      object dbpaletalm: TDBEdit
        Left = 152
        Top = 37
        Width = 25
        Height = 21
        DataField = 'NUM_PALET'
        DataSource = conesiones.data_todosalb
        TabOrder = 1
        OnChange = dbpaletalmChange
        OnKeyPress = dbcuentaKeyPress
      end
      object dbmanipula: TDBEdit
        Left = 152
        Top = 69
        Width = 25
        Height = 21
        DataField = 'PALET_MANIP'
        DataSource = conesiones.data_todosalb
        TabOrder = 2
        OnChange = dbpaletalmChange
        OnKeyPress = dbcuentaKeyPress
      end
      object dbcajapi: TDBEdit
        Left = 152
        Top = 98
        Width = 25
        Height = 21
        DataField = 'NUM_PICKIN'
        DataSource = conesiones.data_todosalb
        TabOrder = 3
        OnChange = dbpaletalmChange
        OnKeyPress = dbcuentaKeyPress
      end
      object dbpaltpi: TDBEdit
        Left = 152
        Top = 125
        Width = 25
        Height = 21
        DataField = 'PALTET_PICKING'
        DataSource = conesiones.data_todosalb
        TabOrder = 4
        OnChange = dbpaletalmChange
        OnKeyPress = dbcuentaKeyPress
      end
      object DBEdit2: TDBEdit
        Left = 152
        Top = 157
        Width = 25
        Height = 21
        TabOrder = 5
        OnKeyPress = dbcuentaKeyPress
      end
      object DBEdit1: TDBEdit
        Left = 264
        Top = 5
        Width = 25
        Height = 21
        DataField = 'ENTRADA'
        DataSource = conesiones.data_todosalb
        TabOrder = 6
        OnKeyPress = dbcuentaKeyPress
      end
    end
  end
  object Panel2: TPanel
    Left = 408
    Top = 16
    Width = 112
    Height = 250
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 1
    object Button1: TButton
      Left = 16
      Top = 26
      Width = 75
      Height = 25
      Caption = 'Actualizar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 16
      Top = 75
      Width = 75
      Height = 25
      Caption = 'Cerrar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
end

object parametros_informes: Tparametros_informes
  Left = 0
  Top = 0
  Align = alCustom
  Caption = 'Parametros de B'#250'squeda.'
  ClientHeight = 310
  ClientWidth = 509
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 68
    Top = 138
    Width = 57
    Height = 13
    Caption = 'Fecha Inicio'
  end
  object Label4: TLabel
    Left = 68
    Top = 168
    Width = 54
    Height = 13
    Caption = 'Fecha Final'
  end
  object Label1: TLabel
    Left = 68
    Top = 82
    Width = 50
    Height = 13
    Caption = 'Proveedor'
  end
  object Label2: TLabel
    Left = 68
    Top = 110
    Width = 58
    Height = 13
    Caption = 'Destinatario'
  end
  object Edit1: TEdit
    Left = 176
    Top = 79
    Width = 201
    Height = 21
    TabOrder = 0
  end
  object FECHAINICIAL: TDateTimePicker
    Left = 176
    Top = 134
    Width = 97
    Height = 21
    Date = 42236.328922083330000000
    Time = 42236.328922083330000000
    ShowCheckbox = True
    TabOrder = 1
  end
  object FECHAFINAL: TDateTimePicker
    Left = 176
    Top = 161
    Width = 97
    Height = 21
    Date = 42236.329018472220000000
    Time = 42236.329018472220000000
    ShowCheckbox = True
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 8
    Top = 200
    Width = 475
    Height = 81
    TabOrder = 3
    TabStop = True
    object Label5: TLabel
      Left = 24
      Top = 8
      Width = 191
      Height = 13
      Caption = 'INDICAR PAR'#193'METROS DE BUSQUEDA:'
    end
  end
  object btn_listar: TButton
    Left = 426
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Listar'
    TabOrder = 4
    OnClick = btn_listarClick
  end
  object bta_cancelar: TButton
    Left = 426
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = bta_cancelarClick
  end
  object Panel2: TPanel
    Left = 24
    Top = 8
    Width = 265
    Height = 65
    TabOrder = 6
  end
  object opcion_remitente: TRadioButton
    Left = 32
    Top = 31
    Width = 185
    Height = 17
    Caption = 'Buscar por Nombre de cliente'
    Checked = True
    TabOrder = 7
    TabStop = True
  end
  object opcion_codigo: TRadioButton
    Left = 32
    Top = 8
    Width = 185
    Height = 17
    Caption = 'Buscar por c'#243'digo de cliente'
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 8
  end
  object chksincobros: TCheckBox
    Left = 32
    Top = 233
    Width = 97
    Height = 17
    Caption = 'Sin Cobros'
    TabOrder = 9
  end
  object Edit2: TEdit
    Left = 176
    Top = 107
    Width = 201
    Height = 21
    TabOrder = 10
  end
end

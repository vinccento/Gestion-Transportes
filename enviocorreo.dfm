object f_envio: Tf_envio
  Left = 0
  Top = 0
  Caption = 'Envio de email'
  ClientHeight = 208
  ClientWidth = 686
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
  object Label1: TLabel
    Left = 24
    Top = 8
    Width = 81
    Height = 13
    Caption = 'DESTINATARIOS'
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 41
    Height = 13
    Caption = 'ASUNTO'
  end
  object Label3: TLabel
    Left = 24
    Top = 120
    Width = 110
    Height = 13
    Caption = 'CUERPO DEL MENSAJE'
  end
  object Button1: TButton
    Left = 568
    Top = 8
    Width = 89
    Height = 25
    Caption = 'ENVIAR EMAIL'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 143
    Top = 8
    Width = 197
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 143
    Top = 30
    Width = 197
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 143
    Top = 51
    Width = 197
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 143
    Top = 78
    Width = 466
    Height = 21
    TabOrder = 4
    Text = 'orden de Carga'
  end
  object Memo1: TMemo
    Left = 140
    Top = 117
    Width = 469
    Height = 83
    Lines.Strings = (
      'Memo1')
    TabOrder = 5
  end
end

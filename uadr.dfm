object f_adr: Tf_adr
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Mantenimiento tabla productos ADR'
  ClientHeight = 476
  ClientWidth = 936
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = Edit1KeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 79
    Width = 833
    Height = 232
    TabOrder = 1
    object Label2: TLabel
      Left = 21
      Top = 16
      Width = 37
      Height = 13
      Caption = 'N'#186' ONU'
    end
    object Label3: TLabel
      Left = 21
      Top = 43
      Width = 61
      Height = 13
      Caption = 'Nombre Esp.'
    end
    object Label4: TLabel
      Left = 21
      Top = 70
      Width = 61
      Height = 13
      Caption = 'Nombre FR..'
    end
    object Label5: TLabel
      Left = 21
      Top = 97
      Width = 60
      Height = 13
      Caption = 'Nombre Ing.'
    end
    object Label6: TLabel
      Left = 21
      Top = 124
      Width = 112
      Height = 13
      Caption = 'Codigo de Clasificaci'#243'n '
    end
    object Label7: TLabel
      Left = 277
      Top = 124
      Width = 90
      Height = 13
      Caption = 'Grupo de Embalaje'
    end
    object Label8: TLabel
      Left = 21
      Top = 151
      Width = 40
      Height = 13
      Caption = 'Etiqueta'
    end
    object Label9: TLabel
      Left = 277
      Top = 151
      Width = 62
      Height = 13
      Caption = 'C'#243'digo T'#250'nel'
    end
    object Label10: TLabel
      Left = 21
      Top = 180
      Width = 77
      Height = 13
      Caption = 'Cat. Transporte'
    end
    object dbonu: TDBEdit
      Left = 93
      Top = 13
      Width = 121
      Height = 21
      DataField = 'ONU'
      DataSource = conesiones.data_tablaadr
      TabOrder = 0
      OnExit = dbonuExit
    end
    object dbnombre: TDBEdit
      Left = 93
      Top = 40
      Width = 723
      Height = 21
      DataField = 'NOMBRE'
      DataSource = conesiones.data_tablaadr
      TabOrder = 1
      OnExit = dbonuExit
    end
    object dbnom: TDBEdit
      Left = 93
      Top = 67
      Width = 723
      Height = 21
      DataField = 'NOM'
      DataSource = conesiones.data_tablaadr
      TabOrder = 2
      OnExit = dbonuExit
    end
    object dbname: TDBEdit
      Left = 93
      Top = 94
      Width = 723
      Height = 21
      DataField = 'NAME'
      DataSource = conesiones.data_tablaadr
      TabOrder = 3
      OnExit = dbonuExit
    end
    object dbcodclas: TDBEdit
      Left = 139
      Top = 121
      Width = 121
      Height = 21
      DataField = 'COD_CLASI'
      DataSource = conesiones.data_tablaadr
      TabOrder = 4
      OnExit = dbonuExit
    end
    object dbgrupo: TDBEdit
      Left = 388
      Top = 121
      Width = 121
      Height = 21
      DataField = 'G_EMBALAJE'
      DataSource = conesiones.data_tablaadr
      TabOrder = 5
      OnExit = dbonuExit
    end
    object dbetiqueta: TDBEdit
      Left = 138
      Top = 148
      Width = 121
      Height = 21
      DataField = 'ETIQUETA'
      DataSource = conesiones.data_tablaadr
      TabOrder = 6
      OnExit = dbonuExit
    end
    object dbtunel: TDBEdit
      Left = 388
      Top = 148
      Width = 121
      Height = 21
      DataField = 'TUNEL'
      DataSource = conesiones.data_tablaadr
      TabOrder = 7
      OnExit = dbonuExit
    end
    object dbcategoria: TDBEdit
      Left = 138
      Top = 175
      Width = 121
      Height = 21
      DataField = 'CAT_TTE'
      DataSource = conesiones.data_tablaadr
      TabOrder = 8
      OnExit = dbonuExit
    end
  end
  object panel_busqueda: TPanel
    Left = 8
    Top = 11
    Width = 201
    Height = 57
    BorderWidth = 10
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 22
      Width = 37
      Height = 13
      Caption = 'N'#186' ONU'
    end
    object Edit1: TEdit
      Left = 59
      Top = 19
      Width = 121
      Height = 21
      TabOrder = 0
      OnExit = Edit1Exit
      OnKeyDown = Edit1KeyDown
      OnKeyPress = Edit1KeyPress
    end
  end
  object GRILLA_ADR: TDBGrid
    Left = 29
    Top = 317
    Width = 812
    Height = 120
    Color = clGradientInactiveCaption
    DataSource = conesiones.data_tablaadr
    DragMode = dmAutomatic
    DrawingStyle = gdsGradient
    FixedColor = clWhite
    GradientEndColor = clGray
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'ONU'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -9
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Title.Caption = 'DESCRIPCION'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -9
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 400
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_CLASI'
        Title.Caption = 'COD. CLASI'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -9
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'G_EMBALAJE'
        Title.Caption = 'G. EMBALAJE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -9
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ETIQUETA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -9
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TUNEL'
        Title.Caption = 'C.TUNEL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -9
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAT_TTE'
        Title.Caption = 'CAT.TTE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -9
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object NAVEGADOR_ADR: TDBNavigator
    Left = 718
    Top = 443
    Width = 210
    Height = 25
    DataSource = conesiones.data_tablaadr
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost]
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 18
    Top = 4
    Width = 61
    Height = 16
    TabStop = False
    BorderStyle = bsNone
    Color = clBtnFace
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Text = 'BUSQUEDA'
  end
  object btnduplicar: TButton
    Left = 853
    Top = 141
    Width = 75
    Height = 25
    Caption = 'Duplicar'
    TabOrder = 5
    OnClick = btnduplicarClick
  end
  object BTNBORRAR: TButton
    Left = 853
    Top = 172
    Width = 75
    Height = 25
    Caption = 'Borrar'
    TabOrder = 6
    OnClick = BTNBORRARClick
  end
  object btncerrar: TButton
    Left = 853
    Top = 259
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 7
    OnClick = btncerrarClick
  end
  object btnañadir: TButton
    Left = 853
    Top = 110
    Width = 75
    Height = 25
    Caption = 'A'#241'adir'
    TabOrder = 8
  end
end

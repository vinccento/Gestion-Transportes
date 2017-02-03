object elige_directorio: Telige_directorio
  Left = 0
  Top = 0
  Caption = 'ELEGIR FICHERO'
  ClientHeight = 428
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 84
    Top = 385
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 144
    Top = 50
    Width = 168
    Height = 324
    FileList = FileListBox1
    TabOrder = 0
  end
  object DriveComboBox1: TDriveComboBox
    Left = 8
    Top = 50
    Width = 130
    Height = 20
    AutoDropDown = True
    DirList = DirectoryListBox1
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 1
  end
  object FileListBox1: TFileListBox
    Left = 342
    Top = 50
    Width = 275
    Height = 324
    FileType = [ftVolumeID, ftArchive, ftNormal]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 13
    Mask = '*.xl*'
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
    OnDblClick = FileListBox1DblClick
  end
  object Panel1: TPanel
    Left = 144
    Top = 3
    Width = 361
    Height = 41
    Color = clMoneyGreen
    Enabled = False
    ParentBackground = False
    TabOrder = 3
    object Label1: TLabel
      Left = 62
      Top = 8
      Width = 285
      Height = 24
      Caption = 'Elegir el Fichero a Importar.'
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
end

object importar_excel: Timportar_excel
  Left = 0
  Top = 0
  Caption = 'Importar de excel'
  ClientHeight = 601
  ClientWidth = 1092
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DirectoryListBox1: TDirectoryListBox
    Left = 24
    Top = 33
    Width = 145
    Height = 209
    FileList = FileListBox1
    TabOrder = 0
  end
  object FileListBox1: TFileListBox
    Left = 175
    Top = 33
    Width = 145
    Height = 209
    ItemHeight = 13
    TabOrder = 1
    OnClick = FileListBox1Click
  end
  object DriveComboBox1: TDriveComboBox
    Left = 24
    Top = 8
    Width = 145
    Height = 19
    DirList = DirectoryListBox1
    TabOrder = 2
  end
  object Button1: TButton
    Left = 24
    Top = 254
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object ListView: TListView
    Left = 8
    Top = 280
    Width = 1060
    Height = 150
    Columns = <
      item
      end>
    Items.ItemData = {
      03460000000200000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
      00056F006900700069006F0000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF
      00000000046F0069006F007000}
    TabOrder = 4
  end
  object excel: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = True
    Left = 320
    Top = 24
  end
end

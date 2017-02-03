unit U_elige;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, FileCtrl;

type
  Telige_directorio = class(TForm)
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    FileListBox1: TFileListBox;
    Label3: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    procedure FileListBox1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  elige_directorio: Telige_directorio;


implementation

uses u_repso, declaraciones;

{$R *.dfm}

procedure Telige_directorio.FileListBox1DblClick(Sender: TObject);
begin
LABEL3.Caption:=FileListBox1.FileName;
FICHERO:=FileListBox1.FileName;

  f_repaso.ADOConnection1.close;
  f_repaso.ADOCONNECTION1.ConnectionString :=
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + FICHERO + ';' +
      'Extended Properties="Excel 8.0;HDR=Yes;IMEX=1";Persi' +
      'st Security Info=False' ;
      f_repaso.ADOTable1.open;
      elige_directorio.CLOSE;
      //close;
end;

procedure Telige_directorio.FormCreate(Sender: TObject);
begin
DriveComboBox1.Drive:='c';
//DriveComboBox1.
end;

end.

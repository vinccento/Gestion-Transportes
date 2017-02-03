unit imortacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, OleServer, ExcelXP, Grids, Outline, DirOutln,
  ComCtrls;

type
  Timportar_excel = class(TForm)
    excel: TExcelApplication;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    DriveComboBox1: TDriveComboBox;
    Button1: TButton;
    ListView: TListView;
    procedure FileListBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  importar_excel: Timportar_excel;
  fichero: string;
  i:integer;
  si:string;
  hoja: _worksheet;

implementation

{$R *.dfm}

procedure Timportar_excel.Button1Click(Sender: TObject);
begin
Excel.Workbooks.Open( fichero,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
  EmptyParam, EmptyParam, EmptyParam, EmptyParam, 0 );



       i := 2;
si := IntToStr( i );
repeat
  with ListView.Items.Add do
  begin
    SubItems.Add( Hoja.Range['A'+si,'A'+si].Value2 ); // Código
    SubItems.Add( Hoja.Range['B'+si,'B'+si].Value2 ); // Nombre
    SubItems.Add( Hoja.Range['C'+si,'C'+si].Value2 ); // CIF
    SubItems.Add( Hoja.Range['D'+si,'D'+si].Value2 ); // Saldo
  end;

  Inc( i );
  si := IntToStr( i );
until ( VarType( Excel.Range['A'+si,'A'+si].Value2 ) = VarEmpty );

end;

procedure Timportar_excel.FileListBox1Click(Sender: TObject);
begin
 fichero:= filelistbox1.FileName;
 showmessage(fichero);
end;

end.

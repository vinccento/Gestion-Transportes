unit clientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, Mask;


type
  Tf_clientes = class(TForm)
    DBLookupComboBox1: TDBLookupComboBox;
    grilla_clientes: TDBGrid;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    BUSCA_NOMBRE: TEdit;
    Label9: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BUSCA_NOMBREExit(Sender: TObject);
    procedure BUSCA_NOMBREKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_clientes: Tf_clientes;

implementation

uses conexiones;

{$R *.dfm}



procedure Tf_clientes.BUSCA_NOMBREExit(Sender: TObject);

begin
     grillA_clientes.Visible:=TRUE;
     if busca_nombre.Text<>'' then



     grilla_clientes.SetFocus;


   with CONESIONES.query_clientes do
   begin
   CONESIONES.query_clientes.Active:=TRUE;

   Close;

   SQL.Text:=
   'select * from clientes where cliente like'+quotedstr('%'+busca_nombre.Text+'%')
   +'  OR   nombre  like'+quotedstr('%'+busca_nombre.Text+'%')+'; ';

     Open;

   CONESIONES.query_clientes.Active:=TRUE;





 end;

  begin
 busca_nombre.Text:=''

  end;
  end;


procedure Tf_clientes.BUSCA_NOMBREKeyPress(Sender: TObject; var Key: Char);

begin
  if Key=#13 then
  begin
    Key:= #0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;

end;

procedure Tf_clientes.Button1Click(Sender: TObject);
begin
 //FORM1.INFORME.Preview;
 //APPLICATION.CreateForm(TFORM1, FORM1);
 //FORM1.INFORME.ExportToFilter(TQRXLSFilter.Create( 'C:\ListadoVentas.xls' ) );
end;

procedure Tf_clientes.Button2Click(Sender: TObject);
begin
  beep ;
//CERRAMOS LOS QUERYS Y EL FORMULARIO
  conesiones.query_CLIENTES.Active:=false;
     CLOSE ;

end;

procedure Tf_clientes.FormActivate(Sender: TObject);
begin
  // activamos la query_clientes

  //conesiones.query_clientes.SQL:= 'select * from clientes ORDER BY CLIENTE limit 2';

  with CONESIONES.query_clientes do
   begin


   Close;

   SQL.Text:=
   'select * from clientes ORDER BY CLIENTE limit 2' ;

     Open;

   CONESIONES.query_LOCALIDADES.Active:=TRUE;





 end;

  conesiones.query_clientes.Active:=true


end;

procedure Tf_clientes.FormClose(Sender: TObject; var Action: TCloseAction);

begin
//CERRAMOS LOS QUERYS Y EL FORMULARIO
  conesiones.query_CLIENTES.Active:=false;
     Action := caFree;
end;



end.

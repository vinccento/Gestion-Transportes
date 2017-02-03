unit uadr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Mask;

type
  Tf_adr = class(TForm)
    GRILLA_ADR: TDBGrid;
    NAVEGADOR_ADR: TDBNavigator;
    panel_busqueda: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel1: TPanel;
    Label2: TLabel;
    dbonu: TDBEdit;
    dbnombre: TDBEdit;
    Label3: TLabel;
    dbnom: TDBEdit;
    Label4: TLabel;
    dbname: TDBEdit;
    Label5: TLabel;
    dbcodclas: TDBEdit;
    Label6: TLabel;
    dbgrupo: TDBEdit;
    Label7: TLabel;
    btnduplicar: TButton;
    Label8: TLabel;
    dbetiqueta: TDBEdit;
    Label9: TLabel;
    dbtunel: TDBEdit;
    Label10: TLabel;
    dbcategoria: TDBEdit;
    BTNBORRAR: TButton;
    btncerrar: TButton;
    btnañadir: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnduplicarClick(Sender: TObject);
    procedure BTNBORRARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbonuExit(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_adr: Tf_adr;

implementation

uses conexiones;

{$R *.dfm}

procedure Tf_adr.BTNBORRARClick(Sender: TObject);
begin

navegador_adr.BtnClick(nbdelete);
end;

procedure Tf_adr.btncerrarClick(Sender: TObject);
begin

f_adr.Close;
end;

procedure Tf_adr.btnduplicarClick(Sender: TObject);
 var
 nombre,name,nom,onu,clasificacion,embalaje:string;
 etiqueta,tunel,categoria:string;


begin

nombre:=dbnombre.Text;
onu:=dbonu.Text;
nom:=dbnom.Text;
name:=dbname.Text;
clasificacion:=dbcodclas.Text;
embalaje:=dbgrupo.Text;
etiqueta:=dbetiqueta.Text;
tunel:=dbtunel.Text;
categoria:=dbcategoria.Text;

navegador_adr.BtnClick(nbinsert);
dbnombre.Text:=nombre;
dbonu.Text:=onu ;
dbnom.Text:=nom;
dbname.Text:=name;
dbcodclas.Text:=clasificacion;
dbgrupo.Text:=embalaje;
dbetiqueta.Text:=etiqueta;
dbtunel.Text:=tunel;
dbcategoria.Text:=categoria;





navegador_adr.BtnClick(nbpost);









end;

procedure Tf_adr.dbonuExit(Sender: TObject);
begin
navegador_adr.DataSource.Edit;
  navegador_adr.BtnClick(NBPOST);
end;

procedure Tf_adr.Edit1Exit(Sender: TObject);
begin
grilla_adr.Visible:=true;
navegador_adr.DataSource.Edit;

with conesiones.QUERY_tablaadr do

begin

SQL.Text:=
   'select * from tabla_adr where '
    +'  ONU  like'+quotedstr('%'+edit1.Text+'%')
    + ' ORDER BY ONU';

     open;

     conesiones.query_tablaadr.Active:=true;



end;


end;

procedure Tf_adr.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

   //captura si teclado avpag o repag para avazar en dbnavigator,
   //la porpiedad keypreview del formulario debe ser true

begin
if (key = VK_next) then begin
    navegador_adr.BtnClick(nbnext);
   end;

  if (key = VK_prior) then begin
     navegador_adr.BtnClick(nbprior);
   end;
end;


procedure Tf_adr.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:= #0;
    Perform(WM_NEXTDLGCTL,0,0);

  end;

  if KEY=#27 then
  BEGIN
  KEY:= #0;
  edit1.SetFocus;
  END;
end;

procedure Tf_adr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
conesiones.query_tablaadr.Active:=false;

EXIT;


 Action := caFree;

end;

procedure Tf_adr.FormCreate(Sender: TObject);
begin

{*********PONEMOS EN MODO EDICION LA TABLA*****} ;

 navegador_adr.DataSource.Edit;




end;

procedure Tf_adr.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key = VK_next) then begin
     navegador_adr.BtnClick(nbnext);
   end;

  if (key = VK_prior) then begin
     navegador_adr.BtnClick(nbprior);
   end;
end;

procedure Tf_adr.FormShow(Sender: TObject);
begin
edit1.SetFocus;
end;

end.

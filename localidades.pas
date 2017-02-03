unit localidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Mask, DBCtrls, ExtCtrls;

type
  Tflocalidades = class(TForm)
    GRILLA: TDBGrid;
    BUSCA_NOMBRE: TEdit;
    Label9: TLabel;
    Panel1: TPanel;
    MUNICIPIO: TDBEdit;
    CODIGOPOSTAL: TDBEdit;
    PROVINCIA: TDBEdit;
    DBEdit1: TDBEdit;
    Button1: TButton;
    procedure BUSCA_NOMBREExit(Sender: TObject);
    procedure BUSCA_NOMBREKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure CODIGOPOSTALChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  flocalidades: Tflocalidades;

implementation

uses conexiones, declaraciones;

{$R *.dfm}

procedure Tflocalidades.BUSCA_NOMBREExit(Sender: TObject);

begin
     if busca_nombre.Text<>'' then

     GRILLA.Visible:=TRUE;

     grilla.SetFocus;


   with CONESIONES.query_localidades do
   begin
   CONESIONES.query_LOCALIDADES.Active:=TRUE;

   Close;

   SQL.Text:=
   'select * from T_MUNICIPIOS where CODPOSTAL like'+quotedstr('%'+busca_nombre.Text+'%')
   +'  OR   MUNICIPIO  like'+quotedstr('%'+busca_nombre.Text+'%')+'; ';

     Open;

   CONESIONES.query_LOCALIDADES.Active:=TRUE;





 end;

  begin
 busca_nombre.Text:=''

  end;

end;



procedure Tflocalidades.BUSCA_NOMBREKeyPress(Sender: TObject; var Key: Char);
begin
 // procedimiento para  que al pulsar enter pase el foco;

      if key =#13 then
        begin
          GRILLA.Visible:=TRUE;

          key:=#0;
          perform (WM_NEXTDLGCTL, 0, 0);
        end;
end;



procedure Tflocalidades.CODIGOPOSTALChange(Sender: TObject);
begin
     CODPROV2:= PROVINCIA.Text;
   if CODPROV2 <> '' then
       BEGIN

   with CONESIONES.query_PROVINCIAS do

  begin


   Close;



  SQL.Text:= 'select * from PROVINCIAS where COD =' + CODPROV2;

   // +CODPROV2;

     Open;

   CONESIONES.query_PROVINCIAS.Active:=TRUE;
    END;
  end;
end;

procedure Tflocalidades.FormActivate(Sender: TObject);
begin


  //ACTIVAMOS LA QUERY_LOCALIDADES

  conesiones.query_localidades.Active:=true;


  end;

procedure Tflocalidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //CERRAMOS LOS QUERYS Y EL FORMULARIO
  conesiones.query_localidades.Active:=false;
  Action := caFree;


end;

procedure Tflocalidades.FormDeactivate(Sender: TObject);
begin

  //desactivamos query_localidades

  conesiones.query_localidades.Active:=false;


end;

end.

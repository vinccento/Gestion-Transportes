unit UNT_TTAS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TINT_TTAS = class(TForm)
    FECHAINICIAL: TDateTimePicker;
    Edit1: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FECHAINICIALKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  INT_TTAS: TINT_TTAS;

implementation

uses declaraciones, U_INFORMES, conexiones;

{$R *.dfm}

procedure TINT_TTAS.Edit1KeyPress(Sender: TObject; var Key: Char);
var
 empresa:string;

begin

  if Key=#13 then

  begin
  Key:= #0;
    Perform(WM_NEXTDLGCTL,0,0);
  FECHA_INI:= QuotedStr(FormatDateTime('yyyy-mm-dd',fechainicial.DateTime));

    with informes.query_comodin DO
   begin
//   informes.informe_recogidas.Variables[empresa]:='''' + tta.Text + '''';

  //Close;

  SQL.Text:=

  'select albaran.referencia,ALBARAN.REMITENTE, albaran.proveedor,albaran.DIR_RECOGIDA,ALBARAN.CONSIGNA, '
  +'albaran.loc_consig,albaran.bultos,albaran.kilos,albaran.cp_consig,ALBARAN.F_CONCERT '
  +' FROM ALBARAN INNER JOIN clientes ON albaran.CLIENTE = clientes.CLIENTE  WHERE'
  + ' FECHA_ALB = ' + FECHA_INI
  +' AND ALBARAN.PROVEEDOR'
      +' like'+quotedstr('%'+edit1.text+'%')
   + ' AND ALBARAN.ALBARAN IS NOT NULL '
       +' order by albaran.DIR_RECOGIDA '
        +', fecha_alb  limit 1000';

       SHOWMESSAGE (SQL.TEXT +#13#10 + FECHA_INI +#13#10 + fecha_fini  );

     Open;

  informes.query_comodin.Active:=true;

//  informes.informe_recogidas.Variables[empresa]:='''' + tta.Text + '''';

  INFORMES.informe_recogidas.ShowReport();

        //with CONESIONES.query_clientes do
 // begin
  //CONESIONES.query_clientes.Active:=TRUE;

 close;

   //CONESIONES.conexion_general.Close;
  // CONESIONES.conexion_general.Open;


   int_ttas.Close;





   //end ;

 end;



  end;

end;

procedure TINT_TTAS.FECHAINICIALKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:= #0;
    Perform(WM_NEXTDLGCTL,0,0);

  end;
end;

procedure TINT_TTAS.FormActivate(Sender: TObject);
   var empresa:string;
begin

FECHAINICIAL.DateTime:=NOW;


end;

procedure TINT_TTAS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.

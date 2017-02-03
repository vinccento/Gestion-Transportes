unit UNT_TTAS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TINT_TTAS1 = class(TForm)
    FECHAINICIAL: TDateTimePicker;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  INT_TTAS1: TINT_TTAS1;

implementation

uses declaraciones, U_INFORMES, conexiones, UNT_TTAS;

{$R *.dfm}

procedure TINT_TTAS1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

  if Key=#13 then
  begin
  FECHA_INI:= QuotedStr(FormatDateTime('yyyy-mm-dd',fechainicial.DateTime));

    with informes.query_comodin do
   begin


  Close;

  SQL.Text:=

  'select albaran.referencia, dir_recogida,albaran.proveedor,albaran.consigna,albaran.REMITENTE, '
  +'albaran.loc_consig,albaran.bultos,albaran.kilos,albaran.cp_consig,albaran.fecha_alb '
  +' FROM ALBARAN INNER JOIN clientes ON albaran.CLIENTE = clientes.CLIENTE  WHERE'
  + ' FECHA_ALB = ' + FECHA_INI
  +' AND ALBARAN.dir_recogida'

    +' like'+quotedstr('%'+edit1.text+'%')
   + ' AND ALBARAN.ALBARAN IS NOT NULL '

   +' order by albaran.REMITENTE,ALBARAN.PROVEEDOR '
    //+opcion
    +', fecha_alb  limit 1000';

       //SHOWMESSAGE (SQL.TEXT +#13#10 + FECHA_INI +#13#10 + fecha_fini  );


     Open;

  informes.query_comodin.Active:=true;


  INFORMES.informe_quien.ShowReport();
//frxInforme.Export(frxPDFExport1);
//INFORMES.frxPDFExport2.FileName := 'C:\temp\PRUEBA2.PDF';
  //   INFORMES.informe_quien.Export(INFORMES.frxPDFExport2);

 close;

   //CONESIONES.conexion_general.Close;
   //CONESIONES.conexion_general.Open;


   int_ttas1.Close;





   //end ;

 end;



  end;

end;

procedure TINT_TTAS1.FormActivate(Sender: TObject);
begin

FECHAINICIAL.DateTime:=NOW;


end;

procedure TINT_TTAS1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
end;

end.

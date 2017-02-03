unit u_parametros_informes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type
  Tparametros_informes = class(TForm)
    Edit1: TEdit;
    FECHAINICIAL: TDateTimePicker;
    FECHAFINAL: TDateTimePicker;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Label5: TLabel;
    btn_listar: TButton;
    bta_cancelar: TButton;
    Panel2: TPanel;
    opcion_remitente: TRadioButton;
    opcion_codigo: TRadioButton;
    chksincobros: TCheckBox;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure bta_cancelarClick(Sender: TObject);
    procedure btn_listarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  parametros_informes: Tparametros_informes;

implementation

uses U_INFORMES, declaraciones, conexiones;

{$R *.dfm}

procedure Tparametros_informes.bta_cancelarClick(Sender: TObject);
begin
parametros_informes.Close;
end;

procedure Tparametros_informes.btn_listarClick(Sender: TObject);
  var
  entra_cliente:string;
  opcion:string;
  opcionsincobros:string;
   varible:string;



begin

   if opcion_codigo.Checked=true then
   begin
   opcion:='cliente';
   end;

   if opcion_remitente.Checked=true then
   begin
     opcion:='remitente'
   end;

   if chksincobros.Checked= true then begin
   opcionsincobros:=' and albaran.cobramos is null';
   end;







FECHA_INI:= QuotedStr(FormatDateTime('yyyy-mm-dd',fechainicial.DateTime));
fecha_fini:= QuotedStr(FormatDateTime('yyyy-mm-dd',fechafinal.DateTime));

entra_cliente:=edit1.text;
 with informes.query_comodin do
   begin


  Close;

  SQL.Text:=

  'select ALBARAN.remitente,ALBARAN.cliente,ALBARAN.fecha_alb,ALBARAN.albaran,ALBARAN.consigna,ALBARAN.referencia, '
  +'ALBARAN.loc_consig,ALBARAN.bultos,ALBARAN.kilos,ALBARAN.cobramos, albaran.pagamos,CLIENTES.NOMBRE, ALBARAN.ID '
  +' FROM ALBARAN INNER JOIN clientes ON albaran.CLIENTE = clientes.CLIENTE  WHERE'
  + ' FECHA_ALB BETWEEN ' + FECHA_INI + ' AND ' +  FECHA_FINI
  +' AND ALBARAN.'
   + opcion
       +' like'+quotedstr('%'+edit1.text+'%')
   + ' AND ALBARAN.ALBARAN IS NOT NULL '
   + ' and albaran.consigna '
   + ' like'+quotedstr('%'+edit2.text+'%')
   + opcionsincobros

   +' order by albaran.cliente,albaran.fecha_alb,ALBARAN.ID '
    //+opcion
    +', fecha_alb  limit 1000';

       //SHOWMESSAGE (SQL.TEXT +#13#10 + FECHA_INI +#13#10 + fecha_fini  );

  //'select albaran, referencia, loc_consig,'
    // +'CLIENTE, CONSIGNA, FECHA_ALB, cuenta_alm,  remitente, cp_remite, loc_remite,'
   //+'cp_consig,dir_consig,  puestos_costes, observaciones, ob_proveedor,ES_aDR,  '
   //+'bultos, kilos, f_concert, cobramos, pag_prov_2, factura,  pagamos, proveedor '
   //+' from albaran where'
    // +' remitente  like'+quotedstr('%'+entra_cliente+'%')
     //+')'

     //+ ' order by cliente, fecha_alb'
    //+' limit 500';

        // + ' AND FECHA_ALB BETWEEN ' + FECHA_INI + ' AND ' +  FECHA_FINI
     Open;
   //AND DATE(fecha) BETWEEN '2005-07-16 ' AND '2005-07-16'

 // CONESIONES.query_todosalb.Active:=TRUE;
  informes.query_comodin.Active:=true;

  
  INFORMES.R_CLIENTES_TODOS.ShowReport();

        //with CONESIONES.query_clientes do            1
 // begin
  //CONESIONES.query_clientes.Active:=TRUE;

 close;

   //CONESIONES.conexion_general.Close;
  // CONESIONES.conexion_general.Open;


   //end ;

 end;

end;

procedure Tparametros_informes.FormActivate(Sender: TObject);




begin
FECHAINICIAL.DateTime:=NOW-1;
FECHAFINAL.DateTime:=NOW;
FECHAINICIAL.Checked:=FALSE;
FECHAFINAL.Checked:=FALSE;
opcion_codigo.Checked:=false;
opcion_remitente.Checked:=true;


edit1.SetFocus;





//FECHATIMER.DateTime:=NOW-1;
//FEChATIMER_FINAL.Date:=now;
//fechatimer.Checked:=false;
//fechatimer_final.Checked:=false;
//F_ALBARANES.historico.Show;
end;





end.

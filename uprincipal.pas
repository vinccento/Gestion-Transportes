unit uprincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, ComCtrls, StdCtrls, OleServer, ExcelXP, Grids,
  Calendar;

type
  Tf_principal = class(TForm)
    MainMenu1: TMainMenu;
    Ficheros1: TMenuItem;
    Clientes1: TMenuItem;
    Localidades1: TMenuItem;
    arifas1: TMenuItem;
    Incidencias1: TMenuItem;
    N1: TMenuItem;
    ransporte1: TMenuItem;
    GestinAlbaranes1: TMenuItem;
    Salir1: TMenuItem;
    N2: TMenuItem;
    Image1: TImage;
    gRABACIN1: TMenuItem;
    MOdificaconsulta1: TMenuItem;
    ablasADR1: TMenuItem;
    Listados1: TMenuItem;
    N3: TMenuItem;
    ListadoEconmicodecClientes1: TMenuItem;
    InformediarioaTransportistas1: TMenuItem;
    N4: TMenuItem;
    InformeQuiensellevaque1: TMenuItem;
    ListadodeClientes1: TMenuItem;
    Almacen: TMenuItem;
    Entradas1: TMenuItem;
    N5: TMenuItem;
    Busquedas1: TMenuItem;
    Porproveedor1: TMenuItem;
    Fichas1: TMenuItem;
    ParametrosAlmacen1: TMenuItem;
    Asignaciondetarifas1: TMenuItem;
    GeneralTarifasProveedores1: TMenuItem;
    ImportardeExcel1: TMenuItem;
    Label1: TLabel;
    Econmico1: TMenuItem;
    N6: TMenuItem;
    RepasoFacturas1: TMenuItem;
    procedure Salir1Click(Sender: TObject);
    procedure Localidades1Click(Sender: TObject);
    procedure MOdificaconsulta1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ablasADR1Click(Sender: TObject);

    procedure ListadoEconmicodecClientes1Click(Sender: TObject);
    procedure InformediarioaTransportistas1Click(Sender: TObject);
    procedure InformeQuiensellevaque1Click(Sender: TObject);
    procedure ListadodeClientes1Click(Sender: TObject);
    procedure Entradas1Click(Sender: TObject);
    procedure Porproveedor1Click(Sender: TObject);
    procedure Fichas1Click(Sender: TObject);
    procedure ParametrosAlmacen1Click(Sender: TObject);
    procedure GeneralTarifasProveedores1Click(Sender: TObject);
    procedure ImportardeExcel1Click(Sender: TObject);
    procedure Asignaciondetarifas1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

    procedure RepasoFacturas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_principal: Tf_principal;

implementation

uses localidades, conexiones, clientes, ualbaranes, declaraciones, uadr,
  U_INFORMES, u_parametros_informes, UNT_TTAS, UNT_TTAS1, UPICKING,
  almacen, ubusca, u_parametros_almacen, TARIFA_PROV, imortacion, IMPORTAR,
  USEGUIMIENTO, u_repso;

    const
DOS_HORAS = 1{hr} * 3600{seg} * 1000{ms};

{$R *.dfm}

procedure Tf_principal.ablasADR1Click(Sender: TObject);

{**************************************
****** VISUALIZAMOS FORMULARIO ADR ****
**************************************}







begin


F_ADR.ShowModal;

{******************
**               **
******************}



end;

procedure Tf_principal.Asignaciondetarifas1Click(Sender: TObject);
begin
 TARIFAS.Show;
end;

procedure Tf_principal.Entradas1Click(Sender: TObject);
begin
f_almacen.Show;
end;

procedure Tf_principal.Fichas1Click(Sender: TObject);
begin
//creamos el formulario y lo hacemos visible
  application.CreateForm(Tf_clientes, f_clientes);

   f_clientes.ShowModal;
end;

procedure Tf_principal.FormCreate(Sender: TObject);

 var loc, ser:string;

begin
 DecimalSeparator := '.';
 ThousandSeparator := '.';
  Application.UpdateFormatSettings := True;

  //MonthCalendar2.Date:= Date;
  //MonthCalendar1.DATE:= DATE -30;
  //MonthCalendar3.DATE:= DATE +30;




end;

      procedure Tf_principal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key= VK_F2) then begin

    //WinExec ('Calc.exe', WM_CLOSE);
   // WinExec ('Calc.exe', SW_SHOW);
end;

   if (Key = VK_f5) then
  begin
      application.CreateForm(Tf_SEGUIMIENTO, f_SEGUIMIENTO);
     F_SEGUIMIENTO.ShowModal;
  end;


end;

procedure abre;
      stdcall;
      external 'AGTARP';





procedure Tf_principal.GeneralTarifasProveedores1Click(Sender: TObject);

begin
tarifas.Show;
end;

procedure Tf_principal.ImportardeExcel1Click(Sender: TObject);
begin
            F1.Show;

end;

procedure Tf_principal.InformediarioaTransportistas1Click(Sender: TObject);
begin
application.CreateForm(TINT_TTAS, INT_TTAS);
INT_TTAS.ShowModal;
end;

procedure Tf_principal.InformeQuiensellevaque1Click(Sender: TObject);
begin
application.CreateForm(TINT_TTAS1, INT_TTAS1);
INT_TTAS1.ShowModal;
end;

procedure Tf_principal.ListadodeClientes1Click(Sender: TObject);



begin
//ASI:=InputBox('QQQQQ','AS','AAA') ;

//informes.frxReport1.Variables['CAMPO']:= QUOTEDSTR(ASI);

informes.frxReport1.ShowReport();
end;

procedure Tf_principal.ListadoEconmicodecClientes1Click(Sender: TObject);
var
entra_cliente:string;



begin
parametros_informes.ShowModal;




end;

procedure Tf_principal.Localidades1Click(Sender: TObject);
begin


  //creamos el formulario y lo hacemos visible
  application.CreateForm(Tflocalidades, flocalidades);

   flocalidades.Showmodal
end;

procedure Tf_principal.MOdificaconsulta1Click(Sender: TObject);
    begin
//creamos el formulario y lo hacemos visible
//if Formulario = nil then
//Formulario := TFormulario.Create(Self);
//Formulario.Show;

  if f_albaranes = nil then
    begin
  application.CreateForm(Tf_albaranes, f_albaranes);

   f_albaranes.Show;
   end

  else

  ShowMessage('El formulario ya está abierto.');





end;

procedure Tf_principal.ParametrosAlmacen1Click(Sender: TObject);
begin
    //creamos el formulario y lo hacemos visible
  application.CreateForm(Tf_parametros_almacen, f_parametros_almacen);

   f_parametros_almacen.ShowModal;
end;

procedure Tf_principal.Porproveedor1Click(Sender: TObject);
begin
f_busca.Show;

end;

procedure Tf_principal.RepasoFacturas1Click(Sender: TObject);
begin
f_repaso.Show;
end;

procedure Tf_principal.Salir1Click(Sender: TObject);
begin


close

end;



function SecondsIdle: DWord;
var
liInfo: TLastInputInfo;
begin
liInfo.cbSize := SizeOf(TLastInputInfo) ;
GetLastInputInfo(liInfo) ;
Result := (GetTickCount - liInfo.dwTime) DIV 1000;
end;








END.

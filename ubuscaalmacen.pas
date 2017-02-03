unit ubuscaalmacen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  Tf_busca_almacenaje = class(TForm)
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    RadioGroup1: TRadioGroup;
    rporcopra: TRadioButton;
    rporproducto: TRadioButton;
    btnbusca: TButton;
    Edit1: TEdit;
    porlote: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnbuscaKeyPress(Sender: TObject; var Key: Char);
    procedure btnbuscaClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_busca_almacenaje: Tf_busca_almacenaje;

implementation

uses almacen, clientes, conexiones, declaraciones;

{$R *.dfm}

procedure Tf_busca_almacenaje.btnbuscaClick(Sender: TObject);
begin
   param_busca_almacen:='num_compra like ' + quotedstr('%' +edit1.text+'%');
 PARAM_BUSCA_PRODUCTO:= 'PRODUCTO like ' + quotedstr('%' +edit1.text+'%');
 param_busca_lote:=  'lote like ' + quotedstr('%' +edit1.text+'%');


 if rporcopra.Checked=true then   begin
   with conesiones.query_control_almacen_grilla do
 conesiones.query_control_almacen_grilla.SQL.Clear;
 conesiones.query_control_almacen_grilla.SQL.Add('select num_compra,fecha_llegada, producto, ');
 conesiones.query_control_almacen_grilla.SQL.Add(' from entradas_helm where ');
 conesiones.query_control_almacen_grilla.SQL.Add(param_busca_almacen);

 conesiones.query_control_almacen_grilla.Active:=true ;
 conesiones.query_control_almacen_grilla.ExecSQL;
 dbgrid2.SetFocus;

 end;

 if RPORPRODUCTO.Checked= True then  begin
   with conesiones.query_control_almacen_grilla do
  conesiones.query_control_almacen_grilla.SQL.Clear;
 conesiones.query_control_almacen_grilla.SQL.Add('select num_compra,fecha_llegada, producto, ');
 conesiones.query_control_almacen_grilla.SQL.Add(' from entradas_helm where ');
 conesiones.query_control_almacen_grilla.SQL.Add(param_busca_almacen);

 conesiones.query_control_almacen_grilla.Active:=true ;
 conesiones.query_control_almacen_grilla.ExecSQL;
 dbgrid2.SetFocus ;
 end;

 if porlote.Checked= True then  begin
   with conesiones.query_control_almacen_grilla do
  conesiones.query_control_almacen_grilla.SQL.Clear;
 conesiones.query_control_almacen_grilla.SQL.Add('select num_compra, producto, LOTE');
 conesiones.query_control_almacen_grilla.SQL.Add(' from lotes_helm where ');
 conesiones.query_control_almacen_grilla.SQL.Add(param_busca_lote);

 conesiones.query_control_almacen_grilla.Active:=true ;
 conesiones.query_control_almacen_grilla.ExecSQL;
 dbgrid2.SetFocus;
 end;



end;

procedure Tf_busca_almacenaje.btnbuscaKeyPress(Sender: TObject; var Key: Char);



begin





 if Key = #13 then

end;

procedure Tf_busca_almacenaje.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then begin
    PARAM_BUSCA_ALMACEN:=(Self.DBGRID2.Columns[1].Field.Text);
    //SHOWMESSAGE(PARAM_BUSCA_ALMACEN);

    conesiones.query_control_almacen.SQL.Clear;
    conesiones.query_control_almacen.SQL.Add('select * from entradas_helm');
    conesiones.query_control_almacen.SQL.Add(' where num_compra = ' + QUOTEDSTR(PARAM_BUSCA_ALMACEN));
    CONESIONES.query_control_almacen.ExecSQL;

    if conesiones.query_control_almacen.FieldByName('paletizado').AsString='1' then
    f_almacen.chpaletizado.Checked:=true;

     if conesiones.query_control_almacen.FieldByName('granel').AsString='1' then
    f_almacen.chgranel.Checked:=true;

    

    f_busca_almacenaje.Close;





    //showmessage(conesiones.query_control_almacen.SQL.Text);



  end;

end;

procedure Tf_busca_almacenaje.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

 if Key = #13 then begin

 if rporcopra.Checked=true then BEGIN
 param_busca_almacen:='num_compra like ' + quotedstr('%' +edit1.text+'%');
 END;

 if rporproducto.Checked=true then BEGIN
  param_busca_almacen:='producto like ' + quotedstr('%' +edit1.text+'%');
 END;


   if PORLOTE.Checked=true then BEGIN
  param_busca_almacen:='lote like ' + quotedstr('%' +edit1.text+'%');
   END;

 with conesiones.query_control_almacen_grilla do

 conesiones.query_control_almacen_grilla.SQL.Clear;
 conesiones.query_control_almacen_grilla.SQL.Add('select num_compra, producto, LOTE ');
 conesiones.query_control_almacen_grilla.SQL.Add(' from LOTES_helm where ');
 conesiones.query_control_almacen_grilla.SQL.Add(param_busca_almacen);
  SHOWMESSAGE( conesiones.query_control_almacen_grilla.SQL.Text);
 conesiones.query_control_almacen_grilla.Active:=true ;
 conesiones.query_control_almacen_grilla.ExecSQL;
 dbgrid2.SetFocus;




 end;


end;

procedure Tf_busca_almacenaje.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin




    ACTION:= CAFREE;

end;

procedure Tf_busca_almacenaje.FormShow(Sender: TObject);
begin
conesiones.query_control_almacen_grilla.SQL.Clear;

edit1.SetFocus;
end;

end.

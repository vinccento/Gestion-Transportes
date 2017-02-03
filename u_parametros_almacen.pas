unit u_parametros_almacen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dblookup, DBCtrls, Mask, ExtCtrls;

type
  Tf_parametros_almacen = class(TForm)
    combo1: TDBLookupComboBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Bevel1: TBevel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Panel4: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBNavigator1: TDBNavigator;
    btn_busca: TButton;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Cliente: TLabel;
    Nombre: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_buscaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_parametros_almacen: Tf_parametros_almacen;

implementation

uses conexiones, declaraciones;

{$R *.dfm}

procedure Tf_parametros_almacen.btn_buscaClick(Sender: TObject);
begin
combo1.Visible:=true;
combo1.SetFocus;
end;

procedure Tf_parametros_almacen.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure Tf_parametros_almacen.FormCreate(Sender: TObject);
begin
conesiones.CLIENTES_ALMACENAJE.Active:=true;

end;

end.

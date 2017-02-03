unit TARIFA_PROV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Mask, StdCtrls, Grids, DBGrids, OleServer, ExcelXP;

type
  TTARIFAS = class(TForm)
    DBNavigator1: TDBNavigator;
    ENTRADA_PROV: TEdit;
    TARIFA: TLabel;
    PANEL_DATOS: TPanel;
    PANEL_ENTRADA: TPanel;
    PROVEEDOR: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    baremo: TLabel;
    DBEdit3: TDBEdit;
    tramo: TLabel;
    tipo: TLabel;
    DBEdit5: TDBEdit;
    importe: TLabel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBEdit4: TDBEdit;
    Button2: TButton;
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure ENTRADA_PROVKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TARIFAS: TTARIFAS;

implementation

uses conexiones, u_baremos_tarifa;



{$R *.dfm}

procedure TTARIFAS.Button1Click(Sender: TObject);
begin

entrada_prov.SetFocus;

DBNAVIGATOR1.BtnClick(NBINSERT);

end;

procedure TTARIFAS.Button2Click(Sender: TObject);
begin
baremos_prov.Show;
end;



procedure TTARIFAS.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
    Key := #0;
    //Perform(WM_NEXTDLGCTL, 0, 0);
     Perform(WM_NEXTDLGCTL, 0, 0);

  end;
end;

procedure TTARIFAS.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
    Key := #0;
    DBNAVIGATOR1.BtnClick(NBEDIT);
    DBNAVIGATOR1.BtnClick(NBPOST);
    DBNAVIGATOR1.BtnClick(NBREFRESH);


    Perform(WM_NEXTDLGCTL, 0, 0);

  end;
end;

procedure TTARIFAS.ENTRADA_PROVKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
    Key := #0;
    //Perform(WM_NEXTDLGCTL, 0, 0);
    DBEDIT1.Text:=UPPERCASE(ENTRADA_PROV.Text);
    dbedit2.SetFocus;
end;
end;
procedure TTARIFAS.FormShow(Sender: TObject);
begin

conesiones.query_tarifa_prov.Active:=true;
//conexion_general.QUERY_TARIFA_PROV.Active:=TRUE;
end;

end.

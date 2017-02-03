unit UPICKING;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  Ttpiking = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    dbcliente: TDBEdit;
    Label1: TLabel;
    dbnombre2: TDBEdit;
    Label2: TLabel;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dbcuenta: TDBEdit;
    dbpaletalm: TDBEdit;
    dbmanipula: TDBEdit;
    dbcajapi: TDBEdit;
    Button1: TButton;
    dbpaltpi: TDBEdit;
    DBEdit2: TDBEdit;
    Button2: TButton;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbcuentaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure dbpaletalmChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tpiking: Ttpiking;

implementation

uses conexiones, ualbaranes, declaraciones;

{$R *.dfm}

procedure Ttpiking.Button1Click(Sender: TObject);
begin

    F_ALBARANES.checkalmacenaje.Checked := TRUE;
  F_ALBARANES.DBNAVIGATOR1.DataSource.Edit;

   F_ALBARANES.DBNAVIGATOR1.BtnClick(NBPOST);
   F_ALBARANES.BUSCA_NOMBRE.SetFocus;



close;









    //texto:=f_albaranes.dbexpedicion.Text;
//conesiones.query_modifica_todosalb.SQL.Clear;
//conesiones.query_todosalb.SQL.Add('insert into albaran set albaran="000000000000", referencia=' + edit13.Text);

//texto_sql:= 'update albaran set cuenta_alm='
 //+ '"N"'
//+' ,num_palet='  + dbpaletalm.text
//+' where albaran=' + texto;


//conesiones.query_modifica_todosalb.SQL.add (texto_sql );

    //showmessage (conesiones.query_modifica_todosalb.SQL.Text);

//conesiones.query_modifica_todosalb.ExecSQL;
  //F_ALBARANES.DBNAVIGATOR1.DataSource.Edit;
   //F_ALBARANES.DBNAVIGATOR1.BtnClick(NBPOST)

//f_albaranes.DBNAVIGATOR1.BtnClick(nbCANCEL);








end;

procedure Ttpiking.dbcuentaKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:= #0;

    Perform(WM_NEXTDLGCTL,0,0);


  end;
end;

procedure Ttpiking.dbpaletalmChange(Sender: TObject);
begin

DBCUENTA.Text:='S';
end;

procedure Ttpiking.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

procedure Ttpiking.FormCreate(Sender: TObject);
begin

dbnombre2.Text:=f_albaranes.dbnombre.Text;

end;

procedure Ttpiking.FormShow(Sender: TObject);
begin
dbcuenta.SetFocus;

end;

end.

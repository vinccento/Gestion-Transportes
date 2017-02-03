unit u_baremos_tarifa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, Mask, ExtCtrls, StdCtrls;

type
  TBAREMOS_PROV = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Panel1: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BAREMOS_PROV: TBAREMOS_PROV;

implementation

uses conexiones;

{$R *.dfm}

procedure TBAREMOS_PROV.Button1Click(Sender: TObject);
begin
edit1.SetFocus;

 DBNAVIGATOR1.BtnClick(NBINSERT);

end;

procedure TBAREMOS_PROV.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
    Key := #0;
    //Perform(WM_NEXTDLGCTL, 0, 0);
     Perform(WM_NEXTDLGCTL, 0, 0);


end;
end;

procedure TBAREMOS_PROV.DBEdit3KeyPress(Sender: TObject; var Key: Char);
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

procedure TBAREMOS_PROV.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
  begin
    Key := #0;
    DBNAVIGATOR1.BtnClick(NBEDIT);
    DBNAVIGATOR1.BtnClick(NBPOST);
    DBNAVIGATOR1.BtnClick(NBREFRESH);


   BUTTON1.SetFocus;

  end;


end;

procedure TBAREMOS_PROV.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
  begin
    Key := #0;
    //Perform(WM_NEXTDLGCTL, 0, 0);
    DBEDIT1.Text:=UPPERCASE(edit1.Text);
    dbedit2.SetFocus;

  end;
end;

procedure TBAREMOS_PROV.FormCreate(Sender: TObject);
begin
conesiones.CONSULTA_BAREMOS.Active:=true;
end;

procedure TBAREMOS_PROV.FormShow(Sender: TObject);
begin
conesiones.CONSULTA_BAREMOS.Active:=true;
end;

end.

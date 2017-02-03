unit almacen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask;

type
  Tf_almacen = class(TForm)
    Panel1: TPanel;
    btnnuevo: TButton;
    Button3: TButton;
    Label7: TLabel;
    db_cliente: TDBEdit;
    Panel2: TPanel;
    Label2: TLabel;
    dbfecha: TDBEdit;
    Label3: TLabel;
    dbcant_cont: TDBEdit;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    Label6: TLabel;
    db_num_compra: TDBEdit;
    DBID: TDBEdit;
    Label1: TLabel;
    Panel3: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBNavigator2: TDBNavigator;
    Panel4: TPanel;
    CHPALETIZADO: TDBCheckBox;
    chgranel: TDBCheckBox;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    dbpreciomanip: TDBEdit;
    dbpreciopalets: TDBEdit;
    dbpreciocarton: TDBEdit;
    dbprecioextras: TDBEdit;
    dbprecioretractil: TDBEdit;
    Label20: TLabel;
    Panel7: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    paletplastico: TDBEdit;
    palethomolg: TDBEdit;
    paletchep: TDBEdit;
    paleteur: TDBEdit;
    paletamerica: TDBEdit;
    Label19: TLabel;
    paletfumig: TDBEdit;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBLookupComboBox1: TDBLookupComboBox;
    grilla_albaran: TDBGrid;
    Label25: TLabel;
    DBEdit7: TDBEdit;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure db_num_compraChange(Sender: TObject);
    procedure db_clienteKeyPress(Sender: TObject; var Key: Char);
    procedure grilla_albaranKeyPress(Sender: TObject; var Key: Char);
    procedure paletfumigKeyPress(Sender: TObject; var Key: Char);
    procedure btnnuevoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_almacen: Tf_almacen;

implementation

uses conexiones, declaraciones, ubuscaalmacen;
{$R *.dfm}







procedure Tf_almacen.btnnuevoClick(Sender: TObject);
begin
  DBNavigator2.BtnClick(NBINSERT);
  DB_CLIENTE.SetFocus;
end;

procedure Tf_almacen.Button3Click(Sender: TObject);
begin
application.CreateForm(TF_BUSCA_ALMACENAJE, F_BUSCA_ALMACENAJE);
F_BUSCA_ALMACENAJE.ShowModal;
end;

procedure Tf_almacen.db_clienteKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
end;
end;

procedure Tf_almacen.db_num_compraChange(Sender: TObject);
begin



conesiones.query_control_almacen_grilla.SQL.Clear;
    conesiones.query_control_almacen_grilla.SQL.Add('select * from lotes_helm');
    conesiones.query_control_almacen_grilla.SQL.Add(' where num_compra = ' + QUOTEDSTR(db_num_compra.Text)) ;
    conesiones.query_control_almacen_grilla.SQL.Add( 'order by id');
    //showmessage( conesiones.query_control_almacen_grilla.SQL.Text + '   ' + QUOTEDSTR(PARAM_BUSCA_ALMACEN));
    conesiones.query_control_almacen_grilla.ExecSQL;

if conesiones.query_control_almacen.FieldByName('paletizado').AsString='1' then begin
    chpaletizado.Checked:=true;
    label12.Visible:=true ;
    dbedit5.Visible:=true;
    dbedit6.Visible:=false;
    label13.Visible:=false;
end;

     if conesiones.query_control_almacen.FieldByName('granel').AsString='1' then begin


    chgranel.Checked:=true;
    label13.Visible:=true;
    dbedit6.visible:=true;
    dbedit5.Visible:=false ;
    label12.Visible:=false;
      end;
end;

procedure Tf_almacen.FormShow(Sender: TObject);

var
parametro_22:string;
    //VALOR_EX := (Self.grilla_tabla_adr.Columns[2].Field.Text)


begin

 conesiones.query_control_almacen.SQL.Clear;
    conesiones.query_control_almacen.SQL.Add('select * from entradas_helm') ;
    conesiones.query_control_almacen.SQL.Add( 'order by id');
    conesiones.query_control_almacen.ExecSQL;


    numero_compra:=quotedstr(db_num_compra.Text);



    if conesiones.query_control_almacen.FieldByName('paletizado').AsString='1' then
    chpaletizado.Checked:=true;

     if conesiones.query_control_almacen.FieldByName('granel').AsString='1' then
    chgranel.Checked:=true;



end;

procedure Tf_almacen.grilla_albaranKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
    with TDBGrid(Sender) do
      if SelectedIndex < FieldCount-1 then
        SelectedIndex:= SelectedIndex + 1
      else
      begin
        DataSource.DataSet.Append;
        SelectedIndex:= 0;
       GRILLA_ALBARAN.Fields[0].Value:=db_num_compra.Text;

end;
  end;
procedure Tf_almacen.paletfumigKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
      DBNavigator1.Datasource.Edit;
        DBNavigator2.BtnClick(NBPOST);
       GRILLA_ALBARAN.Fields[0].Value:=db_num_compra.Text;

end;
end;

end.

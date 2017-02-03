unit IMPORTAR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TF1 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F1: TF1;
  REGISTROS:INTEGER;
  NOMBRE, referencia:STRING;
  CONTROL:INTEGER;
  fecha:tdate;
  existe:integer;
  condicion:string;
   FECHA_CON:STRING;
implementation

uses conexiones;

{$R *.dfm}



procedure TF1.Button2Click(Sender: TObject);

begin
 ADOCONNECTION1.Close;
 ADOCONNECTION1.ConnectionString :=
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\correos_alm\alba' +
      'ran_def.xls;Extended Properties="Excel 8.0;HDR=Yes;IMEX=1";Persi' +
      'st Security Info=False' ;
  // conectar y obtener datos
  ADOTable1.Open;
  REGISTROS:=ADOTABLE1.RecordCount;
  ADOTABLE1.First;

  //SHOWMESSAGE(INTTOSTR(REGISTROS));
  //
 //SHOWMESSAGE (NOMBRE);
 //
 // NOMBRE:=ADOTABLE1.FieldByName('ALBARAN').AsString;
 

 //

  for CONTROL := 1 to REGISTROS do BEGIN
     LABEL1.Visible:=TRUE;
 LABEL3.Visible:=TRUE;
     LABEL3.Caption:=INTTOSTR(CONTROL);
    NOMBRE:=ADOTABLE1.FieldByName('ALBARAN').AsString;
    referencia:= quotedstr(ADOTABLE1.FieldByName('remitente').AsString);
    fecha:= ( ADOTABLE1.FieldByName('fecha_alb').AsDateTime);
    //EDIT1.Text:=NOMBRE;
     CONESIONES.consulta_albaran.SQL.Clear;
     conesiones.consulta_albaran.SQL.Add('select albaran from albaran where albaran= ');
     conesiones.consulta_albaran.SQL.Add(quotedstr(ADOTABLE1.FieldByName('albaran').AsString));

     //showmessage(conesiones.consulta_albaran.SQL.Text);
      conesiones.consulta_albaran.ExecSQL;
     existe:=(conesiones.consulta_albaran.RecordCount);
      //showmessage(inttostr(existe));

      if existe= 0  then begin

   //SLEEP(5);

        FECHA_CON:= ( ADOTABLE1.FieldByName('F_CONCERT').AsSTRING);
       //SHOWMESSAGE(FECHA_CON);

       CONESIONES.consulta_albaran.SQL.Clear;
       CONESIONES.consulta_albaran.SQL.Add('INSERT INTO ALBARAN SET albaran =');
       CONESIONES.consulta_albaran.SQL.Add( quotedstr(ADOTABLE1.FieldByName('albaran').AsString));
       CONESIONES.consulta_albaran.SQL.Add(',referencia =');
       CONESIONES.consulta_albaran.SQL.Add( quotedstr(ADOTABLE1.FieldByName('referencia').AsString));
       CONESIONES.consulta_albaran.SQL.Add(',h_ruta =');
       CONESIONES.consulta_albaran.SQL.Add( quotedstr(ADOTABLE1.FieldByName('h_ruta').AsString));
       CONESIONES.consulta_albaran.SQL.Add(',cliente =');
       CONESIONES.consulta_albaran.SQL.Add( quotedstr(ADOTABLE1.FieldByName('cliente').AsString));
       CONESIONES.consulta_albaran.SQL.Add(',remitente =');
       CONESIONES.consulta_albaran.SQL.Add( quotedstr(ADOTABLE1.FieldByName('remitente').AsString));
       CONESIONES.consulta_albaran.SQL.Add(',cp_remite =');
       CONESIONES.consulta_albaran.SQL.Add( quotedstr(ADOTABLE1.FieldByName('cp_remite').AsString));
       CONESIONES.consulta_albaran.SQL.Add(',loc_remite =');
       CONESIONES.consulta_albaran.SQL.Add( quotedstr(ADOTABLE1.FieldByName('loc_remite').AsString));
       CONESIONES.consulta_albaran.SQL.Add(',consigna =');
       CONESIONES.consulta_albaran.SQL.Add( quotedstr(ADOTABLE1.FieldByName('consigna').AsString));
       CONESIONES.consulta_albaran.SQL.Add(',cp_consig =');
       CONESIONES.consulta_albaran.SQL.Add( quotedstr(ADOTABLE1.FieldByName('cp_consig').AsString));
       CONESIONES.consulta_albaran.SQL.Add(',loc_consig =');
       CONESIONES.consulta_albaran.SQL.Add( quotedstr(ADOTABLE1.FieldByName('loc_consig').AsString));
       CONESIONES.consulta_albaran.SQL.Add(',dir_consig =');
       CONESIONES.consulta_albaran.SQL.Add( quotedstr(ADOTABLE1.FieldByName('dir_consig').AsString));
       CONESIONES.consulta_albaran.SQL.Add(',bultos =');
       CONESIONES.consulta_albaran.SQL.Add( quotedstr(ADOTABLE1.FieldByName('bultos').AsString));


        if FECHA_CON <> '' then  BEGIN


       CONESIONES.consulta_albaran.SQL.Add(',f_concert =');
       //CONESIONES.consulta_albaran.SQL.Add(FECHA_CON);
       CONESIONES.consulta_albaran.SQL.Add(quotedstr(FormatDateTime('YYYY-MM-DD', ( ADOTABLE1.FieldByName('f_concert').AsDateTime))));

        END;

       CONESIONES.consulta_albaran.SQL.Add(',fecha_alb =');
       CONESIONES.consulta_albaran.SQL.Add(quotedstr(FormatDateTime('YYYY-MM-DD', ( ADOTABLE1.FieldByName('fecha_alb').AsDateTime))));
       CONESIONES.consulta_albaran.SQL.Add(',plaza_org =');
       CONESIONES.consulta_albaran.SQL.Add( quotedstr(ADOTABLE1.FieldByName('plaza_org').AsString));
       CONESIONES.consulta_albaran.SQL.Add(',plaza_dst =');
       CONESIONES.consulta_albaran.SQL.Add( quotedstr(ADOTABLE1.FieldByName('plaza_dst').AsString));
       CONESIONES.consulta_albaran.SQL.Add(',f_entrega =');
       CONESIONES.consulta_albaran.SQL.Add(quotedstr(FormatDateTime('YYYY-MM-DD', ( ADOTABLE1.FieldByName('f_entrega').AsDateTime))));
       CONESIONES.consulta_albaran.SQL.Add(',kilos =');
       CONESIONES.consulta_albaran.SQL.Add( quotedstr(ADOTABLE1.FieldByName('kilos').AsString));
       CONESIONES.consulta_albaran.SQL.Add(',proveedor = ""' );


        //ShowMessage(CONESIONES.consulta_albaran.SQL.Text);





   //SHOWMESSAGE(datetostr(fecha));
   conesiones.consulta_albaran.ExecSQL;
   F1.Refresh;
   ADOTABLE1.Next;
    //(quotedstr(FormatDateTime('YYYY-MM-DD', fecha_control)));
    //BEEP;
    END
    ELSE
    BEGIN

    SHOWMESSAGE('LA EXPEDICION '+ quotedstr(ADOTABLE1.FieldByName('albaran').AsString) + ' YA EXISTE, NO SE IMPORTARÁ');
    ADOTABLE1.Next;

      end;
  END;

      CONESIONES.consulta_albaran.Close;
    //ADOCONNECTION1.ConnectionString := ' ';
    ADOCONNECTION1.Close;
    F1.Close;





end;

procedure TF1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if length(Column.Field.AsString) > Column.Field.Tag then
begin
Column.Field.Tag:= length(Column.Field.AsString);
Column.Field.DisplayWidth:=Column.Field.Tag +1;
end;
end;

procedure TF1.FormShow(Sender: TObject);
begin
LABEL1.Visible:=FALSE;
LABEL3.Visible:=FALSE;

 ADOCONNECTION1.ConnectionString :=
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\correos_alm\alba' +
      'ran_def.xls;Extended Properties="Excel 8.0;HDR=Yes;IMEX=1";Persi' +
      'st Security Info=False' ;
  // conectar y obtener datos
  ADOTable1.Open;
  REGISTROS:=ADOTABLE1.RecordCount;
  ADOTABLE1.First;
end;

end.

unit u_repso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls, FileCtrl,
  scExcelExport;



type
  Tf_repaso = class(TForm)
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    Button2: TButton;
    data_enblanco: TDataSource;
    excel_compara: TscExcelExport;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FileListBox1DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_repaso: Tf_repaso;
  REGISTROS,REGISTROS2:INTEGER;
  origen, destino, expedicion, albaran_busca:string;
  convertido,CREFERENCIA,CREMITENTE,CCONSIGNATARIO,empleado:string;
 control:INTEGER;
   CBULTOS,CKILOS,importe_sistema,importe_camion:variant;
   FICHERO:STRING;






implementation

uses conexiones, declaraciones, U_elige;

{$R *.dfm}

procedure Tf_repaso.Button1Click(Sender: TObject);
begin

     //ADOCONNECTION1.Close;

     //elige_directorio.ShowModal;

     //DBGrid1.DataSource:=data_enblanco;
     dbgrid1.Repaint;
     //dbgrid1.Refresh;
     f_repaso.Refresh;



 //ADOCONNECTION1.ConnectionString :=
    //  'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\lotus\SEL   T5' +
    //  '_001.xls;Extended Properties="Excel 8.0;HDR=Yes;IMEX=1";Persi' +
    //  'st Security Info=False' ;
  // conectar y obtener datos
  //ADOTable1.Open;
  REGISTROS:=ADOTABLE1.RecordCount;
  ADOTABLE1.First;



   label2.Caption:=inttostr(registros);

        origen:= ADOTABLE1.FieldByName('org').AsString;
   destino:=ADOTABLE1.FieldByName('dst').AsString;
   expedicion:=ADOTABLE1.FieldByName('albaran').AsString;







    //BUSCAMOS RELACION EN BASE DE DATOS DE ALBARANES Y COMPARAMOS PRECIOS

    //coNESIONES.query_todosalb.SQL.CLEAR;
   // CONESIONES.query_todosalb.SQL.Add('SELECT * FROM ALBARAN WHERE ALBARAN = '  +   convertido );



    //CONESIONES.query_todosalb.ExecSQL;

    for CONTROL := 1 to REGISTROS do BEGIN


           origen:= ADOTABLE1.FieldByName('org').AsString;
   destino:=ADOTABLE1.FieldByName('dst').AsString;
   expedicion:=ADOTABLE1.FieldByName('albaran').AsString;
      convertido:=  concat (origen,destino,expedicion);
      CREFERENCIA:=ADOTable1.FieldByName('REFERENCIA').AsString;
      CREMITENTE:=ADOTable1.FieldByName('REMITENTE').AsString;
      CCONSIGNATARIO:=ADOTable1.FieldByName('CONSIGNATARIO').AsString;
      CBULTOS:=ADOTable1.FieldByName('BULTOS').AsFloat;
      CKILOS:=ADOTable1.FieldByName('KILOS').AsFloat;


    CONESIONES.query_todosalb.SQL.CLEAR;
    CONESIONES.query_todosalb.SQL.Add('SELECT * FROM ALBARAN WHERE COBRAMOS IS NOT NULL AND ALBARAN = ' + CONVERTIDO );

       IMPORTE_SISTEMA:=0;
       IMPORTE_CAMION:=0;


    //owmessage( CONESIONES.query_todosalb.SQL.Text);

    CONESIONES.query_todosalb.ExecSQL;
    REGISTROS2:= CONESIONES.query_todosalb.RecordCount;


      // if registros2 <> 0 then
       //  begin


   IMPORTE_SISTEMA:=ADOTable1.FieldByName('TPAGADOS').AsFloat;
   importe_camion:= conesiones.query_todosalb.FieldByName('cobramos').AsFloat;
    empleado:= conesiones.query_todosalb.FieldByName('usuario').AsString;








     if IMPORTE_SISTEMA <> IMPORTE_CAMION then

     begin

       //BEEP;
       conesiones.query_compara.sql.clear;
       CONESIONES.query_compara.SQL.Add('INSERT INTO compara SET imp_destina =');
       CONESIONES.query_compara.SQL.Add( importe_sistema);
       CONESIONES.query_compara.SQL.Add(', imp_camion =');
       CONESIONES.query_compara.SQL.Add(importe_camion);
       CONESIONES.query_compara.SQL.Add(', EXPEDICION =');
       CONESIONES.query_compara.SQL.Add(CONVERTIDO);
        CONESIONES.query_compara.SQL.Add(', CONSIGNA =');
       CONESIONES.query_compara.SQL.Add(QuotedStr(CCONSIGNATARIO));
       CONESIONES.query_compara.SQL.Add(', REMITENTE =');
       CONESIONES.query_compara.SQL.Add(QuotedStr(CREMITENTE));
       CONESIONES.query_compara.SQL.Add(', REFERENCIA =');
       CONESIONES.query_compara.SQL.Add(QuotedStr(CREFERENCIA));
       CONESIONES.query_compara.SQL.Add(', BULTOS =');
       CONESIONES.query_compara.SQL.Add(CBULTOS);
       CONESIONES.query_compara.SQL.Add(', KILOS =');
       CONESIONES.query_compara.SQL.Add(CKILOS);
       CONESIONES.query_compara.SQL.Add(', usuario =');
      CONESIONES.query_compara.SQL.Add(QuotedStr(empleado));

      ;

      //ShowMessage(CONESIONES.query_compara.SQL.Text);

     conesiones.query_compara.ExecSQL;



      IMPORTE_SISTEMA:=0;
       IMPORTE_CAMION:=0;
          //dbgrid1.Repaint;

          dbgrid2.Refresh;
   DBGrid2.repaint ;

     //f_repaso.Refresh;

     Application.ProcessMessages;

     end;







   //conesiones.query_compara.sql.clear;
  // CONESIONES.query_compara.SQL.Add('INSERT INTO compara SET imp_destina =');
     //  CONESIONES.query_compara.SQL.Add( importe_sistema);

      //   CONESIONES.query_compara.SQL.Add(', imp_camion =');
       //    CONESIONES.query_compara.SQL.Add(importe_camion);
       //conesiones.query_compara.ExecSQL;



     //   conesiones.query_compara.sql.clear;
     // conesiones.query_compara.sql. add('SELECT * FROM COMPARA');
     // conesiones.query_compara.ExecSQL;

        //  end;

      ADOTable1.next;


     end;







     conesiones.query_compara.sql.clear;

//conesiones.query_compara.Active :=TRUE;
 conesiones.query_compara.sql. add('SELECT * FROM COMPARA');
 conesiones.query_compara.ExecSQL;


  REGISTROS2:= CONESIONES.query_COMPARA.RecordCount;



   for CONTROL := 1 to REGISTROS2 DO begin

   IMPORTE_SISTEMA:=CONESIONES.query_compara.FieldByName('IMP_DESTINA').AsFloat;
   IMPORTE_CAMION:= CONESIONES.query_compara.FieldByName('IMP_CAMION').AsFloat;
   EXPEDICION:=CONESIONES.query_compara.FieldByName('EXPEDICION').AsString;


       if IMPORTE_SISTEMA = IMPORTE_CAMION then

        begin
         DBNAVIGATOR1.BtnClick(nbEDIT);
         CONESIONES.QUERY_COMPARA2.SQL.Clear;
        CONESIONES.QUERY_COMPARA2.SQL.ADD('DELETE FROM COMPARA WHERE EXPEDICION = '+ EXPEDICION);
         //ShowMessage(conesiones.QUERY_COMPARA2.SQL.Text);
         CONESIONES.QUERY_COMPARA2.ExecSQL;







         END;

           conesiones.QUERY_COMPARA.Next;




  END;

     DBNavigator1.BtnClick(nbRefresh);



     conesiones.query_compara.sql.clear;
     conesiones.query_compara.sql.add('select * from compara');
     conesiones.query_compara.ExecSQL;

     excel_compara.Dataset:=conesiones.query_compara;
     excel_compara.ExportDataset;
    excel_compara.ExcelWorkSheet.Range [ 'a1', 'L500'].Font.Size:=8;
    excel_compara.ExcelWorkSheet.Range [ 'a1', 'L500'].Font.Name:='Arial';
     excel_compara.SaveAs('c:\lotus\compara',FFXLSX);
     EXCEL_COMPARA.ExcelVisible:=TRUE;
     EXCEL_COMPARA.Disconnect;

  conesiones.query_compara.sql.clear;
 conesiones.query_compara.sql. add('SELECT * FROM COMPARA');
 conesiones.query_compara.ExecSQL;




END;



 procedure Tf_repaso.Button2Click(Sender: TObject);
begin
conesiones.query_compara.sql.clear;
conesiones.query_compara.sql. add('truncate table compara');
conesiones.query_compara.ExecSQL;

 conesiones.query_compara.sql.clear;

//conesiones.query_compara.Active :=TRUE;
 conesiones.query_compara.sql. add('SELECT * FROM COMPARA');
 conesiones.query_compara.ExecSQL;

end;




procedure Tf_repaso.Button3Click(Sender: TObject);
begin
elige_directorio.ShowModal;
end;

procedure Tf_repaso.FileListBox1DblClick(Sender: TObject);
begin


     //ShowMessage(ADOConnection1.ConnectionString);
end;

procedure Tf_repaso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   adotable1.Close;
   f_repaso.ADOConnection1.close;
end;

procedure Tf_repaso.FormHide(Sender: TObject);
begin
ADOTable1.CLOSE;
end;

procedure Tf_repaso.FormShow(Sender: TObject);
begin
//ADOTable1.Open;
elige_directorio.ShowModal;

end;

END.

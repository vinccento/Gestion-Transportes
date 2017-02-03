unit U_INFORMES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, DBAccess, MyAccess, MemDS, frxExportPDF,
  frxExportMail, frxExportXLS, frxCross;

type
  TINFORMES = class(TForm)
    R_CLIENTES_TODOS: TfrxReport;
    query_comodin: TMyQuery;
    data_comodin: TMyDataSource;
    rdb_comodin: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxXLSExport1: TfrxXLSExport;
    frxXLSExport2: TfrxXLSExport;
    informe_recogidas: TfrxReport;
    informe_quien: TfrxReport;
    RDB_CARTAPORTE: TfrxDBDataset;
    QUERY_CARTAPORTE: TMyQuery;
    R_CARTAPORTE: TfrxReport;
    informe_almacenaje: TfrxReport;
    rdb_almacenaje: TfrxDBDataset;
    query_almacenaje: TMyQuery;
    query_almacenajestock: TMyQuery;
    rd_almacenajestock: TfrxDBDataset;
    frxReport2: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    MyQuery1: TMyQuery;
    proveedores: TfrxReport;
    informe_cargas: TfrxReport;
    frxPDFExport2: TfrxPDFExport;
    frxReport1: TfrxReport;
    r_clientes_todos_congastos: TfrxReport;
    MyQuery2: TMyQuery;
    informe_coste_proveedor: TfrxReport;
    frxReport3: TfrxReport;
    QUERY_TARIFAS: TMyQuery;
    frxCrossObject1: TfrxCrossObject;
    DBTARIFAS_PROV: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  INFORMES: TINFORMES;

implementation

uses conexiones, ualbaranes;

{$R *.dfm}

end.


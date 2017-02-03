unit conexiones;

interface

uses
  SysUtils, Classes, DB, DBAccess, MyAccess, MemDS, MyDacVcl;

type
  Tconesiones = class(TDataModule)
    conexion_general: TMyConnection;
    query_clientes: TMyQuery;
    DATA_CLIENTES: TMyDataSource;
    query_localidades: TMyQuery;
    data_localidades: TMyDataSource;
    QUERY_PROVINCIAS: TMyQuery;
    MyDataSource1: TMyDataSource;
    query_todosalb: TMyQuery;
    query_albmespas: TMyQuery;
    data_albmespas: TMyDataSource;
    QUERY_ALBARANADR: TMyQuery;
    DATA_ALBARANADR: TMyDataSource;
    query_tablaadr: TMyQuery;
    data_tablaadr: TMyDataSource;
    query_almacenaje: TMyQuery;
    data_almacenaje: TMyDataSource;
    query_albaranadr2: TMyQuery;
    q: TMyDataSource;
    query_modifica_todosalb: TMyQuery;
    data_modifica_todos_Alb: TMyDataSource;
    query_almacenaje_añade: TMyQuery;
    data_almacenaje_añade: TMyDataSource;
    QUERY_ALMACENAJE_COMPRUEBA: TMyQuery;
    MyConnectDialog1: TMyConnectDialog;
    query_control_almacen: TMyQuery;
    data_control_almacen: TMyDataSource;
    query_control_almacen_grilla: TMyQuery;
    data_control_almacen_grilla: TMyDataSource;
    CLIENTES_ALMACENAJE: TMyQuery;
    data_clientes_almacenaje: TMyDataSource;
    query_tarifa_prov: TMyQuery;
    data_tarifa_prov: TMyDataSource;
    consulta_albaran: TMyQuery;
    CONSULTA_BAREMOS: TMyQuery;
    data_baremos: TMyDataSource;
    BUSCA_COMODIN: TMyQuery;
    DATA_COMODIN: TMyDataSource;
    BUSCA_SEGUI: TMyQuery;
    DATA_SEGUI: TMyDataSource;
    busca_segui2: TMyQuery;
    data_segui2: TMyDataSource;
    data_todosalb: TMyDataSource;
    data_compara: TMyDataSource;
    query_compara: TMyQuery;
    DATA_COMPARA2: TMyDataSource;
    QUERY_COMPARA2: TMyQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  conesiones: Tconesiones;

implementation

{$R *.dfm}

end.

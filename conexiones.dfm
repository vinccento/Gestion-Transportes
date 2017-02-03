object conesiones: Tconesiones
  OldCreateOrder = False
  Height = 709
  Width = 1118
  object conexion_general: TMyConnection
    Database = 'gestion33'
    Username = 'jose'
    Password = '112233'
    Server = '172.16.1.113'
    Connected = True
    ConnectDialog = MyConnectDialog1
    Left = 48
    Top = 16
  end
  object query_clientes: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO clientes'
      '  (CLIENTE)'
      'VALUES'
      '  (:CLIENTE)')
    SQLDelete.Strings = (
      'DELETE FROM clientes'
      'WHERE'
      '  CLIENTE = :Old_CLIENTE')
    SQLUpdate.Strings = (
      'UPDATE clientes'
      'SET'
      '  CLIENTE = :CLIENTE'
      'WHERE'
      '  CLIENTE = :Old_CLIENTE')
    SQLRefresh.Strings = (
      'SELECT CLIENTE FROM clientes'
      'WHERE'
      '  CLIENTE = :CLIENTE')
    SQLLock.Strings = (
      'SELECT * FROM clientes'
      'WHERE'
      '  CLIENTE = :Old_CLIENTE'
      'FOR UPDATE')
    Connection = conexion_general
    SQL.Strings = (
      'select * from clientes ORDER BY CLIENTE limit 20')
    Left = 48
    Top = 80
  end
  object DATA_CLIENTES: TMyDataSource
    DataSet = query_clientes
    Left = 40
    Top = 160
  end
  object query_localidades: TMyQuery
    Connection = conexion_general
    SQL.Strings = (
      'select * from t_municipios  ORDER BY codpostal limit 30')
    Left = 136
    Top = 80
  end
  object data_localidades: TMyDataSource
    DataSet = query_localidades
    Left = 136
    Top = 160
  end
  object QUERY_PROVINCIAS: TMyQuery
    Connection = conexion_general
    Left = 248
    Top = 32
  end
  object MyDataSource1: TMyDataSource
    DataSet = QUERY_PROVINCIAS
    Left = 248
    Top = 160
  end
  object query_todosalb: TMyQuery
    Connection = conexion_general
    SQL.Strings = (
      'select * from albaran  order  by cliente, fecha_alb limit 500')
    Active = True
    Left = 344
    Top = 32
  end
  object query_albmespas: TMyQuery
    Connection = conexion_general
    Left = 432
    Top = 32
  end
  object data_albmespas: TMyDataSource
    DataSet = query_albmespas
    Left = 464
    Top = 120
  end
  object QUERY_ALBARANADR: TMyQuery
    Connection = conexion_general
    SQL.Strings = (
      'SELECT * FROM ALBARAN_ADR')
    Left = 536
    Top = 32
  end
  object DATA_ALBARANADR: TMyDataSource
    DataSet = QUERY_ALBARANADR
    Left = 568
    Top = 120
  end
  object query_tablaadr: TMyQuery
    Connection = conexion_general
    SQL.Strings = (
      'select * from tabla_adr limit 10')
    Left = 648
    Top = 24
  end
  object data_tablaadr: TMyDataSource
    DataSet = query_tablaadr
    Left = 688
    Top = 120
  end
  object query_almacenaje: TMyQuery
    Connection = conexion_general
    SQL.Strings = (
      'SELECT referencia FROM almacenaje')
    Left = 64
    Top = 304
  end
  object data_almacenaje: TMyDataSource
    DataSet = query_almacenaje
    Left = 64
    Top = 376
  end
  object query_albaranadr2: TMyQuery
    Connection = conexion_general
    SQL.Strings = (
      'select * from albaran_adr')
    Left = 744
    Top = 32
  end
  object q: TMyDataSource
    DataSet = query_albaranadr2
    Left = 776
    Top = 128
  end
  object query_modifica_todosalb: TMyQuery
    Connection = conexion_general
    SQL.Strings = (
      'select * from albaran  order  by cliente, fecha_alb limit 500')
    Left = 224
    Top = 288
  end
  object data_modifica_todos_Alb: TMyDataSource
    DataSet = query_modifica_todosalb
    Left = 216
    Top = 384
  end
  object query_almacenaje_añade: TMyQuery
    Connection = conexion_general
    SQL.Strings = (
      'SELECT referencia FROM almacenaje')
    Left = 456
    Top = 288
  end
  object data_almacenaje_añade: TMyDataSource
    DataSet = query_almacenaje_añade
    Left = 456
    Top = 376
  end
  object QUERY_ALMACENAJE_COMPRUEBA: TMyQuery
    Connection = conexion_general
    SQL.Strings = (
      'SELECT referencia FROM almacenaje')
    Left = 616
    Top = 280
  end
  object MyConnectDialog1: TMyConnectDialog
    DatabaseLabel = 'Base de datos-'
    PortLabel = 'Puerto'
    Caption = 'Conectar'
    UsernameLabel = 'Usuario-'
    PasswordLabel = 'Clave'
    ServerLabel = 'Cadena Conexi'#243'n'
    ConnectButton = 'Ok'
    CancelButton = 'Cancelar'
    LabelSet = lsCustom
    Left = 152
    Top = 16
  end
  object query_control_almacen: TMyQuery
    Connection = conexion_general
    SQL.Strings = (
      'select * from entradas_helm'
      
        'INNER JOIN lotes_helm ON entradas_helm.NUM_COMPRA = lotes_helm.N' +
        'UM_COMPRA'
      'limit 20')
    Left = 48
    Top = 448
  end
  object data_control_almacen: TMyDataSource
    DataSet = query_control_almacen
    Left = 48
    Top = 512
  end
  object query_control_almacen_grilla: TMyQuery
    Connection = conexion_general
    SQL.Strings = (
      'select num_compra, LOTE,producto,KILOS, CONTENEDOR'
      ' from LOTES_helm'
      'order by NUM_COMPRA')
    Left = 216
    Top = 448
  end
  object data_control_almacen_grilla: TMyDataSource
    DataSet = query_control_almacen_grilla
    Left = 208
    Top = 512
  end
  object CLIENTES_ALMACENAJE: TMyQuery
    Connection = conexion_general
    SQL.Strings = (
      'SELECT * FROM CLIENTES_ALMACENAJE')
    Left = 456
    Top = 456
  end
  object data_clientes_almacenaje: TMyDataSource
    DataSet = CLIENTES_ALMACENAJE
    Left = 456
    Top = 520
  end
  object query_tarifa_prov: TMyQuery
    Connection = conexion_general
    SQL.Strings = (
      'SELECT * FROM tarifa_proveedor')
    Left = 832
    Top = 288
  end
  object data_tarifa_prov: TMyDataSource
    DataSet = query_tarifa_prov
    Left = 840
    Top = 360
  end
  object consulta_albaran: TMyQuery
    Connection = conexion_general
    SQL.Strings = (
      'select * from albaran  order  by cliente, fecha_alb limit 500')
    Left = 344
    Top = 224
  end
  object CONSULTA_BAREMOS: TMyQuery
    Connection = conexion_general
    SQL.Strings = (
      'select * from BAREMOS_T_PROV')
    Left = 936
    Top = 288
  end
  object data_baremos: TMyDataSource
    DataSet = CONSULTA_BAREMOS
    Left = 936
    Top = 360
  end
  object BUSCA_COMODIN: TMyQuery
    Connection = conexion_general
    SQL.Strings = (
      'SELECT'
      'albaran.FECHA_ALB,'
      'albaran.REFERENCIA,'
      'albaran.BULTOS,'
      'albaran.KILOS,'
      'albaran.CONSIGNA,'
      'albaran.CP_CONSIG,'
      'albaran.LOC_CONSIG,'
      'albaran.FECHA_ENTREGADA,'
      ''
      ''
      'albaran.cliente,'
      ''
      'clientes.NOMBRE'
      ''
      'FROM'
      'albaran'
      'INNER JOIN clientes ON clientes.CLIENTE = albaran.CLIENTE'
      ''
      'LIMIT 100')
    Left = 760
    Top = 472
  end
  object DATA_COMODIN: TMyDataSource
    DataSet = BUSCA_COMODIN
    Left = 760
    Top = 536
  end
  object BUSCA_SEGUI: TMyQuery
    Connection = conexion_general
    SQL.Strings = (
      'SELECT'
      'albaran.FECHA_ALB,'
      'albaran.REFERENCIA,'
      'albaran.BULTOS,'
      'albaran.KILOS,'
      'albaran.CONSIGNA,'
      'albaran.CP_CONSIG,'
      'albaran.LOC_CONSIG,'
      'albaran.FECHA_ENTREGADA,'
      'ALBARAN.PROVEEDOR,'
      'albaran.ESTADO,'
      'albaran.cliente,'
      'ALBARAN.COMENTARIO_SEGUI,'
      'clientes.NOMBRE'
      'clientes.diferencia'
      ''
      'FROM'
      'albaran'
      'INNER JOIN clientes ON clientes.CLIENTE = albaran.CLIENTE'
      ''
      'LIMIT 100')
    Left = 880
    Top = 472
  end
  object DATA_SEGUI: TMyDataSource
    DataSet = BUSCA_SEGUI
    Left = 880
    Top = 544
  end
  object busca_segui2: TMyQuery
    Connection = conexion_general
    SQL.Strings = (
      'SELECT'
      'albaran.FECHA_ALB,'
      'albaran.REFERENCIA,'
      'albaran.BULTOS,'
      'albaran.KILOS,'
      'albaran.CONSIGNA,'
      'albaran.CP_CONSIG,'
      'albaran.LOC_CONSIG,'
      'albaran.FECHA_ENTREGADA,'
      'ALBARAN.PROVEEDOR,'
      'albaran.ESTADO,'
      'albaran.cliente,'
      'ALBARAN.COMENTARIO_SEGUI,'
      'clientes.NOMBRE'
      'clientes.diferencia'
      ''
      'FROM'
      'albaran'
      'INNER JOIN clientes ON clientes.CLIENTE = albaran.CLIENTE'
      ''
      'LIMIT 100')
    Left = 984
    Top = 464
  end
  object data_segui2: TMyDataSource
    DataSet = busca_segui2
    Left = 984
    Top = 536
  end
  object data_todosalb: TMyDataSource
    DataSet = query_todosalb
    Left = 344
    Top = 112
  end
  object data_compara: TMyDataSource
    DataSet = query_compara
    Left = 888
    Top = 32
  end
  object query_compara: TMyQuery
    Connection = conexion_general
    SQL.Strings = (
      'select * from compara')
    Active = True
    Left = 888
    Top = 128
  end
  object DATA_COMPARA2: TMyDataSource
    DataSet = QUERY_COMPARA2
    Left = 984
    Top = 40
  end
  object QUERY_COMPARA2: TMyQuery
    Connection = conexion_general
    SQL.Strings = (
      'select * from compara')
    Active = True
    Left = 1008
    Top = 120
  end
end

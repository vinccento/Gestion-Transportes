unit declaraciones;

interface

USES Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, DBCtrls, Mask, Grids, DBGrids, jpeg,
  ShellApi, comobj;

var
  CODPROV2: STRING;
  sUsuario: string;
  fecha_ini,fecha_ini1,FECHA_INI2,FECHA_FINI2: string;
  fecha_fini, fecha_fini1: string;
  CONTAR: STRING;
  cliente1: string;
  texto: string;

  texto_sql: string;
  NUMEROONU: STRING;
  NOMBREONU: STRING;
  fecha_inicial: tdate;
  fecha_final: tdate;
  condicion_precio, condicion_precio2: string;
  parametro_22: string;
  param_busca_almacen: string;
  PARAM_BUSCA_PRODUCTO: STRING;
  param_busca_lote: string;
  numero_compra: string;
  ASI: STRING;
  expedicion: string;
  factura: string;
  // VARIABLES PARA TARIFA DE PROVEEDOR
  BAREMO1: STRING;
  PRECIO_BAREMO_PROV: DOUBLE;
  BUSCATARIFA: STRING;
  TPROVEEDOR: STRING;
  RECUENTO, recuento2: INTEGER;
  CONTROLRECUENTO: INTEGER;
  KILOS_MINIMO: DOUBLE;
  KILOS_MAXIMO: DOUBLE;
  KILOS_ALBARAN: DOUBLE;
  CODIGO_BAREMO: STRING;
  CADENACODIGO, PROVINCIA, TIPO_TARIFA: STRING;
  TIPOTARIFA: STRING;
  PRECIOactual, PRECIOANTERIOR, PRECIOREAL, PRECIOTARIFA: DOUBLE;
  usuario: string;
  dec:integer;
  fecha1,fecha2:tdate;
  result_fecha:double;
  fichero:string;
PROCEDURE DETECTA_BAREMO();
PROCEDURE TARIFAS();
PROCEDURE SACA_TRAMO();

implementation

uses ualbaranes, conexiones;
/// //////////////////////////////////////////////////////////////////////
/// ///////////     PROCEDIMEINTOS    ////////////////////////////////////
/// //////////////////////////////////////////////////////////////////////

PROCEDURE TARIFAS();

BEGIN
  DETECTA_BAREMO();
  // SACA_TRAMO();

END;

/// DETECTAR EL BAREMO///

PROCEDURE DETECTA_BAREMO();

VAR

  T_PROVEEDOR, BUSCATARIFA: STRING;
BEGIN
  // ********SACAMOS EL BAREMO A PARA TARIFAR

  TPROVEEDOR := F_ALBARANES.DBEDIT1.Text;

  BUSCATARIFA := 'SELECT * FROM TARIFA_PROVEEDOR WHERE PROVEEDOR LIKE' +
    (QUOTEDSTR('%' + TPROVEEDOR + '%')) + ' ORDER BY TRAMO';

  conesiones.query_tarifa_prov.SQL.Clear;
  conesiones.query_tarifa_prov.SQL.Add(BUSCATARIFA);
  conesiones.query_tarifa_prov.ExecSQL;
  RECUENTO := conesiones.query_tarifa_prov.RecordCount;

  if RECUENTO > 0 then
  BEGIN
    CADENACODIGO := COPY(F_ALBARANES.DBCP.Text, 1, 2);
    conesiones.CONSULTA_BAREMOS.SQL.Clear;
    conesiones.CONSULTA_BAREMOS.SQL.Add(
      'SELECT * FROM BAREMOS_T_PROV WHERE CODIGO= ' +

        CADENACODIGO);

    if CADENACODIGO <> '' then
    BEGIN

      conesiones.CONSULTA_BAREMOS.ExecSQL;



      CODIGO_BAREMO := conesiones.CONSULTA_BAREMOS.FieldByName('BAREMO')
        .AsString;
      PROVINCIA := conesiones.CONSULTA_BAREMOS.FieldByName('PROV').AsString;
      F_ALBARANES.LABEL56.Caption := ' PROVINCIA ' + PROVINCIA + ', BAREMO- ' +
        CODIGO_BAREMO + ', Proveedor- ' + conesiones.query_tarifa_prov.FieldByName('proveedor')
        .AsString ;
    END;
  END;

  if RECUENTO = 0 THEN
  BEGIN
    F_ALBARANES.LABEL56.Caption := '';
    exit;
  END;

  EXIT;

END;

/// //////////////////////////////////////////
/// DETECTAMOS EL TRAMO y el precio/////////
/// ////////////////////////////////////////

PROCEDURE SACA_TRAMO();

BEGIN
  if CADENACODIGO = '' then
  BEGIN
    EXIT;

  END;




  if RECUENTO > 0 then
  BEGIN

    KILOS_ALBARAN := STRTOFLOAT(F_ALBARANES.dbkilos.Text);

    BUSCATARIFA := 'SELECT * FROM TARIFA_PROVEEDOR WHERE PROVEEDOR LIKE' +
      (QUOTEDSTR('%' + TPROVEEDOR + '%')) + '  AND BAREMO = ' +
      CODIGO_BAREMO + ' AND TRAMO >= ' + FLOATTOSTR(KILOS_ALBARAN)
      + ' ORDER BY TRAMO';

    conesiones.query_tarifa_prov.SQL.Clear;
    conesiones.query_tarifa_prov.SQL.Add(BUSCATARIFA);
    conesiones.query_tarifa_prov.ExecSQL;

    BUSCATARIFA := conesiones.query_tarifa_prov.FieldByName('TRAMO').AsString;
    TIPO_TARIFA := conesiones.query_tarifa_prov.FieldByName('TIPO').AsString;
    PRECIOTARIFA := conesiones.query_tarifa_prov.FieldByName('IMPORTE').AsFloat;

    RECUENTO := conesiones.query_tarifa_prov.RecordCount;

   //ShowMessage(TPROVEEDOR + '   ' + inttostr(RECUENTO)
    //      + '  ' + CADENACODIGO);

    if RECUENTO = 0 then BEGIN
//  f_albaranes.dbPAGAMOS.Text:='';
  EXIT;
  END;
    // ShowMessage(floattostr(preciotarifa));

    /// /SACAMOS EL PRECIO TERORICO
    ///
    if conesiones.query_tarifa_prov.FieldByName('tipo').AsString = 'F' THEN

    begin
      PRECIOactual := PRECIOTARIFA;

    end;

    if conesiones.query_tarifa_prov.FieldByName('tipo').AsString = 'K' THEN

    begin
      PRECIOactual := PRECIOTARIFA * KILOS_ALBARAN;
    end;



    // VEMOS EL PRECIO DEL MINIMO ANTERIOR
    // SHOWMESSAGE(FLOATTOSTR(KILOS_ALBARAN)+ ' TOMAMOS EL TRAMO ' + BUSCATARIFA + ' TIPO DE TARIFA ' + TIPO_TARIFA + ' PRECIO APLICABLE ' + FLOATTOSTR(PRECIOACTUAL));



    BUSCATARIFA := 'SELECT * FROM TARIFA_PROVEEDOR WHERE PROVEEDOR LIKE' +
      (QUOTEDSTR('%' + TPROVEEDOR + '%')) + '  AND BAREMO = ' +
      CODIGO_BAREMO + ' AND TRAMO < ' + FLOATTOSTR(KILOS_ALBARAN)
      + ' ORDER BY TRAMO';

    conesiones.query_tarifa_prov.SQL.Clear;
    conesiones.query_tarifa_prov.SQL.Add(BUSCATARIFA);
    conesiones.query_tarifa_prov.ExecSQL;
    conesiones.query_tarifa_prov.last;
    // conesiones.query_tarifa_prov.Prior;

       //ShowMessage(TPROVEEDOR + '   ' + inttostr(RECUENTO)
         // + '  ' + CADENACODIGO);

    PRECIOTARIFA := conesiones.query_tarifa_prov.FieldByName('IMPORTE').AsFloat;
    // showmessage(floattostr(CONESIONES.query_tarifa_prov.FieldByName('IMPORTE').AsFloat));
    // showmessage(conesiones.query_tarifa_prov.FieldByName('tipo').AsString);

    if conesiones.query_tarifa_prov.FieldByName('tipo').AsString = 'F' THEN

    begin
      PRECIOANTERIOR := PRECIOTARIFA;

      // ShowMessage(floattostr(precioanterior));

    end;

    If conesiones.query_tarifa_prov.FieldByName('tipo').AsString = 'K' THEN

    begin
      PRECIOANTERIOR := PRECIOTARIFA * (conesiones.query_tarifa_prov.FieldByName
          ('TRAMO').AsFloat);
      // ShowMessage(floattostr(precioanterior));
    end;

     //SHOWMESSAGE (' PRECIO MINIMO ANTERIOR  ' + FLOATTOSTR(PRECIOANTERIOR));
  END;


   //ShowMessage(FloatToStr(precioanterior) + '   ' + FloatToStr(PRECIOactual));

  if PRECIOANTERIOR > PRECIOactual then
  begin
    F_ALBARANES.dbpagamos.Text := formatfloat('0.00', PRECIOANTERIOR);
  end;

  if PRECIOANTERIOR < PRECIOactual then
  begin
    F_ALBARANES.dbpagamos.Text := formatfloat('0.00', PRECIOactual);
  end;

  // Format('%7.2m',[total]);



END;

end.

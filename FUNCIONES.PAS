unit FUNCIONES;

interface

USES
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,db, dbtables, ComCtrls, ExtCtrls, StdCtrls, DBCtrls, Mask, Grids, DBGrids, jpeg,
  ShellApi, comobj, OleServer, ExcelXP,dbclient, Excel2000,  scExcelExport;



  var

  busca2,NOMBREFICHERO,NOMBREFICHERO2,BUSCA4,chofer, NUMERO_ALBARAN, QUE_CLIENTE,QUE_REFERENCIA,que_proveedor,QUE_REMITENTE : string;
  procedure exporta_cliente();
  procedure exporta_web();
  PROCEDURE EXPORTA_EXCEL_CON_PRECIOS();
  PROCEDURE EXPORTA_EXCEL_conformes();
  PROCEDURE PROV_NO_COBRA();
  procedure exporta_prove();
  PROCEDURE CARTA_PORTE();
  PROCEDURE COPIA_ALMACENAJE();

implementation

uses ualbaranes, conexiones, declaraciones;

procedure exporta_cliente() ;


begin
  FECHA_INI1 := quotedstr(FormatDateTime('yyyy-mm-dd', f_albaranes.fechatimer.DateTime));
    fecha_fini1 := quotedstr(FormatDateTime('yyyy-mm-dd',
        f_albaranes.fechatimer_final.DateTime));
     //NOMBREFICHERO:=INPUTQUERY('GUARDAR COMO..',  'INTRODUCIR NOMBRE DE FICHERO');


       if NOT INPUTQUERY('GUARDAR COMO..',  'INTRODUCIR NOMBRE DE FICHERO',NOMBREFICHERO) then EXIT;



         NOMBREFICHERO2:='C:\TEMP\' + NOMBREFICHERO;

     //SHOWMESSAGE(NOMBREFICHERO2);

  busca2:= 'select  fecha_alb, referencia, consigna, loc_consig, bultos, kilos, cobramos ' +
           'from albaran where   (FECHA_ALB BETWEEN ' + FECHA_INI1 +  ' AND ' +   fecha_fini1+ ')' +
           ' AND' + ' ( cliente like '   + quotedstr('%' + f_albaranes.BUSCA_NOMBRE.Text + '%') +
           ' AND' + ' cuenta_fact <> ' + '"' +   'No'+ '"' +
            '  OR  remitente  like' + quotedstr('%' + F_ALBARANES.BUSCA_NOMBRE.Text + '%') + ')' +
            ' ORDER BY  FECHA_ALB, CLIENTE ';



           conesiones.BUSCA_COMODIN.sql.clear;
           conesiones.busca_comodin.sql.add (busca2);
          // SHOWMESSAGE(CONESIONES.BUSCA_COMODIN.SQL.Text);

           conesiones.BUSCA_COMODIN.ExecSQL;
              //f_albaranes.EXCEL_CLIENTES.BorderGroup.BackColor:=$005AD88F;
          // F_ALBARANES.EXCEL_CLIENTES.GroupFields.ADD('REMITENTE');

           F_ALBARANES.EXCEL_CLIENTES.Dataset:=CONESIONES.BUSCA_COMODIN;
           F_ALBARANES.EXCEL_CLIENTES.ExportDataset;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'L500'].Font.Name:='calibri';
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'L500'].Font.Size:=10;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'l1'].Font.Color:=clblue;
            //f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a2', 'i500'].Font.Size:=7;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'e300'] .EntireColumn.AutoFit;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['A1', 'A1'].Value:='FECHA ALBARAN';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['A1', 'A1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['b1', 'b1'].Value:='REFERENCIA';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['B1', 'B1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['C1', 'C1'].Value:='DESTINATARIO';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['C1', 'C1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['D1', 'D1'].Value:='LOCALIDAD';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['D1', 'D1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['E1', 'E1'].Value:='BULTOS';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['E1', 'E1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['F1', 'F1'].Value:='KILOS';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['F1', 'F1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['G1', 'G1'].Value:='IMPORTE';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['G1', 'G1'].FONT.Bold:=TRUE;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Name:='RESUMEN';







             F_ALBARANES.EXCEL_CLIENTES.SaveAs(  NOMBREFICHERO2,FFXLSX);
            f_albaranes.EXCEL_CLIENTES.ExcelVisible:=TRUE;
           F_ALBARANES.EXCEL_CLIENTES.Disconnect;


          //Form1.Button1Click(self);


             {
         EXCEL_CLIENTES.ExportDataset;
          EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'i500'].Font.Size:=8;
          EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'e1', 'e20'] .EntireColumn.AutoFit;
          EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'A1', 'A1'].Value2:='fecha';

         EXCEL_CLIENTES.Disconnect; }

         conesiones.BUSCA_COMODIN.SQL.Clear;

            exit;


           end;

           {PROCEDIMEINTO PARA CREAR UN EXCEL PARA EXPORTAR A LA WEB DE DESTINA
           -------------------------------------------------------------------
           -----------------------------------------------------
           ******************************************************
           ******************************************************
           }

     PROCEDURE EXPORTA_WEB();

   begin
  FECHA_INI1 := quotedstr(FormatDateTime('yyyy-mm-dd', f_albaranes.fechatimer.DateTime));
    fecha_fini1 := quotedstr(FormatDateTime('yyyy-mm-dd',
        f_albaranes.fechatimer_final.DateTime));
     //NOMBREFICHERO:=INPUTQUERY('GUARDAR COMO..',  'INTRODUCIR NOMBRE DE FICHERO');


       if NOT INPUTQUERY('GUARDAR COMO..',  'INTRODUCIR NOMBRE DE FICHERO',NOMBREFICHERO) then EXIT;

        chofer:= InputBox('STOCK INICIAL',
    'Nombre del Proveedor', '');


         NOMBREFICHERO2:='C:\TEMP\' + NOMBREFICHERO;

     //SHOWMESSAGE(NOMBREFICHERO2);

  busca2:= 'select fecha_alb,DIR_RECOGIDA, referencia, consigna, CP_CONSIG,loc_consig, bultos, kilos,  PROVEEDOR, f_concert ' +
           'from albaran where   (FECHA_ALB BETWEEN ' + FECHA_INI1 +  ' AND ' +   fecha_fini1+ ')' +
           //'AND' + ' ( cliente like '   + quotedstr('%' + f_albaranes.BUSCA_NOMBRE.Text + '%') +
           ' AND' + ' ( PROVEEDOR like '   + quotedstr('%' + chofer + '%') +
            '  AND  REmitente  like' + quotedstr('%' + F_ALBARANES.BUSCA_NOMBRE.Text + '%') + ')' +
             ' ORDER BY FECHA_ALB,DIR_RECOGIDA,CLIENTE';



           conesiones.BUSCA_COMODIN.sql.clear;
           conesiones.busca_comodin.sql.add (busca2);
           //SHOWMESSAGE(CONESIONES.BUSCA_COMODIN.SQL.Text);

           conesiones.BUSCA_COMODIN.ExecSQL;

           F_ALBARANES.EXCEL_CLIENTES.Dataset:=CONESIONES.BUSCA_COMODIN;
           F_ALBARANES.EXCEL_CLIENTES.GroupFields.CLEAR;
           //F_ALBARANES.EXCEL_CLIENTES.GroupFields.ADD('FECHA_ALB');

           f_albaranes.EXCEL_CLIENTES.BorderGroup.BackColor:=$005AD88F;
           F_ALBARANES.EXCEL_CLIENTES.GroupFields.ADD('DIR_RECOGIDA');


           //f_albaranes.EXCEL_CLIENTES.AutoFilter:=TRUE;
           f_albaranes.EXCEL_CLIENTES.BeginRowHeader:=2;

           F_ALBARANES.EXCEL_CLIENTES.ExportDataset;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'L1'].Font.Size:=8;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'L1'].Font.Color:=clblue;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a2', 'L500'].Font.Size:=8;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'L500'].Font.Name:='calibri';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['A1', 'L500'].FONT.Bold:=TRUE;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'L500'] .EntireColumn.AutoFit;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['A1', 'A1'].Value:='FECHA ALBARAN';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['A1', 'A1'].FONT.Bold:=TRUE;

             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['b1', 'b1'].Value:='DIRECCION DE CARGA';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['B1', 'B1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['C1', 'C1'].Value:='REFERENCIA';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['C1', 'C1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['D1', 'D1'].Value:='DESTINATARIO';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['D1', 'D1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['E1', 'E1'].Value:='COD. POST';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['E1', 'E1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['F1', 'F1'].Value:='POBLACION';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['F1', 'F1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['G1', 'G1'].Value:='BULTOS';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['G1', 'G1'].FONT.Bold:=TRUE;
             F_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['H1', 'H1'].Value:='KILOS';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['H1', 'H1'].FONT.Bold:=TRUE;
             //F_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['i1', 'i1'].Value:='COBRAMOS';
             //f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['i1', 'i1'].FONT.Bold:=TRUE;
             //F_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['J1', 'J1'].Value:='PAGAMOS';
             //f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['J1', 'J1'].FONT.Bold:=TRUE;
             F_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['I1', 'I1'].Value:='PROVEEDOR';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['I1', 'I1'].FONT.Bold:=TRUE;
             F_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['J1', 'J1'].Value:='ENTREGA';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['J1', 'J1'].FONT.Bold:=TRUE;

            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Name:='RESUMEN';








             F_ALBARANES.EXCEL_CLIENTES.SaveAs(  NOMBREFICHERO2,FFXLSX);
            f_albaranes.EXCEL_CLIENTES.ExcelVisible:=TRUE;
           F_ALBARANES.EXCEL_CLIENTES.Disconnect;


          //Form1.Button1Click(self);


             {
         EXCEL_CLIENTES.ExportDataset;
          EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'i500'].Font.Size:=8;
          EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'e1', 'e20'] .EntireColumn.AutoFit;
          EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'A1', 'A1'].Value2:='fecha';

         EXCEL_CLIENTES.Disconnect; }

         conesiones.BUSCA_COMODIN.SQL.Clear;

            exit;


           end;

  PROCEDURE EXPORTA_EXCEL_CON_PRECIOS();

   begin

     if F_ALBARANES.chsinprecio.Checked  = true  then
  begin
    condicion_precio := ' AND  cobramos is null ' ;
  end

  else

  begin
    condicion_precio := '';
  end;


  FECHA_INI1 := quotedstr(FormatDateTime('yyyy-mm-dd', f_albaranes.fechatimer.DateTime));
    fecha_fini1 := quotedstr(FormatDateTime('yyyy-mm-dd',
        f_albaranes.fechatimer_final.DateTime));
     //NOMBREFICHERO:=INPUTQUERY('GUARDAR COMO..',  'INTRODUCIR NOMBRE DE FICHERO');


       if NOT INPUTQUERY('GUARDAR COMO..',  'INTRODUCIR NOMBRE DE FICHERO',NOMBREFICHERO) then EXIT;

        chofer:= InputBox('STOCK INICIAL',
    'Nombre del Proveedor', '');


         NOMBREFICHERO2:='C:\TEMP\' + NOMBREFICHERO;

     //SHOWMESSAGE(NOMBREFICHERO2);

  busca2:= 'select fecha_alb,REMITENTE, albaran, REFERENCIA, consigna, CP_CONSIG,loc_consig, bultos, kilos,PROVEEDOR, COBRAMOS, PAGAMOS  ' +
           'from albaran where   (FECHA_ALB BETWEEN ' + FECHA_INI1 +  ' AND ' +   fecha_fini1+ ')' +
           //'AND' + ' ( cliente like '   + quotedstr('%' + f_albaranes.BUSCA_NOMBRE.Text + '%') +
           ' AND' + '  PROVEEDOR like '   + quotedstr('%' + chofer + '%') +
             ' AND' + ' ( cliente like '   + quotedstr('%' + f_albaranes.BUSCA_NOMBRE.Text + '%') +
              ' AND' + ' ALBARAN <> ' +   '111111111111'+
            '  OR  remitente  like' + quotedstr('%' + F_ALBARANES.BUSCA_NOMBRE.Text + '%') + ')' +
             condicion_precio +
             ' ORDER BY FECHA_ALB';

             //ShowMessage(BUSCA2);

             //'select fecha_alb, referencia, consigna, loc_consig, bultos, kilos, cobramos ' +
           //'from albaran where   (FECHA_ALB BETWEEN ' + FECHA_INI1 +  ' AND ' +   fecha_fini1+ ')' +
          // ' AND' + ' ( cliente like '   + quotedstr('%' + f_albaranes.BUSCA_NOMBRE.Text + '%') +
          //  '  OR  remitente  like' + quotedstr('%' + F_ALBARANES.BUSCA_NOMBRE.Text + '%') + ')' +
           //  ' ORDER BY FECHA_ALB,CLIENTE';



           conesiones.BUSCA_COMODIN.sql.clear;
           conesiones.busca_comodin.sql.add (busca2);
           //SHOWMESSAGE(CONESIONES.BUSCA_COMODIN.SQL.Text);

           conesiones.BUSCA_COMODIN.ExecSQL;

           F_ALBARANES.EXCEL_CLIENTES.Dataset:=CONESIONES.BUSCA_COMODIN;
           F_ALBARANES.EXCEL_CLIENTES.GroupFields.CLEAR;
           //F_ALBARANES.EXCEL_CLIENTES.GroupFields.ADD('FECHA_ALB');

           //f_albaranes.EXCEL_CLIENTES.BorderGroup.BackColor:=$005AD88F;
           //F_ALBARANES.EXCEL_CLIENTES.GroupFields.ADD('REMITENTE');


           //f_albaranes.EXCEL_CLIENTES.AutoFilter:=TRUE;
           f_albaranes.EXCEL_CLIENTES.BeginRowHeader:=2;

           F_ALBARANES.EXCEL_CLIENTES.ExportDataset;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'L1'].Font.Size:=8;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'L500'].Font.Name:='Arial';
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'L1'].Font.Color:=clblue;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a2', 'L500'].Font.Size:=8;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['A1', 'A500'].FONT.Bold:=TRUE;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'L300'] .EntireColumn.AutoFit;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['A1', 'A1'].Value:='FECHA ALBARAN';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['A1', 'A1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['b1', 'b1'].Value:='REMITENTE';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['B1', 'B1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['C1', 'C1'].Value:='EXPEDICION';

             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['C1', 'C1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['D1', 'D1'].Value:='REFERENCIA';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['D1', 'D1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['E1', 'E1'].Value:='DESTINATARIO';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['E1', 'E1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['F1', 'F1'].Value:='COD. POST';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['F1', 'F1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['G1', 'G1'].Value:='POBLACION';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['G1', 'G1'].FONT.Bold:=TRUE;
             F_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['H1', 'H1'].Value:='BULTOS';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['H1', 'H1'].FONT.Bold:=TRUE;
             F_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['i1', 'i1'].Value:='KILOS';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['i1', 'i1'].FONT.Bold:=TRUE;
             F_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['J1', 'J1'].Value:='PROVEEDOR';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['J1', 'J1'].FONT.Bold:=TRUE;
             F_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['K1', 'K1'].Value:='PRECIO';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['K1', 'K1'].FONT.Bold:=TRUE;


            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Name:='RESUMEN';








             F_ALBARANES.EXCEL_CLIENTES.SaveAs(  NOMBREFICHERO2,FFXLSX);
            f_albaranes.EXCEL_CLIENTES.ExcelVisible:=TRUE;
           F_ALBARANES.EXCEL_CLIENTES.Disconnect;


          //Form1.Button1Click(self);


             {
         EXCEL_CLIENTES.ExportDataset;
          EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'i500'].Font.Size:=8;
          EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'e1', 'e20'] .EntireColumn.AutoFit;
          EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'A1', 'A1'].Value2:='fecha';

         EXCEL_CLIENTES.Disconnect; }

         conesiones.BUSCA_COMODIN.SQL.Clear;

            exit;


           end;


           //**************************************************************
           //**********PARA CREAR LISTADO DE CONFORMES*********************
           //**************************************************************



       procedure  EXPORTA_EXCEL_conformes() ;


begin
  FECHA_INI1 := quotedstr(FormatDateTime('yyyy-mm-dd', f_albaranes.fechatimer.DateTime));
    fecha_fini1 := quotedstr(FormatDateTime('yyyy-mm-dd',
        f_albaranes.fechatimer_final.DateTime));
     //NOMBREFICHERO:=INPUTQUERY('GUARDAR COMO..',  'INTRODUCIR NOMBRE DE FICHERO');


       if NOT INPUTQUERY('GUARDAR COMO..',  'INTRODUCIR NOMBRE DE FICHERO',NOMBREFICHERO) then EXIT;



         NOMBREFICHERO2:='C:\TEMP\' + NOMBREFICHERO;

     //SHOWMESSAGE(NOMBREFICHERO2);

  busca2:= 'select fecha_alb, referencia, consigna, loc_consig, PROVEEDOR, FACTURA ' +
           'from albaran where   (FECHA_ALB BETWEEN ' + FECHA_INI1 +  ' AND ' +   fecha_fini1+ ')' +
           ' AND' + ' ( cliente like '   + quotedstr('%' + f_albaranes.BUSCA_NOMBRE.Text + '%') +
            '  OR  remitente  like' + quotedstr('%' + F_ALBARANES.BUSCA_NOMBRE.Text + '%') + ')' +
             ' ORDER BY FECHA_ALB,CLIENTE';



           conesiones.BUSCA_COMODIN.sql.clear;
           conesiones.busca_comodin.sql.add (busca2);
           //SHOWMESSAGE(CONESIONES.BUSCA_COMODIN.SQL.Text);

           conesiones.BUSCA_COMODIN.ExecSQL;

           F_ALBARANES.EXCEL_CLIENTES.Dataset:=CONESIONES.BUSCA_COMODIN;
           F_ALBARANES.EXCEL_CLIENTES.ExportDataset;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'l1'].Font.Size:=8;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'l1'].Font.Color:=clblue;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a2', 'i500'].Font.Size:=8;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'e300'] .EntireColumn.AutoFit;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['A1', 'A1'].Value:='FECHA ALBARAN';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['A1', 'A1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['b1', 'b1'].Value:='REFERENCIA';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['B1', 'B1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['C1', 'C1'].Value:='DESTINATARIO';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['C1', 'C1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['D1', 'D1'].Value:='LOCALIDAD';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['D1', 'D1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['E1', 'E1'].Value:='PROVEEDOR';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['E1', 'E1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['F1', 'F1'].Value:='FACTURA';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['F1', 'F1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['G1', 'G1'].Value:='CONFORME';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['G1', 'G1'].FONT.Bold:=TRUE;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Name:='RESUMEN';







             F_ALBARANES.EXCEL_CLIENTES.SaveAs(  NOMBREFICHERO2,FFXLSX);
            f_albaranes.EXCEL_CLIENTES.ExcelVisible:=TRUE;
           F_ALBARANES.EXCEL_CLIENTES.Disconnect;


          //Form1.Button1Click(self);


             {
         EXCEL_CLIENTES.ExportDataset;
          EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'i500'].Font.Size:=8;
          EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'e1', 'e20'] .EntireColumn.AutoFit;
          EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'A1', 'A1'].Value2:='fecha';

         EXCEL_CLIENTES.Disconnect; }

         conesiones.BUSCA_COMODIN.SQL.Clear;

            exit;


           end;

 //**************************************************
 //***PROVEEDORES POR RECIBIR************************
 //**************************************************




 PROCEDURE PROV_NO_COBRA();

   begin

     if F_ALBARANES.chsinprecio.Checked  = true  then
  begin
    condicion_precio := ' AND  cobramos is null ' ;
  end

  else

  begin
    condicion_precio := '';
  end;


  FECHA_INI1 := quotedstr(FormatDateTime('yyyy-mm-dd', f_albaranes.fechatimer.DateTime));
    fecha_fini1 := quotedstr(FormatDateTime('yyyy-mm-dd',
        f_albaranes.fechatimer_final.DateTime));
     //NOMBREFICHERO:=INPUTQUERY('GUARDAR COMO..',  'INTRODUCIR NOMBRE DE FICHERO');


       if NOT INPUTQUERY('GUARDAR COMO..',  'INTRODUCIR NOMBRE DE FICHERO',NOMBREFICHERO) then EXIT;

        chofer:= InputBox('STOCK INICIAL',
    'Nombre del Proveedor', '');


         NOMBREFICHERO2:='C:\TEMP\' + NOMBREFICHERO;

     //SHOWMESSAGE(NOMBREFICHERO2);

  busca2:= 'select fecha_alb,PROVEEDOR, ALBARAN, LOC_CONSIG, FACTURA, PAGAMOS ' +
           'from albaran where   (FECHA_ALB BETWEEN ' + FECHA_INI1 +  ' AND ' +   fecha_fini1+ ')' +
           //'AND' + ' ( cliente like '   + quotedstr('%' + f_albaranes.BUSCA_NOMBRE.Text + '%') +
           ' AND' + ' ( PROVEEDOR like '   + quotedstr('%' + chofer + '%') +
            '  AND  REmitente  like' + quotedstr('%' + F_ALBARANES.BUSCA_NOMBRE.Text + '%') +
             '  AND  FACTURA = ' + '"00000000"'+ ')'+
             condicion_precio +
             ' ORDER BY PROVEEDOR';



           conesiones.BUSCA_COMODIN.sql.clear;
           conesiones.busca_comodin.sql.add (busca2);
           //SHOWMESSAGE(CONESIONES.BUSCA_COMODIN.SQL.Text);

           conesiones.BUSCA_COMODIN.ExecSQL;

           F_ALBARANES.EXCEL_CLIENTES.Dataset:=CONESIONES.BUSCA_COMODIN;
           F_ALBARANES.EXCEL_CLIENTES.GroupFields.CLEAR;
           //F_ALBARANES.EXCEL_CLIENTES.GroupFields.ADD('FECHA_ALB');

           f_albaranes.EXCEL_CLIENTES.BorderGroup.BackColor:=$005AD88F;
           F_ALBARANES.EXCEL_CLIENTES.GroupFields.ADD('PROVEEDOR');
            F_ALBARANES.EXCEL_CLIENTES.SummarySelection:= ssGiven;
            F_ALBARANES.EXCEL_CLIENTES.SummaryCalculation:= scSUM;


           //f_albaranes.EXCEL_CLIENTES.AutoFilter:=TRUE;
           f_albaranes.EXCEL_CLIENTES.BeginRowHeader:=2;

           F_ALBARANES.EXCEL_CLIENTES.ExportDataset;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'L1'].Font.Size:=8;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'L500'].Font.Name:='Arial';
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'L1'].Font.Color:=clblue;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a2', 'L500'].Font.Size:=8;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['A1', 'A500'].FONT.Bold:=TRUE;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'L300'] .EntireColumn.AutoFit;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['A1', 'A1'].Value:='FECHA ALBARAN';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['A1', 'A1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['b1', 'b1'].Value:='PROVEEDOR';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['B1', 'B1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['C1', 'C1'].Value:='REFERENCIA';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['C1', 'C1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['D1', 'D1'].Value:='DESTINATARIO';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['D1', 'D1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['E1', 'E1'].Value:='COD. POST';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['E1', 'E1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['F1', 'F1'].Value:='POBLACION';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['F1', 'F1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['G1', 'G1'].Value:='BULTOS';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['G1', 'G1'].FONT.Bold:=TRUE;
             F_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['H1', 'H1'].Value:='KILOS';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['H1', 'H1'].FONT.Bold:=TRUE;
             F_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['i1', 'i1'].Value:='PROVEEDOR';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['i1', 'i1'].FONT.Bold:=TRUE;
             F_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['J1', 'J1'].Value:='IMPORTE';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['J1', 'J1'].FONT.Bold:=TRUE;
             F_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['K1', 'K1'].Value:='COSTE';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['K1', 'K1'].FONT.Bold:=TRUE;


            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Name:='RESUMEN';








             F_ALBARANES.EXCEL_CLIENTES.SaveAs(  NOMBREFICHERO2,FFXLSX);
            f_albaranes.EXCEL_CLIENTES.ExcelVisible:=TRUE;
           F_ALBARANES.EXCEL_CLIENTES.Disconnect;


          //Form1.Button1Click(self);


             {
         EXCEL_CLIENTES.ExportDataset;
          EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'i500'].Font.Size:=8;
          EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'e1', 'e20'] .EntireColumn.AutoFit;
          EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'A1', 'A1'].Value2:='fecha';

         EXCEL_CLIENTES.Disconnect; }

         conesiones.BUSCA_COMODIN.SQL.Clear;

            exit;


           end;


  //*************************************************
  //*****exporta proveedor con costes y cobros*********
  //*************************************************



 PROCEDURE EXPORTA_prove();

   begin

     if F_ALBARANES.chsinprecio.Checked  = true  then
  begin
    condicion_precio := ' AND  cobramos is null ' ;
  end

  else

  begin
    condicion_precio := '';
  end;


  FECHA_INI1 := quotedstr(FormatDateTime('yyyy-mm-dd', f_albaranes.fechatimer.DateTime));
    fecha_fini1 := quotedstr(FormatDateTime('yyyy-mm-dd',
        f_albaranes.fechatimer_final.DateTime));
     //NOMBREFICHERO:=INPUTQUERY('GUARDAR COMO..',  'INTRODUCIR NOMBRE DE FICHERO');


       if NOT INPUTQUERY('GUARDAR COMO..',  'INTRODUCIR NOMBRE DE FICHERO',NOMBREFICHERO) then EXIT;

        chofer:= InputBox('STOCK INICIAL',
    'Nombre del Proveedor', '');


         NOMBREFICHERO2:='C:\TEMP\' + NOMBREFICHERO;

     //SHOWMESSAGE(NOMBREFICHERO2);

  busca2:= 'select fecha_alb, consigna, CP_CONSIG,loc_consig, bultos, kilos,PROVEEDOR, COBRAMOS, PAGAMOS ' +
           'from albaran where   (FECHA_ALB BETWEEN ' + FECHA_INI1 +  ' AND ' +   fecha_fini1+ ')' +
           //'AND' + ' ( cliente like '   + quotedstr('%' + f_albaranes.BUSCA_NOMBRE.Text + '%') +
           ' AND' + ' ( PROVEEDOR like '   + quotedstr('%' + chofer + '%') +
            '  AND  REmitente  like' + quotedstr('%' + F_ALBARANES.BUSCA_NOMBRE.Text + '%') + ')' +
             condicion_precio +
             ' ORDER BY FECHA_ALB';



           conesiones.BUSCA_COMODIN.sql.clear;
           conesiones.busca_comodin.sql.add (busca2);
           //SHOWMESSAGE(CONESIONES.BUSCA_COMODIN.SQL.Text);

           conesiones.BUSCA_COMODIN.ExecSQL;

           F_ALBARANES.EXCEL_CLIENTES.Dataset:=CONESIONES.BUSCA_COMODIN;
           F_ALBARANES.EXCEL_CLIENTES.GroupFields.CLEAR;
           //F_ALBARANES.EXCEL_CLIENTES.GroupFields.ADD('FECHA_ALB');

           f_albaranes.EXCEL_CLIENTES.BorderGroup.BackColor:=$005AD88F;
           //F_ALBARANES.EXCEL_CLIENTES.GroupFields.ADD('fecha_alb');


           //f_albaranes.EXCEL_CLIENTES.AutoFilter:=TRUE;
           f_albaranes.EXCEL_CLIENTES.BeginRowHeader:=2;

           F_ALBARANES.EXCEL_CLIENTES.ExportDataset;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'L1'].Font.Size:=8;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'L1'].Font.Name:='Arial';
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'L1'].Font.Color:=clblue;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a2', 'L5000'].Font.Size:=8;
             //f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['A1', 'A500'].FONT.Bold:=TRUE;
            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'L3000'] .EntireColumn.AutoFit;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['A1', 'A1'].Value:='FECHA ALBARAN';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['A1', 'A1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['b1', 'b1'].Value:='DESTINATARIO';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['b1', 'b1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['c1', 'c1'].Value:='COD. POST';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['c1', 'c1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['d1', 'd1'].Value:='POBLACION';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['d1', 'd1'].FONT.Bold:=TRUE;
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['e1', 'e1'].Value:='BULTOS';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['e1', 'e1'].FONT.Bold:=TRUE;
             F_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['f1', 'f1'].Value:='KILOS';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['f1', 'f1'].FONT.Bold:=TRUE;
             F_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['g1', 'g1'].Value:='PROVEEDOR';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['g1', 'g1'].FONT.Bold:=TRUE;
             F_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['h1', 'h1'].Value:='IMPORTE';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['h1', 'h1'].FONT.Bold:=TRUE;
             F_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['i1', 'i1'].Value:='COSTE';
             f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Range['i1', 'i1'].FONT.Bold:=TRUE;


            f_albaranes.EXCEL_CLIENTES.ExcelWorkSheet.Name:='RESUMEN';








             F_ALBARANES.EXCEL_CLIENTES.SaveAs(  NOMBREFICHERO2,FFXLSX);
            f_albaranes.EXCEL_CLIENTES.ExcelVisible:=TRUE;
           F_ALBARANES.EXCEL_CLIENTES.Disconnect;


          //Form1.Button1Click(self);


             {
         EXCEL_CLIENTES.ExportDataset;
          EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'i500'].Font.Size:=8;
          EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'e1', 'e20'] .EntireColumn.AutoFit;
          EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'A1', 'A1'].Value2:='fecha';

         EXCEL_CLIENTES.Disconnect; }

         conesiones.BUSCA_COMODIN.SQL.Clear;



            exit;


           end;



 PROCEDURE CARTA_PORTE ();

 BEGIN
      CONESIONES.query_albaranadr2.SQL.CLEAR;
      CONESIONES.query_albaranadr2.SQL.Add('TRUNCATE ALBARAN_ADR' );
      CONESIONES.query_albaranadr2.Execute;

      f_Albaranes.BUSCA_NOMBRE.Text:= 'generica';




 END;


   PROCEDURE COPIA_ALMACENAJE();
    BEGIN


    NUMERO_ALBARAN:= f_albaranes.dbexpedicion.Text;
    QUE_CLIENTE:='';
    QUE_REFERENCIA:=f_albaranes.dbreferencia.Text;


   f_albaranes.LABEL62.Caption:=NUMERO_ALBARAN;

     conesiones.query_modifica_todosalb.SQL.CLEAR;
     CONESIONES.query_modifica_todosalb.SQL.ADD (' TRUNCATE TABLE temporal');


     CONESIONES.query_modifica_todosalb.Execute;
     CONESIONES.query_modifica_todosalb.SQL.CLEAR;

      CONESIONES.query_modifica_todosalb.SQL.ADD(' INSERT INTO TEMPORAL SELECT	*  FROM 	ALBARAN WHERE	ALBARAN = ');
     CONESIONES.query_modifica_todosalb.SQL.ADD( QuotedStr(NUMERO_ALBARAN));

      CONESIONES.query_modifica_todosalb.Execute;

      CONESIONES.query_modifica_todosalb.SQL.CLEAR;

     

      CONESIONES.query_modifica_todosalb.SQL.ADD(' UPDATE TEMPORAL SET ID= 0 , cuenta_fact ="No"');


      // CONESIONES.query_modifica_todosalb.SQL.ADD(' UPDATE TEMPORAL SET ALBARAN= "111111111111"');

       QUE_CLIENTE := InputBox('CLIENTE PARA ALMACENAJE',
    'CODIGO DEL CLIENTE PARA ALMACENAJE', '');

       QUE_proveedor := InputBox('PROVEEDOR ... ',
    'INDICAR PROVEEDOR DE LA EXPEDICION', 'NO COMPUTA, SOLO A EFECTOS DE ALMACEN');


      CONESIONES.query_modifica_todosalb.Execute;


         
       CONESIONES.query_modifica_todosalb.SQL.CLEAR;
         CONESIONES.query_modifica_todosalb.SQL.ADD(' UPDATE TEMPORAL SET CLIENTE= ' );
          CONESIONES.query_modifica_todosalb.SQL.ADD(QuotedStr(QUE_CLIENTE));
          CONESIONES.query_modifica_todosalb.SQL.ADD(', cobramos = 0, ');
          CONESIONES.query_modifica_todosalb.SQL.ADD('PROVEEDOR= ');
          CONESIONES.query_modifica_todosalb.SQL.ADD(QuotedStr(QUE_PROVEEDOR));
          CONESIONES.query_modifica_todosalb.SQL.ADD(', PAGAMOS = 0 ');


          CONESIONES.query_modifica_todosalb.Execute;

        conesiones.query_modifica_todosalb.SQL.CLEAR;
         CONESIONES.query_modifica_todosalb.SQL.ADD (' INSERT INTO albaran SELECT * FROM	temporal');
       CONESIONES.query_modifica_todosalb.Execute;






           CONESIONES.query_todosalb.SQL.CLEAR;
            CONESIONES.query_todosalb.SQL.ADD(' SELECT * FROM ALBARAN WHERE ALBARAN = ' + QuotedStr(NUMERO_ALBARAN) );
            CONESIONES.query_todosalb.SQL.ADD(' AND CUENTA_FACT= "No" ');
            //CONESIONES.query_todosalb.SQL.ADD('N');

            //ShowMessage(CONESIONES.query_todosalb.SQL.text);

            CONESIONES.query_todosalb.Execute;


            QUE_REMITENTE:=f_albaranes.dbNOMBRE.TEXT;
             //CONESIONES.query_todosalb.SQL.CLEAR;



             //ShowMessage(CONESIONES.query_todosalb.SQL.TEXT);

            // CONESIONES.query_todosalb.Execute;

             // CONESIONES.query_todosalb.SQL.CLEAR;
            //CONESIONES.query_todosalb.SQL.ADD(' SELECT * FROM ALBARAN WHERE ALBARAN = ' + QuotedStr(NUMERO_ALBARAN) + ' AND REFERENCIA= ');
            //CONESIONES.query_todosalb.SQL.ADD (QuotedStr(QUE_REFERENCIA));
            //CONESIONES.query_todosalb.Execute;














            f_albaranes.dbreferencia.SetFocus;



              END;


end.

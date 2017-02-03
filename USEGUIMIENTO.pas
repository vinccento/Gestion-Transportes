unit USEGUIMIENTO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,db, dbtables, ComCtrls, ExtCtrls, StdCtrls, DBCtrls, Mask, Grids, DBGrids, jpeg,
  ShellApi, comobj, OleServer, ExcelXP,dbclient, Excel2000,  scExcelExport, dateutils;

type
  Tf_seguimiento = class(TForm)
    Panel1: TPanel;
    ecliente: TEdit;
    Label1: TLabel;
    Panel2: TPanel;
    fechatimer: TDateTimePicker;
    fechatimer_final: TDateTimePicker;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Panel3: TPanel;
    dbpoblacion: TDBEdit;
    Label12: TLabel;
    Label8: TLabel;
    dbconsignatario: TDBEdit;
    dbreferencia: TDBEdit;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    e_seguimiento: TscExcelExport;
    Button2: TButton;
    DBEdit33: TDBEdit;
    DBEdit3: TDBEdit;
    Edit1: TEdit;
    DBEdit4: TDBEdit;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure dbestadoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DBEdit2Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure e_seguimientoGetCellStyleEvent(Sender: TObject; Field: TField;
      var ColorBackground: TColor; FontCell: TxlFont);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_seguimiento: Tf_seguimiento;
  BUSCA3:STRING ;
  CONDICIONFECHA:tdatetime;
  ENTRADA:STRING;
 
implementation

uses conexiones, declaraciones;

{$R *.dfm}

procedure Tf_seguimiento.Button1Click(Sender: TObject);
begin


    busca3:= 'select fecha_alb, referencia, consigna, loc_consig, bultos,KILOS,F_CONCERT,ESTADO, COMENTARIO_SEGUI ' +
           'from albaran where   (FECHA_ALB BETWEEN ' + FECHA_INI2 +  ' AND ' +   fecha_fini2+ ')' +
           ' AND' + ' ( cliente like '   + quotedstr('%' + ECLIENTE.Text + '%') +
            '  OR  remitente  like' + quotedstr('%' + ECLIENTE.TEXT + '%') + ')' +
             ' ORDER BY FECHA_ALB,CLIENTE';

             DBEDIT33.DataField:='';
             DBEDIT4.DataField:='';

              conesiones.BUSCA_SEGUI2.sql.clear;
           conesiones.BUSCA_SEGUI2.sql.add (busca3);
          //SHOWMESSAGE(CONESIONES.BUSCA_SEGUI.SQL.Text);

           conesiones.BUSCA_SEGUI2.ExecSQL;
            DBEDIT33.DataField:='';
            DBEDIT4.DataField:='';
           dbedit1.SetFocus;
         E_seguimiento.Dataset:=CONESIONES.BUSCA_SEGUI2;
         E_seguimiento.ExportDataset;
         E_SEGUIMIENTO.ExcelWorkSheet.Range [ 'a1', 'l1'].Font.Size:=8;
         E_SEGUIMIENTO.ExcelWorkSheet.Range [ 'a1', 'l1'].Font.Color:=clblue;
         E_SEGUIMIENTO.ExcelWorkSheet.Range [ 'a2', 'i500'].Font.Size:=8;
         E_SEGUIMIENTO.ExcelWorkSheet.Range [ 'a1', 'h1300'] .EntireColumn.AutoFit;
         E_SEGUIMIENTO.ExcelWorkSheet.Range['A1', 'A1'].Value:='FECHA ALBARAN';
         E_SEGUIMIENTO.ExcelWorkSheet.Range['A1', 'A1'].FONT.Bold:=TRUE;
         E_SEGUIMIENTO.ExcelWorkSheet.Range['b1', 'b1'].Value:='REFERENCIA';
         E_SEGUIMIENTO.ExcelWorkSheet.Range['B1', 'B1'].FONT.Bold:=TRUE;
         E_SEGUIMIENTO.ExcelWorkSheet.Range['C1', 'C1'].Value:='DESTINATARIO';
         E_SEGUIMIENTO.ExcelWorkSheet.Range['C1', 'C1'].FONT.Bold:=TRUE;
         E_SEGUIMIENTO.ExcelWorkSheet.Range['D1', 'D1'].Value:='LOCALIDAD';
         E_SEGUIMIENTO.ExcelWorkSheet.Range['D1', 'D1'].FONT.Bold:=TRUE;
         E_SEGUIMIENTO.ExcelWorkSheet.Range['E1', 'E1'].Value:='BULTOS';
         E_SEGUIMIENTO.ExcelWorkSheet.Range['E1', 'E1'].FONT.Bold:=TRUE;
         E_SEGUIMIENTO.ExcelWorkSheet.Range['F1', 'F1'].Value:='KILOS';
         E_SEGUIMIENTO.ExcelWorkSheet.Range['F1', 'F1'].FONT.Bold:=TRUE;
         E_SEGUIMIENTO.ExcelWorkSheet.Range['G1', 'G1'].Value:='FECHA ENT';
         E_SEGUIMIENTO.ExcelWorkSheet.Range['G1', 'G1'].FONT.Bold:=TRUE;
         E_SEGUIMIENTO.ExcelWorkSheet.Range['H1', 'H1'].Value:='ESTADO';
         E_SEGUIMIENTO.ExcelWorkSheet.Range['H1', 'H1'].FONT.Bold:=TRUE;
          E_SEGUIMIENTO.ExcelWorkSheet.Range['I1', 'I1'].Value:='COMENTARIO';
         E_SEGUIMIENTO.ExcelWorkSheet.Range['I1', 'I1'].FONT.Bold:=TRUE;

        E_SEGUIMIENTO.ExcelWorkSheet.Name:='ESTADO EXP.';







            E_SEGUIMIENTO.SaveAs(  'c:\temp\Certis estado expediciones',FFXLSX);
        E_SEGUIMIENTO.ExcelVisible:=TRUE;
       E_SEGUIMIENTO.Disconnect;

        busca3:= 'select fecha_alb, referencia, consigna, loc_consig,PROVEEDOR,diferencia, bultos,KILOS,F_CONCERT,ESTADO, COMENTARIO_SEGUI ' +
           'from albaran where   (FECHA_ALB BETWEEN ' + FECHA_INI2 +  ' AND ' +   fecha_fini2+ ')' +
           ' AND' + ' ( cliente like '   + quotedstr('%' + ECLIENTE.Text + '%') +
            '  OR  remitente  like' + quotedstr('%' + ECLIENTE.TEXT + '%') + ')' +
             ' ORDER BY FECHA_ALB,CLIENTE';




              conesiones.BUSCA_SEGUI.sql.clear;
           conesiones.BUSCA_SEGUI.sql.add (busca3);
          //SHOWMESSAGE(CONESIONES.BUSCA_SEGUI.SQL.Text);

           conesiones.BUSCA_SEGUI.ExecSQL;
           dbedit1.SetFocus;
            DBEDIT33.DataField:='PROVEEDOR';
              DBEDIT4.DataField:='diferencia';

          //Form1.Button1Click(self);


             {
         EXCEL_CLIENTES.ExportDataset;
          EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'a1', 'i500'].Font.Size:=8;
          EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'e1', 'e20'] .EntireColumn.AutoFit;
          EXCEL_CLIENTES.ExcelWorkSheet.Range [ 'A1', 'A1'].Value2:='fecha';

         EXCEL_CLIENTES.Disconnect; }

            exit;


           end;



procedure Tf_seguimiento.Button2Click(Sender: TObject);
begin
     DBEDIT4.DataField:='';
  FECHA_INI2 := quotedstr(FormatDateTime('yyyy-mm-dd', fechatimer.DateTime));
    fecha_fini2 := quotedstr(FormatDateTime('yyyy-mm-dd',fechatimer_final.DateTime));

    busca3:= 'select fecha_alb, referencia, consigna, loc_consig,PROVEEDOR,diferencia, bultos,KILOS,F_CONCERT,ESTADO, COMENTARIO_SEGUI ' +
           'from albaran where   (FECHA_ALB BETWEEN ' + FECHA_INI2 +  ' AND ' +   fecha_fini2+ ')' +
           ' AND' + ' ( cliente like '   + quotedstr('%' + ECLIENTE.Text + '%') +
            '  OR  remitente  like' + quotedstr('%' + ECLIENTE.TEXT + '%') + ')' +
             ' ORDER BY FECHA_ALB,CLIENTE';

              conesiones.BUSCA_SEGUI.sql.clear;
           conesiones.BUSCA_SEGUI.sql.add (busca3);
          //SHOWMESSAGE(CONESIONES.BUSCA_SEGUI.SQL.Text);

           conesiones.BUSCA_SEGUI.ExecSQL;
            DBEDIT4.DataField:='diferencia';
           dbnavigator1.BtnClick(nblast);
           dbedit1.SetFocus;


    conesiones.BUSCA_SEGUI.Active:=true;
end;

procedure Tf_seguimiento.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin

     DBNavigator1.BtnClick(NBedit);
     DBNavigator1.BtnClick(NBpost);
      DBNavigator1.BtnClick(NBnext);
      dbedit1.Text:='';

  end;
end;

procedure Tf_seguimiento.DBEdit2Change(Sender: TObject);
begin

     //DBEdit1.SetFocus;
end;

procedure Tf_seguimiento.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
                if Key = #13 then
  begin
     DBEDIT1.SetFocus;
     DBNavigator1.BtnClick(NBedit);
     DBNavigator1.BtnClick(NBpost);
  end;

end;

procedure Tf_seguimiento.dbestadoKeyPress(Sender: TObject; var Key: Char);
begin
           if Key = #13 then
  begin
     DBEDIT1.SetFocus;
     DBNavigator1.BtnClick(NBedit);
     DBNavigator1.BtnClick(NBpost);
  end;

end;

procedure Tf_seguimiento.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);


begin



           if conesiones.BUSCA_SEGUI.FieldByName('estado').value='Entregado' then

           begin
             DBGrid1.Canvas.Font.Style:=[fsBold];
             DBGrid1.Canvas.Brush.Color:=$005AD88F;

           end;

           DBGrid1.DefaultDrawColumnCell (Rect, DataCol, Column, State);

             if conesiones.BUSCA_SEGUI.FieldByName('estado').value='En Preparación' then
           begin
             //DBGrid1.Canvas.Font.Style:=[fsBold];
             DBGrid1.Canvas.Brush.Color:=claqua;

           end;
            DBGrid1.DefaultDrawColumnCell (Rect, DataCol, Column, State);

            if conesiones.BUSCA_SEGUI.FieldByName('estado').value='En Reparto' then

           begin

             DBGrid1.Canvas.Brush.Color:=clyellow;

           end;

           DBGrid1.DefaultDrawColumnCell (Rect, DataCol, Column, State);




end;

procedure Tf_seguimiento.eclienteKeyPress(Sender: TObject; var Key: Char);
begin
            if Key = #13 then
  begin
    Key := #0;
   button2.SetFocus;








  end;

end;

procedure Tf_seguimiento.e_seguimientoGetCellStyleEvent(Sender: TObject;
  Field: TField; var ColorBackground: TColor; FontCell: TxlFont);
  VAR
   EST,COSA2:STRING;

         begin
           cosa2:=field.DataSet.FieldByName('estado').AsString;
           //showmessage (cosa2);


           est:= TRIMRIGHT(Field.DataSet.FieldByName('estado').Value);



            if EST =  'Entregado' then begin
              ColorBackground := $005AD88F;
            end;

            if est = 'En Reparto' then begin
              ColorBackground := clyellow;
            end;

            if est = 'En Preparación' then begin
              ColorBackground := clBlack;
            end;



             //if Field.DataSet.FieldByName('LOC_CONSIG').Value = 'LIKE ' + quotedstr (COSA)
              //then
             //


end;

procedure Tf_seguimiento.FormActivate(Sender: TObject);
begin
 fechatimer.Date := NOW - 7;
  fechatimer_final.Date := NOW;
  CONESIONES.BUSCA_SEGUI.SQL.Clear;

  //conesiones.BUSCA_SEGUI.Active:=true;
  //ECLIENTE.SetFocus;

end;

procedure Tf_seguimiento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
CONESIONES.BUSCA_SEGUI.SQL.Clear;

EXIT;


 Action := caFree;
end;

procedure Tf_seguimiento.FormCreate(Sender: TObject);
begin
//   conesiones.BUSCA_SEGUI.Active:=false;

 CONESIONES.BUSCA_SEGUI.SQL.Clear;

end;

procedure Tf_seguimiento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

           if (Key = VK_next) then
  begin
    DBNavigator1.BtnClick(NBnext);
  end;

  if (Key = VK_prior) then
  begin
    DBNavigator1.BtnClick(nbPrior);

  end;

end;

procedure Tf_seguimiento.FormPaint(Sender: TObject);
begin
        with Canvas do
  begin
    Pen.Color := clHOTLIGHT;
    Pen.Width := 3;
    Brush.Color := clHOTLIGHT;
    Rectangle( 0, 0, 980, 20 );
  end;
end;

procedure Tf_seguimiento.RadioGroup1Click(Sender: TObject);
begin
    if RadioGroup1.ItemIndex=0 then
    begin

     DBNavigator1.BtnClick(NBedit);
       dbedit2.text:='En Transito';
     DBNavigator1.BtnClick(NBpost);
       RadioGroup1.Buttons[0].Checked:=false;
       DBNavigator1.BtnClick(NBNEXT);

     DBEdit1.SetFocus;

      end;

     if RadioGroup1.ItemIndex=1 then
    begin


     DBNavigator1.BtnClick(NBedit);
     dbedit2.text:='En Reparto';
     DBNavigator1.BtnClick(NBpost);
       RadioGroup1.Buttons[1].Checked:=false;
       DBNavigator1.BtnClick(NBNEXT);
     DBEdit1.SetFocus;

    end;

    if RadioGroup1.ItemIndex=2 then
    begin

    //CONDICIONFECHA:= DBGrid1.DataSource.DataSet.FieldByName('f_CONCERT').Value;


                  if DBGrid1.DataSource.DataSet.FieldByName('f_CONCERT').Value = null then


                  begin
                  CONDICIONFECHA:=now;

                //ShowMessage(condicionfecha);
                 DBNavigator1.BtnClick(NBedit);
                 //ENTRADA:= InputBox('Fecha real de entrega',
    //'FECHA DE ENTREGA REAL', DATETOSTR(CONDICIONFECHA));

                dbedit3.Text := DATETOSTR(CONDICIONFECHA);
                  DBNavigator1.BtnClick(NBpost);

                   //exit;
                 end;


      CONDICIONFECHA:= DBGrid1.DataSource.DataSet.FieldByName('f_CONCERT').Value;
     DBNavigator1.BtnClick(NBedit);

      ENTRADA:= InputBox('Fecha real de entrega',
    'FECHA DE ENTREGA REAL', DATETOSTR(CONDICIONFECHA));

                dbedit3.Text :=  ENTRADA;

                  DBNavigator1.BtnClick(NBpost);

              DBNavigator1.BtnClick(NBedit);
     dbedit2.text:='Entregado';
     DBEDIT1.Text:='';
               fecha1:=DBGrid1.DataSource.DataSet.FieldByName('f_concert').Value;





         fecha2:=DBGrid1.DataSource.DataSet.FieldByName('fecha_alb').Value;
        //fecha1:= conesiones.BUSCA_SEGUI.FieldByName('f_concert').value;
           //fecha2:= conesiones.BUSCA_SEGUI.FieldByName('fecha_alb').value;
           result_fecha:= fecha1-fecha2;
           //DaysBetween(fecha2,fecha1);
            //ShowMessage(FLOATTOSTR(RESULT_FECHA));
          case  DayOfTheWeek(fecha2) of
           DayFriday: Dec := 2;

            end;
            DBEdit4.text:= floattostr(result_fecha-dec);
            DEC:=0;

     DBNavigator1.BtnClick(NBpost);
     RadioGroup1.Buttons[2].Checked:=false;
     DBNavigator1.BtnClick(NBnext);
     DBEdit1.SetFocus;
    end;

    if RadioGroup1.ItemIndex=3 then
    begin

     DBNavigator1.BtnClick(NBedit);
      dbedit2.text:='Incidencia';
     DBNavigator1.BtnClick(NBpost);
       RadioGroup1.Buttons[3].Checked:=false;

     DBEdit1.SetFocus;
    end;

     if RadioGroup1.ItemIndex=4 then
    begin

     DBNavigator1.BtnClick(NBedit);
      dbedit2.text:='En Preparación';
     DBNavigator1.BtnClick(NBpost);
       RadioGroup1.Buttons[4].Checked:=false;
       DBNavigator1.BtnClick(NBnext);

     DBEdit1.SetFocus;
    end;


end;

end.

unit ualbaranes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, DBCtrls, Mask, Grids, DBGrids, jpeg, ShellApi;

type
  Tf_albaranes = class(TForm)
    ALBARANES: TPageControl;
    historico: TTabSheet;
    ALMACENAJE: TTabSheet;
    ADR: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Shape1: TShape;
    BUSCA_NOMBRE: TEdit;
    Panel2: TPanel;
    Shape2: TShape;
    grilla_albaran: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    boton_busca: TButton;
    dbfecha: TDBEdit;
    fecha_alb: TLabel;
    Label7: TLabel;
    lexpedicion: TLabel;
    dbexpedicion: TDBEdit;
    lcliente: TLabel;
    dbcliente: TDBEdit;
    Label10: TLabel;
    dbreferencia: TDBEdit;
    ncliente: TLabel;
    dbnombre: TDBEdit;
    Label9: TLabel;
    dbremitente: TDBEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    dbconsignatario: TDBEdit;
    Label8: TLabel;
    dbdireccion: TDBEdit;
    Label11: TLabel;
    dbcp: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    dbpoblacion: TDBEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit1: TEdit;
    fechatimer_final: TDateTimePicker;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    fechatimer: TDateTimePicker;
    Label18: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Edit4: TEdit;
    Label19: TLabel;
    dbcobramos: TDBEdit;
    dbpagamos: TDBEdit;
    Label20: TLabel;
    Shape3: TShape;
    Bevel6: TBevel;
    Label21: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label22: TLabel;
    DBEdit1: TDBEdit;
    dbfactura: TDBEdit;
    Label23: TLabel;
    DBNavigator1: TDBNavigator;
    chkborrar: TCheckBox;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Edit5: TEdit;
    Edit6: TEdit;
    dbkilos: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    dbbultos: TDBEdit;
    Label26: TLabel;
    Bevel9: TBevel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    dbobserva: TDBMemo;
    dbobserva_prov: TDBMemo;
    dbcuenta_alm: TDBEdit;
    DBEdit2: TDBEdit;
    Label30: TLabel;
    MaskEdit1: TMaskEdit;
    Panel1: TPanel;
    Button1: TButton;
    DBNavigator_ADR: TDBNavigator;
    Panel4: TPanel;
    checkalmacenaje: TCheckBox;
    CH_ADR: TDBCheckBox;
    Panel5: TPanel;
    Label33: TLabel;
    DBCLIENTE_1: TDBEdit;
    DBNOMBRE_1: TDBEdit;
    Label32: TLabel;
    Panel6: TPanel;
    Panel3: TPanel;
    dbalbaran_1: TDBEdit;
    Label34: TLabel;
    dbreferencia_1: TDBEdit;
    Label36: TLabel;
    Panel7: TPanel;
    busca_onu: TEdit;
    Label37: TLabel;
    Panel8: TPanel;
    grilla_tabla_adr: TDBGrid;
    navegador_productos: TDBNavigator;
    dbnombre_adr: TDBEdit;
    dbclasificacion: TDBEdit;
    dbembalaje: TDBEdit;
    dbetiqueta: TDBEdit;
    dbcategoria: TDBEdit;
    Panel9: TPanel;
    dbexpedidor: TDBEdit;
    Label35: TLabel;
    Panel11: TPanel;
    Edit7: TEdit;
    DBVALOREXCENSION: TDBEdit;
    Edit8: TEdit;
    DBPESO: TDBEdit;
    Edit9: TEdit;
    Blimpiar: TButton;
    Label31: TLabel;
    DBEdit3: TDBEdit;
    Label38: TLabel;
    DBEdit4: TDBEdit;
    Label39: TLabel;
    DBEdit5: TDBEdit;
    Edit10: TEdit;
    Panel12: TPanel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    dbconsigna: TDBEdit;
    dbdirconsigna: TDBEdit;
    dblocconsigna: TDBEdit;
    dbcpconsigna: TDBEdit;
    Edit11: TEdit;
    Panel13: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    dbtransportista: TDBEdit;
    dbmatricula: TDBEdit;
    dbconductor: TDBEdit;
    dbdni: TDBEdit;
    Edit12: TEdit;
    DBGrid1: TDBGrid;
    dbonu: TDBEdit;
    Button3: TButton;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Button4: TButton;
    Panel10: TPanel;
    Button2: TButton;
    Button5: TButton;
    DBNavigator2: TDBNavigator;
    Panel14: TPanel;
    Label50: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label51: TLabel;
    Panel15: TPanel;
    MonthCalendar1: TMonthCalendar;
    Label52: TLabel;
    Button6: TButton;
    Button7: TButton;
    chsinprecio: TCheckBox;
    Panel16: TPanel;
    btnrecogida: TButton;
    btn_porte: TButton;
    procedure historicoShow(Sender: TObject);
    procedure BUSCA_NOMBREKeyPress(Sender: TObject; var Key: Char);
    procedure fechatimerKeyPress(Sender: TObject; var Key: Char);
    procedure fechatimerExit(Sender: TObject);
    procedure boton_buscaClick(Sender: TObject);
    procedure dbclienteChange(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure dbcobramosKeyPress(Sender: TObject; var Key: Char);
    procedure chkborrarClick(Sender: TObject);
    procedure dbexpedicionChange(Sender: TObject);
    procedure dbcobramosExit(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure dbobservaKeyPress(Sender: TObject; var Key: Char);
    procedure dbobserva_provKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MaskEdit1Change(Sender: TObject);
    procedure CH_ADRClick(Sender: TObject);
    procedure dbalbaran_1KeyPress(Sender: TObject; var Key: Char);
    procedure grilla_tabla_adrKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure busca_onuKeyPress(Sender: TObject; var Key: Char);
    procedure BlimpiarClick(Sender: TObject);
    procedure ADRShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ALMACENAJEShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure dbtransportistaKeyPress(Sender: TObject; var Key: Char);
    procedure dbdniKeyPress(Sender: TObject; var Key: Char);
    procedure Button5Click(Sender: TObject);

    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure btnrecogidaClick(Sender: TObject);
    procedure btn_porteClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_albaranes: Tf_albaranes;

implementation

uses declaraciones, conexiones, uprincipal, U_INFORMES, UPICKING, enviocorreo;
{$R *.dfm}

procedure Tf_albaranes.ADRShow(Sender: TObject);

{ ******************************************************* }
{ }
{ PONEMOS EN MODO EDICION LA TABLA ALBARAN:ADR Y }
{ ESCRIBIMOS EN EN ELLA }
{ ******************************************************* }
// var
// num_albaran:string;

begin
  // num_albaran:=dbalbaran_1.Text;
  conesiones.QUERY_ALBARANADR.Active := true;

  with conesiones.QUERY_ALBARANADR do
  begin
    conesiones.query_todosalb.Active := true;

    Close;

    SQL.Text :=

      'select * ' + ' from albaran_adr where' + '( albaran like' + quotedstr
      ('%' + dbexpedicion.Text + '%') + ')' + ' order by onu';
    open;

    // Dbnavigator_ADR.BtnClick(nbinsert);
    DBCLIENTE_1.Text := dbcliente.Text;
    dbalbaran_1.Text := dbexpedicion.Text;

    // DBVALOREXCENSION.Text:=VALOR_EX_NUMERO;
    // showmessage ( sql.text);

    { **************************************************
      SQL.Text:=
      'select * '
      +' from tabla_adr where'
      +'( onu like'+quotedstr('%'+busca_onu.Text+'%')
      +'  OR  nombre  like'+quotedstr('%'+busca_onu.Text+'%')
      +')'
      + ' order by onu'  ;
      //SHOWMESSAGE (SQL.TEXT +#13#10 + FECHA_INI +#13#10 + fecha_fini  );

      ***** }

    // Open;

    conesiones.QUERY_ALBARANADR.Active := true;

  end;

end;

procedure Tf_albaranes.ALMACENAJEShow(Sender: TObject);
begin
  //
end;

procedure Tf_albaranes.BlimpiarClick(Sender: TObject);
begin
  with conesiones.query_albaranadr2 do
  begin
    conesiones.query_todosalb.Active := true;

    SQL.Text := 'truncate albaran_adr';

    // SHOWMESSAGE (SQL.TEXT +#13#10 + FECHA_INI +#13#10 + fecha_fini  );

    conesiones.query_albaranadr2.Execute;

    DBNavigator_ADR.BtnClick(nbrefresh);

    conesiones.query_tablaadr.Close;

  end;

end;

procedure Tf_albaranes.boton_buscaClick(Sender: TObject);
begin


   if chsinprecio.Checked=true then
    begin
   condicion_precio:='(cobramos is null or pagamos is null)' + ' and';
    end

    else

    begin
    condicion_precio:='';
    end;





    grilla_albaran.Visible := true;

    /// SI FECHA ESTA MARCADA************************************
    /// ************************************************
    /// ************************************************

    if fechatimer.Checked and fechatimer_final.Checked = true then
    BEGIN

      FECHA_INI := quotedstr(FormatDateTime('yyyy-mm-dd', fechatimer.DateTime));
      fecha_fini := quotedstr(FormatDateTime('yyyy-mm-dd',
          fechatimer_final.DateTime));

      grilla_albaran.SetFocus;
      with conesiones.query_todosalb do
      begin

        Close;

        SQL.Text := 'select albaran, referencia, loc_consig,' +
          'CLIENTE, CONSIGNA, FECHA_ALB, cuenta_alm,  remitente, cp_remite, loc_remite,'
          +
          'cp_consig,dir_consig,  puestos_costes, observaciones, ob_proveedor,ES_aDR,  '
          +
          'num_palet, cuenta_alm, palet_manip, num_pickin,paltet_picking,ENTRADA,'
          + 'bultos, kilos, f_concert, cobramos, pag_prov_2, factura,  pagamos, proveedor ' + ' from albaran where '

          + condicion_precio

           + '  (FECHA_ALB BETWEEN ' + FECHA_INI + ' AND ' + fecha_fini + ' AND '

          + '(  referencia like' + quotedstr('%' + BUSCA_NOMBRE.Text + '%')
          + '  OR  albaran  like' + quotedstr('%' + BUSCA_NOMBRE.Text + '%')
          + '  OR  CLIENTE  like' + quotedstr('%' + BUSCA_NOMBRE.Text + '%')
          + '  OR  CONSIGNA  like' + quotedstr('%' + BUSCA_NOMBRE.Text + '%')
          + '  OR  remitente  like' + quotedstr('%' + BUSCA_NOMBRE.Text + '%')
          + '))'

          + ' order by fecha_alb,CLIENTE' + ' limit 500';

        open;

        conesiones.query_todosalb.Active := true;



        // SHOWMESSAGE (SQL.TEXT +#13#10 + FECHA_INI +#13#10 + fecha_fini  );

        CONTAR := IntToStr(grilla_albaran.Datasource.Dataset.Recordcount);
        Edit1.Text := CONTAR;

        // DBCOBRAMOS.SetFocus;

        if conesiones.query_todosalb.Recordcount > 0 then
        BEGIN
          dbcobramos.SetFocus;
        END;

        if conesiones.query_todosalb.Recordcount = 0 then
        BEGIN
          SHOWMESSAGE(' NO SE ENCUENTRA NINGUNA EXPDICION CON ESOS DATOS ' +
              BUSCA_NOMBRE.Text);

          BUSCA_NOMBRE.Text := '';
          BUSCA_NOMBRE.SetFocus;
        END;

      end;

    END
    /// SI FECHA NO ESTA AMRCADA***************************************
    /// ***************************************************************
    /// *******************************XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
    ///
    ELSE

    BEGIN
      conesiones.query_todosalb.Active := false;

      FECHA_INI := quotedstr(FormatDateTime('yyyy-mm-dd', fechatimer.DateTime));
      grilla_albaran.SetFocus;

      with conesiones.query_todosalb do
      begin
        // cONESIONES.query_todosalb.Active:=TRUE;

        // Close;

        SQL.Text := 'select albaran, referencia, loc_consig,' +
          'CLIENTE, CONSIGNA, FECHA_ALB, cuenta_alm,  remitente, cp_remite, loc_remite,'
          +
          'cp_consig,dir_consig,  puestos_costes, pag_prov_2, factura,ES_ADR,ENTRADA,  ' +
          'num_palet, cuenta_alm, palet_manip, num_pickin,paltet_picking,'
          + 'bultos, kilos, f_concert, observaciones, ob_proveedor, cobramos, pagamos, proveedor  ' + ' from albaran where'
          + condicion_precio
          + ' (referencia like' + quotedstr('%' + BUSCA_NOMBRE.Text + '%') + '  OR  albaran  like' + quotedstr('%' + BUSCA_NOMBRE.Text + '%') + '  OR  CLIENTE  like' + quotedstr('%' + BUSCA_NOMBRE.Text + '%') + '  OR  CONSIGNA  like' + quotedstr('%' + BUSCA_NOMBRE.Text + '%') + '  OR  remitente  like' + quotedstr('%' + BUSCA_NOMBRE.Text + '%')

          + ' )order by fecha_alb,CLIENTE'

          + ' limit 200';

        //showmessage (sql.Text);
        open;

        conesiones.query_todosalb.Active := true;
        CONTAR := IntToStr(grilla_albaran.Datasource.Dataset.Recordcount);
        Edit1.Text := CONTAR;

        if conesiones.query_todosalb.Recordcount > 0 then
        BEGIN
          dbcobramos.SetFocus;
        END;

        if conesiones.query_todosalb.Recordcount = 0 then
        BEGIN
          SHOWMESSAGE(' NO SE ENCUENTRA NINGUNA EXPDICION CON ESOS DATOS ' +
              BUSCA_NOMBRE.Text);

          BUSCA_NOMBRE.Text := '';
          BUSCA_NOMBRE.SetFocus;
        END;

      END;

    END;


   end;


procedure Tf_albaranes.btnrecogidaClick(Sender: TObject);
begin
        with informes.query_comodin DO
   begin
//   informes.informe_recogidas.Variables[empresa]:='''' + tta.Text + '''';

  //Close;

  SQL.Text:=

  'select * from albaran where albaran '
      +' like'+quotedstr('%'+dbexpedicion.Text+'%');


       //SHOWMESSAGE (SQL.TEXT +#13#10 + FECHA_INI +#13#10 + fecha_fini  );

     Open;

  informes.query_comodin.Active:=true;

//  informes.informe_recogidas.Variables[empresa]:='''' + tta.Text + '''';

  INFORMES.informe_cargas.ShowReport();
  INFORMES.frxPDFExport1.FileName := 'C:\temp\orden_de_carga.PDF';
     INFORMES.informe_cargas.Export(INFORMES.frxPDFExport1);
     f_envio.Show;


        //with CONESIONES.query_clientes do
 // begin
  //CONESIONES.query_clientes.Active:=TRUE;

 close;

   //CONESIONES.conexion_general.Close;
  // CONESIONES.conexion_general.Open;








   //end ;

end;


end;

procedure Tf_albaranes.btn_porteClick(Sender: TObject);
var
  em_subject, em_body, em_mail : string;
  mailadress:string;
begin
  // Email
  mailadress:='jvmontoro@gmail.com';
  em_subject := 'Subject del mensaje...';
  em_mail := 'mailto:' + MAILADRESS + '?subject=' +
    em_subject + '&body=' + em_body ;
  // Enviar
  ShellExecute(Handle,'open', PChar(em_mail), nil, nil, SW_SHOWNORMAL) ;
end;











procedure Tf_albaranes.BUSCA_NOMBREKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;

    Perform(WM_NEXTDLGCTL, 0, 0);

  end;

end;

procedure Tf_albaranes.busca_onuKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    with conesiones.query_tablaadr do
    begin
      // CONESIONES.query_todosalb.Active:=TRUE;

      Close;

      SQL.Text := 'select * ' + ' from tabla_adr where' + '( onu like' +
        quotedstr('%' + busca_onu.Text + '%') + '  OR  nombre  like' + quotedstr
        ('%' + busca_onu.Text + '%') + ')' + ' order by onu';

      // SHOWMESSAGE (SQL.TEXT +#13#10 + FECHA_INI +#13#10 + fecha_fini  );

      open;

      conesiones.query_tablaadr.Active := true;
      Panel8.Visible := true;
      grilla_tabla_adr.SetFocus;

    end;
  end;
end;

procedure Tf_albaranes.Button1Click(Sender: TObject);

{ ******************************************************* }
{ }
{ PONEMOS EN MODO EDICION LA TABLA ALBARAN:ADR Y }
{ ESCRIBIMOS EN EN ELLA }
{ ******************************************************* }
var
  albaran1, cliente1, nombre1, remitente1: string;

begin
  Panel7.Visible := true;
  busca_onu.SetFocus;
end;

procedure Tf_albaranes.Button2Click(Sender: TObject);

var
  texto: string;
  busqueda: string;

  FECHA1: TDATETIME;

  FECHA_INICIAL, FECHA_FINALE, fecha_siguiente: tdate;
  // FECHA DEL  Y ULTIMO REGISTROPRIMER REGISTRO
  fecha_control: tdate;
  FECHA_CONTROL2: tdate;

  DIFERENCIA_FECHAS: VARIANT;
  numero_registros, numero_registros2: integer;
  control, control2, recuento, recuento2: integer;
  MOVIMIENTO: STRING;
  CONSULTA: STRING;
  PRECIOCAJA: DOUBLE;
  PRECIOPALET: DOUBLE;
  precio_entrada2: DOUBLE;
  valor_inicial: string;
  palets_del_dia, palets_anterior, palets_actual: DOUBLE;
  palets_control: integer;
  stock: VARIANT;
  numeropalet: DOUBLE;
  precio_calculado: DOUBLE;
  stock_anterior, stock_actual, stock_intermedio: integer;
  consulta2, precio: VARIANT;

begin
  with conesiones.query_almacenaje do
  BEGIN

    conesiones.query_almacenaje.SQL.Clear;
    conesiones.query_almacenaje.SQL.Add('TRUNCATE TABLE ALMACENAJE');

    conesiones.query_almacenaje.ExecSQL;

    conesiones.query_almacenaje.SQL.Clear;
    conesiones.query_almacenaje.SQL.Add('TRUNCATE TABLE ALMACENAJE_stock');

    conesiones.query_almacenaje.ExecSQL;

    conesiones.query_almacenaje.SQL.Clear;
    conesiones.query_almacenaje.SQL.Add('TRUNCATE TABLE ALMACENAJE_precios');

    conesiones.query_almacenaje.ExecSQL;

  END;

  valor_inicial := InputBox('STOCK INICIAL',
    'Introducir Stock inicial de palets', '0');
  Label52.Caption := 'INSERTANDO REGISTROS';

  Panel14.Visible := true;
  FECHA1 := STRTODATETIME(dbfecha.Text);
  conesiones.query_almacenaje.SQL.Clear;
  conesiones.query_almacenaje.SQL.Add('insert into almacenaje');
  conesiones.query_almacenaje.SQL.Add('set num_palet=');
  conesiones.query_almacenaje.SQL.Add(valor_inicial);
  conesiones.query_almacenaje.SQL.Add(',FECHA_ALB= ' + '"' + FormatDateTime
      ('yyyy-mm-dd 00:00:00', FECHA1) + '"');
  conesiones.query_almacenaje.SQL.Add(', referencia= ');
  conesiones.query_almacenaje.SQL.Add('"STOCK INICIAL"');
  conesiones.query_almacenaje.ExecSQL;

  numero_registros := grilla_albaran.Datasource.Dataset.Recordcount;

  for control := 1 to numero_registros do

  begin

    FECHA1 := STRTODATETIME(dbfecha.Text);
    // SHOWMESSAGE(FormatDateTime('yyyy-mm-dd', FECHA1));
    conesiones.query_almacenaje.SQL.Clear;
    with conesiones.query_almacenaje do

    begin
      texto := quotedstr(dbreferencia.Text);
      PRECIOCAJA := STRTOFLOAT(grilla_albaran.Columns[58].Field.Text) * 0.3;
      PRECIOPALET := STRTOFLOAT(grilla_albaran.Columns[59].Field.Text) * 9;
      if grilla_albaran.Columns[62].Field.Text = 'S' then
        precio_entrada2 := STRTOFLOAT(grilla_albaran.Columns[57].Field.Text)
          * 6.5

      else
        precio_entrada2 := 0;

      busqueda :=
        'insert into almacenaje set  referencia= ' + texto + ',CLIENTE=' +
        quotedstr(dbcliente.Text) + ',NOMBRE=' + quotedstr(dbnombre.Text)
        + ',FECHA_ALB= ' + '"' + FormatDateTime('yyyy-mm-dd 00:00:00', FECHA1)
        + '"' + ' , NUM_PALET= ' + grilla_albaran.Columns[57].Field.Text +
        ', NUM_PCKING= ' + grilla_albaran.Columns[58].Field.Text +
        ', PALTET_PICKING= ' + grilla_albaran.Columns[59].Field.Text +
        ', ENTRADA= ' + quotedstr(grilla_albaran.Columns[62].Field.Text)
        + ',PRECIO_CAJA=' + FLOATTOSTR(PRECIOCAJA)
        + ',PRECIO_PALET_PICKIN=' + FLOATTOSTR(PRECIOPALET)
        + ',precio_entrada=' + FLOATTOSTR(precio_entrada2)
      // + ', PALET_MANIP= ' + GRILLA_ALBARAN.Columns[62].Field.TEXT

        + '';

      // SHOWMESSAGE(BUSQUEDA);

      conesiones.query_almacenaje.SQL.Clear;
      conesiones.query_almacenaje.SQL.Add(busqueda);
      if grilla_albaran.Columns[60].Field.Text = 'S' then
        conesiones.query_almacenaje.ExecSQL;

      DBNavigator1.BtnClick(NBnext);
      f_albaranes.ALMACENAJE.Refresh;
      // f_albaranes.Refresh;
      Label50.Caption := texto;
      Label51.Caption := dbfecha.Text;

    end;

  end;
  f_albaranes.ALMACENAJE.Refresh;
  Label52.Caption := 'OK!';
  beep;
  f_albaranes.ALMACENAJE.Refresh;
  MOVIMIENTO := 'SIN MOVIMIENTOS';
  Label52.Caption := 'INSERTANDO FECHAS SIN MOVIMIENTO';

  conesiones.query_almacenaje.SQL.Clear;
  conesiones.query_almacenaje.SQL.Add(
    'SELECT * FROM ALMACENAJE ORDER BY fecha_alb');
  conesiones.query_almacenaje.ExecSQL;
  numero_registros := conesiones.query_almacenaje.Recordcount;

  FECHA_INICIAL := conesiones.query_almacenaje.FieldByName('fecha_alb')
    .AsDateTIME;
  conesiones.query_almacenaje.Last;
  FECHA_FINALE := conesiones.query_almacenaje.FieldByName('fecha_alb')
    .AsDateTIME;
  // DIFERENCIA_FECHAS:=(FECHA_FINALE - (FECHA_INICIAL))+1;

  DIFERENCIA_FECHAS := (fechatimer_final.Date - fechatimer.Date);
  DIFERENCIA_FECHAS := int(DIFERENCIA_FECHAS);
  f_albaranes.ALMACENAJE.Refresh;
  Label52.Caption := 'INSERTANDO FECHAS SIN MOVIMIENTO';

  // SHOWMESSAGE ((DIFERENCIA_FECHAS));
  conesiones.query_almacenaje.First;
  FECHA_INICIAL := conesiones.query_almacenaje.FieldByName('fecha_alb')
    .AsDateTIME;
  fecha_siguiente := FECHA_INICIAL;

  for control := 0 to DIFERENCIA_FECHAS + 1 do
  begin

    conesiones.query_almacenaje_comprueba.SQL.Clear;
    conesiones.query_almacenaje_comprueba.SQL.Add
      ('select * from almacenaje' + ' where fecha_alb= ');
    conesiones.query_almacenaje_comprueba.SQL.Add
      (quotedstr(FormatDateTime('yyyy-mm-dd', fecha_siguiente)));
    conesiones.query_almacenaje_comprueba.ExecSQL;

    numero_registros2 := conesiones.query_almacenaje_comprueba.Recordcount;

    // showmessage(inttostr(numero_registros2)+ '  fecha  '+ datetostr(fecha_siguiente));

    if numero_registros2 = 0 then
    BEGIN
      CONSULTA := 'insert into almacenaje set REFERENCIA=' + quotedstr
        (MOVIMIENTO) + ',fecha_alb=' + quotedstr(FormatDateTime('YYYY-MM-DD',
          fecha_siguiente)) + ',cliente=' + quotedstr(dbcliente.Text)
        + ', nombre=' + quotedstr(dbnombre.Text);
      conesiones.query_almacenaje_añade.SQL.Clear;

      Label51.Caption := quotedstr(FormatDateTime('DD/MM/YYYY',
          fecha_siguiente));
      Label50.Caption := 'SIN MOVIMIENTOS';

      // conesiones.query_todosalb.SQL.Add('insert into albaran set albaran="000000000000", referencia=' + edit13.Text);
      // SHOWMESSAGE(CONSULTA);
      conesiones.query_almacenaje_añade.SQL.Add(CONSULTA);
      // conesiones.query_almacenaje_añade.sql.Add(MOVIMIENTO);
      // conesiones.query_almacenaje_añade.sql.Add( '"SIN MOVIMIENTOS"');
      // Conesiones.query_almacenaje_añade.sql.Add(', FECHA_ALB=');
      // Conesiones.query_almacenaje_añade.sql.Add( QuotedStr(FormatDateTime('yyyy-mm-dd',fecha_siguiente)));

      conesiones.query_almacenaje_añade.ExecSQL;

      f_albaranes.ALMACENAJE.Refresh;
    END;

    fecha_siguiente := fecha_siguiente + 1;

  end;

  Label52.Caption := 'Calculando stocks diarios...!';
  FECHA_INICIAL := conesiones.query_almacenaje.FieldByName('fecha_alb')
    .AsDateTIME;

  beep;
  /// vamos a sacar el stock

  // select num,sum(cantidad) as total from mitabla

  // for control := 1 to diferencia_fechas do
  // begin

  // end;

  // select *,sum(cantidad) as total from mitabla

  fecha_control := (conesiones.query_almacenaje.FieldByName('fecha_alb')
      .AsDateTIME);

  conesiones.query_almacenaje.SQL.Clear;
  conesiones.query_almacenaje.SQL.Add(
    'select *,sum(num_palet)as stock from almacenaje where fecha_alb=');
  conesiones.query_almacenaje.SQL.Add(quotedstr(FormatDateTime('yyyy-mm-dd',
        fecha_control)));

  conesiones.query_almacenaje.ExecSQL;

  // *******************************
  // *******************************
  // para controlar el stock diario
  // *********************************

  // SHOWMESSAGE(datetostr(fecha_control) + '           ' +
  // conesiones.query_almacenaje.FieldByName('stock')
  // .asstring + 'control=     ' + inttostr(control));

  conesiones.query_almacenaje_añade.SQL.Clear;
  conesiones.query_almacenaje_añade.SQL.Add(
    'insert into almacenaje_stock set fecha_alb=');
  conesiones.query_almacenaje_añade.SQL.Add
    (quotedstr(FormatDateTime('YYYY-MM-DD', fecha_control)));
  conesiones.query_almacenaje_añade.SQL.Add(',cliente=');
  conesiones.query_almacenaje_añade.SQL.Add(quotedstr(dbcliente.Text));
  conesiones.query_almacenaje_añade.SQL.Add(',paletsdeldia=');
  conesiones.query_almacenaje_añade.SQL.Add
    (conesiones.query_almacenaje.FieldByName('stock').asstring);
  conesiones.query_almacenaje_añade.SQL.Add(',paletsactual=');
  conesiones.query_almacenaje_añade.SQL.Add
    (conesiones.query_almacenaje.FieldByName('stock').asstring);

  conesiones.query_almacenaje_añade.ExecSQL;

  for control := 0 to (DIFERENCIA_FECHAS - 1) do
  begin
    conesiones.query_almacenaje.SQL.Clear;
    conesiones.query_almacenaje.SQL.Add(
      'select * from almacenaje_stock where fecha_alb=');
    conesiones.query_almacenaje.SQL.Add(quotedstr(FormatDateTime('YYYY-MM-DD',
          fecha_control)));
    conesiones.query_almacenaje.ExecSQL;

    fecha_control := fecha_control + 1;
    stock_anterior := conesiones.query_almacenaje.FieldByName('paletsactual')
      .asinteger;

    conesiones.query_almacenaje.SQL.Clear;
    conesiones.query_almacenaje.SQL.Add(
      'select *,sum(num_palet) as stock from almacenaje where fecha_alb=');
    conesiones.query_almacenaje.SQL.Add(quotedstr(FormatDateTime('yyyy-mm-dd',
          fecha_control)));

    conesiones.query_almacenaje.ExecSQL;

    // SHOWMESSAGE(datetostr(fecha_control) + '           ' +
    // conesiones.query_almacenaje.FieldByName('stock')
    // .asstring + 'control=     ' + inttostr(control));

    conesiones.query_almacenaje_añade.SQL.Clear;
    conesiones.query_almacenaje_añade.SQL.Add(
      'insert into almacenaje_stock set fecha_alb=');
    conesiones.query_almacenaje_añade.SQL.Add
      (quotedstr(FormatDateTime('YYYY-MM-DD', fecha_control)));
    conesiones.query_almacenaje_añade.SQL.Add(',cliente=');
    conesiones.query_almacenaje_añade.SQL.Add(quotedstr(dbcliente.Text));
    conesiones.query_almacenaje_añade.SQL.Add(',paletsdeldia=');
    conesiones.query_almacenaje_añade.SQL.Add
      (conesiones.query_almacenaje.FieldByName('stock').asstring);
    // conesiones.query_almacenaje_añade.SQL.Add(',paletsactual=');
    // conesiones.query_almacenaje_añade.SQL.Add
    // (conesiones.query_almacenaje.FieldByName('stock').asstring);
    // showmessage(inttostr(control)+ '   ' + datetostr(fecha_control));
    conesiones.query_almacenaje_añade.ExecSQL;

  end;

  { **
    UPDATE almacenaje
    SET
    referencia = :referencia
    WHERE
    id = :Old_id
    ** }

  // /VAMOS A AÑADIR STOCK DEL DIA A DIA

  conesiones.query_almacenaje.SQL.Clear;
  conesiones.query_almacenaje.SQL.Add('select * from almacenaje_stock ');
  conesiones.query_almacenaje.ExecSQL;

  recuento := conesiones.query_almacenaje.Recordcount;
  fecha_control := conesiones.query_almacenaje.FieldByName('fecha_alb')
    .AsDateTIME;
  // fecha_control:=fecha_control -1;

  conesiones.query_almacenaje.SQL.Clear;
  conesiones.query_almacenaje.SQL.Add(
    'select * from almacenaje_stock where fecha_alb= ');
  conesiones.query_almacenaje.SQL.Add(quotedstr(FormatDateTime('YYYY-MM-DD',
        fecha_control)));
  conesiones.query_almacenaje.ExecSQL;

  recuento2 := conesiones.query_almacenaje.Recordcount;
  palets_anterior := conesiones.query_almacenaje.FieldByName('paletsactual')
    .asinteger;

  fecha_control := fecha_control + 1;

  for control := 1 to recuento do

  begin

    conesiones.query_almacenaje.SQL.Clear;
    conesiones.query_almacenaje.SQL.Add(
      'select * from almacenaje_stock where fecha_alb= ');
    conesiones.query_almacenaje.SQL.Add(quotedstr(FormatDateTime('YYYY-MM-DD',
          fecha_control)));
    conesiones.query_almacenaje.ExecSQL;

    palets_del_dia := conesiones.query_almacenaje.FieldByName('paletsdeldia')
      .asinteger;
    palets_actual := palets_anterior + palets_del_dia;

    conesiones.query_almacenaje_añade.SQL.Clear;
    conesiones.query_almacenaje_añade.SQL.Add(
      'update almacenaje_stock set paletsactual=');
    conesiones.query_almacenaje_añade.SQL.Add(FLOATTOSTR(palets_actual));
    conesiones.query_almacenaje_añade.SQL.Add('where fecha_alb=');
    conesiones.query_almacenaje_añade.SQL.Add
      (quotedstr(FormatDateTime('YYYY-MM-DD', fecha_control)));
    conesiones.query_almacenaje_añade.ExecSQL;

    conesiones.query_almacenaje.SQL.Clear;
    conesiones.query_almacenaje.SQL.Add(
      'select * from almacenaje_stock where fecha_alb= ');
    conesiones.query_almacenaje.SQL.Add(quotedstr(FormatDateTime('YYYY-MM-DD',
          fecha_control)));
    conesiones.query_almacenaje.ExecSQL;
    fecha_control := fecha_control + 1;
    palets_anterior := conesiones.query_almacenaje.FieldByName('paletsactual')
      .asinteger;

  end;

  // AHORA SUMAMOS TOTALES DE PRECIOS PARA PASAR AL INFORME

  conesiones.query_almacenaje.SQL.Clear;
  conesiones.query_almacenaje.SQL.Add(
    'select *,sum(num_pcking) as stock from almacenaje ');
  conesiones.query_almacenaje.ExecSQL;

  consulta2 := (conesiones.query_almacenaje.FieldByName('stock').asstring);

  precio := (STRTOFLOAT(consulta2) * 0.3);
  precio := FLOATTOSTR(precio);

  conesiones.query_almacenaje_añade.SQL.Clear;
  conesiones.query_almacenaje_añade.SQL.Add(
    'insert into almacenaje_precios set sumanum_pcking=');
  conesiones.query_almacenaje_añade.SQL.Add
    (conesiones.query_almacenaje.FieldByName('stock').asstring);
  conesiones.query_almacenaje_añade.SQL.Add(', sumaprecio_caja=');
  conesiones.query_almacenaje_añade.SQL.Add(precio);
  conesiones.query_almacenaje_añade.ExecSQL;
  //

  conesiones.query_almacenaje.SQL.Clear;
  conesiones.query_almacenaje.SQL.Add(
    'select *,sum(paltet_picking) as stock from almacenaje ');
  conesiones.query_almacenaje.ExecSQL;

  conesiones.query_almacenaje_añade.SQL.Clear;
  conesiones.query_almacenaje_añade.SQL.Add(
    'update almacenaje_precios set sumanum_palet_picking=');
  conesiones.query_almacenaje_añade.SQL.Add
    (conesiones.query_almacenaje.FieldByName('stock').asstring);
  conesiones.query_almacenaje_añade.SQL.Add(' where id= 1');
  conesiones.query_almacenaje_añade.ExecSQL;

  conesiones.query_almacenaje.SQL.Clear;
  conesiones.query_almacenaje.SQL.Add(
    'select *,sum(paletsactual) as stock from almacenaje_stock ');
  conesiones.query_almacenaje.ExecSQL;

  conesiones.query_almacenaje_añade.SQL.Clear;
  conesiones.query_almacenaje_añade.SQL.Add(
    'update almacenaje_precios set sumastocks_mes=');
  conesiones.query_almacenaje_añade.SQL.Add
    (conesiones.query_almacenaje.FieldByName('stock').asstring);
  conesiones.query_almacenaje_añade.SQL.Add(' where id= 1');
  conesiones.query_almacenaje_añade.ExecSQL;

  WITH INFORMES.query_almacenaje DO
  BEGIN

    SQL.Text :=

      'SELECT almacenaje.referencia,almacenaje.cliente,almacenaje.nombre,almacenaje.fecha_alb,almacenaje.num_palet,'
      +
      ' almacenaje.num_pcking,Almacenaje.PALTET_PICKING,almacenaje.ENTRADA,almacenaje.PALET_MANIP,almacenaje.PRECIO_ENTRADA,'
      + 'almacenaje.PRECIO_CAJA,almacenaje.PRECIO_PALET_PICKIN,almacenaje_stock.paletsdeldia,almacenaje_stock.paletsanterior,' + 'almacenaje_stock.paletsactual,almacenaje_stock.fecha_alb,almacenaje_stock.cliente FROM almacenaje' + ' INNER JOIN almacenaje_stock ON almacenaje_stock.fecha_alb = almacenaje.fecha_alb' + ' ORDER BY almacenaje.fecha_alb ASC,almacenaje.id ASC';

    open;
    INFORMES.query_almacenaje.Active := true;

    with INFORMES.query_almacenajestock do
    begin
      SQL.Text := 'select * from almacenaje_precios';
      open;
      INFORMES.query_almacenajestock.Active := true;

    end;

    INFORMES.informe_almacenaje.ShowReport();
    Close;
    Close;
  end;

END;

procedure Tf_albaranes.Button3Click(Sender: TObject);

BEGIN

  // creamos el formulario y lo hacemos visible
  application.CreateForm(Ttpiking, tpiking);

  tpiking.Showmodal

END;

procedure Tf_albaranes.Button4Click(Sender: TObject);
begin
  with INFORMES.QUERY_CARTAPORTE do
  begin

    SQL.Text := 'SELECT * FROM ALBARAN_ADR WHERE ALBARAN=' + dbalbaran_1.Text;

    SHOWMESSAGE(SQL.Text);

    INFORMES.R_CARTAPORTE.ShowReport();

  end;

end;

procedure Tf_albaranes.Button5Click(Sender: TObject);

BEGIN

  with conesiones.query_almacenaje do
  BEGIN

    conesiones.query_almacenaje.SQL.Clear;
    conesiones.query_almacenaje.SQL.Add('TRUNCATE TABLE ALMACENAJE');

    conesiones.query_almacenaje.ExecSQL;

    conesiones.query_almacenaje.SQL.Clear;
    conesiones.query_almacenaje.SQL.Add('TRUNCATE TABLE ALMACENAJE_stock');

    conesiones.query_almacenaje.ExecSQL;

  END;

end;

procedure Tf_albaranes.Button6Click(Sender: TObject);
var
  texto: string;
  busqueda: string;

  FECHA1: TDATETIME;

  FECHA_INICIAL, FECHA_FINALE, fecha_siguiente: tdate;
  // FECHA DEL  Y ULTIMO REGISTROPRIMER REGISTRO
  fecha_control: tdate;
  FECHA_CONTROL2: tdate;

  DIFERENCIA_FECHAS: VARIANT;
  numero_registros, numero_registros2: integer;
  control, control2, recuento, recuento2: integer;
  MOVIMIENTO: STRING;
  CONSULTA: STRING;
  PRECIOCAJA: DOUBLE;
  PRECIOPALET: DOUBLE;
  precio_entrada2: DOUBLE;
  valor_inicial: string;
  palets_del_dia, palets_anterior, palets_actual: DOUBLE;
  palets_control: integer;
  stock: VARIANT;
  numeropalet: DOUBLE;
  stock_anterior, stock_actual, stock_intermedio: integer;
  consulta2, precio: VARIANT;

begin
  // VAMOS A AÑADIR STOCK DEL DIA A DIA

  conesiones.query_almacenaje.SQL.Clear;
  conesiones.query_almacenaje.SQL.Add('select * from almacenaje_stock ');
  conesiones.query_almacenaje.ExecSQL;

  recuento := conesiones.query_almacenaje.Recordcount;
  fecha_control := conesiones.query_almacenaje.FieldByName('fecha_alb')
    .AsDateTIME;
  // fecha_control:=fecha_control -1;

  conesiones.query_almacenaje.SQL.Clear;
  conesiones.query_almacenaje.SQL.Add(
    'select * from almacenaje_stock where fecha_alb= ');
  conesiones.query_almacenaje.SQL.Add(quotedstr(FormatDateTime('YYYY-MM-DD',
        fecha_control)));
  conesiones.query_almacenaje.ExecSQL;

  recuento2 := conesiones.query_almacenaje.Recordcount;
  palets_anterior := conesiones.query_almacenaje.FieldByName('paletsactual')
    .asinteger;

  fecha_control := fecha_control + 1;

  for control := 1 to recuento do

  begin

    conesiones.query_almacenaje.SQL.Clear;
    conesiones.query_almacenaje.SQL.Add(
      'select * from almacenaje_stock where fecha_alb= ');
    conesiones.query_almacenaje.SQL.Add(quotedstr(FormatDateTime('YYYY-MM-DD',
          fecha_control)));
    conesiones.query_almacenaje.ExecSQL;

    palets_del_dia := conesiones.query_almacenaje.FieldByName('paletsdeldia')
      .asinteger;
    palets_actual := palets_anterior + palets_del_dia;

    conesiones.query_almacenaje_añade.SQL.Clear;
    conesiones.query_almacenaje_añade.SQL.Add(
      'update almacenaje_stock set paletsactual=');
    conesiones.query_almacenaje_añade.SQL.Add(FLOATTOSTR(palets_actual));
    conesiones.query_almacenaje_añade.SQL.Add('where fecha_alb=');
    conesiones.query_almacenaje_añade.SQL.Add
      (quotedstr(FormatDateTime('YYYY-MM-DD', fecha_control)));
    conesiones.query_almacenaje_añade.ExecSQL;

    conesiones.query_almacenaje.SQL.Clear;
    conesiones.query_almacenaje.SQL.Add(
      'select * from almacenaje_stock where fecha_alb= ');
    conesiones.query_almacenaje.SQL.Add(quotedstr(FormatDateTime('YYYY-MM-DD',
          fecha_control)));
    conesiones.query_almacenaje.ExecSQL;
    fecha_control := fecha_control + 1;
    palets_anterior := conesiones.query_almacenaje.FieldByName('paletsactual')
      .asinteger;

  end;

  // AHORA SUMAMOS TOTALES DE PRECIOS PARA PASAR AL INFORME

  conesiones.query_almacenaje.SQL.Clear;
  conesiones.query_almacenaje.SQL.Add(
    'select *,sum(num_pcking) as stock from almacenaje ');
  conesiones.query_almacenaje.ExecSQL;

  consulta2 := (conesiones.query_almacenaje.FieldByName('stock').asstring);

  precio := (STRTOFLOAT(consulta2) * 0.3);
  precio := FLOATTOSTR(precio);

  conesiones.query_almacenaje_añade.SQL.Clear;
  conesiones.query_almacenaje_añade.SQL.Add(
    'insert into almacenaje_precios set sumanum_pcking=');
  conesiones.query_almacenaje_añade.SQL.Add
    (conesiones.query_almacenaje.FieldByName('stock').asstring);
  conesiones.query_almacenaje_añade.SQL.Add(', sumaprecio_caja=');
  conesiones.query_almacenaje_añade.SQL.Add(precio);
  conesiones.query_almacenaje_añade.ExecSQL;
  //

  conesiones.query_almacenaje.SQL.Clear;
  conesiones.query_almacenaje.SQL.Add(
    'select *,sum(paltet_picking) as stock from almacenaje ');
  conesiones.query_almacenaje.ExecSQL;

  conesiones.query_almacenaje_añade.SQL.Clear;
  conesiones.query_almacenaje_añade.SQL.Add(
    'update almacenaje_precios set sumanum_palet_picking=');
  conesiones.query_almacenaje_añade.SQL.Add
    (conesiones.query_almacenaje.FieldByName('stock').asstring);
  conesiones.query_almacenaje_añade.SQL.Add(' where id= 1');
  conesiones.query_almacenaje_añade.ExecSQL;

  conesiones.query_almacenaje.SQL.Clear;
  conesiones.query_almacenaje.SQL.Add(
    'select *,sum(paletsactual) as stock from almacenaje_stock ');
  conesiones.query_almacenaje.ExecSQL;

  conesiones.query_almacenaje_añade.SQL.Clear;
  conesiones.query_almacenaje_añade.SQL.Add(
    'update almacenaje_precios set sumastocks_mes=');
  conesiones.query_almacenaje_añade.SQL.Add
    (conesiones.query_almacenaje.FieldByName('stock').asstring);
  conesiones.query_almacenaje_añade.SQL.Add(' where id= 1');
  conesiones.query_almacenaje_añade.ExecSQL;

  WITH INFORMES.query_almacenaje DO
  BEGIN

    SQL.Text :=

      'SELECT almacenaje.referencia,almacenaje.cliente,almacenaje.nombre,almacenaje.fecha_alb,almacenaje.num_palet,'
      +
      ' almacenaje.num_pcking,Almacenaje.PALTET_PICKING,almacenaje.ENTRADA,almacenaje.PALET_MANIP,almacenaje.PRECIO_ENTRADA,'
      + 'almacenaje.PRECIO_CAJA,almacenaje.PRECIO_PALET_PICKIN,almacenaje_stock.paletsdeldia,almacenaje_stock.paletsanterior,' + 'almacenaje_stock.paletsactual,almacenaje_stock.fecha_alb,almacenaje_stock.cliente FROM almacenaje' + ' INNER JOIN almacenaje_stock ON almacenaje_stock.fecha_alb = almacenaje.fecha_alb' + ' ORDER BY almacenaje.fecha_alb ASC,almacenaje.id ASC';

    open;
    INFORMES.query_almacenaje.Active := true;

    INFORMES.informe_almacenaje.ShowReport();

    Close;
  END;

end;

procedure Tf_albaranes.Button7Click(Sender: TObject);

begin

  WITH INFORMES.query_almacenaje DO
  BEGIN

    SQL.Text :=

      'SELECT almacenaje.referencia,almacenaje.cliente,almacenaje.nombre,almacenaje.fecha_alb,almacenaje.num_palet,'
      +
      ' almacenaje.num_pcking,Almacenaje.PALTET_PICKING,almacenaje.ENTRADA,almacenaje.PALET_MANIP,almacenaje.PRECIO_ENTRADA,'
      + 'almacenaje.PRECIO_CAJA,almacenaje.PRECIO_PALET_PICKIN,almacenaje_stock.paletsdeldia,almacenaje_stock.paletsanterior,' + 'almacenaje_stock.paletsactual,almacenaje_stock.fecha_alb,almacenaje_stock.cliente FROM almacenaje' + ' INNER JOIN almacenaje_stock ON almacenaje_stock.fecha_alb = almacenaje.fecha_alb' + ' ORDER BY almacenaje.fecha_alb ASC,almacenaje.id ASC';

    open;
    INFORMES.query_almacenaje.Active := true;

    INFORMES.informe_almacenaje.ShowReport();

    Close;
  END;
end;

{ **
  UPDATE almacenaje
  SET
  referencia = :referencia
  WHERE
  id = :Old_id
  ** }

procedure Tf_albaranes.chkborrarClick(Sender: TObject);
begin
  if chkborrar.Checked = true then
  begin
    DBNavigator1.VisibleButtons := [nbFirst, nbPrior, NBnext, nbLast, nbDelete,
      nbPost, nbCancel, nbrefresh];

  end

  else
    DBNavigator1.VisibleButtons := [nbFirst, nbPrior, NBnext, nbLast, nbPost,
      nbCancel, nbrefresh];

end;

procedure Tf_albaranes.CH_ADRClick(Sender: TObject);
begin
  if CH_ADR.Checked = true then
  BEGIN
    f_albaranes.ADR.TabVisible := true;
  END
  ELSE
    f_albaranes.ADR.TabVisible := false;

end;

procedure Tf_albaranes.dbalbaran_1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);

  end;
end;

procedure Tf_albaranes.dbclienteChange(Sender: TObject);
begin
  with conesiones.query_clientes do
  begin
    conesiones.query_clientes.Active := true;

    Close;
    if dbcliente.Text <> '' then
    begin

      SQL.Text := 'select * from clientes where cliente = ' + dbcliente.Text;

      open;

      conesiones.query_clientes.Active := true;
    end;
  end;

end;

procedure Tf_albaranes.dbcobramosExit(Sender: TObject);
begin
  // ponemos la tabla en modo edicion y al salir actualiza los datos

  DBNavigator1.Datasource.Edit;
  DBNavigator1.BtnClick(nbPost);

end;

procedure Tf_albaranes.dbcobramosKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);

  end;

  if Key = #27 then
  BEGIN
    Key := #0;
    BUSCA_NOMBRE.SetFocus;
  END;

end;

procedure Tf_albaranes.dbdniKeyPress(Sender: TObject; var Key: Char);
begin
  Button4.SetFocus;
end;

procedure Tf_albaranes.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;

    DBNavigator1.SetFocus;

  end;
end;

procedure Tf_albaranes.dbexpedicionChange(Sender: TObject);


// comprueba si es si cuenta_alma y chequea el chekbox

begin
  MaskEdit1.Text := dbexpedicion.Text;

  if dbcuenta_alm.Text = 'S' then
  begin

    checkalmacenaje.Checked := true;
  end
  else
  begin
    checkalmacenaje.Checked := false;
  end;

end;

procedure Tf_albaranes.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin

  // if Button = nbDelete then
  // begin
  // if application.messagebox ('Confirma el Borrado del registro?', '   ',  MB_ICONQUESTION OR MB_YESNO ) = ID_no then
  // begin
  // Abort;
  // end;
  // end;
end;

procedure Tf_albaranes.dbobservaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  BEGIN
    Key := #0;
    BUSCA_NOMBRE.SetFocus;
  END;
end;

procedure Tf_albaranes.dbobserva_provKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  BEGIN
    Key := #0;
    BUSCA_NOMBRE.SetFocus;
  END;
end;

procedure Tf_albaranes.dbtransportistaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;

    Perform(WM_NEXTDLGCTL, 0, 0);

  end;
  DBNavigator_ADR.BtnClick(NBEDIT);
  DBNavigator_ADR.BtnClick(nbPost);
end;

procedure Tf_albaranes.fechatimerExit(Sender: TObject);
begin

  // fecha_ini:=FormatDateTime('yyyy-mm-dd',fechatimer.DateTime);

  // edit1.Text:=fecha_ini;

  // with CONESIONES.query_todosalb do
  // begin
  // CONESIONES.query_todosalb.Active:=TRUE;

  // Close;


  // SQL.Text:=
  // 'select albaran, referencia, loc_consig,' +
  // 'CLIENTE, CONSIGNA,'+
  /// /'FECHA_ALB'+
  // ' from albaran where FECHA_ALB =' + QuotedStr(FormatDateTime('yyyy-mm-dd',fechatimer.DateTime)) ;

  // SQL.Text:=
  // 'select albaran, referencia, loc_consig,' +
  // 'CLIENTE, CONSIGNA'+
  // ' from albaran where referencia like'+quotedstr('%'+busca_nombre.Text+'%')
  // +'  OR   albaran  like'+quotedstr('%'+busca_nombre.Text+'%')
  // +'  OR  fecha_alb  like'+quotedstr('%'+busca_nombre.Text+'%')
  // +'  OR  fecha_alb  like'+quotedstr('%'+busca_nombre.Text+'%')
  // +'  limit 20';


  // Open;

  // CONESIONES.query_todosalb.Active:=TRUE;
  // END;

end;

procedure Tf_albaranes.fechatimerKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
    boton_busca.SetFocus;
  end;

end;

procedure Tf_albaranes.FormActivate(Sender: TObject);
begin

  fechatimer.DateTime := NOW - 1;
  fechatimer_final.Date := NOW;
  fechatimer.Checked := false;
  fechatimer_final.Checked := false;
  f_albaranes.historico.Show;

end;

procedure Tf_albaranes.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  f_albaranes := NIL;
  Action := caFree;

end;

procedure Tf_albaranes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

// captura si teclado avpag o repag para avazar en dbnavigator,
// la porpiedad keypreview del formulario debe ser true

{ //segun que pestaña este seleccionada,
  las teclas avpag y repag se mueven por una
  dbnavigator }

begin
  // si esta selecionada la pestaña albaranes

  if (Key = VK_next) then
  begin
    DBNavigator1.BtnClick(NBnext);
  end;

  if (Key = VK_prior) then
  begin
    DBNavigator1.BtnClick(nbPrior);

  end;
  // si esta seleccionada la pestaña adr

end;

procedure Tf_albaranes.grilla_tabla_adrKeyPress(Sender: TObject; var Key: Char);
var
  RESPUESTA: integer;
  MAS: integer;
  a: string;
  MAS_INTREGRO: STRING;
  VALOR_EX: VARIANT; // VALOR QUE TOMAMOS DE LA CATEGORIA DEL TRANSPORTE  ;

  VALOR_KILOS: VARIANT; // VALOR QUE LE DAMOS AL VALOR DE LA EXCENSION;
  VALOR_PARCIAL_KILOS: VARIANT;
  VALOR_EX_NUMERO: VARIANT;
  descripcion_numero: string;

begin

  if Key = #13 then

  begin
    VALOR_EX := (Self.grilla_tabla_adr.Columns[2].Field.Text);
    Edit8.Text := dbkilos.Text;
    Edit9.Text := VALOR_EX;
    VALOR_PARCIAL_KILOS := InputBox('Peso/Volumen',
      'Introducir peso o volumen', '0');
    descripcion_numero := InputBox('Descripción', 'Número y tipo de bultos',
      ' ');
    VALOR_KILOS := STRTOINT(VALOR_PARCIAL_KILOS);

    // VALOR_KILOS:=STRTOINT(EDIT8.Text);
    Edit8.Text := VALOR_KILOS;
    DBEdit6.Text := VALOR_KILOS;

    if VALOR_EX = 1 then
    BEGIN
      VALOR_EX_NUMERO := VALOR_KILOS * 50;
    END;

    if VALOR_EX = 2 then
    BEGIN
      VALOR_EX_NUMERO := VALOR_KILOS * 3;
    END;
    if VALOR_EX = 3 then
    BEGIN
      VALOR_EX_NUMERO := VALOR_KILOS * 1;
    END;

    NUMEROONU := (Self.grilla_tabla_adr.Columns[0].Field.Text);
    NOMBREONU := (Self.grilla_tabla_adr.Columns[1].Field.Text);

    RESPUESTA := MessageDlg
      ('¿ES ESTE EL PRODUCTO? ->' + NUMEROONU + '  ->   ' + NOMBREONU,
      mtConfirmation, mbOKCancel, 0);

    a := IntToStr(RESPUESTA);

    // SHOWMESSAGE(A);

  END;

  if RESPUESTA <> 2 then

    with conesiones.QUERY_ALBARANADR do
    BEGIN

      conesiones.QUERY_ALBARANADR.open;
      conesiones.QUERY_ALBARANADR.Active := true;
      DBNavigator_ADR.BtnClick(nbinsert);
      DBCLIENTE_1.Text := dbcliente.Text;
      dbalbaran_1.Text := dbexpedicion.Text;
      DBNOMBRE_1.Text := dbnombre.Text;
      DBNOMBRE_1.Text := dbnombre.Text;
      // showmessage( dbalbaran_1.Text);
      dbreferencia_1.Text := dbreferencia.Text;
      DBVALOREXCENSION.Text := VALOR_EX_NUMERO;

      dbonu.Text := (Self.grilla_tabla_adr.Columns[0].Field.Text);
      dbnombre_adr.Text := (Self.grilla_tabla_adr.Columns[1].Field.Text);
      dbclasificacion.Text := (Self.grilla_tabla_adr.Columns[3].Field.Text);
      dbembalaje.Text := (Self.grilla_tabla_adr.Columns[4].Field.Text);
      dbetiqueta.Text := (Self.grilla_tabla_adr.Columns[5].Field.Text);
      dbcategoria.Text := (Self.grilla_tabla_adr.Columns[2].Field.Text);
      DBPESO.Text := VALOR_KILOS;
      DBEdit7.Text := descripcion_numero;
      DBEdit8.Text := (Self.grilla_tabla_adr.Columns[6].Field.Text);

      dbreferencia_1.Text := dbreferencia.Text;
      dbexpedidor.Text := 'DESTINA LOGISTICA';
      DBEdit3.Text := 'AVDA. DE LA FOIA 44';
      DBEdit4.Text := 'ALMUSAFES';
      DBEdit5.Text := '46460';
      dbconsigna.Text := dbconsignatario.Text;
      dbdirconsigna.Text := dbdireccion.Text;
      dblocconsigna.Text := dbcp.Text + '   ' + dbpoblacion.Text;
      dbcpconsigna.Text := dbcp.Text;

      DBNavigator_ADR.BtnClick(nbPost);
      // CONESIONES.query_tablaadr.Close;
      navegador_productos.BtnClick(nbrefresh);

      MAS := MessageDlg('¿AÑADIR MAS PRODUCTOS?   ', mtConfirmation,
        mbOKCancel, 0);
      MAS_INTREGRO := IntToStr(MAS);
      busca_onu.SetFocus;

    END;

  if MAS_INTREGRO = '2' then
  BEGIN
    conesiones.query_tablaadr.Close;
    Panel8.Visible := false;

    DBNavigator_ADR.BtnClick(NBEDIT);
    DBNavigator_ADR.BtnClick(nbPost);
    // CONESIONES.query_tablaadr.Close;
    navegador_productos.BtnClick(nbrefresh);

    dbtransportista.SetFocus;

    // F_aLBARANES.historico.Show ;

  END;

END;

procedure Tf_albaranes.historicoShow(Sender: TObject);

begin

  // conesiones.query_todosalb.Active:=true;
  // busca_nombre.SetFocus;
  // beep;
  BUSCA_NOMBRE.SetFocus;
end;

procedure Tf_albaranes.MaskEdit1Change(Sender: TObject);

BEGIN

  if CH_ADR.Checked = true then
  BEGIN
    f_albaranes.ADR.TabVisible := true;
  END
  ELSE
    f_albaranes.ADR.TabVisible := false;
END;

end.

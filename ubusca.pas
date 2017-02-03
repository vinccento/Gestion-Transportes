unit ubusca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, StdCtrls, DBCtrls, ComCtrls, Grids, DBGrids;

type
  Tf_busca = class(TForm)
    ALBARANES: TPageControl;
    historico: TTabSheet;
    Shape1: TShape;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Label2: TLabel;
    Shape2: TShape;
    Label6: TLabel;
    fecha_alb: TLabel;
    lexpedicion: TLabel;
    lcliente: TLabel;
    Label10: TLabel;
    ncliente: TLabel;
    Label9: TLabel;
    Bevel2: TBevel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Label24: TLabel;
    Label26: TLabel;
    Bevel9: TBevel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    BUSCA_NOMBRE: TEdit;
    grilla_albaran: TDBGrid;
    boton_busca: TButton;
    dbfecha: TDBEdit;
    dbexpedicion: TDBEdit;
    dbcliente: TDBEdit;
    dbreferencia: TDBEdit;
    dbnombre: TDBEdit;
    dbremitente: TDBEdit;
    dbconsignatario: TDBEdit;
    dbdireccion: TDBEdit;
    dbcp: TDBEdit;
    dbpoblacion: TDBEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit1: TEdit;
    fechatimer_final: TDateTimePicker;
    fechatimer: TDateTimePicker;
    Edit4: TEdit;
    dbcobramos: TDBEdit;
    dbpagamos: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit1: TDBEdit;
    dbfactura: TDBEdit;
    DBNavigator1: TDBNavigator;
    chkborrar: TCheckBox;
    Edit5: TEdit;
    Edit6: TEdit;
    dbkilos: TDBEdit;
    dbbultos: TDBEdit;
    dbobserva: TDBMemo;
    dbobserva_prov: TDBMemo;
    dbcuenta_alm: TDBEdit;
    DBEdit2: TDBEdit;
    MaskEdit1: TMaskEdit;
    Panel4: TPanel;
    chsinprecio: TCheckBox;
    rgrupo1: TRadioGroup;
    proveedor: TRadioButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    procedure boton_buscaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_busca: Tf_busca;

implementation

uses declaraciones, conexiones, uprincipal, U_INFORMES, UPICKING, enviocorreo;

{$R *.dfm}

procedure Tf_busca.boton_buscaClick(Sender: TObject);
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

          + '(  proveedor   like' + quotedstr('%' + BUSCA_NOMBRE.Text + '%')

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
          +   '  proveedor  like' + quotedstr('%' + BUSCA_NOMBRE.Text + '%')

          + ' order by fecha_alb,CLIENTE'

          + ' limit 200';

        showmessage (sql.Text);
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

end.

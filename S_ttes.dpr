program S_ttes;

uses
  Forms,
  uprincipal in 'uprincipal.pas' {f_principal},
  conexiones in 'conexiones.pas' {conesiones: TDataModule},
  clientes in 'clientes.pas' {f_clientes},
  localidades in 'localidades.pas' {flocalidades},
  declaraciones in 'declaraciones.pas',
  ualbaranes in 'ualbaranes.pas' {f_albaranes},
  uadr in 'uadr.pas' {f_adr},
  U_INFORMES in 'U_INFORMES.pas' {INFORMES},
  u_parametros_informes in 'u_parametros_informes.pas' {parametros_informes},
  UNT_TTAS1 in 'UNT_TTAS1.pas' {INT_TTAS1},
  UNT_TTAS in 'UNT_TTAS.pas' {INT_TTAS},
  UPICKING in 'UPICKING.pas' {tpiking},
  enviocorreo in 'enviocorreo.pas' {f_envio},
  almacen in 'almacen.pas' {f_almacen},
  ubusca in 'ubusca.pas' {f_busca},
  ubuscaalmacen in 'ubuscaalmacen.pas' {f_busca_almacenaje},
  u_parametros_almacen in 'u_parametros_almacen.pas' {f_parametros_almacen},
  TARIFA_PROV in 'TARIFA_PROV.pas' {TARIFAS},
  IMPORTAR in 'IMPORTAR.pas' {F1},
  u_baremos_tarifa in 'u_baremos_tarifa.pas' {BAREMOS_PROV},
  FUNCIONES in 'FUNCIONES.PAS',
  scExcelExport in 'scExcelExport.pas',
  USEGUIMIENTO in 'USEGUIMIENTO.pas' {f_seguimiento},
  u_repso in 'u_repso.pas' {f_repaso},
  U_elige in 'U_elige.pas' {elige_directorio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := '';
  Application.CreateForm(Tf_principal, f_principal);
  Application.CreateForm(Tconesiones, conesiones);
  Application.CreateForm(Tf_adr, f_adr);
  Application.CreateForm(TINFORMES, INFORMES);
  Application.CreateForm(Tparametros_informes, parametros_informes);
  Application.CreateForm(Tf_envio, f_envio);
  Application.CreateForm(Tf_almacen, f_almacen);
  Application.CreateForm(Tf_busca, f_busca);
  Application.CreateForm(TTARIFAS, TARIFAS);
  Application.CreateForm(TF1, F1);
  Application.CreateForm(TBAREMOS_PROV, BAREMOS_PROV);
  Application.CreateForm(Tf_repaso, f_repaso);
  Application.CreateForm(Telige_directorio, elige_directorio);
  Application.Run;
end.

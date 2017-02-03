program Project11;

uses
  Forms,
  ubusca in 'ubusca.pas' {f_busca},
  conexiones in 'conexiones.pas' {conesiones: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tf_busca, f_busca);
  Application.CreateForm(Tconesiones, conesiones);
  Application.Run;
end.

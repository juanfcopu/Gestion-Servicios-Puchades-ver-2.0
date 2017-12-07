program GestionSPuchades;

uses
  Vcl.Forms,
  FPrincipal in 'FPrincipal.pas' {principal},
  DModule1 in 'DModule1.pas' {DataModule1: TDataModule},
  BOTONES in 'BOTONES.pas' {menuseleccion},
  listaclientes in 'listaclientes.pas' {listclientes},
  clientes in 'clientes.pas' {FClientes},
  navegador in 'navegador.pas' {fnavegador},
  framePresupuestos in 'framePresupuestos.pas' {Frame1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(Tprincipal, principal);
  Application.CreateForm(TFClientes, FClientes);
  Application.CreateForm(Tfnavegador, fnavegador);
  Application.Run;
end.

program GestionSPuchades;

uses
  Vcl.Forms,
  FPrincipal in 'FPrincipal.pas' {principal},
  DModule1 in 'DModule1.pas' {DataModule1: TDataModule},
  BOTONES in 'BOTONES.pas' {menuseleccion},
  listapresupuestos in 'listapresupuestos.pas' {listpresupuestos},
  clientes in 'clientes.pas' {FClientes},
  navegador in 'navegador.pas' {fnavegador},
  framePresupuestos in 'framePresupuestos.pas' {Frame1: TFrame},
  frameFacturas in 'frameFacturas.pas' {Frame2: TFrame},
  frameObras in 'frameObras.pas' {Frame3: TFrame},
  frameContactos in 'frameContactos.pas' {Frame4: TFrame},
  presupuestos in 'presupuestos.pas' {FPresupuestos},
  listaclientes in 'listaclientes.pas' {listclientes},
  inserclientes in 'inserclientes.pas' {FInsertarCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(Tprincipal, principal);
  Application.Run;
end.

program GestionSPuchades;

uses
  Vcl.Forms,
  FPrincipal in 'FPrincipal.pas' {principal},
  DModule1 in 'DModule1.pas' {DataModule1: TDataModule},
  BOTONES in 'BOTONES.pas' {menuseleccion},
  listaclientes in 'listaclientes.pas' {listclientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tprincipal, principal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(Tmenuseleccion, menuseleccion);
  Application.CreateForm(Tlistclientes, listclientes);
  Application.Run;
end.

program GestionSPuchades;

uses
  Vcl.Forms,
  DModule1 in 'DModule1.pas' {DataModule1: TDataModule},
  listalineaspresupuestos in 'listalineaspresupuestos.pas' {listlineaspresupuestos},
  clientes in 'clientes.pas' {FClientes},
  framePresupuestos in 'framePresupuestos.pas' {Frame1: TFrame},
  frameFacturas in 'frameFacturas.pas' {Frame2: TFrame},
  frameObras in 'frameObras.pas' {Frame3: TFrame},
  frameContactos in 'frameContactos.pas' {Frame4: TFrame},
  listaproveedores in 'listaproveedores.pas' {Fproveedores},
  inserclientes in 'inserclientes.pas' {FInsertarCliente},
  obras in 'obras.pas' {FObras},
  listaobras in 'listaobras.pas' {listobras},
  SelectLineasPresupuestos in 'SelectLineasPresupuestos.pas' {FLineasPresupuestoObra},
  listaadministradores in 'listaadministradores.pas' {listadministradores},
  administradores in 'administradores.pas' {FAdministradores},
  inseradministradores in 'inseradministradores.pas' {FInsetarAdministrador},
  Empresa in 'Empresa.pas' {FEmpresa},
  Vcl.Themes,
  Vcl.Styles,
  SelectLineasobras in 'SelectLineasobras.pas' {FLineasObrasFacturas},
  seguros in 'seguros.pas' {FSeguros},
  listanominas in 'listanominas.pas' {listnominas},
  listafacturascompras in 'listafacturascompras.pas' {listfacturascompras},
  insernominas in 'insernominas.pas' {insertNominas},
  listasegurossociales in 'listasegurossociales.pas' {listsegurossociales},
  presupuestos in 'presupuestos.pas' {FPresupuestos},
  listaclientes in 'listaclientes.pas' {listclientes},
  companiasseguros in 'companiasseguros.pas' {FimagenesCompanias},
  EstadisticasGastos in 'EstadisticasGastos.pas' {FEstadisticasGastosVentas},
  asientos in 'asientos.pas' {FAsientos},
  listaseguros in 'listaseguros.pas' {listseguros},
  config in 'config.pas' {configuracion},
  inserfacturascomparas in 'inserfacturascomparas.pas' {insertFacturasCompras},
  ClientesDatos in 'ClientesDatos.pas' {FclientesDatos},
  editors in 'editors.pas',
  objetos in 'objetos.pas',
  bancos in 'bancos.pas' {FBancos},
  movimientosbancos in 'movimientosbancos.pas' {FMovimientosBancarios},
  DmoduleReports in 'DmoduleReports.pas' {DataModule2: TDataModule},
  calendario in 'calendario.pas' {FCalendario},
  listafacturas in 'listafacturas.pas' {listfacturas},
  listastrabajadores in 'listastrabajadores.pas' {listtrabajadores},
  facturas in 'facturas.pas' {FFacturas},
  Elegircalendario in 'Elegircalendario.pas' {FElegirCalendario},
  FPrincipal in 'FPrincipal.pas' {principal},
  PrevisionPresupuestos in 'PrevisionPresupuestos.pas' {FPrevisionEjecucion},
  listapresupuestos in 'listapresupuestos.pas' {listpresupuestos},
  plantillaspresupuestos in 'plantillaspresupuestos.pas' {FPlantillasPresupuestos},
  copiarfotos in 'copiarfotos.pas' {FcopiarFotos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Gestión Servicios Puchades';
  Application.CreateForm(Tprincipal, principal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(Tlistpresupuestos, listpresupuestos);
  Application.CreateForm(TFcopiarFotos, FcopiarFotos);
  Application.Run;
end.

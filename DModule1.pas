unit DModule1;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, Vcl.Dialogs,  System.IOutils,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,FireDAC.Stan.Consts,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB, FireDAC.Comp.DataSet,System.DateUtils ,
  FireDAC.Comp.Client, Vcl.ImgList, Vcl.Controls, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,Vcl.Graphics,Vcl.ComCtrls, System.Win.COMObj,
  Vcl.ExtCtrls,System.StrUtils, FireDAC.Phys.MySQLDef, System.ImageList, System.Types,
  FireDAC.VCLUI.Login, FireDAC.Moni.Base, FireDAC.Moni.RemoteClient, System.IniFiles, listafacturas, SelectLineasobras,RzTabs,
  rDBGrid, rDBGridSorter_FireDac,inserclientes, rXLSExport,System.variants,
  RzStatus,Vcl.Grids;

type
    TDataModule1 = class(TDataModule)
    FDMySQLDriverLink: TFDPhysMySQLDriverLink;
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    ImageList1: TImageList;
    navegador: TActionManager;
    listaclientes: TAction;
    crearclientes: TAction;
    accionespresupuestos: TActionManager;
    insertarpresupuesto: TAction;
    editarpresupuesto: TAction;
    fdClientes: TFDQuery;
    fdClientesidContactos: TFDAutoIncField;
    fdClientesnombre: TStringField;
    fdClientesidAdministrador: TIntegerField;
    fdClientesnombreapellidos: TStringField;
    fdClientesCIF: TStringField;
    fdClientesdireccion: TStringField;
    fdClientesCodigoPostal: TStringField;
    fdClientesCiudad: TStringField;
    fdpresupuestos: TFDQuery;
    listapresupuestos: TAction;
    editarcliente: TAction;
    icopeque: TImageList;
    borrarpresupuestos: TAction;
    timercambios: TTimer;
    editarobra: TAction;
    insertarobra: TAction;
    fdobras: TFDQuery;
    listaObras: TAction;
    VerCliente: TAction;
    ConvertirEnObra: TAction;
    fdLogin: TFDGUIxLoginDialog;
    actConfiguracion: TAction;
    actconfigIVA: TAction;
    actconfServidor: TAction;
    actconfPATH: TAction;
    fdadministradores: TFDQuery;
    lstadmnistradores: TAction;
    VerAdministrador: TAction;
    crearadministrador: TAction;
    editarAdministrador: TAction;
    botonera: TAction;
    navegad: TAction;
    editarpresupuesto2: TAction;
    actPagosSeguros: TAction;
    actEmpresa: TAction;
    insertarFactura: TAction;
    fdfacturas: TFDQuery;
    listafacturas: TAction;
    editarFactura: TAction;
    ConvertirEnFactura: TAction;
    rDBGridSorter_FireDac1: TrDBGridSorter_FireDac;
    actFacturascompras: TAction;
    rXLSExport1: TrXLSExport;
    fdqnominas: TFDQuery;
    fdtncfldfdqnominasid_nomina: TFDAutoIncField;
    fdqnominastrabajadores_id_trabajador: TIntegerField;
    fdqnominasfechanomina: TDateField;
    fltfldfdqnominasimportedevengado: TFloatField;
    fltfldfdqnominasirpf: TFloatField;
    fltfldfdqnominasssocialTrabajador: TFloatField;
    fltfldfdqnominasssocialEmpresa: TFloatField;
    fltfldfdqnominasBaseCotizacion: TFloatField;
    fltfldfdqnominasTotalPercibir: TFloatField;
    fdqnominasnombre: TStringField;
    actNominas: TAction;
    fdqsegurossociales: TFDQuery;
    actlistsegurossociales: TAction;
    fdqseguros: TFDQuery;
    actseguro: TAction;
    actnuevoseguro: TAction;
    actEditarSeguro: TAction;
    actEstadisticasVentaCompras: TAction;
    fdqpagosseguros: TFDQuery;
    fdqcuentas: TFDQuery;
    Fq1: TFDQuery;
    fdqnominasid_asiento: TIntegerField;
    FDdiario: TFDQuery;
    VerDatosCliente: TAction;
    insertar2: TAction;
    nueva2: TAction;
    actBancos: TAction;
    fdmovimientosbancarios: TFDQuery;
    fdmovimientosbancariosid_movimiento: TIntegerField;
    fdmovimientosbancariosdescripcion: TStringField;
    fdmovimientosbancariosbancos_id_banco: TIntegerField;
    fdmovimientosbancariosimportes: TFloatField;
    fdmovimientosbancariostipo: TStringField;
    fdmovimientosbancariosfecha: TDateField;
    fdmovimientosbancariosnombre: TStringField;
    movimientosbancos: TAction;
    fdmovimientosbancariosid_asiento: TIntegerField;
    fdmovimientosbancariosfechacontable: TDateField;
    fdqnominasfechacontable: TDateField;
    fdtrabajadores: TFDQuery;
    listtrabajadores: TAction;
    fdqsegurosid_seguros: TFDAutoIncField;
    fdqsegurosdescripcion: TStringField;
    fdqsegurostipo: TStringField;
    fdqsegurosfechacontrato: TDateTimeField;
    fdqsegurosfecharenovacion: TDateTimeField;
    fdqsegurostotal: TFloatField;
    fdqsegurosFormaPago: TStringField;
    fdqsegurosimg: TBlobField;
    fdqsegurosNpoliza: TStringField;
    fdqsegurosfraccionamiento: TStringField;
    fdqsegurosmatricula: TStringField;
    fdqsegurosobservaciones: TMemoField;
    fdqsegurospolizaPDF: TBlobField;
    fdqsegurosestado: TBooleanField;
    fdqpagossegurosimg: TBlobField;
    fdqpagossegurosNpoliza: TStringField;
    fdqpagossegurosfraccionamiento: TStringField;
    fdqpagossegurosmatricula: TStringField;
    fdqpagossegurosid_seguros: TFDAutoIncField;
    fdqpagossegurosdescripcion: TStringField;
    fdqpagossegurostipo: TStringField;
    fdqpagossegurosfecharenovacion: TDateTimeField;
    fdqpagossegurosimporte: TFloatField;
    fdqpagossegurosnrecibo: TStringField;
    fdqpagossegurosFechaPago: TDateField;
    fdobrasid_obra: TFDAutoIncField;
    fdobrasNombre: TStringField;
    fdobrasIdContactos: TIntegerField;
    fdobrasid_cliente: TIntegerField;
    fdobrasfechaComienzo: TDateTimeField;
    fdobrasdescripcion: TMemoField;
    fdobrasImporteObra: TFloatField;
    fdobrasFechaFin: TDateTimeField;
    fdobrasEjecutado: TBooleanField;
    fdcategoriascompras: TFDQuery;
    RzVersionInfo1: TRzVersionInfo;
    fdpresupuestosnombre: TStringField;
    fdpresupuestosIdContactos: TIntegerField;
    fdpresupuestosId_ClientePrev: TIntegerField;
    fdpresupuestosid_presupuesto: TIntegerField;
    fdpresupuestosdescripcion: TMemoField;
    fdpresupuestosAprovado: TBooleanField;
    fdpresupuestosFechaPresupuesto: TDateTimeField;
    fdpresupuestosgrupo: TIntegerField;
    fdpresupuestosTotal: TFloatField;
    fdpresupuestosTotalAprobado: TFloatField;
    fdpresupuestospath: TMemoField;
    fdproveedores: TFDQuery;
    actproveedores: TAction;
    fdproveedoresid_proveedor: TFDAutoIncField;
    fdproveedoresnombre: TStringField;
    fdproveedoresdireccion: TStringField;
    fdproveedorescp: TIntegerField;
    fdproveedorespoblacion: TStringField;
    fdproveedorescif: TStringField;
    fdproveedoresmail: TStringField;
    fdproveedorestelefono1: TIntegerField;
    fdproveedoresmovil: TIntegerField;
    fdqnominasembargo: TFloatField;
    actCalendario: TAction;
    fdfacturasidfactura: TIntegerField;
    fdfacturasNombre: TStringField;
    fdfacturasIdContactos: TIntegerField;
    fdfacturasidcliente: TIntegerField;
    fdfacturasano: TIntegerField;
    fdfacturasfechafactura: TDateTimeField;
    fdfacturasconcepto: TMemoField;
    fdfacturastotalbruto: TFloatField;
    fdfacturasiva: TSmallintField;
    fdfacturastotal: TFloatField;
    fdfacturaspagada: TBooleanField;
    fdfacturascif: TStringField;
    fdfacturasimporteIVA: TFloatField;
    fdfacturasretencion: TIntegerField;
    fdfacturasimporteRetencion: TFloatField;
    fdfacturasbaseimponible: TFloatField;
    fdfacturascantidad: TIntegerField;
    fdfacturasacuenta: TSingleField;
    fdasientos: TFDQuery;
    actasientos: TAction;
    fdasientosid_cuenta: TIntegerField;
    fdasientosfecha: TDateField;
    fdasientosconcepto: TStringField;
    fdasientosid_asiento: TIntegerField;
    fdasientosimporte: TSingleField;
    fdasientosdocumento: TStringField;
    fdfactcompras: TFDQuery;
    fdfactcomprasNFactura: TStringField;
    fdfactcomprasfecha: TDateTimeField;
    fdfactcomprasImporte: TFloatField;
    fdfactcomprasIVA: TFloatField;
    fdfactcomprasvencimiento: TDateTimeField;
    fdfactcomprasformapago: TStringField;
    fdfactcomprasproveedores_id_proveedor: TIntegerField;
    fdfactcomprastasaIVA: TIntegerField;
    fdfactcomprastotal: TFloatField;
    fdfactcomprasticket: TBooleanField;
    fdfactcomprasid_asiento: TIntegerField;
    fdfactcomprascategoria: TIntegerField;
    fdfactcomprasnombre: TStringField;
    fdfactcomprascategoriades: TStringField;
    fdfactcomprasfechacontable: TDateTimeField;
    fdfacturasid_asiento: TIntegerField;
    ImageList2: TImageList;
    fdPrevisionPresupuestos: TFDQuery;
    previsionejecucion: TAction;
    fdPrevisionPresupuestosnombre: TStringField;
    fdPrevisionPresupuestosid_presupuesto: TIntegerField;
    fdPrevisionPresupuestosgrupo: TIntegerField;
    fdPrevisionPresupuestosfechacomienzoEstimada: TDateField;
    fdPrevisionPresupuestosfechafinEstimada: TDateField;
    fdPrevisionPresupuestostrabajadores: TStringField;
    fdPrevisionPresupuestosid_prevision: TFDAutoIncField;
    fdPrevisionPresupuestostotal: TFloatField;
    fdPrevisionPresupuestosmesprevision: TDateField;
    FDlineaspresupuestos: TFDQuery;
    FDlineaspresupuestosnombre: TStringField;
    FDlineaspresupuestosid_presupuesto: TIntegerField;
    FDlineaspresupuestosdescripcion: TStringField;
    FDlineaspresupuestosFechaPresupuesto: TDateTimeField;
    FDlineaspresupuestosgrupo: TIntegerField;
    FDlineaspresupuestosTotal: TFloatField;
    FDlineaspresupuestosid_partida: TIntegerField;
    nuevo3: TAction;
    fdcategoriapresupuestos: TFDQuery;
    fdpresupuestosejecutado: TBooleanField;
    fdfacturasEmisorFactura: TIntegerField;
    fdfacturasobservaciones: TMemoField;
    fdfacturastipo: TIntegerField;
    fdfacturasobra: TIntegerField;
    fdfacturascertificacion: TIntegerField;
    fdfacturaslineacertificacion: TIntegerField;
    fdfacturasDireccion: TStringField;
    fdfacturasCiudad: TStringField;
    fdfacturasTelefonoCasa: TIntegerField;
    fdfacturasTelefonoMovil: TIntegerField;
    fdfacturasmail: TStringField;
    fdfacturasNumFax: TIntegerField;
    fdfacturasCodigoPostal: TStringField;
    fdfacturasidAdministrador: TIntegerField;
    fdfacturasCP: TBooleanField;
    fdfacturasIBAN: TStringField;
    fdfacturasbanco: TStringField;
    fdfacturasnombrefactura: TStringField;
    fdfacturasciffactura: TStringField;
    fdfacturasciudadfactura: TStringField;
    fdfacturasdireccionfactura: TStringField;
    fdfacturascodigopostalfactura: TStringField;
    fdfacturasfamilia: TIntegerField;
    IpresupuestosAprovadosFecha: TAction;
    IpresupuestosTipo: TAction;
    IPresupuestosAprovados: TAction;
    ICostesObras: TAction;
    IFacturasImpagadas: TAction;
    IObrasSinFactura: TAction;
    procedure crearclientesExecute(Sender: TObject);
    procedure listaclientesExecute(Sender: TObject);
    procedure insertarpresupuestoExecute(Sender: TObject);
    procedure editarpresupuestoExecute(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure listapresupuestosExecute(Sender: TObject);
    procedure editarclienteExecute(Sender: TObject);
    procedure borrarpresupuestosExecute(Sender: TObject);
    procedure timercambiosTimer(Sender: TObject);
    procedure editarobraExecute(Sender: TObject);
    procedure insertarobraExecute(Sender: TObject);
    procedure listaObrasExecute(Sender: TObject);
    procedure FDConnection1Error(ASender, AInitiator: TObject;
      var AException: Exception);
    procedure VerClienteExecute(Sender: TObject);
    procedure ConvertirEnObraExecute(Sender: TObject);
    procedure actConfiguracionExecute(Sender: TObject);
    procedure actconfigIVAExecute(Sender: TObject);
    procedure actconfServidorExecute(Sender: TObject);
    procedure actconfPATHExecute(Sender: TObject);
    procedure lstadmnistradoresExecute(Sender: TObject);
    procedure VerAdministradorExecute(Sender: TObject);
    procedure crearadministradorExecute(Sender: TObject);
    procedure editarAdministradorExecute(Sender: TObject);

    procedure editarpresupuesto2Execute(Sender: TObject);
    procedure FDConnection1Recover(ASender, AInitiator: TObject;
      AException: Exception; var AAction: TFDPhysConnectionRecoverAction);
    procedure actEmpresaExecute(Sender: TObject);
    procedure insertarFacturaExecute(Sender: TObject);
    procedure listafacturasExecute(Sender: TObject);
    procedure editarFacturaExecute(Sender: TObject);
    procedure ConvertirEnFacturaExecute(Sender: TObject);
    procedure actFacturascomprasExecute(Sender: TObject);
    procedure actNominasExecute(Sender: TObject);
    procedure actlistsegurossocialesExecute(Sender: TObject);
    procedure fdqfacturascomprasPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure fdqfacturascomprasformapagoValidate(Sender: TField);
    procedure actseguroExecute(Sender: TObject);
    procedure actnuevoseguroExecute(Sender: TObject);
    procedure actEditarSeguroExecute(Sender: TObject);
    procedure actEstadisticasVentaComprasExecute(Sender: TObject);
    procedure actPagosSegurosExecute(Sender: TObject);
    procedure fdqnominasBeforeDelete(DataSet: TDataSet);
    procedure VerDatosClienteExecute(Sender: TObject);
    procedure insertar2Execute(Sender: TObject);
    procedure nueva2Execute(Sender: TObject);
    procedure actBancosExecute(Sender: TObject);
    procedure movimientosbancosExecute(Sender: TObject);
    procedure listtrabajadoresExecute(Sender: TObject);
    procedure FDConnection1AfterConnect(Sender: TObject);
    procedure FDConnection1AfterDisconnect(Sender: TObject);
    procedure actproveedoresExecute(Sender: TObject);
    procedure actCalendarioExecute(Sender: TObject);
    procedure actasientosExecute(Sender: TObject);
    procedure fdfacturascomprasimporteChange(Sender: TField);
    procedure FDConnection1Lost(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure previsionejecucionExecute(Sender: TObject);
    procedure nuevo3Execute(Sender: TObject);
    procedure fdfacturasAfterRefresh(DataSet: TDataSet);
    procedure IpresupuestosAprovadosFechaExecute(Sender: TObject);
    procedure IPresupuestosAprovadosExecute(Sender: TObject);
    procedure IpresupuestosTipoExecute(Sender: TObject);
    procedure ICostesObrasExecute(Sender: TObject);
    procedure IFacturasImpagadasExecute(Sender: TObject);
    procedure IObrasSinFacturaExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

    ultcambio:TDateTime;
    function IVA(tipo:integer):real;
    function cambiarbarras(str:string):string;
    function ObtenerNPresupuesto(fd:TFDQuery):integer;
    function ObtenerPathPresupuesto(cliente:string;numero:integer;fecha:TDateTime):string;
    function ObtenerPathObra(cliente:string;numero:integer):string;
  //  function EstadoInsertEdit:boolean;
    procedure haycambios(var cambios:boolean;var ultfecha:TDateTime);
    procedure RefrescarDataSet(lquery:TStringlist);
    procedure RefrescarDataSetTodos;
     function BuscarSubItem(lv: TListView; const S: string; column: Integer): TListItem;
     function PaginaEnPageControl(Sender:TRzPageControl; titulo:string):boolean;
     function ObtenerNFactura(ano:integer):Integer;
    function ObtenerIDEMPRESA:Integer;
    function ObtenerTipoSeguro(index:integer):string;
    function ObtenerFormaPagoSeguro(index:integer):string;
    function ObtenerFracionamientoSeguro(index:integer):string;
    procedure ObtenerMesesTrimestre(mes:integer; var m1,m2:integer);
    function ObtenerTrimestre(mes:integer):Integer;
     function generarAsiento(nasiento,cnta:Integer;fech:TDate;concep:string;impt:real;docum:string;genasiento:boolean):integer;
     procedure modificarAsiento(asiento,cnta:Integer;fech:TDate;concep:string;impt:real;docum:string);
     procedure fdq1AfterExecute(DataSet: TFDDataSet);
     procedure ClientesfamiliaSetText(Sender: TField;
  const Text: string);
  procedure fdClientesfamiliaGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    function BorrarAsiento(asientos:Integer):boolean;
    procedure BorrarStringgrid(stgr:TStringGrid);
    function AbrirFicheroPresupuesto(fichero,extension:string):boolean;
    function CrearFicheroPresupuesto(fichero,archivo:string):boolean;
    function DevolverFechaElegida:TDate;
    function DevolverOleOffice(extension:string):Variant;
    end;



Tpresupuesto = class(TObject)
   NPresupuesto:Integer;
   grupo:Integer;
 end;
var

IDEMPRESA:Integer;
PATHUSER:string;
PATHPLANTILLAS:string;
PATHDOCPRESUPUESTOS:string;
PATHTHUNDERBIRD:string;
PATHDOCOBRAS:string;
PATHPROGRAM: string;
IVADEFECTO:double;
IRPFDEFECTO:Double;
PATHLIBSQL:string;

DataModule1:TDataModule1;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses  FPrincipal, listaclientes, presupuestos, Elegircalendario,  plantillaspresupuestos,
  listapresupuestos,listaproveedores,PrevisionPresupuestos, listastrabajadores, calendario, obras,bancos, movimientosbancos , listaobras,clientes,listaspagoseguros,EstadisticasGastos,listafacturascompras,listaseguros,listasegurossociales, SelectLineasPresupuestos, config, listaadministradores, administradores, inseradministradores, Empresa, listanominas, facturas, seguros, ClientesDatos, asientos,
  DmoduleReports;

{$R *.dfm}


function TDataModule1.DevolverOleOffice(extension:string):Variant;

begin
   if (LowerCase(extension) ='.doc') or (LowerCase(extension)='.docx') then   Result:=CreateOleObject('Word.Application')
       else Result:=CreateOleObject('Excel.Application');
end;


function TDataModule1.AbrirFicheroPresupuesto(fichero,extension:string):boolean;
var MSWord:Variant;
begin
   Result:=false;
   if FileExists(fichero) then
  begin
  try
       if (LowerCase(extension) ='.doc') or (LowerCase(extension)='.docx') then   MsWord:=CreateOleObject('Word.Application')
       else MSWord:=CreateOleObject('Excel.Application');
   except
         on Exception do  MessageDlg('No se puede abrir la aplicaci�n Microsoft Offiece.',
           mtError, [mbOK], 0);


    end;
       if (LowerCase(extension) ='.doc') or (LowerCase(extension)='.docx') then  MSWord.Documents.Open(fichero)
       else MSWord.Workbooks.Open(fichero);



     MsWord.Visible:=True;
     Result:=true;
  end

end;


function TDataModule1.CrearFicheroPresupuesto(fichero, archivo:string):boolean;
var MSWord:Variant;     f:TFile;  extension:string;
begin
      Result:=false;

            extension:=ExtractFileExt(fichero);
            f.Copy(archivo,fichero);
      if AbrirFicheroPresupuesto(fichero,extension) then

         Result:=true;
end;


procedure TDataModule1.BorrarStringgrid(stgr:TStringGrid);

begin
    stgr.Canvas.Brush.Style:=bsclear;
stgr.Canvas.Brush.Color:=clWhite;
stgr.Canvas.Rectangle(stgr.ClientRect);
    stgr.Repaint;
end;

procedure TDataModule1.fdClientesfamiliaGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin

if  Sender.AsInteger=0 then Text:='COMUNIDAD DE PROPIETARIOS';
if  Sender.AsInteger=1 then Text:='SOCIEDAD LIMITADA';
if  Sender.AsInteger=2 then Text:='COMUNIDAD DE BIENES';
if  Sender.AsInteger=3 then Text:='PROPIETARIO';


end;

procedure TDataModule1.ClientesfamiliaSetText(Sender: TField; const Text: string);
begin
if Text='COMUNIDAD DE PROPIETARIOS' then Sender.AsInteger:=0;
if Text='SOCIEDAD LIMITADA' then Sender.AsInteger:=1;
if Text='COMUNIDAD DE BIENES' then  Sender.AsInteger:=2;
if Text='PROPIETARIO' then Sender.AsInteger:=3;

end;


function TDataModule1.ObtenerTrimestre(mes:integer):Integer;
begin
case mes of
        1: Result:=1;
        2: Result:=1;
        3: Result:=1;
        4: Result:=2;
        5: Result:=2;
        6: Result:=2;
        7:  Result:=3;
        8:  Result:=3;
        9: Result:=3;
       10:Result:=4;
       11: Result:=4;
       12: Result:=4;
  end;

end;

function TDataModule1.generarAsiento(nasiento,cnta:Integer;fech:TDate;concep:string;impt:real;docum:string;genasiento:boolean):integer;
var nfactura,ano:integer;
begin
      Result :=-1;

   fq1.Close;
     fq1.SQL.Clear;
     fq1.SQL.Add('SELECT count(*) FROM plancontable where id_cuenta=:IDC');
     fq1.ParamByName('IDC').FDDataType:=dtint16;
     fq1.ParamByName('IDC').Value:=cnta;
     fq1.prepare;
     if fq1.prepared then fq1.open;

   if (cnta < 1000000) or (Length(docum)<3)  then
   begin
       MessageDlg('No se puede realizar el asiento. Compruebe que el documento tiene mas de 3 caracteres.',mtError,[mbOK],0);
       Exit;
   end;

 if  not  fq1.fields[0].asinteger > 0 then
   begin
       MessageDlg('El N� de cuenta '+cnta.ToString+' contable no existe. No se puede realizar el asiento.',mtError,[mbOK],0);
       Exit;
   end;


  if (not genasiento) and (nasiento=-1) then
  begin
     MessageDlg('No se puede realizar el asiento. Alguna serie de asientos no se ha podido realizar.',mtError,[mbOK],0);
       Exit;
  end;

     Result:=nasiento;



     if genasiento then
     begin
     fq1.SQL.Clear;
     fq1.SQL.Add('SELECT MAX(id_asiento) FROM diario');
     fq1.Open;
     Result:=fq1.fields[0].asinteger+1;
     end;


     fq1.close;
     fq1.SQL.clear;
     fq1.SQL.Add('INSERT INTO diario (id_cuenta,fecha,concepto,id_asiento,importe,documento) VALUES (:CNT,:FCH,:CONP,:ASI,:IMP,:DOC)');

     fq1.ParamByName('CNT').FDDataType:=dtInt16;
     fq1.ParamByName('FCH').FDDataType:=dtDate;
     fq1.ParamByName('CONP').FDDataType:=dtWideString;
      fq1.ParamByName('ASI').FDDataType:=dtInt16;
     fq1.ParamByName('IMP').FDDataType:=dtDouble;
     fq1.ParamByName('DOC').FDDataType:=dtWideString;

     fq1.ParamByName('CNT').Value:=cnta;
     fq1.ParamByName('FCH').AsDate:=fech;
     fq1.ParamByName('CONP').Value:=concep;
      fq1.ParamByName('ASI').value:=Result;
     fq1.ParamByName('IMP').Value:=impt;
     fq1.ParamByName('DOC').Value:=docum;

     fq1.Prepare;
     if fq1.prepared then fq1.ExecSQL;

     if cnta = 47700010 then
     begin
       nfactura:=StrToInt(Copy(docum,0,Length(docum)-4));
       ano:= strtoint((copy(docum,Length(docum)-3,4)));

       fq1.close;
       fq1.SQL.clear;
       fq1.SQL.Add('UPDATE facturas SET id_asiento=:ASI WHERE idFactura=:FACT and ano=:ANO');
       fq1.ParamByName('ASI').FDDataType:=dtWideString;
       fq1.ParamByName('ASI').FDDataType:=dtInt16;
       fq1.ParamByName('FACT').FDDataType:=dtWideString;
       fq1.ParamByName('FACT').FDDataType:=dtInt16;
       fq1.ParamByName('ANO').FDDataType:=dtWideString;
       fq1.ParamByName('ANO').FDDataType:=dtInt16;

       fq1.ParamByName('ASI').Value:=Result;
       fq1.ParamByName('FACT').Value:=nfactura;
       fq1.ParamByName('ANO').Value:=ano;


       fq1.Prepare;
     if fq1.prepared then fq1.ExecSQL;


     end;

     fq1.Close;


end;

procedure TDataModule1.modificarAsiento(asiento,cnta:Integer;fech:TDate;concep:string;impt:real;docum:string);
begin
//LA FECHA ES UN PARAMETRO DE ENTRADA, PERO NO SE UTILIZA. NO SE PUEDE MODIFICAR LA FECHA DE UN ASIENTO

     if (cnta < 1000000) or (impt < 1) or (Length(docum)<1) then
   begin
       MessageDlg('No se puede modificar el asiento. Compruebe los datos.',  mtError, [mbOK], 0);
      Exit;
   end;



     Fq1.SQL.Clear;
     fq1.SQL.Add('SELECT count(*) FROM plancontable where id_cuenta=:IDC');
     fq1.ParamByName('IDC').FDDataType:=dtint16;
     fq1.ParamByName('IDC').Value:=cnta;
     fq1.prepare;
     if fq1.prepared then fq1.open;

     if fq1.fields[0].asinteger > 0  then
     begin

     fq1.close;
     fq1.SQL.clear;
     fq1.SQL.Add('UPDATE diario SET  concepto=:CONP, importe=:IMP, documento=:DOC WHERE id_asiento=:ASIEN AND id_cuenta=:CNT ');

     fq1.ParamByName('CNT').FDDataType:=dtInt16;
    // fq1.ParamByName('FCH').FDDataType:=dtDate;
     fq1.ParamByName('CONP').FDDataType:=dtWideString;
     fq1.ParamByName('IMP').FDDataType:=dtDouble;
     fq1.ParamByName('DOC').FDDataType:=dtWideString;
     fq1.ParamByName('ASIEN').FDDataType:=dtInt16;

     fq1.ParamByName('CNT').Value:=cnta;
     //fq1.ParamByName('FCH').AsDate:=fech;
     fq1.ParamByName('CONP').Value:=concep;
     fq1.ParamByName('IMP').Value:=impt;
     fq1.ParamByName('DOC').Value:=docum;
     fq1.ParamByName('ASIEN').Value:=asiento;

     fq1.Prepare;
     if fq1.prepared then fq1.ExecSQL;


     end
     else messagedlg('El N� de cuenta contable no existe. No se puede modificar el asiento.', mtError,[mbOK],0);

     fq1.close;



end;

procedure TDataModule1.movimientosbancosExecute(Sender: TObject);
var movibancos:TFMovimientosBancarios;
begin



      if PaginaEnPageControl(principal.PageControl2,'Movimientos Bancarios') then
      begin
       if principal.pagecontrol2.ActivePage.Controls[0] is TFMovimientosBancarios then
                     movibancos:=principal.pagecontrol2.ActivePage.Controls[0] as TFMovimientosBancarios
         else Exit;
       end
      else begin
       movibancos:=TFMovimientosBancarios.Create(Sender as TComponent);
       movibancos.Show;
       movibancos.ManualDock(principal.PageControl2);

      end;

       if Sender is TFEstadisticasGastosVentas then
      begin
        movibancos.DateTimePicker1.Date:=TFEstadisticasGastosVentas(Sender).mes1;
        movibancos.DateTimePicker2.Date:=TFEstadisticasGastosVentas(Sender).mes2;
        movibancos.Button1Click(Self);
      end;

end;



procedure TDataModule1.nueva2Execute(Sender: TObject);
var TSelPresupuestos:TFLineasPresupuestoObra; obr:TFObras; fd1:TFDQuery;    i:Integer;
begin
 if Sender is TFLineasPresupuestoObra then TSelPresupuestos:=TFLineasPresupuestoObra(Sender)
       else begin
             showmessage(' Error en el tipo de formulario.');

             Exit;
            end;

    obr:=TFObras.Create(Self);
    with obr do
    begin
          if not FDObra.Active then
          begin
          FDCliente.ParamByName('id_cliente').AsInteger:=TSelPresupuestos.fdqlpresupuestos.FieldByName('id_ClientePrev').AsInteger;
          FDCliente.Active:=true;
          GroupBox2.Enabled:=True;
          PageControl1.Enabled:=True;

          end;


          FDObra.active:=True;
          FDObra.Insert;
          obr.Caption:='O. '+FDObra.FieldByName('id_obra').AsString+ ' - ' +fdCliente.FieldByName('nombre').Asstring;
          FDObra.post;

         if not FDlineasobra.Active then FDlineasobra.Active:=True;

        for i:=0 to TSelPresupuestos.rDBGridClientes1.rBookmarks.Count-1 do

        begin
            begin
                  TSelPresupuestos.fdqlpresupuestos.GotoBookmark(TSelPresupuestos.rDBGridClientes1.rBookmarks.Items[i]);

                  fdlineasobra.Insert;

                  fdlineasobra.Fieldbyname('descripcion').asstring:=TSelPresupuestos.fdqlpresupuestos.FieldByName('Descripcion').asstring;
                  fdlineasobra.Fieldbyname('total').asfloat:=TSelPresupuestos.fdqlpresupuestos.FieldByName('Total').asfloat;
                  fdlineasobra.Fieldbyname('presupuestos_id_presupuesto').AsFloat:=TSelPresupuestos.fdqlpresupuestos.FieldByName('id_presupuesto').asfloat;
                  fdlineasobra.Fieldbyname('presupuestos_grupo').AsFloat:=TSelPresupuestos.fdqlpresupuestos.FieldByName('grupo').asfloat;
                  fdlineasobra.Fieldbyname('presupuestos_id_partida').AsFloat:=TSelPresupuestos.fdqlpresupuestos.FieldByName('id_partida').asfloat;
                  fdlineasobra.Fieldbyname('diasejecucion').AsInteger:=TSelPresupuestos.fdqlpresupuestos.FieldByName('diasejecucion').AsInteger;




                  FDlineasobra.Post;


            end;
        end;
          fd1:=TFDQuery.Create(Self);
          fd1.Connection:=DataModule1.FDConnection1;
          fd1.SQL.Clear;
          fd1.SQL.Add('SELECT * FROM presupuestoscontactos where id_presupuesto=:presupuesto and grupo=:grupo' );
          fd1.ParamByName('presupuesto').AsInteger:=TSelPresupuestos.fdqlpresupuestos.FieldByName('id_presupuesto').AsInteger;
          fd1.ParamByName('grupo').AsInteger:= TSelPresupuestos.fdqlpresupuestos.FieldByName('grupo').asinteger;
          fd1.Active:=True;
          fd1.First;
          fdqrycontactoscliente.ParamByName('idcliente').asinteger:=TSelPresupuestos.fdqlpresupuestos.FieldByName('id_ClientePrev').AsInteger;
          fdqrycontactoscliente.Active:=True;
          fdqryContactosObra.Active:=True;
          while not fd1.eof do
          begin
                fdqryContactosObra.Insert;
             //   fdqryContactosObra.FieldByName('id_obra').AsInteger:=FDObra.FieldByName('id_obra').Asinteger;
                fdqryContactosObra.FieldByName('id_contacto').AsInteger:=fd1.FieldByName('id_contacto').asinteger;
                fdqryContactosObra.Post;
                fd1.Next;
          end;

            end;



obr.Show;
obr.ManualDock(principal.PageControl2);
end;

procedure TDataModule1.nuevo3Execute(Sender: TObject);   // inserta factura por certificaci�n de obra
var fact:TFFacturas; TSelObras:TFObras;
begin
  if Sender is TFObras then TSelObras:=TFObras(Sender)
       else begin
             showmessage(' Error en el tipo de formulario.');

             Exit;
            end;





    fact:=TFFacturas.Create(Self);
    with fact do
    begin
          if not fdfacturas.Active then
          begin
          fdcliente.ParamByName('id_cliente').AsInteger:=TSelObras.FDObra.FieldByName('id_Cliente').AsInteger;
          fdcliente.Active:=true;
          GroupBox2.Enabled:=True;
          grp1.Enabled:=True;

          end;


          fdfacturas.active:=True;
          fdfacturas.Insert;
            fdfacturas.FieldByName('retencion').AsInteger:=TSelObras.fdCertificacion.FieldByName('retencion').asinteger;
            fdfacturas.FieldByName('tipo').AsInteger:=1; // TIPO FACTURA CERTIFICACION
            fdfacturas.FieldByName('obra').AsInteger:= TSelObras.fdtncfldFDObraID_obra.AsInteger;
            fdfacturas.FieldByName('certificacion').AsInteger:=TSelObras.fdCertificacionescertificacion_id_certificacion.asinteger;
            fdfacturas.FieldByName('lineacertificacion').AsInteger:=TSelObras.fdCertificacionesid_lineacertificacion.asinteger;

          fact.Caption:='F. '+fdfacturas.FieldByName('idfactura').AsString+ ' - ' +fdfacturas.FieldByName('ano').AsString+' '+fdCliente.FieldByName('nombre').Asstring;
          fdfacturas.post;
          if not fdlineas.Active then  fdlineas.Active:=True;

                  fdlineas.Insert;

                  fdlineas.Fieldbyname('descripcion').asstring:=TSelObras.fdCertificacionesncertificacion.AsString+' CERTIFICACI�N '+TSelObras.fdobra.FieldByName('Descripcion').asstring;

                  fdlineas.Fieldbyname('facturas_Idfactura').asinteger:=fdfacturas.FieldByName('Idfactura').asinteger;
                  fdlineas.Fieldbyname('facturas_ano').asinteger:=fdfacturas.FieldByName('ano').asinteger;

                  fdlineas.Fieldbyname('importe').AsFloat:=TSelObras.fdlineasCertificaciones.FieldByName('importe').asfloat;
                  fdlineas.Fieldbyname('total').AsFloat:=TSelObras.fdlineasCertificaciones.FieldByName('importe').asfloat;




                  FDlineas.Post;



        end;

fact.Show;
fact.ManualDock(principal.PageControl2);
end;

procedure TDataModule1.fdfacturasAfterRefresh(DataSet: TDataSet);
begin
DataSet.First;
end;

procedure TDataModule1.fdfacturascomprasimporteChange(Sender: TField);
begin
 if fdfactcomprasticket.AsBoolean then
      begin
      fdfactcomprasIVA.AsFloat:=0;
      fdfactcomprastotal.AsFloat:=fdfactcomprasimporte.AsFloat;
      end else begin
           fdfactcomprasIVA.AsFloat:=fdfactcomprasimporte.asfloat*(fdfactcomprastasaIVA.AsInteger/100);
           fdfactcomprastotal.AsFloat:=fdfactcomprasimporte.AsFloat+fdfactcomprasimporte.asfloat*(fdfactcomprastasaIVA.AsInteger/100);

      end;
end;

procedure TDataModule1.fdq1AfterExecute(DataSet: TFDDataSet);
begin
   if TFDQuery(DataSet).RowsAffected = -1 then
    showmessage('No se ha modificado ning�n asiento')
  else
    case TFDQuery(DataSet).Command.CommandKind of
    skDelete: showmessage(Format('%d rows deleted', [TFDQuery(DataSet).RowsAffected]));
    skInsert: showmessage(Format('%d rows inserted', [TFDQuery(DataSet).RowsAffected]));
    skUpdate: showmessage(Format('%d rows updated', [TFDQuery(DataSet).RowsAffected]));
    else      showmessage(Format('%d rows affected', [TFDQuery(DataSet).RowsAffected]));
    end;



end;


function TDataModule1.BorrarAsiento(asientos:Integer):boolean;
var fdq:TFDQuery;
begin
  Result:=False;
  fdq:=TFDQuery.Create(Self);
  fdq.Connection:=DataModule1.FDConnection1;
  fdq.SQL.Clear;
  fdq.SQL.Add('DELETE from diario where id_asiento=:asiento');
  fdq.ParamByName('asiento').FDDataType:=dtInt16;
  fdq.ParamByName('asiento').AsInteger:=asientos;
  fdq.Prepare;
  fdq.ExecSQL;

  if fdq.Command.CommandKind = skDelete then Result:=True;

  fdq.Close;
  fdq.Free;

end;




procedure TDataModule1.ObtenerMesesTrimestre(mes:integer; var m1,m2:integer);
begin
    case mes of
        1 : begin m1:=1; m2:=3; end;
        2 : begin m1:=4; m2:=6; end;
        3 : begin m1:=7; m2:=9; end;
        4 : begin m1:=10; m2:=12; end;
        5 : begin m1:=1; m2:=12 end;
    end;
end;

function TDataModule1.ObtenerTipoSeguro(index:integer):string;
begin
    case index of
        1: Result:='AUTOMOVIL';
        2: Result:='RESPONSABILIDAD CIVIL';
        3: Result:='VIDA';
        4: Result:='CONVENIO';
        5: Result:='NEGOCIO';
    end;
end;

function TDataModule1.ObtenerFormaPagoSeguro(index:integer):string;
begin
     case index of
         1: Result:='DOMICILIADO';
     end;
end;

function TDataModule1.ObtenerFracionamientoSeguro(index:integer):string;
begin
     case index of
        1: Result:='MENSUAL';
        2: Result:='TRIMESTRAL';
        3: Result:='SEMESTRAL';
        4: Result:='ANUAL';
     end;
end;

function TDataModule1.ObtenerIDEMPRESA:Integer;
begin
  Result:=IDEMPRESA;
end;


function TDataModule1.BuscarSubItem(lv: TListView; const S: string; column: Integer): TListItem;
var
  i: Integer;
  found: Boolean; s1:string;
begin
  for i := 0 to lv.Items.Count - 1 do
  begin
    Result := lv.Items[i];
    s1:=LeftStr(Result.SubItems[column - 1],Length(S));
    found:=AnsicompareStr(S,s1)=0;

    if found then
      Exit;
  end;

  Result := nil;
end;

function TDataModule1.DevolverFechaElegida:TDate;
var EleCal:TFElegirCalendario;
begin

EleCal:=TFElegirCalendario.Create(Self);
EleCal.ShowModal;
Result:=EleCal.RzCalendar1.Date;
end;


function TDataModule1.ObtenerNFactura(ano:integer):Integer;
var fdNfactura:TFDQuery;
begin
   fdNfactura:=TFDQuery.Create(Self);
   fdNfactura.Connection:=DataModule1.FDConnection1;
   fdNfactura.SQL.Text:='Select MAX(idFactura) FROM facturas Where ano=:ano';
   fdNfactura.Params.ParamByName('ano').AsInteger:=ano;
   fdNfactura.Open;
   if fdNfactura.Fields[0].isnull then Result:=1
   else
   Result:=fdNfactura.Fields[0].AsInteger+1;
   fdNfactura.Close;
   fdNfactura.Free;
end;


procedure TDataModule1.actasientosExecute(Sender: TObject);
var asientos:TFAsientos;
begin
if PaginaEnPageControl(principal.PageControl2,'Asientos') then Exit;
      asientos:=TFAsientos.create(Sender as TComponent);
      asientos.show;
      asientos.ManualDock(principal.PageControl2);

end;

procedure TDataModule1.actBancosExecute(Sender: TObject);
var bancos:TFBancos;
begin
      bancos:=TFBancos.Create(Self);
      bancos.ShowModal;
     bancos.Close;
end;

procedure TDataModule1.actCalendarioExecute(Sender: TObject);
var   calendario:TFcalendario;
begin
if PaginaEnPageControl(principal.PageControl2,'Calendario') then Exit;
      calendario:=TFcalendario.create(Sender as TComponent);
      calendario.show;
      calendario.ManualDock(principal.PageControl2);
end;

procedure TDataModule1.actconfigIVAExecute(Sender: TObject);
var conf:Tconfiguracion;
begin
      conf:=Tconfiguracion.Create(Self);
      conf.pgc1.ActivePageIndex:=2;
     conf.ShowModal;
     conf.Close;
end;

procedure TDataModule1.actConfiguracionExecute(Sender: TObject);
var conf:Tconfiguracion;
begin
     conf:=Tconfiguracion.Create(Self);
     conf.ShowModal;
     conf.Close;

end;

procedure TDataModule1.actconfPATHExecute(Sender: TObject);
var conf:Tconfiguracion;
begin
      conf:=Tconfiguracion.Create(Self);
      conf.pgc1.ActivePageIndex:=1;
     conf.ShowModal;
     conf.Close;

end;

procedure TDataModule1.actconfServidorExecute(Sender: TObject);
var conf:Tconfiguracion;
begin
      conf:=Tconfiguracion.Create(Self);
      conf.pgc1.ActivePageIndex:=0;
     conf.ShowModal;
     conf.Close;

end;

procedure TDataModule1.actEditarSeguroExecute(Sender: TObject);
var segur:TFSeguros;
begin
segur:=TFSeguros.Create(TControl(Sender));
    with segur do
    begin
         if not fdqseguros.Active then
          begin
          if Sender is TFDQuery then
          begin
          fdqseguros.ParamByName('id_seguro').AsInteger:=(Sender as TFDQuery).FieldByName('id_seguros').AsInteger;
          fdqseguros.Active:=true;
          GroupBox2.Enabled:=True;
           PgC1.Enabled:=true;
          end;



          segur.Caption:='S. '+fdqseguros.FieldByName('descripcion').AsString;

            FDdiario.Active:=True;
           if fdqseguros.RecordCount > 0 then
         begin
           if not fdlineas.Active then
            begin
           fdlineas.ParamByName('id_seguro').AsInteger:=fdqseguros.FieldByName('id_seguros').AsInteger;
           fdlineas.Active:=True;
            end;
         end;

          end;
    end;

    segur.Show;
    segur.ManualDock(principal.PageControl2);
end;

procedure TDataModule1.actEmpresaExecute(Sender: TObject);
var empresa:TFEmpresa;
begin
      empresa:=TFEmpresa.Create(Sender as TComponent);
      empresa.ShowModal;

end;

procedure TDataModule1.actEstadisticasVentaComprasExecute(Sender: TObject);
var   EstadisticasVentaCompras:TFEstadisticasGastosVentas;
begin
if PaginaEnPageControl(principal.PageControl2,'Estad�sticas Ventas Compras') then Exit;
      EstadisticasventaCompras:=TFEstadisticasGastosVentas.create(Sender as TComponent);
      Estadisticasventacompras.show;

end;

procedure TDataModule1.actFacturascomprasExecute(Sender: TObject);
var listafacturascompras:TlistFacturascompras;
begin

      if PaginaEnPageControl(principal.PageControl2,'Facturas de compras') then
      begin
            if principal.pagecontrol2.ActivePage.Controls[0] is Tlistfacturascompras then
                     listafacturascompras:=principal.pagecontrol2.ActivePage.Controls[0] as Tlistfacturascompras
            else Exit;
      end
      else begin
      listafacturascompras:=Tlistfacturascompras.create(Sender as TComponent);
      listafacturascompras.show;
      listafacturascompras.ManualDock(principal.PageControl2);
      end;

      if Sender is TFEstadisticasGastosVentas then
      begin
        listafacturascompras.DateTimePicker1.Date:=TFEstadisticasGastosVentas(Sender).mes1;
        listafacturascompras.DateTimePicker2.Date:=TFEstadisticasGastosVentas(Sender).mes2;
        listafacturascompras.Button1Click(Self);
      end;
end;

procedure TDataModule1.actNominasExecute(Sender: TObject);
var listaNominas:Tlistnominas;
begin
      if PaginaEnPageControl(principal.PageControl2,'N�minas') then
      begin
       if principal.pagecontrol2.ActivePage.Controls[0] is Tlistnominas then
                     listaNominas:=principal.pagecontrol2.ActivePage.Controls[0] as Tlistnominas
         else Exit;
       end
      else begin
      listaNominas:=TlistNominas.create(Sender as TComponent);
      listaNominas.show;
      listaNominas.ManualDock(principal.PageControl2);
      end;

       if Sender is TFEstadisticasGastosVentas then
      begin
        listaNominas.DateTimePicker1.Date:=TFEstadisticasGastosVentas(Sender).mes1;
        listaNominas.DateTimePicker2.Date:=TFEstadisticasGastosVentas(Sender).mes2;
        listaNominas.Button1Click(Self);
      end;

end;

procedure TDataModule1.actnuevoseguroExecute(Sender: TObject);
var segur:TFSeguros;
begin
 segur:=TFSeguros.Create(TControl(Sender));
    with segur do
    begin
         if not fdqseguros.Active then
          begin
          fdqseguros.Active:=true;
          fdqseguros.Insert;
           GroupBox2.Enabled:=True;
           PgC1.Enabled:=true;

          end;

          FDdiario.Active:=True;
          segur.Caption:='S. '+fdqseguros.FieldByName('descripcion').AsString;

          if not fdlineas.Active then fdlineas.Active:=True;

          end;

    segur.Show;
    segur.ManualDock(principal.PageControl2);
end;

procedure TDataModule1.actPagosSegurosExecute(Sender: TObject);
var listapagosSeguros: Tlistpagosseguros;
begin

       if PaginaEnPageControl(principal.PageControl2,'Lista Pagos Seguros') then
      begin
          if principal.pagecontrol2.ActivePage.Controls[0] is Tlistpagosseguros then
                     listapagosSeguros:=principal.pagecontrol2.ActivePage.Controls[0] as Tlistpagosseguros
         else Exit;
      end
      else begin
      listapagosseguros:= Tlistpagosseguros.create(Sender as TComponent);
      listapagosseguros.show;
      listapagosseguros.ManualDock(principal.PageControl2);
      end;

       if Sender is TFEstadisticasGastosVentas then
      begin
        listapagosseguros.dtp1.Date:=TFEstadisticasGastosVentas(Sender).mes1;
        listapagosseguros.dtp2.Date:=TFEstadisticasGastosVentas(Sender).mes2;
        listapagosSeguros.Btn8Click(Self);
      end;

end;

procedure TDataModule1.actproveedoresExecute(Sender: TObject);
var listaproveedores: TFproveedores;
begin
      if PaginaEnPageControl(principal.PageControl2,'Lista proveedores') then Exit;
      listaproveedores:= TFproveedores.create(Sender as TComponent);
      listaproveedores.show;
      listaproveedores.ManualDock(principal.PageControl2);

end;

procedure TDataModule1.actseguroExecute(Sender: TObject);
  var listaSeguros: Tlistseguros;
begin
      if PaginaEnPageControl(principal.PageControl2,'Lista Seguros') then Exit;
      listaseguros:= Tlistseguros.create(Sender as TComponent);
      listaseguros.show;
      listaseguros.ManualDock(principal.PageControl2);
end;

procedure TDataModule1.listtrabajadoresExecute(Sender: TObject);
var listatrabajadores:Tlisttrabajadores;
begin
     if PaginaEnPageControl(principal.PageControl2,'Lista Trabajadores') then Exit;
      listatrabajadores:= Tlisttrabajadores.create(Sender as TComponent);
      listatrabajadores.show;
      listatrabajadores.ManualDock(principal.PageControl2);
end;

procedure TDataModule1.actlistsegurossocialesExecute(Sender: TObject);
var listaSegurosSociales: Tlistsegurossociales;
begin

      if PaginaEnPageControl(principal.PageControl2,'Seguros Sociales') then
      begin
        if principal.pagecontrol2.ActivePage.Controls[0] is Tlistsegurossociales then
                     listaSegurosSociales:=principal.pagecontrol2.ActivePage.Controls[0] as Tlistsegurossociales
         else Exit;
      end else
      begin
        listasegurossociales:= Tlistsegurossociales.create(Sender as TComponent);
        listasegurossociales.show;
        listasegurossociales.ManualDock(principal.PageControl2);
      end;

      if Sender is TFEstadisticasGastosVentas then
      begin
        listaSegurosSociales.DateTimePicker1.Date:=TFEstadisticasGastosVentas(Sender).mes1;
        listaSegurosSociales.DateTimePicker2.Date:=TFEstadisticasGastosVentas(Sender).mes2;
        listaSegurosSociales.Button1Click(Self);
      end;

end;

procedure TDataModule1.borrarpresupuestosExecute(Sender: TObject);
begin
{try

 except
      on E:Exception do ErrorDialog(E.Message,E.HelpContext) ;
 end;}
end;



function TDataModule1.cambiarbarras(str:string):string;
var i:integer;
begin
     for i := 0 to Length(str) do  if str[i]='\' then str[i]:='/';
     Result:=str;
end;

procedure TDataModule1.ConvertirEnFacturaExecute(Sender: TObject);
var SellineasObra:TFLineasObrasFacturas;
begin
if Sender is TFClientes then

     //if (Sender as TFClientes).fdpresupuestos.FieldByName('Aprovado').asboolean then
             begin

               SellineasObra:=TFLineasObrasFacturas.Create(Sender as TComponent);
               SellineasObra.ShowModal;
               SellineasObra.Close;

             end
end;

procedure TDataModule1.ConvertirEnObraExecute(Sender: TObject);
var SellineasPresu:TFLineasPresupuestoObra;
begin
  if Sender is TFClientes then

     if (Sender as TFClientes).fdpresupuestos.FieldByName('Aprovado').asboolean then
             begin

               SellineasPresu:=TFLineasPresupuestoObra.Create(Sender as TComponent);
               SellineasPresu.ShowModal;
               SellineasPresu.Close;

             end
   else showmessage('El presupuesto no esta aprobado, no se puede crear la obra.');
end;

procedure TDataModule1.IObrasSinFacturaExecute(Sender: TObject);
begin
DataModule2.frxObrasSinFacturar.ShowReport(true);
end;

procedure TDataModule1.IPresupuestosAprovadosExecute(Sender: TObject);
begin
DataModule2.frxPresupuestosAprobados.ShowReport(true);
end;

procedure TDataModule1.IpresupuestosAprovadosFechaExecute(Sender: TObject);
begin
DataModule2.frxPresupuestosPorFecha.ShowReport(true);
end;

procedure TDataModule1.IpresupuestosTipoExecute(Sender: TObject);
begin
 DataModule2.frxPresupuestoTipo.ShowReport(true);
end;

function TDataModule1.IVA(tipo:integer):real;
begin
  case tipo of
    0: Result:=1.1;
    1: Result:=1.21;
    2: Result:=1.21;
    3: Result:=1.1;
    4: Result:=1.21;
  end;
end;

procedure TDataModule1.crearclientesExecute(Sender: TObject);
var inserCliente:TFinsertarCliente;
begin
      inserCliente:=TFInsertarCliente.Create(Sender as TComponent);
      if not inserCliente.fdinsertarClientes.Active then  inserCliente.fdinsertarClientes.Active:=true;

        inserCliente.Caption:=Sender.ClassName;
       if (Sender is TTreeview) or (Sender is TToolButton) then
         if inserCliente.fdinsertarClientes.State in [dsbrowse] then inserCliente.fdinsertarClientes.Insert;

      inserCliente.ShowModal;

end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
    var  SPuchades:TiniFile;
  PathUsuario: string;
begin

SPuchades := TIniFile.Create(GetCurrentDir+'SPuchades.ini');
try

PathUsuario:=GetEnvironmentVariable('USERPROFILE')+'\Dropbox\SERVICIOS INTEGRALES PUCHADES' ;

PATHPROGRAM:=GetCurrentDir;

PATHUSER:=PathUsuario;
PATHPLANTILLAS:=SPuchades.ReadString('PATH','PATHPLANTILLAS','\Plantillas\Presupuestos.dot');
PATHDOCPRESUPUESTOS:=SPuchades.ReadString('PATH','PATHDOCPRESUPUESTOS',PathUsuario+'\PRESUPUESTOS'); ;
PATHDOCOBRAS:=SPuchades.ReadString('PATH','PATHDOCOBRAS',PathUsuario+'\OBRAS');
FDMySQLDriverLink.VendorLib:=PATHPROGRAM+'\libmysql.dll';
IVADEFECTO:=(SPuchades.ReadInteger('IVA','IvaDefecto',10)/100)+1;
IRPFDEFECTO:=(SPuchades.ReadInteger('IRPF','IRPFDefecto',20)/100);
IDEMPRESA:=SPuchades.ReadInteger('EMPRESA','IDEMPRESA',1);
PATHTHUNDERBIRD:=SPuchades.ReadString('PATH','PATHTHUNDERBIRD','C:\Program Files (x86)\Mozilla Thunderbird\thunderbird.exe');

Principal.RzFieldStatus2.Caption:=PathUsuario;
ultcambio:=Now;

//FDMySQLDriverLink.VendorLib:=PATHLIBSQL+'\libmysql.dll';
FDConnection1.Connected:=True;
timercambios.Enabled:=True;




finally
 SPuchades.free;
end;



end;

procedure TDataModule1.DataModuleDestroy(Sender: TObject);
begin
FDConnection1.Connected:=False;
end;

procedure TDataModule1.editarAdministradorExecute(Sender: TObject);
var inserAdministrador:TFInsetarAdministrador;
begin
      inserAdministrador:=TFInsetarAdministrador.Create(Sender as TComponent);
      inserAdministrador.fdinsertarAdministradores.ParamByName('idAdministrador').AsInteger:=(Sender as TFDQuery).FieldByName('idAdministrador').asinteger;
      if not inserAdministrador.fdinsertarAdministradores.Active then inserAdministrador.fdinsertarAdministradores.Active:=true;

     inserAdministrador.caption:='Editar Administrador';
     inserAdministrador.ShowModal;
end;

procedure TDataModule1.editarclienteExecute(Sender: TObject);
var inserCliente:TFInsertarCliente;
begin
      inserCliente:=TFInsertarCliente.Create(Sender as TComponent);
      inserCliente.fdinsertarClientes.ParamByName('id_cliente').AsInteger:=(Sender as TFDQuery).FieldByName('idContactos').asinteger;
      if not inserCliente.fdinsertarClientes.Active then  inserCliente.fdinsertarClientes.Active:=true;
      if not inserCliente.fdadministradores.Active then inserCliente.fdadministradores.Active:=true;

     if Sender is TFDQuery then
          if (TFDQuery(Sender).Owner.ClassName= 'TFPresupuestos') or (TFDQuery(Sender).Owner.ClassName= 'TFObras') then
          begin
          inserCliente.PageControl1.ActivePageIndex:=1;
          inserCliente.PageControl1Change(inserCliente.PageControl1);
          end;

     inserCliente.caption:='Editar Cliente';
     inserCliente.ShowModal;
end;

procedure TDataModule1.editarFacturaExecute(Sender: TObject);
var fact:TFFacturas;
begin
//if PaginaEnPageControl(principal.PageControl2,'F. '+ (Sender as TFDQuery).FieldByName('idFactura').Asstring+' / '+(Sender as TFDQuery).FieldByName('ano').Asstring +' '+(Sender as TFDQuery).FieldByName('nombre').Asstring) then Exit;

fact:=TFFacturas.Create(Self);
    with fact do
    begin
         estado:=dsEdit;
         fdcliente.ParamByName('id_cliente').AsInteger:=(Sender as TFDQuery).FieldByName('idCliente').AsInteger;
              fdcliente.Active:=true;

          fact.Caption:='F. '+ (Sender as TFDQuery).FieldByName('idFactura').Asstring+' / '+(Sender as TFDQuery).FieldByName('ano').Asstring +' '+(Sender as TFDQuery).FieldByName('nombre').Asstring;

         if fdcliente.RecordCount > 0 then
         begin
              GroupBox2.Enabled:=True;
              grp1.Enabled:=True;

               if not fdfacturas.active then
               begin
               fdfacturas.ParamByName('id_Factura').AsInteger:=(Sender as TFDQuery).FieldByName('idFactura').AsInteger;
               fdfacturas.ParamByName('ano').AsInteger:=(Sender as TFDQuery).FieldByName('ano').AsInteger;
               fdfacturas.Active:=true;
               //fdfacturas.Edit;
               end;


         if not fdlineas.Active then
         begin
         fdlineas.ParamByName('id_Factura').AsInteger:=(Sender as TFDQuery).FieldByName('idFactura').AsInteger;
          fdlineas.ParamByName('ano').AsInteger:=(Sender as TFDQuery).FieldByName('ano').AsInteger;
         fdlineas.open;
         end;

         if Length(rDBEdit6.Text) > 0  then
         begin
          rDBEdit6.Visible:=True;
          rDBEdit6.DBEditLabel.Visible:=True;
         end;

       Show;
            ManualDock(principal.PageControl2);

    end;
    end;
end;

procedure TDataModule1.editarobraExecute(Sender: TObject);
var obr:TFObras;  ruta:string;
begin

if PaginaEnPageControl(principal.PageControl2,'O. '+ (Sender as TFDQuery).FieldByName('id_obra').Asstring+' '+(Sender as TFDQuery).FieldByName('nombre').Asstring) then Exit;

obr:=TFObras.Create(Self);
    with obr do
    begin
         cargando:=true;
         fdcliente.ParamByName('id_cliente').AsInteger:=(Sender as TFDQuery).FieldByName('id_Cliente').AsInteger;
              fdcliente.Active:=true;

          obr.Caption:='O. '+ (Sender as TFDQuery).FieldByName('id_obra').Asstring+' '+(Sender as TFDQuery).FieldByName('nombre').Asstring;

         if fdcliente.RecordCount > 0 then
         begin
              GroupBox2.Enabled:=True;
              PageControl1.Enabled:=true;

               if not fdobra.active then
               begin

               fdobra.ParamByName('id_Obra').AsInteger:=(Sender as TFDQuery).FieldByName('id_Obra').AsInteger;
               fdobra.Active:=true;
              // fdobra.Edit;

               if fdobra.fieldbyname('ejecutado').AsBoolean then spEjecutado.Brush.Color:=clLime
               else spEjecutado.Brush.Color:=clRed;


                ruta:= PATHDOCOBRAS+'\'+fdcliente.FieldByName('nombre').asstring+'\'+fdobra.fieldbyname('id_obra').asstring;

                if DirectoryExists(ruta) then
                begin
                  spcarpetas.brush.color:=cllime;
                  shellDocumentacion1.Enabled:=True;
                  ShellFotos.Enabled:=True;

                  shellDocumentacion1.Folder.PathName:=ruta+'\Documentacion';
                  ShellFotos.Folder.PathName:=ruta+'\Fotos';
                end
                else  spcarpetas.brush.color:=clred;
             end;



         if not fdlineasobra.Active then
         begin


             fdlineasobra.AggregatesActive:=true;
             fdlineasobra.Active:=true;

         end;








            Show;
            ManualDock(principal.PageControl2);
         end;
      end;
    obr.cargando:=false;
end;

procedure TDataModule1.editarpresupuesto2Execute(Sender: TObject);        //EDITA EL PRESUPUESTO A PARTIR DE SU NUMERO Y GRUPO, SE PASA CON UN TPOINT;
     var pres:TFPresupuestos; fichero, ruta:string; NPresupuesto,grupo:integer;
begin

 if (Sender is Tpresupuesto) then
 begin
   NPresupuesto:=(Sender as Tpresupuesto).NPresupuesto;
   Grupo:=(Sender as Tpresupuesto).grupo;
 end else  begin
           MessageDlg('No se puede abrir el presupuesto.',  mtError, [mbOK],0);

            Exit;
           end;


pres:=TFPresupuestos.Create(Self);
    with pres do
    begin
         cargando:=true;




               if not fdpresupuesto.active then
               begin

               fdpresupuesto.ParamByName('id_Presupuesto').AsInteger:=NPresupuesto;
               fdpresupuesto.ParamByName('grupo').Asinteger:=Grupo;
               fdpresupuesto.Active:=true;

             fdcliente.ParamByName('id_cliente').AsInteger:=fdpresupuesto.FieldByName('id_ClientePrev').AsInteger;
              fdcliente.Active:=true;
        pres.Caption:='P. '+fdpresupuesto.FieldByName('id_Presupuesto').AsString+ ' '+fdcliente.FieldByName('nombre').Asstring;

              GroupBox2.Enabled:=True;
              PageControl1.Enabled:=true;
               pres.luces(fdpresupuesto.FieldByName('Aprovado').AsBoolean);


                ruta:= PATHDOCPRESUPUESTOS+'\'+fdpresupuesto.fieldbyname('id_presupuesto').asstring+fdpresupuesto.fieldbyname('grupo').asstring;

                if DirectoryExists(ruta) then
                begin
                  spcarpetas.brush.color:=cllime;
                  rzShellList1.enabled:=True;
                  rzShellList2.enabled:=True;
                  rzShellList1.folder.pathname:=ruta+'\Documentacion';
                  rzShellList2.folder.pathname:=ruta+'\Fotos';
                end
                else  spcarpetas.brush.color:=clred;
             end;

              fichero:=PATHUSER+fdpresupuesto.FieldByName('path').AsString;

              if FileExists(fichero) then spdocumento.Brush.color:=cllime
                 else spdocumento.Brush.color:=clred;

         if not fdlineas.Active then
         begin
            
             fdlineas.AggregatesActive:=true;
             fdlineas.Active:=true;

         end;
              fdtrabajadores.Active:=True;
             fdtrabajAsignados.Active:=True;

            Show;
            ManualDock(principal.PageControl2);
        end;

    pres.cargando:=false;

end;

procedure TDataModule1.editarpresupuestoExecute(Sender: TObject);  // EDITA EL PRESUPUESTO A PARTIR DE UN DATASET CON NOMBRE Y PRESUPUESTO.
var pres:TFPresupuestos; fichero, ruta:string;
begin

 if PaginaEnPageControl(principal.PageControl2,'P. '+(Sender as TFDQuery).FieldByName('id_Presupuesto').asstring+' '+(Sender as TFDQuery).FieldByName('nombre').Asstring) then Exit;


pres:=TFPresupuestos.Create(Self);
    with pres do
    begin
         cargando:=true;

         if Sender is TFDQuery then
          begin
         fdcliente.ParamByName('id_cliente').AsInteger:=(Sender as TFDQuery).FieldByName('id_ClientePrev').AsInteger;
              fdcliente.Active:=true;
        pres.Caption:='P. '+(Sender as TFDQuery).FieldByName('id_Presupuesto').AsString+ ' '+(Sender as TFDQuery).FieldByName('nombre').Asstring;
          end;

         if fdcliente.RecordCount > 0 then
         begin
              GroupBox2.Enabled:=True;
              PageControl1.Enabled:=true;

               if not fdpresupuesto.active then
               begin
              // fdpresupuesto.ParamByName('id_cliente').AsInteger:=fdcliente.FieldByName('idContactos').AsInteger;
               fdpresupuesto.ParamByName('id_Presupuesto').AsInteger:=(Sender as TFDQuery).FieldByName('id_Presupuesto').AsInteger;
               fdpresupuesto.ParamByName('grupo').Asinteger:=(Sender as TFDQuery).FieldByName('grupo').Asinteger;
               fdpresupuesto.Active:=true;
             //  fdpresupuesto.Edit;

               pres.luces(fdpresupuesto.FieldByName('Aprovado').AsBoolean);


                ruta:= PATHDOCPRESUPUESTOS+'\'+fdpresupuesto.fieldbyname('id_presupuesto').asstring+fdpresupuesto.fieldbyname('grupo').asstring;

                if DirectoryExists(ruta) then
                begin
                  spcarpetas.brush.color:=cllime;
                  rzShellList1.Enabled:=True;
                  rzShellList2.Enabled:=True;
                  rzShellList1.Folder.PathName:=ruta+'\Documentacion';
                  rzShellList2.folder.PathName:=ruta+'\Fotos';
                end
                else  spcarpetas.brush.color:=clred;
             end;

              fichero:=PATHUSER+fdpresupuesto.FieldByName('path').AsString;

              if FileExists(fichero) then spdocumento.Brush.color:=cllime
                 else spdocumento.Brush.color:=clred;


            if not FDlineas.Active then
         begin
           //  FDQuery1.ParamByName('id_presupuesto').AsInteger:=fdpresupuesto.FieldByName('id_presupuesto').AsInteger;
            // FDQuery1.ParamByName('grupopresupuesto').Asinteger:=YearOf(fdpresupuesto.FieldByName('FechaPresupuesto').AsDateTime);

            FDlineas.AggregatesActive:=true;
             FDlineas.Active:=true;

             fdtrabajadores.Active:=True;
             fdtrabajAsignados.Active:=True;

         end;


            Show;
            ManualDock(principal.PageControl2);
         end;
      end;
    pres.cargando:=false;
end;

 procedure TDataModule1.FDConnection1AfterConnect(Sender: TObject);
begin
principal.RzGroupBar1.Enabled:=True;
principal.RzFieldStatus1.Caption:='Conectado';
end;

procedure TDataModule1.FDConnection1AfterDisconnect(Sender: TObject);
begin
principal.RzGroupBar1.Enabled:=False;
principal.RzFieldStatus1.Caption:='Desconectado';
end;

procedure TDataModule1.FDConnection1Error(ASender, AInitiator: TObject;
  var AException: Exception);
begin


 if AException is EFDException then
    begin
    case  EFDException(AException).FDCode of
       er_FD_ClntDbLoginAborted: begin
                                    ShowMessage('Autentificaci�n cancelada.');

                                  end;
         else ShowMessage(AException.Message);
    end
    end
  else
 if AException is EFDDBEngineException then
   begin
   case EFDDBEngineException(AException).Kind of
          ekUserPwdInvalid:begin
                          timercambios.Enabled:=False;
                          ShowMessage('Acceso denegado. Nombre de usuario o contrase�a no validos.');
                          end;
          ekServerGone:begin
                          timercambios.Enabled:=False;
                          principal.RzFieldStatus1.Caption:='Desconectado';
                          ShowMessage('No se puede acceder al Servidor.');

                       end;

         else ShowMessage(AException.Message);
   end

   end else ShowMessage(AException.Message);



end;

procedure TDataModule1.FDConnection1Lost(Sender: TObject);
begin
timercambios.enabled:=False;
end;

procedure TDataModule1.FDConnection1Recover(ASender, AInitiator: TObject;
  AException: Exception; var AAction: TFDPhysConnectionRecoverAction);
begin
AAction:= faRetry;
timercambios.Enabled:=True;
end;

procedure TDataModule1.fdqfacturascomprasformapagoValidate(Sender: TField);
begin
  if Sender.Asstring='DOMICILIADO' then  Sender.DataSet.FieldByName('vencimiento').Required:=True
  else    Sender.DataSet.FieldByName('vencimiento').Required:=False;

end;

procedure TDataModule1.fdqfacturascomprasPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
     if Pos('Duplicate',E.message)<>0 then
       ShowMessage('Error. El N�mero de factura ya existe.');
     Action:=daAbort;

end;

procedure TDataModule1.fdqnominasBeforeDelete(DataSet: TDataSet);

begin

fq1.Connection:=DataModule1.FDConnection1;
fq1.SQL.Clear;
fq1.SQL.Add('DELETE FROM diario WHERE id_asiento=:id');
fq1.ParamByName('id').FDDataType:=dtInt16;
fq1.ParamByName('id').Value:=DataSet.FieldByName('id_asiento').AsInteger;

fq1.Prepare;
fq1.ExecSQL;
fq1.Close;

DataSet.Refresh;

end;

function TDataModule1.ObtenerPathObra(cliente:string;numero:integer):string;
 begin
     Result:='\OBRAS'+'\'+cliente+'\'+inttostr(numero);
 end;

function TDataModule1.ObtenerPathPresupuesto(cliente:string;numero:integer;fecha:TDateTime):string;
begin
     Result:='\PRESUPUESTOS '+IntToStr(YearOf(fecha))+'\'+inttostr(numero)+'. '+cliente+'.docx';

end;

procedure TDataModule1.haycambios(var cambios:boolean;var ultfecha:TDateTime);
var qry: TFDQuery;
begin
     qry:=TFDQuery.Create(Self);
     qry.Connection:=FDConnection1;
     qry.SQL.Clear;
     qry.SQL.Add('Select tabla,fechahora from cambios where fechahora > :ultcambio');
          qry.Params.ParamByName('ultcambio').DataType:=ftDateTime;
     qry.Params.ParamByName('ultcambio').asDateTime:=ultcambio;
     qry.Open;
     cambios:=(qry.RecordCount > 0);
     if cambios then
      ultfecha:= qry.Fields[1].AsDateTime;
     qry.Close;
     qry.destroy;

end;


procedure TDataModule1.ICostesObrasExecute(Sender: TObject);
begin
DataModule2.frxcostesobra.ShowReport(true);
end;

procedure TDataModule1.IFacturasImpagadasExecute(Sender: TObject);
begin
DataModule2.frxFacturasImpagadas.ShowReport(True);
end;

procedure TDataModule1.RefrescarDataSet(lquery:TStringlist);
var i: integer;  cambios:boolean;
begin
         haycambios(cambios,ultcambio);

         if cambios then
         begin
         i:=0;
          while (i < FDConnection1.DataSetCount) do
          begin
              if  lquery.indexOf(FDConnection1.DataSets[i].Name) > -1  then
              if not ((FDConnection1.DataSets[i].State in [dsInsert,dsEdit]) or (FDConnection1.DataSets[i].ChangeCount > 0)) then
              FDConnection1.DataSets[i].Refresh;
              i:=i+1;
          end;
         end;


end;

 procedure TDataModule1.RefrescarDataSetTodos;
 var  j: Integer;
begin

principal.Label1.Caption:='Actualizado: '+ TimeToStr(Time);
principal.ListBox1.Items.clear;

for j := 0 to DataModule1.FDConnection1.DataSetCount - 1 do
         begin

              if (DataModule1.FDConnection1.DataSets[j].State in [dsBrowse]) and (not DataModule1.FDConnection1.DataSets[j].CachedUpdates) then
               begin
                  principal.ListBox1.items.Add(DataModule1.FDConnection1.DataSets[j].Name);// +' - ' +DataModule1.FDConnection1.DataSets[i].State)
                     //  bookmk:=DataModule1.FDconnection1.datasets[j].GetBookmark;
                     DataModule1.FDConnection1.DataSets[j].Refresh;
                     //  DataModule1.FDConnection1.DataSets[j].GotoBookmark(bookmk);
               end;
         end;
end;




procedure TDataModule1.timercambiosTimer(Sender: TObject);
var  cambios:boolean;
begin
     haycambios(cambios,ultcambio);
     try
     if cambios then
     begin

          timercambios.enabled:=false;
          RefrescarDataSetTodos;

     end;
     finally
          timercambios.Enabled:=true;
     end;

end;

procedure TDataModule1.VerAdministradorExecute(Sender: TObject);
var adm:TFAdministradores; fdadm:TFDQuery;
begin

if not (Sender is TFDQuery) then Exit
     else fdadm:=(Sender as TFDQuery);

if PaginaEnPageControl(principal.PageControl2,'Administrador '+DataModule1.fdadministradores.FieldByName('nombreapellidos').Asstring) then Exit;

adm:=TFAdministradores.Create(Self);

   with adm do
   begin
      lv1.Clear;
      fdadministrador.ParamByName('idAdministrador').AsInteger:=fdadm.FieldByName('IdAdministrador').AsInteger;
      fdadministrador.Active:=true;

      adm.Caption:='Administrador ' + fdadministrador.FieldByName('nombreapellidos').AsString;

      fdClientes.ParamByName('idAdministrador').AsInteger:=fdadministrador.FieldByName('IdAdministrador').AsInteger;
      fdClientes.Active:=true;

      if fdClientes.RecordCount > 0 then LinkClientes.Active:=true
              else LinkClientes.AutoActivate:=true;

      Show;
      ManualDock(principal.PageControl2);

   end;


end;

procedure TDataModule1.VerClienteExecute(Sender: TObject);
var cli:TFClientes; fdCli:TFDQuery;
begin

if not (Sender is TFDQuery) then Exit
     else fdCli:=(Sender as TFDQuery);

if PaginaEnPageControl(principal.PageControl2,'Cliente '+fdCli.FieldByName('nombre').Asstring) then Exit;

 cli:=TFClientes.Create(Self);
    with cli do
    begin
      frame11.ListViewPresupuestos.Clear;
      frame21.ListViewFacturas.clear;
      Frame31.ListViewObras.clear;
      Frame41.ListViewContactos.clear;

      lstobras:=TStringList.Create;
      lstobras.Add('fdobras');
      lstobras.Add('fdlineasobras')  ;


      fdclientes.ParamByName('id_cliente').AsInteger:=fdCli.FieldByName('IdContactos').AsInteger;
      fdclientes.Active:=true;

      cli.Caption:='Cliente ' + fdclientes.FieldByName('nombre').AsString;


      fdAdministradores.Active:=true;

      fdpresupuestos.ParamByName('id_cliente').AsInteger:=fdclientes.FieldByName('IdContactos').AsInteger;
      fdpresupuestos.Active:=true;

      fdlineaspresupuesto.ParamByName('id_presupuesto').AsInteger:=fdpresupuestos.FieldByName('Id_presupuesto').AsInteger;
      fdlineaspresupuesto.ParamByName('grupo').AsInteger:=fdpresupuestos.FieldByName('grupo').AsInteger;

      fdlineaspresupuesto.active:=true;



      fdfacturas.ParamByName('id_cliente').AsInteger:=fdclientes.FieldByName('IdContactos').AsInteger;
      fdfacturas.Active:=true;

      fdlineasfacturas.ParamByName('id_factura').AsInteger:=fdfacturas.FieldByName('IdFactura').AsInteger;
      fdlineasfacturas.ParamByName('ano').AsInteger:=fdfacturas.FieldByName('ano').AsInteger;
      fdlineasfacturas.Active:=true;


      if fdfacturas.RecordCount > 0 then LinkListControlToField1.Active:=true
              else LinkListControlToField1.AutoActivate:=true;

      fdobras.ParamByName('id_cliente').AsInteger:=fdclientes.FieldByName('IdContactos').AsInteger;
      fdobras.Active:=true;

      fdlineasobras.ParamByName('ID_OBRA').AsInteger:= fdobras.FieldByName('id_obra').AsInteger;
      fdlineasobras.Active:=true;


      if fdobras.RecordCount > 0 then LinkListControlToField3.Active:=true
              else LinkListControlToField3.AutoActivate:=true;

       fdcontactos.ParamByName('id_cliente').AsInteger:=fdclientes.FieldByName('IdContactos').AsInteger;
      fdcontactos.Active:=true;

      if fdcontactos.RecordCount > 0 then LinkListControlToField4.Active:=true
              else LinkListControlToField4.AutoActivate:=true;

      Show;
      ManualDock(principal.PageControl2);
    end;
end;

procedure TDataModule1.VerDatosClienteExecute(Sender: TObject);
var cliDatos:TFclientesDatos; fdCli:TFDQuery;
begin

if not (Sender is TFDQuery) then Exit
     else fdCli:=(Sender as TFDQuery);

if PaginaEnPageControl(principal.PageControl2,'Cliente '+fdCli.FieldByName('nombre').Asstring) then Exit;

 cliDatos:=TFClientesDatos.Create(Self);
    with cliDatos do
    begin

      fdclientes.ParamByName('id_cliente').AsInteger:=fdCli.FieldByName('IdContactos').AsInteger;
      fdclientes.Active:=true;

      Caption:='Cliente ' + fdclientes.FieldByName('nombre').AsString;


      fdAdministradores.Active:=true;

      fdpresupuestos.ParamByName('id_cliente').AsInteger:=fdclientes.FieldByName('IdContactos').AsInteger;
      fdpresupuestos.Active:=true;

      fdlineaspresupuesto.ParamByName('id_presupuesto').AsInteger:=fdpresupuestos.FieldByName('Id_presupuesto').AsInteger;
      fdlineaspresupuesto.ParamByName('grupo').AsInteger:=fdpresupuestos.FieldByName('grupo').AsInteger;

      fdlineaspresupuesto.active:=true;

      fdpresupuestos.First;
      cliDatos.VSTP.RootNodeCount:=FDpresupuestos.RecordCount;


      fdfacturas.ParamByName('id_cliente').AsInteger:=fdclientes.FieldByName('IdContactos').AsInteger;
      fdfacturas.Active:=true;

      fdlineasfacturas.ParamByName('idfactura').AsInteger:=fdfacturas.FieldByName('IdFactura').AsInteger;
      fdlineasfacturas.ParamByName('ano').AsInteger:=fdfacturas.FieldByName('ano').AsInteger;
      fdlineasfacturas.Active:=true;


      fdfacturas.First;
      cliDatos.VSTF.RootNodeCount:=fdfacturas.RecordCount;

      fdobras.ParamByName('id_cliente').AsInteger:=fdclientes.FieldByName('IdContactos').AsInteger;
      fdobras.Active:=true;

      fdlineasobras.ParamByName('ID_OBRA').AsInteger:= fdobras.FieldByName('id_obra').AsInteger;
      fdlineasobras.Active:=true;

      fdObras.First;
    cliDatos.VSTO.RootNodeCount:=fdOBRAS.RecordCount;



       fdcontactos.ParamByName('id_cliente').AsInteger:=fdclientes.FieldByName('IdContactos').AsInteger;
      fdcontactos.Active:=true;

      Show;
      ManualDock(principal.PageControl2);
    end;

end;

function TDataModule1.ObtenerNPresupuesto(fd:TFDQuery):integer;
begin
     fd.Connection:=FDConnection1;
     fd.SQL.Clear;
     fd.SQL.Add('Select Max(id_presupuesto) from presupuestos where YEAR(FechaPresupuesto)=Year(Now())');
     fd.Active:=True;
     Result:=fd.Fields[0].AsInteger+1;
     fd.Active:=false;
     fd.Free;
end;


procedure TDataModule1.insertar2Execute(Sender: TObject);
var fact:TFFacturas; TSelObras:TFLineasObrasFacturas;    i:Integer;
begin

    if Sender is TFLineasObrasFacturas then TSelObras:=TFLineasObrasFacturas(Sender)
       else begin
             showmessage(' Error en el tipo de formulario.');

             Exit;
            end;



    fact:=TFFacturas.Create(Self);
    with fact do
    begin
          if not fdfacturas.Active then
          begin
          fdcliente.ParamByName('id_cliente').AsInteger:=TSelObras.fdqlobras.FieldByName('id_Cliente').AsInteger;
          fdcliente.Active:=true;
          GroupBox2.Enabled:=True;
          grp1.Enabled:=True;

          end;


          fdfacturas.active:=True;
          fdfacturas.Insert;
          fact.Caption:='F. '+fdfacturas.FieldByName('idfactura').AsString+ ' - ' +fdfacturas.FieldByName('ano').AsString+' '+fdCliente.FieldByName('nombre').Asstring;

         if not fdlineas.Active then fdlineas.Active:=True;

        for i:=0 to TSelobras.rDBGridClientes1.rBookmarks.Count-1 do
        begin
            begin
                  TSelObras.fdqlobras.GotoBookmark(TSelobras.rDBGridClientes1.rBookmarks.Items[i]);

                  fdlineas.Insert;

                  fdlineas.Fieldbyname('descripcion').asstring:=TSelObras.fdqlobras.FieldByName('Descripcion').asstring;
                  fdlineas.Fieldbyname('total').asfloat:=TSelObras.fdqlobras.FieldByName('Total').asfloat;


                  fdlineas.Fieldbyname('facturas_Idfactura').asinteger:=fdfacturas.FieldByName('Idfactura').asinteger;
                  fdlineas.Fieldbyname('facturas_ano').asinteger:=fdfacturas.FieldByName('ano').asinteger;

                  fdlineas.Fieldbyname('importe').AsFloat:=TSelObras.fdqlobras.FieldByName('total').asfloat;

                  fdlineas.Fieldbyname('lineasobras_id_lineaobra').AsFloat:=TSelObras.fdqlobras.FieldByName('id_lineaobra').asfloat;
                  fdlineas.Fieldbyname('lineasobras_obras_id_obra').AsFloat:=TSelObras.fdqlobras.FieldByName('obras_ID_obra').asfloat;


                  FDlineas.Post;


            end;
        end;







          end;



fact.Show;
fact.ManualDock(principal.PageControl2);
end;

procedure TDataModule1.insertarFacturaExecute(Sender: TObject);
var fact:TFFacturas;
begin
    fact:=TFFacturas.Create(TControl(Sender));
    with fact do
    begin
         if not fdfacturas.Active then
          begin
          if Sender is TFDQuery then
          begin
          fdcliente.ParamByName('id_cliente').AsInteger:=(Sender as TFDQuery).FieldByName('idContactos').AsInteger;
          fdcliente.Active:=true;
          GroupBox2.Enabled:=True;
           grp1.Enabled:=True;

          end;


          fdfacturas.active:=True;
          fdfacturas.Insert;
          fact.Caption:='F. '+fdfacturas.FieldByName('idfactura').AsString+ ' - ' +fdfacturas.FieldByName('ano').AsString+' '+fdCliente.FieldByName('nombre').Asstring;

          if not fdlineas.Active then fdlineas.Active:=True;

          end;
    end;

    fact.Show;
    fact.ManualDock(principal.PageControl2);
end;

procedure TDataModule1.insertarobraExecute(Sender: TObject);
var obr:TFobras;
begin
obr:=TFObras.Create(TControl(Sender));
    with obr do
    begin
         if not fdobra.Active then
              begin

                  if Sender is TFDQuery then
                  begin
                       fdcliente.ParamByName('id_cliente').AsInteger:=(Sender as TFDQuery).FieldByName('idContactos').AsInteger;;
                       fdcliente.Active:=true;
                        GroupBox2.Enabled:=True;
                        PageControl1.Enabled:=true;
                  end;

                   fdobra.Active:=true;
                   fdobra.Insert;
                   obr.Caption:='O. '+fdobra.FieldByName('id_obra').AsString+' '+fdCliente.FieldByName('nombre').Asstring;
                   FDObra.Post;

                   if not fdlineasobra.Active then   fdlineasobra.Active:=true;
                   fdlineasobra.AggregatesActive:=true;




               end;

            Show;
            ManualDock(principal.PageControl2);
      end;
end;

procedure TDataModule1.insertarpresupuestoExecute(Sender: TObject);
  var pres:TFPresupuestos;
begin
pres:=TFPresupuestos.Create(TControl(Sender));
    with pres do
    begin
         if not fdpresupuesto.Active then
              begin

                 if Sender is TFDQuery then
                 begin
                      fdcliente.ParamByName('id_cliente').AsInteger:=(Sender as TFDQuery).FieldByName('IdContactos').AsInteger;
                       fdcliente.Active:=true;
                 end;

                   fdpresupuesto.Active:=true;
                   fdpresupuesto.Insert;
                   fdpresupuesto.Post;
                   

                   if not fdlineas.Active then   fdlineas.Active:=true;
                   fdlineas.AggregatesActive:=true;

                    fdtrabajadores.Active:=True;
                  fdtrabajAsignados.Active:=True;


                   GroupBox2.Enabled:=True;
                   PageControl1.Enabled:=true;

              end;



      Show;
            ManualDock(principal.PageControl2);
      end;
end;

procedure TDataModule1.crearadministradorExecute(Sender: TObject);
    var inserAdministrador:TFInsetarAdministrador;
begin
      inserAdministrador:=TFInsetarAdministrador.Create(Sender as TComponent);
      if not inserAdministrador.fdinsertarAdministradores.Active then  inserAdministrador.fdinsertarAdministradores.Active:=true;


       if (Sender is TTreeview) or (Sender is TToolButton) then
         if inserAdministrador.fdinsertarAdministradores.State in [dsbrowse] then inserAdministrador.fdinsertarAdministradores.Insert;

      inserAdministrador.ShowModal;
end;

procedure TDataModule1.listaclientesExecute(Sender: TObject);
var listaclientes:TlistClientes;
begin


            if PaginaEnPageControl(principal.PageControl2,'Lista Clientes') then Exit;
            listaclientes:=TlistClientes.Create(Sender as Tcomponent);

             listaclientes.Show;
              listaclientes.ManualDock(principal.PageControl2);

        
end;



procedure TDataModule1.listafacturasExecute(Sender: TObject);
var listafacturas:Tlistfacturas;
begin
      if PaginaEnPageControl(principal.PageControl2,'Lista Facturas') then
      begin
         if principal.pagecontrol2.ActivePage.Controls[0] is Tlistfacturas then
                     listafacturas:=principal.pagecontrol2.ActivePage.Controls[0] as Tlistfacturas
         else Exit;

      end
      else begin
            listafacturas:=Tlistfacturas.Create(principal);
            listafacturas.Show;
            listafacturas.ManualDock(principal.PageControl2);
      end;

       if Sender is TFEstadisticasGastosVentas then
      begin
        listafacturas.DateTimePicker1.Date:=TFEstadisticasGastosVentas(Sender).mes1;
        listafacturas.DateTimePicker2.Date:=TFEstadisticasGastosVentas(Sender).mes2;
        listafacturas.Button1Click(Self);
      end;

end;

procedure TDataModule1.listaObrasExecute(Sender: TObject);
var listaObras:TlistObras;
begin
             if PaginaEnPageControl(principal.PageControl2,'Lista Obras') then Exit;
            listaObras:=TlistObras.Create(principal);

            listaObras.Show;
            listaObras.ManualDock(principal.PageControl2);
end;

procedure TDataModule1.listapresupuestosExecute(Sender: TObject);
var listapresupuestos:Tlistpresupuestos;
begin
            if PaginaEnPageControl(principal.PageControl2,'Lista Presupuestos') then Exit;

            listapresupuestos:=Tlistpresupuestos.Create(principal);


            listapresupuestos.Show;
            listapresupuestos.ManualDock(principal.PageControl2);

end;

procedure TDataModule1.lstadmnistradoresExecute(Sender: TObject);
var lisAdministradores:Tlistadministradores;
begin
     lisadministradores:=TListadministradores.Create(principal);

     lisadministradores.show;
     lisadministradores.ManualDock(Principal.PageControl2);
end;



function TDataModule1.PaginaEnPageControl(Sender:TRzPageControl; titulo:string):boolean;
var i:Integer;
begin
   i:=0;
   Result:=False;
   while (i <=((Sender as TRzPageControl).PageCount-1)) and (Result=False)  do
        begin
            if CompareStr((Sender as TRzPageControl).Pages[i].Caption, titulo)=0 then
             begin
               Result:=True;
               (Sender as TRzPageControl).ActivePage:=(Sender as TRzPageControl).Pages[i];
             end;
             i:=i+1;
        end;

end;

procedure TDataModule1.previsionejecucionExecute(Sender: TObject);
var listprevi:TFPrevisionEjecucion;
begin
     listprevi:=TFPrevisionEjecucion.Create(principal);

     listprevi.show;
     listprevi.ManualDock(Principal.PageControl2);

end;

end.

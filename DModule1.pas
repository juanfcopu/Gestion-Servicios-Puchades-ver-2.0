unit DModule1;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, Vcl.Dialogs,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB, FireDAC.Comp.DataSet,System.DateUtils ,
  FireDAC.Comp.Client, Vcl.ImgList, Vcl.Controls, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,Vcl.Graphics,Vcl.ComCtrls,
  Vcl.ExtCtrls,System.StrUtils, FireDAC.Phys.MySQLDef, System.ImageList, System.Types,
  FireDAC.VCLUI.Login, FireDAC.Moni.Base, FireDAC.Moni.RemoteClient, System.IniFiles, listafacturas, SelectLineasobras,RzTabs,
  rDBGrid, rDBGridSorter_FireDac,inserclientes, rXLSExport,System.variants;

type
    TDataModule1 = class(TDataModule)
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
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
    actSeguros: TAction;
    actEmpresa: TAction;
    insertarFactura: TAction;
    fdfacturas: TFDQuery;
    listafacturas: TAction;
    editarFactura: TAction;
    ConvertirEnFactura: TAction;
    rDBGridSorter_FireDac1: TrDBGridSorter_FireDac;
    fdqfacturascompras: TFDQuery;
    actFacturascompras: TAction;
    fdqfacturascomprasNfactura: TStringField;
    dtmfldfdqfacturascomprasfecha: TDateTimeField;
    fltfldfdqfacturascomprasimporte: TFloatField;
    fltfldfdqfacturascomprasIVA: TFloatField;
    dtmfldfdqfacturascomprasvencimiento: TDateTimeField;
    fltfldfdqfacturascomprastotal: TFloatField;
    fdqfacturascomprastasaIVA: TIntegerField;
    fdqfacturascomprasproveedores_id_proveedor: TIntegerField;
    fdqfacturascomprasnombre: TStringField;
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
    blnfldfdqfacturascomprasticket: TBooleanField;
    fdqsegurossociales: TFDQuery;
    actlistsegurossociales: TAction;
    fdqfacturascomprasformapago: TStringField;
    fdqseguros: TFDQuery;
    actseguro: TAction;
    actnuevoseguro: TAction;
    actEditarSeguro: TAction;
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
    procedure fltfldfdqfacturascomprasimporteChange(Sender: TField);
    procedure actNominasExecute(Sender: TObject);
    procedure actlistsegurossocialesExecute(Sender: TObject);
    procedure fdqfacturascomprasPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure fdqfacturascomprasformapagoValidate(Sender: TField);
    procedure actseguroExecute(Sender: TObject);
    procedure actnuevoseguroExecute(Sender: TObject);
    procedure actEditarSeguroExecute(Sender: TObject);
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
    procedure haycambios(var cambios:boolean;ultfecha:TDateTime);
    procedure RefrescarDataSet(lquery:TStringlist);
    procedure RefrescarDataSetTodos;
     function BuscarSubItem(lv: TListView; const S: string; column: Integer): TListItem;
     function PaginaEnPageControl(Sender:TRzPageControl; titulo:string):boolean;
     function ObtenerNFactura(ano:integer):Integer;
    function ObtenerIDEMPRESA:Integer;
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
PATHDOCOBRAS:string;
PATHPROGRAM: string;
IVADEFECTO:double;

DataModule1:TDataModule1;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses  FPrincipal, listaclientes, presupuestos,
  listapresupuestos, obras, listaobras,clientes,listafacturascompras,listaseguros,listasegurossociales, SelectLineasPresupuestos, config, listaadministradores, administradores, inseradministradores, Empresa, listanominas, facturas, seguros;

{$R *.dfm}


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



          segur.Caption:='S. '+fdfacturas.FieldByName('descripcion').AsString;

          if not fdlineas.Active then fdlineas.Active:=True;

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

procedure TDataModule1.actFacturascomprasExecute(Sender: TObject);
var listafacturascompras:TlistFacturascompras;
begin
      if PaginaEnPageControl(principal.PageControl2,'Facturas de compras') then Exit;
      listafacturascompras:=Tlistfacturascompras.create(Sender as TComponent);
      listafacturascompras.show;
      listafacturascompras.ManualDock(principal.PageControl2);
end;

procedure TDataModule1.actNominasExecute(Sender: TObject);
var listaNominas:Tlistnominas;
begin
      if PaginaEnPageControl(principal.PageControl2,'N�minas') then Exit;
      listaNominas:=TlistNominas.create(Sender as TComponent);
      listaNominas.show;
      listaNominas.ManualDock(principal.PageControl2);

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


          segur.Caption:='S. '+fdqseguros.FieldByName('descripcion').AsString;

          if not fdlineas.Active then fdlineas.Active:=True;

          end;

    segur.Show;
    segur.ManualDock(principal.PageControl2);
end;

procedure TDataModule1.actseguroExecute(Sender: TObject);
  var listaSeguros: Tlistseguros;
begin
      if PaginaEnPageControl(principal.PageControl2,'Lista Seguros') then Exit;
      listaseguros:= Tlistseguros.create(Sender as TComponent);
      listaseguros.show;
      listaseguros.ManualDock(principal.PageControl2);
end;

procedure TDataModule1.actlistsegurossocialesExecute(Sender: TObject);
var listaSegurosSociales: Tlistsegurossociales;
begin
      if PaginaEnPageControl(principal.PageControl2,'Seguros Sociales') then Exit;
      listasegurossociales:= Tlistsegurossociales.create(Sender as TComponent);
      listasegurossociales.show;
      listasegurossociales.ManualDock(principal.PageControl2);

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
FDPhysMySQLDriverLink1.VendorLib:=PATHPROGRAM+'\libmysql.dll';
IVADEFECTO:=(SPuchades.ReadInteger('IVA','IvaDefecto',10)/100)+1;
IDEMPRESA:=SPuchades.ReadInteger('EMPRESA','IDEMPRESA',1);
//timercambios.Enabled:=True;

finally
 SPuchades.free;
end;



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
              PageControl1.Enabled:=true;

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
               fdobra.ParamByName('id_cliente').AsInteger:=fdcliente.FieldByName('idContactos').AsInteger;
               fdobra.ParamByName('id_Obra').AsInteger:=(Sender as TFDQuery).FieldByName('id_Obra').AsInteger;
               fdobra.Active:=true;
               fdobra.Edit;

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
             fdlineasobra.ParamByName('ID_obra').AsInteger:=fdobra.FieldByName('id_Obra').AsInteger;

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
 end;

 //if PaginaEnPageControl(principal.PageControl2,'P. '+(Sender as TFDQuery).FieldByName('id_Presupuesto').asstring+' '+(Sender as TFDQuery).FieldByName('nombre').Asstring) then Exit;


pres:=TFPresupuestos.Create(Self);
    with pres do
    begin
         cargando:=true;




               if not fdpresupuesto.active then
               begin
              // fdpresupuesto.ParamByName('id_cliente').AsInteger:=nil;
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
                  ShellListView1.Visible:=True;
                  ShellListView2.Visible:=True;
                  ShellListView1.Root:=ruta+'\Documentacion';
                  ShellListView2.Root:=ruta+'\Fotos';
                end
                else  spcarpetas.brush.color:=clred;
             end;

              fichero:=PATHUSER+fdpresupuesto.FieldByName('path').AsString;

              if FileExists(fichero) then spdocumento.Brush.color:=cllime
                 else spdocumento.Brush.color:=clred;

         if not fdlineas.Active then
         begin
             fdlineas.ParamByName('id_presupuesto').AsInteger:=fdpresupuesto.FieldByName('id_presupuesto').AsInteger;
             fdlineas.ParamByName('grupopresupuesto').Asinteger:=YearOf(fdpresupuesto.FieldByName('FechaPresupuesto').AsDateTime);

             fdlineas.AggregatesActive:=true;
             fdlineas.Active:=true;

         end;


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
                  ShellListView1.Visible:=True;
                  ShellListView2.Visible:=True;
                  ShellListView1.Root:=ruta+'\Documentacion';
                  ShellListView2.Root:=ruta+'\Fotos';
                end
                else  spcarpetas.brush.color:=clred;
             end;

              fichero:=PATHUSER+fdpresupuesto.FieldByName('path').AsString;

              if FileExists(fichero) then spdocumento.Brush.color:=cllime
                 else spdocumento.Brush.color:=clred;

         if not fdlineas.Active then
         begin
             fdlineas.ParamByName('id_presupuesto').AsInteger:=fdpresupuesto.FieldByName('id_presupuesto').AsInteger;
             fdlineas.ParamByName('grupopresupuesto').Asinteger:=YearOf(fdpresupuesto.FieldByName('FechaPresupuesto').AsDateTime);

             fdlineas.AggregatesActive:=true;
             fdlineas.Active:=true;

         end;


            Show;
            ManualDock(principal.PageControl2);
         end;
      end;
    pres.cargando:=false;
end;

 procedure TDataModule1.FDConnection1Error(ASender, AInitiator: TObject;
  var AException: Exception);
begin
   //FDConnection1.Connected:=False;
end;

procedure TDataModule1.FDConnection1Recover(ASender, AInitiator: TObject;
  AException: Exception; var AAction: TFDPhysConnectionRecoverAction);
begin
AAction:= faRetry;
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

procedure TDataModule1.fltfldfdqfacturascomprasimporteChange(Sender: TField);
begin
      if blnfldfdqfacturascomprasticket.AsBoolean then
      begin
      fltfldfdqfacturascomprasIVA.AsFloat:=0;
      fltfldfdqfacturascomprastotal.AsFloat:=fltfldfdqfacturascomprasimporte.AsFloat;
      end else begin
           fltfldfdqfacturascomprasIVA.AsFloat:=fltfldfdqfacturascomprasimporte.asfloat*(fdqfacturascomprastasaIVA.AsInteger/100);
           fltfldfdqfacturascomprastotal.AsFloat:=fltfldfdqfacturascomprasimporte.AsFloat+fltfldfdqfacturascomprasimporte.asfloat*(fdqfacturascomprastasaIVA.AsInteger/100);

      end;

end;

function TDataModule1.ObtenerPathObra(cliente:string;numero:integer):string;
 begin
     Result:='\OBRAS'+'\'+cliente+'\'+inttostr(numero);
 end;

function TDataModule1.ObtenerPathPresupuesto(cliente:string;numero:integer;fecha:TDateTime):string;
begin
     Result:='\PRESUPUESTOS '+IntToStr(YearOf(fecha))+'\'+inttostr(numero)+'.'+cliente+'.doc';

end;

procedure TDataModule1.haycambios(var cambios:boolean;ultfecha:TDateTime);
var qry: TFDQuery;
begin
     ultfecha:=ultcambio;
     qry:=TFDQuery.Create(Self);
     qry.Connection:=FDConnection1;
     qry.SQL.Clear;
     qry.SQL.Add('Select tabla,fechahora from cambios where fechahora > :ultcambio');
     qry.Params.ParamByName('ultcambio').AsDateTime:=ultcambio;
     qry.Params.ParamByName('ultcambio').ParamType:=ptInput;
     qry.Params.ParamByName('ultcambio').DataType:=ftDateTime;
     qry.Params.ParamByName('ultcambio').asDateTime:=ultcambio;
     qry.Open;
     cambios:=(qry.RecordCount > 0);
     if cambios then  ultfecha:= qry.Fields[1].AsDateTime;
     qry.Close;
     qry.destroy;

end;


 {
function TDataModule1.EstadoInsertEdit:boolean;
var i:integer; enestado:boolean;
begin
     i:=0;
     enestado:=false;
     while (i < FDConnection1.DataSetCount) and (not enestado) do
     begin
          if (FDConnection1.DataSets[i].State in [dsInsert,dsEdit]) or (FDConnection1.DataSets[i].ChangeCount > 0) then
          enestado:=true;
          i:=i+1;
     end;
     Result:=enestado;

end;
  }

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
 var i:integer;
 begin
       i:=0;
          while (i < FDConnection1.DataSetCount) do
          begin
              if not ((FDConnection1.DataSets[i].State in [dsInsert,dsEdit]) or (FDConnection1.DataSets[i].ChangeCount > 0)) then
              FDConnection1.DataSets[i].Refresh;
              i:=i+1;
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

 //    if fdpresupuestos.RecordCount > 0 then LinkListControlToField2.Active:=true
   //           else LinkListControlToField2.AutoActivate:=true;


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
          fdcliente.ParamByName('id_cliente').AsInteger:=(Sender as TFDQuery).FieldByName('idCliente').AsInteger;
          fdcliente.Active:=true;
           GroupBox2.Enabled:=True;
           PageControl1.Enabled:=true;
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
                       fdcliente.ParamByName('id_cliente').AsInteger:=(Sender as TFDQuery).FieldByName('id_Cliente').AsInteger;;
                       fdcliente.Active:=true;
                        GroupBox2.Enabled:=True;
                        PageControl1.Enabled:=true;
                  end;

                   fdobra.Active:=true;
                   fdobra.Insert;
                   obr.Caption:='O. '+fdobra.FieldByName('id_obra').AsString+' '+fdCliente.FieldByName('nombre').Asstring;

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
                      fdcliente.ParamByName('id_cliente').AsInteger:=fdClientes.FieldByName('IdContactos').AsInteger;
                       fdcliente.Active:=true;
                 end;

                   fdpresupuesto.Active:=true;
                   fdpresupuesto.Insert;

                   

                   if not fdlineas.Active then   fdlineas.Active:=true;
                   fdlineas.AggregatesActive:=true;

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
      if PaginaEnPageControl(principal.PageControl2,'Lista Facturas') then Exit;
            listafacturas:=Tlistfacturas.Create(principal);


            listafacturas.Show;
            listafacturas.ManualDock(principal.PageControl2);
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

end.

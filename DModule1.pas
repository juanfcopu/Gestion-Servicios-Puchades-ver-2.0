unit DModule1;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB, FireDAC.Comp.DataSet,System.DateUtils ,
  FireDAC.Comp.Client, Vcl.ImgList, Vcl.Controls, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,Vcl.Graphics,Vcl.ComCtrls,
  Vcl.ExtCtrls,System.StrUtils;

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
  end;

var

PATHUSER:string;
PATHPLANTILLAS:string;
PATHDOCPRESUPUESTOS:string;
PATHDOCOBRAS:string;
IVADEFECTO:double;
DataModule1:TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses InsertarClientes, FPrincipal, listaclientes, presupuestos,
  listapresupuestos, inserclientes, obras, listaobras;

{$R *.dfm}



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

procedure TDataModule1.borrarpresupuestosExecute(Sender: TObject);
begin
{ try
    if  ((Sender as TFDQuery).active) and ((Sender as TFDQuery).RecordCount > 0)   then
                     (Sender as TFDQuery).Delete;
 except
      on E:Exception do ErrorDialog(E.Message,E.HelpContext) ;
 end;   }
end;

function TDataModule1.cambiarbarras(str:string):string;
var i:integer;
begin
     for i := 0 to Length(str) do  if str[i]='\' then str[i]:='/';
     Result:=str;
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


       if (Sender is TTreeview) then
         if inserCliente.fdinsertarClientes.State in [dsbrowse] then inserCliente.fdinsertarClientes.Insert;

      inserCliente.ShowModal;

end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
PATHUSER:=GetEnvironmentVariable('USERPROFILE');
PATHUSER:=PATHUSER+'\Dropbox\SERVICIOS INTEGRALES PUCHADES';
PATHPLANTILLAS:='\Plantillas\Presupuestos.dot';
PATHDOCPRESUPUESTOS:=PATHUSER+'\PRESUPUESTOS' ;
PATHDOCOBRAS:=PATHUSER+'\OBRAS';
IVADEFECTO:=1.1;
end;

procedure TDataModule1.editarclienteExecute(Sender: TObject);
var inserCliente:TFInsertarCliente;
begin
      inserCliente:=TFInsertarCliente.Create(Sender as TComponent);
      inserCliente.fdinsertarClientes.ParamByName('id_cliente').AsInteger:=(Sender as TFDQuery).FieldByName('idContactos').asinteger;
      if not inserCliente.fdinsertarClientes.Active then  inserCliente.fdinsertarClientes.Active:=true;
      if not inserCliente.fdadministradores.Active then inserCliente.fdadministradores.Active:=true;

     inserCliente.caption:='Editar Cliente';
     inserCliente.ShowModal;
end;

procedure TDataModule1.editarobraExecute(Sender: TObject);
var obr:TFObras;  ruta:string;
begin

obr:=TFObras.Create(Self);
    with obr do
    begin
         cargando:=true;
         fdcliente.ParamByName('id_cliente').AsInteger:=(Sender as TFDQuery).FieldByName('id_Cliente').AsInteger;
              fdcliente.Active:=true;

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

               //obr.luces(fdpresupuesto.FieldByName('Aprovado').AsBoolean);


                ruta:= PATHDOCOBRAS+'\'+fdcliente.FieldByName('nombre').asstring+'\'+fdobra.fieldbyname('id_obra').asstring;

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



         if not fdlineasobra.Active then
         begin
             fdlineasobra.ParamByName('ID_obra').AsInteger:=fdobra.FieldByName('id_Obra').AsInteger;

             //fdlineasobra.AggregatesActive:=true;
             fdlineasobra.Active:=true;

         end;


            Show;
            ManualDock(principal.PageControl2);
         end;
      end;
    obr.cargando:=false;
end;

procedure TDataModule1.editarpresupuestoExecute(Sender: TObject);
var pres:TFPresupuestos; fichero, ruta:string;
begin

pres:=TFPresupuestos.Create(Self);
    with pres do
    begin
         cargando:=true;
         fdcliente.ParamByName('id_cliente').AsInteger:=(Sender as TFDQuery).FieldByName('id_ClientePrev').AsInteger;
              fdcliente.Active:=true;

         if fdcliente.RecordCount > 0 then
         begin
              GroupBox2.Enabled:=True;
              PageControl1.Enabled:=true;

               if not fdpresupuesto.active then
               begin
               fdpresupuesto.ParamByName('id_cliente').AsInteger:=fdcliente.FieldByName('idContactos').AsInteger;
               fdpresupuesto.ParamByName('id_Presupuesto').AsInteger:=(Sender as TFDQuery).FieldByName('id_Presupuesto').AsInteger;
               fdpresupuesto.ParamByName('grupo').Asinteger:=(Sender as TFDQuery).FieldByName('grupo').Asinteger;
               fdpresupuesto.Active:=true;
               fdpresupuesto.Edit;

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


procedure TDataModule1.insertarobraExecute(Sender: TObject);
var obr:TFobras;
begin
obr:=TFObras.Create(TControl(Sender));
    with obr do
    begin
         if not fdobra.Active then
              begin

                  if Sender.ClassName='TFDQuery' then
                  begin
                       fdcliente.ParamByName('id_cliente').AsInteger:=fdClientes.FieldByName('IdContactos').AsInteger;
                       fdcliente.Active:=true;
                  end;

                   fdobra.Active:=true;
                   fdobra.Insert;
                   fdobra.FieldByName('FechaComienzo').AsDateTime:=date;
                   fdobra.FieldByName('partidas').asinteger:=0;
                   fdobra.FieldByName('ImporteObra').AsFloat:=0;
                   fdobra.FieldByName('Ejecutado').Asboolean:=false;

                   if not fdlineasobra.Active then   fdlineasobra.Active:=true;
                   fdlineasobra.AggregatesActive:=true;

                   GroupBox2.Enabled:=True;
                   PageControl1.Enabled:=true;

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

                 if Sender.ClassName='TFDQuery' then
                 begin
                      fdcliente.ParamByName('id_cliente').AsInteger:=fdClientes.FieldByName('IdContactos').AsInteger;
                       fdcliente.Active:=true;
                 end;

                   fdpresupuesto.Active:=true;
                   fdpresupuesto.Insert;
                  
                   fdpresupuesto.FieldByName('id_presupuesto').AsInteger:=-1;
                   fdpresupuesto.FieldByName('grupo').asinteger:=yearof(date);
                   
                   fdpresupuesto.FieldByName('fechapresupuesto').AsDateTime:=date;
                   fdpresupuesto.FieldByName('partidas').asinteger:=0;
                   fdpresupuesto.FieldByName('Total').AsFloat:=0;
                   fdpresupuesto.FieldByName('TotalAprobado').AsFloat:=0;

                   if not fdlineas.Active then   fdlineas.Active:=true;
                   fdlineas.AggregatesActive:=true;

                   GroupBox2.Enabled:=True;
                   PageControl1.Enabled:=true;

              end;



      Show;
            ManualDock(principal.PageControl2);
      end;
end;

procedure TDataModule1.listaclientesExecute(Sender: TObject);
var listaclientes:TlistClientes;
begin

            listaclientes:=TlistClientes.Create(principal);
            listaclientes.Width:=principal.Panel1.Width-10;
            listaclientes.Show;
            listaclientes.ManualDock(principal.PageControl2);
end;



procedure TDataModule1.listaObrasExecute(Sender: TObject);
var listaObras:TlistObras;
begin

            listaObras:=TlistObras.Create(principal);
            listaObras.Width:=principal.Panel1.Width-10;
            listaObras.Show;
            listaObras.ManualDock(principal.PageControl2);
end;

procedure TDataModule1.listapresupuestosExecute(Sender: TObject);
var listapresupuestos:Tlistpresupuestos;
begin

            listapresupuestos:=Tlistpresupuestos.Create(principal);
            listapresupuestos.Width:=principal.Panel1.Width-10;
            listapresupuestos.Show;
            listapresupuestos.ManualDock(principal.PageControl2);

end;

end.

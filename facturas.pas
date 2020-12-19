unit facturas;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.Grids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.Bind.Grid,
  Data.Bind.Grid, Vcl.ToolWin,shellapi, System.Actions,System.DateUtils,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,System.Win.COMObj,
  Vcl.DBGrids, Vcl.Bind.Navigator, Data.Bind.Controls, Vcl.StdActns, Vcl.ImgList,
  System.ImageList, ShellCtrls, RzPanel, RzDBNav, RzDBGrid, rDBGrid, rDBGrid_MS,
  Vcl.Mask, Vcl.DBCtrls, rDBComponents, rStringGridEd, rDBStringGridEd;


type
  TStado=(mInsertar,mEditar);

  TFFacturas = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox2: TGroupBox;
    fdCliente: TFDQuery;
    fdfacturas: TFDQuery;
    fdlineas: TFDQuery;
    dialruta: TOpenDialog;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    BTBuscarCliente: TButton;
    ImageList1: TImageList;
    ActionManager2: TActionManager;
    EditCopy: TEditCopy;
    EditCut: TEditCut;
    EditPaste: TEditPaste;
    AprobarTodos: TAction;
    GroupBox3: TGroupBox;
    GroupBox5: TGroupBox;
    Shape1: TShape;
    Guardar: TButton;
    Aceptar: TButton;
    cerrar: TButton;
    fdClienteidcontactos: TFDAutoIncField;
    fdClientenombre: TStringField;
    fdClientecif: TStringField;
    fdClientefamilia: TIntegerField;
    fdfacturasidFactura: TIntegerField;
    fdfacturasidCliente: TIntegerField;
    fdfacturasFechaFactura: TDateTimeField;
    fdfacturasConcepto: TMemoField;
    fdfacturasTotalBruto: TFloatField;
    fdfacturasIva: TSmallintField;
    fdfacturasTotal: TFloatField;
    fdfacturasEmisorFactura: TIntegerField;
    fdfacturaspagada: TBooleanField;
    fdfacturasano: TIntegerField;
    dsFacturas: TDataSource;
    dsCliente: TDataSource;
    fdlineasid_lineafactura: TFDAutoIncField;
    fdlineasdescripcion: TStringField;
    fdlineastotal: TFloatField;
    fdlineasfacturas_ano: TIntegerField;
    fdlineasfacturas_idfactura: TIntegerField;
    fdlineascantidad: TFloatField;
    fdlineasimporte: TFloatField;
    fdlineasiva: TFloatField;
    FDSchemaAdapter1: TFDSchemaAdapter;
    dslineas: TDataSource;
    fdlineasdescuento: TIntegerField;
    mfldfdfacturasobservaciones: TMemoField;
    rDBEdit1: TrDBEdit;
    rDBEdit2: TrDBEdit;
    rDBEdit3: TrDBEdit;
    rDBEdit4: TrDBEdit;
    rDBEdit5: TrDBEdit;
    rDBEdit7: TrDBEdit;
    rDBDateTimePicker1: TrDBDateTimePicker;
    rDBEdit8: TrDBEdit;
    rDBEdit9: TrDBEdit;
    rDBMemoEx1: TrDBMemoEx;
    fdfacturascantidad: TIntegerField;
    fltfldIVA: TFloatField;
    rDBEdit10: TrDBEdit;
    grp1: TGroupBox;
    ctrlbr1: TControlBar;
    tlb1: TToolBar;
    btn1: TToolButton;
    btn2: TToolButton;
    btn3: TToolButton;
    rzdbnvgtr1: TRzDBNavigator;
    rDBGridClientes1: TrDBGrid_MS;
    fdfacturasretencion: TIntegerField;
    fltfldfdfacturasimporteRetencion: TFloatField;
    rdbtotales1: TrDBGrid;
    fltfldfacturasbaseimponible: TFloatField;
    fdfacturasid_asiento: TIntegerField;
    rDBEdit11: TrDBEdit;
    fdlineasnlinea: TIntegerField;
    fdlineaslineasobras_id_lineaobra: TIntegerField;
    fdlineaslineasobras_obras_ID_obra: TIntegerField;
    guardarfactura: TAction;
    rDBMemo1: TrDBMemo;
    ToolBar2: TToolBar;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    fdfacturasacuenta: TSingleField;
    fdfacturastipo: TIntegerField;
    fdfacturasobra: TIntegerField;
    fdfacturascertificacion: TIntegerField;
    fdfacturaslineacertificacion: TIntegerField;
    rDBEdit6: TrDBEdit;
    Button1: TButton;
    tlb2: TToolBar;
    btn4: TToolButton;
    abrirObra: TAction;
    procedure GuardarClick(Sender: TObject);

    procedure cerrarClick(Sender: TObject);
  
   
    procedure cerrarpresExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTBuscarClienteClick(Sender: TObject);
    procedure fdfacturasAfterInsert(DataSet: TDataSet);
    procedure fdlineasAfterOpen(DataSet: TDataSet);
    procedure fdlineasimporteChange(Sender: TField);
    procedure fdlineascantidadChange(Sender: TField);
    procedure fdfacturasTotalBrutoChange(Sender: TField);
    procedure fdlineasAfterInsert(DataSet: TDataSet);
    procedure fdlineasAfterPost(DataSet: TDataSet);
    procedure FDSchemaAdapter1BeforeApplyUpdate(Sender: TObject);
    procedure FDSchemaAdapter1AfterApplyUpdate(Sender: TObject);
    procedure AceptarClick(Sender: TObject);
    procedure fdlineasAfterEdit(DataSet: TDataSet);
    procedure fdlineasAfterDelete(DataSet: TDataSet);
    procedure fdfacturasAfterEdit(DataSet: TDataSet);
    procedure fdfacturasAfterDelete(DataSet: TDataSet);
    procedure fdlineasBeforeInsert(DataSet: TDataSet);
    procedure fdlineasdescuentoChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure AsignarAlaObraFactura(nfactura,ano,obra,partida,linea,tipofactura:integer);
    procedure guardarfacturaExecute(Sender: TObject);
    procedure guardarfacturaUpdate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure PrepararImprimir;
    procedure abrirObraExecute(Sender: TObject);
    procedure abrirObraUpdate(Sender: TObject);
    procedure ActualizarPreciosObra(importe:double;obra,partida,tipofactura:integer);

    
  private
    { Private declarations }


  public
    { Public declarations }
    RowAct:integer;
    cargando:boolean;
    estado:TDataSetState;
   
    procedure luces(aprobado:boolean);


  end;



var
  FFacturas: TFFacturas; ActualizarImportesLineas:boolean;

implementation

{$R *.dfm}

uses DModule1, listaclientes, SelectLineasPresupuestos,objetos, DmoduleReports;






 procedure TFFacturas.luces(aprobado:boolean);
 begin

 end;


procedure TFFacturas.ToolButton2Click(Sender: TObject);
begin
PrepararImprimir;
DataModule2.frxFacturas.ShowReport(true);

DataModule2.frxFacturas.Export(DataModule2.frxPDFExport1);



end;

procedure TFFacturas.PrepararImprimir;
var fact,an:Integer;
begin
fact:=fdfacturas.FieldByName('idfactura').asinteger;
an:=fdfacturas.FieldByName('ano').AsInteger;

DataModule2.FDfacturas.Filtered:=false;
DataModule2.FDfacturas.Filter:='idfactura={e '+fact.ToString+'} and ano={e '+an.ToString+'}';


DataModule2.FDfacturas.Filtered:=true;



end;


procedure TFFacturas.ToolButton6Click(Sender: TObject);

begin
PrepararImprimir;



DataModule2.frxFacturas.ShowReport(true);
end;

procedure TFFacturas.abrirObraExecute(Sender: TObject);
var fd:TFDQuery;
begin
if not fdlineaslineasobras_obras_ID_obra.IsNull then
begin
  fd:=TFDQuery.Create(Self);
  fd.Connection:=DataModule1.FDConnection1;
  fd.SQL.Clear;
  fd.SQL.Text:='SELECT * FROM obras O, clientes C WHERE O.id_cliente=C.idContactos and id_obra=:obr';
  fd.ParamByName('obr').AsInteger:=fdlineaslineasobras_obras_ID_obra.AsInteger;
  fd.Active:=True;

  DataModule1.editarobraExecute(fd);

  fd.Active:=False;
  fd.Free;



end;

end;

procedure TFFacturas.abrirObraUpdate(Sender: TObject);
begin
TAction(Sender).enabled:= not fdlineaslineasobras_obras_ID_obra.IsNull;
end;

procedure TFFacturas.AceptarClick(Sender: TObject);
begin
Guardar.Click;
Close;
end;


procedure TFFacturas.BTBuscarClienteClick(Sender: TObject);
var lclientes:Tlistclientes; fdclen:TfdQuery;
begin
    fdclen:=TFDQuery.Create(Sender as TControl);
    fdclen.Connection:=DataModule1.FDConnection1;
    fdclen.SQL.Add('Select c.idContactos, c.nombre, c.CIF, c.direccion, c.CodigoPostal, c.Ciudad, a.nombreapellidos,c.idAdministrador from clientes c, administradores a where c.idAdministrador=a.idAdministrador order by c.idAdministrador,c.nombre');
    fdclen.IndexFieldNames:='idAdministrador;nombre';
    fdclen.Active:=true;

    lclientes:=Tlistclientes.Create(fdclen);
    lclientes.DragMode:=dmManual;
     lclientes.rDBGridClientes1.OnDblClick:=lclientes.rDBGridClientes2DblClick;
    lclientes.ShowModal;

    fdcliente.Close;
    fdcliente.ParamByName('id_cliente').AsInteger:=fdclen.FieldByName('IdContactos').AsInteger;
    fdcliente.Active:=true;
    fdclen.Close;

    if fdfacturas.State in [dsInsert,dsEdit] then
    begin
         FDfacturas.FieldByName('Idcliente').AsInteger:=FDCliente.FieldByName('IdContactos').AsInteger
    end
    else begin
              fdfacturas.Edit;
              FDfacturas.FieldByName('Idcliente').AsInteger:=FDCliente.FieldByName('IdContactos').AsInteger;
              fdfacturas.Post;
         end;
    Self.Caption:='F. '+fdfacturas.FieldByName('idfactura').AsString+ ' - ' +fdfacturas.FieldByName('ano').AsString+' '+fdCliente.FieldByName('nombre').Asstring;
    grp1.Enabled:=True;
end;


procedure TFFacturas.Button1Click(Sender: TObject);
begin
fdcliente.Close;
fdcliente.ParamByName('id_cliente').AsInteger:=64;
fdcliente.Active:=true;
end;

procedure TFFacturas.cerrarClick(Sender: TObject);
begin
   if (fdfacturas.UpdatesPending) or (fdlineas.UpdatesPending)  then
       if Application.MessageBox('�Guardar los cambios en la factura?','Guardar',MB_YESNO)=IDYES then
       begin
           Close;
       end
       else begin
            FDSchemaAdapter1.CancelUpdates;
            end;
       Close;
end;


procedure TFFacturas.cerrarpresExecute(Sender: TObject);
begin
cerrarClick(Sender);
end;


procedure TFFacturas.fdfacturasAfterDelete(DataSet: TDataSet);
begin
Guardar.Enabled:=true;
Shape1.Brush.Color:=cllime;
end;


procedure TFFacturas.fdfacturasAfterEdit(DataSet: TDataSet);
begin
Guardar.Enabled:=true;
Shape1.Brush.Color:=cllime;
end;


procedure TFFacturas.fdfacturasAfterInsert(DataSet: TDataSet);
var tasaIva:Real;
begin
fdfacturasidFactura.Value:=-200;
//fdfacturasid_asiento.Value:=-100;
fdfacturasidCliente.Value:=fdClienteidcontactos.Value;
fdfacturasFechaFactura.Value:=Date;
fdfacturasano.Value:=YearOf(Date);
fdfacturasEmisorFactura.Value:=IDEMPRESA;
fdfacturascantidad.value:=1;
fdfacturaspagada.Value:=False;
tasaIva:=(DataModule1.IVA(fdClientefamilia.value)-1)*100;
fdfacturasIva.Value:=Round(tasaIva);
fdfacturastipo.asinteger:=0;

fdfacturasTotal.Value:=0;
fdfacturasTotalBruto.Value:=0;
fdfacturasConcepto.Value:='Concepto';
fdfacturasretencion.Value:=0;
fdfacturasacuenta.Value:=0;



Guardar.Enabled:=true;
Shape1.Brush.Color:=cllime;
GroupBox2.Enabled:=True;
end;

procedure TFFacturas.fdfacturasTotalBrutoChange(Sender: TField);
begin
fltfldfacturasbaseimponible.asfloat:=fdfacturasTotalBruto.AsFloat-fdfacturasTotalBruto.asfloat*(fdfacturasretencion.AsInteger/100);
fltfldfdfacturasimporteRetencion.AsFloat:=fdfacturasTotalBruto.asfloat*(fdfacturasretencion.AsInteger/100);
fltfldIVA.asfloat:=fltfldfacturasbaseimponible.asfloat*(fdfacturasIva.asfloat/100);
fdfacturasTotal.asfloat:=fltfldfacturasbaseimponible.asfloat*(fdfacturasIva.asfloat/100)+fltfldfacturasbaseimponible.asfloat;
end;

procedure TFFacturas.fdlineasAfterDelete(DataSet: TDataSet);
begin
Guardar.Enabled:=true;
Shape1.Brush.Color:=cllime;
rDBGridClientes1.RecalculateSummaryResults(true);

while not DataSet.eof do
begin
  DataSet.edit;
  DataSet.FieldByName('nlinea').asinteger:=DataSet.RecNo-1;
  DataSet.Post;
  DataSet.Next;
end;

end;

procedure TFFacturas.fdlineasAfterEdit(DataSet: TDataSet);
begin
Guardar.Enabled:=true;
Shape1.Brush.Color:=cllime;
end;

procedure TFFacturas.fdlineasAfterInsert(DataSet: TDataSet);
begin


Guardar.Enabled:=true;
Shape1.Brush.Color:=cllime;
fdlineascantidad.Value:=1;
fdlineasimporte.Value:=0;
fdlineastotal.Value:=0;
fdlineasiva.Value:=0;
fdlineasdescuento.Value:=0;
fdlineasnlinea.Value:=DataSet.RecordCount;

end;

procedure TFFacturas.fdlineasAfterOpen(DataSet: TDataSet);
begin

grp1.Enabled:=True;
rDBGridClientes1.RecalculateSummaryResults(true);
end;

procedure TFFacturas.fdlineasAfterPost(DataSet: TDataSet);
begin

fdfacturas.Edit;
fdfacturasTotalBruto.asfloat:=fdlineas.Aggregates[0].Value;
fdfacturas.Post;
rDBGridClientes1.RecalculateSummaryResults(true);
end;

procedure TFFacturas.fdlineasBeforeInsert(DataSet: TDataSet);
begin
  if fdfacturas.State in [dsInsert, dsEdit] then fdfacturas.Post;

end;

procedure TFFacturas.fdlineascantidadChange(Sender: TField);
begin
 fdlineastotal.asfloat:=(fdlineasimporte.asfloat*fdlineascantidad.asfloat)-((fdlineasdescuento.AsFloat/100)*(fdlineasimporte.AsFloat*fdlineascantidad.asfloat));
fdlineasiva.asfloat:=fdlineastotal.asfloat*(fdfacturasiva.asfloat/100);
end;

procedure TFFacturas.fdlineasdescuentoChange(Sender: TField);
begin
 fdlineastotal.asfloat:=(fdlineasimporte.asfloat*fdlineascantidad.asfloat)-((fdlineasdescuento.AsFloat/100)*(fdlineasimporte.AsFloat*fdlineascantidad.asfloat));
fdlineasiva.asfloat:=fdlineastotal.asfloat*(fdfacturasiva.asfloat/100);
end;

procedure TFFacturas.fdlineasimporteChange(Sender: TField);
begin
fdlineastotal.asfloat:=(fdlineasimporte.asfloat*fdlineascantidad.asfloat)-((fdlineasdescuento.AsFloat/100)*(fdlineasimporte.AsFloat*fdlineascantidad.asfloat));
fdlineasiva.asfloat:=fdlineastotal.asfloat*(fdfacturasiva.asfloat/100);
ActualizarImportesLineas:=True;
end;

procedure TFFacturas.GuardarClick(Sender: TObject);

begin
try

if (fdfacturas.state in [dsInsert, dsEdit]) then
 begin
   fdfacturas.post;
 end;

if (fdlineas.state in [dsEdit,dsInsert]) then
 begin
   fdlineas.post;
 end;

 if FDSchemaAdapter1.UpdatesPending then
    begin
         FDSchemaAdapter1.ApplyUpdates(1);

    end;
except
        raise;

end;

end;






procedure TFFacturas.guardarfacturaExecute(Sender: TObject);
begin
GuardarClick(Sender);
end;

procedure TFFacturas.guardarfacturaUpdate(Sender: TObject);
begin
ToolButton1.Enabled:=  not (fdfacturas.State in [dsInsert]);
end;

procedure TFFacturas.FDSchemaAdapter1AfterApplyUpdate(Sender: TObject);
var cnpIVA,cnpVentas,asiento:Integer;
begin
try
with Sender as TFDSchemaAdapter do CommitUpdates;
        if  not TFDSchemaAdapter(Sender).UpdatesPending then
            begin

             if (fdfacturasIva.AsInteger = 10) then
                  begin
                  cnpIVA:=47700010;
                  cnpVentas:=70000010;
                  end
                   else begin
                    cnpIVA:=47700021;
                    cnpVentas:=70000021;
                   end;

                   if fdfacturasid_asiento.IsNull then
                      begin

                      asiento:=DataModule1.generarAsiento(-1,cnpIVA,Date,'FACTURA VENTAS '+fdClientenombre.AsString,fltfldIVA.AsFloat, fdfacturasidFactura.asstring+ fdfacturasano.asstring,true);
                      DataModule1.generarAsiento(asiento,cnpVentas,Date,'FACTURA VENTAS '+fdClientenombre.AsString,fltfldfacturasbaseimponible.AsFloat, fdfacturasidFactura.asstring+ fdfacturasano.asstring,false);

                     // ShowMessage('Se ha generado el asiento N� '+fdfacturasid_asiento.AsString );

                      end
                      else begin
                               DataModule1.modificarAsiento(fdfacturasid_asiento.asinteger,cnpIVA,Date,'FACTURA VENTAS '+fdClientenombre.AsString,fltfldIVA.AsFloat,fdfacturasidFactura.asstring+ fdfacturasano.asstring);
                               DataModule1.modificarAsiento(fdfacturasid_asiento.asinteger,cnpVentas,Date,'FACTURA VENTAS '+fdClientenombre.AsString,fltfldfacturasbaseimponible.AsFloat,fdfacturasidFactura.asstring+ fdfacturasano.asstring);
                               //ShowMessage('Se ha modificado el asiento N� '+fdfacturasid_asiento.AsString);
                           end;



            if fdfacturas.FieldByName('tipo').AsInteger=0 then  // TIPO FACTURA NORMAL
             begin
             fdlineas.DisableControls;
             FDlineas.First;
              while not FDlineas.eof do
              begin
                        AsignarAlaObraFactura(fdlineasfacturas_idfactura.AsInteger,fdlineasfacturas_ano.asinteger, fdlineaslineasobras_obras_ID_obra.asinteger,fdlineaslineasobras_id_lineaobra.AsInteger,0,0);
                       if ActualizarImportesLineas then ActualizarPreciosObra(fdlineastotal.AsFloat,fdlineaslineasobras_obras_ID_obra.asinteger,fdlineaslineasobras_id_lineaobra.AsInteger,0);
                        FDlineas.Next;
              end;
             fdlineas.EnableControls;
             end else  AsignarAlaObraFactura(fdfacturasidFactura.AsInteger,fdfacturasano.asinteger, fdfacturasobra.asinteger,fdfacturascertificacion.AsInteger,fdfacturaslineacertificacion.AsInteger,1);


              guardarfactura.Enabled:=false;
              guardar.Enabled:=false;
              shape1.Brush.Color:=clwhite;
              self.Caption:='F. '+fdfacturas.FieldByName('idfactura').AsString+' - '+fdfacturas.FieldByName('ano').AsString+' '+fdCliente.FieldByName('nombre').Asstring;
            end;




            except
                  raise;
            end;
end;


procedure TFFacturas.FDSchemaAdapter1BeforeApplyUpdate(Sender: TObject);
var cnpIVA,cnpVentas:Integer;
begin
 try
 if YearOf(fdfacturasFechaFactura.AsDateTime) <> fdfacturasano.asinteger then
   begin
     ShowMessage('El a�o de la fecha de factura no coincide con la serie');
     fdfacturas.CancelUpdates;
   end
   else begin
           fdfacturas.Edit;
           if fdlineasfacturas_idfactura.CurValue=-200 then  fdfacturasidFactura.AsInteger:=DataModule1.ObtenerNFactura(fdfacturasano.asinteger);
            {
            if (fdfacturasIva.AsInteger = 10) then
                  begin
                  cnpIVA:=47700010;
                  cnpVentas:=70000010;
                  end
                   else begin
                    cnpIVA:=47700021;
                    cnpVentas:=70000021;
                   end;

                   if fdfacturasid_asiento.AsInteger < 0 then
                      begin
                     fdfacturasid_asiento.AsInteger:=DataModule1.generarAsiento(-1,cnpIVA,Date,'FACTURA VENTAS '+fdClientenombre.AsString,fltfldIVA.AsFloat, fdfacturasidFactura.asstring+ fdfacturasano.asstring,true);
                      DataModule1.generarAsiento(fdfacturasid_asiento.AsInteger,cnpVentas,Date,'FACTURA VENTAS '+fdClientenombre.AsString,fltfldfacturasbaseimponible.AsFloat, fdfacturasidFactura.asstring+ fdfacturasano.asstring,false);

                     // ShowMessage('Se ha generado el asiento N� '+fdfacturasid_asiento.AsString );

                      end
                      else begin
                               DataModule1.modificarAsiento(fdfacturasid_asiento.asinteger,cnpIVA,Date,'FACTURA VENTAS '+fdClientenombre.AsString,fltfldIVA.AsFloat,fdfacturasidFactura.asstring+ fdfacturasano.asstring);
                               DataModule1.modificarAsiento(fdfacturasid_asiento.asinteger,cnpVentas,Date,'FACTURA VENTAS '+fdClientenombre.AsString,fltfldfacturasbaseimponible.AsFloat,fdfacturasidFactura.asstring+ fdfacturasano.asstring);
                               //ShowMessage('Se ha modificado el asiento N� '+fdfacturasid_asiento.AsString);
                           end;
                                 }
               fdfacturas.Post;
           //    Self.Caption:='F. '+fdfacturas.FieldByName('idfactura').AsString+ ' - ' +fdfacturas.FieldByName('ano').AsString+' '+fdCliente.FieldByName('nombre').Asstring;
          end  ;

    except

       Application.MessageBox('Se ha producido un error en la aplicaci�n.',
         PChar(Application.Title), MB_OK + MB_ICONSTOP);

 end;



end;

procedure TFFacturas.FormClose(Sender: TObject; var Action: TCloseAction);
begin

action:=caFree;
end;

procedure TFFacturas.FormCreate(Sender: TObject);
begin
ActualizarImportesLineas:=False;
ShowScrollBar(rdbtotales1.Handle,SB_BOTH,false);
end;

procedure TFFacturas.FormResize(Sender: TObject);
begin
  GroupBox5.Margins.Bottom:=GroupBox5.Height-Guardar.Height-20;
end;

procedure TFFacturas.ActualizarPreciosObra(importe:double;obra,partida,tipofactura:integer);
var fq1:TFDQuery;
begin

    try
     fq1:=TFDQuery.create(self);
     fq1.connection:=DataModule1.FDConnection1;
     fq1.close;
     fq1.SQL.clear;

     if tipofactura=0 then
          begin
          fq1.SQL.Add('UPDATE lineasobras SET  total=:IMPORTE  WHERE obras_ID_Obra=:OBRA AND id_lineaobra=:PARTIDA') ;
          fq1.ParamByName('OBRA').FDDataType:=dtInt16;
          fq1.ParamByName('OBRA').Value:=obra;

    // else fq1.SQL.Add('UPDATE lineascertificaciones SET id_factura=:FACTURA,  ano=:ANO WHERE certificacion_id_certificacion=:PARTIDA AND id_lineacertificacion=:LINEA');


     fq1.ParamByName('IMPORTE').FDDataType:=dtDouble;
     fq1.ParamByName('IMPORTE').Value:=importe ;

     fq1.ParamByName('PARTIDA').FDDataType:=dtInt16;
     fq1.ParamByName('PARTIDA').Value:=partida;

     fq1.Prepare;
     if fq1.prepared then fq1.ExecSQL;


        fq1.SQL.Clear;
        fq1.SQL.Add('UPDATE obras SET ImporteObra= (SELECT SUM(total) FROM lineasobras WHERE obras_ID_Obra=:OBRA ) WHERE id_obra=:OBRA') ;
        fq1.ParamByName('OBRA').FDDataType:=dtInt16;
          fq1.ParamByName('OBRA').Value:=obra;
          fq1.Prepare;
        if fq1.prepared then fq1.ExecSQL;

          end;
     fq1.Free;
    except
        raise;
    end;
end;


procedure TFFacturas.AsignarAlaObraFactura(nfactura,ano,obra,partida,linea,tipofactura:integer);
var fq1:TFDQuery;
begin

    try
     fq1:=TFDQuery.create(self);
     fq1.connection:=DataModule1.FDConnection1;
     fq1.close;
     fq1.SQL.clear;

     if tipofactura=0 then
          begin
          fq1.SQL.Add('UPDATE lineasobras SET  facturas_id_factura=:FACTURA, facturas_ano=:ANO  WHERE obras_ID_Obra=:OBRA AND id_lineaobra=:PARTIDA') ;
          fq1.ParamByName('OBRA').FDDataType:=dtInt16;
          fq1.ParamByName('OBRA').Value:=obra;
          end
     else fq1.SQL.Add('UPDATE lineascertificaciones SET id_factura=:FACTURA,  ano=:ANO WHERE certificacion_id_certificacion=:PARTIDA AND id_lineacertificacion=:LINEA');


     fq1.ParamByName('FACTURA').FDDataType:=dtInt16;
     fq1.ParamByName('FACTURA').Value:=nfactura ;
     fq1.ParamByName('ANO').FDDataType:=dtInt16;
      fq1.ParamByName('ANO').Value:=ano;

     fq1.ParamByName('PARTIDA').FDDataType:=dtInt16;
     fq1.ParamByName('PARTIDA').Value:=partida;

    if tipofactura=1 then
       begin
     fq1.ParamByName('LINEA').FDDataType:=dtInt16;
     fq1.ParamByName('LINEA').Value:=linea;
        end;


     fq1.Prepare;
     if fq1.prepared then fq1.ExecSQL;
     fq1.Close;
     fq1.Free;

    except
          raise;
    end;
end;


end.

unit obras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.Controls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Vcl.Bind.Grid, Vcl.StdActns, Vcl.ImgList, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  Data.Bind.Grid, Data.Bind.Components, Data.Bind.DBScope, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, Vcl.Buttons, Vcl.Bind.Navigator,
  Vcl.ExtCtrls, Vcl.Grids,shellapi, System.ImageList, ShellCtrls, RzListVw,
  RzShellCtrls,Vcl.FileCtrl, Vcl.Mask, Vcl.ActnCtrls, rDBGrid, RzPanel, RzDBNav,
  Vcl.DBCtrls, rDBComponents, rImprovedComps, RzGroupBar, rDBGrid_MS;

type
  TFObras = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox4: TGroupBox;
    BTBuscarCliente: TButton;
    GroupBox2: TGroupBox;
    spaprobado: TShape;
    spEjecutado: TShape;
    spcarpetas: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Shape2: TShape;
    PageControl1: TPageControl;
    lineas: TTabSheet;
    ControlBar2: TControlBar;
    ToolBar2: TToolBar;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    LabeledEdit13: TLabeledEdit;
    LabeledEdit14: TLabeledEdit;
    documentacion: TTabSheet;
    fotografias: TTabSheet;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    ToolButton2: TToolButton;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    ToolButton10: TToolButton;
    ToolButton9: TToolButton;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    GroupBox5: TGroupBox;
    Guardar: TButton;
    cerrar: TButton;
    dialruta: TOpenDialog;
    ActionManager1: TActionManager;
    abrircarpeta: TAction;
    abrirpresupuesto: TAction;
    guardarobra: TAction;
    actFacturar: TAction;
    actanadirlineaspresupuestos: TAction;
    cerrarpres: TAction;
    carpetadocumentacion: TAction;
    ImageList1: TImageList;
    ActionManager2: TActionManager;
    EditCopy: TEditCopy;
    EditCut: TEditCut;
    EditPaste: TEditPaste;
    AprobarTodos: TAction;
    certificaciones: TTabSheet;
    Estadisticas: TTabSheet;
    FDCliente: TFDQuery;
    FDObra: TFDQuery;
    Shape1: TShape;
    FDClienteidcontactos: TFDAutoIncField;
    FDClientenombre: TStringField;
    FDClientecif: TStringField;
    FDClientefamilia: TIntegerField;
    btnAceptar: TButton;
    shellDocumentacion1: TRzShellList;
    statDocumentacion: TStatusBar;
    statFotos: TStatusBar;
    shellFotos: TRzShellList;
    lbepartidasejecutadas: TLabeledEdit;
    fdtncfldFDObraID_obra: TFDAutoIncField;
    mfldFDObraDescripcion: TMemoField;
    dtmfldFDObraFechaComienzo: TDateTimeField;
    intgrfldFDObraID_Cliente: TIntegerField;
    fltfldFDObraImporteObra: TFloatField;
    blnfldFDObraEjecutado: TBooleanField;
    dtmfldFDObraFechaFin: TDateTimeField;
    mfldFDObraPath: TMemoField;
    intgrfldFDObrapartidas: TIntegerField;
    mfldFDObraobservaciones: TMemoField;
    intgrfldFDObrapartidasejecutadas: TIntegerField;
    fdCertificacion: TFDQuery;
    fdlineasCertificaciones: TFDQuery;
    fdCertificacionesid_lineacertificacion: TFDAutoIncField;
    fdCertificacionesfechacertificacion: TDateTimeField;
    fdCertificacionesncertificacion: TIntegerField;
    fdCertificacionesimporte: TFloatField;
    fdCertificacionescertificacion_id_certificacion: TIntegerField;
    fdCertificacionesImporteOrigen: TFloatField;
    fdlineasCertificacionesIVA: TFloatField;
    fdlineasCertificacionestotal: TFloatField;
    fdlineasCertificacionesreten: TFloatField;
    DataSource2: TDataSource;
    actNuevaCertificacion: TAction;
    FDSchemaCertificaciones: TFDSchemaAdapter;
    dscertificacion: TDataSource;
    dsobras: TDataSource;
    actBorrarLineaCertificacion: TAction;
    actBorrarCertificacion: TAction;
    actGuardarCertificacion: TAction;
    tsmateriales: TTabSheet;
    ctrlbr2: TControlBar;
    tlb5: TToolBar;
    btn2: TToolButton;
    btn3: TToolButton;
    btn4: TToolButton;
    tlb6: TToolBar;
    btn5: TToolButton;
    RzDBNavigator2: TRzDBNavigator;
    rDBGrid1: TrDBGrid;
    rDBEdit1: TrDBEdit;
    rDBCIF: TrDBEdit;
    rDBNombre: TrDBEdit;
    rDBNumero: TrDBEdit;
    rDBDateTimeInicio: TrDBDateTimePicker;
    rDBDateTimeFinal: TrDBDateTimePicker;
    rDBRuta: TrDBEdit;
    dscliente: TDataSource;
    fdqryContactosObra: TFDQuery;
    fdqryContactosObraid_contacto: TIntegerField;
    fdqryContactosObrapta: TStringField;
    fdqryContactosObranombre: TStringField;
    fdqryContactosObratelefono1: TIntegerField;
    fdqryContactosObratelefono2: TIntegerField;
    fdqryContactosObratelefono3: TIntegerField;
    fdqryContactosObramail: TStringField;
    fdqrycontactoscliente: TFDQuery;
    dsContactosObra: TDataSource;
    fdqryContactosObraid_obra: TIntegerField;
    dslineasobra: TDataSource;
    rDBGrid2: TrDBGrid;
    rGroupBox1: TrGroupBox;
    rGroupBox2: TrGroupBox;
    rGroupBox3: TrGroupBox;
    FDObramarca_pintura1: TStringField;
    FDObramarca_pintura2: TStringField;
    FDObramarca_pintura3: TStringField;
    FDObratipo_pintura1: TStringField;
    FDObratipo_pintura2: TStringField;
    FDObratipo_pintura3: TStringField;
    FDObracodigo_pintura1: TStringField;
    FDObracodigo_pintura2: TStringField;
    FDObracodigo_pintura3: TStringField;
    FDObracolor1: TStringField;
    FDObracolor2: TStringField;
    FDObracolor3: TStringField;
    FDObramarca_azulejo1: TStringField;
    FDObramarca_azulejo2: TStringField;
    FDObramodelo_azulejo1: TStringField;
    FDObramodelo_azulejo2: TStringField;
    rDBEdit5: TrDBEdit;
    rDBComboBox1: TrDBComboBox;
    rDBComboBox2: TrDBComboBox;
    rDBEdit2: TrDBEdit;
    rGroupBox4: TrGroupBox;
    rDBEdit3: TrDBEdit;
    rDBComboBox3: TrDBComboBox;
    rDBComboBox4: TrDBComboBox;
    rDBEdit4: TrDBEdit;
    rGroupBox5: TrGroupBox;
    rDBEdit6: TrDBEdit;
    rDBComboBox5: TrDBComboBox;
    rDBComboBox6: TrDBComboBox;
    rDBEdit7: TrDBEdit;
    rGroupBox6: TrGroupBox;
    rDBEdit8: TrDBEdit;
    rDBComboBox7: TrDBComboBox;
    rGroupBox7: TrGroupBox;
    rDBEdit9: TrDBEdit;
    rDBComboBox8: TrDBComboBox;
    RzDBNavigator1: TRzDBNavigator;
    dslineasCertificaciones: TDataSource;
    ctrlbr1: TControlBar;
    rDBGridClientes1: TrDBGrid_MS;
    RzGroupBox1: TRzGroupBox;
    rDBEdit10: TrDBEdit;
    fdtncfldCertificacionid_certificacion: TFDAutoIncField;
    dtmfldCertificacionfechaFinretencion: TDateTimeField;
    fltfldCertificacionretencion: TFloatField;
    fdCertificacionobras_ID_obra: TIntegerField;
    fdCertificaciondescripcion: TStringField;
    fltfldCertificaciontotal: TFloatField;
    rDBDateTimePicker1: TrDBDateTimePicker;
    rDBEdit11: TrDBEdit;
    rDBEdit12: TrDBEdit;
    tlb1: TToolBar;
    btnNuevaCertificacion: TToolButton;
    RzDBNavigator3: TRzDBNavigator;
    btnBorrarCertificacion: TToolButton;
    fdCertificacionimporteFalta: TSingleField;
    fdCertificaciontotalretencion: TSingleField;
    fdCertificacionimportecertificado: TSingleField;
    rDBEdit13: TrDBEdit;
    rDBEdit14: TrDBEdit;
    rDBMemo1: TrDBMemo;
    rDBGrid3: TrDBGrid;
    FDlineasobra: TFDQuery;
    FDlineasobraid_lineaobra: TIntegerField;
    FDlineasobradescripcion: TStringField;
    FDlineasobratotal: TFloatField;
    FDlineasobraejecutado: TBooleanField;
    FDlineasobraobras_ID_obra: TIntegerField;
    FDlineasobrapresupuestos_id_presupuesto: TIntegerField;
    FDlineasobrapresupuestos_grupo: TIntegerField;
    FDlineasobrapresupuestos_Id_Partida: TIntegerField;
    FDlineasobrafacturas_id_factura: TIntegerField;
    FDlineasobrafacturas_ano: TIntegerField;
    FDlineasobradiasejecucion: TIntegerField;
    FDlineasobrafechafin: TDateField;
    FDlineasobraFechaComienzo: TDateField;
    ToolBar3: TToolBar;
    ToolButton3: TToolButton;
    btnEjecutadoFechaFinlinea: TToolButton;
    EjecutadoFechaFinlinea: TAction;
    procedure cerrarClick(Sender: TObject);
    procedure GuardarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FDlineasobraAfterEdit(DataSet: TDataSet);
    procedure FDlineasobraAfterInsert(DataSet: TDataSet);
    procedure FDObraAfterInsert(DataSet: TDataSet);
    procedure FDObraAfterEdit(DataSet: TDataSet);
    procedure FDlineasobraAfterPost(DataSet: TDataSet);
    procedure FDObraAfterPost(DataSet: TDataSet);
    procedure abrircarpetaExecute(Sender: TObject);
    procedure cerrarpresExecute(Sender: TObject);
    procedure carpetadocumentacionExecute(Sender: TObject);
    procedure BTpathClick(Sender: TObject);
    procedure BTBuscarClienteClick(Sender: TObject);
    procedure FDClienteAfterOpen(DataSet: TDataSet);
    procedure LabeledEdit5Change(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure FDObraAfterApplyUpdates(DataSet: TFDDataSet; AErrors: Integer);
    procedure FDlineasobraAfterApplyUpdates(DataSet: TFDDataSet;
      AErrors: Integer);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure StringGrid1Exit(Sender: TObject);
    procedure StringGrid1GetEditText(Sender: TObject; ACol, ARow: Integer;
      var Value: string);
    procedure StringGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StringGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure guardarobraExecute(Sender: TObject);
    procedure StringGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure blnfldFDObraEjecutadoChange(Sender: TField);

    procedure StringGrid1Click(Sender: TObject);
    procedure fdCertificacionAfterInsert(DataSet: TDataSet);
    procedure btnNuevaCertiClick(Sender: TObject);
    procedure btnGuardarCertificacionClick(Sender: TObject);
    procedure fdCertificacionAfterEdit(DataSet: TDataSet);
    procedure fdCertificacionAfterApplyUpdates(DataSet: TFDDataSet;
      AErrors: Integer);
    procedure lbedCertOrigenChange(Sender: TObject);
    procedure edtRetencionChange(Sender: TObject);
    procedure fdlineasCertificacionesCalcFields(DataSet: TDataSet);
    procedure fdlineasCertificacionesBeforeInsert(DataSet: TDataSet);
    procedure fdlineasCertificacionesAfterInsert(DataSet: TDataSet);
    procedure fdlineasCertificacionesAfterPost(DataSet: TDataSet);
    procedure fdlineasCertificacionesAfterApplyUpdates(DataSet: TFDDataSet;
      AErrors: Integer);
    procedure fdlineasCertificacionesReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
    procedure FDSchemaCertificacionesAfterApplyUpdate(Sender: TObject);
    procedure FDSchemaCertificacionesReconcileRow(ASender: TObject;
      ARow: TFDDatSRow; var Action: TFDDAptReconcileAction);
    procedure ud1ChangingEx(Sender: TObject; var AllowChange: Boolean;
      NewValue: Integer; Direction: TUpDownDirection);
    procedure fltfldCertificacionretencionChange(Sender: TField);
    procedure actNuevaCertificacionUpdate(Sender: TObject);
    procedure actNuevaCertificacionExecute(Sender: TObject);
    procedure actBorrarLineaCertificacionExecute(Sender: TObject);
    procedure actBorrarLineaCertificacionUpdate(Sender: TObject);
    procedure actBorrarCertificacionExecute(Sender: TObject);
    procedure actBorrarCertificacionUpdate(Sender: TObject);
    procedure actGuardarCertificacionExecute(Sender: TObject);
    procedure actGuardarCertificacionUpdate(Sender: TObject);
    procedure lvcertificacionesDblClick(Sender: TObject);
    procedure fdlineasCertificacionesAfterEdit(DataSet: TDataSet);
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);
    procedure fltfldCertificacionretencionValidate(Sender: TField);
    procedure btn5Click(Sender: TObject);
    procedure fdqryContactosObraAfterEdit(DataSet: TDataSet);
    procedure fdqryContactosObraAfterDelete(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure fdlineasCertificacionesAfterOpen(DataSet: TDataSet);
    procedure fdlineasCertificacionesAfterDelete(DataSet: TDataSet);
    procedure rDBGridClientes1FooterCellClick(Sender: TObject; ACol: Integer;
      Column: TColumn);
    procedure fdlineasCertificacionesBeforeDelete(DataSet: TDataSet);
    procedure fdCertificacionesimporteChange(Sender: TField);
    procedure fdlineasCertificacionesBeforePost(DataSet: TDataSet);
    procedure FDlineasobraAfterDelete(DataSet: TDataSet);
    procedure FDlineasobraAfterOpen(DataSet: TDataSet);
    procedure actFacturarExecute(Sender: TObject);
    procedure abrirpresupuestoUpdate(Sender: TObject);
    procedure abrirpresupuestoExecute(Sender: TObject);
    procedure fdqryContactosObraAfterInsert(DataSet: TDataSet);
    procedure FDlineasobraBeforePost(DataSet: TDataSet);
    procedure EjecutadoFechaFinlineaExecute(Sender: TObject);
    procedure EjecutadoFechaFinlineaUpdate(Sender: TObject);

  private
    { Private declarations }
    lst:TStringlist;
  public
  RowAct:integer;
    cargando:boolean;
    procedure carpetasdocumentacion(var ruta:string; var ok:boolean);
    procedure existelineasterminadas(dataset:TDataSet; var nlineas:integer);
    procedure AsignarAlpresupuestoLaObra(obra,grupo,presu,partida:integer);
    { Public declarations }
  end;

var
  FObras: TFObras;

implementation

{$R *.dfm}

uses DModule1, listaclientes, SelectLineasobras, FPrincipal;



procedure TFObras.FDClienteAfterOpen(DataSet: TDataSet);
begin
if DataSet.RecordCount > 0 then
         begin
              if fdobra.State in [dsInsert] then
              begin
                   fdobra.FieldByName('Id_Cliente').AsInteger:=fdcliente.FieldByName('idContactos').AsInteger;
               end;
         end;
end;

procedure TFObras.fdlineasCertificacionesAfterApplyUpdates(DataSet: TFDDataSet;
  AErrors: Integer);
begin
if AErrors = 0 then
         begin
          DataSet.CommitUpdates;
         if ( not fdobra.UpdatesPending) and (not FDlineasobra.UpdatesPending) and ( not fdCertificacion.UpdatesPending) then
            begin
             guardarobra.Enabled:=false;
             guardar.Enabled:=false;
              shape1.Brush.Color:=clwhite;

            end;
end
else DataSet.Reconcile;
end;

procedure TFObras.fdlineasCertificacionesAfterDelete(DataSet: TDataSet);
begin
rDBGridClientes1.RecalculateSummaryResults(true);
end;

procedure TFObras.fdlineasCertificacionesAfterEdit(DataSet: TDataSet);
begin
Guardar.Enabled:=true;
Shape1.Brush.Color:=cllime;
fdCertificacionesImporteOrigen.asfloat:=fdCertificacionesImporteOrigen.AsFloat-fdCertificacionesImporte.AsFloat;
end;

procedure TFObras.fdlineasCertificacionesAfterInsert(DataSet: TDataSet);
begin
DataSet.FieldByName('certificacion_id_certificacion').AsInteger:=fdCertificacion.FieldByName('id_certificacion').AsInteger;
DataSet.FieldByName('fechacertificacion').AsDateTime:=Date;

   DataSet.FieldByName('ncertificacion').AsInteger:=DataSet.RecordCount+1;

   DataSet.FieldByName('Importe').AsFloat:=0;
   DataSet.FieldByName('ImporteOrigen').AsFloat:=0;


   {

   if not fdlineasCertificaciones.IsEmpty then

  if IncMonth(dtmfldCertificacionfechaFinretencion.AsDateTime,-6) = fdCertificacionesfechacertificacion.AsDateTime then
begin
  ShowMessage('No se puede certificar con la misma fecha o anterior');
  DataSet.Cancel;
  Exit;
end;
    }

if Trunc(fdCertificacionimporteFalta.AsFloat)=0   then
begin
ShowMessage('La certificación esta completa. No se puede certificar mas Importe');
DataSet.Cancel;
Exit;
end;





   Guardar.Enabled:=true;
Shape1.Brush.Color:=cllime;

end;

procedure TFObras.fdlineasCertificacionesAfterOpen(DataSet: TDataSet);
begin
rDBGridClientes1.RecalculateSummaryResults(true);
end;

procedure TFObras.fdlineasCertificacionesAfterPost(DataSet: TDataSet);
begin
//btnNuevaCerti.Enabled:=True;
 (DataSet as TFDQuery).AggregatesActive:=True;
fdCertificacion.Edit;
   fdCertificacion.FieldByName('fechaFinretencion').AsDateTime:=IncMonth(Date,6);

   fdCertificacion.FieldByName('importecertificado').asfloat:=fdlineasCertificaciones.Aggregates[0].Value;
   fdCertificacion.FieldByName('importeFalta').AsFloat:=fdCertificacion.FieldByName('total').AsFloat-fdlineasCertificaciones.Aggregates[0].Value;
   fdCertificacion.Post;
rDBGridClientes1.RecalculateSummaryResults(true);
//(DataSet as TFDQuery).AggregatesActive:=false;
end;

procedure TFObras.fdlineasCertificacionesBeforeDelete(DataSet: TDataSet);
begin
   fdCertificacion.Edit;
   fdCertificacion.FieldByName('fechaFinretencion').AsDateTime:=IncMonth(Date,6);
   fdCertificacion.FieldByName('importecertificado').asfloat:=fdCertificacion.FieldByName('importecertificado').asfloat-fdlineascertificaciones.FieldByName('importe').AsFloat;
   fdCertificacion.FieldByName('importeFalta').AsFloat:=fdCertificacion.FieldByName('importeFalta').AsFloat+fdlineascertificaciones.FieldByName('importe').AsFloat;
   fdCertificacion.Post;
end;

procedure TFObras.fdlineasCertificacionesBeforeInsert(DataSet: TDataSet);
begin
//lbedCertAnterior.Text:='0';
  {
if lvcertificaciones.Items.Count > 0 then
begin
    fdlineasCertificaciones.RecNo:=lvcertificaciones.Items.Count;
    lbedCertAnterior.text:=fdlineasCertificaciones.FieldByName('Importe').AsString;
   end;

   fdCertificacion.Edit;
   fdCertificacion.FieldByName('fechaFinretencion').AsDateTime:=IncMonth(Date,6);
   fdCertificacion.Post;}


end;

procedure TFObras.fdlineasCertificacionesBeforePost(DataSet: TDataSet);
begin


if fdCertificacionesimporte.AsFloat > fltfldCertificaciontotal.AsFloat   then
begin
ShowMessage('El importe de la certificación es superior al coste de la obra.');
DataSet.Cancel;
Exit;
end;



if DataSet.State in [dsInsert] then

if fdCertificacionesimporte.AsFloat > fdCertificacionimporteFalta.AsFloat   then
begin
ShowMessage('El importe de la certificación es superior a lo que falta por certificar.');
DataSet.Cancel;
Exit;
end;




end;

procedure TFObras.fdlineasCertificacionesCalcFields(DataSet: TDataSet);
var IVA:double;
begin
IVA:=DataModule1.IVA(FDCliente.FieldByName('familia').asinteger);

fdlineasCertificacionesreten.Value:=fdCertificacionesimporte.Value*(fltfldCertificacionretencion.Value/100);
    fdlineasCertificacionesIVA.Value:= (fdCertificacionesimporte.value-fdlineasCertificacionesReten.Value)*(IVA-1);

    fdlineasCertificacionesTotal.Value:=(fdCertificacionesimporte.value-fdlineasCertificacionesReten.Value)*IVA;
end;

procedure TFObras.fdlineasCertificacionesReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin

     //ShowMessage(E.Message);
      case UpdateKind of
       rsDeleted:  Action:=raCorrect;
       rsInserted: Action:=raMerge;
       rsModified: Action:= raCorrect;
      end;




end;

procedure TFObras.FDlineasobraAfterApplyUpdates(DataSet: TFDDataSet;
  AErrors: Integer);

begin
{if AErrors = 0 then
         begin
          fdlineasobra.CommitUpdates;
         if (not fdobra.UpdatesPending) and (not fdCertificacion.UpdatesPending) and (not fdlineasCertificaciones.UpdatesPending) then
            begin
             guardarobra.Enabled:=false;
             guardar.Enabled:=false;
             shape1.Brush.Color:=clwhite;

            end;

            FDlineasobra.First;
            while  not FDlineasobra.Eof do
            begin

              if FDlineasobra.FieldByName('ejecutado').AsBoolean then
              begin
              DataModule1.FDConnection1.ExecSQL('UPDATE lineaspresupuesto SET Ejecutado=1 WHERE presupuestos_id_presupuesto=:id_presupuesto and presupuestos_grupo=:id_grupo',[FDlineasobra.FieldByName('presupuestos_id_presupuesto').asinteger,FDlineasobra.FieldByName('presupuestos_grupo').AsInteger]);
             //   principal.StatusBar1.SimpleText:='La linea '+ FDlineasobra.FieldByName('id_lineaobra').asstring+ ' del presuesto '+FDlineasobra.FieldByName('presupuestos_id_presupuesto').asstring+' / ' +FDlineasobra.FieldByName('presupuestos_grupo').asstring + ' se ha Ejecutado.';
              end;
                 FDlineasobra.Next;

            end;


         end;    }
end;

procedure TFObras.FDlineasobraAfterDelete(DataSet: TDataSet);
begin
  rDBGrid2.RecalculateSummaryResults(True);
end;

procedure TFObras.FDlineasobraAfterEdit(DataSet: TDataSet);
begin
   Guardar.Enabled:=true;
   Shape1.Brush.Color:=cllime;
end;

procedure TFObras.FDlineasobraAfterInsert(DataSet: TDataSet);
begin

   DataSet.FieldByName('Id_lineaobra').AsInteger:=DataSet.RecordCount+1;
   DataSet.FieldByName('diasejecucion').AsInteger:=1;
   DataSet.FieldByName('Descripcion').Asstring:='';
   DataSet.FieldByName('fechaComienzo').AsDateTime:=Date;
   DataSet.FieldByName('Ejecutado').asboolean:=false;
   DataSet.FieldByName('Total').AsFloat:=0;

Guardar.Enabled:=true;
Shape1.Brush.Color:=cllime;
end;

procedure TFObras.FDlineasobraAfterOpen(DataSet: TDataSet);
begin
  rDBGrid2.RecalculateSummaryResults(True);
end;

procedure TFObras.FDlineasobraAfterPost(DataSet: TDataSet);
var nl:Integer;
begin
 if not (fdobra.state in [dsInsert, dsEdit]) then fdobra.edit;

      fdobra.FieldByName('partidas').asinteger:=fdlineasobra.RecordCount;
      fdobra.FieldByName('ImporteObra').asstring:=VarToStr(fdlineasobra.Aggregates.AggregateByName('SUMAIMPORTE').Value);
      existelineasterminadas(dataset,nl);
      FDObra.FieldByName('partidasejecutadas').asinteger:=nl;

      if FDObra.FieldByName('partidasejecutadas').asinteger = FDObra.FieldByName('partidas').asinteger then
      begin
      FDObra.FieldByName('ejecutado').AsBoolean:= True;
      FDObra.FieldByName('fechafin').AsDateTime:=Date;
      end
      else FDObra.FieldByName('ejecutado').asboolean:=False;

      FDObra.Post;
      rDBGrid2.RecalculateSummaryResults(True);

end;

procedure TFObras.FDlineasobraBeforePost(DataSet: TDataSet);
begin
//if FDObra.State in [dsInsert, dsEdit] then FDObra.Post;

end;

procedure TFObras.carpetasdocumentacion(var ruta:string; var ok:boolean);
begin

     ok:=false;
     ruta:='';
     if not DirectoryExists(PATHDOCOBRAS) then
      begin
        showmessage('El directoria OBRAS no existe.');
        exit;
      end;

  ruta:= PATHDOCOBRAS+'\'+fdcliente.FieldByName('nombre').asstring+'\'+fdobra.fieldbyname('id_obra').asstring;



      if DirectoryExists(ruta) then
        begin
          ok:=True;
        end
      else   begin
                  if not DirectoryExists(PATHDOCOBRAS+'\'+fdcliente.FieldByName('nombre').asstring) then
                  mkdir(PATHDOCOBRAS+'\'+fdcliente.FieldByName('nombre').asstring)  ;
                  mkdir(ruta);
                  mkdir(ruta+'\Fotos');
                  mkdir(ruta+'\Documentacion');
                  mkdir(ruta+'\Certificaciones');
                  if DirectoryExists(ruta) then ok:=True;

             end;
end;

procedure TFObras.FDObraAfterApplyUpdates(DataSet: TFDDataSet;
  AErrors: Integer);
    var ruta:string; existe:boolean;
  begin
if AErrors = 0 then
    begin
         DataSet.CommitUpdates;
         if (not FDlineasobra.UpdatesPending) and (not fdCertificacion.UpdatesPending) and (not fdlineasCertificaciones.UpdatesPending) then
            begin

            guardarobra.Enabled:=false;
            guardar.Enabled:=false;
            shape1.Brush.Color:=clwhite;
           DataModule1.RefrescarDataSet(lst);
            end;

            carpetasdocumentacion(ruta,existe);
            if existe then
            begin
                 if DirectoryExists(ruta) then
                 begin
                      spcarpetas.brush.color:=cllime;
                      shellDocumentacion1.Visible:=true;
                      ShellFotos.Visible:=true;
                      shellDocumentacion1.Folder.PathName:=ruta+'\Documentacion';
                      shellFotos.Folder.PathName:=ruta+'\Fotos';
                 end;
            end
            else  begin
                 spcarpetas.brush.color:=clred;
                  end;

            end;


    end;



procedure TFObras.FDObraAfterEdit(DataSet: TDataSet);
begin
Guardar.Enabled:=true;
Shape1.Brush.Color:=cllime;
end;

procedure TFObras.FDObraAfterInsert(DataSet: TDataSet);
begin

FDObra.FieldByName('id_cliente').AsInteger:=FDCliente.FieldByName('IdContactos').AsInteger;
                   fdobra.FieldByName('FechaComienzo').AsDateTime:=date;
                   fdobra.FieldByName('partidas').asinteger:=0;
                   fdobra.FieldByName('ImporteObra').AsFloat:=0;
                   fdobra.FieldByName('Ejecutado').Asboolean:=false;
Guardar.Enabled:=true;
Shape1.Brush.Color:=cllime;
end;

procedure TFObras.FDObraAfterPost(DataSet: TDataSet);
begin
//Guardar.Enabled:=false;
//Shape1.Brush.Color:=clwhite;

end;

procedure TFObras.fdqryContactosObraAfterDelete(DataSet: TDataSet);
begin
guardarobra.Enabled:=True;
     Guardar.Enabled:=true;
     shape1.Brush.Color:=cllime;
end;

procedure TFObras.fdqryContactosObraAfterEdit(DataSet: TDataSet);
begin
guardarobra.Enabled:=True;
     Guardar.Enabled:=true;
     shape1.Brush.Color:=cllime;
end;

procedure TFObras.fdqryContactosObraAfterInsert(DataSet: TDataSet);
begin
//fdqryContactosObraid_obra.AsInteger:=fdobra.FieldByName('id_obra').AsInteger;

guardar.Enabled:=True;
     Guardar.Enabled:=true;
     shape1.Brush.Color:=cllime;

end;

procedure TFObras.FDSchemaCertificacionesAfterApplyUpdate(Sender: TObject);
begin


with Sender as TFDSchemaAdapter do CommitUpdates;

       if  not TFDSchemaAdapter(Sender).UpdatesPending then
            begin
             FDlineasobra.First;
              while not FDlineasobra.eof do
              begin
                      //if  FDlineasobrapresupuestos_id_presupuesto.AsInteger=1 then
                         AsignarAlpresupuestoLaObra(FDlineasobraobras_ID_obra.asinteger, FDlineasobrapresupuestos_grupo.asinteger,FDlineasobrapresupuestos_id_presupuesto.asinteger,FDlineasobrapresupuestos_Id_Partida.asinteger);
                  FDlineasobra.Next;
              end;
             guardarobra.Enabled:=false;
             guardar.Enabled:=false;
              shape1.Brush.Color:=clwhite;
              self.Caption:='O. '+fdobra.FieldByName('id_obra').AsString+' '+fdCliente.FieldByName('nombre').Asstring;
            end;


end;

procedure TFObras.AsignarAlpresupuestoLaObra(obra,grupo,presu,partida:integer);
var fq1:TFDQuery;
begin

    try
     fq1:=TFDQuery.create(self);
     fq1.connection:=DataModule1.FDConnection1;
     fq1.close;
     fq1.SQL.clear;
     fq1.SQL.Add('UPDATE lineaspresupuesto SET  obra=:OBRA WHERE presupuestos_grupo=:GRUPO AND presupuestos_id_presupuesto=:PRESU AND id_partida=:PARTIDA ');

     fq1.ParamByName('OBRA').FDDataType:=dtInt16;
     fq1.ParamByName('GRUPO').FDDataType:=dtInt16;
     fq1.ParamByName('PRESU').FDDataType:=dtInt16;
     fq1.ParamByName('PARTIDA').FDDataType:=dtInt16;


     fq1.ParamByName('OBRA').Value:=obra;
     fq1.ParamByName('GRUPO').Value:=grupo;
     fq1.ParamByName('PRESU').Value:=presu;
     fq1.ParamByName('PARTIDA').Value:=partida;

     fq1.Prepare;
     if fq1.prepared then fq1.ExecSQL;
     fq1.Close;
     fq1.Free;

    except
          raise;
    end;
end;


procedure TFObras.FDSchemaCertificacionesReconcileRow(ASender: TObject;
  ARow: TFDDatSRow; var Action: TFDDAptReconcileAction);
begin
      ShowMessage(ARow.RowError.Message);

      case ARow.RowState of
       rsDeleted:  Action:=raCorrect;
       rsInserted: Action:=raMerge;
       rsModified: Action:= raCorrect;
      end;


end;

procedure TFObras.fltfldCertificacionretencionChange(Sender: TField);
begin
//edtEdRetencionEuros.Text:=FloatToStr(fltfldFDObraImporteObra.Value*(Sender.NewValue/100))
end;

procedure TFObras.fltfldCertificacionretencionValidate(Sender: TField);
begin
   //edtEdRetencionEuros.Text:=FloatToStr(fltfldFDObraImporteObra.Value*(Sender.Value/100))
end;

procedure TFObras.FormClose(Sender: TObject; var Action: TCloseAction);
begin

if (fdobra.UpdatesPending) or (fdlineasobra.UpdatesPending) or (fdCertificacion.UpdatesPending) or (fdlineasCertificaciones.UpdatesPending) then
       if Application.MessageBox('¿Guardar los cambios de la obra?','Guardar',MB_YESNO)=IDYES then
       begin
           GuardarClick(Sender);
       end
       else begin
           if FDlineasobra.active then fdlineasobra.CancelUpdates;
           if fdlineasCertificaciones.Active then fdlineasCertificaciones.CancelUpdates;
           if fdCertificacion.Active then fdCertificacion.CancelUpdates;
           if fdqryContactosObra.Active then fdqryContactosObra.CancelUpdates;
           if fdobra.Active then fdobra.CancelUpdates;
            end  ;


FDCliente.Close;
fdobra.close;
FDlineasobra.Close;
fdlineasCertificaciones.Close;
fdCertificacion.Close;
fdqryContactosObra.close;
fdqrycontactoscliente.Close;

Action:=caFree;
end;

procedure TFObras.GuardarClick(Sender: TObject);
begin

try

if fdobra.state in [dsInsert] then
begin
  fdobra.FieldByName('path').AsString:=DataModule1.ObtenerPathObra(fdcliente.fieldByName('Nombre').Asstring,fdobra.FieldByName('id_obra').AsInteger);

  if Length(fdobra.FieldByName('descripcion').asstring)=0 then fdobra.FieldByName('descripcion').asstring:='descripción';

end;

if (fdobra.state in [dsInsert,dsEdit]) then
 begin
   fdobra.post;
 end;




if (fdlineasobra.state in [dsEdit,dsInsert]) then
 begin
   fdlineasobra.post;
 end;



    if (fdCertificacion.State in [dsInsert,dsEdit]) then fdCertificacion.Post;


    if (fdlineasCertificaciones.State in [dsInsert,dsEdit]) then fdlineasCertificaciones.Post;

    if (fdqryContactosObra.state) in [dsInsert,dsEdit] then fdqryContactosObra.Post;



    if FDSchemaCertificaciones.UpdatesPending then
    begin
      FDSchemaCertificaciones.ApplyUpdates(1);
    end;

   

except
      raise;
end;
end;

procedure TFObras.guardarobraExecute(Sender: TObject);
begin
GuardarClick(Sender);
end;

procedure TFObras.LabeledEdit5Change(Sender: TObject);
begin
if FDObra.Active then
     begin
     labeledEdit14.Text:= floattostr((DataModule1.IVA(fdCliente.FieldByName('familia').Asinteger)-1)*100)+' %';
     labeledEdit13.Text:= floattostr((DataModule1.IVA(fdCliente.FieldByName('familia').Asinteger)-1)* fdobra.FieldByName('ImporteObra').Asfloat)+' €';
     labeledEdit11.Text:= floattostr(DataModule1.IVA(fdCliente.FieldByName('familia').Asinteger)* fdobra.FieldByName('ImporteObra').Asfloat)+' €';
     end
     else
     begin
         labeledEdit14.Text:= floattostr((IVADEFECTO - 1)*100)+' %';
         labeledEdit13.Text:= FloatToStr((IVADEFECTO - 1) * fdobra.FieldByName('ImporteObra').Asfloat)+' €';
         labeledEdit11.Text:= floattostr(IVADEFECTO * fdobra.FieldByName('ImporteObra').Asfloat)+' €';
     end;
end;

procedure TFObras.lbedCertOrigenChange(Sender: TObject);
begin

            {
if (StrToFloat(lbedCertOrigen.text) > fltfldFDObraImporteObra.value) and (fdobra.active) then
  begin
 ShowMessage('La certificación a origen no puede ser mayor que el coste de la obra.');
 lbedCertOrigen.Text:='0';

 end;

 if (fdlineasCertificaciones.State in [dsInsert,dsEdit]) then
 begin
 fdCertificacionesimporte.Value:=  strtofloat(lbedCertOrigen.Text) - strtofloat(lbedCertAnterior.text);



end;}
end;

procedure TFObras.lvcertificacionesDblClick(Sender: TObject);
begin
if fdlineasCertificaciones.active then fdlineasCertificaciones.Edit;
//lbedCertOrigen.Text:=fdCertificacionesImporteOrigen.AsString;

end;

procedure TFObras.PageControl1Change(Sender: TObject);
begin
  if TPageControl(Sender).ActivePageIndex = 4 then
   begin

   if not fdqrycontactoscliente.Active then
   begin
       fdqrycontactoscliente.ParamByName('idcliente').AsInteger:=fdCliente.FieldByName('idContactos').AsInteger;
       fdqrycontactoscliente.Open;
   end;

   if not fdqryContactosObra.Active then
   begin
       fdqryContactosObra.ParamByName('idobra').AsInteger:=fdtncfldFDObraID_obra.AsInteger;
       fdqryContactosObra.Open;
   end;
   end;


   if TPageControl(Sender).ActivePageIndex = 3 then
   begin


       if not fdCertificacion.Active then
         begin
             fdCertificacion.ParamByName('ID_obra').AsInteger:=fdobra.FieldByName('id_Obra').AsInteger;

             fdCertificacion.Active:=true;

         end;

         if fdCertificacion.RecordCount > 0 then
         begin
           if not fdlineasCertificaciones.Active then
            begin
           fdlineasCertificaciones.ParamByName('ID_CERT').AsInteger:=fdCertificacion.FieldByName('id_certificacion').AsInteger;
           fdlineasCertificaciones.Active:=True;
            end;
         end;

   end;
end;


procedure TFObras.rDBGridClientes1FooterCellClick(Sender: TObject;
  ACol: Integer; Column: TColumn);
begin
   ShowMessage(Column.Field.AsString);
end;

procedure TFObras.abrircarpetaExecute(Sender: TObject);
var ruta:string;
begin
 ruta:= ExtractfilePath(PATHUSER+fdobra.fieldbyname('path').asstring);

      if DirectoryExists(ruta) then

      ShellExecute(0, 'open', nil, nil, Pchar(ruta), SW_SHOW)
      else
      showmessage('El directorio de la obra no existe.');
end;

procedure TFObras.abrirpresupuestoExecute(Sender: TObject);
var pres:Tpresupuesto;
begin
pres:=Tpresupuesto.Create;
pres.grupo:=FDlineasobrapresupuestos_grupo.AsInteger;
pres.Npresupuesto:=FDlineasobrapresupuestos_id_presupuesto.AsInteger;

DataModule1.editarpresupuesto2Execute(pres);
pres.Free;
end;

procedure TFObras.abrirpresupuestoUpdate(Sender: TObject);
begin
(Sender as TAction).Enabled:=not FDlineasobra.FieldByName('presupuestos_Id_presupuesto').IsNull;
end;

procedure TFObras.actBorrarCertificacionExecute(Sender: TObject);
begin
if not (fdCertificacion.State in [dsEdit,dsInsert]) then
 begin
 if not fdcertificacion.IsEmpty then  fdCertificacion.Delete;

   Guardar.Enabled:=True;
   Shape1.Brush.Color:=clLime;
 end;
end;

procedure TFObras.actBorrarCertificacionUpdate(Sender: TObject);
begin
(Sender as TAction).Enabled:=(not(fdCertificacion.State in [dsInsert, dsEdit])) and (not(fdCertificacion.IsEmpty));
end;

procedure TFObras.actBorrarLineaCertificacionExecute(Sender: TObject);
begin
if not (fdlineasCertificaciones.State in [dsInsert,dsEdit]) then
if not fdlineasCertificaciones.IsEmpty then fdlineasCertificaciones.Delete;
end;

procedure TFObras.actBorrarLineaCertificacionUpdate(Sender: TObject);
begin
(Sender as TAction).Enabled:=(not (fdlineasCertificaciones.State in [dsInsert,dsEdit])) and (not(fdlineasCertificaciones.IsEmpty));
end;

procedure TFObras.actFacturarExecute(Sender: TObject);
var SelLinObras:TFLineasObrasFacturas;
begin
    SelLinObras:=TFLineasObrasFacturas.Create(FDObra);
    SelLinObras.ShowModal;

end;

procedure TFObras.actGuardarCertificacionExecute(Sender: TObject);
begin


if (fdCertificacion.State in [dsEdit,dsInsert]) then
begin
  fdCertificacion.Post;

end;
if (fdlineasCertificaciones.State in [dsEdit,dsInsert]) then
begin
  fdlineasCertificaciones.Post;

end;
end;

procedure TFObras.actGuardarCertificacionUpdate(Sender: TObject);
begin
(Sender as TAction).Enabled:=(fdlineasCertificaciones.State in [dsInsert, dsEdit]) or (fdCertificacion.State in [dsInsert,dsEdit]);
end;

procedure TFObras.actNuevaCertificacionExecute(Sender: TObject);
begin

if fdCertificacion.recordcount < 1 then
begin
  fdCertificacion.Insert;
  // fdCertificacion.FieldByName('obras_ID_obra').AsInteger:=FDObra.FieldByName('ID_Obra').asinteger;
   fdCertificacion.FieldByName('retencion').Asinteger:=10;
   fdCertificacion.FieldByName('fechaFinretencion').AsDateTime:=Date;
   fdCertificacion.FieldByName('descripcion').AsString:= FDObra.FieldByName('Descripcion').asstring;

  if not fltfldFDObraImporteObra.IsNull then fdCertificacion.FieldByName('total').AsFloat:=fltfldFDObraImporteObra.AsFloat
  else
  fdCertificacion.FieldByName('total').AsFloat:=0;
  fdCertificaciontotalretencion.AsFloat:=fltfldCertificaciontotal.AsFloat * (fltfldCertificacionretencion.AsFloat/100);
                                                           fdCertificacion.FieldByName('importecertificado').Asfloat:=0;
                                                           fdCertificacion.FieldByName('importeFalta').Asfloat:=fdCertificacion.FieldByName('total').AsFloat;;

  fdCertificacion.Post;

  if not fdlineasCertificaciones.Active then
            begin
           fdlineasCertificaciones.ParamByName('ID_CERT').AsInteger:=fdCertificacion.FieldByName('id_certificacion').AsInteger;
           fdlineasCertificaciones.Active:=True;
            end;

end;


 

if not (fdlineasCertificaciones.State in [dsEdit,dsInsert]) then
begin
  fdlineasCertificaciones.Insert;

end;
end;

procedure TFObras.actNuevaCertificacionUpdate(Sender: TObject);
begin
    (Sender as Taction).Enabled:=(not (fdlineasCertificaciones.State in [dsInsert, dsEdit]))       ;
end;

procedure TFObras.blnfldFDObraEjecutadoChange(Sender: TField);
begin
      if Sender.AsBoolean then spEjecutado.Brush.Color:=clLime
       else spEjecutado.Brush.Color:=clRed;

end;

procedure TFObras.BTBuscarClienteClick(Sender: TObject);
var lclientes:Tlistclientes; fdclen:TfdQuery;
begin
    fdclen:=TFDQuery.Create(Sender as TControl);
    fdclen.Connection:=DataModule1.FDConnection1;
    fdclen.SQL.Add('Select c.idContactos, c.nombre, c.CIF, c.direccion, c.CodigoPostal, c.Ciudad, a.nombreapellidos,c.idAdministrador from clientes c, administradores a where c.idAdministrador=a.idAdministrador order by c.idAdministrador,c.nombre');
    fdclen.IndexFieldNames:='idAdministrador;nombre';
    fdclen.Active:=true;

    lclientes:=Tlistclientes.Create(fdclen);
    lclientes.DragMode:=dmManual;
    lclientes.ShowModal;

    fdcliente.Close;
    fdcliente.ParamByName('id_cliente').AsInteger:=fdclen.FieldByName('IdContactos').AsInteger;
    fdcliente.Active:=true;
    fdclen.Close;

    if FDObra.State in [dsInsert,dsEdit] then
    begin
         FDObra.FieldByName('Id_cliente').AsInteger:=FDCliente.FieldByName('IdContactos').AsInteger
    end
    else begin
              FDObra.Edit;
              FDObra.FieldByName('Id_cliente').AsInteger:=FDCliente.FieldByName('IdContactos').AsInteger;
              FDObra.Post;
         end;

     Self.Caption:='O. '+fdobra.FieldByName('id_obra').AsString+' '+fdCliente.FieldByName('nombre').Asstring;

end;

procedure TFObras.btn5Click(Sender: TObject);
begin
DataModule1.editarclienteExecute(fdcliente);
end;

procedure TFObras.btnAceptarClick(Sender: TObject);
begin
GuardarClick(Sender);
  Close;
end;

procedure TFObras.btnGuardarCertificacionClick(Sender: TObject);
begin


if (fdCertificacion.State in [dsEdit,dsInsert]) then
begin
  fdCertificacion.Post;
  //btnGuardarCertificacion.Enabled:=False;
end;
if (fdlineasCertificaciones.State in [dsEdit,dsInsert]) then
begin
  fdlineasCertificaciones.Post;
  //btnGuardarCertificacion.Enabled:=False;
end;


end;

procedure TFObras.btnNuevaCertiClick(Sender: TObject);
begin

if fdCertificacion.recordcount < 1 then
begin
  fdCertificacion.Insert;
   fdCertificacion.FieldByName('obras_ID_obra').AsInteger:=FDObra.FieldByName('ID_Obra').asinteger;
   fdCertificacion.FieldByName('retencion').Asinteger:=10;
   fdCertificacion.FieldByName('fechaFinretencion').AsDateTime:=IncMonth(Date,6);
   fdCertificacion.FieldByName('descripcion').AsString:= FDObra.FieldByName('Descripcion').asstring;
  fdCertificacion.Post;

  if not fdlineasCertificaciones.Active then
            begin
           fdlineasCertificaciones.ParamByName('ID_CERT').AsInteger:=fdCertificacion.FieldByName('id_certificacion').AsInteger;
           fdlineasCertificaciones.Active:=True;
            end;

end;


 if not fdlineasCertificaciones.IsEmpty then

 if fdlineasCertificaciones.Aggregates.Items[1].Value <= fdCertificacionesfechacertificacion.Value then
begin
  ShowMessage('No se puede certificar con la misma fecha o anterior');
  Exit;
end;


if fdlineasCertificaciones.Aggregates.Items[0].Value >= fltfldFDObraImporteObra.Value   then
begin
ShowMessage('La certificación esta completa. No se puede certificar mas Importe');
Exit;
end;

if not (fdlineasCertificaciones.State in [dsEdit,dsInsert]) then
begin
  fdlineasCertificaciones.Insert;
  fdlineasCertificaciones.FieldByName('certificacion_id_certificacion').AsInteger:=fdCertificacion.FieldByName('id_certificacion').AsInteger;
  //btnNuevaCerti.Enabled:=False;
end;
end;

procedure TFObras.BTpathClick(Sender: TObject);
var ruta:string;  posicion:integer;
begin
{
dialruta.InitialDir:=PATHDOCOBRAS;

if dialruta.Execute then
          begin

               if not (fdobra.State in [dsEdit, dsInsert]) then  fdobra.edit;

                    posicion:=pos('OBRAS', dialruta.FileName);
                    ruta:=copy(dialruta.FileName,posicion-1,length(dialruta.FileName));
                    fdobra.FieldByName('path').Asstring:=ruta;
                   // labelededit8.Text:=ruta;
                    //fdobra.post;


          end;
 }
 ruta:=PATHDOCOBRAS;
 if SelectDirectory(ruta, [sdAllowCreate, sdPerformCreate, sdPrompt],1000) then
    rDBRuta.Text := ruta;

end;

procedure TFObras.carpetadocumentacionExecute(Sender: TObject);
var ruta:string;
begin
if not DirectoryExists(PATHDOCOBRAS) then
      begin
        showmessage('El directorio OBRAS no existe.');
                exit;
      end;

  ruta:= PATHDOCOBRAS+'\'+fdcliente.FieldByName('nombre').asstring+'\'+fdobra.fieldbyname('id_obra').asstring;


      if DirectoryExists(ruta) then

      ShellExecute(0, 'open', nil, nil, Pchar(ruta), SW_SHOW)

      else if application.MessageBox('El directorio de la documentación de la  obra no existe. ¿Desea crearlo?', 'Aviso',(MB_OKCANCEL+MB_ICONQUESTION))=IDOK      then
      begin
         if not DirectoryExists(PATHDOCOBRAS+'\'+fdcliente.FieldByName('nombre').asstring) then
         mkdir(PATHDOCOBRAS+'\'+fdcliente.FieldByName('nombre').asstring)  ;
         mkdir(ruta);
         mkdir(ruta+'\Fotos');
         mkdir(ruta+'\Documentacion');
         if DirectoryExists(ruta) then
         begin
          spcarpetas.Brush.Color:=cllime;
          shellDocumentacion1.Enabled:=True;
          ShellFotos.Enabled:=True;

          shellDocumentacion1.Folder.PathName:=ruta+'\Documentacion';
          ShellFotos.Folder.PathName:=ruta+'\Fotos';

           
          showmessage('El directorio se ha creado con exito.');

         end
         else  showmessage('No se ha podido crear el directorio para la documentación de la obra.');

      end;

end;

procedure TFObras.cerrarClick(Sender: TObject);

begin

       Close;

  end;

procedure TFObras.cerrarpresExecute(Sender: TObject);
begin
cerrarClick(Sender);
end;

procedure TFObras.StringGrid1Click(Sender: TObject);
var Pt:TPoint;   coord:  TGridCoord;    presu:Tpresupuesto;
begin
              pt:=(Sender as TStringGrid).ScreenToClient(Mouse.CursorPos);
    coord:=(Sender as TStringGrid).MouseCoord(pt.X,pt.y);

    if (coord.X=3) or (coord.X=4) then
    begin
      presu:=Tpresupuesto.Create;
      presu.NPresupuesto:=FDlineasobra.FieldByName('presupuestos_id_presupuesto').AsInteger;
      presu.grupo:=FDlineasobra.FieldByName('presupuestos_grupo').AsInteger;
      DataModule1.editarpresupuesto2Execute(presu);
      presu.Free;
    end;

end;

procedure TFObras.StringGrid1Exit(Sender: TObject);
begin
    if FDlineasobra.State in [dsEdit,dsInsert] then      fdlineasobra.Post;
end;

procedure TFObras.StringGrid1GetEditText(Sender: TObject; ACol, ARow: Integer;
  var Value: string);
begin
if not (FDlineasobra.State in [dsInsert,dsEdit]) then fdlineasobra.edit;

Value:=Value;
end;

procedure TFObras.StringGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key= VK_ESCAPE then FDlineasobra.cancel;
end;

procedure TFObras.StringGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if ((Sender as Tstringgrid).col=2) and (key='.') then
      Key:=',';

if (key=#13) then fdlineasobra.post;
end;

procedure TFObras.StringGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=40 then
            if (Sender as TStringGrid).Row=(Sender as TStringGrid).RowCount-1 then
                   if not (fdlineasobra.State  in [dsInsert]) then
                      fdlineasobra.Append;
end;

procedure TFObras.StringGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  var Col,Row:integer;
begin
       (Sender as TStringGrid).MouseToCell(X,Y,Col,Row);
    if not (FDlineasobra.state in [dsInsert, dsEdit]) and (Row<>-1)then  RowAct:=Row;

    if (Col=3) or (Col = 4)then (Sender as TStringGrid).Canvas.Font.Style:=[fsunderline];


end;

procedure TFObras.StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
 CanSelect:=true;
  if Acol=5 then CanSelect:=false;
end;

procedure TFObras.ud1ChangingEx(Sender: TObject; var AllowChange: Boolean;
  NewValue: Integer; Direction: TUpDownDirection);
begin
{
AllowChange:=True; {
if not fdCertificacion.IsEmpty then
if not (fdCertificacion.State in [dsInsert,dsEdit]) then
begin
 fdCertificacion.Edit;
 fltfldCertificacionretencion.Value:=NewValue;
 fdCertificacion.Post;
end;
{edtEdRetencionEuros.Text:=FloatToStr(fltfldFDObraImporteObra.Value*(newValue/100));}
end;

procedure TFObras.ud1Click(Sender: TObject; Button: TUDBtnType);
begin
if not fdCertificacion.IsEmpty then
if not (fdCertificacion.State in [dsInsert,dsEdit]) then
begin
 fdCertificacion.Edit;
 //fltfldCertificacionretencion.Value:=ud1.Position;
 fdCertificacion.Post;
end;
//edtEdRetencionEuros.Text:=FloatToStr(fltfldFDObraImporteObra.Value*(ud1.Position/100));
end;

procedure TFObras.edtRetencionChange(Sender: TObject);
begin
{
lbedCertOrigenChange(Sender);

if not fdCertificacion.IsEmpty then

if not (fdCertificacion.State in [dsInsert,dsEdit]) then
begin
 fdCertificacion.Edit;
 fltfldCertificacionretencion.Value:=ud1.Position;
 fdCertificacion.Post;
end;
edtEdRetencionEuros.Text:=FloatToStr(fltfldFDObraImporteObra.Value*(ud1.position/100));
 }

end ;







procedure TFObras.EjecutadoFechaFinlineaExecute(Sender: TObject);
begin
FDlineasobra.Edit;
FDlineasobra.FieldByName('ejecutado').AsBoolean:=True;
FDlineasobra.FieldByName('fechafin').AsDateTime:=date;
FDlineasobra.Post;

end;

procedure TFObras.EjecutadoFechaFinlineaUpdate(Sender: TObject);
begin
(Sender as TAction).Enabled:=FDlineasobra.RecordCount > 0;
end;

procedure TFObras.existelineasterminadas(dataset:TDataSet; var nlineas:integer);
var qy:TFDMemTable;
begin
     qy:=TFDMemTable.Create(Self);

    qy.CopyDataSet(dataset,[coStructure,coRestart,coAppend]);
    qy.Active:=true;
    qy.Filter:='ejecutado = true';
    qy.Filtered:=true;
    nlineas:=qy.RecordCount;
    qy.Active:=false;
    qy.free;
end;

procedure TFObras.fdCertificacionAfterApplyUpdates(DataSet: TFDDataSet;
  AErrors: Integer);
begin
if AErrors = 0 then
         begin
          DataSet.CommitUpdates;
         if (not fdobra.UpdatesPending) and (not FDlineasobra.UpdatesPending) and (not fdlineasCertificaciones.UpdatesPending)then
            begin
             guardarobra.Enabled:=false;
             guardar.Enabled:=false;
              shape1.Brush.Color:=clwhite;

            end;
end;
end;

procedure TFObras.fdCertificacionAfterEdit(DataSet: TDataSet);
begin
//btnGuardarCertificacion.Enabled:=True;
Guardar.Enabled:=true;
Shape1.Brush.Color:=cllime;

end;

procedure TFObras.fdCertificacionAfterInsert(DataSet: TDataSet);
begin


   Guardar.Enabled:=true;
Shape1.Brush.Color:=cllime;

end;

procedure TFObras.fdCertificacionesimporteChange(Sender: TField);
begin
if Sender.DataSet.State in [dsInsert] then fdCertificacionesImporteOrigen.AsFloat:=fdCertificacionimportecertificado.AsFloat+fdcertificacionesimporte.AsFloat
 else
  if Sender.DataSet.State in [dsEdit] then fdCertificacionesImporteOrigen.AsFloat:=fdCertificacionesImporteOrigen.AsFloat+fdcertificacionesimporte.AsFloat;




end;

end.

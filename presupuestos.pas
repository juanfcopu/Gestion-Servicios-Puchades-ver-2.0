unit presupuestos;

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
  System.ImageList, ShellCtrls, rDBGrid, rDBGrid_MS, RzPanel, RzDBNav, Vcl.Mask,
  Vcl.DBCtrls, rDBComponents, RzListVw, RzShellCtrls, rImageZoom,
  Vcl.Imaging.jpeg, rImprovedComps;


type
  TStado=(mInsertar,mEditar);

  TFPresupuestos = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox2: TGroupBox;
    PageControl1: TPageControl;
    lineas: TTabSheet;
    documentacion: TTabSheet;
    fotografias: TTabSheet;
    fdCliente: TFDQuery;
    fdpresupuesto: TFDQuery;
    fdlineas1: TFDQuery;
    ControlBar2: TControlBar;
    dialruta: TOpenDialog;
    spaprobado: TShape;
    spNoaprobado: TShape;
    spcarpetas: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ActionManager1: TActionManager;
    abrircarpeta: TAction;
    abrirpresupuesto: TAction;
    guardarpresupuesto: TAction;
    guardarPDF: TAction;
    mail: TAction;
    ToolButton9: TToolButton;
    cerrarpres: TAction;
    ToolButton10: TToolButton;
    carpetadocumentacion: TAction;
    dspresupuesto: TDataSource;
    BTBuscarCliente: TButton;
    btpath: TButton;
    ToolBar2: TToolBar;
    ImageList1: TImageList;
    ActionManager2: TActionManager;
    ToolButton11: TToolButton;
    EditCopy: TEditCopy;
    EditCut: TEditCut;
    EditPaste: TEditPaste;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolBar3: TToolBar;
    ToolButton14: TToolButton;
    AprobarTodos: TAction;
    GroupBox3: TGroupBox;
    GroupBox5: TGroupBox;
    Shape1: TShape;
    Guardar: TButton;
    Aceptar: TButton;
    cerrar: TButton;
    spdocumento: TShape;
    Label13: TLabel;
    fdClienteidcontactos: TFDAutoIncField;
    fdClientenombre: TStringField;
    fdClientecif: TStringField;
    fdClientefamilia: TIntegerField;
    crearObra: TAction;
    dslineas: TDataSource;
    RzDBNavigator1: TRzDBNavigator;
    rDBCodigo: TrDBEdit;
    dscliente: TDataSource;
    rDBCIF: TrDBEdit;
    rDBNombre: TrDBEdit;
    rDBNumero: TrDBEdit;
    rDBRutaPath: TrDBMemo;
    rDBRutaDescripcion: TrDBMemo;
    rDBDateTimePicker1: TrDBDateTimePicker;
    btn1: TToolButton;
    ts1: TTabSheet;
    ctrlbr1: TControlBar;
    tlb1: TToolBar;
    btn2: TToolButton;
    btn3: TToolButton;
    btn4: TToolButton;
    tlb2: TToolBar;
    btn5: TToolButton;
    RzDBNavigator2: TRzDBNavigator;
    rDBGrid1: TrDBGrid;
    rDBGridClientesDBGridLineas: TrDBGrid_MS;
    fdqryContactosPresupuesto: TFDQuery;
    fdpresupuestoid_presupuesto: TIntegerField;
    fdpresupuestoId_ClientePrev: TIntegerField;
    mfldDescripcion: TMemoField;
    mfldPath: TMemoField;
    blnfldAprovado: TBooleanField;
    blnfldEjecutado: TBooleanField;
    dtmfldFechaPresupuesto: TDateTimeField;
    fltfldTotal: TFloatField;
    fdpresupuestoPartidas: TIntegerField;
    fltfldTotalAprobado: TFloatField;
    mfldDescripcionAprovado: TMemoField;
    fdpresupuestogrupo: TIntegerField;
    fdpresupuestopartidasAprobadas: TIntegerField;
    mfldfdpresupuestoobservaciones: TMemoField;
    fdqryContactosPresupuestoid_presupuesto: TIntegerField;
    fdqryContactosPresupuestoid_contacto: TIntegerField;
    fdqrycontactoscliente: TFDQuery;
    fdqryContactosPresupuestopta: TStringField;
    fdqryContactosPresupuestonombre: TStringField;
    fdqryContactosPresupuestotelefono1: TIntegerField;
    fdqryContactosPresupuestotelefono2: TIntegerField;
    fdqryContactosPresupuestotelefono3: TIntegerField;
    fdqryContactosPresupuestomail: TStringField;
    dsContactosPresupuesto: TDataSource;
    fdlineas1Id_Partida: TIntegerField;
    fdlineas1Descripcion: TStringField;
    fdlineas1Total: TFloatField;
    fdlineas1Aprovado: TBooleanField;
    fdlineas1Ejecutado: TBooleanField;
    fdlineas1presupuestos_id_presupuesto: TIntegerField;
    fdlineas1presupuestos_grupo: TIntegerField;
    fdlineas1obra: TIntegerField;
    fdlineas1fecha_aprobado: TDateField;
    FDSchemaAdapter1: TFDSchemaAdapter;
    Fdlineas: TFDQuery;
    FdlineasId_Partida: TIntegerField;
    FdlineasDescripcion: TStringField;
    FdlineasTotal: TFloatField;
    FdlineasAprovado: TBooleanField;
    FdlineasEjecutado: TBooleanField;
    Fdlineaspresupuestos_id_presupuesto: TIntegerField;
    Fdlineaspresupuestos_grupo: TIntegerField;
    Fdlineasobra: TIntegerField;
    Fdlineasfecha_aprobado: TDateField;
    RzShellList1: TRzShellList;
    RzShellList2: TRzShellList;
    rDBGrid2: TrDBGrid;
    fdqryContactosPresupuestogrupo: TIntegerField;
    Fdlineasdiasejecucion: TIntegerField;
    rDBEdit1: TrDBEdit;
    GroupBox6: TGroupBox;
    rDBMemo2: TrDBMemo;
    rdbtrabajAsig: TrDBGrid_MS;
    fdtrabajAsignados: TFDQuery;
    dstrabajAsignados: TDataSource;
    fdtrabajadores: TFDQuery;
    fdtrabajAsignadosid_presupuesto: TIntegerField;
    fdtrabajAsignadosgrupo: TIntegerField;
    fdtrabajAsignadosid_trabajador: TIntegerField;
    fdtrabajAsignadosnombre: TStringField;
    ToolBar4: TToolBar;
    RzDBNavigator3: TRzDBNavigator;
    rImageZoom1: TrImageZoom;
    Fdlineastipo: TStringField;
    fdcategoria: TFDQuery;
    Fdlineascategoria: TIntegerField;
    Fdlineascategoriades: TStringField;



    procedure GuardarClick(Sender: TObject);
    procedure AceptarClick(Sender: TObject);
    procedure cerrarClick(Sender: TObject);
    procedure fdlineas1AfterEdit(DataSet: TDataSet);
    procedure fdlineas1AfterInsert(DataSet: TDataSet);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure fdpresupuestoAfterEdit(DataSet: TDataSet);
    procedure fdpresupuestoAfterInsert(DataSet: TDataSet);
    procedure fdlineasAfterApplyUpdates(DataSet: TFDDataSet; AErrors: Integer);
    procedure fdpresupuestoAfterApplyUpdates(DataSet: TFDDataSet;
      AErrors: Integer);
    procedure abrircarpetaExecute(Sender: TObject);
    procedure abrirpresupuestoExecute(Sender: TObject);
    procedure guardarpresupuestoExecute(Sender: TObject);
    procedure guardarPDFExecute(Sender: TObject);
    procedure mailExecute(Sender: TObject);
    procedure cerrarpresExecute(Sender: TObject);
    procedure carpetadocumentacionExecute(Sender: TObject);
    procedure fdlineas1AfterDelete(DataSet: TDataSet);
    procedure BTBuscarClienteClick(Sender: TObject);
    procedure btpathClick(Sender: TObject);
    procedure fdClienteAfterOpen(DataSet: TDataSet);
    procedure fdlineas1AfterPost(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox1Mouseup(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AprobarTodosExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure abrircarpetaUpdate(Sender: TObject);
    procedure abrirpresupuestoUpdate(Sender: TObject);
    procedure guardarPDFUpdate(Sender: TObject);
    procedure mailUpdate(Sender: TObject);
    procedure carpetadocumentacionUpdate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure crearObraUpdate(Sender: TObject);
    procedure crearObraExecute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure fdlineasAprovadoChange(Sender: TField);
    procedure fdlineas1AfterOpen(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure fdqryContactosPresupuestoAfterApplyUpdates(DataSet: TFDDataSet;
      AErrors: Integer);
    procedure fdqryContactosPresupuestoAfterInsert(DataSet: TDataSet);
    procedure fdqryContactosPresupuestoAfterEdit(DataSet: TDataSet);
    procedure fdqryContactosPresupuestoAfterDelete(DataSet: TDataSet);
    procedure rDBGridClientesDBGridLineasLoadPickList(Sender: TObject;
      DS: TDataSet; FieldName: string; PickList: TStrings);
    procedure FDSchemaAdapter1AfterApplyUpdate(Sender: TObject);
    procedure dtmfldFechaPresupuestoChange(Sender: TField);
    procedure mfldPathChange(Sender: TField);
    procedure RzShellList2SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);

  private
    { Private declarations }
     lst:TStringlist;

  public
    { Public declarations }
    RowAct:integer;
    cargando:boolean;
    procedure carpetasdocumentacion(var ruta:string; var ok:boolean);
    procedure existelineasaprobados(dataset:TDataSet; var nlineas:integer);
    procedure luces(aprobado:boolean);

//    function CrearFicheroPresupuesto(fichero:string):boolean;
  end;



var
  FPresupuestos: TFPresupuestos;

implementation

{$R *.dfm}

uses DModule1, listaclientes, SelectLineasPresupuestos, plantillaspresupuestos;


 procedure TFPresupuestos.luces(aprobado:boolean);
 begin
    if aprobado then
                    begin
                     spaprobado.Brush.Color:=cllime;
                     spnoaprobado.Brush.Color:=clred;
                    end
                     else begin
                      spaprobado.Brush.Color:=clred;
                      spnoaprobado.Brush.Color:=cllime;
                      end;
 end;

procedure TFPresupuestos.existelineasaprobados(dataset:TDataSet; var nlineas:integer);
var qy:TFDMemTable;
begin
     qy:=TFDMemTable.Create(Self);

    qy.CopyDataSet(dataset,[coStructure,coRestart,coAppend]);
    qy.Active:=true;
    qy.Filter:='Aprovado = true';
    qy.Filtered:=true;
    nlineas:=qy.RecordCount;
    qy.Active:=false;
    qy.free;
end;

procedure TFPresupuestos.abrircarpetaExecute(Sender: TObject);
var ruta:string;
begin
      ruta:= ExtractfilePath(PATHUSER+fdpresupuesto.fieldbyname('path').asstring);

      if DirectoryExists(ruta) then

      ShellExecute(0, 'open', nil, nil, Pchar(ruta), SW_SHOW)
      else
      showmessage('El directorio de presupuestos no existe.');
end;

procedure TFPresupuestos.abrircarpetaUpdate(Sender: TObject);
begin
   ToolButton8.Enabled:=FileExists(PATHUSER+fdpresupuesto.FieldByName('path').AsString);
end;


//
//function TFPresupuestos.CrearFicheroPresupuesto(fichero:string):boolean;
//var MSWord:Variant;
//begin
//      Result:=false;
//     try
//            MSWord:=GetActiveOleOBject('Word.Application');
//         except
//            MsWord:=CreateOleObject('Word.Application');
//
//         end;
//
//         MSWord.Documents.Add(PATHPROGRAM+PATHPLANTILLAS);
//         MSWord.ActiveDocument.SaveAs(fichero);
//         MsWord.Visible:=True;
//         Result:=true;
//end;


procedure TFPresupuestos.crearObraExecute(Sender: TObject);
var SelLinPres:TFLineasPresupuestoObra;
begin
    SelLinPres:=TFLineasPresupuestoObra.Create(fdpresupuesto);
    SelLinPres.ShowModal;



end;

procedure TFPresupuestos.crearObraUpdate(Sender: TObject);
begin
ToolButton5.Enabled:=fdpresupuesto.FieldByName('Aprovado').AsBoolean;
end;

procedure TFPresupuestos.abrirpresupuestoExecute(Sender: TObject);
var extension,fichero,archivo,exten:string;      planpresu:TFPlantillasPresupuestos;
begin

  try
 fichero:=PATHUSER+fdpresupuesto.FieldByName('path').AsString;

 extension:=ExtractFileExt(fichero);


if not DataModule1.AbrirFicheroPresupuesto(fichero,extension) then
   if application.MessageBox('El presupuesto no existe. �Desea crearlo?', 'Aviso',(MB_OKCANCEL+MB_ICONQUESTION))=IDOK      then
      begin
         planpresu:=TFPlantillasPresupuestos.Create(Self);
         planpresu.ShowModal;
         archivo:=planpresu.rStringGridEd1.Cells[1,planpresu.rStringGridEd1.Row];

         exten:=ExtractFileExt(archivo);
         delete(fichero,Pos(extension,fichero),Length(extension));
         fichero:=fichero+exten;

         if DataModule1.CrearFicheroPresupuesto(fichero,archivo) then
         begin
         delete(fichero,Pos(PATHUSER,fichero),Length(PATHUSER));

         fdpresupuesto.Edit;
         fdpresupuesto.FieldByName('path').AsString:=fichero;
         fdpresupuesto.Post;
         spdocumento.Brush.color:=cllime;
         end;
      end;
  except

  end;
end;

procedure TFPresupuestos.abrirpresupuestoUpdate(Sender: TObject);
begin
 ToolButton6.Enabled:=not (fdpresupuesto.State in [dsInsert])
end;

procedure TFPresupuestos.AceptarClick(Sender: TObject);
begin
  GuardarClick(Sender);
  Close;
end;

procedure TFPresupuestos.AprobarTodosExecute(Sender: TObject);
begin
      fdlineas.First;
      while not fdlineas.eof do
      begin
        fdlineas.Edit;
        fdlineas.FieldByName('aprovado').AsBoolean:=true;
        fdlineas.post;
        fdlineas.next;
      end;



    
end;


procedure TFPresupuestos.BTBuscarClienteClick(Sender: TObject);
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

    if fdpresupuesto.State in [dsInsert,dsEdit] then
    begin
         fdpresupuesto.FieldByName('Id_clientePrev').AsInteger:=FDCliente.FieldByName('idContactos').AsInteger
    end
    else begin
              FDpresupuesto.Edit;
              FDpresupuesto.FieldByName('Id_clientePrev').AsInteger:=FDCliente.FieldByName('idContactos').AsInteger;
              FDpresupuesto.Post;
         end;

     Self.Caption:='P. '+fdpresupuesto.FieldByName('id_presupuesto').AsString+' '+fdCliente.FieldByName('nombre').Asstring;

end;

procedure TFPresupuestos.btn1Click(Sender: TObject);
begin
DataModule1.editarclienteExecute(fdcliente);


end;

procedure TFPresupuestos.btpathClick(Sender: TObject);
var posicion:integer; ruta:string;
begin

dialruta.InitialDir:=PATHDOCPRESUPUESTOS;

  if dialruta.Execute then
          begin
               if fdpresupuesto.State in [dsbrowse] then
               begin
                    fdpresupuesto.Edit;
               end;
               if fdpresupuesto.State in [dsEdit, dsInsert] then
               begin
                    posicion:=pos('PRESUPUESTOS', dialruta.FileName);
                    ruta:=copy(dialruta.FileName,posicion-1,length(dialruta.FileName));
                    fdpresupuesto.FieldByName('path').Asstring:=ruta;


               end;

              if fdpresupuesto.State in [dsEdit] then fdpresupuesto.Post;


          end;

end;

procedure TFPresupuestos.carpetadocumentacionExecute(Sender: TObject);
var ruta:string;
begin
      if not DirectoryExists(PATHDOCPRESUPUESTOS) then
      begin
        showmessage('El directorio PRESUPUESTOS no existe.');
        exit;
      end;

  ruta:= PATHDOCPRESUPUESTOS+'\'+fdpresupuesto.fieldbyname('id_presupuesto').asstring+IntToStr(YearOf(fdpresupuesto.fieldbyname('FechaPresupuesto').asdatetime));



      if DirectoryExists(ruta) then

      ShellExecute(0, 'open', nil, nil, Pchar(ruta), SW_SHOW)

      else if application.MessageBox('El directorio de la documentaci�n del  presupuesto no existe. �Desea crearlo?', 'Aviso',(MB_OKCANCEL+MB_ICONQUESTION))=IDOK      then
      begin
         mkdir(ruta);
         mkdir(ruta+'\Fotos');
         mkdir(ruta+'\Documentacion');
         if DirectoryExists(ruta) then
         begin
          spcarpetas.Brush.Color:=cllime;
          rzShellList1.Enabled:=True;
          rzShellList2.Enabled:=True;

          rzShellList1.Folder.PathName:=ruta+'\Documentacion';
          rzShellList2.Folder.PathName:=ruta+'\Fotos';
          showmessage('El directorio se ha creado con exito.');

         end
         else  showmessage('No se ha podido crear el directorio para la documentaci�n del presupuesto.');

      end;



end;

procedure TFPresupuestos.carpetadocumentacionUpdate(Sender: TObject);
begin
ToolButton10.Enabled:=  not (fdpresupuesto.State in [dsInsert]);
end;

procedure TFPresupuestos.cerrarClick(Sender: TObject);
begin
   if (fdpresupuesto.UpdatesPending) or (fdlineas.UpdatesPending)  then
       if Application.MessageBox('�Guardar los cambios del presupuesto?','Guardar',MB_YESNO)=IDYES then
       begin
           GuardarClick(Sender);
       end
       else begin
            fdlineas.CancelUpdates;
            end;
       Close;
end;


procedure TFPresupuestos.cerrarpresExecute(Sender: TObject);
begin
cerrarClick(Sender);
end;

procedure TFPresupuestos.CheckBox1Click(Sender: TObject);
begin
       if not (fdlineas.State in [dsEdit,dsInsert]) and (not cargando) then
       begin
            fdlineas.RecNo:=RowAct;
            if fdlineas.FieldByName('obra').isnull then
            begin
            fdlineas.Edit;
            fdlineas.FieldByName('Aprovado').AsBoolean:=(Sender as TCheckBox).Checked;
            fdlineas.post;
            end
            else  ShowMessage('La partida ya tiene asignada una obra, no se puede modificar.');

             (Sender as TCheckBox).Checked:= fdlineas.FieldByName('Aprovado').AsBoolean;
       end;
end;

procedure TFPresupuestos.CheckBox1Mouseup(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     if Button= mbLeft then

     if not (fdlineas.State in [dsEdit,dsInsert]) then
       begin
             fdlineas.Edit;
             fdlineas.FieldByName('Aprovado').AsBoolean:=(Sender as TCheckBox).Checked;
             fdlineas.post;
       end;
end;

procedure TFPresupuestos.CheckBox2Click(Sender: TObject);
begin
       if not (fdlineas.State in [dsEdit,dsInsert]) then
       begin
             fdlineas.RecNo:=RowAct;
             fdlineas.Edit;
             fdlineas.FieldByName('Ejecutado').AsBoolean:=(Sender as TCheckBox).Checked;
             fdlineas.post;
       end;
end;

procedure TFPresupuestos.DateTimePicker1Change(Sender: TObject);
begin
if fdpresupuesto.State in [dsbrowse] then
   begin
        fdpresupuesto.Edit;
   end;
   if fdpresupuesto.State in [dsEdit,dsInsert] then
     begin
        fdpresupuesto.FieldByName('FechaPresupuesto').AsDateTime:=(Sender as TDateTimePicker).Date;
        fdpresupuesto.Post;
     end;
end;

procedure TFPresupuestos.dtmfldFechaPresupuestoChange(Sender: TField);
begin
fdpresupuestogrupo.asinteger:=YearOf(dtmfldFechaPresupuesto.AsDateTime);
end;

procedure TFPresupuestos.fdClienteAfterOpen(DataSet: TDataSet);

begin
if DataSet.RecordCount > 0 then
         begin
              if fdpresupuesto.State in [dsInsert] then
              begin
                   fdpresupuesto.FieldByName('Id_ClientePrev').AsInteger:=fdcliente.FieldByName('idContactos').AsInteger;
               end;
         end;
end;

procedure TFPresupuestos.fdlineasAfterApplyUpdates(DataSet: TFDDataSet;
  AErrors: Integer);

begin
      if AErrors = 0 then
         begin
          fdlineas.CommitUpdates;
         if not fdpresupuesto.UpdatesPending then
            begin
             guardarpresupuesto.Enabled:=false;
             guardar.Enabled:=false;
             shape1.Brush.Color:=clwhite;
             end;
          DataModule1.RefrescarDataSet(lst);
         end;

end;

procedure TFPresupuestos.fdlineas1AfterDelete(DataSet: TDataSet);
var i:integer; nl:integer;
begin





     existelineasaprobados(dataset,nl);
    if not (fdpresupuesto.State in [dsInsert,dsEdit]) then fdpresupuesto.Edit;

      fdpresupuesto.FieldByName('partidasAprobadas').asinteger:=nl;

     if nl>0 then   fdpresupuesto.FieldByName('Aprovado').AsBoolean:=true

     else
          fdpresupuesto.FieldByName('Aprovado').AsBoolean:=false;

        fdpresupuesto.Post;

      luces(fdpresupuesto.FieldByName('Aprovado').AsBoolean);

    for i:=DataSet.RecNo to DataSet.RecordCount do
          begin
          DataSet.edit;
          DataSet.FieldByName('id_partida').AsInteger:=i;
          DataSet.Post;

          DataSet.Next;
          end;

     rDBGridClientesDBGridLineas.RecalculateSummaryResults(True);
     guardarpresupuesto.Enabled:=True;
     Guardar.Enabled:=true;
     shape1.Brush.Color:=cllime;
end;



procedure TFPresupuestos.fdlineas1AfterEdit(DataSet: TDataSet);
begin

  
     guardarpresupuesto.Enabled:=True;
     Guardar.Enabled:=true;
     shape1.Brush.Color:=cllime;



end;

procedure TFPresupuestos.fdlineas1AfterInsert(DataSet: TDataSet);
begin

 //  DataSet.FieldByName('presupuestos_Id_Presupuesto').AsInteger:=fdpresupuesto.FieldByName('id_presupuesto').AsInteger;
  // DataSet.FieldByName('presupuestos_grupo').asinteger:= YearOf(fdpresupuesto.FieldByName('FechaPresupuesto').AsDateTime);
   DataSet.FieldByName('Id_partida').AsInteger:=DataSet.RecordCount+1;
   DataSet.FieldByName('Aprovado').AsBoolean:=false;
   DataSet.FieldByName('Ejecutado').asboolean:=false;
   DataSet.FieldByName('Total').AsFloat:=0;
   DataSet.FieldByName('diasejecucion').AsInteger:=1;


     guardarpresupuesto.Enabled:=True;
     Guardar.Enabled:=true;
     shape1.Brush.Color:=cllime;
end;

procedure TFPresupuestos.fdlineas1AfterOpen(DataSet: TDataSet);
begin
rDBGridClientesDBGridLineas.RecalculateSummaryResults(True);
end;

procedure TFPresupuestos.fdlineas1AfterPost(DataSet: TDataSet);

begin

      if not (fdpresupuesto.state in [dsInsert, dsEdit]) then fdpresupuesto.edit;
     begin
      fdpresupuesto.FieldByName('partidas').asinteger:=fdlineas.RecordCount;
      fdpresupuesto.FieldByName('total').asstring:=VarToStr(fdlineas.Aggregates.AggregateByName('SUMATOTAL').Value);
     fdpresupuesto.FieldByName('totalAprobado').asstring:=VarToStr(fdlineas.Aggregates.AggregateByName('SUMAPROBADOS').Value);
      fdpresupuesto.FieldByName('partidasAprobadas').asinteger:=fdlineas.Aggregates.AggregateByName('TOTALAPROBADOS').Value;


         if fdpresupuesto.FieldByName('partidasAprobadas').asinteger > 0 then
                   fdpresupuesto.FieldByName('Aprovado').AsBoolean:=true

             else             fdpresupuesto.FieldByName('Aprovado').AsBoolean:=false;

          fdpresupuesto.Post;
    end;
          rDBGridClientesDBGridLineas.RecalculateSummaryResults(True);
          luces(fdpresupuesto.FieldByName('Aprovado').AsBoolean);
end;

procedure TFPresupuestos.fdlineasAprovadoChange(Sender: TField);
begin
if Sender.AsBoolean then fdlineasfecha_aprobado.AsDateTime:=Date;
if not Sender.AsBoolean then
fdlineasfecha_aprobado.clear;


end;

procedure TFPresupuestos.fdpresupuestoAfterApplyUpdates(DataSet: TFDDataSet;
  AErrors: Integer);
  var archivo,exten,ruta:string; existe:boolean;  fichero:string; planpresu:TFPlantillasPresupuestos ;
begin
if AErrors = 0 then
    begin
         DataSet.CommitUpdates;
         if not fdlineas.UpdatesPending then
            begin

            guardarpresupuesto.Enabled:=false;
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
                     RzShellList1.Visible:=true;
                      RzShellList2.Visible:=true;
                      RzShellList1.folder.PathName:=ruta+'\Documentacion';
                      //RzShellList2..Root:=ruta+'\Fotos'; }
                      RzShellList2.folder.PathName:=ruta+'\Fotos';

                 end;
            end
            else  begin
                 spcarpetas.brush.color:=clred;
                  end;

                  fichero:=PATHUSER+fdpresupuesto.FieldByName('path').AsString;

           if not FileExists(fichero) then
            if application.MessageBox('El presupuesto no existe. �Desea crearlo?', 'Aviso',(MB_OKCANCEL+MB_ICONQUESTION))=IDOK      then
            begin
                   planpresu:=TFPlantillasPresupuestos.Create(Self);
         planpresu.ShowModal;
         archivo:=planpresu.rStringGridEd1.Cells[1,planpresu.rStringGridEd1.Row];

         exten:=ExtractFileExt(archivo);
         fichero:=ExtractFileName(fichero)+exten;
                 if DataModule1.CrearFicheroPresupuesto(fichero,archivo) then
                  spdocumento.Brush.Color:=clLime;

            end;


    end;
end;

procedure TFPresupuestos.fdpresupuestoAfterEdit(DataSet: TDataSet);
begin
 guardarpresupuesto.Enabled:=True;
Shape1.Brush.Color:=clLime;
Guardar.Enabled:=true;
end;

procedure TFPresupuestos.carpetasdocumentacion(var ruta:string; var ok:boolean);
begin

     ok:=false;
     ruta:='';
     if not DirectoryExists(PATHDOCPRESUPUESTOS) then
      begin
        showmessage('El directoria PRESUPUESTOS no existe.');
        exit;
      end;

  ruta:= PATHDOCPRESUPUESTOS+'\'+fdpresupuesto.fieldbyname('id_presupuesto').asstring+IntToStr(YearOf(fdpresupuesto.fieldbyname('FechaPresupuesto').asdatetime));



      if DirectoryExists(ruta) then
        begin
          ok:=True;
        end
      else   begin

                  mkdir(ruta);
                  mkdir(ruta+'\Fotos');
                  mkdir(ruta+'\Documentacion');
                  if DirectoryExists(ruta) then ok:=True;

             end;
end;

procedure TFPresupuestos.GuardarClick(Sender: TObject);
var         fd:TFDQuery;
begin

if fdpresupuesto.fieldbyname('id_clientePrev').asinteger = 0  then
begin
  MessageBox(Handle, 'No se ha seleccionado ning�n cliente.', 'Error', MB_OK +  MB_ICONSTOP);
  exit;

end;


if  fdpresupuesto.FieldByName('id_presupuesto').AsInteger=-1 then
begin
  fd:=TFDQuery.Create(Self);
  fdpresupuesto.edit;
  fdpresupuesto.FieldByName('id_presupuesto').AsInteger:=DataModule1.ObtenerNPresupuesto(fd);
  fdpresupuesto.FieldByName('grupo').asinteger:=yearof(date);
  fdpresupuesto.FieldByName('path').AsString:=DataModule1.ObtenerPathPresupuesto(fdcliente.fieldByName('Nombre').Asstring,fdpresupuesto.FieldByName('id_presupuesto').AsInteger,fdpresupuesto.FieldByName('fechapresupuesto').AsDateTime);

  if Length(fdpresupuesto.FieldByName('descripcion').asstring)=0 then fdpresupuesto.FieldByName('descripcion').asstring:='descripci�n';

  fdpresupuesto.Post;

    self.Caption:='P. '+fdpresupuesto.FieldByName('id_Presupuesto').AsString+ ' '+(fdcliente).FieldByName('nombre').Asstring;

 end;





if (fdpresupuesto.state in [dsInsert, dsEdit]) then
 begin
   fdpresupuesto.post;
 end;

 if (fdlineas.state in [dsEdit,dsInsert]) then
 begin
   fdlineas.post;
 end;


 if (fdtrabajAsignados.state in [dsEdit,dsInsert]) then
 begin
   fdtrabajAsignados.post;
 end;



    if (fdqryContactosPresupuesto.state in [dsEdit,dsInsert]) then
 begin
   fdqryContactosPresupuesto.post;
 end;


 if FDSchemaAdapter1.UpdatesPending then
FDSchemaAdapter1.ApplyUpdates(1);




end;

procedure TFPresupuestos.guardarPDFExecute(Sender: TObject);
var nombresinext,extension,ruta,nombre,fichero:string; MSWord:Variant;
begin

 fichero:=PATHUSER+fdpresupuesto.FieldByName('path').AsString;
 ruta:=ExtractFilePath(fichero);
 nombre:=ExtractFileName(fichero);
 extension:=ExtractFileExt(fichero);
 nombresinext:=copy(nombre,0,pos(extension,nombre)-1);

if FileExists(fichero) then
  begin
  try
    MSWord:=DataModule1.DevolverOleOffice(extension);
    except
      ShowMessage('No se puede abrir la aplicaci�n Office.');
    end;

    if (LowerCase(extension)='.docx') or (LowerCase(extension)='doc') then
     begin
     MSWord.Documents.Open(fichero);
     MSWord.ActiveDocument.SaveAs2(ruta+nombresinext+'.pdf',17);
     MSWord.ActiveDocument.close;
     end
     else
     begin
     MSWord.Workbooks.Open(fichero);
     MSWord.ActiveWorkbook.ExportAsFixedFormat(0,ruta+nombresinext+'.pdf');
     MSWord.ActiveWorkBook.close;

     end;


  end
  else showmessage('El documento Office que contine el presupuesto, no existe.')

end;

procedure TFPresupuestos.guardarPDFUpdate(Sender: TObject);
begin
     ToolButton2.Enabled:= FileExists(PATHUSER+fdpresupuesto.FieldByName('path').AsString);
end;

procedure TFPresupuestos.guardarpresupuestoExecute(Sender: TObject);
begin
GuardarClick(Sender);
end;

procedure TFPresupuestos.mailExecute(Sender: TObject);
var mail, parametro,nombresinext,extension,ruta,nombre,destinatario,asunto,cuerpo,adjunto,fichero:string; MSWord:Variant;  fdq:TFDQuery;
begin

 fichero:=PATHUSER+fdpresupuesto.FieldByName('path').AsString;
 ruta:=ExtractFilePath(fichero);
 nombre:=ExtractFileName(fichero);
 extension:=ExtractFileExt(fichero);
 nombresinext:=copy(nombre,0,pos(extension,nombre)-1);

  mail:=PATHTHUNDERBIRD;

   if not FileExists(mail) then begin
     MessageBox(Handle, 'No se encuentra el programa de correo Thunderbird.',
       'Error', MB_OK + MB_ICONSTOP);

     Exit;
   end;


if FileExists(fichero) then
  begin
  try
    MSWord:=DataModule1.DevolverOleOffice(extension);
    except
      ShowMessage('No se puede abrir la aplicaci�n Office.');
    end;

    if (LowerCase(extension)='.docx') or (LowerCase(extension)='doc') then
     begin
     MSWord.Documents.Open(fichero);
     MSWord.ActiveDocument.SaveAs2(ruta+nombresinext+'.pdf',17);
     MSWord.ActiveDocument.close;
     end
     else
     begin
     MSWord.Workbooks.Open(fichero);
     MSWord.ActiveWorkbook.ExportAsFixedFormat(0,ruta+nombresinext+'.pdf');
     MSWord.ActiveWorkBook.close;

     end;

     fdq:=TFDQuery.Create(Self);
     fdq.connection:=DataModule1.FDConnection1;
     fdq.SQL.Add('SELECT correo FROM clientes C, administradores A, presupuestos P WHERE P.id_presupuesto=:idpresupuesto and P.id_ClientePrev=C.idContactos AND C.idAdministrador=A.idAdministrador');
     fdq.ParamByName('idpresupuesto').AsInteger:=fdpresupuesto.FieldByName('id_presupuesto').AsInteger;
     fdq.Active:=true;

     if fdq.RecordCount > -1 then
        begin

       destinatario:='to='+fdq.fieldbyname('correo').asstring+',';
       Asunto:='subject='+nombre+',';
       Cuerpo:='body=Hola%20env�o%20presupuesto solicitado.%0D%0A%0D%0A Saludos cordiales.'+',';
       adjunto:='attachment=file:///'+DataModule1.cambiarbarras(ruta)+nombresinext+'.pdf'+'"';


        parametro:= '-compose "'+destinatario+Asunto+Cuerpo+adjunto;
       shellExecute(0,'open',PChar(mail),Pchar(parametro),nil,SW_SHOWNORMAL);

        end
        else
        showmessage('No existe destinatario de correo electronico.');

         fdq.close;
         fdq.free;
        end
  else showmessage('No se puede enviar el presupuesto porque el fichero Word no existe.')
end;

procedure TFPresupuestos.mailUpdate(Sender: TObject);
begin
ToolButton3.Enabled:= FileExists(PATHUSER+fdpresupuesto.FieldByName('path').AsString);
end;

procedure TFPresupuestos.mfldPathChange(Sender: TField);
begin
 if FileExists(Sender.asstring) then spdocumento.Brush.Color:=clLime
 else spdocumento.Brush.Color:=clRed;

end;

procedure TFPresupuestos.PageControl1Change(Sender: TObject);
var ruta:string;
begin
   if (TPageControl(Sender).ActivePageIndex = 1)  or  (TPageControl(Sender).ActivePageIndex = 2) then
   begin
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



   if TPageControl(Sender).ActivePageIndex = 3 then
   begin

   if not fdqrycontactoscliente.Active then
   begin
       fdqrycontactoscliente.ParamByName('idcliente').AsInteger:=fdCliente.FieldByName('idContactos').AsInteger;
       fdqrycontactoscliente.Open;
   end;

   if not fdqryContactosPresupuesto.Active then
   begin
       fdqryContactosPresupuesto.ParamByName('idpresupuesto').AsInteger:=fdpresupuestoid_presupuesto.AsInteger;
       fdqryContactosPresupuesto.ParamByName('grupo').AsInteger:=fdpresupuestogrupo.AsInteger;

       fdqryContactosPresupuesto.Open;
   end;



   end;
end;


procedure TFPresupuestos.rDBGridClientesDBGridLineasLoadPickList(
  Sender: TObject; DS: TDataSet; FieldName: string; PickList: TStrings);
begin
  // PickList.LoadFromFile('p.txt');

  if FieldName='tipo' then
    begin
       PickList.Add('INTERIOR');
       PickList.Add('EXTERIOR');
    end;

end;

procedure TFPresupuestos.RzShellList2SelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
begin

 if Selected then

  rImageZoom1.Picture.LoadFromFile(TRzShellList(Sender).SelectedItem.PathName);


end;

procedure TFPresupuestos.fdpresupuestoAfterInsert(DataSet: TDataSet);
begin
     fdpresupuesto.FieldByName('Id_ClientePrev').Asinteger:=fdCliente.FieldByName('IdContactos').AsInteger;
                   fdpresupuesto.FieldByName('id_presupuesto').AsInteger:=-1;
                   fdpresupuesto.FieldByName('grupo').asinteger:=yearof(rDBDateTimePicker1.date);
                   fdpresupuesto.FieldByName('descripcion').AsString:='Descripci�n';
                  fdpresupuesto.FieldByName('path').AsString:=DataModule1.ObtenerPathPresupuesto(fdcliente.fieldByName('Nombre').Asstring,fdpresupuesto.FieldByName('id_presupuesto').AsInteger,fdpresupuesto.FieldByName('fechapresupuesto').AsDateTime);


                   fdpresupuesto.FieldByName('fechapresupuesto').AsDateTime:=date;
                   fdpresupuesto.FieldByName('partidas').asinteger:=0;
                   fdpresupuesto.FieldByName('Total').AsFloat:=0;
                   fdpresupuesto.FieldByName('TotalAprobado').AsFloat:=0;
     guardarpresupuesto.Enabled:=True;
     Guardar.Enabled:=true;
     shape1.Brush.Color:=cllime;
end;

procedure TFPresupuestos.fdqryContactosPresupuestoAfterApplyUpdates(
  DataSet: TFDDataSet; AErrors: Integer);
begin
 if AErrors = 0 then
         begin
          DataSet.CommitUpdates;
         if (not fdpresupuesto.UpdatesPending) or (not fdlineas.UpdatesPending) then
            begin
             guardarpresupuesto.Enabled:=false;
             guardar.Enabled:=false;
             shape1.Brush.Color:=clwhite;
           //  DataModule1.RefrescarDataSet(lst);

            end;

         end;
end;

procedure TFPresupuestos.fdqryContactosPresupuestoAfterDelete(
  DataSet: TDataSet);
begin
guardarpresupuesto.Enabled:=True;
     Guardar.Enabled:=true;
     shape1.Brush.Color:=cllime;
end;


procedure TFPresupuestos.fdqryContactosPresupuestoAfterEdit(DataSet: TDataSet);
begin
guardarpresupuesto.Enabled:=True;
     Guardar.Enabled:=true;
     shape1.Brush.Color:=cllime;
end;

procedure TFPresupuestos.fdqryContactosPresupuestoAfterInsert(
  DataSet: TDataSet);
begin
fdqryContactosPresupuestoid_presupuesto.AsInteger:=fdpresupuesto.FieldByName('id_presupuesto').AsInteger;
fdqryContactosPresupuestogrupo.AsInteger:=fdpresupuesto.FieldByName('grupo').AsInteger;

guardarpresupuesto.Enabled:=True;
     Guardar.Enabled:=true;
     shape1.Brush.Color:=cllime;
end;

procedure TFPresupuestos.FDSchemaAdapter1AfterApplyUpdate(Sender: TObject);
begin

with Sender as TFDSchemaAdapter do CommitUpdates;
 if ( not fdpresupuesto.UpdatesPending) and (not FDlineas.UpdatesPending) then
            begin

             guardar.Enabled:=false;
              shape1.Brush.Color:=clwhite;

            end;
end;

procedure TFPresupuestos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fdcategoria.Close;
action:=caFree;
end;





procedure TFPresupuestos.FormCreate(Sender: TObject);
begin
fdcategoria.Active:=True;
lst:=TStringList.Create;
lst.add('fdpresupuesto');
lst.add('fdlineas')           ;
rDBGridClientesDBGridLineas.LoadAutoPickList;




end;

procedure TFPresupuestos.FormDestroy(Sender: TObject);
begin
lst.destroy;
end;

procedure TFPresupuestos.FormResize(Sender: TObject);
begin
  GroupBox5.Margins.Bottom:=GroupBox5.Height-Guardar.Height-20;
end;

end.

unit seguros;

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
  Vcl.DBCtrls, rDBComponents, rImageZoom, RzListVw, rImprovedComps,
  RzShellDialogs, RzStatus, Vcl.Imaging.pngimage;


type
  TStado=(mInsertar,mEditar);

  TFSeguros = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox2: TGroupBox;
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
    ActionManager1: TActionManager;
    abrircarpeta: TAction;
    abrirpresupuesto: TAction;
    actguardarseguro: TAction;
    guardarPDF: TAction;
    activarSeguro: TAction;
    ToolButton9: TToolButton;
    cerrarpres: TAction;
    ToolButton10: TToolButton;
    carpetadocumentacion: TAction;
    btpath: TButton;
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
    crearObra: TAction;
    dslineas: TDataSource;
    rDBCodigo: TrDBEdit;
    dsseguros: TDataSource;
    rDBDescripcion: TrDBEdit;
    rDBTotal: TrDBEdit;
    rDBFechaRenovacion: TrDBDateTimePicker;
    fdqseguros: TFDQuery;
    pgc1: TPageControl;
    tslineas: TTabSheet;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    ctrlbr2: TControlBar;
    tlb3: TToolBar;
    btn6: TToolButton;
    btn7: TToolButton;
    btn8: TToolButton;
    RzDBNavigator1: TRzDBNavigator;
    rDBGridClientesDBGridLineas: TrDBGrid_MS;
    fdtncfldfdqsegurosid_seguros: TFDAutoIncField;
    fdqsegurosdescripcion: TStringField;
    dtmfldfdqsegurosfechacontrato: TDateTimeField;
    dtmfldfdqsegurosfecharenovacion: TDateTimeField;
    fltfldfdqsegurostotal: TFloatField;
    fdqsegurosimg: TBlobField;
    fdqsegurosNpoliza: TStringField;
    fdqsegurosmatricula: TStringField;
    rDBImage1: TrDBImage;
    rDBTipo: TrDBComboBox;
    rDBFechaContrato: TrDBDateTimePicker;
    rDBNumero: TrDBEdit;
    FDSchemaAdapter1: TFDSchemaAdapter;
    rDBMatricula: TrDBEdit;
    rDBFormaPago: TrDBComboBox;
    rDBFraccionamiento: TrDBComboBox;
    il1: TImageList;
    mfldfdqsegurosobservaciones: TMemoField;
    rDBRutaobservaciones: TrDBMemo;
    fdqsegurospolizaPDF: TBlobField;
    dlgOpen1: TOpenDialog;
    fdqsegurosestado: TBooleanField;
    il2: TImageList;
    rImageEx1: TrImageEx;
    lbl4: TLabel;
    fdqsegurostipo: TStringField;
    fdqsegurosFormaPago: TStringField;
    fdqsegurosfraccionamiento: TStringField;
    fdlineasid_lineaseguro: TFDAutoIncField;
    fdlineasseguros_id_seguros: TIntegerField;
    fdlineasimporte: TFloatField;
    fdlineasnrecibo: TStringField;
    fdlineasFechaPago: TDateField;
    fdlineasid_asiento: TIntegerField;
    fdlineasfechacontable: TDateField;



    procedure GuardarClick(Sender: TObject);
    procedure AceptarClick(Sender: TObject);
    procedure cerrarClick(Sender: TObject);
    procedure fdlineasAfterEdit(DataSet: TDataSet);
    procedure fdlineasAfterInsert(DataSet: TDataSet);

    
    procedure actguardarseguroExecute(Sender: TObject);
    procedure cerrarpresExecute(Sender: TObject);
    procedure fdlineasAfterDelete(DataSet: TDataSet);
    procedure fdlineasAfterPost(DataSet: TDataSet);
   
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    
    procedure fdlineasAfterOpen(DataSet: TDataSet);
   
    procedure fdqsegurosAfterEdit(DataSet: TDataSet);
    procedure fdqsegurosAfterDelete(DataSet: TDataSet);
    procedure fdqsegurosAfterInsert(DataSet: TDataSet);
    procedure FDSchemaAdapter1AfterApplyUpdate(Sender: TObject);
    procedure rDBImage1Click(Sender: TObject);
    procedure guardarPDFExecute(Sender: TObject);
    procedure fdqsegurosestadoChange(Sender: TField);
    procedure fdqsegurosAfterOpen(DataSet: TDataSet);
    procedure activarSeguroExecute(Sender: TObject);
    procedure rDBTipoChange(Sender: TObject);
    procedure FDSchemaAdapter1BeforeApplyUpdate(Sender: TObject);
  private
    { Private declarations }
     lst:TStringlist;

  public
    { Public declarations }
   

  end;



var
  FSeguros: TFSeguros;

implementation

{$R *.dfm}

uses DModule1, companiasseguros;





procedure TFSeguros.AceptarClick(Sender: TObject);
begin
  GuardarClick(Sender);
  Close;
end;

procedure TFSeguros.cerrarClick(Sender: TObject);

begin
   if (FDSchemaAdapter1.UpdatesPending)  then
       if Application.MessageBox('�Guardar los cambios del seguro?','Guardar',MB_YESNO)=IDYES then
       begin
           GuardarClick(Sender);
       end
       else begin
            FDSchemaAdapter1.CancelUpdates;
            end;
       Close;
end;


procedure TFSeguros.cerrarpresExecute(Sender: TObject);
begin
cerrarClick(Sender);
end;

procedure TFSeguros.fdlineasAfterDelete(DataSet: TDataSet);

begin
     rDBGridClientesDBGridLineas.RecalculateSummaryResults(True);
     actguardarseguro.Enabled:=True;
     Guardar.Enabled:=true;
     shape1.Brush.Color:=cllime;
end;



procedure TFSeguros.fdlineasAfterEdit(DataSet: TDataSet);
begin

     actguardarseguro.Enabled:=True;
   Guardar.Enabled:=True;
   Shape1.Brush.Color:=clLime;



end;

procedure TFSeguros.fdlineasAfterInsert(DataSet: TDataSet);
begin
 case rDBFraccionamiento.ItemIndex of
  3: fdlineasimporte.AsFloat:= fltfldfdqsegurostotal.AsFloat/12;
  2:fdlineasimporte.AsFloat:= fltfldfdqsegurostotal.AsFloat/4;
  1:fdlineasimporte.AsFloat:= fltfldfdqsegurostotal.AsFloat/2;
  0  : fdlineasimporte.AsFloat:= fltfldfdqsegurostotal.AsFloat;
 end;

  fdlineasid_asiento.AsInteger:=-10;
 actguardarseguro.Enabled:=True;
   Guardar.Enabled:=True;
   Shape1.Brush.Color:=clLime;
end;

procedure TFSeguros.fdlineasAfterOpen(DataSet: TDataSet);
begin
rDBGridClientesDBGridLineas.RecalculateSummaryResults(True);
end;

procedure TFSeguros.fdlineasAfterPost(DataSet: TDataSet);

begin
        rDBGridClientesDBGridLineas.RecalculateSummaryResults(True);

end;

procedure TFSeguros.GuardarClick(Sender: TObject);

begin

if (fdqseguros.state in [dsEdit,dsInsert]) then fdqseguros.Post;



if (fdlineas.state in [dsEdit,dsInsert]) then
 begin
   fdlineas.post;
 end;





 if FDSchemaAdapter1.UpdatesPending then
 begin
      FDSchemaAdapter1.ApplyUpdates(1);

 end;


end;

procedure TFSeguros.guardarPDFExecute(Sender: TObject);
var nbre:Integer;
begin
 if fdqsegurospolizaPDF.BlobSize = 0 then
begin
  if dlgOpen1.Execute then
   begin
      if not (fdqseguros.State in [dsEdit,dsInsert]) then fdqseguros.edit;

      fdqsegurospolizaPDF.LoadFromFile(dlgOpen1.FileName);
      fdqseguros.Post;
   end;
end else  begin
            nbre:=Random(1000);
            fdqsegurospolizaPDF.SaveToFile(nbre.ToString+'.pdf');

            if FileExists(nbre.ToString+'.pdf') then
               ShellExecute(Application.Handle,nil,PChar(nbre.ToString+'.pdf'),'','',SW_SHOWNORMAL)
              else    ShowMessage('El archivo no existe.');
          end;


end;

procedure TFSeguros.rDBImage1Click(Sender: TObject);
var compsegur:TFimagenesCompanias;
begin
    compsegur:=TFimagenesCompanias.Create(Self);
    compsegur.ShowModal;
end;

procedure TFSeguros.rDBTipoChange(Sender: TObject);
begin
if TrDBComboBox(Sender).Text='AUTOMOVIL' then   begin
                                rDBMatricula.Visible:=True;
                                rDBMatricula.DBEditLabel.Visible:=True;
                              end
                              else begin
                                 rDBMatricula.Visible:=False;
                                rDBMatricula.DBEditLabel.Visible:=False;

                              end;
end;

procedure TFSeguros.actguardarseguroExecute(Sender: TObject);
begin
GuardarClick(Sender);
end;






procedure TFSeguros.activarSeguroExecute(Sender: TObject);
begin
    if not(fdqseguros.State in [dsInsert, dsEdit]) then  fdqseguros.Edit;

   if  fdqsegurosestado.AsBoolean then fdqsegurosestado.AsBoolean:=False
    else fdqsegurosestado.AsBoolean:=True;



end;

procedure TFSeguros.fdqsegurosestadoChange(Sender: TField);
begin
if Sender.AsBoolean then

                            il2.GetBitmap(1,rImageEx1.Picture.Bitmap)

else
        il2.GetBitmap(0,rImageEx1.Picture.Bitmap);

    rImageEx1.Repaint;
end;

procedure TFSeguros.fdqsegurosAfterDelete(DataSet: TDataSet);
begin
     actguardarseguro.Enabled:=True;
   Guardar.Enabled:=True;
   Shape1.Brush.Color:=clLime;
end;

procedure TFSeguros.fdqsegurosAfterEdit(DataSet: TDataSet);
begin
   actguardarseguro.Enabled:=True;
   Guardar.Enabled:=True;
   Shape1.Brush.Color:=clLime;
end;

procedure TFSeguros.fdqsegurosAfterInsert(DataSet: TDataSet);
begin
   fdqsegurosestado.AsBoolean:=False;
   fdqsegurosFormaPago.AsString:='DOMICILIADO';
   actguardarseguro.Enabled:=True;
   Guardar.Enabled:=True;
   Shape1.Brush.Color:=clLime;
end;

procedure TFSeguros.fdqsegurosAfterOpen(DataSet: TDataSet);
begin
rDBTipoChange(rDBTipo);
fdqsegurosestadoChange(fdqsegurosestado);
end;

procedure TFSeguros.FDSchemaAdapter1AfterApplyUpdate(Sender: TObject);
begin

with Sender as TFDSchemaAdapter do CommitUpdates;
 if ( not fdqseguros.UpdatesPending) and (not FDlineas.UpdatesPending) then
            begin
                  actguardarseguro.Enabled:=false;
             guardar.Enabled:=false;
              shape1.Brush.Color:=clwhite;
              self.Caption:='S. '+fdqseguros.FieldByName('descripcion').AsString;
            end;
end;

procedure TFSeguros.FDSchemaAdapter1BeforeApplyUpdate(Sender: TObject);
var cnp:Integer; tiposeguro:string;
begin
        if (fdqsegurostipo.AsString = 'RESPONSABILIDAD CIVIL') then
         begin
         cnp:=62500001;
         tiposeguro:='SEGURO RESPONSABILIDAD CIVIL'
         end
         else  if (fdqsegurostipo.AsString = 'AUTOMOVIL') then
         begin
          cnp:=62500002            ;
          tiposeguro:='SEGURO AUTOMOVIL';
         end
            else  begin
                    cnp:=62500003;
                    tiposeguro:='SEGURO VARIOS'
                  end;

                   if fdlineasid_asiento.AsInteger < 0 then
                      begin
                     fdlineas.Edit;
                     fdlineasid_asiento.AsInteger:=DataModule1.generarAsiento(-1,cnp,Date,tiposeguro+' '+fdqsegurosNpoliza.AsString,fdlineasimporte.AsFloat,fdqsegurosNpoliza.AsString,true);
                     fdlineas.Post;
                     // ShowMessage('Se ha generado el asiento N� '+fdfacturasid_asiento.AsString );

                      end
                      else begin
                               DataModule1.modificarAsiento(fdlineasid_asiento.asinteger,cnp,Date,tiposeguro+' '+fdqsegurosNpoliza.AsString,fdlineasimporte.AsFloat,fdqsegurosNpoliza.AsString);
                               //ShowMessage('Se ha modificado el asiento N� '+fdfacturasid_asiento.AsString);
                           end;


end;

procedure TFSeguros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=caFree;
end;

procedure TFSeguros.FormResize(Sender: TObject);
begin
  GroupBox5.Margins.Bottom:=GroupBox5.Height-Guardar.Height-20;
end;

end.

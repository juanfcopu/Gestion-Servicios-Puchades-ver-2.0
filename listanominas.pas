unit listanominas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,System.DateUtils,
  Data.Bind.DBScope, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, rDBGrid, rDBGrid_MS, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, RzDTP, Vcl.Mask,
  RzEdit, RzCmboBx, rImprovedComps, rDBRecView, rDBComponents, RzStatus,
  RzDBStat, RzPanel;

type
  Tlistnominas= class(TForm)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    beBuscar: TButtonedEdit;
    rbcliente: TRadioButton;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    GroupBox1: TGroupBox;
    rb1Trimestres: TRadioButton;
    rb2trimestre: TRadioButton;
    rbTodas: TRadioButton;
    tlb1: TToolBar;
    btn1: TToolButton;
    btn2: TToolButton;
    btn3: TToolButton;
    btn4: TToolButton;
    btn5: TToolButton;
    rDBGridClientes1: TrDBGrid_MS;
    ds1: TDataSource;
    fdqtrabajadores: TFDQuery;
    rb3trimestre: TRadioButton;
    rb4trimestre: TRadioButton;
    RzComboBox1: TRzComboBox;
    rGroupBox1: TrGroupBox;
    btn6: TToolButton;
    btn7: TToolButton;
    rDBRecView1: TrDBRecView;
    RzStatusBar1: TRzStatusBar;
    RzStatusPane1: TRzStatusPane;
    RzFieldStatus1: TRzFieldStatus;
    RzDBStatusPane1: TRzDBStatusPane;
    RzDBStateStatus1: TRzDBStateStatus;
    procedure FormCreate(Sender: TObject);

    procedure Button1Click(Sender: TObject);
        procedure rbTodasClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn5Click(Sender: TObject);


    procedure beBuscarChange(Sender: TObject);
 
    procedure RzComboBox1Change(Sender: TObject);
    procedure fdqnominasAfterDelete(DataSet: TDataSet);
    procedure fdqnominasAfterOpen(DataSet: TDataSet);
    procedure fdqnominasAfterPost(DataSet: TDataSet);
    procedure fdqnominasAfterInsert(DataSet: TDataSet);
    procedure fdqnominasAfterCancel(DataSet: TDataSet);
    procedure rDBRecView1Click(Sender: TObject);
    procedure rGroupBox1MinimizeChange(Sender: TObject);
    procedure rDBRecView1KeyPress(Sender: TObject; var Key: Char);
    procedure btn7Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure fdq1AfterExecute(DataSet: TFDDataSet);
    procedure fdqnominasBeforePost(DataSet: TDataSet);
    procedure fdnominasUpdateRecord(ASender: TDataSet;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
  AOptions: TFDUpdateRowOptions);



  private
    { Private declarations }
    inserciones:Integer;

  public
    { Public declarations }

  end;

var
  listnominas: Tlistnominas;

implementation

uses
  DModule1, insernominas;

{$R *.dfm}


procedure Tlistnominas.fdq1AfterExecute(DataSet: TFDDataSet);
begin

   if TFDQuery(DataSet).RowsAffected = -1 then
    showmessage('No se ha modificado ning�n asiento')
  else
    case TFDQuery(DataSet).Command.CommandKind of
    skInsert: begin

                rzfieldstatus1.caption:='Se ha generado el asiento N� '+DataModule1.fdqnominasid_asiento.asstring ;

              end;
    skUpdate: rzfieldstatus1.caption:='Se ha modificado el asiento N� '+DataModule1.fdqnominasid_asiento.asstring;
    skDelete: rzfieldstatus1.caption:='Se ha borrado el asiento N� '+DataModule1.fdqnominasid_asiento.asstring;
    else      showmessage(Format('%d rows affected', [TFDQuery(DataSet).RowsAffected]));
    end;


end;

procedure Tlistnominas.fdqnominasBeforePost(DataSet: TDataSet);
begin

   with DataModule1 do
 begin

                   if (fdqnominasid_asiento.isnull) or (fdqnominasid_asiento.AsInteger=-1) then

                      begin

                      fdqnominasid_asiento.AsInteger:= generarAsiento(-1,64000001,fdqnominasfechanomina.AsDateTime,'NOMINA '+fdqnominasnombre.AsString+' - '+fdqnominasfechanomina.AsString,fltfldfdqnominasimportedevengado.AsFloat,'NOMINAS',true);
                                                               generarAsiento(fdqnominasid_asiento.AsInteger,64200000,fdqnominasfechanomina.AsDateTime,'NOMINA '+fdqnominasnombre.AsString+' - '+fdqnominasfechanomina.AsString,fltfldfdqnominasssocialEmpresa.asfloat,'NOMINAS',false);
                                                               generarAsiento(fdqnominasid_asiento.AsInteger,47600000,fdqnominasfechanomina.AsDateTime,'NOMINA '+fdqnominasnombre.AsString+' - '+fdqnominasfechanomina.AsString,fltfldfdqnominasssocialTrabajador.asfloat,'NOMINAS',false);
                                                               generarAsiento(fdqnominasid_asiento.AsInteger,47510000,fdqnominasfechanomina.AsDateTime,'NOMINA '+fdqnominasnombre.AsString+' - '+fdqnominasfechanomina.AsString,fltfldfdqnominasirpf.asfloat,'NOMINAS',false);
                                                               generarAsiento(fdqnominasid_asiento.AsInteger,46500000,fdqnominasfechanomina.AsDateTime,'NOMINA '+fdqnominasnombre.AsString+' - '+fdqnominasfechanomina.AsString,fltfldfdqnominasTotalPercibir.asfloat,'NOMINAS',false);

                                                    if fdqnominasid_asiento.AsInteger = -1 then

                                                     DataSet.cancel;

                      end


                      else begin
                               modificarAsiento(fdqnominasid_asiento.AsInteger,64000001,fdqnominasfechanomina.AsDateTime,'NOMINA '+fdqnominasnombre.AsString+' - '+fdqnominasfechanomina.AsString,fltfldfdqnominasimportedevengado.AsFloat,'NOMINAS');
                               modificarAsiento(fdqnominasid_asiento.AsInteger,64200000,fdqnominasfechanomina.AsDateTime,'NOMINA '+fdqnominasnombre.AsString+' - '+fdqnominasfechanomina.AsString,fltfldfdqnominasssocialEmpresa.AsFloat,'NOMINAS');
                               modificarAsiento(fdqnominasid_asiento.AsInteger,47600000,fdqnominasfechanomina.AsDateTime,'NOMINA '+fdqnominasnombre.AsString+' - '+fdqnominasfechanomina.AsString,fltfldfdqnominasssocialTrabajador.asfloat,'NOMINAS');
                               modificarAsiento(fdqnominasid_asiento.AsInteger,47510000,fdqnominasfechanomina.AsDateTime,'NOMINA '+fdqnominasnombre.AsString+' - '+fdqnominasfechanomina.AsString,fltfldfdqnominasirpf.asfloat,'NOMINAS');
                               modificarAsiento(fdqnominasid_asiento.AsInteger,46500000,fdqnominasfechanomina.AsDateTime,'NOMINA '+fdqnominasnombre.AsString+' - '+fdqnominasfechanomina.AsString,fltfldfdqnominasTotalPercibir.asfloat,'NOMINAS');

                           end;

end;
end;



procedure Tlistnominas.fdqnominasAfterDelete(DataSet: TDataSet);
begin
rDBGridClientes1.RecalculateSummaryResults(True);
end;

procedure Tlistnominas.fdqnominasAfterOpen(DataSet: TDataSet);
begin
rDBGridClientes1.RecalculateSummaryResults(True);
end;

procedure Tlistnominas.fdqnominasAfterPost(DataSet: TDataSet);
begin
rDBGridClientes1.RecalculateSummaryResults(True);
 rDBRecView1.Options:=rDBRecView1.Options-[goEditing];
 rDBGridClientes1.RecalculateSummaryResults(True);

end;

procedure Tlistnominas.beBuscarChange(Sender: TObject);
begin

if Length(TLabeledEdit(Sender).text) > 0 then
begin
fdqtrabajadores.Filtered:=False;
fdqtrabajadores.Filter:='nombre LIKE ''%'+TLabeledEdit(Sender).Text+'%''';
fdqtrabajadores.Filtered:=True;

if fdqtrabajadores.RecordCount > 0 then
 begin
ds1.DataSet.Filtered:=False;
ds1.dataset.Filter:='proveedores_id_proveedor='+fdqtrabajadores.FieldByName('id_proveedor').AsString;
ds1.dataset.Filtered:=True;
  rDBGridClientes1.RecalculateSummaryResults(true);
 end
end
else begin
        fdqtrabajadores.Filtered:=False;
        ds1.DataSet.Filtered:=False;
         rDBGridClientes1.RecalculateSummaryResults(true);
     end;
end;

procedure Tlistnominas.btn1Click(Sender: TObject);
begin
Close;
end;

procedure Tlistnominas.btn3Click(Sender: TObject);
var insnominas:Tinsertnominas;
begin
    insnominas:=Tinsertnominas.Create(Self);
    insnominas.showmodal;

end;

procedure Tlistnominas.btn5Click(Sender: TObject);
begin
if Application.MessageBox('�Esta seguro de borrar la N�mina?','Borrar',MB_YESNO)=IDYES then
       begin
           ds1.DataSet.Delete;
       end

   end;

   procedure Tlistnominas.btn7Click(Sender: TObject);
begin
DataModule1.rXLSExport1.ExportDBTable(ds1.DataSet);
end ;



procedure Tlistnominas.fdqnominasAfterCancel(DataSet: TDataSet);
begin
  Dec(inserciones);
  rDBRecView1.Options:=rDBRecView1.Options-[goEditing];
end;


procedure Tlistnominas.Button1Click(Sender: TObject);
begin
 rDBGridClientes1.DataSource.DataSet.DisableControls;
ds1.DataSet.Filtered:=False;
ds1.DataSet.Filter:='fechanomina>= {d '+FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)+'} and fechanomina<={d '+FormatDateTime('yyyy-mm-dd',DateTimePicker2.Date)+'}';
ds1.DataSet.Filtered:=True;
rDBGridClientes1.DataSource.DataSet.EnableControls;
  rDBGridClientes1.RecalculateSummaryResults(true);

end;

procedure Tlistnominas.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  ds1.DataSet.AfterOpen:= nil;
     ds1.DataSet.AfterPost:= nil;
     ds1.DataSet.AfterDelete:=nil;
     ds1.DataSet.AfterInsert:=nil;
     ds1.DataSet.AfterCancel:=nil;
     ds1.DataSet.BeforePost:=nil;
     DataModule1.fq1.AfterExecute:=nil;
     DataModule1.FDdiario.AfterExecute:=nil;

    ds1.dataset.Active:=false;
fdqtrabajadores.Active:=false;


Action:=caFree;
end;

procedure Tlistnominas.FormCreate(Sender: TObject);
var i:Integer;
begin
     DateTimePicker1.Date:=Date;
     DateTimePicker2.Date:=Date;

     for i := YearOf(date)-4 to YearOf(date)+5 do RzComboBox1.Items.add(IntToStr(i));

     i:=YearOf(date);

     RzComboBox1.text:=IntToStr(i);

     rbcliente.checked:=true;

     fdqtrabajadores.Active:=True;
     DataModule1.FDdiario.Active:=True;
     DataModule1.fq1.AfterExecute:=fdq1AfterExecute;

     ds1.DataSet.AfterOpen:= fdqnominasAfterOpen;
     ds1.DataSet.AfterPost:= fdqnominasAfterPost;
     ds1.DataSet.AfterDelete:=fdqnominasAfterDelete;
     ds1.DataSet.AfterPost:=fdqnominasAfterPost;
     ds1.DataSet.AfterInsert:=fdqnominasAfterInsert;
     ds1.DataSet.BeforePost:=fdqnominasBeforePost;
     TFDQuery(ds1.DataSet).OnUpdateRecord:=fdnominasUpdateRecord;

     DataModule1.fdqnominasnombre.LookupDataSet:=fdqtrabajadores;

         ds1.DataSet.Active:=true;
        rbTodas.Checked:=True;
        rGroupBox1.Minimized:=True;
end;


procedure Tlistnominas.rbTodasClick(Sender: TObject);
var dt1,dt2:TDate;
begin
      if rbTodas.Checked then
       begin
       rDBGridClientes1.DataSource.DataSet.DisableControls;
         case TRadioButton(Sender).Tag of
            0:begin
                dt1:=StrToDate('1/1/'+RzComboBox1.Text);
                   dt2:=StrToDate('31/12/'+RzComboBox1.Text);

              end;

            1: begin
                   dt1:=StrToDate('1/1/'+RzComboBox1.Text);
                   dt2:=StrToDate('31/3/'+RzComboBox1.Text);
                end;
            2: begin
                  dt1:=StrToDate('1/4/'+RzComboBox1.Text);
                  dt2:=StrToDate('30/6/'+RzComboBox1.Text);
                end;
            3: begin
                    dt1:=StrToDate('1/7/'+RzComboBox1.Text);
                   dt2:=StrToDate('30/9/'+RzComboBox1.Text);
               end;
            4: begin
                     dt1:=StrToDate('1/10/'+RzComboBox1.Text);
                  dt2:=StrToDate('31/12/'+RzComboBox1.Text);
                end;
       end;

      ds1.DataSet.Filtered:=False;
        ds1.DataSet.Filter:='fechanomina>= {d '+FormatDateTime('yyyy-mm-dd',dt1)+'} and fechanomina<={d '+FormatDateTime('yyyy-mm-dd',dt2)+'}';

       ds1.DataSet.Filtered:=True;
       rDBGridClientes1.DataSource.DataSet.EnableControls;
         rDBGridClientes1.RecalculateSummaryResults(true);
       end;

end;



procedure Tlistnominas.rDBRecView1Click(Sender: TObject);
begin
if not (ds1.DataSet.State in [dsEdit, dsInsert]) then
begin

 ds1.DataSet.Insert;

end;


end;
procedure Tlistnominas.rDBRecView1KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then begin
            ds1.DataSet.Post;
            ds1.DataSet.Insert;

                 end;

end;

procedure Tlistnominas.fdqnominasAfterInsert(DataSet: TDataSet);
begin


 rDBRecView1.Options:=rDBRecView1.Options+[goEditing];
end;

procedure Tlistnominas.rGroupBox1MinimizeChange(Sender: TObject);
begin
if not TrGroupBox(Sender).Minimized then begin

if not (ds1.DataSet.State in [dsInsert, dsEdit]) then
begin
ds1.DataSet.Insert;

 panel1.Height:=Panel1.Height+150;

end;
 end  else begin
          ds1.DataSet.Cancel;

          panel1.Height:=Panel1.Height-150
          end;
end;

procedure Tlistnominas.RzComboBox1Change(Sender: TObject);

begin
    rbTodasClick(Sender);
end;


procedure Tlistnominas.fdnominasUpdateRecord(ASender: TDataSet;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
  AOptions: TFDUpdateRowOptions);

begin

 with DataModule1 do
 begin

    case ARequest  of
      arInsert:  begin
                    Inc(inserciones);
                    rzstatuspane1.Caption:=inserciones.ToString + ' nominas insertadas';
                    DataModule1.FDdiario.Refresh;
                  end;

       arUpdate: begin
                  rzstatuspane1.Caption:='Se ha modificado la nomina '+ ASender.FieldByName('nombre').AsString+' - '+ ASender.FieldByName('fechanomina').asstring;

                end;
  end;

 end;

end;

end.

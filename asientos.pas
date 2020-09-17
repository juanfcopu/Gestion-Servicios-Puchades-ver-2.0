unit asientos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,System.DateUtils,
  Data.Bind.DBScope, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, rDBGrid, rDBGrid_MS, RzStatus, RzDBStat,
  RzPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFAsientos = class(TForm)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    beBuscar: TButtonedEdit;
    rbasiento: TRadioButton;
    rbdocumento: TRadioButton;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    GroupBox1: TGroupBox;
    rbPagadas: TRadioButton;
    rbImpagadas: TRadioButton;
    rbTodas: TRadioButton;
    tlb1: TToolBar;
    btn1: TToolButton;
    btn2: TToolButton;
    btn3: TToolButton;
    btn5: TToolButton;
    ds1: TDataSource;
    RzStatusBar1: TRzStatusBar;
    RzDBStateStatus1: TRzDBStateStatus;
    rDBGridAsientos: TrDBGrid_MS;
    ToolButton1: TToolButton;
    btnExcel: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn5Click(Sender: TObject);
    procedure beBuscarChange(Sender: TObject);
    procedure fdqasientosAfterPost(DataSet: TDataSet);
    procedure fdqasientosAfterOpen(DataSet: TDataSet);
    procedure fdqasientosAfterDelete(DataSet: TDataSet);
    procedure fdqasientosFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
    procedure rDBGridClientes1FilterChanged(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
  
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAsientos: TFAsientos;

implementation

uses
  DModule1;

{$R *.dfm}





procedure TFAsientos.beBuscarChange(Sender: TObject);
begin
rDBGridAsientos.DataSource.DataSet.DisableControls;
rDBGridAsientos.DataSource.DataSet.Filtered:=False;
if rbasiento.Checked then  rDBGridAsientos.DataSource.DataSet.Filter:='id_asiento LIKE ''%'+TLabeledEdit(Sender).Text+'%'''
else rDBGridAsientos.DataSource.DataSet.Filter:='documento LIKE ''%'+TLabeledEdit(Sender).Text+'%''' ;
rDBGridAsientos.DataSource.DataSet.Filtered:=True;
rDBGridAsientos.DataSource.DataSet.EnableControls;
if Length(TLabeledEdit(Sender).text)<1 then rDBGridAsientos.DataSource.DataSet.Filtered:=False;


end;

procedure TFAsientos.btn1Click(Sender: TObject);
begin
Close;
end;

procedure TFAsientos.btn5Click(Sender: TObject);
begin
if Application.MessageBox('�Esta seguro de borrar el asiento?','Borrar',MB_YESNO)=IDYES then
       begin
           ds1.DataSet.Delete;
       end

   end;

procedure TFAsientos.btnExcelClick(Sender: TObject);
begin
DataModule1.rXLSExport1.ExportDBTable(ds1.DataSet);
end;

procedure TFAsientos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ds1.DataSet.Cancel;
     DataModule1.fq1.AfterExecute:=nil;
     ds1.DataSet.AfterOpen:= nil;
     ds1.DataSet.AfterPost:= nil;
     ds1.DataSet.AfterDelete:=nil;
     ds1.DataSet.AfterInsert:=nil;
     ds1.DataSet.AfterCancel:=nil;
     ds1.DataSet.AfterEdit:=nil;
     ds1.DataSet.BeforeCancel:=nil;
     ds1.dataset.onfilterrecord:=nil;




     ds1.dataset.Active:=false;


Action:=caFree;
end;

procedure TFAsientos.FormCreate(Sender: TObject);
begin
     DateTimePicker1.Date:=Date;
     DateTimePicker2.Date:=Date;


     ds1.DataSet.AfterOpen:= fdqasientosAfterOpen;
     ds1.DataSet.AfterPost:= fdqasientosAfterPost;
     ds1.DataSet.AfterDelete:=fdqasientosAfterDelete;
     ds1.dataset.onfilterrecord:=fdqasientosFilterRecord;


     rbasiento.checked:=true;
     rbTodas.Checked:=True;
     ds1.dataset.Active:=true;
end;

procedure TFAsientos.rDBGridClientes1FilterChanged(Sender: TObject);
begin
    rDBGridAsientos.RecalculateSummaryResults(True);
end;

procedure TFAsientos.fdqasientosAfterDelete(DataSet: TDataSet);

begin
rDBGridAsientos.RecalculateSummaryResults(True);
end;

procedure TFAsientos.fdqasientosAfterOpen(DataSet: TDataSet);
begin
rDBGridAsientos.RecalculateSummaryResults(True);
end;



procedure TFAsientos.fdqasientosAfterPost(DataSet: TDataSet);

begin

 rDBGridAsientos.RecalculateSummaryResults(True);


 end;

 procedure TFAsientos.fdqasientosFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
   rDBGridAsientos.RecalculateSummaryResults(true);
end;



end.

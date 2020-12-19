unit listafacturas;

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
  Tlistfacturas = class(TForm)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    beBuscar: TButtonedEdit;
    rbcliente: TRadioButton;
    rbnumero: TRadioButton;
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
    btn4: TToolButton;
    btn5: TToolButton;
    rDBGridClientes1: TrDBGrid_MS;
    ds1: TDataSource;
    RzStatusBar1: TRzStatusBar;
    RzDBStateStatus1: TRzDBStateStatus;
    ToolButton1: TToolButton;
    btnExcel: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    btn6: TToolButton;
    btn7: TToolButton;
    btnImprimir: TToolButton;
    procedure FormCreate(Sender: TObject);

    procedure Button1Click(Sender: TObject);
        procedure rbTodasClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn5Click(Sender: TObject);
    procedure rbImpagadasClick(Sender: TObject);
    procedure rbPagadasClick(Sender: TObject);
    procedure rDBGridClientes1DblClick(Sender: TObject);
    procedure beBuscarChange(Sender: TObject);
    procedure fdqfacturasAfterPost(DataSet: TDataSet);
    procedure fdqfacturasAfterOpen(DataSet: TDataSet);
    procedure fdqfacturasAfterDelete(DataSet: TDataSet);
    procedure fdqfacturasBeforeDelete(DataSet: TDataSet);
    procedure fdqfacturaFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
    procedure rDBGridClientes1FilterChanged(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);

  private
    { Private declarations }
    asiento:Integer;
  public
    { Public declarations }
  end;

var
  listfacturas: Tlistfacturas;

implementation

uses
  DModule1,DmoduleReports;

{$R *.dfm}





procedure Tlistfacturas.beBuscarChange(Sender: TObject);
begin
rDBGridClientes1.DataSource.DataSet.DisableControls;
rDBGridClientes1.DataSource.DataSet.Filtered:=False;
rDBGridClientes1.DataSource.DataSet.Filter:='nombre LIKE ''%'+TLabeledEdit(Sender).Text+'%''';
rDBGridClientes1.DataSource.DataSet.Filtered:=True;
rDBGridClientes1.DataSource.DataSet.EnableControls;

rDBGridClientes1.RecalculateSummaryResults(true);

if Length(TLabeledEdit(Sender).text)<1 then rDBGridclientes1.DataSource.DataSet.Filtered:=False;
end;

procedure Tlistfacturas.btn1Click(Sender: TObject);
begin
Close;
end;

procedure Tlistfacturas.btn5Click(Sender: TObject);
begin
if Application.MessageBox('�Esta seguro de borrar la factura?','Borrar',MB_YESNO)=IDYES then
       begin
           ds1.DataSet.Delete;
       end

   end;

procedure Tlistfacturas.btn7Click(Sender: TObject);
begin
DataModule1.editarclienteExecute(ds1.dataset);
end;

procedure Tlistfacturas.btnExcelClick(Sender: TObject);
begin
DataModule1.rXLSExport1.ExportDBTable(ds1.DataSet);
end;

procedure Tlistfacturas.btnImprimirClick(Sender: TObject);
begin
DataModule2.FDfacturas.Filtered:=false;
DataModule2.FDfacturas.Filter:=DataModule1.fdfacturas.Filter;
DataModule2.FDfacturas.Filtered:=true;



DataModule2.frxFacturas.ShowReport(true);




end;

procedure Tlistfacturas.Button1Click(Sender: TObject);

begin
    ds1.DataSet.Filtered:=False;
  ds1.DataSet.filter:= 'FechaFactura >={d '+FormatDateTime('yyyy-mm-dd', DateTimePicker1.Date)+'} and FechaFactura <= {d '+FormatDateTime('yyyy-mm-dd', DateTimePicker2.Date)+'}';
  ds1.DataSet.Filtered:=True;
end;

procedure Tlistfacturas.FormClose(Sender: TObject; var Action: TCloseAction);
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
     ds1.DataSet.BeforeDelete:=nil;


     ds1.DataSet.filtered:=False;
     ds1.dataset.Active:=false;


Action:=caFree;
end;

procedure Tlistfacturas.FormCreate(Sender: TObject);
begin
     DateTimePicker1.Date:=Date;
     DateTimePicker2.Date:=Date;


     ds1.DataSet.AfterOpen:= fdqfacturasAfterOpen;
     ds1.DataSet.AfterPost:= fdqfacturasAfterPost;
     ds1.DataSet.AfterDelete:=fdqfacturasAfterDelete;
     ds1.DataSet.BeforeDelete:=fdqfacturasBeforeDelete;


     rbcliente.checked:=true;
     rbTodas.Checked:=True;
     DataModule1.fdfacturas.Active:=true;
end;

procedure Tlistfacturas.rbImpagadasClick(Sender: TObject);
begin
 if rbImpagadas.Checked then
       begin
        ds1.DataSet.Filtered:=False;
       ds1.DataSet.filter:= 'Pagada=False';
       ds1.DataSet.Filtered:=True;

       end;
end;



procedure Tlistfacturas.rbPagadasClick(Sender: TObject);
begin
   if rbPagadas.Checked then
       begin
        ds1.DataSet.Filtered:=False;
       ds1.DataSet.filter:= 'Pagada=True';
       ds1.DataSet.filtered:=True;

       end;
end;

procedure Tlistfacturas.rbTodasClick(Sender: TObject);
begin
      if rbTodas.Checked then
       begin
       ds1.DataSet.Filtered:=False;
       ds1.DataSet.filtered:=False;
       ds1.DataSet.Filter:='';
       end;

end;

procedure Tlistfacturas.rDBGridClientes1DblClick(Sender: TObject);
begin
DataModule1.editarFacturaExecute(ds1.DataSet)   ;
end;


procedure Tlistfacturas.rDBGridClientes1FilterChanged(Sender: TObject);
begin
    rDBGridClientes1.RecalculateSummaryResults(True);
end;

procedure Tlistfacturas.ToolButton2Click(Sender: TObject);
begin
DataModule2.FDFacturasImpagadas.Active:=True;
DataModule2.frxFacturasImpagadas.ShowReport(True);
DataModule2.FDFacturasImpagadas.close;
end;

procedure Tlistfacturas.ToolButton3Click(Sender: TObject);
begin
DataModule2.FDfacturas.Active:=True;
DataModule2.FDDetalleFacturas.Active:=True;
DataModule2.frxFacturas.ShowReport(True);
DataModule2.FDDetalleFacturas.close;
DataModule2.FDFacturas.close;
end;

procedure Tlistfacturas.fdqfacturasAfterDelete(DataSet: TDataSet);

begin
DataModule1.BorrarAsiento(asiento);
rDBGridClientes1.RecalculateSummaryResults(True);

end;

procedure Tlistfacturas.fdqfacturasBeforeDelete(DataSet: TDataSet);
begin
asiento:=DataSet.FieldByName('id_asiento').AsInteger;
end;

procedure Tlistfacturas.fdqfacturasAfterOpen(DataSet: TDataSet);
begin
rDBGridClientes1.RecalculateSummaryResults(True);
end;



procedure Tlistfacturas.fdqfacturasAfterPost(DataSet: TDataSet);

begin

 rDBGridClientes1.RecalculateSummaryResults(True);


 end;

 procedure Tlistfacturas.fdqfacturaFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
   rDBGridClientes1.RecalculateSummaryResults(true);
end;



end.

unit listaproveedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.StdCtrls,DB,
  Vcl.ExtCtrls, Vcl.ToolWin, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, rDBGrid, rDBGrid_MS,
  rDBGridSorter_FireDac, rXLSExport, rDBComponents, RzDBEdit, Vcl.Mask, RzEdit;

type
  TFproveedores = class(TForm)
    cbAgruparAdmin: TCheckBox;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    ToolBar1: TToolBar;
    btn1: TToolButton;
    btn2: TToolButton;
    ToolButton1: TToolButton;
    btncrearclientes: TToolButton;
    btn3: TToolButton;
    btn4: TToolButton;
    ds1: TDataSource;
    btn5: TToolButton;
    btn6: TToolButton;
    chkCamposBusqueda: TCheckBox;
    lbed1: TLabeledEdit;
    btn7: TToolButton;
    grp1: TGroupBox;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    lbl1: TLabel;
    lbl2: TLabel;
    btn8: TButton;
    rdbgridtrabajadores: TrDBGrid_MS;
    procedure FormCreate(Sender: TObject);
    procedure ControlBar1DockOver(Sender: TObject; Source: TDragDockObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure cbAgruparAdminClick(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure chkCamposBusquedaClick(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure lbed1Change(Sender: TObject);
    procedure btn8Click(Sender: TObject);
     procedure fdqproveedorFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
  procedure fdqproveedorAfterOpen(DataSet: TDataSet);
  procedure fdqproveedorAfterPost(DataSet: TDataSet);
   procedure fdqproveedorAfterDelete(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fproveedores: TFproveedores;

implementation

{$R *.dfm}

uses DModule1, clientes, FPrincipal,rDBFilter,rdbtool,rDBFind;

procedure TFproveedores.btn1Click(Sender: TObject);
begin
Close;
end;

procedure TFproveedores.btn3Click(Sender: TObject);
begin

ds1.dataset.Delete;


end;

procedure TFproveedores.btn4Click(Sender: TObject);
begin
DataModule1.actEditarSeguroExecute(ds1.dataset);
end;

procedure TFproveedores.btn6Click(Sender: TObject);
begin
DataModule1.rXLSExport1.ExportDBTable(rdbgridtrabajadores);
end;

procedure TFproveedores.btn7Click(Sender: TObject);
begin
//FilterByField(DataModule1.fdClientesnombre,fjNone)  ;
 FilterRec(rdbgridtrabajadores);
end;

procedure TFproveedores.btn8Click(Sender: TObject);
begin
rdbgridtrabajadores.DataSource.DataSet.DisableControls;
ds1.DataSet.Filtered:=False;
ds1.DataSet.Filter:='fechaPago>= {d '+FormatDateTime('yyyy-mm-dd',Dtp1.Date)+'} and fechaPago<={d '+FormatDateTime('yyyy-mm-dd',DTp2.Date)+'}';
ds1.DataSet.Filtered:=True;
rdbgridtrabajadores.DataSource.DataSet.EnableControls;
  rdbgridtrabajadores.RecalculateSummaryResults(true);
end;

procedure TFproveedores.cbAgruparAdminClick(Sender: TObject);
begin
rDBGridtrabajadores.OptionsEx2.Filters.FunnelBtn:=cbAgruparAdmin.Checked;
end;

procedure TFproveedores.chkCamposBusquedaClick(Sender: TObject);
begin
  rDBGridtrabajadores.OptionsEx2.Filters.TextBar:=chkCamposBusqueda.Checked;
end;

procedure TFproveedores.ControlBar1DockOver(Sender: TObject;
  Source: TDragDockObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
begin
Accept:=False;
end;

procedure TFproveedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin

ds1.DataSet.Cancel;
     ds1.DataSet.AfterOpen:= nil;
     ds1.DataSet.AfterPost:= nil;
     ds1.DataSet.AfterDelete:=nil;
     ds1.dataset.onfilterrecord:=nil;
Action:=caFree;
end;

procedure TFproveedores.FormCreate(Sender: TObject);
begin
      ds1.DataSet.AfterOpen:= fdqproveedorAfterOpen;
     ds1.DataSet.AfterPost:= fdqproveedorAfterPost;
     ds1.DataSet.AfterDelete:=fdqproveedorAfterDelete;
    ds1.dataset.onfilterrecord:=fdqproveedorFilterRecord;

    ds1.DataSet.Open;

    end;





procedure TFproveedores.lbed1Change(Sender: TObject);
begin
rDBGridtrabajadores.DataSource.DataSet.DisableControls;
rDBGridtrabajadores.DataSource.DataSet.Filtered:=False;
rDBGridtrabajadores.DataSource.DataSet.Filter:='nombre LIKE ''%'+TLabeledEdit(Sender).Text+'%''';
rDBGridtrabajadores.DataSource.DataSet.Filtered:=True;
rDBGridtrabajadores.DataSource.DataSet.EnableControls;



end;


 procedure TFproveedores.fdqproveedorFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
rdbgridtrabajadores.RecalculateSummaryResults(true);
end;


procedure TFproveedores.fdqproveedorAfterPost(DataSet: TDataSet);

begin

rdbgridtrabajadores.RecalculateSummaryResults(True);



 end;


 procedure TFproveedores.fdqproveedorAfterDelete(DataSet: TDataSet);

begin
rdbgridtrabajadores.RecalculateSummaryResults(True);
end;

procedure TFproveedores.fdqproveedorAfterOpen(DataSet: TDataSet);
begin
rdbgridtrabajadores.RecalculateSummaryResults(True);
end;

end.

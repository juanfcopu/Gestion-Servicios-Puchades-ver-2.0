unit listaclientes;

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
  Tlistclientes = class(TForm)
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
    rDBGridClientes1: TrDBGrid_MS;
    ds1: TDataSource;
    btn5: TToolButton;
    btn6: TToolButton;
    chkCamposBusqueda: TCheckBox;
    lbed1: TLabeledEdit;
    btn7: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure ControlBar1DockOver(Sender: TObject; Source: TDragDockObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
    procedure btncrearclientesClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure rDBGridClientes1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbAgruparAdminClick(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure chkCamposBusquedaClick(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure lbed1Change(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure rDBGridClientes2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  listclientes: Tlistclientes;

implementation

{$R *.dfm}

uses DModule1, clientes, FPrincipal,rDBFilter,rdbtool,rDBFind;

procedure Tlistclientes.btn1Click(Sender: TObject);
begin
Close;
end;

procedure Tlistclientes.btn3Click(Sender: TObject);
begin

ds1.dataset.Delete;


end;

procedure Tlistclientes.btn4Click(Sender: TObject);
begin
DataModule1.VerDatosClienteExecute(ds1.DataSet);
end;

procedure Tlistclientes.btn6Click(Sender: TObject);
begin
DataModule1.rXLSExport1.ExportDBTable(rDBGridClientes1);
end;

procedure Tlistclientes.btn7Click(Sender: TObject);
begin
//FilterByField(DataModule1.fdClientesnombre,fjNone)  ;
 FilterRec(rDBGridClientes1);
end;

procedure Tlistclientes.btncrearclientesClick(Sender: TObject);
begin
DataModule1.crearclientesExecute(Sender);
end;

procedure Tlistclientes.cbAgruparAdminClick(Sender: TObject);
begin
rDBGridClientes1.OptionsEx2.Filters.FunnelBtn:=cbAgruparAdmin.Checked;
end;

procedure Tlistclientes.chkCamposBusquedaClick(Sender: TObject);
begin
   rDBGridClientes1.OptionsEx2.Filters.TextBar:=chkCamposBusqueda.Checked;
end;

procedure Tlistclientes.ControlBar1DockOver(Sender: TObject;
  Source: TDragDockObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
begin
Accept:=False;
end;

procedure Tlistclientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin



//ds1.dataset.Active:=False;

Action:=caFree;
end;

procedure Tlistclientes.FormCreate(Sender: TObject);
begin

    if Self.Owner is TFDQuery then
    begin
      ds1.DataSet:=TFDQuery(Self.Owner);
      if not TFDQuery(Self.Owner).Active then TFDQuery(Self.owner).Active:=true;

    end;

end;



procedure Tlistclientes.FormShow(Sender: TObject);
begin
rDBGridClientes1.RecalculateSummaryResults(True);
end;

procedure Tlistclientes.lbed1Change(Sender: TObject);
begin
rDBGridClientes1.DataSource.DataSet.DisableControls;
rDBGridClientes1.DataSource.DataSet.Filtered:=False;
rDBGridClientes1.DataSource.DataSet.Filter:='nombre LIKE ''%'+TLabeledEdit(Sender).Text+'%''';
rDBGridClientes1.DataSource.DataSet.Filtered:=True;
rDBGridClientes1.DataSource.DataSet.EnableControls;

rDBGridClientes1.RecalculateSummaryResults(true);

 if Length(TLabeledEdit(Sender).text)<1 then rDBGridClientes1.DataSource.DataSet.Filtered:=False;

end;

procedure Tlistclientes.rDBGridClientes1DblClick(Sender: TObject);
begin
    DataModule1.VerDatosClienteExecute(ds1.dataset);
end;

procedure Tlistclientes.rDBGridClientes2DblClick(Sender: TObject);
begin
    Close;
end;




procedure Tlistclientes.ToolButton1Click(Sender: TObject);
begin
DataModule1.editarclienteExecute(ds1.dataset);
end;

procedure Tlistclientes.ToolButton2Click(Sender: TObject);
begin
   DataModule1.insertarpresupuestoExecute(ds1.DataSet);
end;

procedure Tlistclientes.ToolButton3Click(Sender: TObject);
begin
DataModule1.insertarobraExecute(ds1.DataSet);
end;

procedure Tlistclientes.ToolButton4Click(Sender: TObject);
begin
DataModule1.insertarFacturaExecute(ds1.DataSet);
end;

end.

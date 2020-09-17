unit listastrabajadores;

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
  Tlisttrabajadores = class(TForm)
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
    procedure btn8Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  listtrabajadores: Tlisttrabajadores;

implementation

{$R *.dfm}

uses DModule1, clientes, FPrincipal,rDBFilter,rdbtool,rDBFind;

procedure Tlisttrabajadores.btn1Click(Sender: TObject);
begin
Close;
end;

procedure Tlisttrabajadores.btn3Click(Sender: TObject);
begin

ds1.dataset.Delete;


end;

procedure Tlisttrabajadores.btn4Click(Sender: TObject);
begin
DataModule1.actEditarSeguroExecute(ds1.dataset);
end;

procedure Tlisttrabajadores.btn6Click(Sender: TObject);
begin
DataModule1.rXLSExport1.ExportDBTable(rdbgridtrabajadores);
end;

procedure Tlisttrabajadores.btn7Click(Sender: TObject);
begin
//FilterByField(DataModule1.fdClientesnombre,fjNone)  ;
 FilterRec(rdbgridtrabajadores);
end;

procedure Tlisttrabajadores.btn8Click(Sender: TObject);
begin
rdbgridtrabajadores.DataSource.DataSet.DisableControls;
ds1.DataSet.Filtered:=False;
ds1.DataSet.Filter:='fechaPago>= {d '+FormatDateTime('yyyy-mm-dd',Dtp1.Date)+'} and fechaPago<={d '+FormatDateTime('yyyy-mm-dd',DTp2.Date)+'}';
ds1.DataSet.Filtered:=True;
rdbgridtrabajadores.DataSource.DataSet.EnableControls;
  rdbgridtrabajadores.RecalculateSummaryResults(true);
end;

procedure Tlisttrabajadores.btncrearclientesClick(Sender: TObject);
begin
DataModule1.actnuevoseguroexecute(Sender);
end;

procedure Tlisttrabajadores.cbAgruparAdminClick(Sender: TObject);
begin
rDBGridtrabajadores.OptionsEx2.Filters.FunnelBtn:=cbAgruparAdmin.Checked;
end;

procedure Tlisttrabajadores.chkCamposBusquedaClick(Sender: TObject);
begin
  rDBGridtrabajadores.OptionsEx2.Filters.TextBar:=chkCamposBusqueda.Checked;
end;

procedure Tlisttrabajadores.ControlBar1DockOver(Sender: TObject;
  Source: TDragDockObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
begin
Accept:=False;
end;

procedure Tlisttrabajadores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ds1.DataSet.Active:=False;
Action:=caFree;
end;

procedure Tlisttrabajadores.FormCreate(Sender: TObject);
begin


    ds1.DataSet.Open;

    end;





procedure Tlisttrabajadores.FormShow(Sender: TObject);
begin
rDBGridtrabajadores.RecalculateSummaryResults(True);
end;

procedure Tlisttrabajadores.lbed1Change(Sender: TObject);
begin
rDBGridtrabajadores.DataSource.DataSet.DisableControls;
rDBGridtrabajadores.DataSource.DataSet.Filtered:=False;
rDBGridtrabajadores.DataSource.DataSet.Filter:='descripcion LIKE ''%'+TLabeledEdit(Sender).Text+'%''';
rDBGridtrabajadores.DataSource.DataSet.Filtered:=True;
rDBGridtrabajadores.DataSource.DataSet.EnableControls;



end;

procedure Tlisttrabajadores.rDBGridClientes1DblClick(Sender: TObject);
begin
    DataModule1.actEditarSeguroExecute(ds1.dataset);
end;

procedure Tlisttrabajadores.ToolButton1Click(Sender: TObject);
begin
DataModule1.actEditarSeguroexecute(ds1.dataset);
end;

end.

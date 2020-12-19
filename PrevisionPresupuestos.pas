unit PrevisionPresupuestos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.Grids, Vcl.DBGrids, rDBGrid, rDBGrid_MS, Vcl.ExtCtrls,DModule1,
  RzCmboBx, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, System.DateUtils,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  rImprovedComps;

type
  TFPrevisionEjecucion = class(TForm)
    ds1: TDataSource;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    stat1: TStatusBar;
    tlb1: TToolBar;
    btn1: TToolButton;
    btn2: TToolButton;
    btn3: TToolButton;
    btn5: TToolButton;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    rDBGrid_MS1: TrDBGrid_MS;
    GroupBox3: TGroupBox;
    rb1: TRadioButton;
    rb2: TRadioButton;
    rb3: TRadioButton;
    rb4: TRadioButton;
    rb5: TRadioButton;
    rb6: TRadioButton;
    rb7: TRadioButton;
    rb8: TRadioButton;
    rb9: TRadioButton;
    rb10: TRadioButton;
    rb11: TRadioButton;
    rb12: TRadioButton;
    GroupBox4: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    fdtrabajadores: TFDQuery;
    rComboBoxEx1: TrComboBoxEx;
    procedure ToolButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LabeledEdit1Change(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
   procedure fdprevisionpresupuestosAfterOpen(DataSet: TDataSet) ;
     procedure fdprevisionpresupuestosAfterPost(DataSet: TDataSet) ;
    procedure fdprevisionpresupuestosAfterDelete(DataSet: TDataSet) ;
    procedure fdprevisionpresupuestosFilterRecord(DataSet: TDataSet;  var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrevisionEjecucion: TFPrevisionEjecucion;

implementation

uses listalineaspresupuestos;

{$R *.dfm}



procedure TFPrevisionEjecucion.btn1Click(Sender: TObject);
begin
Close;
end;

procedure TFPrevisionEjecucion.btn3Click(Sender: TObject);
var listpresu:Tlistlineaspresupuestos;
begin
    listpresu:=Tlistlineaspresupuestos.Create(self);
    listpresu.OnClose:=listpresu.FormClose2;
    listpresu.ShowModal;
end;

procedure TFPrevisionEjecucion.btn5Click(Sender: TObject);
begin
ds1.DataSet.Delete;
end;

procedure TFPrevisionEjecucion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ds1.DataSet.Close;
fdtrabajadores.Close;
Action:=caFree;
end;

procedure TFPrevisionEjecucion.FormCreate(Sender: TObject);
var ano,i:Integer;
begin
 for i := YearOf(date)-4 to YearOf(date)+5 do rComboBoxEx1.Items.add(IntToStr(i)) ;

 ano:=YearOf(date);

rComboBoxEx1.text:=IntToStr(ano);

ds1.DataSet.AfterOpen:= fdprevisionpresupuestosAfterOpen;
//     ds1.DataSet.AfterPost:= fdprevisionpresupuestosAfterPost;
//     ds1.DataSet.AfterDelete:=fdprevisionpresupuestosAfterDelete;
//     ds1.dataset.onfilterrecord:=fdprevisionpresupuestosFilterRecord;

fdtrabajadores.Active:=True;
ds1.DataSet.Active:=true;
end;

procedure TFPrevisionEjecucion.LabeledEdit1Change(Sender: TObject);
begin
rDBGrid_MS1.DataSource.DataSet.DisableControls;
rDBGrid_MS1.DataSource.DataSet.Filtered:=False;
rDBGrid_MS1.DataSource.DataSet.Filter:='nombre LIKE ''%'+TLabeledEdit(Sender).Text+'%''';
rDBGrid_MS1.DataSource.DataSet.Filtered:=True;
rDBGrid_MS1.DataSource.DataSet.EnableControls;
end;

procedure TFPrevisionEjecucion.rb1Click(Sender: TObject);
begin

   ds1.DataSet.Filtered:=False;
   ds1.DataSet.Filter:='Month(mesprevision)='+IntToStr((Sender as TRadioButton).Tag)+' and Year(mesprevision)='+rComboBoxEx1.Text;
   ds1.DataSet.Filtered:=True;


end;

procedure TFPrevisionEjecucion.ToolButton3Click(Sender: TObject);
begin
 DataModule1.rXLSExport1.ExportDBTable(rDBGrid_MS1);
end;

procedure TFPrevisionEjecucion.fdprevisionpresupuestosAfterOpen(DataSet: TDataSet) ;
begin
     rDBGrid_MS1.RecalculateSummaryResults(true);
end;

procedure TFPrevisionEjecucion.fdprevisionpresupuestosAfterPost(DataSet: TDataSet) ;
begin
    rDBGrid_MS1.RecalculateSummaryResults(true);
end;

procedure TFPrevisionEjecucion.fdprevisionpresupuestosAfterDelete(DataSet: TDataSet) ;
begin
  rDBGrid_MS1.RecalculateSummaryResults(true);
end;

procedure TFPrevisionEjecucion.fdprevisionpresupuestosFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  rDBGrid_MS1.RecalculateSummaryResults(true);
end;



end.

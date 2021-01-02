unit FPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.ToolWin, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.AppEvnts, RzGroupBar, RzTabs, RzSplit, RzPanel,
  RzStatus, RzDBStat, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart, RzButton, RzLstBox;

type
  Tprincipal = class(TForm)
    AppEvent1: TApplicationEvents;
    RzStatusBar1: TRzStatusBar;
    RzToolbar1: TRzToolbar;
    RzSplitter1: TRzSplitter;
    RzGroupBar1: TRzGroupBar;
    RzClientes: TRzGroup;
    RzGroup1: TRzGroup;
    RzGroup2: TRzGroup;
    RzGroup3: TRzGroup;
    RzGroup4: TRzGroup;
    RzFieldStatus1: TRzFieldStatus;
    RzClockStatus1: TRzClockStatus;
    RzGroup7: TRzGroup;
    RzGroup8: TRzGroup;
    RzToolButton1: TRzToolButton;
    RzFieldStatus2: TRzFieldStatus;
    RzPanel1: TRzPanel;
    ListBox1: TListBox;
    PageControl2: TRzPageControl;
    Label1: TLabel;
    CharFacturacion: TDBChart;
    RzGroup9: TRzGroup;
    RzGroupController1: TRzGroupController;
    RzGroup10: TRzGroup;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pagecontrol2Close(Sender: TObject; var AllowClose: Boolean);
    procedure RzClientesItems0Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure PageControl2DockOver(Sender: TObject; Source: TDragDockObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  principal: Tprincipal;

implementation

{$R *.dfm}

uses  listaclientes, DModule1;

procedure Tprincipal.FormClose(Sender: TObject; var Action: TCloseAction);
var I:Integer; f:TCustomForm;
begin
for I :=0 to PageControl2.PageCount - 1 do
   begin


    if (PageControl2.Pages[I].Controls[0] is TCustomForm) then
     begin
     f:=TCustomForm(PageControl2.Pages[I].Controls[0]);
     f.Close;
     end;
   end;

{for I:=0 to DataModule1.FDConnection1.DataSetCount-1  do
    begin
    if Assigned(DataModule1.FDConnection1.DataSets[I]) then

    DataModule1.FDConnection1.DataSets[I].Close;

    end;}

 //DataModule1.FDConnection1.Connected:=False;

end;

procedure Tprincipal.FormShow(Sender: TObject);
begin
principal.Resizing(wsMaximized);
end;

procedure Tprincipal.pagecontrol2Close(Sender: TObject;
  var AllowClose: Boolean);
var f:TCustomForm;
begin
f:=TCustomForm((Sender as TRzPageControl).ActivePage.Controls[0]);
f.Close;
AllowClose:=True;
end;




procedure Tprincipal.PageControl2DockOver(Sender: TObject;
  Source: TDragDockObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
begin
Accept:=True;
end;

procedure Tprincipal.RzClientesItems0Click(Sender: TObject);
begin
DataModule1.listaclientesExecute(DataModule1.fdClientes)
end;

procedure Tprincipal.RzToolButton1Click(Sender: TObject);


begin

DataModule1.RefrescarDataSetTodos;
end;

end.

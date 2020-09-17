unit listaadministradores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  Data.DB, Vcl.Grids, Vcl.DBGrids, rDBGrid, rDBGrid_MS;

type
  Tlistadministradores = class(TForm)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    beBuscar: TButtonedEdit;
    GroupBox4: TGroupBox;
    cbOrdenarC: TCheckBox;
    tlb1: TToolBar;
    btn1: TToolButton;
    btn2: TToolButton;
    btn3: TToolButton;
    btn4: TToolButton;
    btn5: TToolButton;
    btn6: TToolButton;
    rdbgrid1: TrDBGrid_MS;
    ds1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lvadministradoresDblClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  listadministradores: Tlistadministradores;

implementation

uses
  DModule1;

{$R *.dfm}

procedure Tlistadministradores.btn1Click(Sender: TObject);
begin
Close;
end;

procedure Tlistadministradores.btn3Click(Sender: TObject);
begin
DataModule1.crearadministradorexecute(Self);
end;

procedure Tlistadministradores.btn4Click(Sender: TObject);
begin
DataModule1.VerAdministradorExecute(DataModule1.fdadministradores);
end;

procedure Tlistadministradores.btn6Click(Sender: TObject);
begin
DataModule1.editarAdministradorExecute(DataModule1.fdadministradores);
end;

procedure Tlistadministradores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ds1.dataset.Active:=False;
Action:=caFree;
end;

procedure Tlistadministradores.FormCreate(Sender: TObject);
begin
    ds1.dataset.Active:=true;

end;

procedure Tlistadministradores.lvadministradoresDblClick(Sender: TObject);
begin
  DataModule1.VerAdministradorExecute(Sender);
end;

end.

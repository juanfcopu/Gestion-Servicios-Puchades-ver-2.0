unit bancos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, rDBComponents,DModule1, RzPanel, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, rDBGrid, rDBGrid_MS, RzDBNav;

type
  TFBancos = class(TForm)
    ds1: TDataSource;
    FDbancos: TFDQuery;
    rdbgrid1: TrDBGrid_MS;
    rzstsbr1: TRzStatusBar;
    rztlbr1: TRzToolbar;
    rzdbnvgtr1: TRzDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBancos: TFBancos;

implementation

{$R *.dfm}

procedure TFBancos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ds1.DataSet.Active:=False;
Action:=caFree;
end;

procedure TFBancos.FormCreate(Sender: TObject);
begin
ds1.DataSet.Active:=True;
end;

end.

unit inserfacturascomparas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, rDBRecView, Vcl.StdCtrls,
  rDBCtrlGridEx, DBTrackTool, RzSpnEdt, Vcl.Mask, RzEdit, Vcl.ToolWin,
  Vcl.ComCtrls, rImprovedComps, Vcl.ExtCtrls, Vcl.DBCtrls, rDBComponents,
  RzPanel;

type
  TinsertFacturasCompras = class(TForm)
    rToolBar1: TrToolBar;
    dbnvgr1: TDBNavigator;
    rDBRecView1: TrDBRecView;
    RzStatusBar1: TRzStatusBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure rDBRecView1KeyPress(Sender: TObject; var Key: Char);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  insertFacturasCompras: TinsertFacturasCompras;

implementation

uses
  listafacturascompras, FPrincipal;

{$R *.dfm}





procedure TinsertFacturasCompras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Tlistfacturascompras(Self.Owner).ds1.DataSet.Cancel;
Action:=caFree;
end;

procedure TinsertFacturasCompras.FormShow(Sender: TObject);
begin


  Self.Left:=principal.Left+(principal.Width div 2)-(Self.Width div 2);
  Self.Top:=principal.Top+(principal.Height div 2)-(Self.Height div 2);
  Tlistfacturascompras(Self.Owner).ds1.DataSet.Insert;
end;

procedure TinsertFacturasCompras.rDBRecView1KeyPress(Sender: TObject; var Key: Char);
begin
try
if Key=#13 then begin
            Tlistfacturascompras(Self.Owner).ds1.DataSet.Post;
            // RzStatusBar1.SimpleCaption:=IntToStr(listfacturascompras.inserciones) +' facturas insertadas.';
            Tlistfacturascompras(Self.Owner).ds1.DataSet.Insert;



                 end;
 if Key='.' then Key:=',';

 except
  raise;
end;




end;

end.

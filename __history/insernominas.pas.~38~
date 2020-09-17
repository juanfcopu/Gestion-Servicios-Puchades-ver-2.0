unit insernominas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, rDBRecView, Vcl.StdCtrls,
  rDBCtrlGridEx, DBTrackTool, RzSpnEdt, Vcl.Mask, RzEdit, Vcl.ToolWin,
  Vcl.ComCtrls, rImprovedComps, Vcl.ExtCtrls, Vcl.DBCtrls, rDBComponents,
  RzPanel;

type
  TinsertNominas = class(TForm)
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
  insertNominas: TinsertNominas;

implementation

uses
  listanominas, FPrincipal;

{$R *.dfm}


 var inserciones:Integer;


procedure TinsertNominas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Tlistnominas(Self.Owner).ds1.DataSet.Cancel;
Action:=caFree;
end;

procedure TinsertNominas.FormShow(Sender: TObject);
begin

  inserciones:=0;
  Self.Left:=principal.Left+(principal.Width div 2)-(Self.Width div 2);
  Self.Top:=principal.Top+(principal.Height div 2)-(Self.Height div 2);
  Tlistnominas(Self.Owner).ds1.DataSet.Insert;
end;

procedure TinsertNominas.rDBRecView1KeyPress(Sender: TObject; var Key: Char);
begin
try
if Key=#13 then begin
            Tlistnominas(Self.Owner).ds1.DataSet.Post;
            inserciones:=inserciones+1;
            RzStatusBar1.SimpleCaption:=IntToStr(inserciones) +' nominas insertadas.';
            Tlistnominas(Self.Owner).ds1.DataSet.Insert;


            //rDBRecView1.
                 end;
 except
  raise;
end;
                 end;

end.

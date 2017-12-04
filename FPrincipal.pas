unit FPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.ToolWin, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  Tprincipal = class(TForm)
    StatusBar1: TStatusBar;
    MainMenuPrincipal: TMainMenu;
    ddd1: TMenuItem;
    Provedores1: TMenuItem;
    Administradores1: TMenuItem;
    rabajadores1: TMenuItem;
    Panel2: TPanel;
    PageControl2: TPageControl;
    Panel1: TPanel;
    Splitter1: TSplitter;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  principal: Tprincipal;

implementation

{$R *.dfm}

uses BOTONES, listaclientes, DModule1;

procedure Tprincipal.FormCreate(Sender: TObject);
var botons:Tmenuseleccion;  lclient: Tlistclientes ;
begin
    botons:=Tmenuseleccion.Create(principal);
    botons.Show;
    panel1.Width:=botons.Width-10;
    botons.ManualDock(panel1);
    lclient:=Tlistclientes.Create(principal);
    lclient.Width:=botons.Width-10;
    lclient.Show;
    lclient.ManualDock(panel1);
end;

end.

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
    ControlBar1: TControlBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure PageControl2DockOver(Sender: TObject; Source: TDragDockObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure Panel1DockOver(Sender: TObject; Source: TDragDockObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure PageControl2DockDrop(Sender: TObject; Source: TDragDockObject; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  principal: Tprincipal;

implementation

{$R *.dfm}

uses BOTONES, listaclientes, DModule1, clientes, navegador;

procedure Tprincipal.FormCreate(Sender: TObject);
var botons:Tmenuseleccion;  navegador: TFNavegador ;
begin
    botons:=Tmenuseleccion.Create(principal);
    botons.Show;
    panel1.Width:=botons.Width-10;
    botons.ManualDock(panel1);
    navegador:=TFNavegador.Create(principal);
    navegador.Width:=botons.Width-10;
    navegador.Show;
    navegador.ManualDock(panel1);
end;



procedure Tprincipal.PageControl2DockDrop(Sender: TObject;
  Source: TDragDockObject; X, Y: Integer);
begin
         if (Source.Control is Tlistclientes) then
         if PageControl2.PageCount > 0 then PageControl2.Pages[PageControl2.PageCount-1].ImageIndex:=6;
end;

procedure Tprincipal.PageControl2DockOver(Sender: TObject;
  Source: TDragDockObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
  var FClientes:Tlistclientes;  i:integer;
begin

   if (Source.Control is Tlistclientes) then              //
begin
      FClientes:=(Source.Control as Tlistclientes) ;
      for i:= 1 to FClientes.ListView1.Columns.Count - 1   do
      begin
          FClientes.ListView1.Column[i].AutoSize:=true;
      end;

   end;
end;


procedure Tprincipal.Panel1DockOver(Sender: TObject; Source: TDragDockObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var FClientes:Tlistclientes;  i:integer;
begin
   if (Source.Control is Tlistclientes) then              //
   begin
      FClientes:=(Source.Control as Tlistclientes) ;
      for i:= 1 to FClientes.ListView1.Columns.Count - 1   do
      begin
          FClientes.ListView1.Column[i].AutoSize:=false;
          FClientes.ListView1.Column[i].width:=0;
      end;

      end;

      if (Source.Control is TFClientes) then   Accept:= False;
end;


end.

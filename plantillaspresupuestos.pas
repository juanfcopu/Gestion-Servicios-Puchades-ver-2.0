unit plantillaspresupuestos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzPanel, Vcl.ExtCtrls, Vcl.Grids, System.IOUtils,  System.types,
  rStringGridEd, RzStatus, Vcl.StdCtrls;

type
  TFPlantillasPresupuestos = class(TForm)
    rztlbr1: TRzToolbar;
    RzPanel1: TRzPanel;
    RzStatusBar1: TRzStatusBar;
    rStringGridEd1: TrStringGridEd;
    RzPanel2: TRzPanel;
    Button1: TButton;
    btn1: TButton;
    RzStatusPane1: TRzStatusPane;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPlantillasPresupuestos: TFPlantillasPresupuestos;

implementation

{$R *.dfm}

procedure TFPlantillasPresupuestos.btn1Click(Sender: TObject);
begin
Close;
end;

procedure TFPlantillasPresupuestos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
end;

procedure TFPlantillasPresupuestos.FormCreate(Sender: TObject);
var direc:TDirectory; lista:TstringDynArray; i:integer;
begin
    lista:=direc.GetFiles(GetCurrentDir+'\Plantillas');

    RzStatusPane1.Caption:=IntToStr(Length(lista));

    rStringGridEd1.RowCount:=High(lista);

    for i := 0 to High(lista) do
    begin
    rStringGridEd1.StringCells[1,i]:=lista[i];
    rStringGridEd1.StringCells[0,i]:=ExtractFileName(lista[i]);
    end;


end;

end.

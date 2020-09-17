unit Elegircalendario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, RzPopups;

type
  TFElegirCalendario = class(TForm)
    RzCalendar1: TRzCalendar;
    procedure RzCalendar1DblClick(Sender: TObject);
    procedure RzCalendar1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FElegirCalendario: TFElegirCalendario;

implementation

uses calendario;

{$R *.dfm}

procedure TFElegirCalendario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
end;

procedure TFElegirCalendario.RzCalendar1DblClick(Sender: TObject);
begin
FCalendario.fechacopia:=RzCalendar1.Date;
Close;
end;

procedure TFElegirCalendario.RzCalendar1KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#27 then Close;

end;

end.

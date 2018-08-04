unit BOTONES;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ButtonGroup, Vcl.Menus,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tmenuseleccion = class(TForm)
    btclientes: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    btpresupuestos: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    procedure btclientesClick(Sender: TObject);
    procedure btpresupuestosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  menuseleccion: Tmenuseleccion;

implementation

{$R *.dfm}

uses DModule1, navegador;

procedure Tmenuseleccion.btclientesClick(Sender: TObject);
begin
     fnavegador.NodosClientes;
end;

procedure Tmenuseleccion.btpresupuestosClick(Sender: TObject);
begin
     fnavegador.NodosPresupuestos;
end;

end.

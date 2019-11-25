unit config;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Tabs, Vcl.StdCtrls, Vcl.DockTabSet,
  Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls, System.IniFiles;

type
  Tconfiguracion = class(TForm)
    pgc1: TPageControl;
    tsServidor: TTabSheet;
    btn1: TButton;
    lbEservidor: TLabeledEdit;
    lbEpuerto: TLabeledEdit;
    lbEdriver: TLabeledEdit;
    lbEDataBase: TLabeledEdit;
    lbEVerdorLib: TLabeledEdit;
    tsPath: TTabSheet;
    lbPathUSer: TLabeledEdit;
    lbPathPlantillas: TLabeledEdit;
    lbPathPresupuestos: TLabeledEdit;
    lbPathObras: TLabeledEdit;
    btAceptar: TButton;
    tsIVA: TTabSheet;
    lbIVAdefecto: TLabeledEdit;
    btAceptar2: TButton;
    btCancelar2: TButton;
    btCancelar1: TButton;
    btncancelar: TButton;
    ts1: TTabSheet;
    lbedEmpresa: TLabeledEdit;
    btn2: TButton;
    btn3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure btAceptar2Click(Sender: TObject);
    procedure lbIVAdefectoKeyPress(Sender: TObject; var Key: Char);
    procedure btCancelar2Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  configuracion: Tconfiguracion;

implementation

{$R *.dfm}

procedure Tconfiguracion.btAceptar2Click(Sender: TObject);
var SPuchades:TIniFile;
begin
   SPuchades := TIniFile.Create(ExtractFilePath(Application.ExeName)+'SPuchades.ini') ;
try
    SPuchades.WriteInteger('IVA','IvaDefecto',StrToInt(lbIVAdefecto.text));

finally
  Spuchades.Free;
end;
end;

procedure Tconfiguracion.btAceptarClick(Sender: TObject);
var SPuchades:TIniFile ;
begin

SPuchades := TIniFile.Create(ExtractFilePath(Application.ExeName)+'SPuchades.ini') ;
try
SPuchades.Writestring('PATH','PATHUSER',lbPathUSer.Text) ;
    SPuchades.Writestring('PATH','PATHPLANTILLAS',lbPathPlantillas.text);
    SPuchades.WriteString('PATH','PATHDOCPRESUPUESTOS',lbPathPresupuestos.text);
    SPuchades.WriteString('PATH','PATHDOCOBRAS', lbPathObras.text);

finally
  SPuchades.Free;
end;
end;

procedure Tconfiguracion.btCancelar2Click(Sender: TObject);
begin
Close;
end;

procedure Tconfiguracion.btn1Click(Sender: TObject);
var FDDefini : TIniFile;

begin
  FDDefini := TIniFile.Create(ExtractFilePath(Application.ExeName)+'FDConnectionDefs.ini') ;

  try

    FDDefini.Writestring('SPuchades','DriverID',lbEdriver.Text) ;
    FDDefini.Writestring('SPuchades','Server',lbEservidor.text);
    FDDefini.WriteString('SPuchades','Database',lbEDataBase.text);
    FDDefini.WriteInteger('SPuchades','Port', StrToInt(lbEpuerto.Text) );

  finally
    FDDefini.Free;

  end;

end;

procedure Tconfiguracion.btn2Click(Sender: TObject);
var FDDefini:TIniFile;
begin
      FDDefini := TIniFile.Create(ExtractFilePath(Application.ExeName)+'FDConnectionDefs.ini') ;

  try

    FDDefini.WriteInteger('EMPRESA','IDEMPRESA', StrToInt(lbedEmpresa.Text) );

  finally
    FDDefini.Free;

  end;
end;

procedure Tconfiguracion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
end;

procedure Tconfiguracion.FormCreate(Sender: TObject);
var
  FDDefini : TIniFile;
  SPuchades: TIniFile;
  PathUsuario:string;

begin
  FDDefini := TIniFile.Create(ExtractFilePath(Application.ExeName)+'FDConnectionDefs.ini') ;
  SPuchades := TIniFile.Create(ExtractFilePath(Application.ExeName)+'SPuchades.ini') ;
  try

    lbEDriver.text:= FDDefini.ReadString('SPuchades','DriverID','MySQL') ;
    lbEservidor.Text:= FDDefini.ReadString('SPuchades','Server','delldebian');
    lbEpuerto.Text:= FDDefini.ReadString('SPuchades','Port','3306');
    lbEDataBase.Text:= FDDefini.ReadString('SPuchades','Database','puchades2');

    PathUsuario:=GetEnvironmentVariable('USERPROFILE')+'\Dropbox\SERVICIOS INTEGRALES PUCHADES';

    lbPathUSer.Text:= SPuchades.ReadString('PATH','PATHUSER',PathUsuario);
    lbPathPlantillas.Text:=SPuchades.ReadString('PATH','PATHPLANTILLAS','\Plantillas\Presupuestos.dot');
    lbPathPresupuestos.Text:=SPuchades.ReadString('PATH','PATHDOCPRESUPUESTOS',PathUsuario+'\PRESUPUESTOS');
    lbPathObras.Text:=SPuchades.ReadString('PATH','PATHDOCOBRAS',PathUsuario+'\OBRAS');

    lbIVAdefecto.Text:=IntToStr(SPuchades.ReadInteger('IVA','IvaDefecto',10));
    lbedEmpresa.Text:=IntToStr(SPuchades.ReadInteger('EMPRESA','IDEMPRESA',1));

  finally
    FDDefini.Free;
    SPuchades.Free;
  end;

end;

procedure Tconfiguracion.lbIVAdefectoKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in [#8, '0'..'9']) then
  begin
           Key := #0;
  end

end;

end.

unit config;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Tabs, Vcl.StdCtrls, Vcl.DockTabSet,
  Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls, System.IniFiles, RzPanel, Data.DB,
  Vcl.Grids, Vcl.DBGrids, rDBGrid, rDBGrid_MS, Vcl.Mask, Vcl.DBCtrls,
  rDBComponents;

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
    ts2: TTabSheet;
    rzgrpbx1: TRzGroupBox;
    lbedIRPFdefecto: TLabeledEdit;
    grp1: TGroupBox;
    grp2: TGroupBox;
    tlb1: TToolBar;
    ds1: TDataSource;
    rDBGridClientes1: TrDBGrid_MS;
    rDBEdit1: TrDBEdit;
    rDBEdit2: TrDBEdit;
    btn4: TButton;
    btn5: TButton;
    btn6: TToolButton;
    lbPathThunderbird: TLabeledEdit;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    rDBEdit3: TrDBEdit;
    rDBEdit4: TrDBEdit;
    Button1: TButton;
    Button2: TButton;
    GroupBox2: TGroupBox;
    rDBGrid_MS1: TrDBGrid_MS;
    ds2: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure btAceptar2Click(Sender: TObject);
    procedure lbIVAdefectoKeyPress(Sender: TObject; var Key: Char);
    procedure btCancelar2Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure pgc1Change(Sender: TObject);
    procedure ts2Enter(Sender: TObject);
    procedure ts2Exit(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure ds1StateChange(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ds2StateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  configuracion: Tconfiguracion;

implementation

{$R *.dfm}
uses DModule1;

procedure Tconfiguracion.btAceptar2Click(Sender: TObject);
var SPuchades:TIniFile;
begin
   SPuchades := TIniFile.Create(ExtractFilePath(Application.ExeName)+'SPuchades.ini') ;
try
    SPuchades.WriteInteger('IVA','IvaDefecto',StrToInt(lbIVAdefecto.text));
    SPuchades.WriteInteger('IRPF','IRPFDefecto',StrToInt(lbedIRPFdefecto.Text));
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
    SPuchades.WriteString('PATH','PATHTHUNDERBIRD', lbPathThunderbird.text);

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

procedure Tconfiguracion.btn4Click(Sender: TObject);
begin
if (ds1.DataSet.State in [dsInsert,dsEdit]) then ds1.DataSet.Post;



end;

procedure Tconfiguracion.btn5Click(Sender: TObject);
begin
    if (ds1.DataSet.State in [dsBrowse]) then ds1.DataSet.Insert;
end;

procedure Tconfiguracion.btn6Click(Sender: TObject);
begin
DataModule1.rXLSExport1.ExportDBTable(ds1.DataSet);
end;

procedure Tconfiguracion.Button1Click(Sender: TObject);
begin
      if (ds2.DataSet.State in [dsInsert,dsEdit]) then ds2.DataSet.Post;
end;

procedure Tconfiguracion.Button2Click(Sender: TObject);
begin
        if (ds2.DataSet.State in [dsBrowse]) then ds2.DataSet.Insert;
end;

procedure Tconfiguracion.ds1StateChange(Sender: TObject);
begin
    if TDataSource(Sender).DataSet.State in [dsInsert, dsEdit] then
    begin
    btn4.Enabled:=True ;
    btn5.Enabled:=False;
    end
    else begin
          btn4.Enabled:=False;
          btn5.Enabled:=True;
          end;
end;

procedure Tconfiguracion.ds2StateChange(Sender: TObject);
begin
  if TDataSource(Sender).DataSet.State in [dsInsert, dsEdit] then
    begin
    Button1.Enabled:=True ;
    Button2.Enabled:=False;
    end
    else begin
          Button1.Enabled:=False;
          button2.Enabled:=True;
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
    lbPathThunderbird.Text:=SPuchades.ReadString('PATH','PATHTHUNDERBIRD','C:\Program Files (x86)\Mozilla Thunderbird\thunderbird');

    lbIVAdefecto.Text:=IntToStr(SPuchades.ReadInteger('IVA','IvaDefecto',10));
     lbedIRPFdefecto.Text:=IntToStr(SPuchades.ReadInteger('IRPF','IRPFDefecto',20));
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

procedure Tconfiguracion.pgc1Change(Sender: TObject);
begin
if (TPageControl(Sender).ActivePageIndex=5) then  Ds2.dataset.active:=True;
end;

procedure Tconfiguracion.ts2Enter(Sender: TObject);
begin
DataModule1.fdqcuentas.Active:=True;
end;

procedure Tconfiguracion.ts2Exit(Sender: TObject);
begin
DataModule1.fdqcuentas.Active:=True;
end;

end.

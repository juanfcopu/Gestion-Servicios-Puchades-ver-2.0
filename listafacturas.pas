unit listafacturas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,System.DateUtils,
  Data.Bind.DBScope, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, rDBGrid, rDBGrid_MS;

type
  Tlistfacturas = class(TForm)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    beBuscar: TButtonedEdit;
    rbcliente: TRadioButton;
    rbnumero: TRadioButton;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    GroupBox1: TGroupBox;
    rbPagadas: TRadioButton;
    rbImpagadas: TRadioButton;
    rbTodas: TRadioButton;
    stat1: TStatusBar;
    tlb1: TToolBar;
    btn1: TToolButton;
    btn2: TToolButton;
    btn3: TToolButton;
    btn4: TToolButton;
    btn5: TToolButton;
    rDBGridClientes1: TrDBGrid_MS;
    ds1: TDataSource;
    procedure FormCreate(Sender: TObject);

    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
        procedure rbTodasClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn5Click(Sender: TObject);
    procedure rbImpagadasClick(Sender: TObject);
    procedure rbPagadasClick(Sender: TObject);
    procedure rDBGridClientes1DblClick(Sender: TObject);
    procedure beBuscarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  listfacturas: Tlistfacturas;

implementation

uses
  DModule1;

{$R *.dfm}





procedure Tlistfacturas.beBuscarChange(Sender: TObject);
begin
rDBGridClientes1.DataSource.DataSet.DisableControls;
rDBGridClientes1.DataSource.DataSet.Filtered:=False;
rDBGridClientes1.DataSource.DataSet.Filter:='nombre LIKE ''%'+TLabeledEdit(Sender).Text+'%''';
rDBGridClientes1.DataSource.DataSet.Filtered:=True;
rDBGridClientes1.DataSource.DataSet.EnableControls;
end;

procedure Tlistfacturas.btn1Click(Sender: TObject);
begin
Close;
end;

procedure Tlistfacturas.btn5Click(Sender: TObject);
begin
if Application.MessageBox('�Esta seguro de borrar la factura?','Borrar',MB_YESNO)=IDYES then
       begin
           ds1.DataSet.Delete;
       end

   end;

procedure Tlistfacturas.Button1Click(Sender: TObject);
var SQLstr,SQLstr2:string;
begin

 SQLstr:='Select C.nombre, f.IdCliente, f.idfactura, f.concepto, f.pagada, f.FechaFactura, f.TotalBruto, f.iva, f.total, f.ano ';
 SQLstr2:='From facturas f, clientes C where C.idContactos=f.idCliente and f.FechaFactura>=:FechaIni and f.Fechafactura<=:FechaFin';
 DataModule1.fdfacturas.Close;
 DataModule1.fdfacturas.SQL.Clear;
 DataModule1.fdfacturas.SQL.Add(SQLstr+SQLstr2);
 DataModule1.fdfacturas.ParamByName('FechaIni').AsDateTime:=DateTimePicker1.Date;
 DataModule1.fdfacturas.ParamByName('FechaFin').AsDateTime:=DateTimePicker2.DateTime;
 DataModule1.fdfacturas.Active:=true;

end;

procedure Tlistfacturas.Button2Click(Sender: TObject);
var SQLstr,SQLstr2:string;
begin
{LinkListControlToField1.Active:=false;
 SQLstr:='Select C.nombre, O.Id_Cliente, O.id_Obra, O.descripcion, O.Ejecutado, O.FechaComienzo, O.ImporteObra, O.FechaFin ';
 SQLstr2:='From obras O, clientes C where C.idContactos=O.id_Cliente and O.FechaFin>=:FechaIni and O.FechaFin<=:FechaFin';
 DataModule1.fdObras.Close;
 DataModule1.fdObras.SQL.Clear;
 DataModule1.fdObras.SQL.Add(SQLstr+SQLstr2);
 DataModule1.fdObras.ParamByName('FechaIni').AsDateTime:=DateTimePicker3.DateTime;
 DataModule1.fdObras.ParamByName('FechaFin').AsDateTime:=DateTimePicker4.DateTime;
 DataModule1.fdObras.Active:=true;
 LinkListControlToField1.Active:=true;   }
end;


procedure Tlistfacturas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DataModule1.fdfacturas.Close;
Action:=caFree;
end;

procedure Tlistfacturas.FormCreate(Sender: TObject);
begin
     DateTimePicker1.Date:=Date;
     DateTimePicker2.Date:=Date;
    

     rbcliente.checked:=true;
     rbTodas.Checked:=True;
     DataModule1.fdfacturas.Active:=true;
end;

procedure Tlistfacturas.rbImpagadasClick(Sender: TObject);
begin
 if rbImpagadas.Checked then
       begin

       ds1.DataSet.filter:= 'Pagada=False';
       ds1.DataSet.Filtered:=True;

       end;
end;



procedure Tlistfacturas.rbPagadasClick(Sender: TObject);
begin
   if rbPagadas.Checked then
       begin

       ds1.DataSet.filter:= 'Pagada=True';
       ds1.DataSet.filtered:=True;

       end;
end;

procedure Tlistfacturas.rbTodasClick(Sender: TObject);
begin
      if rbTodas.Checked then
       begin

       ds1.DataSet.filtered:=False;
       ds1.DataSet.Filter:='';
       end;

end;

procedure Tlistfacturas.rDBGridClientes1DblClick(Sender: TObject);
begin
DataModule1.editarFacturaExecute(ds1.DataSet)   ;
end;

end.

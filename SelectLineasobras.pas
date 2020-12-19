unit SelectLineasobras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,  system.dateutils,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, rDBGrid, rDBGrid_MS;

type
  TFLineasObrasFacturas = class(TForm)
    statuslineas: TStatusBar;
    tlbarlineas: TToolBar;
    btnselectodos: TToolButton;
    btndeselecTodos: TToolButton;
    btn1: TToolButton;
    btaAceptar: TToolButton;
    btCerrar: TToolButton;
    ds1: TDataSource;
    rDBGridClientes1: TrDBGrid_MS;
    fdqlobras: TFDQuery;
    fdqlobrasid_lineaobra: TIntegerField;
    fdqlobrasobras_ID_obra: TIntegerField;
    fdqlobrasdescripcion: TStringField;
    fdqlobrasTotal: TFloatField;
    fdqlobrasfacturas_id_factura: TIntegerField;
    fdqlobrasfacturas_ano: TIntegerField;
    fdqlobrasFechaComienzo: TDateTimeField;
    fdqlobrasFechaFin: TDateTimeField;
    fdqlobrasid_obra: TFDAutoIncField;
    fdqlobrasID_Cliente: TIntegerField;
    fdqlobrasdescripObra: TMemoField;
    btVista: TToolButton;

    procedure btCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btaAceptarClick(Sender: TObject);
    procedure btndeselecTodosClick(Sender: TObject);
    procedure btnselectodosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rDBGridClientes1GetFixedColState(Sender: TObject;
      ActiveRow: Boolean; AFont: TFont; var Text: string;
      var CheckBoxChecked: Boolean);
    procedure btVistaClick(Sender: TObject);
    procedure fdqlobrasAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FLineasObrasFacturas: TFLineasObrasFacturas;



implementation

uses
  clientes,DModule1, obras, facturas;


{$R *.dfm}

procedure TFLineasObrasFacturas.btaAceptarClick(Sender: TObject);
begin
            DataModule1.insertar2execute(Self);
     Close;
end;

procedure TFLineasObrasFacturas.btCerrarClick(Sender: TObject);
begin
Close;
end;

procedure TFLineasObrasFacturas.btndeselecTodosClick(Sender: TObject);

begin
     rDBGridClientes1.DeSelectAll;

end;

procedure TFLineasObrasFacturas.btnselectodosClick(Sender: TObject);

begin
    rDBGridClientes1.SelectAll;


end;

procedure TFLineasObrasFacturas.fdqlobrasAfterOpen(DataSet: TDataSet);
begin
   statuslineas.Panels[0].Text:='Nº Total de lineas:'+ IntToStr(rDBGridclientes1.DataSource.DataSet.RecordCount);

end;

procedure TFLineasObrasFacturas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
end;

procedure TFLineasObrasFacturas.FormCreate(Sender: TObject);
begin



     if (Owner is TFDQuery) then
      begin
          fdqlobras.ParamByName('IDCLIENTE').AsInteger:=TFDQuery(Owner).FieldByName('id_Cliente').AsInteger;
          fdqlobras.Active:=True;
      end else
                ShowMessage('No se ha podido encontrar el cliente.');





                                    rDBGridClientes1.UseMultiSelect:=True;
                                  
end;

procedure TFLineasObrasFacturas.rDBGridClientes1GetFixedColState(
  Sender: TObject; ActiveRow: Boolean; AFont: TFont; var Text: string;
  var CheckBoxChecked: Boolean);
begin
statuslineas.Panels[1].Text:='Nº de lineas seleccionadas:'+inttostr(TrDBGrid_MS(Sender).GetSelectedRecCount);

if TrDBGrid_MS(Sender).GetSelectedRecCount > 0 then btaAceptar.Enabled:=True
else btaAceptar.Enabled:=False;


end;

procedure TFLineasObrasFacturas.btVistaClick(Sender: TObject);
var literal1,literal2:string;
begin

 if not (Owner is TFDQuery) then  Exit;

 literal1:='SELECT O.ID_Cliente, O.descripcion as descripObra, O.id_obra, LO.id_lineaobra, LO.obras_ID_obra, LO.descripcion,LO.Total,LO.facturas_id_factura,LO.facturas_ano,O.FechaComienzo,O.FechaFin FROM lineasobras LO,obras O ';
 if btVista.Down then
 begin
   literal2:='WHERE LO.obras_id_obra=O.id_obra AND O.id_obra=:OBRA AND O.id_Cliente=:IDCLIENTE AND LO.facturas_id_factura is null';
   fdqlobras.Close;
   fdqlobras.SQL.clear;
   fdqlobras.SQL.Add(literal1+literal2);
   fdqlobras.ParamByName('IDCLIENTE').AsInteger:= TFDQuery(Owner).FieldByName('id_Cliente').AsInteger;
   fdqlobras.ParamByName('OBRA').AsInteger:=TFDQuery(Owner).FieldByName('id_Obra').AsInteger;
   fdqlobras.Active:=True;
 end else begin
           literal2:='WHERE LO.obras_id_obra=O.id_obra AND O.id_Cliente=:IDCLIENTE AND LO.facturas_id_factura is null';
            fdqlobras.Close;
            fdqlobras.SQL.Clear;
            fdqlobras.SQL.Add(literal1+literal2);
            fdqlobras.ParamByName('IDCLIENTE').AsInteger:= TFDQuery(Owner).FieldByName('id_Cliente').AsInteger;
            fdqlobras.Active:=True;

          end;

end;

end.

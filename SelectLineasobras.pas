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
var i:Integer;     iva,totalfactura:Double;  fdcliente,fdfactura,fdlineasobra:TFDQuery;
begin
          {
                 fdlineasobra:=fdqlobras;

                 fdfactura:=TFDQuery.Create(Self);
                 fdfactura.Connection:=DataModule1.FDConnection1;
                 fdfactura.SQL.Clear;
                 fdfactura.SQL.Add('SELECT * FROM facturas');
                 fdfactura.Open;

                 fdcliente:=TFDQuery.Create(Self);
                 fdcliente.Connection:=DataModule1.FDConnection1;
                 fdcliente.SQL.Clear;
                 fdcliente.SQL.Add('SELECT * FROM clientes WHERE idContactos=:contacto');
                 fdcliente.ParamByName('contacto').AsInteger:=fdlineasobra.FieldByName('id_cliente').asinteger;
                 fdcliente.Open;


                 {
                 fdlineasfactura:=TFDQuery.Create(Self);
                 fdlineasfactura.Connection:=DataModule1.FDConnection1;
                 fdlineasfactura.SQL.Clear;
                 fdlineasfactura.SQL.Add('SELECT * FROM lineasfacturas');


                 fdlineasfactura.UpdateOptions.KeyFields:='id_lineafactura;facturas_idfactura;facturas_ano';
                  fdlineasfactura.Open;

        iva:=DataModule1.IVA(fdcliente.FieldByName('familia').AsInteger);

        fdfactura.Insert;
        fdfactura.FieldByName('cantidad').Asfloat:=0;
        fdfactura.FieldByName('ano').AsInteger:=YearOf(Date);
        fdfactura.FieldByName('idfactura').AsInteger:=DataModule1.ObtenerNFactura(YearOf(Date));
        fdfactura.FieldByName('EmisorFactura').AsInteger:=DataModule1.ObtenerIDEMPRESA;
        fdfactura.Fieldbyname('concepto').asstring:=fdlineasobra.FieldByName('DescripObra').asstring;
        fdfactura.Fieldbyname('Pagada').asboolean:=false;
        fdfactura.Fieldbyname('TotalBruto').asfloat:=0;
        fdfactura.FieldByName('iva').AsFloat:=(iva-1)*100 ;
        fdfactura.FieldByName('importeIva').AsFloat:=0;
        fdfactura.FieldByName('total').AsFloat:=0;
        fdfactura.Fieldbyname('IdCliente').asinteger:=fdlineasobra.FieldByName('Id_Cliente').asinteger;
        fdfactura.Fieldbyname('FechaFactura').asdatetime:=Date;
        fdfactura.post;


        for i:=0 to rDBGridClientes1.rBookmarks.Count-1 do
        begin
            begin
                  fdlineasobra.GotoBookmark(rDBGridClientes1.rBookmarks.Items[i]);
                  fdlineasfactura.refresh;
                  fdlineasfactura.Insert;
                //  fdlineasfactura.FieldByName('id_lineafactura').AsInteger:=i;
                  fdlineasfactura.Fieldbyname('descripcion').asstring:=fdlineasobra.FieldByName('Descripcion').asstring;
                  fdlineasfactura.Fieldbyname('total').asfloat:=fdlineasobra.FieldByName('Total').asfloat;

                  totalfactura:=totalfactura+fdlineasfactura.Fieldbyname('total').asfloat;
                  fdlineasfactura.Fieldbyname('facturas_Idfactura').asinteger:=fdfactura.FieldByName('Idfactura').asinteger;
                  fdlineasfactura.Fieldbyname('facturas_ano').asinteger:=fdfactura.FieldByName('ano').asinteger;
                  fdlineasfactura.Fieldbyname('iva').asfloat:=fdlineasobra.FieldByName('Total').asfloat*((iva-1)*100);
                  fdlineasfactura.Fieldbyname('importe').AsFloat:=fdlineasobra.FieldByName('total').asfloat;
                  fdlineasfactura.Fieldbyname('cantidad').asinteger:=1;
                  fdlineasfactura.FieldByName('descuento').AsInteger:=0;
                  fdlineasfactura.Fieldbyname('lineasobras_id_lineaobra').AsFloat:=fdlineasobra.FieldByName('id_lineaobra').asfloat;
                  fdlineasfactura.Fieldbyname('lineasobras_obras_id_obra').AsFloat:=fdlineasobra.FieldByName('obras_ID_obra').asfloat;
                  fdlineasfactura.FieldByName('nlinea').AsInteger:=i+1;

                  FDlineasfactura.Post;

                  fdlineasobra.Edit;
                  fdlineasobra.FieldByName('facturas_id_factura').AsInteger:= fdfactura.FieldByName('Idfactura').asinteger;
                  fdlineasobra.FieldByName('facturas_ano').AsInteger:= fdfactura.FieldByName('ano').asinteger;

                  fdlineasobra.Post;
            end;
        end;
           fdfactura.Edit;
           fdfactura.Fieldbyname('TotalBruto').asfloat:=totalfactura;
           fdfactura.Fieldbyname('baseimponible').asfloat:=totalfactura;
           fdfactura.Fieldbyname('iva').asfloat:=(iva-1)*100;
           fdfactura.FieldByName('importeIva').AsFloat:=totalfactura*(iva-1);
           fdfactura.Fieldbyname('total').asfloat:=totalfactura+(totalfactura*(iva-1));
           fdfactura.Post;






            }
     DataModule1.insertar2execute(Self);
     Close;
end;

procedure TFLineasObrasFacturas.btCerrarClick(Sender: TObject);
begin
Close;
end;

procedure TFLineasObrasFacturas.btndeselecTodosClick(Sender: TObject);
var i:Integer;
begin
     rDBGridClientes1.DeSelectAll;

end;

procedure TFLineasObrasFacturas.btnselectodosClick(Sender: TObject);

begin
    rDBGridClientes1.SelectAll;


end;

procedure TFLineasObrasFacturas.fdqlobrasAfterOpen(DataSet: TDataSet);
begin
   statuslineas.Panels[0].Text:='N� Total de lineas:'+ IntToStr(rDBGridclientes1.DataSource.DataSet.RecordCount);

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
statuslineas.Panels[1].Text:='N� de lineas seleccionadas:'+inttostr(TrDBGrid_MS(Sender).GetSelectedRecCount);

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

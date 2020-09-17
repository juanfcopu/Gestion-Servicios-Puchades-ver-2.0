unit objetos;

interface

uses FireDAC.Comp.Client,Data.DB;

type
  TFactura = class(TObject)
    FQCliente: TFDQuery;
    FQFactura: TFDQuery;
    FQlineasFact: TFDQuery;
    DSCliente:TDataSource;
    DSFactura:TDataSource;
    DSlineasFact:TDataSource;
  private
    { Private declarations }


  public
    { Public declarations }
     constructor create(connection:TFDConnection) ;
  end;


implementation

   constructor TFactura.create(connection:TFDConnection);
   begin
    FQCliente:=TFDQuery.Create(connection);
    FQFactura:=TFDQuery.Create(connection);
    FQlineasFact:=TFDQuery.Create(connection);
    FQCliente.Connection:=connection;
    FQFactura.Connection:=connection;
    FQlineasFact.Connection:=connection;
    DSCliente.DataSet:=FQCliente;
    DSFactura.DataSet:=FQFactura;
    DSlineasFact.DataSet:=FQlineasFact;

    FQcliente.SQL.Add('select idcontactos, nombre, cif, familia from clientes where idcontactos=:id_cliente');
    FQfactura.SQL.Add('select * from facturas where idfactura=:id_factura and ano=:ano');
    FQlineasFact.SQL.Add('select * from lineasfacturas where facturas_idfactura=:id_factura and facturas_ano=:ano');




   end;

end.

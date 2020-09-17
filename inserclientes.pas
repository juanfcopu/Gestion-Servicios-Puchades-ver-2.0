unit inserclientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Grids, Vcl.ToolWin, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Controls, Data.Bind.Components, Vcl.Buttons,
  Vcl.Bind.Navigator, Data.Bind.Grid, Data.Bind.DBScope, Vcl.DBGrids, rDBGrid,
  RzPanel, RzDBNav, Vcl.Mask, Vcl.DBCtrls, rDBComponents;

type
  TFInsertarCliente = class(TForm)
    GridPanel1: TGridPanel;
    GroupBox4: TGroupBox;
    GridPanel2: TGridPanel;
    GroupBox5: TGroupBox;
    GroupBox2: TGroupBox;
    GridPanel3: TGridPanel;
    PageControl1: TPageControl;
    datosFacturacion: TTabSheet;
    datoscontactos: TTabSheet;
    GroupBox1: TGroupBox;
    Button1: TButton;
    fdinsertarClientes: TFDQuery;
    fdadministradores: TFDQuery;
    fdcontactos: TFDQuery;
    Panel1: TPanel;
    btaceptar: TButton;
    btcancelar: TButton;
    ctrlbr1: TControlBar;
    RzDBNavigator1: TRzDBNavigator;
    rDBGrid1: TrDBGrid;
    dsinsertarcliente: TDataSource;
    dsadministradores: TDataSource;
    dscontactos: TDataSource;
    rDBEdit1: TrDBEdit;
    rDBEdit2: TrDBEdit;
    rDBEdit3: TrDBEdit;
    rDBEdit4: TrDBEdit;
    rDBEdit5: TrDBEdit;
    rDBEdit6: TrDBEdit;
    rDBEdit7: TrDBEdit;
    rDBEdit8: TrDBEdit;
    rDBEdit9: TrDBEdit;
    rDBEdit10: TrDBEdit;
    rDBEdit11: TrDBEdit;
    rDBEdit12: TrDBEdit;
    rDBEdit13: TrDBEdit;
    rDBEdit14: TrDBEdit;
    rDBLookupComboBox1: TrDBLookupComboBox;
    rDBComboBox1: TrDBComboBox;
    rDBComboBox2: TrDBComboBox;
    fdinsertarClientesIdContactos: TIntegerField;
    fdinsertarClientesNombre: TStringField;
    fdinsertarClientesDireccion: TStringField;
    fdinsertarClientesCiudad: TStringField;
    fdinsertarClientesTelefonoCasa: TIntegerField;
    fdinsertarClientesTelefonoMovil: TIntegerField;
    fdinsertarClientesmail: TStringField;
    fdinsertarClientesNumFax: TIntegerField;
    fdinsertarClientesCIF: TStringField;
    fdinsertarClientesCodigoPostal: TStringField;
    fdinsertarClientesidAdministrador: TIntegerField;
    fdinsertarClientesCP: TBooleanField;
    fdinsertarClientesIBAN: TStringField;
    fdinsertarClientesbanco: TStringField;
    fdinsertarClientesnombrefactura: TStringField;
    fdinsertarClientesciffactura: TStringField;
    fdinsertarClientesciudadfactura: TStringField;
    fdinsertarClientesdireccionfactura: TStringField;
    fdinsertarClientescodigopostalfactura: TStringField;
    fdinsertarClientesfamilia: TIntegerField;
    procedure btcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btaceptarClick(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure PageControl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LabeledEdit10Change(Sender: TObject);
    procedure rDBComboBox1GetListItemProps(Sender: TObject; Canvas: TCanvas;
      Index: Integer; State: TOwnerDrawState; var Rect: TRect; var Text: string;
      ShowBmp: TBitmap; var DrawSeparatorTop, DrawSeparatorBottom: Boolean);
    procedure ComboBox2Select(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure fdcontactosAfterOpen(DataSet: TDataSet);
    procedure fdcontactosAfterPost(DataSet: TDataSet);
    procedure fdcontactosAfterDelete(DataSet: TDataSet);
    procedure fdcontactosAfterInsert(DataSet: TDataSet);
    procedure fdcontactosNewRecord(DataSet: TDataSet);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInsertarCliente: TFInsertarCliente;
  function genIdContactos:integer;
implementation

{$R *.dfm}

uses DModule1;

procedure TFInsertarCliente.btaceptarClick(Sender: TObject);
begin
    if fdinsertarClientes.State in [dsInsert,dsEdit] then
    begin
       fdinsertarClientes.Post;
       btcancelar.Caption:='Cerrar';
    end;
    if fdcontactos.State in [dsInsert,dsEdit] then
    begin
      fdcontactos.Post;
      btcancelar.Caption:='Cerrar';
    end;
end;

procedure TFInsertarCliente.btcancelarClick(Sender: TObject);
begin
Close;
end;

procedure TFInsertarCliente.Button1Click(Sender: TObject);
begin
if not ( dsinsertarcliente.State in [dsInsert,dsEdit]) then   dsinsertarcliente.DataSet.Edit;
rDBEdit10.Text:=rDBEdit2.Text;
rDBEdit11.Text:=rDBEdit3.Text;
rDBEdit12.Text:=rDBEdit6.Text;
rDBEdit13.Text:=rDBEdit5.Text;
rDBEdit14.Text:=rDBEdit4.Text;
end;

procedure TFInsertarCliente.ComboBox2Select(Sender: TObject);
begin
    TrDBComboBox(Sender).DataSource.DataSet.FieldByName(TrDBComboBox(Sender).DataField).AsInteger:=TrDBComboBox(Sender).ItemIndex;
end;

procedure TFInsertarCliente.fdcontactosAfterDelete(DataSet: TDataSet);
begin
rDBGrid1.RecalculateSummaryResults(True);
end;

procedure TFInsertarCliente.fdcontactosAfterInsert(DataSet: TDataSet);
begin
DataSet.FieldByName('id_cliente').AsInteger:=fdinsertarClientes.FieldByName('idContactos').AsInteger;
end;

procedure TFInsertarCliente.fdcontactosAfterOpen(DataSet: TDataSet);
begin
rDBGrid1.RecalculateSummaryResults(True);
end;

procedure TFInsertarCliente.fdcontactosAfterPost(DataSet: TDataSet);
begin
rDBGrid1.RecalculateSummaryResults(True);
end;



procedure TFInsertarCliente.fdcontactosNewRecord(DataSet: TDataSet);
begin
DataSet.FieldByName('idContactos').AsInteger:=genIdContactos;
end;

procedure TFInsertarCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fdinsertarClientes.State in [dsInsert,dsEdit] then fdinsertarClientes.cancel;
   if fdcontactos.State in [dsInsert,dsEdit] then fdcontactos.cancel;
  fdinsertarClientes.close;
  fdadministradores.close;
  fdcontactos.close;

  Action:=caFree;
end;

procedure TFInsertarCliente.FormCreate(Sender: TObject);
begin
     fdinsertarClientesfamilia.OnSetText:=DataModule1.ClientesfamiliaSetText;
     fdinsertarClientesfamilia.OnGetText:=DataModule1.fdClientesfamiliaGetText;

     if not fdadministradores.Active then fdadministradores.Active:=true;

end;

procedure TFInsertarCliente.LabeledEdit10Change(Sender: TObject);
var suma:integer;
begin

end;

procedure TFInsertarCliente.PageControl1Change(Sender: TObject);
begin
 if (PageControl1.ActivePageIndex = 1) and (fdcontactos.Active=false) then
   begin
        fdcontactos.ParamByName('id_cliente').AsInteger:=fdinsertarClientes.FieldByName('idContactos').AsInteger;
        if not fdcontactos.Active then fdcontactos.Active:=true;
    end;
 end;

procedure TFInsertarCliente.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
       if fdinsertarClientes.state in [dsInsert] then AllowChange:=false;

end;

procedure TFInsertarCliente.rDBComboBox1GetListItemProps(Sender: TObject;
  Canvas: TCanvas; Index: Integer; State: TOwnerDrawState; var Rect: TRect;
  var Text: string; ShowBmp: TBitmap; var DrawSeparatorTop,
  DrawSeparatorBottom: Boolean);
begin
if odSelected in State then
 Canvas.Font.Style:=[fsBold];




DrawSeparatorTop:=True;
end;

function genIdContactos:integer;
begin
with DataModule1 do
    begin
    fq1.Close;
    fq1.SQL.Clear;
    Fq1.SQL.Add('Select max(idContactos) from clientes');
    fq1.active:=True;
    Result:=Fq1.Fields[0].AsInteger+1;
    Fq1.Close;
    end;


end;

end.

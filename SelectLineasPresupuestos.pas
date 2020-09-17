unit SelectLineasPresupuestos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, rDBGrid, rDBGrid_MS;

type
  TFLineasPresupuestoObra = class(TForm)
    statuslineas: TStatusBar;
    tlbarlineas: TToolBar;
    btnselectodos: TToolButton;
    btndeselecTodos: TToolButton;
    btn1: TToolButton;
    btaAceptar: TToolButton;
    btCerrar: TToolButton;
    rDBGridClientes1: TrDBGrid_MS;
    ds1: TDataSource;
    fdqlpresupuestos: TFDQuery;
    btVista: TToolButton;
    fdqlpresupuestosid_clientePrev: TIntegerField;
    fdqlpresupuestosid_presupuesto: TIntegerField;
    fdqlpresupuestosgrupo: TIntegerField;
    fdqlpresupuestosAprovado: TBooleanField;
    fdqlpresupuestosdescripcion: TStringField;
    fdqlpresupuestosTotal: TFloatField;
    fdqlpresupuestosid_Partida: TIntegerField;
    fdqlpresupuestosobra: TIntegerField;
    fdqlpresupuestosFechaPresupuesto: TDateTimeField;
    fdqlpresupuestosFecha_Aprobado: TDateField;
    fdqlpresupuestospresupuestos_Id_presupuesto: TIntegerField;
    fdqlpresupuestospresupuestos_grupo: TIntegerField;
    fdqlpresupuestosdiasejecucion: TIntegerField;

    procedure btCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btndeselecTodosClick(Sender: TObject);
    procedure btnselectodosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rDBGridClientes1BoolClick(Sender: TObject; DataSet: TDataSet;
      Column: TColumn; Field: TField; Value: Variant);
    procedure rDBGridClientes1GetFixedColState(Sender: TObject;
      ActiveRow: Boolean; AFont: TFont; var Text: string;
      var CheckBoxChecked: Boolean);
    procedure btaAceptarClick(Sender: TObject);
    procedure btVistaClick(Sender: TObject);
    procedure fdqlpresupuestosAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FLineasPresupuestoObra: TFLineasPresupuestoObra;
  

implementation

uses
  clientes,DModule1, presupuestos;


{$R *.dfm}

procedure TFLineasPresupuestoObra.btaAceptarClick(Sender: TObject);
var i:Integer;   totalobra:Double;   fdobra,fdlineasobra,fdlineaspresu:TFDQuery;
begin

        {
                 fdlineaspresu:=fdqlpresupuestos;

                 fdobra:=TFDQuery.Create(Self);
                 fdobra.Connection:=DataModule1.FDConnection1;
                 fdobra.SQL.Clear;
                 fdobra.SQL.Add('SELECT * FROM obras');
                 fdobra.Open;

                 fdlineasobra:=TFDQuery.Create(Self);
                 fdlineasobra.Connection:=DataModule1.FDConnection1;
                 fdlineasobra.SQL.Clear;
                 fdlineasobra.SQL.Add('SELECT * FROM lineasobras');
                 fdlineasobra.Open;


                if rDBGridClientes1.GetSelectedRecCount > 0 then
                  begin

                   try

                  fdobra.Insert;

                  fdobra.Fieldbyname('Ejecutado').asboolean:=false;
                  fdobra.Fieldbyname('ImporteObra').asfloat:=0;
                  fdobra.Fieldbyname('Id_Cliente').asinteger:=fdlineaspresu.FieldByName('Id_ClientePrev').asinteger;
                  fdobra.Fieldbyname('FechaComienzo').asdatetime:=Now;
                  fdobra.post;

                      { fdobra.Edit;
                        fdobra.FieldByName('Path').asstring:=DataModule1.ObtenerPathObra(fdcliente.FieldByName('nombre').asstring,fdobra.FieldByName('id_obra').asinteger);
                        fdobra.Post;

                 for i:=0 to rDBGridClientes1.rBookmarks.Count-1 do
                 begin
                   fdlineaspresu.GotoBookmark(rDBGridClientes1.rBookmarks.Items[i]);

                  fdlineasObra.Append;
                  fdlineasobra.Fieldbyname('id_lineaobra').asinteger:=i;
                  fdlineasobra.Fieldbyname('Descripcion').asstring:=fdlineaspresu.FieldByName('Descripcion').asstring;
                  fdlineasobra.Fieldbyname('Ejecutado').asboolean:=false;
                  fdlineasobra.Fieldbyname('total').asfloat:=fdlineaspresu.FieldByName('Total').asfloat;
                  totalobra:=totalobra+fdlineasobra.Fieldbyname('total').asfloat;
                  fdlineasobra.Fieldbyname('obras_Id_obra').asinteger:=fdobra.FieldByName('Id_obra').asinteger;
                  fdlineasobra.Fieldbyname('presupuestos_Id_presupuesto').asinteger:=fdlineaspresu.FieldByName('presupuestos_Id_presupuesto').asinteger;
                  fdlineasobra.Fieldbyname('presupuestos_grupo').asinteger:=fdlineaspresu.FieldByName('presupuestos_grupo').asinteger;
                  fdlineasobra.Fieldbyname('presupuestos_Id_partida').asinteger:=fdlineaspresu.FieldByName('Id_Partida').asinteger;
                  FDlineasObra.Post;
                  fdobra.Edit;
                  fdobra.FieldByName('Descripcion').AsString:=fdobra.FieldByName('Descripcion').AsString+#13#10+fdlineasobra.FieldByName('Descripcion').AsString;
                  fdobra.Post;
                  fdlineaspresu.Edit;
                  fdlineaspresu.FieldByName('obra').AsInteger:=fdobra.FieldByName('ID_obra').AsInteger;
                  fdlineaspresu.Post;

                  end;

                fdobra.Edit;
                fdobra.Fieldbyname('ImporteObra').asfloat:=totalobra;
                fdobra.Post;


                 ShowMessage('La Obra N� '+fdobra.FieldByName('id_obra').AsString+' se ha creado correctamente.');

                   except
                      on E: EFDDBEngineException do begin

                      fdobra.Cancel;
                      fdlineasobra.Cancel;

                       raise;
                      end;
                   end;



              if Self.Owner is TFPresupuestos then
              begin
                fdobra.Close;
                fdlineasobra.Close;
                fdobra.Free;
                fdlineasobra.Close;
              end;

             end
             else ShowMessage('No existen partidas de presupuesto seleccionadas.');
             Close;  }

             DataModule1.nueva2Execute(Self);
          Close;

end;




procedure TFLineasPresupuestoObra.btCerrarClick(Sender: TObject);
begin
Close;
end;

procedure TFLineasPresupuestoObra.btndeselecTodosClick(Sender: TObject);

begin

     rDBGridClientes1.SelectAll;


end;

procedure TFLineasPresupuestoObra.btnselectodosClick(Sender: TObject);

begin
     rDBGridClientes1.DeSelectAll;

   end;

procedure TFLineasPresupuestoObra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Action:=caFree;
end;

procedure TFLineasPresupuestoObra.FormCreate(Sender: TObject);
begin



      if (Owner is TFDQuery) then
      begin
          fdqlpresupuestos.ParamByName('IDCLIENTE').AsInteger:=TFDQuery(Owner).FieldByName('id_ClientePrev').AsInteger;
          fdqlpresupuestos.Active:=True;
      end else
                ShowMessage('No se ha podido encontrar el cliente.');



                                    rDBGridClientes1.UseMultiSelect:=True;



end;

procedure TFLineasPresupuestoObra.rDBGridClientes1BoolClick(Sender: TObject;
  DataSet: TDataSet; Column: TColumn; Field: TField; Value: Variant);
begin
ShowMessage(Field.AsString);
end;




procedure TFLineasPresupuestoObra.rDBGridClientes1GetFixedColState(
  Sender: TObject; ActiveRow: Boolean; AFont: TFont; var Text: string;
  var CheckBoxChecked: Boolean);
begin
  statuslineas.Panels[1].Text:='N� de lineas seleccionadas:'+inttostr(TrDBGrid_MS(Sender).GetSelectedRecCount);;


if TrDBGrid_MS(Sender).GetSelectedRecCount > 0 then btaAceptar.Enabled:=True
else btaAceptar.Enabled:=False;

end;

procedure TFLineasPresupuestoObra.btVistaClick(Sender: TObject);
var literal1,literal2:string;
begin

 if not (Owner is TFDQuery) then  Exit;

 literal1:='SELECT  P.id_clientePrev, P.id_presupuesto, P.grupo, LP.Aprovado, LP.descripcion,LP.Total,LP.id_Partida,LP.obra,P.FechaPresupuesto,LP.Fecha_Aprobado, LP.presupuestos_Id_presupuesto,LP.presupuestos_grupo FROM lineaspresupuesto LP,presupuestos P ';
 if btVista.Down then
 begin
   literal2:='WHERE LP.presupuestos_id_presupuesto=P.id_presupuesto AND LP.presupuestos_grupo=P.grupo AND P.grupo=:GRUPO AND P.id_presupuesto=:PRESUPUESTO AND P.id_ClientePrev=:IDCLIENTE AND LP.Aprovado=true AND (LP.obra is null)';
   fdqlpresupuestos.Close;
   fdqlpresupuestos.SQL.clear;
   fdqlpresupuestos.SQL.Add(literal1+literal2);
   fdqlpresupuestos.ParamByName('IDCLIENTE').AsInteger:= TFDQuery(Owner).FieldByName('id_ClientePrev').AsInteger;
   fdqlpresupuestos.ParamByName('GRUPO').AsInteger:=TFDQuery(Owner).FieldByName('grupo').AsInteger;
   fdqlpresupuestos.ParamByName('PRESUPUESTO').AsInteger:=TFDQuery(Owner).FieldByName('id_presupuesto').AsInteger;
   fdqlpresupuestos.Active:=True;
 end else begin
           literal2:='WHERE LP.presupuestos_id_presupuesto=P.id_presupuesto AND LP.presupuestos_grupo=P.grupo AND P.id_ClientePrev=:IDCLIENTE AND LP.Aprovado=true AND (LP.obra is null)';
            fdqlpresupuestos.Close;
            fdqlpresupuestos.SQL.Clear;
            fdqlpresupuestos.SQL.Add(literal1+literal2);
            fdqlpresupuestos.ParamByName('IDCLIENTE').AsInteger:= TFDQuery(Owner).FieldByName('id_ClientePrev').AsInteger;
            fdqlpresupuestos.Active:=True;

          end;

end;



procedure TFLineasPresupuestoObra.fdqlpresupuestosAfterOpen(DataSet: TDataSet);
begin
statuslineas.Panels[0].Text:='N� Total de lineas:'+ IntToStr(rDBGridclientes1.DataSource.DataSet.RecordCount);
end;

end.



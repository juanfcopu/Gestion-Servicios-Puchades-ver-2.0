unit clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.DBChart, framePresupuestos, frameFacturas, frameObras, frameContactos,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Data.Bind.Controls, Vcl.Buttons, Vcl.Bind.Navigator, Vcl.ToolWin, Vcl.Grids,
  Vcl.DBGrids, rDBTreeView, rDBRecView, rDBComponents;

type
  TFClientes = class(TForm)
    GroupBox1: TGroupBox;
    GridPanel1: TGridPanel;
    Panel1: TPanel;
    GridPanel2: TGridPanel;
    GroupBox4: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    GroupBox2: TGroupBox;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    GroupBox5: TGroupBox;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Frame11: TFrame1;
    Frame21: TFrame2;
    Frame31: TFrame3;
    Frame41: TFrame4;
    GroupBox3: TGroupBox;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    fdclientes: TFDQuery;
    fdpresupuestos: TFDQuery;
    fdfacturas: TFDQuery;
    fdobras: TFDQuery;
    fdContactos: TFDQuery;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    fdAdministradores: TFDQuery;
    LinkPropertyToFieldItemIndex: TLinkPropertyToField;
    BindSourceDB2: TBindSourceDB;
    BindSourceDB3: TBindSourceDB;
    LinkListControlToField1: TLinkListControlToField;
    BindSourceDB4: TBindSourceDB;
    LinkListControlToField3: TLinkListControlToField;
    BindSourceDB5: TBindSourceDB;
    LinkListControlToField4: TLinkListControlToField;
    BindSourceDB6: TBindSourceDB;
    LinkFillControlToField1: TLinkFillControlToField;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    DBGrid1: TDBGrid;
    dsfdpresupuestos: TDataSource;
    fdlineaspresupuesto: TFDQuery;
    dsfdlineaspresupuesto: TDataSource;
    DBGrid2: TDBGrid;
    rDBRecordSelection1: TrDBRecordSelection;
    Label3: TLabel;
    LinkListControlToField2: TLinkListControlToField;
    FDlineasObras: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure GridPanel2Resize(Sender: TObject);
    procedure Frame11ListView1AdvancedCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
      var DefaultDraw: Boolean);
    procedure Frame11Button2Click(Sender: TObject);
    procedure Frame11Button1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure Frame11Button3Click(Sender: TObject);
    procedure Frame11ListView1DblClick(Sender: TObject);
    procedure Frame31ListViewObrasDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure Frame31ListViewObrasDragDrop(Sender, Source: TObject; X,
      Y: Integer);


  private
    { Private declarations }
    lstobras:TStringList;
  public
    { Public declarations }
  end;

var
  FClientes: TFClientes;

implementation

{$R *.dfm}

uses DModule1, presupuestos, FPrincipal, listaclientes;

procedure TFClientes.FormCreate(Sender: TObject);
begin

     lstobras:=TStringList.Create;
     lstobras.Add('fdobras');
     lstobras.Add('fdlineasobras')  ;

      fdclientes.ParamByName('id_cliente').AsInteger:=DataModule1.fdClientes.FieldByName('IdContactos').AsInteger;
      fdclientes.Active:=true;

      (Sender as TFClientes).Caption:='Cliente ' + fdclientes.FieldByName('nombre').AsString;

      fdAdministradores.Active:=true;

      fdpresupuestos.ParamByName('id_cliente').AsInteger:=fdclientes.FieldByName('IdContactos').AsInteger;
      fdpresupuestos.Active:=true;

      fdlineaspresupuesto.ParamByName('id_presupuesto').AsInteger:=fdpresupuestos.FieldByName('Id_presupuesto').AsInteger;
      fdlineaspresupuesto.ParamByName('grupo').AsInteger:=fdpresupuestos.FieldByName('grupo').AsInteger;

      fdlineaspresupuesto.active:=true;

 //    if fdpresupuestos.RecordCount > 0 then LinkListControlToField2.Active:=true
   //           else LinkListControlToField2.AutoActivate:=true;


      fdfacturas.ParamByName('id_cliente').AsInteger:=fdclientes.FieldByName('IdContactos').AsInteger;
      fdfacturas.Active:=true;

      if fdfacturas.RecordCount > 0 then LinkListControlToField1.Active:=true
              else LinkListControlToField1.AutoActivate:=true;

      fdobras.ParamByName('id_cliente').AsInteger:=fdclientes.FieldByName('IdContactos').AsInteger;
      fdobras.Active:=true;

      fdlineasobras.ParamByName('ID_OBRA').AsInteger:= fdobras.FieldByName('id_obra').AsInteger;
      fdlineasobras.Active:=true;


      if fdobras.RecordCount > 0 then LinkListControlToField3.Active:=true
              else LinkListControlToField3.AutoActivate:=true;

       fdcontactos.ParamByName('id_cliente').AsInteger:=fdclientes.FieldByName('IdContactos').AsInteger;
      fdcontactos.Active:=true;

      if fdcontactos.RecordCount > 0 then LinkListControlToField4.Active:=true
              else LinkListControlToField4.AutoActivate:=true;

      end;

procedure TFClientes.Frame11Button1Click(Sender: TObject);
begin
DataModule1.insertarpresupuestoExecute(fdclientes);
end;

procedure TFClientes.Frame11Button2Click(Sender: TObject);
begin
  DataModule1.editarpresupuestoExecute(fdpresupuestos);
end;

procedure TFClientes.Frame11Button3Click(Sender: TObject);
begin
DataModule1.borrarpresupuestosExecute(fdpresupuestos);
end;

procedure TFClientes.Frame11ListView1AdvancedCustomDrawItem(
  Sender: TCustomListView; Item: TListItem; State: TCustomDrawState;
  Stage: TCustomDrawStage; var DefaultDraw: Boolean);
  var i:integer;
begin

for i:=0 to (Sender as TListView).Groups.count -1 do
begin
     (Sender as TListView).Groups.Items[i].state:=[lgsNormal,lgsCollapsed,lgsCollapsible];
     (Sender as TListView).Groups.Items[i].FooterAlign:=taRightJustify ;



end;
 if item.Index mod 2 <> 0 then
         begin
        (Sender as TListview).Canvas.Brush.Color:=cl3DLight ;
         end
      else
        (Sender as TListview).Canvas.Brush.Color:=clWindow;

     if (cdsSelected in State) then
        begin
         (Sender as TListview).Canvas.font.Style:=[fsbold];
        end;
end;

procedure TFClientes.Frame11ListView1DblClick(Sender: TObject);
begin
      DataModule1.editarpresupuestoExecute(fdpresupuestos);
end;

procedure TFClientes.Frame31ListViewObrasDragDrop(Sender, Source: TObject; X,
  Y: Integer);
  var i:integer;
begin
     if fdpresupuestos.FieldByName('Aprovado').asboolean then
     begin

      fdobras.Append;
      fdobras.Fieldbyname('Descripcion').asstring:=fdpresupuestos.FieldByName('DescripcionAprovado').asstring;
      fdobras.Fieldbyname('Ejecutado').asboolean:=false;
      fdobras.Fieldbyname('ImporteObra').asfloat:=fdpresupuestos.FieldByName('TotalAprobado').asfloat;
      fdobras.Fieldbyname('Id_Cliente').asinteger:=fdpresupuestos.FieldByName('Id_ClientePrev').asinteger;
      fdobras.Fieldbyname('FechaComienzo').asdatetime:=Now;
    fdobras.post;

    i:=1;

    while not fdlineaspresupuesto.eof do
    begin
    if fdlineaspresupuesto.FieldByName('Aprovado').AsBoolean then
    begin
      FDlineasObras.Append;
      fdlineasobras.Fieldbyname('id_lineaobra').asinteger:=i;
      fdlineasobras.Fieldbyname('Descripcion').asstring:=fdlineaspresupuesto.FieldByName('Descripcion').asstring;
      fdlineasobras.Fieldbyname('Ejecutado').asboolean:=false;
      fdlineasobras.Fieldbyname('total').asfloat:=fdlineaspresupuesto.FieldByName('Total').asfloat;
      fdlineasobras.Fieldbyname('obras_Id_obra').asinteger:=fdobras.FieldByName('Id_obra').asinteger;
      fdlineasobras.Fieldbyname('presupuestos_Id_presupuesto').asinteger:=fdlineaspresupuesto.FieldByName('presupuestos_Id_presupuesto').asinteger;
      fdlineasobras.Fieldbyname('presupuestos_grupo').asinteger:=fdlineaspresupuesto.FieldByName('presupuestos_grupo').asinteger;
      FDlineasObras.Post;
      i:=i+1;
    end;
      fdlineaspresupuesto.next;
    end;
    DataModule1.RefrescarDataSet(lstobras);
  end
     else showmessage('El presupuesto no esta aprobado, no se puede crear la obra.');
end;

procedure TFClientes.Frame31ListViewObrasDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
Accept:=false;

 if (source is TListView) then
            if (source as TListView).Name='ListViewPresupuestos' then
               begin
                  Accept:=True;
               end;
end;

procedure TFClientes.GridPanel2Resize(Sender: TObject);
begin
     ComboBox1.Width:=GroupBox5.Width-100;
      ComboBox2.Width:=GroupBox5.Width-100;
end;

procedure TFClientes.ToolButton1Click(Sender: TObject);
begin
  DataModule1.editarclienteExecute(fdclientes);
end;

end.

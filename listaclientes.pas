unit listaclientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.StdCtrls,DB,
  Vcl.ExtCtrls;

type
  Tlistclientes = class(TForm)
    ListView1: TListView;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    beBuscar: TButtonedEdit;
    cbAgruparAdmin: TCheckBox;
    LinkListControlToField1: TLinkListControlToField;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    LinkControlToPropertyGroupView: TLinkControlToProperty;
    procedure FormCreate(Sender: TObject);
    procedure cbAgruparAdminClick(Sender: TObject);
    procedure beBuscarChange(Sender: TObject);
    procedure LinkControlToPropertyGroupViewAssignedValue(Sender: TObject;
      AssignValueRec: TBindingAssignValueRec; const Value: TValue);
    procedure Button1Click(Sender: TObject);
    procedure ListView1ColumnClick(Sender: TObject; Column: TListColumn);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  listclientes: Tlistclientes;

implementation

{$R *.dfm}

uses DModule1;

procedure Tlistclientes.beBuscarChange(Sender: TObject);
var li:TListItem;
begin
//DataModule1.fdclientes.Locate('nombre',beBuscar.Text,[loPartialKey]);
li:=listview1.FindCaption(0,beBuscar.Text,true,true,false);
if li <> nil then
      begin
      listview1.Selected:=li;
      li.MakeVisible(True);
      end
else     showmessage('No existen resultados.');
end;

procedure Tlistclientes.Button1Click(Sender: TObject);
begin
DataModule1.fdClientes.Disconnect;
DataModule1.fdClientes.FetchOptions.RecsMax:=40;
DataModule1.fdClientes.FetchOptions.RecsSkip:=DataModule1.fdClientes.FetchOptions.RecsSkip+1 ;
DataModule1.fdClientes.open;

end;

procedure Tlistclientes.cbAgruparAdminClick(Sender: TObject);
begin

   if (cbAgruparAdmin.Checked) and not (LinkListControlToField1.FillHeaderFieldName='nombreapellidos') then
   begin
      LinkListControlToField1.Active:=false;
      LinkListControlToField1.FillHeaderFieldName:='nombreapellidos';
      DataModule1.fdClientes.IndexFieldNames:='';
      DataModule1.fdClientes.IndexesActive:=false;
      listview1.Clear;
      LinkListControlToField1.Active:=true;
   end
   else listview1.GroupView:=true;

end;

procedure Tlistclientes.FormCreate(Sender: TObject);
begin
     cbAgruparAdmin.Checked:=listview1.GroupView;
end;



procedure Tlistclientes.LinkControlToPropertyGroupViewAssignedValue(
  Sender: TObject; AssignValueRec: TBindingAssignValueRec; const Value: TValue);
begin
{Listview1.Clear;
DataModule1.fdClientes.Disconnect;
DataModule1.fdClientes.SQL.Clear;
DataModule1.fdClientes.SQL.Add();


if cbAgruparAdmin.Checked then
DataModule1.fdClientes.IndexFieldNames:='idAdministrador;nombre'
else
DataModule1.fdClientes.IndexFieldNames:='nombre'; }



end;

procedure Tlistclientes.ListView1ColumnClick(Sender: TObject;
  Column: TListColumn);
begin
   LinkListControlToField1.Active:=false;
   LinkListControlToField1.FillHeaderFieldName:='';
   DataModule1.fdClientes.IndexFieldNames:='nombre';
   DataModule1.fdClientes.IndexesActive:=true;
   listview1.Clear;
   LinkListControlToField1.Active:=true;
end;

end.

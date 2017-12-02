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
    LinkListControlToField1: TLinkListControlToField;
    beBuscar: TButtonedEdit;
    cbAgruparAdmin: TCheckBox;
    LinkControlToPropertyGroupView: TLinkControlToProperty;
    procedure FormCreate(Sender: TObject);
    procedure cbAgruparAdminClick(Sender: TObject);
    procedure beBuscarChange(Sender: TObject);
    procedure LinkControlToPropertyGroupViewAssignedValue(Sender: TObject;
      AssignValueRec: TBindingAssignValueRec; const Value: TValue);
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
listview1.Selected:=li;
li.MakeVisible(True);
end;

procedure Tlistclientes.cbAgruparAdminClick(Sender: TObject);
begin
{listView1.GroupView:=cbAgruparAdmin.Checked;
if (Sender as TCheckBox).Checked then
DataModule1.fdClientes.IndexFieldNames:='idAdministrador;nombre'
else
DataModule1.fdClientes.IndexFieldNames:='nombre';
LinkListControlToField1.Active:=false;
LinkListControlToField1.Active:=true;

    }
end;

procedure Tlistclientes.FormCreate(Sender: TObject);
begin
cbAgruparAdmin.Checked:=listview1.GroupView;
end;

procedure Tlistclientes.LinkControlToPropertyGroupViewAssignedValue(
  Sender: TObject; AssignValueRec: TBindingAssignValueRec; const Value: TValue);
begin
if value.AsBoolean then  DataModule1.fdClientes.IndexFieldNames:='idAdministrador;nombre'
else
   DataModule1.fdClientes.IndexFieldNames:='nombre'   ;


end;

end.

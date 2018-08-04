unit navegador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls;

type
  Tfnavegador = class(TForm)
    TreeView1: TTreeView;
    procedure FormCreate(Sender: TObject);
    procedure TreeView1DblClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure NodosClientes;
    procedure NodosPresupuestos;
    procedure NodosObras;
  end;

var
  fnavegador: Tfnavegador;

implementation

{$R *.dfm}

uses listaclientes, FPrincipal, DModule1;

procedure Tfnavegador.FormCreate(Sender: TObject);

begin
    fnavegador:=Self;
    NodosClientes;
end;

procedure Tfnavegador.NodosClientes;
var node1:TTreeNode;
begin
     TreeView1.Items.Clear;
     node1:=TreeView1.Items.Add(nil,'Clientes');
     TreeView1.Items.AddChild(node1,'Lista Clientes');
     TreeView1.Items.AddChild(node1,'A�adir Cliente');
     TreeView1.Items.AddChild(node1,'Editar Clientes');
     node1.Expand(true);
end;


procedure Tfnavegador.NodosPresupuestos;
var node1:TTreeNode;
begin
     TreeView1.Items.Clear;
     node1:=TreeView1.Items.Add(nil,'Presupuestos');
     TreeView1.Items.AddChild(node1,'Lista Presupuestos');
     TreeView1.Items.AddChild(node1,'A�adir Presupuesto');
     TreeView1.Items.AddChild(node1,'Editar Presupuesto');
     node1.Expand(true);
end;


procedure Tfnavegador.NodosObras;
var node1:TTreeNode;
begin
     TreeView1.Items.Clear;
     node1:=TreeView1.Items.Add(nil,'Obras');
     TreeView1.Items.AddChild(node1,'Lista Obras');
     TreeView1.Items.AddChild(node1,'A�adir Obra');
     TreeView1.Items.AddChild(node1,'Editar Obra');
     node1.Expand(true);
end;


procedure Tfnavegador.TreeView1DblClick(Sender: TObject);

begin
    if (Sender is TTreeView) then
    begin
       if (Sender as TTreeView).Selected.Text='Lista Clientes' then
       begin
           DataModule1.listaclientesExecute(TreeView1);
       end;
       if (Sender as TTreeView).Selected.Text='A�adir Cliente' then
       begin
            DataModule1.crearclientesExecute(TreeView1);
       end;


       if (Sender as TTreeView).Selected.Text='Lista Presupuestos' then
       begin
           DataModule1.listapresupuestosExecute(TreeView1);
       end;

       if (Sender as TTreeView).Selected.Text='A�adir Presupuesto' then
       begin
           DataModule1.insertarpresupuestoExecute(TreeView1);
       end;

        if (Sender as TTreeView).Selected.Text='Lista Obras' then
       begin
          DataModule1.ListaObrasExecute(TreeView1);
       end;

      if (Sender as TTreeView).Selected.Text='A�adir Obra' then
       begin
           DataModule1.insertarObraExecute(TreeView1);
       end;


    end;
end;

end.

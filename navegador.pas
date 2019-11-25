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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure NodosClientes;
    procedure NodosPresupuestos;
    procedure NodosObras;
    procedure NodosConfiguracion;
    procedure NodosAdministrador;
    procedure NodosGastos;
    procedure NodosFacturasEmitidas;
  end;

var
  fnavegador: Tfnavegador;

implementation

{$R *.dfm}

uses listaclientes, FPrincipal, DModule1;

procedure Tfnavegador.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
end;

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


procedure Tfnavegador.NodosFacturasEmitidas;
var node1:TTreeNode;
begin
     TreeView1.Items.Clear;
     node1:=TreeView1.Items.Add(nil,'Facturas');
     TreeView1.Items.AddChild(node1,'Lista Facturas');
     TreeView1.Items.AddChild(node1,'A�adir Factura');

     node1.Expand(true);
end;

procedure Tfnavegador.NodosPresupuestos;
var node1:TTreeNode;
begin
     TreeView1.Items.Clear;
     node1:=TreeView1.Items.Add(nil,'Presupuestos');
     TreeView1.Items.AddChild(node1,'Lista Presupuestos');
     TreeView1.Items.AddChild(node1,'A�adir Presupuesto');
     TreeView1.Items.AddChild(node1,'Aprobados');
     node1.Expand(true);
end;


procedure Tfnavegador.NodosObras;
var node1:TTreeNode;
begin
     TreeView1.Items.Clear;
     node1:=TreeView1.Items.Add(nil,'Obras');
     TreeView1.Items.AddChild(node1,'Lista Obras');
     TreeView1.Items.AddChild(node1,'A�adir Obra');
     TreeView1.Items.AddChild(node1,'Ejecutadas');


     node1.Expand(true);
end;


procedure Tfnavegador.NodosConfiguracion;
var node1:TTreeNode;
begin
     TreeView1.Items.Clear;
     node1:=TreeView1.Items.Add(nil,'Configuraci�n');
     TreeView1.Items.AddChild(node1,'Servidor');
     TreeView1.Items.AddChild(node1,'PATH');
     TreeView1.Items.AddChild(node1,'IVA');
     TreeView1.Items.AddChild(node1,'Empresa');
     node1.Expand(true);
end;

procedure Tfnavegador.NodosAdministrador;
var node1:TTreeNode;
begin
     TreeView1.Items.Clear;
     node1:=TreeView1.Items.Add(nil,'Administrador');
     TreeView1.Items.AddChild(node1,'Lista Administradores');
     TreeView1.Items.AddChild(node1,'A�adir Administrador');
     TreeView1.Items.AddChild(node1,'Editar Administrador');
     node1.Expand(true);
end;


procedure Tfnavegador.NodosGastos;
var node1:TTreeNode;
begin
     TreeView1.Items.Clear;
     node1:=TreeView1.Items.Add(nil,'Gastos');
     TreeView1.Items.AddChild(node1,'Lista Gastos');
     TreeView1.Items.AddChild(node1,'Seguros');

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

        if (Sender as TTreeView).Selected.Text='Aprobados' then
       begin
           DataModule1.listapresupuestosExecute(TreeView1.items[2]);
       end;

        if (Sender as TTreeView).Selected.Text='Lista Obras' then
       begin
          DataModule1.ListaObrasExecute(TreeView1);
       end;

      if (Sender as TTreeView).Selected.Text='A�adir Obra' then
       begin
           DataModule1.insertarObraExecute(TreeView1);

       end;

       if (Sender as TTreeView).Selected.Text='Ejecutadas' then
       begin
          DataModule1.ListaObrasExecute(TreeView1.items[2]);
       end;

       if (Sender as TTreeView).Selected.Text='Configuraci�n' then
       begin
           DataModule1.actConfiguracionExecute(TreeView1);
       end;

        if (Sender as TTreeView).Selected.Text='IVA' then
       begin
       DataModule1.actconfigIVAExecute(TreeView1);
       end;

        if (Sender as TTreeView).Selected.Text='PATH' then
       begin
      DataModule1.actconfPATHExecute(TreeView1);
       end;

        if (Sender as TTreeView).Selected.Text='Servidor' then
       begin
       DataModule1.actconfServidorExecute(TreeView1);
       end;

       if (Sender as TTreeView).Selected.Text='Lista Administradores' then
       begin

           DataModule1.lstadmnistradoresExecute(TreeView1);
        end;

        if (Sender as TTreeView).Selected.Text='A�adir Administrador' then
       begin
            DataModule1.crearadministradorexecute(TreeView1);
       end;

          if (Sender as TTreeView).Selected.Text='Seguros' then
       begin
            DataModule1.crearadministradorexecute(TreeView1);
       end;

         if (Sender as TTreeView).Selected.Text='Empresa' then
       begin
            DataModule1.actEmpresaexecute(TreeView1);
       end;

         if (Sender as TTreeView).Selected.Text='A�adir Factura' then
       begin
            DataModule1.insertarFacturaExecute(TreeView1);
       end;

           if (Sender as TTreeView).Selected.Text='Lista Facturas' then
       begin
            DataModule1.listafacturasExecute(TreeView1);
       end

end;
end;

end.

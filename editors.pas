unit editors;
interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs,
   VirtualTrees, messages, windows, StdCtrls,Vcl.ComCtrls;

type

  TStringEditLink = class(TInterfacedObject, IVTEditLink)
  private
    FEdit: TWinControl;
    FTree: TVirtualStringTree;
    FNode: PVirtualNode;
    FColumn: Integer;
  protected
    procedure EditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

  public
    destructor Destroy; override;
    function BeginEdit: Boolean; stdcall;
    function CancelEdit: Boolean; stdcall;
    function EndEdit: Boolean; stdcall;
    function GetBounds: TRect; stdcall;
    function PrepareEdit(Tree: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex): Boolean; stdcall;
    procedure ProcessMessage(var Message: TMessage); stdcall;
    procedure SetBounds(R: TRect); stdcall;

  end;


 TFacturasEditLink = class(TInterfacedObject, IVTEditLink)
  private
    FEdit: TWinControl;
    FTree: TVirtualStringTree;
    FNode: PVirtualNode;
    FColumn: Integer;
  protected
    procedure EditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

  public
    destructor Destroy; override;
    function BeginEdit: Boolean; stdcall;
    function CancelEdit: Boolean; stdcall;
    function EndEdit: Boolean; stdcall;
    function GetBounds: TRect; stdcall;
    function PrepareEdit(Tree: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex): Boolean; stdcall;
    procedure ProcessMessage(var Message: TMessage); stdcall;
    procedure SetBounds(R: TRect); stdcall;

  end;



 TObrasEditLink = class(TInterfacedObject, IVTEditLink)
  private
    FEdit: TWinControl;
    FTree: TVirtualStringTree;
    FNode: PVirtualNode;
    FColumn: Integer;
  protected
    procedure EditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

  public
    destructor Destroy; override;
    function BeginEdit: Boolean; stdcall;
    function CancelEdit: Boolean; stdcall;
    function EndEdit: Boolean; stdcall;
    function GetBounds: TRect; stdcall;
    function PrepareEdit(Tree: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex): Boolean; stdcall;
    procedure ProcessMessage(var Message: TMessage); stdcall;
    procedure SetBounds(R: TRect); stdcall;

  end;

type
   PTreePresupuesto=^TTreePresupuesto;
   TTreePresupuesto= record
     NPresupuesto:string;
     Fecha:TDate;
     Descripcion:string;
     Total:Real;
     Aprobado:boolean;
     RecNo:Integer;
 end;


 type
   PTreeFacturas=^TTreeFactura;
   TTreeFactura= record
     NFactura:string;
     Fecha:TDate;
     Concepto:string;
     Total:real;
     IVA:Real;
     TotalBruto:real;
     Pagada:boolean;
     RecNo:Integer;
 end;

 type
   PTreeObras=^TTreeObra;
   TTreeObra= record
     NObra:string;
     Fecha:TDate;
     FechaFin:TDate;
     Descripcion:string;
     Npresupuesto:Integer;
     GrupoPresupuesto:Integer;
     Ptdapresupuesto:Integer;
     Total:Real;
     Ejecutado:boolean;
     RecNo:Integer;
 end;



implementation



destructor TStringEditLink.Destroy;
begin
 // FEdit.Free;
  if FEdit.HandleAllocated then
    PostMessage(FEdit.Handle, CM_RELEASE, 0, 0);
  inherited;
end;

procedure TStringEditLink.EditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      begin
        FTree.CancelEditNode;
        Key := 0;
        FTree.setfocus;
      end;
    VK_RETURN:
      begin
       PostMessage(FTree.Handle, WM_KEYDOWN, VK_DOWN, 0);
       Key := 0;
       FTree.EndEditNode;
       FTree.setfocus;
      end;
  end; //case
end;

function TStringEditLink.BeginEdit: Boolean;
begin
  Result := True;
  //FEdit.Height := (FTree.DefaultNodeHeight - 1); //Needed for editbox. Not combo
  FEdit.Show;
  TComboBox(FEdit).DroppedDown := True;
 // TDateTimePicker(FEdit).DroppedDown:=True;
  FEdit.SetFocus;
end;

function TStringEditLink.CancelEdit: Boolean;
begin
  Result := True;
  FEdit.Hide;
end;

function TStringEditLink.EndEdit: Boolean;
var
  data:PTreePresupuesto;
  s: String;
  nivel:Integer;
begin
  Result := True;
  data:=FNode.GetData;
  nivel:=FTree.GetNodeLevel(FNode);


 if FEdit is TComboBox then
 begin
  s := TComboBox(FEdit).Text;
  //FTree.Text[FNode, FColumn] := s;
  data.Descripcion:=s;

 end;

 if FEdit is TDateTimePicker  then
 begin
  data.Fecha:=TDateTimePicker(FEdit).Date;
 end;

 if FEdit is TCheckBox then
 begin
   data.Aprobado:=TCheckBox(FEdit).checked;
 end;

  FTree.InvalidateNode(FNode);
  FEdit.Hide;
  FTree.SetFocus;
end;

function TStringEditLink.GetBounds: TRect;
begin
  Result := FEdit.BoundsRect;
end;

function TStringEditLink.PrepareEdit(Tree: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex): Boolean;
var data:PTreePresupuesto;
begin
  Result := True;
  FTree := Tree as TVirtualStringTree;
  FNode := Node;
  FColumn := Column;

  FEdit.Free;
  FEdit := nil;

   data:=node.GetData;


  if Column=2 then
  begin
  FEdit := TComboBox.Create(nil);
  with FEdit as TComboBox do
    begin
      Visible := False;
      Parent := Tree;
      Items.Add('Google');
      Items.Add('Yahoo');
      Items.Add('Altavista');
      OnKeyDown := EditKeyDown;
    end;
  end;
  if Column=1 then
  begin
  FEdit := TDateTimePicker.Create(nil);
  with FEdit as TDateTimePicker do
    begin
      Visible := False;
      Parent := Tree;
       OnKeyDown := EditKeyDown;
    end;
  end;

  if Column=4 then
  begin
  FEdit := TCheckBox.Create(nil);
  with FEdit as TCheckBox do
    begin
      Visible := False;
      Parent := Tree;
      Checked:= data.Aprobado;
     //  OnKeyDown := EditKeyDown;
      // OnClick:= CheckBox1Click;
    end;
  end;



end;

procedure TStringEditLink.ProcessMessage(var Message: TMessage);
begin
  FEdit.WindowProc(Message);
end;

procedure TStringEditLink.SetBounds(R: TRect);
var
  Dummy: Integer;
begin
  FTree.Header.Columns.GetColumnBounds(FColumn, Dummy, R.Right);
  FEdit.BoundsRect := R;
end;



destructor TFacturasEditLink.Destroy;
begin
 // FEdit.Free;
  if FEdit.HandleAllocated then
    PostMessage(FEdit.Handle, CM_RELEASE, 0, 0);
  inherited;
end;

procedure TFacturasEditLink.EditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      begin
        FTree.CancelEditNode;
        Key := 0;
        FTree.setfocus;
      end;
    VK_RETURN:
      begin
       PostMessage(FTree.Handle, WM_KEYDOWN, VK_DOWN, 0);
       Key := 0;
       FTree.EndEditNode;
       FTree.setfocus;
      end;
  end; //case
end;

function TFacturasEditLink.BeginEdit: Boolean;
begin
  Result := True;
  //FEdit.Height := (FTree.DefaultNodeHeight - 1); //Needed for editbox. Not combo
  FEdit.Show;
  TComboBox(FEdit).DroppedDown := True;
 // TDateTimePicker(FEdit).DroppedDown:=True;
  FEdit.SetFocus;
end;

function TFacturasEditLink.CancelEdit: Boolean;
begin
  Result := True;
  FEdit.Hide;
end;

function TFacturasEditLink.EndEdit: Boolean;
var
  data:PTreeFacturas;
  s: String;
  nivel:Integer;
begin
  Result := True;
  data:=FNode.GetData;
  nivel:=FTree.GetNodeLevel(FNode);


 if FEdit is TComboBox then
 begin
  s := TComboBox(FEdit).Text;
  //FTree.Text[FNode, FColumn] := s;
  data.Concepto:=s;

 end;

 if FEdit is TDateTimePicker  then
 begin
  data.Fecha:=TDateTimePicker(FEdit).Date;
 end;

 if FEdit is TCheckBox then
 begin
   data.Pagada:=TCheckBox(FEdit).checked;
 end;

  FTree.InvalidateNode(FNode);
  FEdit.Hide;
  FTree.SetFocus;
end;

function TFacturasEditLink.GetBounds: TRect;
begin
  Result := FEdit.BoundsRect;
end;

function TFacturasEditLink.PrepareEdit(Tree: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex): Boolean;
var data:PTreeFacturas;
begin
  Result := True;
  FTree := Tree as TVirtualStringTree;
  FNode := Node;
  FColumn := Column;

  FEdit.Free;
  FEdit := nil;

   data:=node.GetData;


  if Column=2 then
  begin
  FEdit := TComboBox.Create(nil);
  with FEdit as TComboBox do
    begin
      Visible := False;
      Parent := Tree;
      Items.Add('Twiter');
      Items.Add('Yahoo');
      Items.Add('Altavista');
      OnKeyDown := EditKeyDown;
    end;
  end;
  if Column=1 then
  begin
  FEdit := TDateTimePicker.Create(nil);
  with FEdit as TDateTimePicker do
    begin
      Visible := False;
      Parent := Tree;
       OnKeyDown := EditKeyDown;
    end;
  end;

  if Column=6 then
  begin
  FEdit := TCheckBox.Create(nil);
  with FEdit as TCheckBox do
    begin
      Visible := False;
      Parent := Tree;
      Checked:= data.pagada;
     //  OnKeyDown := EditKeyDown;
      // OnClick:= CheckBox1Click;
    end;
  end;



end;

procedure TfacturasEditLink.ProcessMessage(var Message: TMessage);
begin
  FEdit.WindowProc(Message);
end;

procedure TFacturasEditLink.SetBounds(R: TRect);
var
  Dummy: Integer;
begin
  FTree.Header.Columns.GetColumnBounds(FColumn, Dummy, R.Right);
  FEdit.BoundsRect := R;
end;



destructor TObrasEditLink.Destroy;
begin
 // FEdit.Free;
  if FEdit.HandleAllocated then
    PostMessage(FEdit.Handle, CM_RELEASE, 0, 0);
  inherited;
end;

procedure TObrasEditLink.EditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      begin
        FTree.CancelEditNode;
        Key := 0;
        FTree.setfocus;
      end;
    VK_RETURN:
      begin
       PostMessage(FTree.Handle, WM_KEYDOWN, VK_DOWN, 0);
       Key := 0;
       FTree.EndEditNode;
       FTree.setfocus;
      end;
  end; //case
end;

function TObrasEditLink.BeginEdit: Boolean;
begin
  Result := True;
  //FEdit.Height := (FTree.DefaultNodeHeight - 1); //Needed for editbox. Not combo
  FEdit.Show;
  TComboBox(FEdit).DroppedDown := True;
 // TDateTimePicker(FEdit).DroppedDown:=True;
  FEdit.SetFocus;
end;

function TObrasEditLink.CancelEdit: Boolean;
begin
  Result := True;
  FEdit.Hide;
end;

function TObrasEditLink.EndEdit: Boolean;
var
  data:PTreeObras;
  s: String;
begin
  Result := True;
  data:=FNode.GetData;


 if FEdit is TComboBox then
 begin
  s := TComboBox(FEdit).Text;
  //FTree.Text[FNode, FColumn] := s;
  data.Descripcion:=s;

 end;

 if (FColumn=1) and (FEdit is TDateTimePicker)  then
 begin
  data.Fecha:=TDateTimePicker(FEdit).Date;
 end;

 if (FColumn=3) and (FEdit is TDateTimePicker)  then
 begin
  data.FechaFin:=TDateTimePicker(FEdit).Date;
 end;



  FTree.InvalidateNode(FNode);
  FEdit.Hide;
  FTree.SetFocus;
end;

function TObrasEditLink.GetBounds: TRect;
begin
  Result := FEdit.BoundsRect;
end;

function TObrasEditLink.PrepareEdit(Tree: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex): Boolean;
var data:PTreeObras;
begin
  Result := True;
  FTree := Tree as TVirtualStringTree;
  FNode := Node;
  FColumn := Column;

  FEdit.Free;
  FEdit := nil;

   data:=node.GetData;


  if Column=2 then
  begin
  FEdit := TComboBox.Create(nil);
  with FEdit as TComboBox do
    begin
      Visible := False;
      Parent := Tree;
      Items.Add('Twiter');
      Items.Add('Yahoo');
      Items.Add('Altavista');
      OnKeyDown := EditKeyDown;
    end;
  end;
  if Column in [1,3] then
  begin
  FEdit := TDateTimePicker.Create(nil);
  with FEdit as TDateTimePicker do
    begin
      Visible := False;
      Parent := Tree;
       OnKeyDown := EditKeyDown;
    end;
  end;


    end;




procedure TObrasEditLink.ProcessMessage(var Message: TMessage);
begin
  FEdit.WindowProc(Message);
end;

procedure TObrasEditLink.SetBounds(R: TRect);
var
  Dummy: Integer;
begin
  FTree.Header.Columns.GetColumnBounds(FColumn, Dummy, R.Right);
  FEdit.BoundsRect := R;
end;



end.

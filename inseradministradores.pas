unit inseradministradores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TFInsetarAdministrador = class(TForm)
    gridpanel: TGridPanel;
    grp1: TGroupBox;
    lbledt1: TLabeledEdit;
    lbledt2: TLabeledEdit;
    lbledt3: TLabeledEdit;
    gridpanel4: TGridPanel;
    grp2: TGroupBox;
    grp3: TGroupBox;
    lbledt7: TLabeledEdit;
    lbledt8: TLabeledEdit;
    lbledt11: TLabeledEdit;
    lbledt5: TLabeledEdit;
    lbledt4: TLabeledEdit;
    lbledt6: TLabeledEdit;
    lbledt9: TLabeledEdit;
    lbledt10: TLabeledEdit;
    btnAceptar: TButton;
    btnCancelar: TButton;
    fdinsertarAdministradores: TFDQuery;
    bndsrcdb1: TBindSourceDB;
    bndngslst1: TBindingsList;
    lnkcntrltfld1: TLinkControlToField;
    lnkcntrltfld2: TLinkControlToField;
    lnkcntrltfld3: TLinkControlToField;
    lnkcntrltfld4: TLinkControlToField;
    lnkcntrltfld5: TLinkControlToField;
    lnkcntrltfld6: TLinkControlToField;
    lnkcntrltfld7: TLinkControlToField;
    lnkcntrltfld8: TLinkControlToField;
    lnkcntrltfld9: TLinkControlToField;
    lnkcntrltfld10: TLinkControlToField;
    lnkcntrltfld11: TLinkControlToField;
    fdinsertarAdministradoresIdAdministrador: TFDAutoIncField;
    fdinsertarAdministradoresNombre: TStringField;
    fdinsertarAdministradoresApellidos: TStringField;
    fdinsertarAdministradoresDireccion: TStringField;
    fdinsertarAdministradoresCiudad: TStringField;
    fdinsertarAdministradoresCodPostal: TStringField;
    fdinsertarAdministradoresNombreApellidos: TStringField;
    fdinsertarAdministradoresTelefonoTrabajo: TStringField;
    fdinsertarAdministradoresTelefonoMovil: TStringField;
    fdinsertarAdministradoresNumFax: TStringField;
    fdinsertarAdministradorescorreo: TMemoField;
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInsetarAdministrador: TFInsetarAdministrador;

implementation

uses
  DModule1;

{$R *.dfm}

procedure TFInsetarAdministrador.btnAceptarClick(Sender: TObject);
begin
 if fdinsertarAdministradores.State in [dsInsert,dsEdit] then
    begin
     fdinsertarAdministradores.FieldByName('nombreapellidos').AsString:=fdinsertarAdministradores.FieldByName('nombre').AsString+' '+fdinsertarAdministradores.FieldByName('apellidos').AsString;
       fdinsertarAdministradores.Post;
       btncancelar.Caption:='Cerrar';
    end;
end;

procedure TFInsetarAdministrador.btnCancelarClick(Sender: TObject);
begin
Close;
end;

end.

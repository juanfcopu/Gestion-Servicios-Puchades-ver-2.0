unit obras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.Controls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Vcl.Bind.Grid, Vcl.StdActns, Vcl.ImgList, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  Data.Bind.Grid, Data.Bind.Components, Data.Bind.DBScope, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.Shell.ShellCtrls, Vcl.ToolWin, Vcl.Buttons, Vcl.Bind.Navigator,
  Vcl.ExtCtrls, Vcl.Grids,shellapi;

type
  TFObras = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox4: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    BTBuscarCliente: TButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    spaprobado: TShape;
    spNoaprobado: TShape;
    spcarpetas: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Shape2: TShape;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    DateTimePicker1: TDateTimePicker;
    BTpath: TButton;
    LabeledEdit18: TLabeledEdit;
    PageControl1: TPageControl;
    lineas: TTabSheet;
    StringGrid1: TStringGrid;
    ControlBar2: TControlBar;
    NavigatorBindSourceDB3: TBindNavigator;
    ToolBar2: TToolBar;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolBar3: TToolBar;
    ToolButton14: TToolButton;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    LabeledEdit13: TLabeledEdit;
    LabeledEdit14: TLabeledEdit;
    documentacion: TTabSheet;
    ShellListView1: TShellListView;
    fotografias: TTabSheet;
    ShellListView2: TShellListView;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton9: TToolButton;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    GroupBox5: TGroupBox;
    Guardar: TButton;
    cerrar: TButton;
    BindingsList1: TBindingsList;
    dialruta: TOpenDialog;
    ActionManager1: TActionManager;
    abrircarpeta: TAction;
    abrirpresupuesto: TAction;
    guardarpresupuesto: TAction;
    guardarPDF: TAction;
    mail: TAction;
    cerrarpres: TAction;
    carpetadocumentacion: TAction;
    DataSource1: TDataSource;
    ImageList1: TImageList;
    ActionManager2: TActionManager;
    EditCopy: TEditCopy;
    EditCut: TEditCut;
    EditPaste: TEditPaste;
    AprobarTodos: TAction;
    certificaciones: TTabSheet;
    Estadisticas: TTabSheet;
    FDCliente: TFDQuery;
    FDObra: TFDQuery;
    FDlineasobra: TFDQuery;
    BindSourceDB1: TBindSourceDB;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    BindSourceDB2: TBindSourceDB;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    DateTimePicker2: TDateTimePicker;
    LinkControlToField8: TLinkControlToField;
    LinkControlToField9: TLinkControlToField;
    LinkControlToField10: TLinkControlToField;
    Label13: TLabel;
    LinkControlToField11: TLinkControlToField;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    Shape1: TShape;
    FDClienteidcontactos: TFDAutoIncField;
    FDClientenombre: TStringField;
    FDClientecif: TStringField;
    FDClientefamilia: TIntegerField;
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure PageControl1Resize(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FDlineasobraAfterDelete(DataSet: TDataSet);
    procedure cerrarClick(Sender: TObject);
    procedure GuardarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FDlineasobraAfterEdit(DataSet: TDataSet);
    procedure FDlineasobraAfterInsert(DataSet: TDataSet);
    procedure FDObraAfterInsert(DataSet: TDataSet);
    procedure FDObraAfterEdit(DataSet: TDataSet);
    procedure FDlineasobraAfterPost(DataSet: TDataSet);
    procedure FDObraAfterPost(DataSet: TDataSet);
    procedure abrircarpetaExecute(Sender: TObject);
    procedure cerrarpresExecute(Sender: TObject);
    procedure carpetadocumentacionExecute(Sender: TObject);
    procedure BTpathClick(Sender: TObject);
    procedure BTBuscarClienteClick(Sender: TObject);
    procedure FDClienteAfterOpen(DataSet: TDataSet);

  private
    { Private declarations }
  public
  RowAct:integer;
    cargando:boolean;
    { Public declarations }
  end;

var
  FObras: TFObras;

implementation

{$R *.dfm}

uses DModule1, listaclientes;

procedure TFObras.FDClienteAfterOpen(DataSet: TDataSet);
begin
if DataSet.RecordCount > 0 then
         begin
              if fdobra.State in [dsInsert] then
              begin
                   fdobra.FieldByName('Id_Cliente').AsInteger:=fdcliente.FieldByName('idContactos').AsInteger;
               end;
         end;
end;

procedure TFObras.FDlineasobraAfterDelete(DataSet: TDataSet);
begin
StringGrid1.Objects[5,DataSet.RecordCount].Free;;
end;

procedure TFObras.FDlineasobraAfterEdit(DataSet: TDataSet);
begin
   Guardar.Enabled:=true;
   Shape1.Brush.Color:=cllime;
end;

procedure TFObras.FDlineasobraAfterInsert(DataSet: TDataSet);
begin
Guardar.Enabled:=true;
Shape1.Brush.Color:=cllime;
end;

procedure TFObras.FDlineasobraAfterPost(DataSet: TDataSet);
begin
Guardar.Enabled:=false;
Shape1.Brush.Color:=clwhite;
end;

procedure TFObras.FDObraAfterEdit(DataSet: TDataSet);
begin
Guardar.Enabled:=true;
Shape1.Brush.Color:=cllime;
end;

procedure TFObras.FDObraAfterInsert(DataSet: TDataSet);
begin
Guardar.Enabled:=true;
Shape1.Brush.Color:=cllime;
end;

procedure TFObras.FDObraAfterPost(DataSet: TDataSet);
begin
Guardar.Enabled:=false;
Shape1.Brush.Color:=clwhite;

end;

procedure TFObras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
end;

procedure TFObras.GuardarClick(Sender: TObject);
begin
          if  FDlineasobra.State in [dsInsert, dsEdit] then  fdlineasobra.post;
          if  FDobra.State in [dsInsert, dsEdit] then  fdobra.post;
end;

procedure TFObras.PageControl1Resize(Sender: TObject);
begin
LinkGridToDataSourceBindSourceDB3.Columns[1].Width:=StringGrid1.Width-LinkGridToDataSourceBindSourceDB3.Columns[0].Width-20-LinkGridToDataSourceBindSourceDB3.Columns[4].Width-LinkGridToDataSourceBindSourceDB3.Columns[2].Width-LinkGridToDataSourceBindSourceDB3.Columns[3].Width-LinkGridToDataSourceBindSourceDB3.Columns[5].Width;

end;

procedure TFObras.abrircarpetaExecute(Sender: TObject);
var ruta:string;
begin
 ruta:= ExtractfilePath(PATHUSER+fdobra.fieldbyname('path').asstring);

      if DirectoryExists(ruta) then

      ShellExecute(0, 'open', nil, nil, Pchar(ruta), SW_SHOW)
      else
      showmessage('El directorio de presupuestos no existe.');
end;

procedure TFObras.BTBuscarClienteClick(Sender: TObject);
var lclientes:Tlistclientes; fdclen:TfdQuery;
begin
    fdclen:=TFDQuery.Create(Sender as TControl);
    fdclen.Connection:=DataModule1.FDConnection1;
    fdclen.SQL.Add('Select c.idContactos, c.nombre, c.CIF, c.direccion, c.CodigoPostal, c.Ciudad, a.nombreapellidos,c.idAdministrador from clientes c, administradores a where c.idAdministrador=a.idAdministrador order by c.idAdministrador,c.nombre');
    fdclen.IndexFieldNames:='idAdministrador;nombre';
    fdclen.Active:=true;

    lclientes:=Tlistclientes.Create(Sender as TControl);
    lclientes.DragMode:=dmManual;
    lclientes.BindSourceDB1.DataSet:=fdclen;
    if fdclen.RecordCount >0 then lclientes.linklistaclientes.active:=true;
    lclientes.ShowModal;

    fdcliente.Close;
    fdcliente.ParamByName('id_cliente').AsInteger:=fdclen.FieldByName('IdContactos').AsInteger;
    fdcliente.Active:=true;

end;

procedure TFObras.BTpathClick(Sender: TObject);
var ruta:string;  posicion:integer;
begin

dialruta.InitialDir:=PATHDOCOBRAS;

if dialruta.Execute then
          begin

               if not (fdobra.State in [dsEdit, dsInsert]) then  fdobra.edit;

                    posicion:=pos('OBRAS', dialruta.FileName);
                    ruta:=copy(dialruta.FileName,posicion-1,length(dialruta.FileName));
                    fdobra.FieldByName('path').Asstring:=ruta;
                   // labelededit8.Text:=ruta;
                    //fdobra.post;


          end;

end;

procedure TFObras.carpetadocumentacionExecute(Sender: TObject);
var ruta:string;
begin
if not DirectoryExists(PATHDOCOBRAS) then
      begin
        showmessage('El directorio OBRAS no existe.');
        exit;
      end;

  ruta:= PATHDOCOBRAS+'\'+fdcliente.FieldByName('nombre').asstring+'\'+fdobra.fieldbyname('id_obra').asstring;


      if DirectoryExists(ruta) then

      ShellExecute(0, 'open', nil, nil, Pchar(ruta), SW_SHOW)

      else if application.MessageBox('El directorio de la documentaci�n de la  obra no existe. �Desea crearlo?', 'Aviso',(MB_OKCANCEL+MB_ICONQUESTION))=IDOK      then
      begin
         mkdir(PATHDOCOBRAS+'\'+fdcliente.FieldByName('nombre').asstring)  ;
         mkdir(ruta);
         mkdir(ruta+'\Fotos');
         mkdir(ruta+'\Documentacion');
         if DirectoryExists(ruta) then
         begin
          spcarpetas.Brush.Color:=cllime;
          ShellListView1.Enabled:=True;
          ShellListView2.Enabled:=True;

          ShellListView1.Root:=ruta+'\Documentacion';
          ShellListView2.Root:=ruta+'\Fotos';

           
          showmessage('El directorio se ha creado con exito.');

         end
         else  showmessage('No se ha podido crear el directorio para la documentaci�n de la obra.');

      end;

end;

procedure TFObras.cerrarClick(Sender: TObject);
var guardar:boolean;
begin
  if FDlineasobra.State in [dsInsert, dsEdit] then guardar:= true;
  if FDObra.State in [dsInsert, dsEdit] then guardar:= true;


  if guardar then if MessageDlg('Hay datos por guardar. �Desea guardar los datos?', mtConfirmation, [mbYes,mbNo], 0) = mrYes  then
                         begin
                           if  FDlineasobra.State in [dsInsert, dsEdit] then  fdlineasobra.post;
                           if  FDobra.State in [dsInsert, dsEdit] then  fdobra.post;
                         end
                         else begin
                                   if  FDlineasobra.State in [dsInsert, dsEdit] then  fdlineasobra.Cancel;
                                    if  FDobra.State in [dsInsert, dsEdit] then  fdobra.Cancel;

                              end;
  Close;
end;

procedure TFObras.cerrarpresExecute(Sender: TObject);
begin
cerrarClick(Sender);
end;

procedure TFObras.CheckBox1Click(Sender: TObject);
begin
       if not (fdlineasobra.State in [dsEdit,dsInsert]) and (not cargando) then
       begin
            fdlineasobra.RecNo:=RowAct;
            fdlineasobra.Edit;
            fdlineasobra.FieldByName('ejecutado').AsBoolean:=(Sender as TCheckBox).Checked;
           // fdlineasobra.post;
       end;
end;


procedure TFObras.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
  var valor:double;   cb:TObject;
begin

if Arow = 0 then
   begin
 (Sender as TStringGrid).Canvas.Brush.Color:=cl3DLight;
   (Sender as TStringGrid).Canvas.Font.Style:=[fsbold];
   (Sender as TStringGrid).Canvas.Font.size:=10;


    end
   else begin
           (Sender as TStringGrid).Canvas.Brush.Color:=clWindow;
           (Sender as TStringGrid).Canvas.Font.Style:=[];
           (Sender as TStringGrid).Canvas.Font.size:=9;

        end;


    if Arow mod 2 =0 then     (Sender as TStringGrid).Canvas.Brush.Color:=clSilver;

    if (ACol=2) and (Arow >0)then
              begin
                   if tryStrToFloat((Sender as TStringGrid).Cells[Acol,Arow],Valor) then
                      if Valor > 80 then
                                          (Sender as TStringGrid).Canvas.Font.color:=clblue;
              end
    else   (Sender as TStringGrid).Canvas.Font.color:=clblack ;



  if (gdSelected in state) or (gdFocused in state) then
      begin
         (Sender as TStringGrid).Canvas.Font.style:=[fsBold];
         (Sender as TStringGrid).Canvas.Brush.Color:=clMenu;
      end;



     if (Sender as TStringGrid).Cells[5,Arow] = 'True' then
                    begin
                        (Sender as TStringGrid).Canvas.Font.color:=clred;
                        (Sender as TStringGrid).canvas.font.Style:=[fsBold]



                    end ;


      if (ACol=5) and (Arow>0) then  begin

                        if (Sender as TStringGrid).Objects[Acol,Arow]=nil then
                        begin
                             cb:=TCheckBox.Create(Sender as TControl);
                             (Sender as TStringGrid).Objects[Acol,Arow]:=cb;
                             (cb as TCheckBox).parent:=lineas;
                             (cb as TCheckBox).OnClick:=CheckBox1Click;

                             (cb as TCheckBox).AllowGrayed:=False;
                             (cb as TCheckBox).Checked:=False;
                             (cb as TCheckBox).Height:=20;
                             (cb as TCheckBox).Width:=15;
                         end
                         else  cb:=(Sender as TStringGrid).Objects[Acol,Arow];

                            if ACol=5 then  if (Sender as TStringGrid).Cells[5,Arow] = 'True' then
                            begin
                                  RowAct:=Arow;
                                (cb as TCheckBox).Checked:=true;

                            end;




                               (cb as TCheckBox).color:=(Sender as TStringGrid).Canvas.Brush.Color;
                               (cb as TCheckBox).Left:=  Rect.Left+20;
                               (cb as TCheckBox).Top:= Rect.Top+45;


                        end;

               (Sender as TStringGrid).Canvas.FillRect(Rect);

  if (Acol<>5) or (ARow = 0) then (Sender as TStringGrid).Canvas.TextRect(Rect,Rect.Left,Rect.Top+3,(Sender as TStringGrid).Cells[Acol,Arow]);



end;

end.

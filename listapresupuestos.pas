unit listapresupuestos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.Rtti,  System.Win.ComObj,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt, Winapi.ShellAPI,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.StdCtrls,DB,
  Vcl.ExtCtrls, Vcl.ToolWin, FireDAC.Stan.Intf, FireDAC.Stan.Option, System.DateUtils ,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, rDBGrid, rDBGrid_MS, Vcl.Menus;

type
  Tlistpresupuestos = class(TForm)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox1: TGroupBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    tlb1: TToolBar;
    btn1: TToolButton;
    btn2: TToolButton;
    btn3: TToolButton;
    btn4: TToolButton;
    btn5: TToolButton;
    stat1: TStatusBar;
    rDBGridClientes1: TrDBGrid_MS;
    ds1: TDataSource;
    lbed1: TLabeledEdit;
    rb1: TRadioButton;
    rb2: TRadioButton;
    ToolButton1: TToolButton;
    btnmail: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    btn6: TToolButton;
    btn7: TToolButton;
    ToolButton4: TToolButton;
    btn8: TToolButton;
    pm1: TPopupMenu;
    pabrir: TMenuItem;
    pmail: TMenuItem;
    btnobra: TToolButton;
    pobra: TMenuItem;
    pcliente: TMenuItem;
    btn9: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cbaprobadoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure lbed1Change(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure rDBGridClientes1DblClick(Sender: TObject);
    procedure fdqpresupuestosAfterDelete(DataSet: TDataSet);
    procedure fdqpresupuestosAfterOpen(DataSet: TDataSet) ;
    procedure fdqpresupuestosAfterPost(DataSet: TDataSet);
    procedure btnmailClick(Sender: TObject);
    procedure rDBGridClientes1FixColClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure FormClose2(Sender: TObject; var Action: TCloseAction);
    procedure btn7Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure btnobraClick(Sender: TObject);
    procedure btn9Click(Sender: TObject);
  private
    { Private declarations }
    function DevolverTrabajadores(npresu,grupo:integer):string;
  public
    { Public declarations }
  end;

var
  listpresupuestos: Tlistpresupuestos;



implementation

{$R *.dfm}

uses DModule1, DmoduleReports, clientes, FPrincipal,SelectLineasPresupuestos;




procedure Tlistpresupuestos.btn1Click(Sender: TObject);
begin
Close;
end;

procedure Tlistpresupuestos.btn3Click(Sender: TObject);
begin
  DataModule1.insertarpresupuestoExecute(Self);
end;

procedure Tlistpresupuestos.btn4Click(Sender: TObject);
begin
DataModule1.editarpresupuestoExecute(DataModule1.fdpresupuestos);
end;

procedure Tlistpresupuestos.btn5Click(Sender: TObject);
begin
 if Application.MessageBox('�Esta seguro de borrar el presupuesto?','Borrar',MB_YESNO)=IDYES then
       begin
           DataModule1.fdpresupuestos.Delete;
       end


end;

procedure Tlistpresupuestos.btn7Click(Sender: TObject);
begin
DataModule1.editarclienteExecute(ds1.dataset);
end;

procedure Tlistpresupuestos.btn9Click(Sender: TObject);
begin
DataModule2.frxPresupuestoTipo.ShowReport(True);
end;

procedure Tlistpresupuestos.btnmailClick(Sender: TObject);
var mail, parametro,nombresinext,extension,ruta,nombre,destinatario,asunto,cuerpo,adjunto,fichero:string; MSWord:Variant;  fdq:TFDQuery;
begin

 fichero:=PATHUSER+ds1.dataset.FieldByName('path').AsString;
 ruta:=ExtractFilePath(fichero);
 nombre:=ExtractFileName(fichero);
 extension:=ExtractFileExt(fichero);
 nombresinext:=copy(nombre,0,pos(extension,nombre)-1);

  mail:=PATHTHUNDERBIRD;

   if not FileExists(mail) then begin
     MessageBox(Handle, 'No se encuentra el programa de correo Thunderbird.',
       'Error', MB_OK + MB_ICONSTOP);

     Exit;
   end;


if FileExists(fichero) then
  begin
  try
    MSWord:=GetActiveOleOBject('Word.Application');
    except
      MsWord:=CreateOleObject('Word.Application');
    end;

     MSWord.Documents.Open(fichero);
     MSWord.ActiveDocument.SaveAs2(ruta+nombresinext+'.pdf',17);
     MSWord.ActiveDocument.close;

     fdq:=TFDQuery.Create(Self);
     fdq.connection:=DataModule1.FDConnection1;
     fdq.SQL.Add('SELECT correo FROM clientes C, administradores A, presupuestos P WHERE P.id_presupuesto=:idpresupuesto and P.id_ClientePrev=C.idContactos AND C.idAdministrador=A.idAdministrador');
     fdq.ParamByName('idpresupuesto').AsInteger:=ds1.dataset.FieldByName('id_presupuesto').AsInteger;
     fdq.Active:=true;

     if fdq.RecordCount > -1 then
        begin

       destinatario:='to='+fdq.fieldbyname('correo').asstring+',';
       Asunto:='subject='+nombre+',';
       Cuerpo:='body=Hola%20env�o%20presupuesto solicitado.%0D%0A%0D%0A Saludos cordiales.'+',';
       adjunto:='attachment=file:///'+DataModule1.cambiarbarras(ruta)+nombresinext+'.pdf'+'"';


        parametro:= '-compose "'+destinatario+Asunto+Cuerpo+adjunto;
       shellExecute(0,'open',PChar(mail),Pchar(parametro),nil,SW_SHOWNORMAL);

        end
        else
        showmessage('No existe destinatario de correo electronico.');

         fdq.close;
         fdq.free;
        end
  else showmessage('No se puede enviar el presupuesto porque el fichero Word no existe.')


end;

procedure Tlistpresupuestos.btnobraClick(Sender: TObject);
var SelLinPres:TFLineasPresupuestoObra;
begin
    SelLinPres:=TFLineasPresupuestoObra.Create(ds1.dataset);
    SelLinPres.ShowModal;

end;

procedure Tlistpresupuestos.Button1Click(Sender: TObject);
var SQLstr,SQLstr2:string;
begin

 SQLstr:='Select C.nombre, P.Id_ClientePrev, P.id_presupuesto, P.descripcion, P.Aprovado, P.FechaPresupuesto, P.Total, P.TotalAprobado ';
 SQLstr2:='From presupuestos P, clientes C where C.idContactos=P.id_ClientePrev and P.FechaPresupuesto>=:FechaIni and P.FechaPresupuesto<=:FechaFin';
 rDBGridClientes1.DataSource.DataSet.Close;
 TFDQuery(rDBGridClientes1.DataSource.DataSet).SQL.Clear;
  TFDQuery(rDBGridClientes1.DataSource.DataSet).SQL.Add(SQLstr+SQLstr2);
  TFDQuery(rDBGridClientes1.DataSource.DataSet).ParamByName('FechaIni').AsDateTime:=DateTimePicker1.DateTime;
  TFDQuery(rDBGridClientes1.DataSource.DataSet).ParamByName('FechaFin').AsDateTime:=DateTimePicker2.DateTime;
rDBGridClientes1.DataSource.DataSet.Active:=true;



end;

procedure Tlistpresupuestos.cbaprobadoClick(Sender: TObject);
begin
     if (Sender as TCheckBox).Checked then
   begin


        rDBGridClientes1.DataSource.DataSet.Filter:='aprovado=True';
        rDBGridClientes1.DataSource.DataSet.Filtered:=true;

   end
   else begin

        rDBGridClientes1.DataSource.DataSet.Filtered:=false;
        rDBGridClientes1.DataSource.DataSet.Filter:='';

        end;

end;

procedure Tlistpresupuestos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ds1.DataSet.AfterOpen:= nil;
     ds1.DataSet.AfterPost:= nil;
     ds1.DataSet.AfterDelete:=nil;
     ds1.dataset.onfilterrecord:=nil;


ds1.DataSet.Close;
ds1.DataSet.filtered:=False;

Action:=cafree;
end;

function Tlistpresupuestos.DevolverTrabajadores(npresu,grupo:integer):string;
var fdq:TFDQuery;
begin
Result:='';
fdq:=TFDQuery.Create(Self);
fdq.Connection:=DataModule1.FDConnection1;
fdq.SQL.Add('SELECT nombre FROM presupuestostrabajadores PT, trabajadores T where PT.id_presupuesto=:v1 and PT.grupo=:v2 and T.id_trabajador=PT.id_trabajador');
fdq.ParamByName('v1').AsInteger:=npresu;
fdq.ParamByName('v2').AsInteger:=grupo;
fdq.Active:=True;

if fdq.RecordCount>0  then
begin
fdq.First;
Result:=fdq.FieldByName('nombre').AsString;
fdq.Next;
while not fdq.eof do
begin
    Result:=Result+ ' / ' +fdq.FieldByName('nombre').AsString;
    fdq.Next;
end;
end;

fdq.Close;
fdq.Free;

end;


procedure Tlistpresupuestos.FormClose2(Sender: TObject; var Action: TCloseAction);
var i:Integer; fdq:TFDQuery;
begin

fdq:=TFDQuery.Create(Self);
fdq.Connection:=DataModule1.FDConnection1;
fdq.SQL.Add('INSERT INTO previsionpresupuestos (id_presupuesto,grupo,trabajadores,total,mesprevision) VALUES (:v1, :v2, :v3, :v4,:v5)');

for i := 0 to rDBGridClientes1.rBookmarks.Count -1 do
begin
      ds1.DataSet.GotoBookmark(rDBGridClientes1.rBookmarks.Items[i]);

fdq.ParamByName('v1').AsInteger:=ds1.DataSet.FieldByName('id_presupuesto').AsInteger;
fdq.ParamByName('v2').AsInteger:=ds1.DataSet.FieldByName('grupo').AsInteger;
fdq.ParamByName('v3').Asstring:=DevolverTrabajadores(ds1.DataSet.FieldByName('id_presupuesto').AsInteger,ds1.DataSet.FieldByName('grupo').AsInteger);
fdq.ParamByName('v4').Asfloat:=ds1.DataSet.FieldByName('Total').AsFloat;
fdq.ParamByName('v5').AsDate:=Date;

fdq.Prepare;
fdq.ExecSQL;


end;

fdq.Close;
fdq.Free;

DataModule1.fdpresupuestos.Active:=false;
ds1.DataSet.AfterOpen:= nil;
     ds1.DataSet.AfterPost:= nil;
     ds1.DataSet.AfterDelete:=nil;
     ds1.dataset.onfilterrecord:=nil;

Action:=cafree;
end;



procedure Tlistpresupuestos.FormCreate(Sender: TObject);
begin
     DateTimePicker1.Date:=StrToDate('01/01/'+IntToStr(YearOf(Date)));
     DateTimePicker2.Date:=Date;



     ds1.DataSet.AfterOpen:= fdqpresupuestosAfterOpen;
     ds1.DataSet.AfterPost:= fdqpresupuestosAfterPost;
     ds1.DataSet.AfterDelete:=fdqpresupuestosAfterDelete;



     DataModule1.fdpresupuestos.Active:=true;

end;



procedure Tlistpresupuestos.lbed1Change(Sender: TObject);
begin
rDBGridClientes1.DataSource.DataSet.DisableControls;
rDBGridClientes1.DataSource.DataSet.Filtered:=False;
rDBGridClientes1.DataSource.DataSet.Filter:='nombre LIKE ''%'+TLabeledEdit(Sender).Text+'%''';
rDBGridClientes1.DataSource.DataSet.Filtered:=True;
rDBGridClientes1.DataSource.DataSet.EnableControls;

  rDBGridClientes1.RecalculateSummaryResults(true);

 if Length(TLabeledEdit(Sender).text)<1 then rDBGridClientes1.DataSource.DataSet.Filtered:=False;
end;

procedure Tlistpresupuestos.rb1Click(Sender: TObject);
begin
 if (Sender as TRadioButton).Checked then
   begin


        rDBGridClientes1.DataSource.DataSet.Filter:='aprovado=True';
        rDBGridClientes1.DataSource.DataSet.Filtered:=true;

   end
   else begin

        rDBGridClientes1.DataSource.DataSet.Filtered:=false;
        rDBGridClientes1.DataSource.DataSet.Filter:='';

        end;
end;

procedure Tlistpresupuestos.rb2Click(Sender: TObject);
begin
 if (Sender as TRadioButton).Checked then
   begin
        rDBGridClientes1.DataSource.DataSet.Filtered:=false;
        rDBGridClientes1.DataSource.DataSet.Filter:='';

        end;

end;

procedure Tlistpresupuestos.rDBGridClientes1DblClick(Sender: TObject);
begin
DataModule1.editarpresupuestoExecute(ds1.DataSet);
end;


procedure Tlistpresupuestos.rDBGridClientes1FixColClick(Sender: TObject);
begin
//if  TrDBGrid_MS(Sender).Column.Field=DataModule1.fdpresupuestosid_presupuesto then DataModule1.fdpresupuestos.IndexName:='idpresu';
end;

procedure Tlistpresupuestos.ToolButton2Click(Sender: TObject);
begin

DataModule2.FDPresupuestosAprobados.Active:=True;
DataModule2.fdDetallePresupuestos.Active:=True;

DataModule2.frxPresupuestosAprobados.ShowReport(True);
DataModule2.FDPresupuestosAprobados.Active:=False;
DataModule2.fdDetallePresupuestos.Active:=False;

end;

procedure Tlistpresupuestos.ToolButton3Click(Sender: TObject);
begin
 DataModule1.rXLSExport1.ExportDBTable(rDBGridClientes1);
end;

procedure Tlistpresupuestos.ToolButton4Click(Sender: TObject);
var fichero,extension:string;
begin

 fichero:=PATHUSER+ds1.DataSet.FieldByName('path').AsString;
 extension:=ExtractFileExt(fichero);

if not DataModule1.AbrirFicheroPresupuesto(fichero,extension) then
   application.MessageBox('El presupuesto no existe y no se puede abrir.', 'Aviso',(MB_OKCANCEL+MB_ICONQUESTION))

end;



procedure Tlistpresupuestos.fdqpresupuestosAfterOpen(DataSet: TDataSet) ;
begin
     rDBGridClientes1.RecalculateSummaryResults(true);
end;

procedure Tlistpresupuestos.fdqpresupuestosAfterPost(DataSet: TDataSet);
begin
    rDBGridClientes1.RecalculateSummaryResults(true);
end;

procedure Tlistpresupuestos.fdqpresupuestosAfterDelete(DataSet: TDataSet);
begin
  rDBGridClientes1.RecalculateSummaryResults(true);
end;

end.

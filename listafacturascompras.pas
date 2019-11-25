unit listafacturascompras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,System.DateUtils,
  Data.Bind.DBScope, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, rDBGrid, rDBGrid_MS, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, RzDTP, Vcl.Mask,
  RzEdit, RzCmboBx, rImprovedComps, rDBRecView, rDBComponents;

type
  Tlistfacturascompras= class(TForm)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    beBuscar: TButtonedEdit;
    rbcliente: TRadioButton;
    rbnumero: TRadioButton;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button1: TButton;
    GroupBox1: TGroupBox;
    rb1Trimestres: TRadioButton;
    rb2trimestre: TRadioButton;
    rbTodas: TRadioButton;
    stat1: TStatusBar;
    tlb1: TToolBar;
    btn1: TToolButton;
    btn3: TToolButton;
    btn4: TToolButton;
    btn5: TToolButton;
    rDBGridClientes1: TrDBGrid_MS;
    ds1: TDataSource;
    fdqproveedores: TFDQuery;
    rb3trimestre: TRadioButton;
    rb4trimestre: TRadioButton;
    RzComboBox1: TRzComboBox;
    rGroupBox1: TrGroupBox;
    rDBRecView1: TrDBRecView;
    btn6: TToolButton;
    btn7: TToolButton;
    procedure FormCreate(Sender: TObject);

    procedure Button1Click(Sender: TObject);
        procedure rbTodasClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn5Click(Sender: TObject);
    procedure rb2trimestreClick(Sender: TObject);
    procedure rb1TrimestresClick(Sender: TObject);

    procedure beBuscarChange(Sender: TObject);
    procedure rDBGridClientes1LoadPickList(Sender: TObject; DS: TDataSet;
      FieldName: string; PickList: TStrings);
    procedure rb3trimestreClick(Sender: TObject);
    procedure rb4trimestreClick(Sender: TObject);
    procedure RzComboBox1Change(Sender: TObject);
    procedure fdqfacturascomprasAfterDelete(DataSet: TDataSet);
    procedure fdqfacturascomprasAfterOpen(DataSet: TDataSet);
    procedure fdqfacturascomprasAfterPost(DataSet: TDataSet);
    procedure fdqfacturascomprasAfterInsert(DataSet: TDataSet);
    procedure fdqfacturascomprasAfterCancel(DataSet: TDataSet);
    procedure rDBRecView1Click(Sender: TObject);
    procedure rGroupBox1MinimizeChange(Sender: TObject);
    procedure rDBRecView1KeyPress(Sender: TObject; var Key: Char);
    procedure btn7Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  listfacturascompras: Tlistfacturascompras;

implementation

uses
  DModule1,inserfacturascomparas;

{$R *.dfm}



procedure Tlistfacturascompras.fdqfacturascomprasAfterDelete(DataSet: TDataSet);
begin
rDBGridClientes1.RecalculateSummaryResults(True);
end;

procedure Tlistfacturascompras.fdqfacturascomprasAfterOpen(DataSet: TDataSet);
begin
rDBGridClientes1.RecalculateSummaryResults(True);
end;

procedure Tlistfacturascompras.fdqfacturascomprasAfterPost(DataSet: TDataSet);
begin
rDBGridClientes1.RecalculateSummaryResults(True);
 rDBRecView1.Options:=rDBRecView1.Options-[goEditing];
end;

procedure Tlistfacturascompras.beBuscarChange(Sender: TObject);
begin

if Length(TLabeledEdit(Sender).text) > 0 then
begin
fdqproveedores.Filtered:=False;
fdqproveedores.Filter:='nombre LIKE ''%'+TLabeledEdit(Sender).Text+'%''';
fdqproveedores.Filtered:=True;

if fdqproveedores.RecordCount > 0 then
 begin
ds1.DataSet.Filtered:=False;
ds1.dataset.Filter:='proveedores_id_proveedor='+fdqproveedores.FieldByName('id_proveedor').AsString;
ds1.dataset.Filtered:=True;
  rDBGridClientes1.RecalculateSummaryResults(true);
 end
end
else begin
        fdqproveedores.Filtered:=False;
        ds1.DataSet.Filtered:=False;
         rDBGridClientes1.RecalculateSummaryResults(true);
     end;
end;

procedure Tlistfacturascompras.btn1Click(Sender: TObject);
begin
Close;
end;

procedure Tlistfacturascompras.btn3Click(Sender: TObject);
var inserfacturacompras:TinsertFacturasCompras;
begin
     insertFacturasCompras:=TinsertFacturasCompras.Create(Self);
     insertFacturasCompras.ShowModal;

end;

procedure Tlistfacturascompras.btn5Click(Sender: TObject);
begin
if Application.MessageBox('¿Esta seguro de borrar la factura?','Borrar',MB_YESNO)=IDYES then
       begin
           ds1.DataSet.Delete;
       end

   end;

   procedure Tlistfacturascompras.btn7Click(Sender: TObject);
begin
DataModule1.rXLSExport1.ExportDBTable(ds1.DataSet);
end ;



procedure Tlistfacturascompras.fdqfacturascomprasAfterCancel(DataSet: TDataSet);
begin
  rDBRecView1.Options:=rDBRecView1.Options-[goEditing];
end;


procedure Tlistfacturascompras.Button1Click(Sender: TObject);

begin
 rDBGridClientes1.DataSource.DataSet.DisableControls;
ds1.DataSet.Filtered:=False;
ds1.DataSet.Filter:='fecha>= {d '+FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)+'} and fecha<={d '+FormatDateTime('yyyy-mm-dd',DateTimePicker2.Date)+'}';
ds1.DataSet.Filtered:=True;
rDBGridClientes1.DataSource.DataSet.EnableControls;
  rDBGridClientes1.RecalculateSummaryResults(true);

end;

procedure Tlistfacturascompras.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  ds1.DataSet.AfterOpen:= nil;
     ds1.DataSet.AfterPost:= nil;
     ds1.DataSet.AfterDelete:=nil;
     ds1.DataSet.AfterInsert:=nil;
     ds1.DataSet.AfterCancel:=nil;

    ds1.dataset.Active:=false;
fdqproveedores.Active:=false;


Action:=caFree;
end;

procedure Tlistfacturascompras.FormCreate(Sender: TObject);
var i:Integer;
begin
     DateTimePicker1.Date:=Date;
     DateTimePicker2.Date:=Date;

     for i := YearOf(date)-4 to YearOf(date)+5 do RzComboBox1.Items.add(IntToStr(i));

     i:=YearOf(date);

     RzComboBox1.text:=IntToStr(i);

     rbcliente.checked:=true;

     fdqproveedores.Active:=True;

     ds1.DataSet.AfterOpen:= fdqfacturascomprasAfterOpen;
     ds1.DataSet.AfterPost:= fdqfacturascomprasAfterPost;
     ds1.DataSet.AfterDelete:=fdqfacturascomprasAfterDelete;
     ds1.DataSet.AfterPost:=fdqfacturascomprasAfterPost;
     ds1.DataSet.AfterInsert:=fdqfacturascomprasAfterInsert;

       ds1.DataSet.Active:=true;
        rbTodas.Checked:=True;
        rGroupBox1.Minimized:=True;
end;

procedure Tlistfacturascompras.rb2trimestreClick(Sender: TObject);
var dt1,dt2:TDate;
begin
 if TRadioButton(Sender).Checked then
       begin
       rDBGridClientes1.DataSource.DataSet.DisableControls;
       ds1.DataSet.Filtered:=False;
       dt1:=StrToDate('1/4/'+RzComboBox1.Text);
       dt2:=StrToDate('30/6/'+RzComboBox1.Text);
      ds1.DataSet.Filter:='fecha>= {d '+FormatDateTime('yyyy-mm-dd',dt1)+'} and fecha<={d '+FormatDateTime('yyyy-mm-dd',dt2)+'}';

       ds1.DataSet.Filtered:=True;
       rDBGridClientes1.DataSource.DataSet.EnableControls;
         rDBGridClientes1.RecalculateSummaryResults(true);
       end;
end;



procedure Tlistfacturascompras.rb3trimestreClick(Sender: TObject);
var dt1,dt2:TDate;
begin
 if TRadioButton(Sender).Checked then
       begin
       rDBGridClientes1.DataSource.DataSet.DisableControls;
       ds1.DataSet.Filtered:=False;
       dt1:=StrToDate('1/7/'+RzComboBox1.Text);
       dt2:=StrToDate('30/9/'+RzComboBox1.Text);
      ds1.DataSet.Filter:='fecha>= {d '+FormatDateTime('yyyy-mm-dd',dt1)+'} and fecha<={d '+FormatDateTime('yyyy-mm-dd',dt2)+'}';

       ds1.DataSet.Filtered:=True;
        rDBGridClientes1.DataSource.DataSet.EnableControls;
          rDBGridClientes1.RecalculateSummaryResults(true);
       end;

end;

procedure Tlistfacturascompras.rb4trimestreClick(Sender: TObject);
var dt1,dt2:TDate;
begin
 if TRadioButton(Sender).Checked then
       begin
       rDBGridClientes1.DataSource.DataSet.DisableControls;
       ds1.DataSet.Filtered:=False;
       dt1:=StrToDate('1/10/'+RzComboBox1.Text);
       dt2:=StrToDate('31/12/'+RzComboBox1.Text);
      ds1.DataSet.Filter:='fecha>= {d '+FormatDateTime('yyyy-mm-dd',dt1)+'} and fecha<={d '+FormatDateTime('yyyy-mm-dd',dt2)+'}';

       ds1.DataSet.Filtered:=True;
       rDBGridClientes1.DataSource.DataSet.EnableControls;
       rDBGridClientes1.RecalculateSummaryResults(true);
       end;

end;

procedure Tlistfacturascompras.rb1TrimestresClick(Sender: TObject);
var dt1,dt2:TDate;
begin
   if TRadioButton(Sender).Checked then
       begin
       rDBGridClientes1.DataSource.DataSet.DisableControls;
       ds1.DataSet.Filtered:=False;
       dt1:=StrToDate('1/1/'+RzComboBox1.Text);
       dt2:=StrToDate('31/3/'+RzComboBox1.Text);
      ds1.DataSet.Filter:='fecha>= {d '+FormatDateTime('yyyy-mm-dd',dt1)+'} and fecha<={d '+FormatDateTime('yyyy-mm-dd',dt2)+'}';

       ds1.DataSet.Filtered:=True;
        rDBGridClientes1.DataSource.DataSet.EnableControls;
          rDBGridClientes1.RecalculateSummaryResults(true);
       end;
end;

procedure Tlistfacturascompras.rbTodasClick(Sender: TObject);
var dt1,dt2:TDate;
begin
      if rbTodas.Checked then
       begin
       rDBGridClientes1.DataSource.DataSet.DisableControls;
      ds1.DataSet.Filtered:=False;
       dt1:=StrToDate('1/1/'+RzComboBox1.Text);
       dt2:=StrToDate('31/12/'+RzComboBox1.Text);
      ds1.DataSet.Filter:='fecha>= {d '+FormatDateTime('yyyy-mm-dd',dt1)+'} and fecha<={d '+FormatDateTime('yyyy-mm-dd',dt2)+'}';

       ds1.DataSet.Filtered:=True;
       rDBGridClientes1.DataSource.DataSet.EnableControls;
         rDBGridClientes1.RecalculateSummaryResults(true);
       end;

end;



procedure Tlistfacturascompras.rDBGridClientes1LoadPickList(Sender: TObject;
  DS: TDataSet; FieldName: string; PickList: TStrings);
begin
  if FieldName ='tasaIVA' then
  begin
    PickList.Add('10');
    PickList.Add('21');
  end;

  if FieldName='formapago' then
  begin
    PickList.Add('CONTADO');
    PickList.Add('DOMICILIADO');
    PickList.Add('CHEQUE');

  end;

end;

procedure Tlistfacturascompras.rDBRecView1Click(Sender: TObject);
begin
if not (ds1.DataSet.State in [dsEdit, dsInsert]) then
begin

 ds1.DataSet.Insert;

end;


end;
procedure Tlistfacturascompras.rDBRecView1KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then begin
            ds1.DataSet.Post;
            ds1.DataSet.Insert;
            //rDBRecView1.
                 end;

end;

procedure Tlistfacturascompras.fdqfacturascomprasAfterInsert(DataSet: TDataSet);
begin

 ds1.DataSet.FieldByName('tasaIVA').AsInteger:=21;
 rDBRecView1.Options:=rDBRecView1.Options+[goEditing];
end;

procedure Tlistfacturascompras.rGroupBox1MinimizeChange(Sender: TObject);
begin
if not TrGroupBox(Sender).Minimized then begin

if not (ds1.DataSet.State in [dsInsert, dsEdit]) then
begin
ds1.DataSet.Insert;

 panel1.Height:=Panel1.Height+150;

end;
 end  else begin
          ds1.DataSet.Cancel;

          panel1.Height:=Panel1.Height-150
          end;
end;

procedure Tlistfacturascompras.RzComboBox1Change(Sender: TObject);

begin
    rbTodasClick(Sender);
end;

end.

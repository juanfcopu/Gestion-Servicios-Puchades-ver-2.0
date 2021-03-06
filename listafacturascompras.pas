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
  RzEdit, RzCmboBx, rImprovedComps, rDBRecView, rDBComponents, RzPanel, RzStatus,
  RzDBStat;

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
    tlb1: TToolBar;
    btn1: TToolButton;
    btn3: TToolButton;
    btn5: TToolButton;
    rb3trimestre: TRadioButton;
    rb4trimestre: TRadioButton;
    RzComboBox1: TRzComboBox;
    rGroupBox1: TrGroupBox;
    rDBRecView1: TrDBRecView;
    btn6: TToolButton;
    btn7: TToolButton;
    fdqproveedores: TFDQuery;
    RzStatusBar1: TRzStatusBar;
    RzStatusPane1: TRzStatusPane;
    RzFieldStatus1: TRzFieldStatus;
    RzDBStatusPane1: TRzDBStatusPane;
    RzDBStateStatus1: TRzDBStateStatus;
    GroupBox3: TGroupBox;
    cbAgruparAdmin: TCheckBox;
    chkCamposBusqueda: TCheckBox;
    rdbfacturascompras: TrDBGrid_MS;
    ds1: TDataSource;
    btnGenAsiento: TToolButton;
    procedure FormCreate(Sender: TObject);

    procedure Button1Click(Sender: TObject);

    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn5Click(Sender: TObject);
    procedure rb2trimestreClick(Sender: TObject);


    procedure beBuscarChange(Sender: TObject);
    procedure rDBGridClientes1LoadPickList(Sender: TObject; DS: TDataSet;
      FieldName: string; PickList: TStrings);
   
    procedure RzComboBox1Change(Sender: TObject);
    procedure fdqfacturascomprasAfterDelete(DataSet: TDataSet);
    procedure fdqfacturascomprasAfterOpen(DataSet: TDataSet);
    procedure fdqfacturascomprasAfterPost(DataSet: TDataSet);
    procedure fdqfacturascomprasAfterInsert(DataSet: TDataSet);
    procedure fdqfacturascomprasAfterCancel(DataSet: TDataSet);
    procedure fdqfacturascomprasBeforeCancel(DataSet: TDataSet);





procedure fdfacturascomprasUpdateRecord(ASender: TDataSet;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
  AOptions: TFDUpdateRowOptions);

    procedure rDBRecView1Click(Sender: TObject);
    procedure rGroupBox1MinimizeChange(Sender: TObject);
    procedure rDBRecView1KeyPress(Sender: TObject; var Key: Char);
    procedure btn7Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure fdq1AfterExecute(DataSet: TFDDataSet);
    procedure fdqfacturascomprasBeforePost(DataSet: TDataSet);
    procedure cbAgruparAdminClick(Sender: TObject);
    procedure chkCamposBusquedaClick(Sender: TObject);
    procedure rDBGridClientes1FilterChanged(Sender: TObject);
     procedure fdfacturascomprasPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
    procedure btnGenAsientoClick(Sender: TObject);
     procedure fdqfacturascomprasBeforeDelete(DataSet: TDataSet);


  private
    { Private declarations }
      var asiento:Integer;
  public
    { Public declarations }

       inserciones:Integer;

  end;

var
  listfacturascompras: Tlistfacturascompras;

implementation

uses
  DModule1,inserfacturascomparas;

{$R *.dfm}





procedure Tlistfacturascompras.fdqfacturascomprasBeforeCancel(DataSet: TDataSet);
begin
 //if DataSet.State in [dsInsert] then Dec(inserciones);

end;

procedure Tlistfacturascompras.fdqfacturascomprasAfterDelete(DataSet: TDataSet);

begin
DataModule1.BorrarAsiento(asiento);
rdbfacturascompras.RecalculateSummaryResults(True);
end;


procedure Tlistfacturascompras.fdqfacturascomprasBeforeDelete(DataSet: TDataSet);

begin
asiento:=DataSet.FieldByName('id_asiento').AsInteger;
end;

procedure Tlistfacturascompras.fdqfacturascomprasAfterOpen(DataSet: TDataSet);
begin
rdbfacturascompras.RecalculateSummaryResults(True);
end;



procedure Tlistfacturascompras.fdq1AfterExecute(DataSet: TFDDataSet);
begin

   if TFDQuery(DataSet).RowsAffected = -1 then
    showmessage('No se ha modificado ning�n asiento')
  else
    case TFDQuery(DataSet).Command.CommandKind of
    skInsert: begin


                rzfieldstatus1.caption:='Se ha generado el asiento N� '+DataModule1.fdfactcomprasid_asiento.asstring ;

              end;
    skUpdate: rzfieldstatus1.caption:='Se ha modificado el asiento N� '+DataModule1.fdfactcomprasid_asiento.asstring;
    skDelete: rzfieldstatus1.caption:='Se ha borrado el asiento N� '+DataModule1.fdfactcomprasid_asiento.asstring;
    else      showmessage(Format('%d rows affected', [TFDQuery(DataSet).RowsAffected]));
    end;


end;


procedure Tlistfacturascompras.fdqfacturascomprasAfterPost(DataSet: TDataSet);

begin

 rdbfacturascompras.RecalculateSummaryResults(True);
 rDBRecView1.Options:=rDBRecView1.Options-[goEditing];


 end;

procedure Tlistfacturascompras.fdqfacturascomprasBeforePost(DataSet: TDataSet);
var cnpIVA,cnpCompras:Integer;
begin

if not (ds1.dataset.state in [dsInsert,dsEdit]) then ds1.DataSet.edit;


   with DataModule1 do
 begin

 if fdfactcomprasticket.AsBoolean then  cnpCompras:=62900000
 else   cnpCompras:=60000001 ;

 if (fdfactcomprasIVA.AsInteger = 10) then cnpIVA:=47200010
  else     cnpIVA:=47200021;

                   if (fdfactcomprasid_asiento.isnull) or (fdfactcomprasid_asiento.AsInteger=-1) then
                      begin

                      if fdfactcomprasticket.AsBoolean then
                      begin

                        fdfactcomprasid_asiento.AsInteger:= generarAsiento(-1,cnpCompras,Date,'TICKET COMPRAS '+fdfactcomprasnombre.AsString,fdfactcomprasimporte.AsFloat, fdfactcomprasNfactura.asstring,true);
                        asiento:=fdfactcomprasid_asiento.AsInteger;
                      end else
                           begin
                              fdfactcomprasid_asiento.AsInteger:= generarAsiento(-1,cnpIVA,Date,'FACTURA COMPRAS '+fdfactcomprasnombre.AsString,fdfactcomprasIVA.AsFloat, fdfactcomprasNfactura.asstring,true);
                              asiento:=fdfactcomprasid_asiento.AsInteger;
                              generarAsiento(fdfactcomprasid_asiento.AsInteger,cnpCompras,Date,'FACTURA COMPRAS '+fdfactcomprasnombre.AsString,fdfactcomprasimporte.AsFloat, fdfactcomprasNfactura.asstring,false);
                            end;

                        if fdfactcomprasid_asiento.AsInteger = -1 then  DataSet.cancel;

                      end
                      else begin
                              if fdfactcomprasticket.AsBoolean then
                              begin

                                DataModule1.modificarAsiento(fdfactcomprasid_asiento.AsInteger,cnpCompras,Date,'TICKET COMPRAS '+fdfactcomprasnombre.AsString,fdfactcomprasimporte.AsFloat,fdfactcomprasNfactura.asstring);

                                end else
                           begin

                               DataModule1.modificarAsiento(fdfactcomprasid_asiento.AsInteger,cnpIVA,Date,'FACTURA COMPRAS '+fdfactcomprasnombre.AsString,fdfactcomprasIVA.AsFloat,fdfactcomprasNfactura.asstring);
                               DataModule1.modificarAsiento(fdfactcomprasid_asiento.AsInteger,cnpCompras,Date,'FACTURA COMPRAS '+fdfactcomprasnombre.AsString,fdfactcomprasimporte.AsFloat,fdfactcomprasNfactura.asstring);

                           end;

                            end;
end;
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
  rdbfacturascompras.RecalculateSummaryResults(true);
 end
end
else begin
         fdqproveedores.Filtered:=False;
         ds1.DataSet.Filtered:=False;
         rdbfacturascompras.RecalculateSummaryResults(true);
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
if Application.MessageBox('�Esta seguro de borrar la factura?','Borrar',MB_YESNO)=IDYES then
       begin
           ds1.DataSet.Delete;
       end

   end;

   procedure Tlistfacturascompras.btn7Click(Sender: TObject);
begin
DataModule1.rXLSExport1.ExportDBTable(ds1.DataSet);
end ;



procedure Tlistfacturascompras.btnGenAsientoClick(Sender: TObject);
begin
fdqfacturascomprasBeforePost(ds1.DataSet);
end;

procedure Tlistfacturascompras.fdqfacturascomprasAfterCancel(DataSet: TDataSet);
begin

  rDBRecView1.Options:=rDBRecView1.Options-[goEditing];
end;


procedure Tlistfacturascompras.Button1Click(Sender: TObject);

begin
 rdbfacturascompras.DataSource.DataSet.DisableControls;
ds1.DataSet.Filtered:=False;
ds1.DataSet.Filter:='fecha>= {d '+FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)+'} and fecha<={d '+FormatDateTime('yyyy-mm-dd',DateTimePicker2.Date)+'}';
ds1.DataSet.Filtered:=True;
rdbfacturascompras.DataSource.DataSet.EnableControls;
rdbfacturascompras.RecalculateSummaryResults(true);

end;

procedure Tlistfacturascompras.cbAgruparAdminClick(Sender: TObject);
begin
rdbfacturascompras.OptionsEx2.Filters.FunnelBtn:=cbAgruparAdmin.Checked;
end;

procedure Tlistfacturascompras.chkCamposBusquedaClick(Sender: TObject);
begin
rdbfacturascompras.OptionsEx2.Filters.TextBar:=chkCamposBusqueda.Checked;
end;

procedure Tlistfacturascompras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     ds1.DataSet.Cancel;
     DataModule1.fq1.AfterExecute:=nil;
     ds1.DataSet.AfterOpen:= nil;
     ds1.DataSet.AfterPost:= nil;
     ds1.DataSet.AfterDelete:=nil;
     ds1.DataSet.AfterInsert:=nil;
     ds1.DataSet.AfterCancel:=nil;
     ds1.DataSet.AfterEdit:=nil;
     ds1.DataSet.BeforeCancel:=nil;

     TFDQuery(ds1.DataSet).OnUpdateRecord:=nil;
       ds1.DataSet.OnPostError:=nil;

     ds1.dataset.Active:=false;

     DataModule1.fdcategoriascompras.Active:=False;



Action:=caFree;
end;

procedure Tlistfacturascompras.FormCreate(Sender: TObject);
var i:Integer;
begin
     DateTimePicker1.Date:=Date;
     DateTimePicker2.Date:=Date;
     inserciones:=0;
     for i := YearOf(date)-4 to YearOf(date)+5 do RzComboBox1.Items.add(IntToStr(i));

     i:=YearOf(date);

     RzComboBox1.text:=IntToStr(i);

     rbcliente.checked:=true;

       DataMOdule1.FDdiario.Active:=True;
      fdqproveedores.Active:=True;


     DataModule1.fq1.AfterExecute:=fdq1AfterExecute;

     ds1.DataSet:=DataModule1.fdfactcompras;

     ds1.DataSet.AfterOpen:= fdqfacturascomprasAfterOpen;
     ds1.DataSet.AfterPost:= fdqfacturascomprasAfterPost;
     ds1.DataSet.AfterDelete:=fdqfacturascomprasAfterDelete;
     ds1.DataSet.AfterInsert:=fdqfacturascomprasAfterInsert;
     TFDQuery(ds1.DataSet).OnUpdateRecord:=fdfacturascomprasUpdateRecord;
     ds1.DataSet.BeforePost:=fdqfacturascomprasBeforePost;
     ds1.DataSet.BeforeCancel:=fdqfacturascomprasBeforeCancel;

      ds1.DataSet.OnPostError:=fdfacturascomprasPostError;

     DataModule1.fdfactcomprasnombre.LookupDataSet:=fdqproveedores;
     DataModule1.fdcategoriascompras.Active:=True;

         ds1.DataSet.Open;

        rbTodas.Checked:=True;
        rGroupBox1.Minimized:=True;
end;


procedure Tlistfacturascompras.fdfacturascomprasPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
var fdq:TFDQuery;
begin
  fdq:=TFDQuery.Create(Self);
  fdq.Connection:=DataModule1.FDConnection1;
  fdq.SQL.Add('DELETE from diario where id_asiento=:asiento');
  fdq.ParamByName('asiento').AsInteger:=asiento;
  fdq.Prepare;
  fdq.ExecSQL;

  fdq.Free;

end;


procedure Tlistfacturascompras.rb2trimestreClick(Sender: TObject);
var dt1,dt2:TDate;
begin
 if TRadioButton(Sender).Checked then
       begin
       rdbfacturascompras.DataSource.DataSet.DisableControls;


       case TRadioButton(Sender).Tag of
            0:begin
                dt1:=StrToDate('1/1/'+RzComboBox1.Text);
                   dt2:=StrToDate('31/12/'+RzComboBox1.Text);

              end;

            1: begin
                   dt1:=StrToDate('1/1/'+RzComboBox1.Text);
                   dt2:=StrToDate('31/3/'+RzComboBox1.Text);
                end;
            2: begin
                  dt1:=StrToDate('1/4/'+RzComboBox1.Text);
                  dt2:=StrToDate('30/6/'+RzComboBox1.Text);
                end;
            3: begin
                    dt1:=StrToDate('1/7/'+RzComboBox1.Text);
                   dt2:=StrToDate('30/9/'+RzComboBox1.Text);
               end;
            4: begin
                     dt1:=StrToDate('1/10/'+RzComboBox1.Text);
                  dt2:=StrToDate('31/12/'+RzComboBox1.Text);
                end;
       end;


       ds1.DataSet.Filtered:=False;
       ds1.DataSet.Filter:='fecha>= {d '+FormatDateTime('yyyy-mm-dd',dt1)+'} and fecha<={d '+FormatDateTime('yyyy-mm-dd',dt2)+'}';

       ds1.DataSet.Filtered:=True;
       rdbfacturascompras.DataSource.DataSet.EnableControls;
         rdbfacturascompras.RecalculateSummaryResults(true);
       end;
end;


procedure Tlistfacturascompras.rDBGridClientes1FilterChanged(Sender: TObject);
begin
 rdbfacturascompras.RecalculateSummaryResults(true);
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
             end;

  if Key='.' then Key:=',';

end;

procedure Tlistfacturascompras.fdqfacturascomprasAfterInsert(DataSet: TDataSet);
begin


 ds1.DataSet.FieldByName('tasaIVA').AsInteger:=21;
 ds1.DataSet.FieldByName('fechacontable').AsDateTime:=Date;
 ds1.DataSet.FieldByName('formapago').AsString:='CONTADO';
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
    rb2trimestreClick(Sender);
end;


procedure Tlistfacturascompras.fdfacturascomprasUpdateRecord(ASender: TDataSet;
  ARequest: TFDUpdateRequest; var AAction: TFDErrorAction;
  AOptions: TFDUpdateRowOptions);

begin

 with DataModule1 do
 begin

    case ARequest  of
      arInsert:  begin
                    Inc(inserciones);
                    rzstatuspane1.Caption:=inserciones.ToString + ' facturas insertadas';
                    DataModule1.FDdiario.Refresh;
                  end;

       arUpdate: begin
                  rzstatuspane1.Caption:='Se ha modificado la factura '+ ASender.FieldByName('Nfactura').AsString+' - '+ ASender.FieldByName('fecha').asstring+' - ' +ASender.FieldByName('nombre').asstring;

                end;
  end;

 end;

end;

end.

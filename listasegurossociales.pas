unit listasegurossociales;

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
  Tlistsegurossociales= class(TForm)
    Panel1: TPanel;
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
    btn2: TToolButton;
    btn3: TToolButton;
    btn4: TToolButton;
    btn5: TToolButton;
    rDBGridClientes1: TrDBGrid_MS;
    rb3trimestre: TRadioButton;
    rb4trimestre: TRadioButton;
    RzComboBox1: TRzComboBox;
    rGroupBox1: TrGroupBox;
    btn6: TToolButton;
    btn7: TToolButton;
    ds1: TDataSource;
    rDBRecView1: TrDBRecView;
    procedure FormCreate(Sender: TObject);

    procedure Button1Click(Sender: TObject);
        procedure rbTodasClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn5Click(Sender: TObject);
    procedure rb2trimestreClick(Sender: TObject);
    procedure rb1TrimestresClick(Sender: TObject);
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

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  listsegurossociales: Tlistsegurossociales;

implementation

uses
  DModule1;

{$R *.dfm}



procedure Tlistsegurossociales.fdqfacturascomprasAfterDelete(DataSet: TDataSet);
begin
rDBGridClientes1.RecalculateSummaryResults(True);
end;

procedure Tlistsegurossociales.fdqfacturascomprasAfterOpen(DataSet: TDataSet);
begin
rDBGridClientes1.RecalculateSummaryResults(True);
end;

procedure Tlistsegurossociales.fdqfacturascomprasAfterPost(DataSet: TDataSet);
begin
rDBGridClientes1.RecalculateSummaryResults(True);
 rDBRecView1.Options:=rDBRecView1.Options-[goEditing];
end;

procedure Tlistsegurossociales.btn1Click(Sender: TObject);
begin
Close;
end;

{procedure Tlistsegurossociales.btn3Click(Sender: TObject);
var insnominas:Tinsertnominas;
begin
    insnominas:=Tinsertnominas.Create(Self);
    insnominas.showmodal;

end;
 }
procedure Tlistsegurossociales.btn5Click(Sender: TObject);
begin
if Application.MessageBox('�Esta seguro de borrar la linea TC1?','Borrar',MB_YESNO)=IDYES then
       begin
           ds1.DataSet.Delete;
       end

   end;

   procedure Tlistsegurossociales.btn7Click(Sender: TObject);
begin
DataModule1.rXLSExport1.ExportDBTable(ds1.DataSet);
end ;



procedure Tlistsegurossociales.fdqfacturascomprasAfterCancel(DataSet: TDataSet);
begin
  rDBRecView1.Options:=rDBRecView1.Options-[goEditing];
end;


procedure Tlistsegurossociales.Button1Click(Sender: TObject);

begin
 rDBGridClientes1.DataSource.DataSet.DisableControls;
ds1.DataSet.Filtered:=False;
ds1.DataSet.Filter:='fechapagotc1>= {d '+FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)+'} and fechapagotc1<={d '+FormatDateTime('yyyy-mm-dd',DateTimePicker2.Date)+'}';
ds1.DataSet.Filtered:=True;
rDBGridClientes1.DataSource.DataSet.EnableControls;
  rDBGridClientes1.RecalculateSummaryResults(true);

end;

procedure Tlistsegurossociales.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  ds1.DataSet.AfterOpen:= nil;
     ds1.DataSet.AfterPost:= nil;
     ds1.DataSet.AfterDelete:=nil;
     ds1.DataSet.AfterInsert:=nil;
     ds1.DataSet.AfterCancel:=nil;

    ds1.dataset.Active:=false;



Action:=caFree;
end;

procedure Tlistsegurossociales.FormCreate(Sender: TObject);
var i:Integer;
begin
     DateTimePicker1.Date:=Date;
     DateTimePicker2.Date:=Date;

     for i := YearOf(date)-4 to YearOf(date)+5 do RzComboBox1.Items.add(IntToStr(i));

     i:=YearOf(date);

     RzComboBox1.text:=IntToStr(i);



    ds1.DataSet.AfterOpen:= fdqfacturascomprasAfterOpen;
     ds1.DataSet.AfterPost:= fdqfacturascomprasAfterPost;
     ds1.DataSet.AfterDelete:=fdqfacturascomprasAfterDelete;
     ds1.DataSet.AfterPost:=fdqfacturascomprasAfterPost;
     ds1.DataSet.AfterInsert:=fdqfacturascomprasAfterInsert;

       ds1.DataSet.Open;



        rbTodas.Checked:=True;
        rGroupBox1.Minimized:=True;
end;

procedure Tlistsegurossociales.rb2trimestreClick(Sender: TObject);
var dt1,dt2:TDate;
begin
 if TRadioButton(Sender).Checked then
       begin
       rDBGridClientes1.DataSource.DataSet.DisableControls;
       ds1.DataSet.Filtered:=False;
       dt1:=StrToDate('1/4/'+RzComboBox1.Text);
       dt2:=StrToDate('30/6/'+RzComboBox1.Text);
      ds1.DataSet.Filter:='fechapagotc1>= {d '+FormatDateTime('yyyy-mm-dd',dt1)+'} and fechapagotc1<={d '+FormatDateTime('yyyy-mm-dd',dt2)+'}';

       ds1.DataSet.Filtered:=True;
       rDBGridClientes1.DataSource.DataSet.EnableControls;
         rDBGridClientes1.RecalculateSummaryResults(true);
       end;
end;



procedure Tlistsegurossociales.rb3trimestreClick(Sender: TObject);
var dt1,dt2:TDate;
begin
 if TRadioButton(Sender).Checked then
       begin
       rDBGridClientes1.DataSource.DataSet.DisableControls;
       ds1.DataSet.Filtered:=False;
       dt1:=StrToDate('1/7/'+RzComboBox1.Text);
       dt2:=StrToDate('30/9/'+RzComboBox1.Text);
      ds1.DataSet.Filter:='fechapagotc1>= {d '+FormatDateTime('yyyy-mm-dd',dt1)+'} and fechapagotc1<={d '+FormatDateTime('yyyy-mm-dd',dt2)+'}';

       ds1.DataSet.Filtered:=True;
        rDBGridClientes1.DataSource.DataSet.EnableControls;
          rDBGridClientes1.RecalculateSummaryResults(true);
       end;

end;

procedure Tlistsegurossociales.rb4trimestreClick(Sender: TObject);
var dt1,dt2:TDate;
begin
 if TRadioButton(Sender).Checked then
       begin
       rDBGridClientes1.DataSource.DataSet.DisableControls;
       ds1.DataSet.Filtered:=False;
       dt1:=StrToDate('1/10/'+RzComboBox1.Text);
       dt2:=StrToDate('31/12/'+RzComboBox1.Text);
      ds1.DataSet.Filter:='fechapagotc1>= {d '+FormatDateTime('yyyy-mm-dd',dt1)+'} and fechapagotc1<={d '+FormatDateTime('yyyy-mm-dd',dt2)+'}';

       ds1.DataSet.Filtered:=True;
       rDBGridClientes1.DataSource.DataSet.EnableControls;
       rDBGridClientes1.RecalculateSummaryResults(true);
       end;

end;

procedure Tlistsegurossociales.rb1TrimestresClick(Sender: TObject);
var dt1,dt2:TDate;
begin
   if TRadioButton(Sender).Checked then
       begin
       rDBGridClientes1.DataSource.DataSet.DisableControls;
       ds1.DataSet.Filtered:=False;
       dt1:=StrToDate('1/1/'+RzComboBox1.Text);
       dt2:=StrToDate('31/3/'+RzComboBox1.Text);
      ds1.DataSet.Filter:='fechapagotc1>= {d '+FormatDateTime('yyyy-mm-dd',dt1)+'} and fechapagotc1<={d '+FormatDateTime('yyyy-mm-dd',dt2)+'}';

       ds1.DataSet.Filtered:=True;
        rDBGridClientes1.DataSource.DataSet.EnableControls;
          rDBGridClientes1.RecalculateSummaryResults(true);
       end;
end;

procedure Tlistsegurossociales.rbTodasClick(Sender: TObject);
var dt1,dt2:TDate;
begin
      if rbTodas.Checked then
       begin
       rDBGridClientes1.DataSource.DataSet.DisableControls;
      ds1.DataSet.Filtered:=False;
       dt1:=StrToDate('1/1/'+RzComboBox1.Text);
       dt2:=StrToDate('31/12/'+RzComboBox1.Text);
      ds1.DataSet.Filter:='fechapagotc1>= {d '+FormatDateTime('yyyy-mm-dd',dt1)+'} and fechapagotc1<={d '+FormatDateTime('yyyy-mm-dd',dt2)+'}';

       ds1.DataSet.Filtered:=True;
       rDBGridClientes1.DataSource.DataSet.EnableControls;
         rDBGridClientes1.RecalculateSummaryResults(true);
       end;

end;



procedure Tlistsegurossociales.rDBRecView1Click(Sender: TObject);
begin
if not (ds1.DataSet.State in [dsEdit, dsInsert]) then
begin

 ds1.DataSet.Insert;

end;


end;
procedure Tlistsegurossociales.rDBRecView1KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then begin
            ds1.DataSet.Post;
            ds1.DataSet.Insert;
            //rDBRecView1.
                 end;

end;

procedure Tlistsegurossociales.fdqfacturascomprasAfterInsert(DataSet: TDataSet);
begin


 rDBRecView1.Options:=rDBRecView1.Options+[goEditing];
end;

procedure Tlistsegurossociales.rGroupBox1MinimizeChange(Sender: TObject);
begin
if not TrGroupBox(Sender).Minimized then begin

if not (ds1.DataSet.State in [dsInsert, dsEdit]) then
begin
ds1.DataSet.Insert;

 panel1.Height:=Panel1.Height+40;

end;
 end  else begin
          ds1.DataSet.Cancel;

          panel1.Height:=Panel1.Height-40
          end;
end;

procedure Tlistsegurossociales.RzComboBox1Change(Sender: TObject);

begin
    rbTodasClick(Sender);
end;

end.

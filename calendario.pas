unit calendario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.ExtCtrls, RzPanel,System.DateUtils,
  RzPopups, RzDBDTP, RzDBEdit, Vcl.ComCtrls, RzDTP, Vcl.StdCtrls, Vcl.Mask,
  RzEdit, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls,Vcl.Themes,
  Vcl.Grids, Vcl.DBGrids, rDBGrid, rDBGrid_MS, rImprovedComps, VirtualTrees,
  Vcl.WinXCalendars,Dmodule1, RzSplit, Vcl.ToolWin, RzButton, RzDBNav,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  Vcl.Menus;

type
  TFCalendario = class(TForm)
    FDTrabajadores: TFDQuery;
    FDObras: TFDQuery;
    ds1: TDataSource;
    ds2: TDataSource;
    ds3: TDataSource;
    Button3: TButton;
    RzStatusBar1: TRzStatusBar;
    fdcalendario: TFDQuery;
    fdcalendarioid_cal: TFDAutoIncField;
    fdcalendarioid_trabajador: TIntegerField;
    fdcalendarioid_obra: TIntegerField;
    fdcalendariofecha_trabajo: TDateField;
    fdcalendariotrabajador: TStringField;
    fdcalendariocliente: TStringField;
    RzPanel3: TRzPanel;
    RzCalendar1: TRzCalendar;
    RzPanel2: TRzPanel;
    RzPanel4: TRzPanel;
    fdcalendarioid_lineaobra: TIntegerField;
    fdcalendariohoras: TIntegerField;
    rGroupBox3: TrGroupBox;
    Splitter2: TSplitter;
    rDBGrid_MS3: TrDBGrid_MS;
    RzToolbar2: TRzToolbar;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzToolButton4: TRzToolButton;
    RzDBNavigator1: TRzDBNavigator;
    Panel1: TPanel;
    rGroupBox1: TrGroupBox;
    StringGrid1: TStringGrid;
    RzToolButton5: TRzToolButton;
    fdcalendariodescripcion: TStringField;
    rGroupBox2: TrGroupBox;
    rDBGrid_MS1: TrDBGrid_MS;
    rGroupBox4: TrGroupBox;
    rDBGrid2: TrDBGrid;
    Splitter1: TSplitter;
    Splitter3: TSplitter;
    ActionManager1: TActionManager;
    guardar: TAction;
    revertir: TAction;
    FDTrabajadoresid_trabajador: TFDAutoIncField;
    FDTrabajadoresnombre: TStringField;
    FDTrabajadoresdias: TIntegerField;
    PopupMenu1: TPopupMenu;
    EditarObra1: TMenuItem;
    FinalizarPartidaObra1: TMenuItem;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolBar2: TToolBar;
    btn1: TToolButton;
    btn2: TToolButton;
    btn3: TToolButton;
    btn4: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure FDCalendarioAfterApplyUpdates(DataSet: TFDDataSet; AErrors: Integer);
    procedure RzCalendar1Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BorrarStringgrid;
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure fdcalendarioclienteGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure guardarExecute(Sender: TObject);
    procedure revertirExecute(Sender: TObject);
    procedure revertirUpdate(Sender: TObject);
    procedure guardarUpdate(Sender: TObject);
    procedure FDTrabajadoresCalcFields(DataSet: TDataSet);
    procedure EditarObra1Click(Sender: TObject);
    procedure FinalizarPartidaObra1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    fechacopia:TDate;
  public
    { Public declarations }

  end;

var
  FCalendario: TFCalendario;

implementation


uses FPrincipal,Elegircalendario,DmoduleReports;

{$R *.dfm}

procedure TFCalendario.BorrarStringgrid;
var I,J:Integer;
begin

for I := 1 to StringGrid1.RowCount - 1 do
    for J:=0 to StringGrid1.ColCount-1 do
                 StringGrid1.Cells[J,I]:='';
end;

procedure TFCalendario.btn1Click(Sender: TObject);
begin
Close;
end;

procedure TFCalendario.btn2Click(Sender: TObject);
begin
DataModule2.fdtrabajadores.Active:=True;
DataModule2.FDdetalleCalendario.ParamByName('FT').AsInteger:=MonthOf(RzCalendar1.Date);
DataModule2.FDdetalleCalendario.ParamByName('FTA').AsInteger:=YearOf(RzCalendar1.Date);
DataModule2.FDdetalleCalendario.Active:=True;
DataModule2.frxCalendario.ShowReport(true);
DataModule2.FDdetalleCalendario.Close;
DataModule2.fdtrabajadores.Close;

end;

procedure TFCalendario.Button4Click(Sender: TObject);
var i:Integer; dia, diasdelmes,PrimerdiaMes:Integer;  fechadia:TDate;  filtrodia:string;
begin


BorrarStringgrid;

StringGrid1.DefaultColWidth:=(StringGrid1.Width div 5);

StringGrid1.Canvas.Brush.Color:=clWhite;
StringGrid1.Canvas.Rectangle(StringGrid1.ClientRect);
StringGrid1.Cells[0,0]:='Lunes';
StringGrid1.Cells[1,0]:='Martes';
StringGrid1.Cells[2,0]:='Miercoles';
StringGrid1.Cells[3,0]:='Jueves';
StringGrid1.Cells[4,0]:='Viernes';
StringGrid1.Cells[5,0]:='Sabado';
StringGrid1.Cells[6,0]:='Domingo';
dia:=1;
diasdelmes:=DaysInMonth(rzCalendar1.date);

PrimerdiaMes:= DayOfTheWeek(strtodate('1/'+MonthOf(rzCalendar1.date).ToString+'/'+YearOf(RzCalendar1.date).ToString));

if  ((PrimerdiaMes > 5) and (diasdelmes=31)) or ((PrimerdiaMes > 6) and (diasdelmes=30)) then StringGrid1.RowCount:=7
else StringGrid1.RowCount:=6;

filtrodia:=fdcalendario.Filter;

for i:=1 to 6 do
begin
    fdcalendario.DisableControls;

    while (Primerdiames <= 7) and (Dia<=diasdelmes) do
    begin
    StringGrid1.RowHeights[i]:=StringGrid1.Height div StringGrid1.RowCount;
    StringGrid1.Cells[PrimerdiaMes-1,i]:=dia.ToString+#13;

    fechadia:=StrTodatetime(dia.ToString+'/'+MonthOf(RzCalendar1.date).ToString+'/'+YearOf(RzCalendar1.date).ToString);

    FDCalendario.Filtered:=False;
    FDCalendario.filter:='fecha_trabajo={d '+FormatDateTime('yyyy-mm-dd',fechadia)+'}';
    FDCalendario.Filtered:=True;

    fdcalendario.First;
    while not fdcalendario.eof do
    begin
         StringGrid1.Cells[PrimerdiaMes-1,i]:=StringGrid1.Cells[PrimerdiaMes-1,i]+copy(fdcalendario.FieldByName('trabajador').asstring,0,Pos(#32,fdcalendario.FieldByName('trabajador').asstring))+' - '+fdcalendario.FieldByName('cliente').asstring+#13#10;
         fdcalendario.Next;
    end;




    Inc(PrimerdiaMes);
    Inc(dia);
    end;
    PrimerdiaMes:=1;
    FDCalendario.Filtered:=False;
    FDCalendario.filter:=filtrodia;
    FDCalendario.Filtered:=True;
    fdcalendario.EnableControls;

end;

end;

procedure TFCalendario.Button5Click(Sender: TObject);
var trabajador,obra,lineaobra:Integer; EleCal:TFElegirCalendario;
begin
fdcalendario.DisableControls;

 fechacopia:=DataModule1.DevolverFechaElegida;

fdcalendario.First;
while not fdcalendario.eof do
begin
 trabajador:=FDCalendarioid_trabajador.AsInteger;
 obra:=FDCalendarioid_obra.asinteger;
 lineaobra:=fdcalendarioid_lineaobra.AsInteger;

 fdcalendario.Insert;
 FDCalendarioid_trabajador.AsInteger:=trabajador;
 FDCalendariofecha_trabajo.AsDateTime:=fechacopia;
 FDCalendarioid_obra.asinteger:=obra;
 fdcalendarioid_lineaobra.AsInteger:=lineaobra;
 fdcalendariohoras.AsInteger:=8;
 fdcalendario.Post;
 fdcalendario.Next;
end;


fdcalendario.EnableControls ;

end;

procedure TFCalendario.EditarObra1Click(Sender: TObject);
begin
DataModule1.editarobraExecute(FDObras);
end;

procedure TFCalendario.FDCalendarioAfterApplyUpdates(DataSet: TFDDataSet; AErrors: Integer);
begin
if AErrors=0 then
begin
FDcalendario.CommitUpdates;
FDCalendario.Refresh;
Button4Click(Self);
end;
end;

procedure TFCalendario.fdcalendarioclienteGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
Text:=Sender.AsString+' - '+Sender.DataSet.FieldByName('descripcion').AsString;
end;

procedure TFCalendario.FDTrabajadoresCalcFields(DataSet: TDataSet);
var fdq:TFDQuery;
begin
   fdq:=TFDQuery.Create(Self);
   fdq.Connection:=DataModule1.FDConnection1;
   fdq.SQL.Clear;
   fdq.SQL.Add('SELECT  COUNT(distinct fecha_trabajo) FROM calendario WHERE id_trabajador=:trabajador and Month(fecha_trabajo)=:f1');
   fdq.ParamByName('trabajador').AsInteger:=DataSet.FieldByName('id_trabajador').AsInteger;
   fdq.ParamByName('f1').Asinteger:=MonthOf(RzCalendar1.Date);
   fdq.Active:=True;
   FDTrabajadoresdias.AsInteger:=fdq.Fields[0].AsInteger;
   fdq.close;
   fdq.Free;





end;

procedure TFCalendario.FinalizarPartidaObra1Click(Sender: TObject);
var fdq:TFDQuery;
begin

   //CERRAMOS LA LINEA DE OBRA
   fdq:=TFDQuery.Create(Self);
   fdq.Connection:=DataModule1.FDConnection1;
   fdq.SQL.Clear;
   fdq.SQL.Add('UPDATE lineasobras SET ejecutado=1, fechafin=:ffin WHERE obras_id_obra=:ob and id_lineaobra=:lin');
   fdq.ParamByName('ob').AsInteger:=FDObras.FieldByName('id_obra').AsInteger;
   fdq.ParamByName('lin').Asinteger:=FDObras.FieldByName('id_lineaobra').AsInteger;
   MessageDlg('Elija la fecha del final de la obra. ',  mtInformation, [mbOK],  0);
   fdq.ParamByName('ffin').AsDate:=DataModule1.DevolverFechaElegida;

   fdq.Prepare;
   fdq.ExecSQL;

   case fdq.Command.CommandKind of
    skUpdate: showmessage(Format(' Se ha finalizado %d linea de la obra correctamente', [fdq.RowsAffected]));
    else      showmessage('Error. No se ha finalizado la linea de la.');
    end;

   fdq.close;

  // CERRAMOS LA LINEA DE PRESUPUESTO

  fdq.SQL.Clear;
  fdq.SQL.Add('UPDATE lineaspresupuesto SET Ejecutado=1 WHERE presupuestos_id_presupuesto=:pres and presupuestos_grupo=:gr and id_partida=:id');

  fdq.ParamByName('pres').Value:= FDobras.FieldByName('presupuestos_ID_presupuesto').AsInteger;
  fdq.ParamByName('gr').Value:=FDobras.FieldByName('presupuestos_grupo').AsInteger;
  fdq.ParamByName('id').Value:=FDobras.FieldByName('presupuestos_id_Partida').AsInteger;

  fdq.Prepare;
  fdq.ExecSQL;

   case fdq.Command.CommandKind of
    skUpdate: showmessage(Format(' Se ha finalizado %d linea de presupuesto correctamente', [fdq.RowsAffected]));
    else      showmessage('Error. No se ha finalizado la linea del presupuesto.');
    end;



  fdq.Close;

   fdq.Free;
   FDObras.Refresh;
end;

procedure TFCalendario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FDTrabajadores.Active:=False;
FDObras.Active:=False;
FDCalendario.Active:=False;

if not DataModule1.PaginaEnPageControl(principal.PageControl2,'Lista Trabajadores')   then

DataModule1.fdtrabajadores.Active:=False;
 Action:=caFree;

end;

procedure TFCalendario.FormCreate(Sender: TObject);
begin
FCalendario:=Self;

end;

procedure TFCalendario.FormShow(Sender: TObject);
begin

FDTrabajadores.Active:=True;
FDObras.Active:=True;

FDCalendario.Active:=True;
DataModule1.fdtrabajadores.Active:=True;
Button4Click(Self);
end;

procedure TFCalendario.guardarExecute(Sender: TObject);
begin
   FDCalendario.ApplyUpdates(1);
end;

procedure TFCalendario.guardarUpdate(Sender: TObject);
begin
(Sender as TAction).Enabled:=fdcalendario.UpdatesPending;
end;

procedure TFCalendario.revertirExecute(Sender: TObject);
begin
  FDcalendario.RevertRecord;
end;

procedure TFCalendario.revertirUpdate(Sender: TObject);
begin
(Sender as TAction).Enabled:=fdcalendario.ChangeCount > 0;
end;

procedure TFCalendario.RzCalendar1Change(Sender: TObject);
begin

rGroupBox3.Caption:= FormatDateTime('d mmmm - dddd ',RzCalendar1.Date);
rGroupBox1.Caption:= FormatDateTime('mmmm  yyyy ',RzCalendar1.Date);
FDCalendario.Filtered:=False;
FDCalendario.filter:='fecha_trabajo={d '+FormatDateTime('yyyy-mm-dd', RzCalendar1.Date)+'}';
FDCalendario.Filtered:=True;


end;

procedure TFCalendario.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
 var textcell:string; detalle:TThemedElementDetails;   part1,part2:string;
  begin
     textcell:=StringGrid1.Cells[ACol,Arow];
       if ARow=0 then
       begin
       Rect.Top:=Rect.Top+5;
       StringGrid1.Canvas.Font.Color:=clBlack;
       StringGrid1.Canvas.Font.Style:=[fsBold];
       DrawText(stringgrid1.Canvas.Handle, PChar(TextCell), Length(textCell), Rect, DT_CENTER+DT_VCENTER);

       end else begin

      part1:=Copy(textcell,0,pos(#13,textcell));
      part2:=Copy(textcell,Pos(#13,textcell),Length(textcell));


      StringGrid1.Canvas.Brush.Color:=clWhite;
      StringGrid1.Canvas.Font.Color:=clblue;
      DrawText(stringgrid1.Canvas.Handle, PChar(part1), Length(textCell), Rect, DT_TOP);
      StringGrid1.Canvas.Font.Color:=clred;
     // StringGrid1.Canvas.Brush.Color:=clSilver;
      DrawText(stringgrid1.Canvas.Handle, PChar(part2), Length(textCell), Rect, DT_VCENTER);

            end;

  end;

procedure TFCalendario.ToolButton1Click(Sender: TObject);
var I:Integer;
begin

for I :=0 to rDBGrid_MS1.rBookmarks.Count-1 do
begin
 FDTrabajadores.GotoBookmark(rDBGrid_MS1.rBookmarks.Items[i]);
 FDCalendario.Insert;
 FDCalendarioid_trabajador.AsInteger:=FDTrabajadores.FieldByName('id_trabajador').asinteger;
 FDCalendariofecha_trabajo.AsDateTime:=RzCalendar1.Date;
 FDCalendarioid_obra.asinteger:=FDObras.FieldByName('id_obra').AsInteger;
 fdcalendarioid_lineaobra.AsInteger:=FDObras.FieldByName('id_lineaobra').AsInteger;
 fdcalendariohoras.AsInteger:=8;

FDCalendario.Post;
end;
end;

end.

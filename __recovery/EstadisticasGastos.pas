unit EstadisticasGastos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, rImprovedComps,
  Vcl.ToolWin, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls, RzPanel, RzSplit, dateUtils,
  Vcl.WinXCtrls, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.Mask, Vcl.DBCtrls,
  rDBComponents, RzTabs, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.StorageXML,Printers,
  rStringGridEd, RzGrids, RzEdit, RzButton, rDBGrid, rDBGrid_MS,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.DBChart, VCLTee.TeCanvas, VCLTee.TeePenDlg, VCLTee.TeeData,
  VCLTee.Series, RzLabel,System.VarUtils;
 // frxClass;

type



tivas=record
      iva:integer;
      total:Real;
      contador:Integer;
    end;

    Tivasrec= array of tivas;

tNumfac=record
      iva:integer;
      total:integer;
    end;

    TNumfacrec= array of tNumfac;

  TFEstadisticasGastosVentas = class(TForm)
    tlb1: TToolBar;
    rCheckTreeView1: TrCheckTreeView;
    fdq1: TFDQuery;
    rComboBoxEx1: TrComboBoxEx;
    lbl1: TLabel;
    rzspltr1: TRzSplitter;
    rComboBoxEx2: TrComboBoxEx;
    btnExpandirArbol: TToolButton;
    btnContraer: TToolButton;
    actmgr1: TActionManager;
    actExpandirArbol: TAction;
    actContraer: TAction;
    btn1: TToolButton;
    ActInd1: TActivityIndicator;
    TabSheet3: TRzTabSheet;
    RzStringGrid1: TRzStringGrid;
    RzGroupBox2: TRzGroupBox;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    RzButton1: TRzButton;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    Button1: TButton;
    TabSheet1: TRzTabSheet;
    RzStringGrid2: TRzStringGrid;
    LabeledEdit8: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    Button2: TButton;
    rzPageControl1: TRzPageControl;
    TabSheet2: TRzTabSheet;
    ToolButton1: TToolButton;
    PrintDialog1: TPrintDialog;
    FDcuentas: TFDQuery;
    fddiario: TFDQuery;
    dscuentas: TDataSource;
    dsdiario: TDataSource;
    rGroupBox1: TrGroupBox;
    Panel1: TPanel;
    LabeledEdit11: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    Button3: TButton;
    rdbcuentas: TrDBGrid_MS;
    rGroupBox2: TrGroupBox;
    rdbdiario: TrDBGrid_MS;
    fdGastosPorCategoria: TFDQuery;
    ds: TDataSource;
    fdfacturacionmensual: TFDQuery;
    TabSheet4: TRzTabSheet;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    fdfacturaciontrimestral: TFDQuery;
    DBChart2: TDBChart;
    BarSeries1: TBarSeries;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    TabSheet5: TRzTabSheet;
    LabeledEdit12: TLabeledEdit;
    LabeledEdit13: TLabeledEdit;
    rdbIRPFTrab: TrDBGrid_MS;
    fdIRPFTrab: TFDQuery;
    dsIRPFTrab: TDataSource;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure rComboBoxEx1Change(Sender: TObject);
    procedure rComboBoxEx2Change(Sender: TObject);
    procedure actExpandirArbolExecute(Sender: TObject);
    procedure actContraerExecute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure actExpandirArbolUpdate(Sender: TObject);
    procedure actContraerUpdate(Sender: TObject);
    procedure rCheckTreeView1DblClick(Sender: TObject);
    procedure rCheckTreeView1Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure RzStringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure LabeledEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure RzButton1Click(Sender: TObject);
    procedure RzStringGrid2DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure TabSheet1Show(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FDcuentasAfterScroll(DataSet: TDataSet);
    procedure fddiarioAfterOpen(DataSet: TDataSet);
    procedure fddiarioAfterPost(DataSet: TDataSet);
    procedure fddiarioAfterRefresh(DataSet: TDataSet);
    procedure fdIRPFTrabAfterOpen(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
    mes1,mes2:TDate;
    procedure llenarArbolTrimestre(arbol:TTreenodes; enganchado:TTreeNode; trimestre:integer);
    procedure llenarArbolAnual(arbol:TTreenodes);
    procedure llenarArbol(tipo:integer);
    procedure llenarIVATrimestre(trimestre:integer);
    function CalcularIVAFacturasVentas:Tivasrec;
    function CalcularIVAFacturasCompras:Tivasrec;
    function CalcularIRPFFacturasVentas:Tivasrec;
    //function CalcularIRPFFacturasCompras:Tivasrec;
    function CalcularIRPFFacturasComprasTotal:Real;
    function CalcularIRPFFacturasVentasTotal:Real;
    procedure CalcularIRPFyNTicketCompras(var N:Integer; var total:real);
    procedure CalcularNominasyN(var N:Integer; var total:real);
    procedure CalcularSegurosSocialesyN(var N:integer;var total:real);
    procedure CalcularSegurosyN(var N:Integer; var total:real);
    function calcularIVAGastosNFactura:TNumfacrec;
    function calcularIVAVentasNFactura:TNumfacrec;
    function calcularGastosNFacturaTotal:integer;
    function calcularVentasNFacturaTotal:integer;
  //  procedure BorrarStringgrid(stgr:TStringGrid);
    procedure CalcularBancosyN(var N:Integer; var total:real);
    procedure CalcularInteresesyN(var N:Integer; var total:real);
     procedure CalcularIRPFFacturasCompras(var N:Integer;var total:real);
   // function CalcularVentasNfacturas:Tivasrec;


  end;




const meses: array [1..12] of string =('ENERO','FEBRERO','MARZO','ABRIL','MAYO','JUNIO','JULIO','AGOSTO','SEPTIEMBRE','OCTUBRE','NOVIEMBRE','DICIEMBRE');

var
  FEstadisticasGastosVentas: TFEstadisticasGastosVentas;


implementation

uses
  DModule1, listasegurossociales, listaseguros, listanominas, listafacturascompras;

var ano,m1,m2, peridodo:integer ;

{$R *.dfm}
{
procedure TFEstadisticasGastosVentas.BorrarStringgrid(stgr:TStringGrid);

begin
    stgr.Canvas.Brush.Style:=bsclear;
stgr.Canvas.Brush.Color:=clWhite;
stgr.Canvas.Rectangle(RzStringGrid2.ClientRect);
    stgr.Repaint;
end;
 }

procedure TFEstadisticasGastosVentas.llenarIVATrimestre(trimestre:integer);
var Ti:Tivasrec; Tn:TNumfacrec;  total,TCompras,TVentas,TIRPFCOmpras,TIRPFVentas:Real; num:integer;
begin



  LabeledEdit1.text:=rComboBoxEx1.Text ;
  LabeledEdit8.Text:=LabeledEdit1.Text;
  LabeledEdit2.Text:=rComboBoxEx2.Text ;
  LabeledEdit9.Text:=LabeledEdit2.Text;
  LabeledEdit11.Text:=rComboBoxEx2.Text ;
  LabeledEdit10.Text:=LabeledEdit1.Text;
  LabeledEdit13.Text:=rComboBoxEx2.Text ;
  LabeledEdit12.Text:=LabeledEdit1.Text;



  DataModule1.ObtenerMesesTrimestre(trimestre,m1,m2);

     DataModule1.BorrarStringgrid(RzStringGrid1);

      Tn:= calcularIVAGastosNFactura;

      RzStringGrid1.Cells[2,4]:=Tn[0].total.ToString;
      RzStringGrid1.Cells[2,5]:=Tn[1].total.ToString;
      RzStringGrid1.Cells[2,6]:=IntToStr( Tn[0].total + Tn[1].total);
      RzStringGrid2.Cells[2,4]:=RzStringGrid1.Cells[2,4];


      Tn:= calcularIVAVentasNFactura;
      RzStringGrid1.Cells[2,1]:=Tn[0].total.ToString;
      RzStringGrid1.Cells[2,2]:=Tn[1].total.ToString;
      RzStringGrid1.Cells[2,3]:=IntToStr( Tn[0].total + Tn[1].total);
      RzStringGrid2.Cells[2,1]:=RzStringGrid1.Cells[2,1];
      RzStringGrid2.Cells[2,2]:=RzStringGrid1.Cells[2,2];
      RzStringGrid2.Cells[2,3]:=RzStringGrid1.Cells[2,3];



      Ti:=CalcularIVAFacturasCompras;
      RzStringGrid1.Cells[5,4]:=FloatToStrF(Ti[0].total,ffCurrency,8,2);
      RzStringGrid1.Cells[5,5]:=FloatToStrF(Ti[1].total,ffCurrency,8,2);
      RzStringGrid1.Cells[5,6]:=FloatToStrF(Ti[0].total + Ti[1].total,ffCurrency,8,2);


      TCompras:=Ti[0].total + Ti[1].total;

      LabeledEdit3.Text:=FloatToStrF(Ti[0].total,ffFixed,8,2);
      LabeledEdit4.Text:=FloatToStrF(Ti[1].total,ffFixed,8,2);

      Ti:=CalcularIRPFFacturasVentas;
      RzStringGrid1.Cells[3,1]:=FloatToStrF(Ti[0].total,ffCurrency,8,2);
      RzStringGrid1.Cells[3,2]:=FloatToStrF(Ti[1].total,ffCurrency,8,2);
      RzStringGrid1.Cells[3,3]:=FloatToStrF(Ti[0].total + Ti[1].total,ffCurrency,8,2);
      RzStringGrid2.Cells[3,1]:=RzStringGrid1.Cells[3,1];
      RzStringGrid2.Cells[3,2]:=RzStringGrid1.Cells[3,2];
      RzStringGrid2.Cells[3,3]:=RzStringGrid1.Cells[3,3];
      RzStringGrid2.Cells[5,3]:=RzStringGrid1.Cells[3,3];

      TIRPFVentas:=Ti[0].total + Ti[1].total;

      Ti:=CalcularIVAFacturasVentas;
      RzStringGrid1.Cells[5,1]:=FloatToStrF(Ti[0].total,ffCurrency,8,2);
      RzStringGrid1.Cells[5,2]:=FloatToStrF(Ti[1].total,ffCurrency,8,2);
      RzStringGrid1.Cells[5,3]:=FloatToStrF(Ti[0].total + Ti[1].total,ffCurrency,8,2);

       TVentas:=Ti[0].total + Ti[1].total;


      LabeledEdit5.Text:=FloatToStrF(Ti[0].total,ffFixed,8,2);
      LabeledEdit6.Text:=FloatToStrF(Ti[1].total,ffFixed,8,2);

      CalcularIRPFFacturasCompras(num,Total);
      //RzStringGrid1.Cells[3,4]:=FloatToStrF(Ti[0].total,ffCurrency,8,2);
      RzStringGrid1.Cells[3,5]:=FloatToStrF(Total,ffCurrency,8,2);
      RzStringGrid1.Cells[3,6]:=FloatToStrF(Total,ffCurrency,8,2);
      RzStringGrid2.Cells[3,4]:=RzStringGrid1.Cells[3,4];
      RzStringGrid2.Cells[3,5]:=RzStringGrid1.Cells[3,5];
      RzStringGrid2.Cells[3,6]:=RzStringGrid1.Cells[3,6];
      RzStringGrid2.Cells[5,6]:=RzStringGrid1.Cells[3,6];

      RzStringGrid2.Cells[2,5]:=num.ToString;
      RzStringGrid2.Cells[2,6]:=num.ToString;


      RzStringGrid1.Cells[5,8]:=FloatToStrF(TVentas-TCompras,ffCurrency,8,2);

      LabeledEdit7.Text:=FloatToStrF(TVentas-TCompras,ffFixed,8,2);

     TIRPFCompras:=TIRPFCompras+total;

      CalcularIRPFyNTicketCompras(Num,Total);
      RzStringGrid2.Cells[2,7]:= intToStr(Num);
      RzStringGrid2.Cells[3,7]:= FloatToStrF(Total,ffCurrency,8,2);

      TIRPFCompras:=TIRPFCompras+total;

      CalcularNominasyN(Num,Total);
      RzStringGrid2.Cells[2,8]:= intToStr(Num);
      RzStringGrid2.Cells[3,8]:= FloatToStrF(Total,ffCurrency,8,2);

      TIRPFCompras:=TIRPFCompras+total;


      CalcularSegurosSocialesyN(Num,Total);
      RzStringGrid2.Cells[2,9]:= intToStr(Num);
      RzStringGrid2.Cells[3,9]:= FloatToStrF(Total,ffCurrency,8,2);

      TIRPFCompras:=TIRPFCOmpras+total;

      CalcularSegurosyN(Num,Total);
      RzStringGrid2.Cells[2,10]:= intToStr(Num);
      RzStringGrid2.Cells[3,10]:= FloatToStrF(Total,ffCurrency,8,2);

       TIRPFCompras:=TIRPFCompras+total;

      CalcularInteresesyN(Num,Total);
      RzStringGrid2.Cells[2,11]:= intToStr(Num);
      RzStringGrid2.Cells[3,11]:= FloatToStrF(Total,ffCurrency,8,2);

       TIRPFCompras:=TIRPFCompras+total;

      CalcularBancosyN(Num,Total);
      RzStringGrid2.Cells[2,12]:= intToStr(Num);
      RzStringGrid2.Cells[3,12]:= FloatToStrF(Total,ffCurrency,8,2);

       TIRPFCompras:=TIRPFCompras+total;


      RzStringGrid2.Cells[5,14]:= FloatToStrF(TIRPFCompras,ffCurrency,8,2);

      RzStringGrid2.Cells[5,15]:= FloatToStrF(TIRPFVentas - TIRPFCompras,ffCurrency,8,2);
      RzStringGrid2.Cells[5,16]:= FloatToStrF((TIRPFVentas - TIRPFCompras)*IRPFDEFECTO,ffCurrency,8,2);


end;



procedure TFEstadisticasGastosVentas.llenarArbolAnual(arbol:TTreenodes);
var padre:TTreeNode;
begin
  padre:=arbol.AddChildFirst(nil,'S.P ----- '+rComboBoxEx2.Text);

  //hijo:=arbol.AddChild(padre,'1º TRIMESTRE');
  DataModule1.ObtenerMesesTrimestre(4, m1,m2);
  llenarArboltrimestre(arbol,padre,4);

  DataModule1.ObtenerMesesTrimestre(3, m1,m2);
  llenarArboltrimestre(arbol,padre,3);

  DataModule1.ObtenerMesesTrimestre(2, m1,m2);
  llenarArboltrimestre(arbol,padre,2);

  DataModule1.ObtenerMesesTrimestre(1, m1,m2);
  llenarArboltrimestre(arbol,padre,1);


end;

procedure TFEstadisticasGastosVentas.llenarArbol(tipo:integer);
begin
   rCheckTreeView1.Items.Clear;

     if tipo=0 then  llenarArbolTrimestre(rCheckTreeView1.Items,nil,rComboBoxEx1.ItemIndex+1)           // SI TIPO = 0 -> MUESTRA TRIMESTRE
      else llenarArbolAnual(rCheckTreeView1.Items);

end;

procedure TFEstadisticasGastosVentas.llenarArbolTrimestre(arbol:TTreenodes; enganchado:TTreeNode; trimestre:integer);
var padre,hijo,tio:TTreeNode; Tiv:Tivasrec;  i:integer; str:string;   total,totales:real; num:Integer;
begin



 //----------------COMPRAS--------------------------
  padre:=arbol.AddChildFirst(enganchado,'S.P--- '+trimestre.ToString+'º TRIMESTRE -- '+rComboBoxEx2.Text);
  hijo:=arbol.AddChild(padre,'Gastos');
  tio:=arbol.AddChild(hijo,'I.V.A');
  Tiv:=CalcularIVAFacturasCompras;

  totales:=0;
    for i := 0 to Length(Tiv)-1 do  begin
         str:=Format(Tiv[i].iva.ToString+'%% ......%f €',[Tiv[i].total]);
         totales:=totales+Tiv[i].total;
         arbol.AddChild(tio,str);

    end;

    tio.Text:=tio.Text+'......'+FloatToStr(totales);


  hijo:=arbol.AddChild(hijo,'I.R.P.F');
  tio:=arbol.AddChild(hijo,'Facturas Compras');
 // Tiv:=CalcularIRPFFacturasCompras;

    totales:=0;
    for i := 0 to Length(Tiv)-1 do  begin
         str:=Format(Tiv[i].iva.ToString+'%% ......%f €',[Tiv[i].total]);
         totales:=totales+Tiv[i].total;
         arbol.AddChild(tio,str);

    end;

    tio.Text:=tio.Text+'......'+FloatToStr(totales);

    CalcularIRPFyNTicketCompras(num,total);

       arbol.AddChild(hijo,Format('Tickets......%f €', [total]));

    CalcularNominasyN(num,total);

       arbol.AddChild(hijo,'Nóminas'+'......'+FloatToStr(total));

         CalcularSegurosSocialesyN(Num,Total);

       arbol.AddChild(hijo,'Seguros Sociales'+'......'+FloatToStr(total));

       CalcularSegurosyN(num,total);

       arbol.AddChild(hijo,'Seguros'+'......'+FloatToStr(total));

  //-------------VENTAS--------------------

  hijo:=arbol.AddChild(padre,'Ventas');
  tio:=arbol.AddChild(hijo,'I.V.A');
  Tiv:=CalcularIVAFacturasVentas;
  totales:=0;
    for i := 0 to Length(Tiv)-1 do  begin
         str:=IntToStr(Tiv[i].iva)+'% ......'+floatToStr(Tiv[i].total);
         totales:=totales+Tiv[i].total;
         rCheckTreeView1.Items.AddChild(tio,str);

    end;

    tio.Text:=tio.Text+'......'+FloatToStr(totales);

  hijo:=arbol.AddChild(hijo,'I.R.P.F');
         tio:= arbol.AddChildFirst(hijo,'Facturas Ventas');
        Tiv:=CalcularIRPFFacturasVentas;
        totales:=0;
         for i := 0 to Length(Tiv)-1 do  begin
         str:=IntToStr(Tiv[i].iva)+'% ......'+floatToStr(Tiv[i].total);
         totales:=totales+Tiv[i].total;
         arbol.AddChild(tio,str);

    end;
     tio.Text:=tio.Text+'......'+FloatToStr(totales);


end;

procedure TFEstadisticasGastosVentas.rCheckTreeView1Click(Sender: TObject);
begin
if (peridodo=1) and (TrCheckTreeView(Sender).Selected.Level=1) then
       case TrCheckTreeView(Sender).Selected.Index of
            0:  begin
                  rComboBoxEx1.ItemIndex:=0;
                  llenarIVATrimestre(1);
                end;
            1:  begin
                  rComboBoxEx1.ItemIndex:=1;
                  llenarIVATrimestre(2);
                end;
            2:  begin
                  rComboBoxEx1.ItemIndex:=2;
                  llenarIVATrimestre(3);
                end;
            3:  begin
                  rComboBoxEx1.ItemIndex:=3;
                  llenarIVATrimestre(4);
                end;
       end

end;

procedure TFEstadisticasGastosVentas.rCheckTreeView1DblClick(Sender: TObject);

begin
   DataModule1.ObtenerMesesTrimestre(TrComboBoxEx(Sender).ItemIndex+1, m1,m2);

   mes1:=StrtoDate('1/'+m1.ToString+'/'+ano.ToString);
 // mes2:=StrToDate(IntToStr(DaysInMonth(StrToDate('1/'+m2.ToString+'/'+ano.ToString)))+'/'+m2.ToString+'/'+ano.Tostring);

 if (Sender is TrCheckTreeView) then
 begin

 if Pos('Facturas Compras',TrCheckTreeView(Sender).Selected.Text) > 0 then
 begin

    DataModule1.actFacturascomprasExecute(Self);

 end;



 if Pos('Facturas Ventas',TrCheckTreeView(Sender).Selected.Text) > 0 then
 begin

    DataModule1.listafacturasExecute(Self);

 end;

 if Pos('Nóminas',TrCheckTreeView(Sender).Selected.Text) > 0 then
 begin

    DataModule1.actNominasExecute(Self);
 end;

 if Pos('Seguros Sociales',TrCheckTreeView(Sender).Selected.Text) > 0 then
 begin

    DataModule1.actlistsegurossocialesExecute(Self)  ;
 end;


 if Pos('Seguros.',TrCheckTreeView(Sender).Selected.Text) > 0 then
 begin
   DataModule1.actPagosSegurosExecute(Self);

 end;

 end;
end;

procedure TFEstadisticasGastosVentas.rComboBoxEx1Change(Sender: TObject);

begin
DataModule1.ObtenerMesesTrimestre(TrComboBoxEx(Sender).ItemIndex+1, m1,m2);
  actInd1.Animate:=True;
  if peridodo = 0 then llenarArbol(0)
  else llenarArbol(1);
  llenarIVATrimestre(TrComboBoxEx(Sender).ItemIndex+1);
  actInd1.Animate:=False;

  case rzPageControl1.ActivePageIndex of
    2:begin
               fddiario.Close;
               fddiario.ParamByName('f1').Asinteger:= m1;
               fddiario.ParamByName('f2').asinteger:= m2;
               fddiario.ParamByName('ano').asinteger:= ano;

               fddiario.Active:=True;
              FDcuentas.Active:=True;
      end;


    3:begin
               fdfacturacionmensual.Close;
               fdfacturacionmensual.ParamByName('ano').asinteger:= ano;
               fdfacturacionmensual.Active:=True;
               fdfacturaciontrimestral.Close;
               fdfacturaciontrimestral.ParamByName('ano').asinteger:= ano;
               fdfacturaciontrimestral.Active:=True;
               RzLabel1.Caption:='Total: '+CurrToStrF(fdfacturacionmensual.Aggregates.AggregateByName('SUMAGRE').Value,ffCurrency,2);
               RzLabel2.Caption:='Media: '+CurrToStrF(fdfacturacionmensual.Aggregates.AggregateByName('SUMAVG').Value,ffCurrency,2);
               RzLabel3.Caption:='Total: '+CurrToStrF(fdfacturaciontrimestral.Aggregates.AggregateByName('SUMAGRE').Value,ffCurrency,2);
               RzLabel4.Caption:='Media: '+CurrToStrF(fdfacturaciontrimestral.Aggregates.AggregateByName('SUMAVG').Value,ffCurrency,2);


      end;

     4:   begin
               fdIRPFTrab.Close;
               fdIRPFTrab.ParamByName('f1').Asinteger:= m1;
               fdIRPFTrab.ParamByName('f2').asinteger:= m2;
               fdIRPFTrab.ParamByName('ano').asinteger:= ano;
               fdIRPFTrab.Active:=True;
          end;


  end;


end;



procedure TFEstadisticasGastosVentas.btn1Click(Sender: TObject);
begin
    peridodo:=1;
    rComboBoxEx2Change(rComboBoxEx2);
end;




procedure TFEstadisticasGastosVentas.Button1Click(Sender: TObject);
begin

llenarIVATrimestre(rComboBoxEx1.ItemIndex+1);
DataModule1.BorrarStringgrid(RzStringGrid1);

end;

procedure TFEstadisticasGastosVentas.Button2Click(Sender: TObject);
begin
llenarIVATrimestre(rComboBoxEx1.ItemIndex+1);
DataModule1.BorrarStringgrid(RzStringGrid2);
end;

procedure TFEstadisticasGastosVentas.rComboBoxEx2Change(Sender: TObject);
begin
    ano:=StrToInt(TrComboBoxEx(Sender).text);

   actInd1.Animate:=True;
 if peridodo=0 then llenarArbol(0)
 else llenarArbol(1);
  llenarIVATrimestre(rComboBoxEx1.ItemIndex+1);
 actInd1.Animate:=False;
end;

  procedure TFEstadisticasGastosVentas.RzButton1Click(Sender: TObject);
 var  TVentas,TCompras:Double;
begin
TCompras:=StrToFloat(LabeledEdit3.Text)+StrToFloat(LabeledEdit4.Text);
TVentas:=StrToFloat(LabeledEdit5.Text)+StrToFloat(LabeledEdit6.Text);

LabeledEdit7.Text:= FloatToStrF(TVentas-TCompras,ffFixed,8,2);

end;

procedure TFEstadisticasGastosVentas.RzPageControl1Change(Sender: TObject);
begin
DataModule1.BorrarStringgrid(RzStringGrid1);
DataModule1.BorrarStringgrid(RzStringGrid2);
rComboBoxEx1Change(sender);

end;

procedure TFEstadisticasGastosVentas.RzStringGrid1DrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var Celltext:string;
begin



     Rect := RzStringGrid1.CellRect(ACol, ARow);
     celltext:=rzStringGrid1.Cells[ACol,Arow];

     if (ARow=0) or (ARow=3) or (ARow=6) or (ARow=8) then
        begin
       rzStringGrid1.Canvas.Pen.Width:=3;
       rzStringGrid1.Canvas.Pen.Color:=clLtGray ;
       rzStringGrid1.Canvas.MoveTo(Rect.Left,Rect.Top) ;
       RzStringGrid1.Canvas.LineTo(Rect.Right,Rect.top);
       rzStringGrid1.Canvas.MoveTo(Rect.Left,Rect.bottom) ;
       RzStringGrid1.Canvas.LineTo(Rect.Right,Rect.Bottom);

         end;

     if (ACol=1) or (ACol=5) then
        begin
       rzStringGrid1.Canvas.Pen.Width:=3;
       rzStringGrid1.Canvas.Pen.Color:=clLtGray ;
       rzStringGrid1.Canvas.MoveTo(Rect.Right,Rect.Top) ;
       RzStringGrid1.Canvas.LineTo(Rect.Right,Rect.Bottom);
        end;



     if (ACol<2) then
     begin
       case Arow of
         1,4 : begin

       Rect.top := Rect.top + (Rect.Height div 2)+10 ;
       Rect.Bottom := Rect.Bottom + (Rect.Height*2);
                end;
       0,3,5,6,7,8 : begin
       rzStringGrid1.Canvas.Pen.Width:=3;
       rzStringGrid1.Canvas.Pen.Color:=clLtGray ;
       rzStringGrid1.Canvas.MoveTo(Rect.Left,Rect.Bottom) ;
       RzStringGrid1.Canvas.LineTo(Rect.Right,Rect.Bottom);
           Rect.Bottom := Rect.Bottom;
           Rect.top := Rect.Top+(Rect.Height div 3)-3;
              end;
        end;
     end;

       if (ACol>1) then

       case Arow of
        0,1,2,3,4,5,6,7,8 : begin
           rzStringGrid1.Canvas.Pen.Width:=1;
           rzStringGrid1.Canvas.Pen.Color:=clLtGray ;
           rzStringGrid1.Canvas.MoveTo(Rect.Left,Rect.Bottom) ;
           RzStringGrid1.Canvas.LineTo(Rect.Right,Rect.Bottom);
           Rect.Bottom := Rect.Bottom;
           Rect.top := Rect.Top+(Rect.Height div 3)-3;
           rzStringGrid1.Canvas.Brush.Color := clWindow;
         end;
       end;
     

       if (ACol>1) and (ACol<8) and (ARow>0) then
        begin
       rzStringGrid1.Canvas.Font.Style:=[];
       rzStringGrid1.Canvas.Font.Name:='Arial' ;
       rzStringGrid1.Canvas.Font.Size:=8 ;
      DrawText(rzStringGrid1.Canvas.Handle, PChar(CellText), Length(CellText), Rect, DT_WORDBREAK or DT_CENTER or DT_VCENTER or DT_END_ELLIPSIS)
        end;

       if ((ACol < 2 ) or (ARow=0)) and (not( (Arow=3) or (ARow=6) or ( ARow=8) ))then
        begin
       rzStringGrid1.Canvas.Font.Style:=[fsBold];
       rzStringGrid1.Canvas.Font.Name:='Arial' ;
       rzStringGrid1.Canvas.Font.Size:=10 ;
      DrawText(rzStringGrid1.Canvas.Handle, PChar(CellText), Length(CellText), Rect, DT_WORDBREAK or DT_CENTER or DT_VCENTER or DT_END_ELLIPSIS)
        end;

        if (State = [gdFixed]) and (Celltext='Total:') or (Celltext='Diferencia:') then
        begin
       rzStringGrid1.Canvas.Font.Style:=[fsBold];
       rzStringGrid1.Canvas.Font.Name:='Arial' ;
       rzStringGrid1.Canvas.Font.Size:=10 ;
      DrawText(rzStringGrid1.Canvas.Handle, PChar(CellText), Length(CellText), Rect, DT_WORDBREAK or DT_RIGHT or DT_VCENTER or DT_END_ELLIPSIS)
        end;

       
end;

procedure TFEstadisticasGastosVentas.RzStringGrid2DrawCell(Sender: TObject;
  ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
  var celltext:string;
begin



  Rect := RzStringGrid2.CellRect(ACol, ARow);
     celltext:=rzStringGrid2.Cells[ACol,Arow];

     if (ARow=0) or (ARow=3) or (ARow=6) or (ARow=8) or (ARow=9) or (ARow=10) or (ARow=11) or (ARow=12) or (ARow=13) then
        begin

       rzStringGrid2.Canvas.Pen.Width:=3;
       rzStringGrid2.Canvas.Pen.Color:=clLtGray ;
       rzStringGrid2.Canvas.MoveTo(Rect.Left,Rect.Top) ;
       RzStringGrid2.Canvas.LineTo(Rect.Right,Rect.top);
       rzStringGrid2.Canvas.MoveTo(Rect.Left,Rect.bottom) ;
       RzStringGrid2.Canvas.LineTo(Rect.Right,Rect.Bottom);

         end;

     if (ACol=1) or (ACol=5) then
        begin
       rzStringGrid2.Canvas.Pen.Width:=3;
       rzStringGrid2.Canvas.Pen.Color:=clLtGray ;
       rzStringGrid2.Canvas.MoveTo(Rect.Right,Rect.Top) ;
       RzStringGrid2.Canvas.LineTo(Rect.Right,Rect.Bottom);
        end;



     if (ACol<2) then
     begin
       case Arow of
         1,4 : begin

       Rect.top := Rect.top + (Rect.Height div 2)+10 ;
       Rect.Bottom := Rect.Bottom + (Rect.Height*2);
                end;
       0,3,5,6,7,8,9,10,11,12,13,14,15,16,17 : begin
       rzStringGrid2.Canvas.Pen.Width:=3;
       rzStringGrid2.Canvas.Pen.Color:=clLtGray ;
       rzStringGrid2.Canvas.MoveTo(Rect.Left,Rect.Bottom) ;
       RzStringGrid2.Canvas.LineTo(Rect.Right,Rect.Bottom);
           Rect.Bottom := Rect.Bottom;
           Rect.top := Rect.Top+(Rect.Height div 3)-3;
              end;
        end;
     end;

       if (ACol>1) then

       case Arow of
        0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17 : begin
           rzStringGrid2.Canvas.Pen.Width:=1;
           rzStringGrid2.Canvas.Pen.Color:=clLtGray ;
           rzStringGrid2.Canvas.MoveTo(Rect.Left,Rect.Bottom) ;
           RzStringGrid2.Canvas.LineTo(Rect.Right,Rect.Bottom);
           Rect.Bottom := Rect.Bottom;
           Rect.top := Rect.Top+(Rect.Height div 3)-3;
           rzStringGrid2.Canvas.Brush.Color := clWindow;
         end;
       end;


       if (ACol>1) and (ACol<13) and (ARow>0) then
        begin
       rzStringGrid2.Canvas.Font.Style:=[];
       rzStringGrid2.Canvas.Font.Name:='Arial' ;
       rzStringGrid2.Canvas.Font.Size:=8 ;
      DrawText(rzStringGrid2.Canvas.Handle, PChar(CellText), Length(CellText), Rect, DT_WORDBREAK or DT_CENTER or DT_VCENTER or DT_END_ELLIPSIS)
        end;

       if ((ACol < 2 ) or (ARow=0)) and (not( (Arow=3) or (ARow=6) or (ARow=14) or (ARow=15)  ))then
        begin
       rzStringGrid2.Canvas.Font.Style:=[fsBold];
       rzStringGrid2.Canvas.Font.Name:='Arial' ;
       rzStringGrid2.Canvas.Font.Size:=10 ;
      DrawText(rzStringGrid2.Canvas.Handle, PChar(CellText), Length(CellText), Rect, DT_WORDBREAK or DT_CENTER or DT_VCENTER or DT_END_ELLIPSIS)
        end;

        if (State = [gdFixed]) and (Celltext='Total:') or (Celltext='Diferencia:') then
        begin
       rzStringGrid2.Canvas.Font.Style:=[fsBold];
       rzStringGrid2.Canvas.Font.Name:='Arial' ;
       rzStringGrid2.Canvas.Font.Size:=10 ;
      DrawText(rzStringGrid2.Canvas.Handle, PChar(CellText), Length(CellText), Rect, DT_WORDBREAK or DT_RIGHT or DT_VCENTER or DT_END_ELLIPSIS)
        end;

end;

procedure TFEstadisticasGastosVentas.TabSheet1Show(Sender: TObject);
begin

RzStringGrid2.ColWidths[0]:=150;
RzStringGrid2.ColWidths[1]:=150;
RzStringGrid2.RowHeights[0]:=45;

RzStringGrid2.Cells[0,0]:='Liquidación';
RzStringGrid2.Cells[1,0]:='Concepto';
RzStringGrid2.Cells[2,0]:='Nº Facturas';
RzStringGrid2.Cells[3,0]:='Base Imponible';
RzStringGrid2.Cells[4,0]:='Tipo';
RzStringGrid2.Cells[5,0]:='Cuota';


RzStringGrid2.Cells[0,1]:='VENTAS';
rzStringGrid2.Cells[0,3]:='Total:';
rzStringGrid2.Cells[0,4]:='GASTOS';
rzStringGrid2.Cells[0,6]:='Total:';

rzStringGrid2.Cells[1,1]:='Facturas Ventas';
rzStringGrid2.Cells[1,4]:='Facturas Compras';
rzStringGrid2.Cells[1,7]:='Tickets';
rzStringGrid2.Cells[1,8]:='Nóminas:';
rzStringGrid2.Cells[1,9]:='Seguros Sociales';
rzStringGrid2.Cells[1,10]:='Seguros';
rzStringGrid2.Cells[1,11]:='Intereses Deudas';
RzStringGrid2.Cells[1,12]:='Servicios Bancarios';
RzStringGrid2.Cells[1,13]:='Amortizaciones';
//RzStringGrid2.Cells[1,14]:='2% Gastos dificil justificación ';



rzStringGrid2.Cells[1,16]:=FloatToStr(IRPFDEFECTO*100)+' % IRPF';


rzStringGrid2.Cells[0,14]:='Total:';

rzStringGrid2.Cells[0,15]:='Diferencia:';

rzStringGrid2.Cells[4,1]:='10 %';
RzStringGrid2.Cells[4,2]:='21 %';
rzStringGrid2.Cells[4,4]:='10 %';
RzStringGrid2.Cells[4,5]:='21 %';


end;

procedure TFEstadisticasGastosVentas.TabSheet3Show(Sender: TObject);
begin
RzStringGrid1.ColWidths[0]:=150;
RzStringGrid1.ColWidths[1]:=150;
RzStringGrid1.RowHeights[0]:=45;

RzStringGrid1.Cells[0,0]:='Liquidación';
RzStringGrid1.Cells[1,0]:='Concepto';
RzStringGrid1.Cells[2,0]:='Nº Facturas';
RzStringGrid1.Cells[3,0]:='Base Imponible';
RzStringGrid1.Cells[4,0]:='Tipo';
RzStringGrid1.Cells[5,0]:='Cuota';


RzStringGrid1.Cells[0,1]:='IVA DEVENGADO';
rzStringGrid1.Cells[0,3]:='Total:';
rzStringGrid1.Cells[0,4]:='IVA DEDUCIBLE';

rzStringGrid1.Cells[1,1]:='FACTURAS VENTAS';
rzStringGrid1.Cells[1,4]:='FACTURAS COMPRAS';
rzStringGrid1.Cells[0,6]:='Total:';
rzStringGrid1.Cells[0,8]:='Diferencia:';

rzStringGrid1.Cells[4,1]:='10 %';
RzStringGrid1.Cells[4,2]:='21 %';
rzStringGrid1.Cells[4,4]:='10 %';
RzStringGrid1.Cells[4,5]:='21 %';

end;

procedure TFEstadisticasGastosVentas.ToolButton1Click(Sender: TObject);
  var scalaX,scalaY:Double; MyRect:TRect;
begin


  image1.Height:=rzPageControl1.ActivePage.Height;
  image1.Width:=rzPageControl1.ActivePage.Width;
  rzPageControl1.ActivePage.PaintTo(Image1.Canvas.Handle,10,10);


PrintDialog1.Options := [poPageNums, poSelection];
PrintDialog1.FromPage := 1;

if PrintDialog1.Execute then

  Printer.beginDoc;


   scalaX := GetDeviceCaps(Printer.Handle, LOGPIXELSX) / PixelsPerInch;

   scalaY := GetDeviceCaps(Printer.Handle, LOGPIXELSY) / pixelsperinch;

     MyRect.Left := 0;
        MyRect.Top := 0;
        MyRect.Right := trunc(image1.Width * scalaX);
        MyRect.Bottom := trunc(image1.Height * scalaY);
        Printer.Canvas.CopyMode := cmSrcCopy;
        Printer.Canvas.FillRect(MyRect);
    Printer.Canvas.StretchDraw(MyRect,image1.Picture.Bitmap);
   Printer.EndDoc;


end;

function TFEstadisticasGastosVentas.calcularVentasNFacturaTotal:integer;
  begin
   fdq1.Close;
  fdq1.SQL.Clear;
  fdq1.SQL.Add('SELECT count(*) FROM facturas WHERE YEAR(FechaFactura)=:ano AND MONTH(FechaFactura) BETWEEN :f1 AND :f2');
  fdq1.ParamByName('f1').FDDataType:=dtInt16;
  fdq1.ParamByName('f2').FDDataType:=dtInt16;
  fdq1.ParamByName('ano').FDDataType:=dtInt16;

  fdq1.ParamByName('ano').Value:=ano;
  fdq1.ParamByName('f1').Value:=m1;
  fdq1.ParamByName('f2').Value:=m2;

  fdq1.Prepare;
  fdq1.open;


  Result:=fdq1.Fields[0].AsInteger;

  fdq1.Close;
  end;


function TFEstadisticasGastosVentas.calcularIVAVentasNFactura:TNumfacrec;
var  Tn:TNumfacrec;
begin
fdq1.Close;
  fdq1.SQL.Clear;
  fdq1.SQL.Add('SELECT Iva, count(*) FROM facturas WHERE YEAR(FechaFactura)=:ano AND MONTH(FechaFactura) BETWEEN :f1 AND :f2 GROUP BY Iva');
  fdq1.ParamByName('f1').FDDataType:=dtInt16;
  fdq1.ParamByName('f2').FDDataType:=dtInt16;
  fdq1.ParamByName('ano').FDDataType:=dtInt16;

  fdq1.ParamByName('ano').Value:=ano;
  fdq1.ParamByName('f1').Value:=m1;
  fdq1.ParamByName('f2').Value:=m2;

  fdq1.Prepare;
  fdq1.open;
    SetLength(Tn,2);
     fdq1.First;
     Tn[0].iva:= 10 ;
     if fdq1.Fields[0].AsInteger = 10 then  Tn[0].total:=fdq1.Fields[1].AsInteger
     else Tn[0].total:=0;

     fdq1.Next;
     Tn[1].iva:= 21 ;
     if fdq1.Fields[0].AsInteger = 21 then  Tn[1].total:=fdq1.Fields[1].AsInteger
     else Tn[1].total:=0;


  Result:=Tn;

  fdq1.Close;

end;

function TFEstadisticasGastosVentas.calcularGastosNFacturaTotal:integer;
begin
    fdq1.Close;
  fdq1.SQL.Clear;
  fdq1.SQL.Add('SELECT count(*) FROM fproveedores WHERE ticket=0 AND YEAR(Fecha)=:ano AND MONTH(Fecha) BETWEEN :f1 AND :f2');
  fdq1.ParamByName('f1').FDDataType:=dtInt16;
  fdq1.ParamByName('f2').FDDataType:=dtInt16;
  fdq1.ParamByName('ano').FDDataType:=dtInt16;

  fdq1.ParamByName('ano').Value:=ano;
  fdq1.ParamByName('f1').Value:=m1;
  fdq1.ParamByName('f2').Value:=m2;

  fdq1.Prepare;
  fdq1.open;


  Result:=fdq1.Fields[0].asinteger;
  fdq1.Close;

end;


function TFEstadisticasGastosVentas.calcularIVAGastosNFactura:TNumfacrec;
var Tn:TNumfacrec;
begin
  fdq1.Close;
  fdq1.SQL.Clear;
  fdq1.SQL.Add('SELECT TasaIva,count(*) FROM fproveedores WHERE ticket=0 AND YEAR(Fecha)=:ano AND MONTH(Fecha) BETWEEN :f1 AND :f2 GROUP BY TasaIva');
  fdq1.ParamByName('f1').FDDataType:=dtInt16;
  fdq1.ParamByName('f2').FDDataType:=dtInt16;
  fdq1.ParamByName('ano').FDDataType:=dtInt16;

  fdq1.ParamByName('ano').Value:=ano;
  fdq1.ParamByName('f1').Value:=m1;
  fdq1.ParamByName('f2').Value:=m2;

  fdq1.Prepare;
  fdq1.open;
  SetLength(Tn,2);

  fdq1.First;
     Tn[0].iva:= 10 ;
     if fdq1.Fields[0].AsInteger = 10 then  Tn[0].total:=fdq1.Fields[1].AsInteger
     else Tn[0].total:=0;

     fdq1.Next;
     Tn[1].iva:= 21 ;
     if fdq1.Fields[0].AsInteger = 21 then  Tn[1].total:=fdq1.Fields[1].AsInteger
     else Tn[1].total:=0;



  Result:=Tn;
  fdq1.Close;






end;

procedure TFEstadisticasGastosVentas.CalcularSegurosyN(var N:Integer; var total:real);
begin
  fdq1.Close;
  fdq1.SQL.Clear;
  fdq1.SQL.Add('SELECT Count(*),SUM(importe) FROM diario WHERE YEAR(fecha)=:ano AND MONTH(fecha) BETWEEN :f1 AND :f2 GROUP BY id_cuenta HAVING id_cuenta=:c1 or id_cuenta=:c2 or id_cuenta=:c3');

  fdq1.ParamByName('f1').FDDataType:=dtInt16;
  fdq1.ParamByName('f2').FDDataType:=dtInt16;
  fdq1.ParamByName('ano').FDDataType:=dtInt16;
  fdq1.ParamByName('c1').FDDataType:=dtInt16;
  fdq1.ParamByName('c2').FDDataType:=dtInt16;
  fdq1.ParamByName('c3').FDDataType:=dtInt16;

  fdq1.ParamByName('ano').Value:=ano;
  fdq1.ParamByName('f1').Value:=m1;
  fdq1.ParamByName('f2').Value:=m2;
  fdq1.ParamByName('c1').Value:=62500001;
  fdq1.ParamByName('c2').Value:=62500002;
  fdq1.ParamByName('c3').Value:=62500003;


  fdq1.Prepare;
  fdq1.open;

   N:=fdq1.Fields[0].Asinteger;
   total:=fdq1.Fields[1].AsFloat;

  fdq1.Close;

end;


procedure TFEstadisticasGastosVentas.CalcularSegurosSocialesyN(var N:integer;var total:real);
begin
 fdq1.Close;
  fdq1.SQL.Clear;
  fdq1.SQL.Add('SELECT Count(*),SUM(importe) FROM diario WHERE YEAR(fecha)=:ano AND MONTH(fecha) BETWEEN :f1 AND :f2 GROUP BY id_cuenta HAVING id_cuenta=:c1');

  fdq1.ParamByName('f1').FDDataType:=dtInt16;
  fdq1.ParamByName('f2').FDDataType:=dtInt16;
  fdq1.ParamByName('ano').FDDataType:=dtInt16;
  fdq1.ParamByName('c1').FDDataType:=dtInt16;


  fdq1.ParamByName('ano').Value:=ano;
  fdq1.ParamByName('f1').Value:=m1;
  fdq1.ParamByName('f2').Value:=m2;
  fdq1.ParamByName('c1').Value:=64200000;



  fdq1.Prepare;
  fdq1.open;

   N:=fdq1.Fields[0].Asinteger;
   total:=fdq1.Fields[1].AsFloat;

  fdq1.Close;

end;

procedure TFEstadisticasGastosVentas.CalcularNominasyN(var N:Integer; var total:real);
begin
  fdq1.Close;
  fdq1.SQL.Clear;
  fdq1.SQL.Add('SELECT Count(*),SUM(importe) FROM diario WHERE YEAR(fecha)=:ano AND MONTH(fecha) BETWEEN :f1 AND :f2 GROUP BY id_cuenta HAVING id_cuenta=:c1');

  fdq1.ParamByName('f1').FDDataType:=dtInt16;
  fdq1.ParamByName('f2').FDDataType:=dtInt16;
  fdq1.ParamByName('ano').FDDataType:=dtInt16;
  fdq1.ParamByName('c1').FDDataType:=dtInt16;

  fdq1.ParamByName('ano').Value:=ano;
  fdq1.ParamByName('f1').Value:=m1;
  fdq1.ParamByName('f2').Value:=m2;
  fdq1.ParamByName('c1').Value:=64000001;

  fdq1.Prepare;
  fdq1.open;

   N:=fdq1.Fields[0].Asinteger;
   total:=fdq1.Fields[1].AsFloat;

  fdq1.Close;


end;




 procedure TFEstadisticasGastosVentas.CalcularIRPFyNTicketCompras(var N:Integer;var total:real);
  begin
  fdq1.Close;
  fdq1.SQL.Clear;
  fdq1.SQL.Add('SELECT Count(*),SUM(importe) FROM diario WHERE YEAR(fecha)=:ano AND MONTH(fecha) BETWEEN :f1 AND :f2 GROUP BY id_cuenta HAVING id_cuenta=:c1');

  fdq1.ParamByName('f1').FDDataType:=dtInt16;
  fdq1.ParamByName('f2').FDDataType:=dtInt16;
  fdq1.ParamByName('ano').FDDataType:=dtInt16;
  fdq1.ParamByName('c1').FDDataType:=dtInt16;

  fdq1.ParamByName('ano').Value:=ano;
  fdq1.ParamByName('f1').Value:=m1;
  fdq1.ParamByName('f2').Value:=m2;
  fdq1.ParamByName('c1').Value:=62900000;

  fdq1.Prepare;
  fdq1.open;

   N:=fdq1.Fields[0].Asinteger;
   total:=fdq1.Fields[1].AsFloat;

  fdq1.Close;

 end;


 procedure TFEstadisticasGastosVentas.CalcularIRPFFacturasCompras(var N:Integer;var total:real);
 begin
   fdq1.Close;
  fdq1.SQL.Clear;
  fdq1.SQL.Add('SELECT Count(*),SUM(importe) FROM diario WHERE YEAR(fecha)=:ano AND MONTH(fecha) BETWEEN :f1 AND :f2 GROUP BY id_cuenta HAVING id_cuenta=:c1');

  fdq1.ParamByName('f1').FDDataType:=dtInt16;
  fdq1.ParamByName('f2').FDDataType:=dtInt16;
  fdq1.ParamByName('ano').FDDataType:=dtInt16;
  fdq1.ParamByName('c1').FDDataType:=dtInt16;

  fdq1.ParamByName('ano').Value:=ano;
  fdq1.ParamByName('f1').Value:=m1;
  fdq1.ParamByName('f2').Value:=m2;
  fdq1.ParamByName('c1').Value:=60000001;

  fdq1.Prepare;
  fdq1.open;

   N:=fdq1.Fields[0].Asinteger;
   total:=fdq1.Fields[1].AsFloat;

  fdq1.Close;
 end;



 procedure TFEstadisticasGastosVentas.actContraerExecute(Sender: TObject);
begin
       rCheckTreeView1.Items[0].Collapse(true);
end;

procedure TFEstadisticasGastosVentas.actContraerUpdate(Sender: TObject);
begin
  if rCheckTreeView1.Items.Count >0 then TAction(Sender).Enabled:= rCheckTreeView1.Items[0].Expanded;
end;

procedure TFEstadisticasGastosVentas.actExpandirArbolExecute(Sender: TObject);
begin
   actInd1.Animate:=True;


    rCheckTreeView1.Items[0].Expand(true);
     actInd1.Animate:=False;

    end;



procedure TFEstadisticasGastosVentas.actExpandirArbolUpdate(Sender: TObject);
begin
  if rCheckTreeView1.Items.Count >0 then  TAction(Sender).Enabled:= not rCheckTreeView1.Items[0].Expanded;
end;



 function TFEstadisticasGastosVentas.CalcularIRPFFacturasComprasTotal:Real;
 var i:Integer;
 begin
   fdq1.Close;
  fdq1.SQL.Clear;
  fdq1.SQL.Add('SELECT SUM(Importe) FROM fproveedores WHERE ticket=0 AND YEAR(Fecha)=:ano AND MONTH(Fecha) BETWEEN :f1 AND :f2');
  fdq1.ParamByName('f1').FDDataType:=dtInt16;
  fdq1.ParamByName('f2').FDDataType:=dtInt16;
  fdq1.ParamByName('ano').FDDataType:=dtInt16;

  fdq1.ParamByName('ano').Value:=ano;
  fdq1.ParamByName('f1').Value:=m1;
  fdq1.ParamByName('f2').Value:=m2;

  fdq1.Prepare;
  fdq1.open;

  Result:=fdq1.Fields[0].AsFloat;
  fdq1.Close;

 end;


 function TFEstadisticasGastosVentas.CalcularIRPFFacturasVentasTotal:Real;
 begin
    fdq1.Close;
  fdq1.SQL.Clear;
  fdq1.SQL.Add('SELECT SUM(TotalBruto) FROM facturas WHERE YEAR(FechaFactura)=:ano AND MONTH(FechaFactura) BETWEEN :f1 AND :f2');
  fdq1.ParamByName('f1').FDDataType:=dtInt16;
  fdq1.ParamByName('f2').FDDataType:=dtInt16;
  fdq1.ParamByName('ano').FDDataType:=dtInt16;

  fdq1.ParamByName('ano').Value:=ano;
  fdq1.ParamByName('f1').Value:=m1;
  fdq1.ParamByName('f2').Value:=m2;

  fdq1.Prepare;
  fdq1.open;

  Result:=fdq1.fields[0].asfloat;

  fdq1.Close;
 end;

function TFEstadisticasGastosVentas.CalcularIRPFFacturasVentas:Tivasrec;
var  Ti:TivasRec;
begin
   fdq1.Close;
  fdq1.SQL.Clear;

  fdq1.SQL.Add('SELECT id_cuenta,SUM(importe) FROM diario WHERE YEAR(fecha)=:ano AND MONTH(fecha) BETWEEN :f1 AND :f2 GROUP BY id_cuenta HAVING id_cuenta=:c1 or id_cuenta=:c2');


  fdq1.ParamByName('f1').FDDataType:=dtInt16;
  fdq1.ParamByName('f2').FDDataType:=dtInt16;
  fdq1.ParamByName('ano').FDDataType:=dtInt16;
  fdq1.ParamByName('c1').FDDataType:=dtInt16;
  fdq1.ParamByName('c2').FDDataType:=dtInt16;

  fdq1.ParamByName('ano').Value:=ano;
  fdq1.ParamByName('f1').Value:=m1;
  fdq1.ParamByName('f2').Value:=m2;
  fdq1.ParamByName('c1').Value:=70000010;
  fdq1.ParamByName('c2').Value:=70000021;

  fdq1.Prepare;
  fdq1.open;

 SetLength(Ti,2);
  fdq1.First;

     Ti[0].iva:=10;
     if fdq1.Fields[0].AsInteger=fdq1.ParamByName('c1').Value then  Ti[0].total:=fdq1.Fields[1].AsFloat
      else Ti[0].total:=0;

     fdq1.Next;
     Ti[1].iva:=21;
     if fdq1.Fields[0].AsInteger=fdq1.ParamByName('c2').Value then  Ti[1].total:=fdq1.Fields[1].AsFloat
      else Ti[1].total:=0;


  Result:=Ti;

  fdq1.Close;
end;

function TFEstadisticasGastosVentas.CalcularIVAFacturasVentas:Tivasrec;
   var  Ti:TivasRec;
 begin
  fdq1.Close;
  fdq1.SQL.Clear;
  fdq1.SQL.Add('SELECT id_cuenta,SUM(importe) FROM diario WHERE YEAR(fecha)=:ano AND MONTH(fecha) BETWEEN :f1 AND :f2 GROUP BY id_cuenta HAVING id_cuenta=:c1 or id_cuenta=:c2');

  fdq1.ParamByName('f1').FDDataType:=dtInt16;
  fdq1.ParamByName('f2').FDDataType:=dtInt16;
  fdq1.ParamByName('ano').FDDataType:=dtInt16;
  fdq1.ParamByName('c1').FDDataType:=dtInt16;
  fdq1.ParamByName('c2').FDDataType:=dtInt16;

  fdq1.ParamByName('ano').Value:=ano;
  fdq1.ParamByName('f1').Value:=m1;
  fdq1.ParamByName('f2').Value:=m2;
  fdq1.ParamByName('c1').Value:=47700010;
  fdq1.ParamByName('c2').Value:=47700021;

  fdq1.Prepare;
  fdq1.open;
    SetLength(Ti,2);

   fdq1.First;

     Ti[0].iva:=10;
     if fdq1.Fields[0].AsInteger=fdq1.ParamByName('c1').Value then  Ti[0].total:=fdq1.Fields[1].AsFloat
      else Ti[0].total:=0;

     fdq1.Next;
     Ti[1].iva:=21;
     if fdq1.Fields[0].AsInteger=fdq1.ParamByName('c2').Value then  Ti[1].total:=fdq1.Fields[1].AsFloat
      else Ti[1].total:=0;


  Result:=Ti;

  fdq1.Close;
 end;

function TFEstadisticasGastosVentas.CalcularIVAFacturasCompras:Tivasrec;
var Ti:Tivasrec;
 begin
  fdq1.Close;
  fdq1.SQL.Clear;

  fdq1.SQL.Add('SELECT id_cuenta,SUM(importe) FROM diario WHERE YEAR(fecha)=:ano AND MONTH(fecha) BETWEEN :f1 AND :f2 GROUP BY id_cuenta HAVING id_cuenta=:c1 or id_cuenta=:c2');


  fdq1.ParamByName('f1').FDDataType:=dtInt16;
  fdq1.ParamByName('f2').FDDataType:=dtInt16;
  fdq1.ParamByName('ano').FDDataType:=dtInt16;
  fdq1.ParamByName('c1').FDDataType:=dtInt16;
  fdq1.ParamByName('c2').FDDataType:=dtInt16;

  fdq1.ParamByName('ano').Value:=ano;
  fdq1.ParamByName('f1').Value:=m1;
  fdq1.ParamByName('f2').Value:=m2;
  fdq1.ParamByName('c1').Value:=47200010;
  fdq1.ParamByName('c2').Value:=47200021;
  fdq1.Prepare;
  fdq1.open;
  SetLength(Ti,2);

   fdq1.First;

     Ti[0].iva:=10;
     if fdq1.Fields[0].AsInteger=fdq1.ParamByName('c1').Value then  Ti[0].total:=fdq1.Fields[1].AsFloat
      else Ti[0].total:=0;

     fdq1.Next;
     Ti[1].iva:=21;
     if fdq1.Fields[0].AsInteger=fdq1.ParamByName('c2').Value then  Ti[1].total:=fdq1.Fields[1].AsFloat
      else Ti[1].total:=0;


  Result:=Ti;
  fdq1.Close;
 end;

procedure TFEstadisticasGastosVentas.FDcuentasAfterScroll(DataSet: TDataSet);
begin
rGroupBox2.Caption:=DataSet.FieldByName('id_cuenta').AsString+ ' - '+DataSet.FieldByName('descripcion').AsString ;
rdbdiario.RecalculateSummaryResults(true);
end;

procedure TFEstadisticasGastosVentas.fddiarioAfterOpen(DataSet: TDataSet);
begin
rdbdiario.RecalculateSummaryResults(true);
end;

procedure TFEstadisticasGastosVentas.fddiarioAfterPost(DataSet: TDataSet);
begin
rdbdiario.RecalculateSummaryResults(true);
end;

procedure TFEstadisticasGastosVentas.fddiarioAfterRefresh(DataSet: TDataSet);
begin
rdbdiario.RecalculateSummaryResults(true);
end;

procedure TFEstadisticasGastosVentas.fdIRPFTrabAfterOpen(DataSet: TDataSet);
begin
rdbIRPFTrab.RecalculateSummaryResults(True);
end;

procedure TFEstadisticasGastosVentas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
end;

procedure TFEstadisticasGastosVentas.FormCreate(Sender: TObject);
var i:Integer;
begin



peridodo:=0;
rComboBoxEx1.ItemIndex:= DataModule1.ObtenerTrimestre(MonthOf(Date))-1 ;

 for i := YearOf(date)-4 to YearOf(date)+5 do rComboBoxEx2.Items.add(IntToStr(i));

 ano:=YearOf(date);

 rComboBoxEx2.text:=IntToStr(ano);

rComboBoxEx1Change(rComboBoxEx1);
rComboBoxEx2Change(rComboBoxEx2);

end;


procedure TFEstadisticasGastosVentas.LabeledEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin



 if Key = '.' then
 begin
  Key:=',';
  Exit;
 end;

 if not (key in [#8,'0'..'9',',','-']) then key:=#0;

 if (Length(TLabeledEdit(Sender).Text) > 0) and (Key = '-') then  Key:=#0;


end;


procedure TFEstadisticasGastosVentas.CalcularInteresesyN(var N:Integer; var total:real);
begin
  fdq1.Close;
  fdq1.SQL.Clear;
  fdq1.SQL.Add('SELECT Count(*),SUM(importe) FROM diario WHERE YEAR(fecha)=:ano AND MONTH(fecha) BETWEEN :f1 AND :f2 GROUP BY id_cuenta HAVING id_cuenta=:c1');

  fdq1.ParamByName('f1').FDDataType:=dtInt16;
  fdq1.ParamByName('f2').FDDataType:=dtInt16;
  fdq1.ParamByName('ano').FDDataType:=dtInt16;
  fdq1.ParamByName('c1').FDDataType:=dtInt16;

  fdq1.ParamByName('ano').Value:=ano;
  fdq1.ParamByName('f1').Value:=m1;
  fdq1.ParamByName('f2').Value:=m2;
  fdq1.ParamByName('c1').Value:=66200000;

  fdq1.Prepare;
  fdq1.open;

   N:=fdq1.Fields[0].Asinteger;
   total:=fdq1.Fields[1].AsFloat;

  fdq1.Close;


end;

procedure TFEstadisticasGastosVentas.CalcularBancosyN(var N:Integer; var total:real);
 begin
  fdq1.Close;
  fdq1.SQL.Clear;
  fdq1.SQL.Add('SELECT Count(*),SUM(importe) FROM diario WHERE YEAR(fecha)=:ano AND MONTH(fecha) BETWEEN :f1 AND :f2 GROUP BY id_cuenta HAVING id_cuenta=:c1');

  fdq1.ParamByName('f1').FDDataType:=dtInt16;
  fdq1.ParamByName('f2').FDDataType:=dtInt16;
  fdq1.ParamByName('ano').FDDataType:=dtInt16;
  fdq1.ParamByName('c1').FDDataType:=dtInt16;

  fdq1.ParamByName('ano').Value:=ano;
  fdq1.ParamByName('f1').Value:=m1;
  fdq1.ParamByName('f2').Value:=m2;
  fdq1.ParamByName('c1').Value:=62600000;

  fdq1.Prepare;
  fdq1.open;

   N:=fdq1.Fields[0].Asinteger;
   total:=fdq1.Fields[1].AsFloat;

  fdq1.Close;


end;
end.

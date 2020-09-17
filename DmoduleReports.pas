unit DmoduleReports;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxDBSet, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportPDF,
  frxExportDOCX, frxExportXLSX;

type
  TDataModule2 = class(TDataModule)
    frxFacturasImpagadas: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    FDFacturasImpagadas: TFDQuery;
    FDPresupuestosAprobados: TFDQuery;
    frxPresupuestosAprobados: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    dsPresupuestosAprobados: TDataSource;
    fdDetallePresupuestos: TFDQuery;
    frxDBDataset3: TfrxDBDataset;
    frxDOCXExport1: TfrxDOCXExport;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxFacturas: TfrxReport;
    FDfacturas: TFDQuery;
    frxDBDataset4: TfrxDBDataset;
    FDDetalleFacturas: TFDQuery;
    dsfacturas: TDataSource;
    frxDBDataset5: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

uses
  DModule1;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
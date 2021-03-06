unit DmoduleReports;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxDBSet, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportPDF,
  frxExportDOCX, frxExportXLSX, frxDCtrl;

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
    fdtrabajadores: TFDQuery;
    frxDBDataset6: TfrxDBDataset;
    frxCalendario: TfrxReport;
    FDdetalleCalendario: TFDQuery;
    dstrabajadores: TDataSource;
    frxDBDataset7: TfrxDBDataset;
    frxDialogControls1: TfrxDialogControls;
    fdobras: TFDQuery;
    fdcostes: TFDQuery;
    frxDBDataset8: TfrxDBDataset;
    frxDBDataset9: TfrxDBDataset;
    frxcostesobra: TfrxReport;
    dsobras: TDataSource;
    FDDetallePresupuestosTIPO: TFDQuery;
    frxPresupuestoTipo: TfrxReport;
    frxDBDataset10: TfrxDBDataset;
    FDPresupuestosPorFecha: TFDQuery;
    frxPresupuestosPorFecha: TfrxReport;
    frxDBDataset11: TfrxDBDataset;
    FDObrasSinFacturar: TFDQuery;
    frxDBDataset12: TfrxDBDataset;
    frxObrasSinFacturar: TfrxReport;
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

unit frameObras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TFrame3 = class(TFrame)
    Panel1: TPanel;
    ListViewObras: TListView;
    HeaderControl1: THeaderControl;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    btncrearfactura: TButton;
    procedure FrameResize(Sender: TObject);
    procedure ListViewObrasResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame3.FrameResize(Sender: TObject);
begin
Button1.Left:=HeaderControl1.Width-96;
Button2.Left:=HeaderControl1.Width-64;
Button3.Left:=HeaderControl1.Width-32;
btncrearfactura.Left:=HeaderControl1.Width-128;
end;

procedure TFrame3.ListViewObrasResize(Sender: TObject);
begin
(Sender as TListView).Columns[1].Width:= HeaderControl1.Width - 180;
end;

end.

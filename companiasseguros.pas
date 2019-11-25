unit companiasseguros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, RzListVw, rHTMLListView,
  Vcl.ExtCtrls, RzPanel;

type
  TFimagenesCompanias = class(TForm)
    rzlstvw1: TRzListView;
    rztlbr1: TRzToolbar;
    procedure FormCreate(Sender: TObject);
    procedure rzlstvw1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FimagenesCompanias: TFimagenesCompanias;

implementation

{$R *.dfm}

uses seguros;

procedure TFimagenesCompanias.FormCreate(Sender: TObject);
var i:Integer; itm:TListItem;
begin
    //  lvr1.ItemOptionsEx.Images:=TFSeguros(Self.Owner).il1;
      rzlstvw1.LargeImages:=TFSeguros(Self.Owner).il1;
     for i := 0 to TFSeguros(Self.Owner).il1.Count-1 do
       begin
    //      itm:=lvr1.Items.Add;
      //    itm.ImageIndex:=i;
          itm:=rzlstvw1.Items.Add;
          itm.ImageIndex:=i;

       end;
end;

procedure TFimagenesCompanias.rzlstvw1DblClick(Sender: TObject);
begin
TFSeguros(Self.Owner).fdqseguros.FieldByName('img').Clear;
TFSeguros(Self.Owner).il1.GetBitmap( rzlstvw1.ItemIndex  ,TFSeguros(Self.Owner).rDBImage1.Picture.Bitmap);
TFSeguros(Self.Owner).fdqseguros.FieldByName('img').Assign(TFSeguros(Self.Owner).rDBImage1.Picture.Bitmap);
TFSeguros(Self.Owner).rDBImage1.Width:=TFSeguros(Self.Owner).rDBImage1.Picture.Bitmap.Width;
TFSeguros(Self.Owner).rDBImage1.Height:=TFSeguros(Self.Owner).rDBImage1.Picture.Bitmap.Height;

end;

end.

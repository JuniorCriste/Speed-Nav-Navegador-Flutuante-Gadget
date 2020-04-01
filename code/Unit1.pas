unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, OleCtrls, SHDocVw;

type
  TForm1 = class(TForm)
    Image1: TImage;
    WebBrowser1: TWebBrowser;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure WebBrowser1DownloadComplete(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
webbrowser1.Navigate('www.google.com');
end;

procedure TForm1.FormShow(Sender: TObject);
begin
form2.show;
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);

const
  sc_dragmove=$F012;
  begin
 if button=mbleft then

 begin
 releasecapture;
form1.Perform(wm_syscommand,sc_dragmove,0);

end;
end;

procedure TForm1.WebBrowser1DownloadComplete(Sender: TObject);
begin
 form2.Edit2.Text:=webbrowser1.LocationURL;
end;

end.

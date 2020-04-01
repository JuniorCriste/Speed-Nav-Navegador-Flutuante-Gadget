unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Image2: TImage;
    Edit2: TEdit;
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);

const
  sc_dragmove=$F012;
  begin
 if button=mbleft then

 begin
 releasecapture;
form2.Perform(wm_syscommand,sc_dragmove,0);

end;
end;

procedure TForm2.Image2Click(Sender: TObject);
begin
form1.WebBrowser1.Navigate('www.google.com/search?q='+edit1.Text);
end;

procedure TForm2.Edit2KeyPress(Sender: TObject; var Key: Char);

begin
if key =#13 then

form1.WebBrowser1.Navigate(edit2.Text);
end;



procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if key =#13 then

form1.WebBrowser1.Navigate('www.google.com/search?q='+edit1.Text);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
application.Title:='Busca Rápida';
end;

end.

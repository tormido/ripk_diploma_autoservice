unit oprogramme1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB, Vcl.DBCtrls, Vcl.Imaging.pngimage;

type
  Toprogramme = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Image1: TImage;
    DBText1: TDBText;
    procedure Button1Click(Sender: TObject);

    private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  oprogramme: Toprogramme;

implementation

{$R *.dfm}

uses mainform, Requisites1;



procedure Toprogramme.Button1Click(Sender: TObject);
begin
Oprogramme.Close;
end;


end.

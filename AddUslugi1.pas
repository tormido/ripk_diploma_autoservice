unit AddUslugi1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask, Vcl.Menus;

type
  TAddUslugi = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ADOQueryWork: TADOQuery;
    DataSourceWork: TDataSource;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddUslugi: TAddUslugi;

implementation

{$R *.dfm}

uses mainform;

procedure TAddUslugi.Button1Click(Sender: TObject);
begin
AddUslugi.ADOQueryWork.CancelUpdates;
AddUslugi.Close;
end;

procedure TAddUslugi.Button2Click(Sender: TObject);
begin
if AddUslugi.ADOQueryWork.Modified then AddUslugi.ADOQueryWork.Post;
AddUslugi.Close;
end;

procedure TAddUslugi.Button3Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
  // Отображение диалога с подтверждением
  buttonSelected := MessageDlg('Вы уверены, что хотите удалить услугу?',mtError, [mbNo,mbYes], 0);

  // Показ типа выбранной кнопки
  if buttonSelected = mrYes     then AddUslugi.ADOQueryWork.Delete;
  if buttonSelected = mrNo then ShowMessage('Отличный выбор');
end;



procedure TAddUslugi.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if (Length(DBEdit1.Text) > 7)
then
 begin
  case Key of
  #8:;
  else Key := #0
  end;
 end
end;

procedure TAddUslugi.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if (Length(DBEdit3.Text) > 4)
then
 begin
  case Key of
  #8:;
  else Key := #0
  end;
 end
else
   case Key of
  '0'..'9', #8: ;
    #13: Button2.SetFocus;
   else Key := #0;
   end;

end;

procedure TAddUslugi.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if (Length(DBEdit1.Text) = 0) or (Length(DBEdit2.Text) = 0) or
(Length(DBEdit3.Text) = 0)
then Button2.Enabled := False // кнопка сохранить недоступна
else Button2.Enabled := True;
end;

end.


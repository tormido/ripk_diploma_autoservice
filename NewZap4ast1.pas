unit NewZap4ast1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.Mask, Vcl.DBCtrls, Vcl.Menus;

type
  TNewZap4ast = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label4: TLabel;
    ADOQueryZap4asti: TADOQuery;
    DataSourceZap4asti: TDataSource;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Button3: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewZap4ast: TNewZap4ast;

implementation

{$R *.dfm}

uses mainform, find1;



procedure TNewZap4ast.Button1Click(Sender: TObject);
begin
NewZap4ast.ADOQueryZap4asti.CancelUpdates;
NewZap4ast.Close;
end;

procedure TNewZap4ast.Button2Click(Sender: TObject);
begin
if NewZap4ast.ADOQueryZap4asti.Modified then NewZap4ast.ADOQueryZap4asti.Post;
NewZap4ast.Close;
end;

procedure TNewZap4ast.Button3Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
  // Отображение диалога с подтверждением
  buttonSelected := MessageDlg('Вы уверены, что хотите удалить запчасть?',mtError, [mbNo,mbYes], 0);

  // Показ типа выбранной кнопки
  if buttonSelected = mrYes     then NewZap4ast.ADOQueryZap4asti.Delete;
  if buttonSelected = mrNo then ShowMessage('Отличный выбор');

end;

procedure TNewZap4ast.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if (Length(DBEdit3.Text) > 9)
then
 begin
  case Key of
  #8:;
  else Key := #0
  end;
 end
else

   case Key of
  '0'..'9', #8: ; // цифры и <Backspace>
  '.',',':
      begin
      Key := FormatSettings.DecimalSeparator;
      // проверим, введен ли уже в поле Edit десятичный разделитель
      if pos(FormatSettings.DecimalSeparator,DBEdit3.Text) <> 0
      then Key := #0;
      end;
  #13: Button2.SetFocus; // сделать активной кнопку Пересчет
  else Key := #0; // остальные символы запрещены
  end;
end;

procedure TNewZap4ast.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if (Length(DBEdit1.Text) = 0) or (Length(DBEdit2.Text) = 0) or
(Length(DBEdit3.Text) = 0)
then Button2.Enabled := False // кнопка сохранить недоступна
else Button2.Enabled := True;
end;

end.

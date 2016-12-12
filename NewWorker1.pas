unit NewWorker1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TNewWorker = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    DataSourceWorker: TDataSource;
    ADOQueryWorker: TADOQuery;
    DBGrid1: TDBGrid;
    Button3: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    ADOQueryEducation: TADOQuery;
    ADOQueryVocation: TADOQuery;
    DataSourceEducation: TDataSource;
    DataSourceVocation: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DateTimePicker1: TDateTimePicker;
    ADOQueryRepSotr: TADOQuery;
    DataSourceRepSotr: TDataSource;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);


    private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewWorker: TNewWorker;

implementation

{$R *.dfm}

uses mainform;

procedure TNewWorker.Button1Click(Sender: TObject);
begin
  NewWorker.ADOQueryWorker.CancelUpdates;
  NewWorker.Close;
end;

procedure TNewWorker.Button2Click(Sender: TObject);
begin
   if NewWorker.ADOQueryRepSotr.Modified then NewWorker.ADOQueryRepSotr.Post;
   NewWorker.ADOQueryRepSotr.Active := false;
   NewWorker.ADOQueryRepSotr.Active := true;
   NewWorker.Close;
end;

procedure TNewWorker.Button3Click(Sender: TObject);

var
  buttonSelected : Integer;
begin
  // Отображение диалога с подтверждением
  buttonSelected := MessageDlg('Вы уверены, что хотите удалить сотрудника?',mtError, [mbNo,mbYes], 0);

  // Показ типа выбранной кнопки
  if buttonSelected = mrYes     then NewWorker.ADOQueryWorker.Delete;
  if buttonSelected = mrNo then ShowMessage('Отличный выбор');

end;

procedure TNewWorker.DateTimePicker1Change(Sender: TObject);
begin
NewWorker.DBEdit3.Text := DateToStr(NewWorker.DateTimePicker1.DateTime);
end;

procedure TNewWorker.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
   case Key of
  'A'..'Z','a'..'z', 'а'..'я', 'А'..'Я', #8, #32: ;
   #13: DateTimePicker1.SetFocus;
   else Key := #0;
   end;
end;

procedure TNewWorker.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if (Length(DBEdit2.Text) > 0)
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
  #13: DateTimePicker1.SetFocus;
  else Key := #0;
  end;
end;


procedure TNewWorker.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if (Length(DBEdit1.Text) = 0) or (Length(DBEdit2.Text) = 0) or
(Length(DBEdit3.Text) = 0) or (Length(DBEdit6.Text) = 0)
then Button2.Enabled := False // кнопка сохранить недоступна
else Button2.Enabled := True;
end;

end.  (*

      *)

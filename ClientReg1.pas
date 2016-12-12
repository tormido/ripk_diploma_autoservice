unit ClientReg1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus, Vcl.StdCtrls,
  Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TClientReg = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N4: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N3: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    DBGrid1: TDBGrid;
    ADOQueryClient: TADOQuery;
    DataSourceClient: TDataSource;
    ADOQueryCountry: TADOQuery;
    DataSourceCountry: TDataSource;
    DateTimePicker1: TDateTimePicker;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    TabSheet3: TTabSheet;
    Label10: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure N4Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure DBEdit1Change(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientReg: TClientReg;

implementation

{$R *.dfm}

uses mainform, find1;



procedure TClientReg.Button1Click(Sender: TObject);
begin
MessageDlg('Опция доступна из меню главной формы',
mtInformation,[mbOk],0);
end;

procedure TClientReg.Button2Click(Sender: TObject);
begin
MessageDlg('Опция доступна из меню главной формы',
mtInformation,[mbOk],0);
end;

procedure TClientReg.Button3Click(Sender: TObject);
begin
MessageDlg('Опция доступна из меню главной формы',
mtInformation,[mbOk],0);
end;

procedure TClientReg.Button4Click(Sender: TObject);
begin
ClientReg.ADOQueryClient.CancelUpdates;
ClientReg.Close;
Form1.Show;
end;

procedure TClientReg.Button5Click(Sender: TObject);
begin
 if ClientReg.ADOQueryClient.Modified then ClientReg.ADOQueryClient.Post;
end;

procedure TClientReg.Button6Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
  // Отображение диалога с подтверждением
  buttonSelected := MessageDlg('Вы уверены, что хотите удалить клиента?',mtError, [mbNo,mbYes], 0);

  // Показ типа выбранной кнопки
  if buttonSelected = mrYes     then ClientReg.ADOQueryClient.Delete;
  if buttonSelected = mrNo then ShowMessage('Отличный выбор');

end;

procedure TClientReg.DateTimePicker1Change(Sender: TObject);
begin
ClientReg.DBEdit5.Text := DateToStr(ClientReg.DateTimePicker1.DateTime);
end;

procedure TClientReg.DBEdit1Change(Sender: TObject);
begin
if (Length(DBEdit1.Text) = 0) or (Length(DBEdit2.Text) = 0) or
(Length(DBEdit3.Text) = 0) or (Length(DBEdit4.Text) = 0) or
(Length(DBEdit7.Text) = 0) or (Length(DBEdit8.Text) = 0)
then Button5.Enabled := False // кнопка сохранить недоступна
else Button5.Enabled := True;
end;

procedure TClientReg.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 case Key of
  'A'..'Z','a'..'z', 'а'..'я', 'А'..'Я', #8: ;
   #13: DBEdit2.SetFocus;
   else Key := #0;
   end;
end;

procedure TClientReg.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
  'A'..'Z','a'..'z', 'а'..'я', 'А'..'Я', #8: ;
  #13: DBEdit3.SetFocus;
  else Key := #0;
  end;
end;

procedure TClientReg.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
  'A'..'Z','a'..'z', 'а'..'я', 'А'..'Я', #8: ;
  #13: DBEdit4.SetFocus;
  else Key := #0;
  end;
end;

procedure TClientReg.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin

if (Length(DBEdit7.Text) > 20)
then
 begin
  case Key of
  #8:;
  else Key := #0
  end;
 end

else
  case Key of
  '0'..'9', #8, #45, #46, #40, #41: ;
  #13: DBEdit8.SetFocus;
  else Key := #0;
  end;

end;


procedure TClientReg.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
if (Length(DBEdit8.Text) > 30)
then
 begin
  case Key of
  #8:;
  else Key := #0
  end;
 end

else
  case Key of
  'a'..'z', '@'..'Z', '0'..'9', #8, #95, #45, #46: ;
  #13: Button5.SetFocus;
  else Key := #0;
  end;
end;

procedure TClientReg.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if (Length(DBEdit1.Text) = 0) or (Length(DBEdit2.Text) = 0) or
(Length(DBEdit3.Text) = 0) or (Length(DBEdit4.Text) = 0) or
(Length(DBEdit7.Text) = 0) or (Length(DBEdit8.Text) = 0)
then Button5.Enabled := False // кнопка сохранить недоступна
else Button5.Enabled := True;
end;



procedure TClientReg.N4Click(Sender: TObject);
begin
ClientReg.Close;
Form1.Show;
end;

end.

unit AddAuto1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TAddAuto = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ADOQueryAuto: TADOQuery;
    DataSourceAuto: TDataSource;
    DBGrid1: TDBGrid;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ADOQueryMarka: TADOQuery;
    ADOQueryModel: TADOQuery;
    ADOQueryColor: TADOQuery;
    DataSourceMarka: TDataSource;
    DataSourceModel: TDataSource;
    DataSourceColor: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DateTimePicker1: TDateTimePicker;
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);


    private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddAuto: TAddAuto;

implementation

{$R *.dfm}

uses mainform, find1, ClientReg1;

procedure TAddAuto.Button1Click(Sender: TObject);
begin
AddAuto.ADOQueryAuto.CancelUpdates;
AddAuto.Close;
end;

procedure TAddAuto.Button2Click(Sender: TObject);
begin
if AddAuto.ADOQueryAuto.Modified then AddAuto.ADOQueryAuto.Post;
AddAuto.Close;
end;

procedure TAddAuto.Button3Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
  // Отображение диалога с подтверждением
  buttonSelected := MessageDlg('Вы уверены, что хотите удалить выбранный автомобиль?',mtError, [mbNo,mbYes], 0);

  // Показ типа выбранной кнопки
  if buttonSelected = mrYes     then AddAuto.ADOQueryAuto.Delete;
  if buttonSelected = mrNo then ShowMessage('Отличный выбор');
end;

procedure TAddAuto.DateTimePicker1Change(Sender: TObject);
begin
AddAuto.DBEdit6.Text := DateToStr(AddAuto.DateTimePicker1.DateTime);
end;

procedure TAddAuto.DBEdit1Change(Sender: TObject);
begin
if (Length(DBEdit1.Text) = 0) or (Length(DBEdit2.Text) = 0) or
(Length(DBEdit6.Text) = 0)  or
(Length(DBEdit7.Text) = 0) or (Length(DBEdit8.Text) = 0)
then Button2.Enabled := False // кнопка Пересчет недоступна
else Button2.Enabled := True;
end;


procedure TAddAuto.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if (Length(DBEdit1.Text) > 17)
then
 begin
  case Key of
  #8:;
  else Key := #0
  end;
 end
 else
  case Key of
  '0'..'9', 'A'..'Z', 'a'..'z', #8: ;
  #13: DBLookupComboBox3.SetFocus;
  else Key := #0;
  end;
end;

procedure TAddAuto.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if (Length(DBEdit2.Text) > 10)
then
 begin
  case Key of
  #8:;
  else Key := #0
  end;
 end
else
end;

procedure TAddAuto.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
if (Length(DBEdit7.Text) > 5)
then
 begin
  case Key of
  #8:;
  else Key := #0
  end;
 end
end;

procedure TAddAuto.DBLookupComboBox1Click(Sender: TObject);
var h2: string;
begin
h2:= AddAuto.DBLookupComboBox1.KeyValue;
AddAuto.ADOQueryModel.Active := false;
AddAuto.ADOQueryModel.SQL.Text := 'Select * from model WHERE (marka_ID = '+h2+')';
AddAuto.ADOQueryModel.Active := true;
end;

procedure TAddAuto.DBLookupComboBox1CloseUp(Sender: TObject);
//var h1: string;
//
begin
//AddAuto.DBEdit3.Text := AddAuto.DBlookupComboBox1.Text;
//AddAuto.ADOQueryModel.Active := FALSE;
//h1 := AddAuto.DBlookupComboBox1.Text;
//   with AddAuto.ADOQueryModel do
//  begin
//  close;
//  SQL.Clear;
//  SQL.Add('Select * from model where model_ID ='+ h1 +' Order BY marka_ID');
//  open;
//  end;
//AddAuto.ADOQueryModel.Active := true;
//
end;

procedure TAddAuto.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if (Length(DBEdit1.Text) = 0) or (Length(DBEdit2.Text) = 0) or
(Length(DBEdit6.Text) = 0)  or
(Length(DBEdit7.Text) = 0) or (Length(DBEdit8.Text) = 0)
then Button2.Enabled := False // кнопка Пересчет недоступна
else Button2.Enabled := True;
end;

end.

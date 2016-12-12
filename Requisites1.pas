unit Requisites1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.DBCtrls, Vcl.Mask;

type
  TRequisites = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ADOQueryRequisits: TADOQuery;
    DataSourceRequisits: TDataSource;
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBMemo1: TDBMemo;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBMemo1Change(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Requisites: TRequisites;

implementation

{$R *.dfm}

uses mainform;

procedure TRequisites.Button1Click(Sender: TObject);
begin
Requisites.ADOQueryRequisits.CancelUpdates;
Requisites.Close;
end;

procedure TRequisites.Button2Click(Sender: TObject);
begin
if Requisites.ADOQueryRequisits.Modified then Requisites.ADOQueryRequisits.Post;
Requisites.Close;
Requisites.ADOQueryRequisits.Active := False;
Requisites.ADOQueryRequisits.Active := True;
end;

procedure TRequisites.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if (Length(DBEdit2.Text) > 240)
then
 begin
  case Key of
  #8:;
  else Key := #0
  end;
 end
end;

procedure TRequisites.DBEdit3KeyPress(Sender: TObject; var Key: Char);

begin
if (Length(DBEdit3.Text) > 10)
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
    #13: DBEdit5.SetFocus;
   else Key := #0;
   end;

end;


procedure TRequisites.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if (Length(DBEdit4.Text) > 20)
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
  #13: DBEdit6.SetFocus;
  else Key := #0;
  end;
end;

procedure TRequisites.DBEdit5KeyPress(Sender: TObject; var Key: Char);

begin
if (Length(DBEdit5.Text) > 10)
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
    #13: DBEdit4.SetFocus;
   else Key := #0;
   end;

end;


procedure TRequisites.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
if (Length(DBEdit6.Text) > 20)
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
  #13: Button2.SetFocus;
  else Key := #0;
  end;
end;

procedure TRequisites.DBMemo1Change(Sender: TObject);
begin
if (Length(DBMemo1.Text) = 0) or (Length(DBEdit2.Text) = 0) or
(Length(DBEdit3.Text) = 0) or (Length(DBEdit4.Text) = 0) or
(Length(DBEdit5.Text) = 0) or (Length(DBEdit6.Text) = 0)
then Button2.Enabled := False // кнопка сохранить недоступна
else Button2.Enabled := True;
end;

procedure TRequisites.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
if (Length(DBMemo1.Text) > 240)
then
 begin
  case Key of
  #8:;
  else Key := #0
  end;
 end
end;

procedure TRequisites.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if (Length(DBMemo1.Text) = 0) or (Length(DBEdit2.Text) = 0) or
(Length(DBEdit3.Text) = 0) or (Length(DBEdit4.Text) = 0) or
(Length(DBEdit5.Text) = 0) or (Length(DBEdit6.Text) = 0)
then Button2.Enabled := False // кнопка сохранить недоступна
else Button2.Enabled := True;
end;

end.

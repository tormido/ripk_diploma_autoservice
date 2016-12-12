unit CostNormoHour1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Data.Win.ADODB, Vcl.ComCtrls;

type
  TCostNormoHour = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    ADOQueryNormo4as: TADOQuery;
    DataSourceNormo4as: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure DBEdit1Change(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostNormoHour: TCostNormoHour;

implementation

{$R *.dfm}

uses mainform;

procedure TCostNormoHour.Button1Click(Sender: TObject);
begin
CostNormoHour.ADOQueryNormo4as.CancelUpdates;
CostNormoHour.Close;
end;

procedure TCostNormoHour.Button2Click(Sender: TObject);
begin
if CostNormoHour.ADOQueryNormo4as.Modified then CostNormoHour.ADOQueryNormo4as.Post;
CostNormoHour.Close;
end;

procedure TCostNormoHour.DateTimePicker1Change(Sender: TObject);
begin
CostNormoHour.DBEdit1.Text := DateToStr(CostNormoHour.DateTimePicker1.DateTime);
end;

procedure TCostNormoHour.DBEdit1Change(Sender: TObject);
begin
if (Length(DBEdit1.Text) = 0) or (Length(DBEdit2.Text) = 0) or
(Length(DBEdit3.Text) = 0) or (Length(DBEdit4.Text) = 0) or
(Length(DBEdit5.Text) = 0) or (Length(DBEdit6.Text) = 0)  or
(Length(DBEdit7.Text) = 0)
then Button2.Enabled := False // кнопка сохранить недоступна
else Button2.Enabled := True;
end;

procedure TCostNormoHour.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin

   case Key of
  '0'..'9', #8: ;

   #13: DBEdit3.SetFocus;
   else Key := #0;
   end;

end;

procedure TCostNormoHour.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
  '0'..'9', #8: ;

   #13: DBEdit4.SetFocus;
   else Key := #0;
   end;
end;

procedure TCostNormoHour.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
  '0'..'9', #8: ;
   #13: DBEdit5.SetFocus;
   else Key := #0;
   end;
end;

procedure TCostNormoHour.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
  '0'..'9', #8: ;
  #13: DBEdit6.SetFocus;
   else Key := #0;
   end;
end;

procedure TCostNormoHour.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
 case Key of
  '0'..'9', #8: ;
  #13: DBEdit7.SetFocus;
   else Key := #0;
   end;
end;

procedure TCostNormoHour.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
 case Key of
  '0'..'9', #8: ;
  #13: Button2.SetFocus;
   else Key := #0;
   end;
end;

procedure TCostNormoHour.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
   if (Length(DBEdit1.Text) = 0) or (Length(DBEdit2.Text) = 0) or
(Length(DBEdit3.Text) = 0) or (Length(DBEdit4.Text) = 0) or
(Length(DBEdit5.Text) = 0) or (Length(DBEdit6.Text) = 0)  or
(Length(DBEdit7.Text) = 0)
then Button2.Enabled := False // кнопка сохранить недоступна
else Button2.Enabled := True;
end;

end.

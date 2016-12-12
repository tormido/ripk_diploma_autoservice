unit NewZakaz1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  Data.DB, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ComCtrls;

type
  TNewZakaz = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    ADOQueryZakaz: TADOQuery;
    DataSourceZakaz: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBMemo1: TDBMemo;
    Button4: TButton;
    Button5: TButton;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DateTimePicker1: TDateTimePicker;
    DBEdit6: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    ADOQueryZPZ: TADOQuery;
    DBGrid2: TDBGrid;
    DataSourceUPZ: TDataSource;
    DataSourceZPZ: TDataSource;
    DBLookupComboBox4: TDBLookupComboBox;
    Button2: TButton;
    Button1: TButton;
    Label12: TLabel;
    Label14: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label15: TLabel;
    Button6: TButton;
    Button7: TButton;
    DBGrid3: TDBGrid;
    DBEdit3: TDBEdit;
    Button3: TButton;
    DBEdit1: TDBEdit;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Button8: TButton;
    Button9: TButton;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ADOQueryUPZ: TADOQuery;
    ADOQueryDelUsl: TADOQuery;
    DataSourceDelUsl: TDataSource;
    ADOQueryDelZP4: TADOQuery;
    DataSourceDelZp4: TDataSource;
    N8: TMenuItem;
    PDF1: TMenuItem;
    RTF1: TMenuItem;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure DBLookupComboBox5Click(Sender: TObject);
    procedure DBLookupComboBox4Click(Sender: TObject);
    procedure DBEdit6Change(Sender: TObject);
    procedure DBMemo1Change(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure PDF1Click(Sender: TObject);
    procedure RTF1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewZakaz: TNewZakaz;


implementation

{$R *.dfm}

uses mainform, find1, AddAuto1, AddUslugi1, ClientReg1, CostNormoHour1,
  NewWorker1, NewZap4ast1, Cats, OformZakaz1;




procedure TNewZakaz.Button1Click(Sender: TObject);
begin
if NewZakaz.ADOQueryUPZ.Modified then NewZakaz.ADOQueryUPZ.Post;
NewZakaz.ADOQueryUPZ.Active := false;
NewZakaz.ADOQueryUPZ.Active := true;
NewZakaz.ADOQueryUPZ.Append;
DBEdit4.Text := DBEdit1.Text;
NewZakaz.DBLookupComboBox4.SetFocus;

end;

procedure TNewZakaz.Button2Click(Sender: TObject);

var
  buttonSelected : Integer;
begin
  // Отображение диалога с подтверждением
  buttonSelected := MessageDlg('Вы уверены, что хотите удалить выбранную услугу из заказа?',mtError, [mbNo,mbYes], 0);

  // Показ типа выбранной кнопки
  if buttonSelected = mrYes     then
  begin
   with NewZakaz.ADOQueryUPZ do
    begin
    close;
    SQL.Clear;
    SQL.Add('Select * from uslugi_po_zakazu  WHERE zakaz_ID like'+ nz2+' ORDER BY upz_ID');
    open;
    end;
  NewZakaz.ADOQueryUPZ.Delete;
  with NewZakaz.ADOQueryUPZ do

    begin
    close;
    SQL.Clear;
    SQL.Add('Select uslugi_po_zakazu.*, works.workname, works.workCode, works.worknorm AS upz from (uslugi_po_zakazu left join works on (uslugi_po_zakazu.work_ID=works.work_ID)) WHERE zakaz_ID like'+ nz2+'');
    open;
    end;
  end;

  if buttonSelected = mrNo then ShowMessage('Отличный выбор');
//NewZakaz.ADOQueryDelUPZ.SQL.Text := 'Delete from uslugi_po_zakazu where zakaz_ID='+nz1+'';
//NewZakaz.ADOQueryDelUPZ.ExecSQL;
end;

procedure TNewZakaz.Button3Click(Sender: TObject);
begin
NewZakaz.ADOQueryZakaz.CancelUpdates;
NewZakaz.Close;
end;

procedure TNewZakaz.Button4Click(Sender: TObject);
begin
if NewZakaz.ADOQueryZakaz.Modified then NewZakaz.ADOQueryZakaz.Post;
NewZakaz.Close;
end;

procedure TNewZakaz.Button5Click(Sender: TObject);
var
  buttonSelected : Integer;
begin
  // Отображение диалога с подтверждением
  buttonSelected := MessageDlg('Вы уверены, что хотите удалить выбранный заказ?',mtError, [mbNo,mbYes], 0);

  // Показ типа выбранной кнопки
   if buttonSelected = mrYes     then
  begin
   NewZakaz.ADOQueryDelUsl.SQL.Text := 'delete from uslugi_po_zakazu where zakaz_ID='+nz1+'';
   NewZakaz.ADOQueryDelUsl.ExecSQL;
   NewZakaz.ADOQueryDelZP4.SQL.Text := 'delete from zap4asti_po_zakazu where zakaz_ID='+nz1+'';
   NewZakaz.ADOQueryDelZP4.ExecSQL;
   NewZakaz.ADOQueryZakaz.Delete;
  end;

  if buttonSelected = mrNo then ShowMessage('Отличный выбор');

end;

procedure TNewZakaz.Button6Click(Sender: TObject);
begin
if NewZakaz.ADOQueryZPZ.Modified then NewZakaz.ADOQueryZPZ.Post;
NewZakaz.ADOQueryZPZ.Active := false;
NewZakaz.ADOQueryZPZ.Active := true;
NewZakaz.ADOQueryZPZ.Append;
DBEdit5.Text := DBEdit1.Text;
NewZakaz.DBLookupComboBox5.SetFocus;
DBEdit3.Text := '1';
end;

procedure TNewZakaz.Button7Click(Sender: TObject);

var
  buttonSelected : Integer;
begin
  // Отображение диалога с подтверждением
  buttonSelected := MessageDlg('Вы уверены, что хотите удалить выбранную запчасть из заказа?',mtError, [mbNo,mbYes], 0);

  // Показ типа выбранной кнопки
  if buttonSelected = mrYes     then
  begin
   with NewZakaz.ADOQueryZPZ do
    begin
    close;
    SQL.Clear;
    SQL.Add('Select * from zap4asti_po_zakazu  WHERE zakaz_ID like'+ nz2+' ORDER BY upz_ID');
    open;
    end;
  NewZakaz.ADOQueryZPZ.Delete;
  with NewZakaz.ADOQueryZPZ do

    begin
    close;
    SQL.Clear;
    SQL.Add('Select zap4asti_po_zakazu.*, parts.partname, parts.partcode, parts.partcost AS zpz from (zap4asti_po_zakazu left join parts on (zap4asti_po_zakazu.part_ID=parts.part_ID)) WHERE zakaz_ID like'+ nz2+'');
    open;
    end;
  end;

  if buttonSelected = mrNo then ShowMessage('Отличный выбор');
//NewZakaz.ADOQueryDelUPZ.SQL.Text := 'Delete from uslugi_po_zakazu where zakaz_ID='+nz1+'';
//NewZakaz.ADOQueryDelUPZ.ExecSQL;
end;

procedure TNewZakaz.Button8Click(Sender: TObject);
begin
NewZakaz.DBEdit4.Text := NewZakaz.DBEdit1.Text;
if NewZakaz.ADOQueryUPZ.Modified then NewZakaz.ADOQueryUPZ.Post;
NewZakaz.Close;
end;

procedure TNewZakaz.Button9Click(Sender: TObject);
begin
 if NewZakaz.ADOQueryZPZ.Modified then NewZakaz.ADOQueryZPZ.Post;
 NewZakaz.Close;
end;

procedure TNewZakaz.DateTimePicker1Change(Sender: TObject);
begin
NewZakaz.DBEdit2.Text := DateToStr(NewZakaz.DateTimePicker1.DateTime);
end;

procedure TNewZakaz.DBEdit1Change(Sender: TObject);
begin
nz1 := ''+NewZakaz.DBEdit1.Text;
nz2 := QuotedStr(nz1);
NewZakaz.ADOQueryUPZ.Active := false;
NewZakaz.ADOQueryZPZ.Active := false;
NewZakaz.DBEdit4.Text := NewZakaz.DBEdit1.Text;
NewZakaz.DBEdit5.Text := NewZakaz.DBEdit1.Text;
with NewZakaz.ADOQueryUPZ do
  begin
  close;
  SQL.Clear;
  SQL.Add('Select uslugi_po_zakazu.*, works.workname, works.workCode, works.worknorm AS upz from (uslugi_po_zakazu left join works on (uslugi_po_zakazu.work_ID=works.work_ID)) WHERE zakaz_ID like'+ nz2+'');
  open;
  end;


with NewZakaz.ADOQueryZPZ do
  begin
  close;
  SQL.Clear;
  SQL.Add('Select zap4asti_po_zakazu.*, parts.partname, parts.partcode, parts.partcost AS zpz from (zap4asti_po_zakazu left join parts on (zap4asti_po_zakazu.part_ID=parts.part_ID)) WHERE zakaz_ID like'+ nz2+'');
  open;
  end;
NewZakaz.ADOQueryUPZ.Active := true;
NewZakaz.ADOQueryZPZ.Active := true;

 if (NewZakaz.DBEdit1.Text<>'') then
  begin
  NewZakaz.TabSheet2.TabVisible:= true;
  NewZakaz.TabSheet3.TabVisible := true;
  end;
end;

procedure TNewZakaz.DBEdit6Change(Sender: TObject);
begin
begin
if  (Length(DBMemo1.Text) = 0) or (Length(DBEdit6.Text) = 0)
then Button4.Enabled := False // кнопка сохранить недоступна
else Button4.Enabled := True;
end;
end;

procedure TNewZakaz.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
if (Length(DBEdit6.Text) > 8)
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
  #13: DBLookupComboBox3.SetFocus;
  else Key := #0;
  end;
end;

procedure TNewZakaz.DBLookupComboBox4Click(Sender: TObject);
begin
if NewZakaz.ADOQueryUPZ.Modified then NewZakaz.ADOQueryUPZ.Post;
NewZakaz.ADOQueryUPZ.Active := false;
NewZakaz.ADOQueryUPZ.Active := true;
DBEdit4.Text := DBEdit1.Text;
end;

procedure TNewZakaz.DBLookupComboBox5Click(Sender: TObject);
begin
if NewZakaz.ADOQueryZPZ.Modified then NewZakaz.ADOQueryZPZ.Post;
NewZakaz.ADOQueryZPZ.Active := false;
NewZakaz.ADOQueryZPZ.Active := true;
DBEdit5.Text := DBEdit1.Text;
end;

procedure TNewZakaz.DBMemo1Change(Sender: TObject);
begin
begin
if  (Length(DBMemo1.Text) = 0) or (Length(DBEdit6.Text) = 0)
then Button4.Enabled := False // кнопка сохранить недоступна
else Button4.Enabled := True;
end;
end;

procedure TNewZakaz.FormShow(Sender: TObject);
begin
Button4.Enabled := False ;
if NewZakaz.DBedit1.Text = '' then
  begin
  NewZakaz.TabSheet2.TabVisible := false;
  NewZakaz.TabSheet3.TabVisible := false;
  end

else
   begin
   NewZakaz.TabSheet2.TabVisible:= true;
   NewZakaz.TabSheet3.TabVisible := true;
   end;
end;



procedure TNewZakaz.N4Click(Sender: TObject);
begin
OformZakaz.frxReport1.ShowReport();
OformZakaz.frxReport1.Print;
end;

procedure TNewZakaz.N7Click(Sender: TObject);
begin
Catz.ShowModal;
end;

procedure TNewZakaz.N8Click(Sender: TObject);
begin
OformZakaz.Show;
OformZakaz.frxReport1.ShowReport();
end;

procedure TNewZakaz.PageControl1Change(Sender: TObject);
begin
if NewZakaz.ADOQueryZakaz.Modified then NewZakaz.ADOQueryZakaz.Post;
DBEdit4.Text := DBEdit1.Text;
DBEdit5.Text := DBEdit1.Text;
end;

procedure TNewZakaz.PDF1Click(Sender: TObject);
begin
OformZakaz.frxReport1.ShowReport();
 OformZakaz.frxReport1.Export(OformZakaz.frxPDFExport1);
end;

procedure TNewZakaz.RTF1Click(Sender: TObject);
begin
OformZakaz.frxReport1.ShowReport();
 OformZakaz.frxReport1.Export(OformZakaz.frxRTFExport1);
end;

end.

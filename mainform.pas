unit mainform;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.ActnMenus, Data.DB, Data.Win.ADODB, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    ADOConnection1: TADOConnection;
    N33: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Image1: TImage;
    procedure About1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Button1Enter(Sender: TObject);
    procedure Button1MouseEnter(Sender: TObject);
    procedure Button1MouseLeave(Sender: TObject);
    procedure Button1Exit(Sender: TObject);
    procedure Button2Enter(Sender: TObject);
    procedure Button2Exit(Sender: TObject);
    procedure Button3Enter(Sender: TObject);
    procedure Button3Exit(Sender: TObject);
    procedure Button3MouseEnter(Sender: TObject);
    procedure Button3MouseLeave(Sender: TObject);
    procedure Button4MouseLeave(Sender: TObject);
    procedure Button4MouseEnter(Sender: TObject);
    procedure Button4Enter(Sender: TObject);
    procedure Button4Exit(Sender: TObject);
    procedure Button2MouseEnter(Sender: TObject);
    procedure Button2MouseLeave(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Help1Click(Sender: TObject);





  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;
  MyGlobalUnitVar: Integer;
  nz1, nz2: string;

 implementation

{$R *.dfm}

uses oprogramme1, ClientReg1, AddAuto1, AddUslugi1, CostNormoHour1, NewWorker1, NewZap4ast1, OformZakaz1, Requisites1,
  History1, NewZakaz1, find1;








procedure TForm1.About1Click(Sender: TObject);
begin
Oprogramme.ShowModal;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
MyGlobalUnitVar:=1;
Poisk.ADOQueryFind.Active := false;
Poisk.ADOQueryFind.DataSource := ClientReg.DataSourceClient;
Poisk.ADOQueryFind.SQL.Clear;
Poisk.ADOQueryFind.SQL.Add('Select * from client order by fam');
poisk.Label1.Caption := 'Поиск клиента в базе';
Poisk.ADOQueryFind.Active := TRUE;
poisk.Show;
Poisk.Edit1.Clear;
Poisk.Edit1.SetFocus;
end;

procedure TForm1.Button1Enter(Sender: TObject);
begin
Button1.Font.Size := 20;
end;

procedure TForm1.Button1Exit(Sender: TObject);
begin
Button1.Font.Size := 15;
end;

procedure TForm1.Button1MouseEnter(Sender: TObject);
begin
Button1.Font.Size := 20;
end;

procedure TForm1.Button1MouseLeave(Sender: TObject);
begin
Button1.Font.Size := 15;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Poisk.ADOQueryFind.Active := false;
MyGlobalUnitVar:=2;
Poisk.ADOQueryFind.DataSource := AddAuto.DataSourceAuto;
Poisk.ADOQueryFind.SQL.Clear;
Poisk.ADOQueryFind.SQL.Add('Select * from auto order by autonumber');
poisk.Label1.Caption := 'Поиск автомобиля в базе';
poisk.Show;
Poisk.Edit1.Clear;
Poisk.Edit1.SetFocus;
end;

procedure TForm1.Button2Enter(Sender: TObject);
begin
Button2.Font.Size := 20;
end;

procedure TForm1.Button2Exit(Sender: TObject);
begin
     Button2.Font.Size := 15;
end;

procedure TForm1.Button2MouseEnter(Sender: TObject);
begin
Button2.Font.Size := 20;
end;

procedure TForm1.Button2MouseLeave(Sender: TObject);
begin
  Button2.Font.Size := 15;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Poisk.ADOQueryFind.Active := false;
Poisk.ADOQueryFind.DataSource := NewZakaz.DataSourceZakaz;
Poisk.ADOQueryFind.SQL.Clear;
Poisk.ADOQueryFind.SQL.Add('Select * from zakaz order by zakaz_ID');
MyGlobalUnitVar:=3;
poisk.Label1.Caption := 'Поиск заказа в базе';
poisk.Show;
Poisk.Edit1.Clear;
Poisk.Edit1.SetFocus;
end;

procedure TForm1.Button3Enter(Sender: TObject);
begin
Button3.Font.Size := 20;
end;

procedure TForm1.Button3Exit(Sender: TObject);
begin
Button3.Font.Size := 15;
end;

procedure TForm1.Button3MouseEnter(Sender: TObject);
begin
   Button3.Font.Size := 20;
end;

procedure TForm1.Button3MouseLeave(Sender: TObject);
begin
Button3.Font.Size := 15;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Poisk.ADOQueryFind.Active := false;
MyGlobalUnitVar:=4;
Poisk.ADOQueryFind.DataSource := NewZap4ast.DataSourceZap4asti;
Poisk.ADOQueryFind.SQL.Clear;
Poisk.ADOQueryFind.SQL.Add('Select * from parts order by part_ID');
poisk.Label1.Caption := 'Поиск запчасти в базе';
poisk.Show;
Poisk.Edit1.Clear;
Poisk.Edit1.SetFocus;
end;

procedure TForm1.Button4Enter(Sender: TObject);
begin
Button4.Font.Size := 20;
end;

procedure TForm1.Button4Exit(Sender: TObject);
begin
Button4.Font.Size := 15;
end;

procedure TForm1.Button4MouseEnter(Sender: TObject);
begin
Button4.Font.Size := 20;
end;

procedure TForm1.Button4MouseLeave(Sender: TObject);
begin
Button4.Font.Size := 15;
end;



procedure TForm1.FormCreate(Sender: TObject);
begin
MessageDlg('Добро пожаловать в систему учета заказов автосервиса',mtCustom,[mbOk],0);
end;

procedure TForm1.Help1Click(Sender: TObject);
begin
HtmlHelp(Handle,'autoservis-hlp.chm',HH_DISPLAY_TOPIC,0)
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
oprogramme.Show;
end;

procedure TForm1.N10Click(Sender: TObject);
begin
History.ShowModal;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
AddAuto.ADOQueryAuto.CancelUpdates;
AddAuto.ADOQueryAuto.Append;
AddAuto.Caption := 'Добавление нового автомобиля';
AddAuto.DBEdit6.Text := DateToStr(Date());
AddAuto.DBGrid1.Visible := False;
AddAuto.Button3.Visible := False;
AddAuto.Height := 340;
AddAuto.ShowModal;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
AddAuto.Caption := 'Редактирование автомобиля';
AddAuto.DBGrid1.Visible := true;
AddAuto.Button3.Visible := true;
AddAuto.Height := 570;
AddAuto.ShowModal;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
ClientReg.ADOQueryClient.CancelUpdates;
ClientReg.ADOQueryClient.Append;
ClientReg.Caption := 'Добавление нового клиента';
ClientReg.DBGrid1.Visible := False;
ClientReg.Button6.Visible := False;
ClientReg.Height := 350;
ClientReg.Show;
Form1.Hide;
end;

procedure TForm1.N13Click(Sender: TObject);
begin
ClientReg.Caption := 'Редактирование клиента';
ClientReg.DBGrid1.Visible := true;
ClientReg.Button6.Visible := true;
ClientReg.Height := 600;
ClientReg.Show;
Form1.Hide;
end;

procedure TForm1.N14Click(Sender: TObject);
begin
NewZakaz.ADOQueryZakaz.CancelUpdates;
NewZakaz.ADOQueryZakaz.Append;    // новая запись в таблицу заказ
NewZakaz.ADOQueryZPZ.CancelUpdates;
NewZakaz.ADOQueryZPZ.Append;         // новая запись в таблицу запчасти по заказу
NewZakaz.ADOQueryUPZ.CancelUpdates;
NewZakaz.ADOQueryUPZ.Append;         // новая запись в таблицу услуги по заказу
NewZakaz.Caption := 'Добавление нового заказа';
NewZakaz.DBEdit2.Text := DateToStr(Date());
NewZakaz.DBGrid1.Visible := False;
NewZakaz.Button5.Visible := False;
NewZakaz.Panel2.Visible := false;
NewZakaz.Height := 300;
NewZakaz.ShowModal;

end;

procedure TForm1.N19Click(Sender: TObject);
begin
Requisites.ShowModal;
end;

procedure TForm1.N21Click(Sender: TObject);
begin
NewZakaz.ADOQueryZakaz.Append;
NewZakaz.Caption := 'Редактирование/оформление заказа';
NewZakaz.DBGrid1.Visible := true;
NewZakaz.Button5.Visible := true;
NewZakaz.Panel2.Visible := true;
NewZakaz.Height := 660;
NewZakaz.ShowModal;
end;

procedure TForm1.N22Click(Sender: TObject);
begin
NewWorker.ADOQueryWorker.CancelUpdates;
NewWorker.ADOQueryWorker.Active := false;
NewWorker.ADOQueryWorker.Active := true;
NewWorker.ADOQueryWorker.Append;
NewWorker.DBEdit3.Text := DateToStr(Date());
NewWorker.Caption := 'Добавление нового сотрудника';
NewWorker.DBGrid1.Visible := False;
NewWorker.Button3.Visible := False;
NewWorker.Height := 260;
NewWorker.ShowModal;
end;

procedure TForm1.N23Click(Sender: TObject);
begin
NewWorker.Caption := 'Редактирование сотрудника';
NewWorker.DBGrid1.Visible := true;
NewWorker.Button3.Visible := true;
NewWorker.Height := 460;
NewWorker.ShowModal;
end;

procedure TForm1.N24Click(Sender: TObject);
begin
NewZap4ast.ADOQueryZap4asti.CancelUpdates;
NewZap4ast.ADOQueryZap4asti.Append;
NewZap4ast.N1.Visible := False;
NewZap4ast.Caption := 'Добавление новой запчасти';
NewZap4ast.DBGrid1.Visible := False;
NewZap4ast.DBEdit4.Visible := False;
NewZap4ast.Label4.Visible := False;
NewZap4ast.Button3.Visible := False;
NewZap4ast.Height := 280;
NewZap4ast.DBEdit4.Text := '0';
NewZap4ast.ShowModal;


end;

procedure TForm1.N25Click(Sender: TObject);
begin
NewZap4ast.N1.Visible := True;
NewZap4ast.Caption := 'Редактирование запчасти';
NewZap4ast.DBGrid1.Visible := true;
NewZap4ast.DBEdit4.Visible := true;
NewZap4ast.Label4.Visible := true;
NewZap4ast.Button3.Visible := true;
NewZap4ast.Height := 540;
NewZap4ast.ShowModal;
end;

procedure TForm1.N26Click(Sender: TObject);
begin
AddUslugi.ADOQueryWork.CancelUpdates;
AddUslugi.N1.Visible := False;
AddUslugi.ADOQueryWork.Append;
AddUslugi.Caption := 'Добавление новой услуги';
AddUslugi.DBGrid1.Visible := False;
AddUslugi.Height := 240;
AddUslugi.Button3.Visible := False;
AddUslugi.ShowModal;

end;

procedure TForm1.N27Click(Sender: TObject);
begin
AddUslugi.N1.Visible := True;
AddUslugi.Caption := 'Редактирование услуги';
AddUslugi.DBGrid1.Visible := true;
AddUslugi.Height := 465;
AddUslugi.Button3.Visible := true;
AddUslugi.ShowModal;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.N31Click(Sender: TObject);
begin
CostNormoHour.Caption := 'Просмотр текущих показателей расчета стоимости работ';
CostNormoHour.DateTimePicker1.Visible := false ;
CostNormoHour.DBEdit1.Visible := true;
CostNormoHour.DBEdit2.Enabled := false ;
CostNormoHour.DBEdit3.Enabled := false ;
CostNormoHour.DBEdit4.Enabled := false ;
CostNormoHour.DBEdit5.Enabled := false ;
CostNormoHour.DBEdit6.Enabled := false ;
CostNormoHour.DBEdit7.Enabled := false ;
CostNormoHour.Button1.Caption:= 'ОК' ;
CostNormoHour.Button2.Visible := false ;
CostNormoHour.ShowModal;
end;

procedure TForm1.N32Click(Sender: TObject);
begin
CostNormoHour.ADOQueryNormo4as.Append;
CostNormoHour.DateTimePicker1.Visible := true;
CostNormoHour.DBEdit1.Visible := false;
CostNormoHour.DBEdit1.Text := DateToStr(Date());
CostNormoHour.Caption := 'Введение новых показателей расчета стоимости работ';
CostNormoHour.DBEdit2.Enabled := true ;
CostNormoHour.DBEdit3.Enabled := true ;
CostNormoHour.DBEdit4.Enabled := true ;
CostNormoHour.DBEdit5.Enabled := true ;
CostNormoHour.DBEdit6.Enabled := true ;
CostNormoHour.DBEdit7.Enabled := true ;
CostNormoHour.Button1.Caption:= 'Отмена' ;
CostNormoHour.Button2.Visible := true ;
CostNormoHour.ShowModal;
end;

procedure TForm1.N33Click(Sender: TObject);
begin
MessageDlg('Опция доступна в платной версии',
mtInformation,[mbOk],0);
end;



procedure TForm1.N7Click(Sender: TObject);
begin
 MessageDlg('Опция доступна в платной версии',
mtInformation,[mbOk],0);
end;

procedure TForm1.N8Click(Sender: TObject);
begin
Poisk.ADOQueryFind.Active := false;
MyGlobalUnitVar:=4;
Poisk.ADOQueryFind.DataSource := NewZap4ast.DataSourceZap4asti;
Poisk.ADOQueryFind.SQL.Clear;
Poisk.ADOQueryFind.SQL.Add('Select * from parts order by part_ID');
poisk.Label1.Caption := 'Поиск запчасти в базе';
poisk.Show;
Poisk.Edit1.Clear;
Poisk.Edit1.SetFocus;
end;

end.
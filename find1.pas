unit find1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Data.Win.ADODB, Vcl.Menus;

type
  TPoisk = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    ADOQueryFind: TADOQuery;
    DataSourceFind: TDataSource;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure Edit1Change(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  Poisk: TPoisk;

implementation

{$R *.dfm}

uses mainform, AddAuto1, ClientReg1, NewZakaz1, NewZap4ast1 ;

procedure TPoisk.Edit1Change(Sender: TObject);

var help1, help2, add1, add2, add3, add4: string;

begin
help1 := '%'+Poisk.Edit1.Text+'%';
help2 := QuotedStr(help1);
add1 := 'Select * from client WHERE client_ID like'+ help2+' or fam like'+help2+'order by fam';
add2 := 'Select * from auto WHERE autonumber like'+ help2+' or VIN like'+help2+'order by autonumber';
add3 := 'Select * from zakaz WHERE zakaz_ID like'+ help2+' or dateof like'+help2+'order by zakaz_ID';
add4 := 'Select * from parts WHERE part_ID like'+ help2+' or partname like'+help2+' or partcode like'+help2+'order by part_ID';
Poisk.ADOQueryFind.Active := false;
with Poisk.ADOQueryFind do
  begin
  close;
  SQL.Clear;
    case MyGlobalUnitVar of
    1: SQL.Add(add1);
    2: SQL.Add(add2);
    3: SQL.Add(add3);
    4: SQL.Add(add4);
    end;
   open;
  end;
poisk.ADOQueryFind.Active := true;

end;


procedure TPoisk.N1Click(Sender: TObject);
begin
Poisk.ADOQueryFind.Active := false;
with Poisk.ADOQueryFind do
  begin
  close;
  SQL.Clear;
  end;
Form1.Button1.Click;
end;

procedure TPoisk.N2Click(Sender: TObject);
begin
Poisk.ADOQueryFind.Active := false;
with Poisk.ADOQueryFind do
  begin
  close;
  SQL.Clear;
  end;
Form1.Button2.Click;
end;

procedure TPoisk.N3Click(Sender: TObject);
begin
Poisk.ADOQueryFind.Active := false;
with Poisk.ADOQueryFind do
  begin
  close;
  SQL.Clear;
  end;
Form1.Button3.Click;
end;

procedure TPoisk.N4Click(Sender: TObject);
begin
Poisk.ADOQueryFind.Active := false;
with Poisk.ADOQueryFind do
  begin
  close;
  SQL.Clear;
  end;
Form1.Button4.Click;
end;

end.

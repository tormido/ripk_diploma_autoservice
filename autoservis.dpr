program autoservis;

uses
  Vcl.Forms,
  mainform in 'mainform.pas' {Form1},
  oprogramme1 in 'oprogramme1.pas' {oprogramme},
  Vcl.Themes,
  Vcl.Styles,
  ClientReg1 in 'ClientReg1.pas' {ClientReg},
  OformZakaz1 in 'OformZakaz1.pas' {OformZakaz},
  AddAuto1 in 'AddAuto1.pas' {AddAuto},
  NewWorker1 in 'NewWorker1.pas' {NewWorker},
  AddUslugi1 in 'AddUslugi1.pas' {AddUslugi},
  NewZap4ast1 in 'NewZap4ast1.pas' {NewZap4ast},
  Requisites1 in 'Requisites1.pas' {Requisites},
  CostNormoHour1 in 'CostNormoHour1.pas' {CostNormoHour},
  History1 in 'History1.pas' {History},
  NewZakaz1 in 'NewZakaz1.pas' {NewZakaz},
  find1 in 'find1.pas' {Poisk},
  Cats in 'Cats.pas' {Catz};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Программа учета заказов автосервиса';
  TStyleManager.TrySetStyle('Cyan Dusk');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Toprogramme, oprogramme);
  Application.CreateForm(TClientReg, ClientReg);
  Application.CreateForm(TOformZakaz, OformZakaz);
  Application.CreateForm(TAddAuto, AddAuto);
  Application.CreateForm(TNewWorker, NewWorker);
  Application.CreateForm(TAddUslugi, AddUslugi);
  Application.CreateForm(TNewZap4ast, NewZap4ast);
  Application.CreateForm(TRequisites, Requisites);
  Application.CreateForm(TCostNormoHour, CostNormoHour);
  Application.CreateForm(THistory, History);
  Application.CreateForm(TNewZakaz, NewZakaz);
  Application.CreateForm(TPoisk, Poisk);
  Application.CreateForm(TCatz, Catz);
  Application.Run;
end.

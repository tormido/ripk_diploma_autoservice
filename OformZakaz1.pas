unit OformZakaz1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  frxClass, frxPreview, frxDBSet, frxExportRTF, frxExportPDF;

type
  TOformZakaz = class(TForm)
    fastr: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    frxDBDatasetZakaz: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPreview1: TfrxPreview;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    frxDBDatasetZap4: TfrxDBDataset;
    frxDBDatasetUsl: TfrxDBDataset;
    N7: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OformZakaz: TOformZakaz;

implementation

{$R *.dfm}

uses mainform, NewZakaz1;

end.

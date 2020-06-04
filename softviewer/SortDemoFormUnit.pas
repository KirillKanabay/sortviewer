unit SortDemoFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids;

type
  TSortDemoForm = class(TForm)
    DemoLabel: TLabel;
    SortName: TLabel;
    SubmitCountButton: TPanel;
    GenDataButton: TPanel;
    SortDataButton: TPanel;
    CountDataLabel: TLabel;
    CountDataEdit: TEdit;
    MaxCountDataLabel: TLabel;
    CheckBox1: TCheckBox;
    StringGrid1: TStringGrid;
    CheckDataInd: TShape;
    SwapDataInd: TShape;
    SortedDataInd: TShape;
    CheckDataLabel: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure SetDemoLabel();
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SortDemoForm: TSortDemoForm;

implementation

{$R *.dfm}
uses
  SortInfoFormUnit;

procedure TSortDemoForm.FormShow(Sender: TObject);
begin
   SetDemoLabel();
end;

procedure TSortDemoForm.SetDemoLabel();
begin
  SortName.Caption:=SortsName[SortID];
  {Центровка надписи}
  SortName.Left:=(SortDemoForm.Width-SortName.Width) div 2;
end;

end.

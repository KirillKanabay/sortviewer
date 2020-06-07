unit CodeFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Vcl.ComCtrls;

type
  TSortCodeForm = class(TForm)
    LangTabs: TTabControl;
    SortCode: TWebBrowser;
    procedure LangTabsChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SortCodeForm: TSortCodeForm;

implementation

{$R *.dfm}

uses
  SortInfoFormUnit;

procedure TSortCodeForm.FormCreate(Sender: TObject);
begin
   SortCode.Silent:=true;
end;

procedure TSortCodeForm.FormShow(Sender: TObject);
begin
  LangTabsChange(Sender);
end;

procedure TSortCodeForm.LangTabsChange(Sender: TObject);
begin
  {
    0 - Pascal,
    1 - C++.
  }
  case LangTabs.TabIndex of
    0:
      SortCode.Navigate(ExtractFilePath(paramstr(0))+
          'SortCodes/'+SortsPathsName[SortID]+'/index.html');
    1:
      SortCode.Navigate(ExtractFilePath(paramstr(0))+
          'SortCodes/'+SortsPathsName[SortID]+'/index.html');
  end;
end;

end.

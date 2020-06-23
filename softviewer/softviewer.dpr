program softviewer;

uses
  Vcl.Forms,
  MainFormUnit in 'MainFormUnit.pas' {MainForm},
  SplashFormUnit in 'SplashFormUnit.pas' {SplashScreen},
  Utils in 'Utils.pas',
  ProductInfoFormUnit in 'ProductInfoFormUnit.pas' {ProductInfoForm},
  SortInfoFormUnit in 'SortInfoFormUnit.pas' {SortInfoForm},
  DemoFormUnit in 'DemoFormUnit.pas' {SortDemoForm},
  CodeFormUnit in 'CodeFormUnit.pas' {SortCodeForm},
  DesignUnit in 'DesignUnit.pas',
  Sorts in 'Sorts.pas',
  Vcl.Themes,
  Vcl.Styles,
  IterationsSortFormUnit in 'IterationsSortFormUnit.pas' {IterationsSortForm};

{$R *.res}
{$R res/gilroyfont.res}
{$R res/helppic.res} // ����������� ������� ������ "��������������� ����"
{$R res/homepic.res} // ����������� ������� ������ "�������� �����"

begin
  Application.Initialize;

  {���������� �������� ���� �� ������� ������}
  SplashForm:=TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.Update;
  while SplashForm.Timer1.Enabled do
    Application.ProcessMessages;

  {������� ������� �����}
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TProductInfoForm, ProductInfoForm);
  Application.CreateForm(TSortInfoForm, SortInfoForm);
  Application.CreateForm(TSortDemoForm, SortDemoForm);
  Application.CreateForm(TSortCodeForm, SortCodeForm);
  Application.CreateForm(TIterationsSortForm, IterationsSortForm);
  {�������� ��������}
  SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.

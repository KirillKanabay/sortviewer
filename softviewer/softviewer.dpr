program softviewer;

uses
  Vcl.Forms,
  MainFormUnit in 'MainFormUnit.pas' {MainForm},
  SplashFormUnit in 'SplashFormUnit.pas' {SplashScreen};

{$R *.res}

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
  {�������� ��������}
  SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.

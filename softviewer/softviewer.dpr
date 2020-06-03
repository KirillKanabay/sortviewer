program softviewer;

uses
  Vcl.Forms,
  MainFormUnit in 'MainFormUnit.pas' {MainForm},
  SplashFormUnit in 'SplashFormUnit.pas' {SplashScreen},
  Style in 'Style.pas';

{$R *.res}
{$R res/gilroyfont.res}
{$R res/helppic.res}

begin
  Application.Initialize;

  {Показываем заставку пока не истечет таймер}
  SplashForm:=TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.Update;
  while SplashForm.Timer1.Enabled do
    Application.ProcessMessages;

  {Создаем главную форму}
  Application.CreateForm(TMainForm, MainForm);
  {Скрываем заставку}
  SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.

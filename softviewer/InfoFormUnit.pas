unit InfoFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Style;

type
  TInfoForm = class(TForm)
    ProductName: TLabel;
    ProductLogo: TImage;
    ProductDescription2: TLabel;
    ProductDiscription1: TLabel;
    ProductInfoButton: TPanel;
    ProductVersionLabel: TLabel;
    DeveloperNameLabel: TLabel;
    DeveloperEmailLabel: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InfoForm: TInfoForm;

implementation

{$R *.dfm}

procedure TInfoForm.FormCreate(Sender: TObject);
begin
  ProductVersionLabel.Caption:=ProductVersionLabel.Caption+' '+ProductVersion;
  DeveloperNameLabel.Caption:=DeveloperNameLabel.Caption+' '+DeveloperName;
  DeveloperEmailLabel.Caption:=DeveloperEmailLabel.Caption+' '+DeveloperEmail;
end;

end.

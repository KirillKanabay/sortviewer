unit ProductInfoFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Utils;

type
  TProductInfoForm = class(TForm)
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
  ProductInfoForm: TProductInfoForm;

implementation

{$R *.dfm}

procedure TProductInfoForm.FormCreate(Sender: TObject);
begin
  ProductVersionLabel.Caption:=ProductVersionLabel.Caption+' '+ProductVersion;
  DeveloperNameLabel.Caption:=DeveloperNameLabel.Caption+' '+DeveloperName;
  DeveloperEmailLabel.Caption:=DeveloperEmailLabel.Caption+' '+DeveloperEmail;
end;

end.

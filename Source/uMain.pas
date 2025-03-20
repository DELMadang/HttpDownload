unit uMain;

interface

uses
  System.SysUtils,
  System.Classes,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    eURL: TEdit;
    btnDownload: TButton;
    eFileName: TEdit;
    procedure btnDownloadClick(Sender: TObject);
  private
    procedure Download(const AUrl: string; const AFileName: string);
  public
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  System.Net.HttpClient;

procedure TfrmMain.btnDownloadClick(Sender: TObject);
begin
  Download(eUrl.Text, eFileName.Text);
end;

procedure TfrmMain.Download(const AUrl, AFileName: string);
begin
  var LHttp := THttpClient.Create;
  var LStream := TFileStream.Create(AFileName, fmCreate);
  try
    LHttp.Get(AUrl, LStream);
  finally
    LStream.Free;
    LHttp.Free;
  end;
end;

end.

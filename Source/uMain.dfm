object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Http Downloader'
  ClientHeight = 125
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object eURL: TEdit
    Left = 8
    Top = 24
    Width = 608
    Height = 23
    TabOrder = 0
    Text = 
      'https://sir.kr/data/file/cm_humor/3535243533_d5CszFYA_ad01092228' +
      'b0c24472e58dc3825815b9706c1fb4.mp4'
  end
  object btnDownload: TButton
    Left = 541
    Top = 92
    Width = 75
    Height = 25
    Caption = #45796#50868#47196#46300
    TabOrder = 1
    OnClick = btnDownloadClick
  end
  object eFileName: TEdit
    Left = 8
    Top = 56
    Width = 608
    Height = 23
    TabOrder = 2
    Text = 'D:\temp\movie.mp4'
  end
end

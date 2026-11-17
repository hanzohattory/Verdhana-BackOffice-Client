object frmOTCConfirm: TfrmOTCConfirm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'OTC Confirm'
  ClientHeight = 217
  ClientWidth = 379
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 168
    Width = 379
    Height = 49
    Align = alBottom
    BevelKind = bkSoft
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 139
    object cxButton1: TcxButton
      Left = 9
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 173
    Height = 138
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object lbCustCode: TLabel
      Left = 13
      Top = 40
      Width = 150
      Height = 13
      AutoSize = False
      Caption = 'lbCustCode'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbStockCode: TLabel
      Left = 13
      Top = 59
      Width = 150
      Height = 13
      AutoSize = False
      Caption = 'lbStockCode'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbQty: TLabel
      Left = 13
      Top = 78
      Width = 150
      Height = 13
      AutoSize = False
      Caption = 'lbQty'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCCYAmount: TLabel
      Left = 13
      Top = 97
      Width = 150
      Height = 13
      AutoSize = False
      Caption = 'lbCCYAmount'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbSID: TLabel
      Left = 13
      Top = 2
      Width = 150
      Height = 13
      AutoSize = False
      Caption = 'lbSID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbInstrType: TLabel
      Left = 13
      Top = 21
      Width = 150
      Height = 13
      AutoSize = False
      Caption = 'lbInstrType'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbDateTime: TLabel
      Left = 13
      Top = 116
      Width = 150
      Height = 13
      AutoSize = False
      Caption = 'lbCCYAmount'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 187
    Top = 8
    Width = 185
    Height = 138
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 9
      Top = 12
      Width = 94
      Height = 13
      Caption = 'Was confirmed with'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 9
      Top = 63
      Width = 64
      Height = 13
      Caption = 'Confirmed By'
    end
    object txtConfirmWith: TcxTextEdit
      Left = 7
      Top = 31
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Text = 'txtConfirmWith'
      Width = 165
    end
    object txtConfirmBy: TcxTextEdit
      Left = 7
      Top = 82
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Text = 'txtConfirmBy'
      Width = 165
    end
  end
end

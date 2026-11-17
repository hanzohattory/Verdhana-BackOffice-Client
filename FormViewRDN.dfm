inherited frmViewRDN: TfrmViewRDN
  Caption = 'RDN Bank'
  ExplicitWidth = 433
  ExplicitHeight = 211
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited cxDBLookupComboBox1: TcxDBLookupComboBox
      TabStop = False
    end
    inherited cxDBLookupComboBox2: TcxDBLookupComboBox
      TabStop = False
      Properties.ReadOnly = True
      Style.Color = 16777151
    end
    inherited cxDBTextEdit4: TcxDBTextEdit
      TabStop = False
      Properties.ReadOnly = True
      Style.Color = 16777151
    end
  end
  inherited dsRDNRequest: TDataSource
    Left = 327
    Top = 138
  end
end

inherited frmVD5ConfigEditor: TfrmVD5ConfigEditor
  Caption = 'VD5 Configs'
  ClientHeight = 398
  ClientWidth = 757
  ExplicitWidth = 773
  ExplicitHeight = 437
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 757
    Height = 308
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 329
    Width = 757
    inherited dbNavLog: TDBNavigator
      Left = 643
      Hints.Strings = ()
      ExplicitLeft = 643
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 378
    Width = 757
  end
  inherited tabEditorData: TTabSet
    Top = 308
    Width = 757
  end
  inherited dsSubject: TDataSource
    Left = 648
    Top = 208
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 648
    Top = 264
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsVD5Config: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'VD5'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'BARIS'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMKBD_qryVD5Config'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 648
    Top = 152
    object cdsVD5ConfigVD5: TStringField
      FieldName = 'VD5'
      Required = True
      Size = 5
    end
    object cdsVD5ConfigBARIS: TIntegerField
      FieldName = 'BARIS'
      Required = True
    end
    object cdsVD5ConfigKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Required = True
      Size = 200
    end
    object cdsVD5ConfigISGRUP: TBooleanField
      FieldName = 'ISGRUP'
    end
    object cdsVD5ConfigKELOMPOK: TIntegerField
      FieldName = 'KELOMPOK'
    end
    object cdsVD5ConfigISTRANS: TBooleanField
      FieldName = 'ISTRANS'
    end
    object cdsVD5ConfigEDITED: TStringField
      FieldName = 'EDITED'
      Size = 1
    end
    object cdsVD5ConfigID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object cdsVD5ConfigVD5_1: TStringField
      FieldName = 'VD5_1'
      ReadOnly = True
      Size = 5
    end
    object cdsVD5ConfigBARIS_1: TIntegerField
      FieldName = 'BARIS_1'
      ReadOnly = True
    end
    object cdsVD5ConfigCOACODE: TStringField
      FieldName = 'COACODE'
      ReadOnly = True
    end
  end
end

inherited frmGLWithBankRecon: TfrmGLWithBankRecon
  Caption = 'GL With Bank Recon'
  OnShow = FormShow
  ExplicitWidth = 607
  ExplicitHeight = 374
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 607
    Height = 46
    Align = alTop
    TabOrder = 0
    object dtTransDate: TcxDateEdit
      Left = 97
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.OnCloseUp = dtTransDatePropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Transaction Date'
      Parent = dxLayoutControl1Group_Root
      Control = dtTransDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 46
    Width = 607
    Height = 328
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 60
    ExplicitTop = 147
    ExplicitWidth = 250
    ExplicitHeight = 200
    object gvwGLWithBankRecon: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsGLWithBankRecon
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwGLWithBankReconGLACCOUNTCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GLACCOUNTCODE'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwGLWithBankReconGLACCOUNTNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GLACCOUNTNAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwGLWithBankReconACCBANKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCBANKCODE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwGLWithBankReconBNCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNCODE'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwGLWithBankReconBANKACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwGLWithBankReconBANK_CCY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANK_CCY'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwGLWithBankReconBANK_BALANCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANK_BALANCE'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwGLWithBankReconGL_CCY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GL_CCY'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwGLWithBankReconGL_BALANCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GL_BALANCE'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwGLWithBankReconDIFFERENT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DIFFERENT'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwGLWithBankRecon
    end
  end
  inherited ActionPermission: TNActionPermission
    ActionList = ActionList1
  end
  object ActionList1: TActionList
    Left = 297
    Top = 114
  end
  object cdsGLWithBankRecon: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmAccounting_qryGLwithBANKRekon'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 369
    Top = 123
    object cdsGLWithBankReconGLACCOUNTCODE: TStringField
      DisplayLabel = 'GL Account Code'
      FieldName = 'GLACCOUNTCODE'
      Size = 30
    end
    object cdsGLWithBankReconGLACCOUNTNAME: TStringField
      DisplayLabel = 'GL Account Name'
      FieldName = 'GLACCOUNTNAME'
      Size = 150
    end
    object cdsGLWithBankReconACCBANKCODE: TStringField
      DisplayLabel = 'Account Bank Code'
      FieldName = 'ACCBANKCODE'
    end
    object cdsGLWithBankReconBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      FieldName = 'BNCODE'
      Size = 10
    end
    object cdsGLWithBankReconBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No'
      FieldName = 'BANKACCNO'
    end
    object cdsGLWithBankReconBANK_CCY: TStringField
      DisplayLabel = 'Bank Currency'
      FieldName = 'BANK_CCY'
      Size = 5
    end
    object cdsGLWithBankReconBANK_BALANCE: TFloatField
      DisplayLabel = 'Bank Balance'
      FieldName = 'BANK_BALANCE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsGLWithBankReconGL_CCY: TStringField
      DisplayLabel = 'GL Currency'
      FieldName = 'GL_CCY'
      Size = 5
    end
    object cdsGLWithBankReconGL_BALANCE: TFloatField
      DisplayLabel = 'GL Balance'
      FieldName = 'GL_BALANCE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsGLWithBankReconDIFFERENT: TFloatField
      DisplayLabel = 'Different'
      FieldName = 'DIFFERENT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object dsGLWithBankRecon: TDataSource
    DataSet = cdsGLWithBankRecon
    Left = 372
    Top = 171
  end
end

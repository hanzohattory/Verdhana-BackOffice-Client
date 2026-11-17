inherited frmCOBKSEIStatus: TfrmCOBKSEIStatus
  Caption = 'KSEI Sub Rek Opening Request'
  ExplicitWidth = 607
  ExplicitHeight = 374
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [0]
    Left = 0
    Top = 0
    Width = 607
    Height = 374
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 128
    ExplicitTop = 152
    ExplicitWidth = 250
    ExplicitHeight = 200
    object gvwKSEIStatus: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      Bands = <
        item
        end>
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwKSEIStatus
    end
  end
  object cdsKSEIStatus: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmClientManagement_qryKSEIRequest'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 152
    Top = 96
  end
end

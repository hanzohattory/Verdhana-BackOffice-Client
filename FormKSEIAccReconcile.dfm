inherited frmKSEIAccReconcile: TfrmKSEIAccReconcile
  Caption = 'KSEI Account Reconcile'
  ClientWidth = 922
  ExplicitWidth = 922
  TextHeight = 13
  object cxPageControl1: TcxPageControl [0]
    Left = 0
    Top = 0
    Width = 922
    Height = 374
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tabSIDRecon
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 370
    ClientRectLeft = 4
    ClientRectRight = 918
    ClientRectTop = 24
    object tabSIDRecon: TcxTabSheet
      Caption = 'SID Reconcile'
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 49
        Width = 914
        Height = 297
        Align = alClient
        PopupMenu = popDocking
        TabOrder = 0
        object gvwKSEIAcc: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsKSEIAccRecon
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'Record Count: #,##0'
              Kind = skCount
              FieldName = 'X'
              Column = gvwKSEIAccX
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GridLineColor = 16777088
          OptionsView.GroupByBox = False
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.Indicator = True
          Styles.ContentOdd = dmGlobal.BlueToggle2
          Bands = <
            item
              Caption = 'Nayaga Data'
              HeaderAlignmentHorz = taLeftJustify
            end
            item
              Caption = 'KSEI Data'
              HeaderAlignmentHorz = taLeftJustify
            end>
          object gvwKSEIAccCUSTODYACCNO: TcxGridDBBandedColumn
            Caption = 'Custody Accno'
            DataBinding.FieldName = 'CUSTODYACCNO'
            Width = 109
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwKSEIAccKSEI_SID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'KSEI_SID'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwKSEIAccACCNAME: TcxGridDBBandedColumn
            Caption = 'Name'
            DataBinding.FieldName = 'ACCNAME'
            Width = 254
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwKSEIAccSTAT: TcxGridDBBandedColumn
            Caption = 'Stat'
            DataBinding.FieldName = 'STAT'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwKSEIAccX: TcxGridDBBandedColumn
            DataBinding.FieldName = 'X'
            Width = 53
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwKSEIAccCUSTODYCODE: TcxGridDBBandedColumn
            Caption = 'Custody Code'
            DataBinding.FieldName = 'CUSTODYCODE'
            Width = 88
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwKSEIAccCUSTDOYNAME: TcxGridDBBandedColumn
            Caption = 'Custody Name'
            DataBinding.FieldName = 'CUSTODYNAME'
            Width = 206
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwKSEIAccSUBREKNO: TcxGridDBBandedColumn
            Caption = 'Subrek NO'
            DataBinding.FieldName = 'SUBREKNO'
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwKSEIAccSUBREKTYPE: TcxGridDBBandedColumn
            Caption = 'Subrek Type'
            DataBinding.FieldName = 'SUBREKTYPE'
            Width = 149
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwKSEIAccSUBREKNAME: TcxGridDBBandedColumn
            Caption = 'Subrek Name'
            DataBinding.FieldName = 'SUBREKNAME'
            Width = 292
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwKSEIAccSUBREKSTATUS: TcxGridDBBandedColumn
            Caption = 'Subrek Status'
            DataBinding.FieldName = 'SUBREKSTATUS'
            Width = 86
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwKSEIAccSID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SID'
            Position.BandIndex = 1
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = gvwKSEIAcc
        end
      end
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 914
        Height = 49
        Align = alTop
        TabOrder = 1
        object txtKSEIAccFile: TcxButtonEdit
          Left = 133
          Top = 10
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = txtKSEIAccFilePropertiesButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 0
          Width = 500
        end
        object cxButton2: TcxButton
          Left = 639
          Top = 10
          Width = 100
          Height = 25
          Action = actUploadData
          TabOrder = 1
        end
        object cxButton1: TcxButton
          Left = 745
          Top = 10
          Width = 98
          Height = 25
          Action = actViewData
          TabOrder = 2
        end
        object dxLayoutGroup1: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          Parent = dxLayoutControl1Group3
          CaptionOptions.Text = 'Import KSEI Account File'
          Control = txtKSEIAccFile
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 500
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          Parent = dxLayoutControl1Group3
          CaptionOptions.Visible = False
          Control = cxButton2
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Parent = dxLayoutControl1Group3
          CaptionOptions.Visible = False
          Control = cxButton1
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 98
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Group3: TdxLayoutGroup
          Parent = dxLayoutGroup1
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
      end
    end
    object tabRDNRecon: TcxTabSheet
      Caption = 'RDN Reconcile'
      ImageIndex = 1
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 914
        Height = 49
        Align = alTop
        TabOrder = 0
        object txtKSEIRDNFile: TcxButtonEdit
          Left = 115
          Top = 10
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = txtKSEIRDNFilePropertiesButtonClick
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 0
          Width = 500
        end
        object cxButton3: TcxButton
          Left = 727
          Top = 10
          Width = 98
          Height = 25
          Action = actViewDataRDN
          TabOrder = 2
        end
        object cxButton4: TcxButton
          Left = 621
          Top = 10
          Width = 100
          Height = 25
          Action = actUploadDataRDN
          TabOrder = 1
        end
        object dxLayoutGroup2: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutControl1Group2
          CaptionOptions.Text = 'Import KSEI RDN File'
          Control = txtKSEIRDNFile
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 500
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Parent = dxLayoutControl1Group2
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = cxButton3
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 98
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutControl1Group2
          CaptionOptions.Text = 'cxButton2'
          CaptionOptions.Visible = False
          Control = cxButton4
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Group2: TdxLayoutGroup
          Parent = dxLayoutGroup2
          CaptionOptions.Text = 'Hidden Group'
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 49
        Width = 914
        Height = 297
        Align = alClient
        PopupMenu = popDocking
        TabOrder = 1
        object gvwKSEIRDN: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsKSEIRDNRecon
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
              Caption = 'Nayaga Data'
              HeaderAlignmentHorz = taLeftJustify
            end
            item
              Caption = 'KSEI Data'
              HeaderAlignmentHorz = taLeftJustify
            end>
          object gvwKSEIRDNSIDNO: TcxGridDBBandedColumn
            Caption = 'Nayaga SID'
            DataBinding.FieldName = 'CUSTODYACCNO'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwKSEIRDNACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwKSEIRDNACCCODE: TcxGridDBBandedColumn
            Caption = 'Account Code'
            DataBinding.FieldName = 'CUSTODYCODE'
            Width = 107
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwKSEIRDNACCNAME: TcxGridDBBandedColumn
            Caption = 'Account Name'
            DataBinding.FieldName = 'ACCNAME'
            Width = 217
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwKSEIRDNACC_STS: TcxGridDBBandedColumn
            Caption = 'Account Status'
            DataBinding.FieldName = 'STAT'
            RepositoryItem = dmGlobal.luAccountStatus
            Width = 79
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwKSEIRDNACCBANKID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCBANKID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwKSEIRDNBNCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'X'
            Width = 57
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwKSEIRDNBANKACCNO: TcxGridDBBandedColumn
            Caption = 'Custody Code'
            DataBinding.FieldName = 'CUSTODYCODE'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwKSEIRDNCUSTODYACCNO: TcxGridDBBandedColumn
            Caption = 'Subrek Type'
            DataBinding.FieldName = 'SUBREKTYPE'
            Width = 129
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwKSEIRDNSID: TcxGridDBBandedColumn
            Caption = 'Subrek Name'
            DataBinding.FieldName = 'SUBREKNAME'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwSubrekStatus: TcxGridDBBandedColumn
            Caption = 'Subrek Status'
            DataBinding.FieldName = 'SUBREKSTATUS'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwSID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SID'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = gvwKSEIRDN
        end
      end
    end
  end
  object pnlProgress: TPanel [1]
    Left = 21
    Top = 124
    Width = 292
    Height = 52
    BevelKind = bkTile
    BevelOuter = bvNone
    Caption = 'Uploading Data...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
  end
  inherited popDocking: TPopupMenu
    Left = 360
    Top = 216
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclKSEIAccRecon
    Left = 360
    Top = 160
  end
  object aclKSEIAccRecon: TActionList
    Left = 272
    Top = 160
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'Reload Data'
      OnExecute = actViewDataExecute
      CheckPermission = True
    end
    object actUploadData: TNAction
      Category = 'NActions'
      Caption = 'Upload Data'
      OnExecute = actUploadDataExecute
      CheckPermission = True
    end
    object actViewDataRDN: TNAction
      Category = 'NActions'
      Caption = 'Reload Data'
      OnExecute = actViewDataRDNExecute
      CheckPermission = False
    end
    object actUploadDataRDN: TNAction
      Category = 'NActions'
      Caption = 'Upload Data'
      OnExecute = actUploadDataRDNExecute
      CheckPermission = False
    end
  end
  object ImportFilesDialog: TOpenDialog
    Filter = 'Text Files|*.txt'
    Left = 272
    Top = 216
  end
  object cdsKSEIAccRecon: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmClientManagement_qryKSEIRDNRecon'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 464
    Top = 216
    object cdsKSEIAccReconCUSTODYACCNO: TStringField
      FieldName = 'CUSTODYACCNO'
      ReadOnly = True
      Size = 30
    end
    object cdsKSEIAccReconKSEI_SID: TStringField
      FieldName = 'KSEI_SID'
      ReadOnly = True
    end
    object cdsKSEIAccReconACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsKSEIAccReconSTAT: TStringField
      FieldName = 'STAT'
      ReadOnly = True
      Required = True
      Size = 7
    end
    object cdsKSEIAccReconX: TStringField
      FieldName = 'X'
      ReadOnly = True
      Required = True
      Size = 7
    end
    object cdsKSEIAccReconCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsKSEIAccReconCUSTODYNAME: TStringField
      FieldName = 'CUSTODYNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsKSEIAccReconSUBREKNO: TStringField
      FieldName = 'SUBREKNO'
      ReadOnly = True
    end
    object cdsKSEIAccReconSUBREKTYPE: TStringField
      FieldName = 'SUBREKTYPE'
      ReadOnly = True
      Size = 30
    end
    object cdsKSEIAccReconSUBREKNAME: TStringField
      FieldName = 'SUBREKNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsKSEIAccReconSUBREKSTATUS: TStringField
      FieldName = 'SUBREKSTATUS'
      ReadOnly = True
      Size = 10
    end
    object cdsKSEIAccReconSID: TStringField
      FieldName = 'SID'
      ReadOnly = True
    end
  end
  object dsKSEIAccRecon: TDataSource
    DataSet = cdsKSEIAccRecon
    Left = 464
    Top = 160
  end
  object cdsKSEIRDNRecon: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmClientManagement_qryKSEIRDNRecon'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 568
    Top = 216
    object cdsKSEIRDNReconCUSTODYACCNO: TStringField
      FieldName = 'CUSTODYACCNO'
      ReadOnly = True
      Size = 30
    end
    object cdsKSEIRDNReconKSEI_SID: TStringField
      FieldName = 'KSEI_SID'
      ReadOnly = True
    end
    object cdsKSEIRDNReconACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsKSEIRDNReconSTAT: TStringField
      FieldName = 'STAT'
      ReadOnly = True
      Required = True
      Size = 7
    end
    object cdsKSEIRDNReconX: TStringField
      FieldName = 'X'
      ReadOnly = True
      Required = True
      Size = 7
    end
    object cdsKSEIRDNReconCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      ReadOnly = True
      Size = 10
    end
    object cdsKSEIRDNReconCUSTODYNAME: TStringField
      FieldName = 'CUSTODYNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsKSEIRDNReconSUBREKNO: TStringField
      FieldName = 'SUBREKNO'
      ReadOnly = True
    end
    object cdsKSEIRDNReconSUBREKTYPE: TStringField
      FieldName = 'SUBREKTYPE'
      ReadOnly = True
      Size = 30
    end
    object cdsKSEIRDNReconSUBREKNAME: TStringField
      FieldName = 'SUBREKNAME'
      ReadOnly = True
      Size = 100
    end
    object cdsKSEIRDNReconSUBREKSTATUS: TStringField
      FieldName = 'SUBREKSTATUS'
      ReadOnly = True
      Size = 10
    end
    object cdsKSEIRDNReconSID: TStringField
      FieldName = 'SID'
      ReadOnly = True
    end
  end
  object dsKSEIRDNRecon: TDataSource
    DataSet = cdsKSEIRDNRecon
    Left = 568
    Top = 160
  end
end

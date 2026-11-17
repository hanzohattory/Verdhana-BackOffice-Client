inherited frmStockLedger: TfrmStockLedger
  Caption = 'Securities Journal Entry'
  ClientHeight = 419
  ClientWidth = 898
  ExplicitWidth = 904
  ExplicitHeight = 448
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 898
    Height = 129
    Align = alTop
    ExplicitWidth = 898
    ExplicitHeight = 129
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 78
      Top = 10
      TabStop = False
      DataBinding.DataField = 'SLGCD'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit [1]
      Left = 78
      Top = 37
      TabStop = False
      DataBinding.DataField = 'VDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit [2]
      Left = 78
      Top = 64
      TabStop = False
      DataBinding.DataField = 'EDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [3]
      Left = 269
      Top = 37
      TabStop = False
      DataBinding.DataField = 'VPERIODCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [4]
      Left = 269
      Top = 64
      TabStop = False
      DataBinding.DataField = 'EPERIODCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit [5]
      Left = 78
      Top = 91
      DataBinding.DataField = 'HDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 312
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Journal Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Value Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Entry Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Value Period'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Entry Period'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Description'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 350
    Width = 898
    ExplicitTop = 350
    ExplicitWidth = 898
    inherited dbNavLog: TDBNavigator
      Left = 784
      Hints.Strings = ()
      ExplicitLeft = 784
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 399
    Width = 898
    ExplicitTop = 399
    ExplicitWidth = 898
  end
  inherited tabEditorData: TTabSet
    Top = 329
    Width = 898
    ExplicitTop = 329
    ExplicitWidth = 898
  end
  object cxGrid1: TcxGrid [4]
    Left = 0
    Top = 129
    Width = 898
    Height = 200
    Align = alClient
    TabOrder = 4
    object gvwStockLedgerD: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsStockLedgerD
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'DEBET'
          Column = gvwStockLedgerDDEBET
        end
        item
          Format = '#,##0;(#,##0);0'
          Kind = skSum
          FieldName = 'CREDIT'
          Column = gvwStockLedgerDCREDIT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsData.CancelOnExit = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwStockLedgerDSLGID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SLGID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwStockLedgerDSLGCD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SLGCD'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwStockLedgerDACCID: TcxGridDBBandedColumn
        Caption = 'Account No'
        DataBinding.FieldName = 'ACCID'
        RepositoryItem = dmGlobal.luAccount
        Width = 89
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwStockLedgerDACCNO: TcxGridDBBandedColumn
        Caption = 'Account No'
        DataBinding.FieldName = 'ACCNO'
        RepositoryItem = dmGlobal.luAccount
        Visible = False
        Width = 91
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwStockLedgerDALTYPE: TcxGridDBBandedColumn
        Caption = 'Ledger Type'
        DataBinding.FieldName = 'ALTYPE'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'ALTYPE'
        Properties.ListColumns = <
          item
            FieldName = 'ALTYPE'
          end
          item
            Width = 300
            FieldName = 'ALDESCRIPTION'
          end>
        Properties.ListSource = dmLookup.dsluActLedTypeStock
        Width = 66
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwStockLedgerDSTOCKID: TcxGridDBBandedColumn
        Caption = 'Stock Code'
        DataBinding.FieldName = 'STOCKID'
        RepositoryItem = dmGlobal.luInstrument
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwStockLedgerDDC: TcxGridDBBandedColumn
        Caption = 'D/C'
        DataBinding.FieldName = 'DC'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Credit'
            Value = 'C'
          end
          item
            Description = 'Debet'
            ImageIndex = 0
            Value = 'D'
          end>
        Width = 47
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwStockLedgerDAMOUNT: TcxGridDBBandedColumn
        Caption = 'Quantity'
        DataBinding.FieldName = 'AMOUNT'
        HeaderAlignmentHorz = taRightJustify
        HeaderGlyphAlignmentHorz = taCenter
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwStockLedgerDMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwStockLedgerDMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwStockLedgerDAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwStockLedgerDAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwStockLedgerDUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwStockLedgerDUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwStockLedgerDNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwStockLedgerDISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwStockLedgerDID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwStockLedgerDDEBET: TcxGridDBBandedColumn
        Caption = 'Debet'
        DataBinding.FieldName = 'DEBET'
        HeaderAlignmentHorz = taRightJustify
        HeaderGlyphAlignmentHorz = taCenter
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwStockLedgerDCREDIT: TcxGridDBBandedColumn
        Caption = 'Credit'
        DataBinding.FieldName = 'CREDIT'
        HeaderAlignmentHorz = taRightJustify
        HeaderGlyphAlignmentHorz = taCenter
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwStockLedgerDACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCID'
        RepositoryItem = dmGlobal.luAccountName
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwStockLedgerDMARKETCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MARKETCODE'
        RepositoryItem = dmGlobal.luMarket
        Width = 67
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwStockLedgerDPRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRICE'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwStockLedgerD
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsStockLedgerH
    Left = 424
    Top = 32
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 424
    Top = 80
  end
  object cdsStockLedgerH: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SLGID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qryStockLedger_H'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsStockLedgerHBeforePost
    OnNewRecord = cdsStockLedgerHNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 472
    Top = 32
    object cdsStockLedgerHSLGID: TLargeintField
      FieldName = 'SLGID'
      Required = True
    end
    object cdsStockLedgerHVDATE: TDateField
      FieldName = 'VDATE'
      OnChange = cdsStockLedgerHVDATEChange
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockLedgerHEDATE: TDateField
      FieldName = 'EDATE'
      OnChange = cdsStockLedgerHEDATEChange
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockLedgerHVPERIODID: TLargeintField
      FieldName = 'VPERIODID'
    end
    object cdsStockLedgerHVPERIODCODE: TStringField
      FieldName = 'VPERIODCODE'
    end
    object cdsStockLedgerHEPERIODID: TLargeintField
      FieldName = 'EPERIODID'
    end
    object cdsStockLedgerHEPERIODCODE: TStringField
      FieldName = 'EPERIODCODE'
    end
    object cdsStockLedgerHHDESC: TStringField
      FieldName = 'HDESC'
      Size = 200
    end
    object cdsStockLedgerHTOTALDB: TFloatField
      FieldName = 'TOTALDB'
    end
    object cdsStockLedgerHTOTALCR: TFloatField
      FieldName = 'TOTALCR'
    end
    object cdsStockLedgerHPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsStockLedgerHPOSTEDDATE: TDateField
      FieldName = 'POSTEDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockLedgerHPOSTEDUI: TStringField
      FieldName = 'POSTEDUI'
      Size = 30
    end
    object cdsStockLedgerHCANCELED: TVarBytesField
      FieldName = 'CANCELED'
      Size = 1
    end
    object cdsStockLedgerHCANCELDATE: TDateField
      FieldName = 'CANCELDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockLedgerHCANCELUI: TStringField
      FieldName = 'CANCELUI'
      Size = 30
    end
    object cdsStockLedgerHREVERSED: TStringField
      FieldName = 'REVERSED'
      Size = 1
    end
    object cdsStockLedgerHREVERSDATE: TDateField
      FieldName = 'REVERSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsStockLedgerHREVERSUI: TStringField
      FieldName = 'REVERSUI'
      Size = 30
    end
    object cdsStockLedgerHMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsStockLedgerHMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsStockLedgerHAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsStockLedgerHAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsStockLedgerHUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsStockLedgerHUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsStockLedgerHNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsStockLedgerHISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsStockLedgerHID: TLargeintField
      FieldName = 'ID'
    end
    object cdsStockLedgerHqryStockLedger_D: TDataSetField
      FieldName = 'qryStockLedger_D'
    end
    object cdsStockLedgerHSLGCD: TStringField
      FieldName = 'SLGCD'
      Size = 50
    end
  end
  object cdsStockLedgerD: TNClientDataset
    Aggregates = <>
    DataSetField = cdsStockLedgerHqryStockLedger_D
    Params = <>
    BeforeEdit = cdsStockLedgerDBeforeEdit
    AfterPost = cdsStockLedgerDAfterPost
    OnCalcFields = cdsStockLedgerDCalcFields
    OnNewRecord = cdsStockLedgerDNewRecord
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNUM'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 560
    Top = 32
    object cdsStockLedgerDSLGID: TLargeintField
      FieldName = 'SLGID'
      Required = True
    end
    object cdsStockLedgerDACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsStockLedgerDALTYPE: TStringField
      FieldName = 'ALTYPE'
      Required = True
      Size = 10
    end
    object cdsStockLedgerDSTOCKID: TLargeintField
      FieldName = 'STOCKID'
      OnChange = cdsStockLedgerDSTOCKIDChange
    end
    object cdsStockLedgerDDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsStockLedgerDAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0;(#,##0);0'
      EditFormat = '#'
    end
    object cdsStockLedgerDMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsStockLedgerDMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsStockLedgerDAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsStockLedgerDAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsStockLedgerDUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsStockLedgerDUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsStockLedgerDNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsStockLedgerDISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsStockLedgerDID: TLargeintField
      FieldName = 'ID'
    end
    object cdsStockLedgerDDEBET: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DEBET'
      DisplayFormat = '#,##0;(#,##0);0'
      Calculated = True
    end
    object cdsStockLedgerDCREDIT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CREDIT'
      DisplayFormat = '#,##0;(#,##0);0'
      Calculated = True
    end
    object cdsStockLedgerDACCNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ACCNAME'
      Size = 200
    end
    object cdsStockLedgerDSLGCD: TStringField
      FieldName = 'SLGCD'
      Size = 50
    end
    object cdsStockLedgerDMARKETCODE: TStringField
      DisplayLabel = 'Market Code'
      FieldName = 'MARKETCODE'
      Size = 5
    end
    object cdsStockLedgerDPRICE: TFloatField
      DisplayLabel = 'Price'
      FieldName = 'PRICE'
      DisplayFormat = '#,##0.####;(#,##0.####);0'
    end
    object cdsStockLedgerDSEQNUM: TLargeintField
      FieldName = 'SEQNUM'
      Required = True
    end
    object cdsStockLedgerDACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
      OnChange = cdsStockLedgerDACCIDChange
    end
  end
  object dsStockLedgerD: TDataSource
    DataSet = cdsStockLedgerD
    Left = 560
    Top = 80
  end
end

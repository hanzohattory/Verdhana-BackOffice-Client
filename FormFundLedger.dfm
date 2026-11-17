inherited frmFundLedger: TfrmFundLedger
  Caption = 'Fund Ledger Journal Entry'
  ClientHeight = 419
  ClientWidth = 898
  ExplicitWidth = 914
  ExplicitHeight = 458
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 898
    Height = 129
    Align = alTop
    ExplicitWidth = 898
    ExplicitHeight = 129
    object cxDBDateEdit1: TcxDBDateEdit [0]
      Left = 77
      Top = 37
      TabStop = False
      DataBinding.DataField = 'VDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 125
    end
    object cxDBDateEdit2: TcxDBDateEdit [1]
      Left = 77
      Top = 64
      TabStop = False
      DataBinding.DataField = 'EDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 125
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 272
      Top = 37
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'VPERIODCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Height = 21
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [3]
      Left = 272
      Top = 64
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'EPERIODCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Height = 21
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit [4]
      Left = 77
      Top = 91
      DataBinding.DataField = 'HDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 316
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [5]
      Left = 77
      Top = 10
      DataBinding.DataField = 'GL_SUBGL'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'General Ledger'
          ImageIndex = 0
          Value = 'G'
        end
        item
          Description = 'Fund Ledger'
          Value = 'S'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit [6]
      Left = 272
      Top = 10
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'FLGCD'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Height = 21
      Width = 121
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
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Journal Type'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Journal Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 0
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
      ScrollbarAnnotations.CustomAnnotations = <>
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
      object gvwStockLedgerDACCID: TcxGridDBBandedColumn
        Caption = 'Account No'
        DataBinding.FieldName = 'ACCID'
        RepositoryItem = dmGlobal.luAccount
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwStockLedgerDACCNO: TcxGridDBBandedColumn
        Caption = 'Account No'
        DataBinding.FieldName = 'ACCNO'
        RepositoryItem = dmGlobal.luAccount
        Visible = False
        Width = 91
        Position.BandIndex = 0
        Position.ColIndex = 1
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
        Properties.ListSource = dmLookup.dsluActLedTypeFund
        Width = 88
        Position.BandIndex = 0
        Position.ColIndex = 3
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
        Width = 49
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwStockLedgerDAMOUNT: TcxGridDBBandedColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        HeaderAlignmentHorz = taRightJustify
        HeaderGlyphAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwStockLedgerDMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwStockLedgerDMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwStockLedgerDAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwStockLedgerDAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwStockLedgerDUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwStockLedgerDUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwStockLedgerDNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwStockLedgerDISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwStockLedgerDID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwStockLedgerDDEBET: TcxGridDBBandedColumn
        Caption = 'Debet'
        DataBinding.FieldName = 'DEBET'
        HeaderAlignmentHorz = taRightJustify
        HeaderGlyphAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwStockLedgerDCREDIT: TcxGridDBBandedColumn
        Caption = 'Credit'
        DataBinding.FieldName = 'CREDIT'
        HeaderAlignmentHorz = taRightJustify
        HeaderGlyphAlignmentHorz = taCenter
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwStockLedgerDACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCID'
        RepositoryItem = dmGlobal.luAccountName
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwStockLedgerDFLGID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FLGID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwStockLedgerDFLGCD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FLGCD'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwStockLedgerDCCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE'
        RepositoryItem = dmGlobal.luCurrency
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwStockLedgerD
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsFundLedgerH
    Left = 424
    Top = 32
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 424
    Top = 80
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsFundLedgerH: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'FLGID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmAccounting_qryFundLedger_H'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsFundLedgerHBeforePost
    OnNewRecord = cdsFundLedgerHNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 472
    Top = 32
    object cdsFundLedgerHFLGID: TLargeintField
      FieldName = 'FLGID'
      Required = True
    end
    object cdsFundLedgerHFLGCD: TStringField
      FieldName = 'FLGCD'
      Size = 30
    end
    object cdsFundLedgerHVDATE: TDateField
      FieldName = 'VDATE'
      OnChange = cdsFundLedgerHVDATEChange
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsFundLedgerHEDATE: TDateField
      FieldName = 'EDATE'
      OnChange = cdsFundLedgerHEDATEChange
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsFundLedgerHVPERIODID: TLargeintField
      FieldName = 'VPERIODID'
    end
    object cdsFundLedgerHVPERIODCODE: TStringField
      FieldName = 'VPERIODCODE'
    end
    object cdsFundLedgerHEPERIODID: TLargeintField
      FieldName = 'EPERIODID'
    end
    object cdsFundLedgerHEPERIODCODE: TStringField
      FieldName = 'EPERIODCODE'
    end
    object cdsFundLedgerHHDESC: TStringField
      FieldName = 'HDESC'
      Size = 200
    end
    object cdsFundLedgerHTOTALDB: TFloatField
      FieldName = 'TOTALDB'
    end
    object cdsFundLedgerHTOTALCR: TFloatField
      FieldName = 'TOTALCR'
    end
    object cdsFundLedgerHPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsFundLedgerHPOSTEDDATE: TDateField
      FieldName = 'POSTEDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsFundLedgerHPOSTEDUI: TStringField
      FieldName = 'POSTEDUI'
      Size = 30
    end
    object cdsFundLedgerHCANCELED: TVarBytesField
      FieldName = 'CANCELED'
      Size = 1
    end
    object cdsFundLedgerHCANCELDATE: TDateField
      FieldName = 'CANCELDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsFundLedgerHCANCELUI: TStringField
      FieldName = 'CANCELUI'
      Size = 30
    end
    object cdsFundLedgerHREVERSED: TStringField
      FieldName = 'REVERSED'
      Size = 1
    end
    object cdsFundLedgerHREVERSDATE: TDateField
      FieldName = 'REVERSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsFundLedgerHREVERSUI: TStringField
      FieldName = 'REVERSUI'
      Size = 30
    end
    object cdsFundLedgerHMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsFundLedgerHMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsFundLedgerHAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsFundLedgerHAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsFundLedgerHUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsFundLedgerHUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsFundLedgerHNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsFundLedgerHISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsFundLedgerHID: TLargeintField
      FieldName = 'ID'
    end
    object cdsFundLedgerHqryFundLedger_D: TDataSetField
      FieldName = 'qryFundLedger_D'
    end
    object cdsFundLedgerHGL_SUBGL: TStringField
      FieldName = 'GL_SUBGL'
      OnChange = cdsFundLedgerHGL_SUBGLChange
      Size = 1
    end
  end
  object cdsFundLedgerD: TNClientDataset
    Aggregates = <>
    DataSetField = cdsFundLedgerHqryFundLedger_D
    Params = <>
    BeforeEdit = cdsFundLedgerDBeforeEdit
    AfterPost = cdsFundLedgerDAfterPost
    OnCalcFields = cdsFundLedgerDCalcFields
    OnNewRecord = cdsFundLedgerDNewRecord
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQNUM'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 560
    Top = 32
    object cdsFundLedgerDACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsFundLedgerDALTYPE: TStringField
      FieldName = 'ALTYPE'
      Required = True
      Size = 10
    end
    object cdsFundLedgerDDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsFundLedgerDAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0;(#,##0);0'
      EditFormat = '#'
    end
    object cdsFundLedgerDMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsFundLedgerDMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsFundLedgerDAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsFundLedgerDAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsFundLedgerDUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsFundLedgerDUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsFundLedgerDNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsFundLedgerDISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsFundLedgerDID: TLargeintField
      FieldName = 'ID'
    end
    object cdsFundLedgerDDEBET: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DEBET'
      DisplayFormat = '#,##0;(#,##0);0'
      Calculated = True
    end
    object cdsFundLedgerDCREDIT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CREDIT'
      DisplayFormat = '#,##0;(#,##0);0'
      Calculated = True
    end
    object cdsFundLedgerDFLGID: TLargeintField
      FieldName = 'FLGID'
      Required = True
    end
    object cdsFundLedgerDFLGCD: TStringField
      FieldName = 'FLGCD'
      Size = 50
    end
    object cdsFundLedgerDACCNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ACCNAME'
      Size = 200
    end
    object cdsFundLedgerDCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsFundLedgerDSEQNUM: TLargeintField
      FieldName = 'SEQNUM'
      Required = True
    end
    object cdsFundLedgerDACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
      OnChange = cdsFundLedgerDACCIDChange
    end
  end
  object dsStockLedgerD: TDataSource
    DataSet = cdsFundLedgerD
    Left = 560
    Top = 80
  end
end

inherited frmAccountInterest: TfrmAccountInterest
  Caption = 'Account Interest'
  ClientHeight = 516
  ClientWidth = 866
  ExplicitWidth = 872
  ExplicitHeight = 545
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 866
    Height = 109
    Align = alTop
    ExplicitWidth = 866
    ExplicitHeight = 109
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 84
      Top = 10
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 145
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 84
      Top = 37
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.Shadow = False
      TabOrder = 3
      Width = 354
    end
    object cxDBImageComboBox3: TcxDBImageComboBox [2]
      Left = 271
      Top = 10
      RepositoryItem = dmGlobal.luAccountStatus
      DataBinding.DataField = 'ACC_STS'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 130
    end
    object cxDBLookupComboBox5: TcxDBLookupComboBox [3]
      Left = 271
      Top = 64
      RepositoryItem = dmGlobal.luSales
      DataBinding.DataField = 'SALESID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 138
    end
    object cxDBTextEdit3: TcxDBTextEdit [4]
      Left = 470
      Top = 10
      DataBinding.DataField = 'ACCINIT'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [5]
      Left = 84
      Top = 64
      RepositoryItem = dmGlobal.luBranch
      DataBinding.DataField = 'BRANCHID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 145
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [6]
      Left = 457
      Top = 64
      RepositoryItem = dmGlobal.luProduct
      DataBinding.DataField = 'PRDCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 134
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account No.'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account Name'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Status'
      Parent = dxLayoutControl1Group1
      Control = cxDBImageComboBox3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Sales'
      Parent = dxLayoutControl1Group3
      Control = cxDBLookupComboBox5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Account Init'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Branch'
      Parent = dxLayoutControl1Group3
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Product'
      Parent = dxLayoutControl1Group3
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 447
    Width = 866
    ExplicitTop = 447
    ExplicitWidth = 866
    inherited dbNavLog: TDBNavigator
      Left = 752
      Hints.Strings = ()
      ExplicitLeft = 752
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      Index = -1
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl2Item2: TdxLayoutItem
      Index = 1
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      Index = 0
    end
    inherited lcNavLog: TdxLayoutItem
      Index = 1
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 496
    Width = 866
    ExplicitTop = 496
    ExplicitWidth = 866
  end
  inherited tabEditorData: TTabSet
    Top = 426
    Width = 866
    ExplicitTop = 426
    ExplicitWidth = 866
  end
  object cxGrid9: TcxGrid [4]
    Left = 0
    Top = 109
    Width = 866
    Height = 317
    Align = alClient
    TabOrder = 4
    object gvwInterest: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      OnFocusedItemChanged = gvwInterestFocusedItemChanged
      OnFocusedRecordChanged = gvwInterestFocusedRecordChanged
      DataController.DataSource = dsInterest
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
          Caption = 'Interest Configuration'
          Width = 828
        end>
      object gvwInterestINTERESTTYPE: TcxGridDBBandedColumn
        Caption = 'Type'
        DataBinding.FieldName = 'INTERESTTYPE'
        RepositoryItem = dmGlobal.luInterestType
        Width = 53
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwInterestINTERESTCODE: TcxGridDBBandedColumn
        Caption = 'Interest Code'
        DataBinding.FieldName = 'INTERESTCODE'
        RepositoryItem = dmGlobal.luInterestByType
        Width = 101
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwInterestCCY: TcxGridDBBandedColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'CCY'
        RepositoryItem = dmGlobal.luCurrency
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwInterestCALCMETHOD: TcxGridDBBandedColumn
        Caption = 'Calc Method'
        DataBinding.FieldName = 'CALCMETHOD'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Rate'
            ImageIndex = 0
            Value = 'R'
          end
          item
            Description = 'Table'
            Value = 'T'
          end>
        Width = 91
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwInterestINTERESTRATE: TcxGridDBBandedColumn
        Caption = 'Interest Rate'
        DataBinding.FieldName = 'INTERESTRATE'
        Width = 99
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwInterestINTERESTTABLE: TcxGridDBBandedColumn
        Caption = 'Interest Table'
        DataBinding.FieldName = 'INTERESTTABLE'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = gvwInterestINTERESTTABLEPropertiesButtonClick
        Width = 102
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwInterestCALCBASIS: TcxGridDBBandedColumn
        Caption = 'Calc Basis'
        DataBinding.FieldName = 'CALCBASIS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Simple'
            ImageIndex = 0
            Value = 'S'
          end
          item
            Description = 'Compound'
            Value = 'C'
          end>
        Width = 74
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwInterestINTERESTDAY: TcxGridDBBandedColumn
        Caption = 'Interest Day'
        DataBinding.FieldName = 'INTERESTDAY'
        Width = 91
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwInterestACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwInterestSTARTDATE_CALC: TcxGridDBBandedColumn
        Caption = 'Start Date'
        DataBinding.FieldName = 'STARTDATE_CALC'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'dd mmm yyyy'
        Width = 63
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwInterestSAVE_INTERESTTAX: TcxGridDBBandedColumn
        Caption = 'Interest Tax'
        DataBinding.FieldName = 'SAVE_INTERESTTAX'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0;(#,##0);0'
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
    end
    object cxGridLevel9: TcxGridLevel
      GridView = gvwInterest
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmAccountInterestList.cdsAccountList
    Left = 286
    Top = 313
  end
  object Repository: TcxEditRepository
    Left = 409
    Top = 313
    object luCashInstr: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'LOCAL'
          ImageIndex = 0
          Value = 'LOCAL'
        end
        item
          Description = 'LLG'
          Value = 'LLG'
        end
        item
          Description = 'RTGS'
          Value = 'RTGS'
        end>
    end
    object luStockDelInstr: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'DVP'
          ImageIndex = 0
          Value = 'DVP'
        end
        item
          Description = 'DFOP'
          Value = 'DFOP'
        end>
    end
    object luStockRecInstr: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'RVP'
          ImageIndex = 0
          Value = 'RVP'
        end
        item
          Description = 'RFOP'
          Value = 'RFOP'
        end>
    end
    object luCustBank: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.GridMode = True
      Properties.KeyFieldNames = 'ACCBANKID'
      Properties.ListColumns = <
        item
          FieldName = 'BNCODE'
        end
        item
          FieldName = 'BANKACCNO'
        end
        item
          FieldName = 'BANKACCNAME'
        end
        item
          FieldName = 'BANKBRANCH'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dsLuCustBank
    end
    object luCustCustody: TcxEditRepositoryLookupComboBoxItem
      Properties.DropDownAutoSize = True
      Properties.GridMode = True
      Properties.KeyFieldNames = 'ACCCUSTODYID'
      Properties.ListColumns = <
        item
          FieldName = 'CUSTODYCODE'
        end
        item
          FieldName = 'CUSTODYACCNO'
        end
        item
          FieldName = 'CUSTODYACCNAME'
        end
        item
          FieldName = 'CUSTODYBRANCH'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dsLuCustCustody
    end
  end
  object cdsLuCustBank: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 512
    Top = 303
    object cdsLuCustBankACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsLuCustBankACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuCustBankBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsLuCustBankBANKACCNO: TStringField
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsLuCustBankBANKACCNAME: TStringField
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsLuCustBankBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
  end
  object cdsLuCustCustody: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 512
    Top = 348
    object cdsLuCustCustodyACCCUSTODYID: TIntegerField
      FieldName = 'ACCCUSTODYID'
      Required = True
    end
    object cdsLuCustCustodyACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuCustCustodyCUSTODYCODE: TStringField
      FieldName = 'CUSTODYCODE'
      Size = 30
    end
    object cdsLuCustCustodyCUSTODYACCNO: TStringField
      FieldName = 'CUSTODYACCNO'
      Size = 30
    end
    object cdsLuCustCustodyCUSTODYACCNAME: TStringField
      FieldName = 'CUSTODYACCNAME'
      Size = 50
    end
    object cdsLuCustCustodyCUSTODYBRANCH: TStringField
      FieldName = 'CUSTODYBRANCH'
      Size = 50
    end
  end
  object dsLuCustBank: TDataSource
    DataSet = cdsLuCustBank
    Left = 616
    Top = 300
  end
  object dsLuCustCustody: TDataSource
    DataSet = cdsLuCustCustody
    Left = 616
    Top = 348
  end
  object dsInterest: TDataSource
    DataSet = frmAccountInterestList.cdsAccountInterest
    Left = 728
    Top = 204
  end
end

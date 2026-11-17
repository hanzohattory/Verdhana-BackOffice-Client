inherited frmOTCInstructionSplit: TfrmOTCInstructionSplit
  Caption = 'OTC Instruction Split'
  ClientHeight = 457
  ClientWidth = 856
  ExplicitWidth = 872
  ExplicitHeight = 496
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 856
    Height = 208
    Align = alTop
    ExplicitWidth = 856
    ExplicitHeight = 208
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 88
      Top = 10
      DataBinding.DataField = 'CUSTODY_EXTREF'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 198
    end
    object cxDBDateEdit1: TcxDBDateEdit [1]
      Left = 88
      Top = 37
      DataBinding.DataField = 'TRDDATE'
      DataBinding.DataSource = frmOTCInstruction.dsBrowseMaster
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cxDBDateEdit2: TcxDBDateEdit [2]
      Left = 265
      Top = 37
      DataBinding.DataField = 'VALUEDATE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [3]
      Left = 88
      Top = 64
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [4]
      Left = 215
      Top = 64
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 311
    end
    object cxDBTextEdit4: TcxDBTextEdit [5]
      Left = 88
      Top = 118
      DataBinding.DataField = 'STOCKCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [6]
      Left = 88
      Top = 145
      DataBinding.DataField = 'QTY'
      DataBinding.DataSource = dsOTCInstruction
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [7]
      Left = 88
      Top = 91
      DataBinding.DataField = 'SETTLE_SIDE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.Items = <
        item
          Description = 'Receive'
          ImageIndex = 0
          Value = 'R'
        end
        item
          Description = 'Deliver'
          Value = 'D'
        end>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [8]
      Left = 88
      Top = 172
      DataBinding.DataField = 'AMOUNT'
      DataBinding.DataSource = dsOTCInstruction
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Custody Exreff'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 198
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Trade Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Due Date'
      Control = cxDBDateEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Account Code'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'cxDBTextEdit3'
      CaptionOptions.Visible = False
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 311
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Stock Code'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object Quantity: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Quantity'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Settle Side'
      Control = cxDBImageComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Amount'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 388
    Width = 856
    ExplicitTop = 388
    ExplicitWidth = 856
    inherited dbNavLog: TDBNavigator
      Left = 742
      Hints.Strings = ()
      ExplicitLeft = 742
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 437
    Width = 856
    ExplicitTop = 437
    ExplicitWidth = 856
  end
  inherited tabEditorData: TTabSet
    Top = 367
    Width = 856
    ExplicitTop = 367
    ExplicitWidth = 856
  end
  object cxGrid1: TcxGrid [4]
    Left = 0
    Top = 208
    Width = 856
    Height = 159
    Align = alClient
    PopupMenu = PopupMenu1
    TabOrder = 4
    object gvwOTCSplit: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsOTCSplit
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0;(#,##0);-'
          Kind = skSum
          FieldName = 'QTY'
          Column = gvwOTCSplitQTY
        end
        item
          Format = '#,##0;(#,##0);-'
          Kind = skSum
          FieldName = 'SETTLE_AMOUNT'
          Column = gvwOTCSplitSETTLE_AMOUNT
        end
        item
          Format = '#,##0;(#,##0);-'
          Kind = skSum
          FieldName = 'ORIGINAL_AMT'
          Column = gvwOTCSplitORIGINAL_AMT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = clSkyBlue
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Bands = <
        item
        end>
      object gvwOTCSplitCUSTODY_INSTRID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTODY_INSTRID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwOTCSplitCUSTODY_EXTREF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTODY_EXTREF'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwOTCSplitACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwOTCSplitACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwOTCSplitACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwOTCSplitVALUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VALUEDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwOTCSplitTRDDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRDDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwOTCSplitSETTLEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLEDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwOTCSplitSETTLE_SIDE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_SIDE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwOTCSplitINSTRUCTION_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSTRUCTION_TYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwOTCSplitPARTY_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PARTY_CODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwOTCSplitPARTY_ACC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PARTY_ACC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwOTCSplitCOUNTER_CODE: TcxGridDBBandedColumn
        Caption = 'Counter Code'
        DataBinding.FieldName = 'COUNTER_CODE'
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwOTCSplitCOUNTER_ACC: TcxGridDBBandedColumn
        Caption = 'Counter Account'
        DataBinding.FieldName = 'COUNTER_ACC'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwOTCSplitSECURITYCODE_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SECURITYCODE_TYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwOTCSplitSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwOTCSplitSTOCKCODE: TcxGridDBBandedColumn
        Caption = 'Stock Code'
        DataBinding.FieldName = 'STOCKCODE'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwOTCSplitQTY: TcxGridDBBandedColumn
        Caption = 'Quantity'
        DataBinding.FieldName = 'QTY'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwOTCSplitCCY: TcxGridDBBandedColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'CCY'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwOTCSplitORIGINAL_AMT: TcxGridDBBandedColumn
        Caption = 'Original Amount'
        DataBinding.FieldName = 'ORIGINAL_AMT'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwOTCSplitSETTLE_AMOUNT: TcxGridDBBandedColumn
        Caption = 'Settle Amount'
        DataBinding.FieldName = 'SETTLE_AMOUNT'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwOTCSplitREMARKS: TcxGridDBBandedColumn
        Caption = 'Remaks'
        DataBinding.FieldName = 'REMARKS'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwOTCSplitPURPOSE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PURPOSE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwOTCSplitTRADE_REF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRADE_REF'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwOTCSplitSETTLE_REASON: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLE_REASON'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwOTCSplitBENEFICIARYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BENEFICIARYCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwOTCSplitBENEFICIARYACC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BENEFICIARYACC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwOTCSplitCORPACT_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CORPACT_TYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwOTCSplitLINKTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKTYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwOTCSplitLINKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwOTCSplitCONFIRM_BY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONFIRM_BY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwOTCSplitCREATE_FILE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CREATE_FILE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwOTCSplitCOUNT_CREATE_FILE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COUNT_CREATE_FILE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwOTCSplitCBEST_UPLOAD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CBEST_UPLOAD'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwOTCSplitSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object gvwOTCSplitCUSTODY_DESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUSTODY_DESC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object gvwOTCSplitSALDO_TYPE: TcxGridDBBandedColumn
        Caption = 'Saldo Type'
        DataBinding.FieldName = 'SALDO_TYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Rebate'
            ImageIndex = 0
            Value = 'R'
          end
          item
            Description = 'Price Different'
            Value = 'P'
          end>
        Width = 68
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwOTCSplitSALDO: TcxGridDBBandedColumn
        Caption = 'Saldo'
        DataBinding.FieldName = 'SALDO'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwOTCSplit
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmOTCInstruction.cdsSettleInstr
    Left = 367
    Top = 88
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsOTCSplit: TNClientDataset
    Aggregates = <>
    Params = <>
    BeforePost = cdsOTCSplitBeforePost
    OnNewRecord = cdsOTCSplitNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 447
    Top = 87
    object cdsOTCSplitCUSTODY_INSTRID: TLargeintField
      FieldName = 'CUSTODY_INSTRID'
      Required = True
    end
    object cdsOTCSplitCUSTODY_EXTREF: TStringField
      FieldName = 'CUSTODY_EXTREF'
      Required = True
      Size = 30
    end
    object cdsOTCSplitACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsOTCSplitACCNO: TStringField
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsOTCSplitACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsOTCSplitVALUEDATE: TDateField
      FieldName = 'VALUEDATE'
    end
    object cdsOTCSplitTRDDATE: TDateField
      FieldName = 'TRDDATE'
    end
    object cdsOTCSplitSETTLEDATE: TDateField
      FieldName = 'SETTLEDATE'
    end
    object cdsOTCSplitSETTLE_SIDE: TStringField
      FieldName = 'SETTLE_SIDE'
      Size = 1
    end
    object cdsOTCSplitINSTRUCTION_TYPE: TStringField
      FieldName = 'INSTRUCTION_TYPE'
      Size = 10
    end
    object cdsOTCSplitPARTY_CODE: TStringField
      FieldName = 'PARTY_CODE'
      Size = 10
    end
    object cdsOTCSplitPARTY_ACC: TStringField
      FieldName = 'PARTY_ACC'
    end
    object cdsOTCSplitCOUNTER_CODE: TStringField
      FieldName = 'COUNTER_CODE'
      Size = 10
    end
    object cdsOTCSplitCOUNTER_ACC: TStringField
      FieldName = 'COUNTER_ACC'
    end
    object cdsOTCSplitSECURITYCODE_TYPE: TStringField
      FieldName = 'SECURITYCODE_TYPE'
      Size = 10
    end
    object cdsOTCSplitSTOCKID: TLargeintField
      FieldName = 'STOCKID'
    end
    object cdsOTCSplitSTOCKCODE: TStringField
      FieldName = 'STOCKCODE'
    end
    object cdsOTCSplitQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsOTCSplitCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsOTCSplitORIGINAL_AMT: TFloatField
      FieldName = 'ORIGINAL_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsOTCSplitSETTLE_AMOUNT: TFloatField
      FieldName = 'SETTLE_AMOUNT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsOTCSplitREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 150
    end
    object cdsOTCSplitPURPOSE: TStringField
      FieldName = 'PURPOSE'
    end
    object cdsOTCSplitTRADE_REF: TStringField
      FieldName = 'TRADE_REF'
    end
    object cdsOTCSplitSETTLE_REASON: TStringField
      FieldName = 'SETTLE_REASON'
      Size = 30
    end
    object cdsOTCSplitBENEFICIARYCODE: TStringField
      FieldName = 'BENEFICIARYCODE'
      Size = 10
    end
    object cdsOTCSplitBENEFICIARYACC: TStringField
      FieldName = 'BENEFICIARYACC'
    end
    object cdsOTCSplitCORPACT_TYPE: TStringField
      FieldName = 'CORPACT_TYPE'
      Size = 10
    end
    object cdsOTCSplitLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
    end
    object cdsOTCSplitLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsOTCSplitCONFIRM_BY: TStringField
      FieldName = 'CONFIRM_BY'
      Size = 30
    end
    object cdsOTCSplitCREATE_FILE: TStringField
      FieldName = 'CREATE_FILE'
      Size = 1
    end
    object cdsOTCSplitCOUNT_CREATE_FILE: TIntegerField
      FieldName = 'COUNT_CREATE_FILE'
    end
    object cdsOTCSplitCBEST_UPLOAD: TStringField
      FieldName = 'CBEST_UPLOAD'
      Size = 1
    end
    object cdsOTCSplitSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsOTCSplitMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOTCSplitMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOTCSplitAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOTCSplitAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOTCSplitUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOTCSplitUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOTCSplitNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOTCSplitISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOTCSplitID: TLargeintField
      FieldName = 'ID'
    end
    object cdsOTCSplitCUSTODY_DESC: TStringField
      FieldName = 'CUSTODY_DESC'
      Size = 150
    end
    object cdsOTCSplitPARTY_ID: TLargeintField
      FieldName = 'PARTY_ID'
    end
    object cdsOTCSplitCOUNTER_ID: TLargeintField
      FieldName = 'COUNTER_ID'
    end
    object cdsOTCSplitISMULTICCY: TStringField
      FieldName = 'ISMULTICCY'
      Size = 1
    end
    object cdsOTCSplitFOREIGN_CCYCODE: TStringField
      FieldName = 'FOREIGN_CCYCODE'
      Size = 5
    end
    object cdsOTCSplitFOREIGN_EXRATE: TFloatField
      FieldName = 'FOREIGN_EXRATE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsOTCSplitFOREIGN_SETTTLEAMT: TFloatField
      FieldName = 'FOREIGN_SETTTLEAMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsOTCSplitSID_NO: TStringField
      FieldName = 'SID_NO'
    end
    object cdsOTCSplitKSEI_RECON: TStringField
      FieldName = 'KSEI_RECON'
      Size = 1
    end
    object cdsOTCSplitSALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsOTCSplitSALDO_TYPE: TStringField
      FieldName = 'SALDO_TYPE'
      Size = 1
    end
    object cdsOTCSplitMATCH: TStringField
      FieldName = 'MATCH'
      Size = 1
    end
    object cdsOTCSplitEXCHANGE: TStringField
      FieldName = 'EXCHANGE'
      Size = 1
    end
    object cdsOTCSplitCONFIRM_WITH: TStringField
      FieldName = 'CONFIRM_WITH'
      Size = 30
    end
    object cdsOTCSplitCLIENT_ACCID: TLargeintField
      FieldName = 'CLIENT_ACCID'
    end
    object cdsOTCSplitBS: TStringField
      FieldName = 'BS'
      Size = 1
    end
    object cdsOTCSplitNEW_CUSTODY_INSTRID: TLargeintField
      FieldName = 'NEW_CUSTODY_INSTRID'
    end
    object cdsOTCSplitDHKID: TLargeintField
      FieldName = 'DHKID'
    end
  end
  object dsOTCSplit: TDataSource
    DataSet = cdsOTCSplit
    Left = 447
    Top = 132
  end
  object cxEditRepository1: TcxEditRepository
    Left = 375
    Top = 132
    PixelsPerInch = 96
    object ImageDeliver: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'DFOP'
          ImageIndex = 0
          Value = 'DFOP'
        end
        item
          Description = 'DVP'
          Value = 'DVP'
        end>
    end
    object ImageReceive: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'RFOP'
          ImageIndex = 0
          Value = 'RFOP'
        end
        item
          Description = 'RVP'
          Value = 'RVP'
        end>
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 288
    Top = 147
    object AddSplit1: TMenuItem
      Caption = 'Add Split'
      OnClick = AddSplit1Click
    end
    object EditSplit1: TMenuItem
      Caption = 'Edit Split'
      OnClick = EditSplit1Click
    end
  end
  object dsOTCInstruction: TDataSource
    DataSet = frmOTCInstruction.cdsOTCInstruction
    Left = 309
    Top = 87
  end
  object cdsCustodyLink: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'CUSTODY_INSTRID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryCustodyLink'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 561
    Top = 87
    object cdsCustodyLinkCUSTODY_INSTRID: TLargeintField
      FieldName = 'CUSTODY_INSTRID'
      Required = True
    end
    object cdsCustodyLinkSIID: TLargeintField
      FieldName = 'SIID'
      Required = True
    end
    object cdsCustodyLinkQTY: TFloatField
      FieldName = 'QTY'
    end
    object cdsCustodyLinkSETTLE_AMT: TFloatField
      FieldName = 'SETTLE_AMT'
    end
  end
  object cdsCustodyLinkTmp: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 561
    Top = 135
    object cdsCustodyLinkTmpCUSTODY_INSTRID: TLargeintField
      FieldName = 'CUSTODY_INSTRID'
      Required = True
    end
    object cdsCustodyLinkTmpSIID: TLargeintField
      FieldName = 'SIID'
      Required = True
    end
    object cdsCustodyLinkTmpQTY: TFloatField
      FieldName = 'QTY'
    end
    object cdsCustodyLinkTmpSETTLE_AMT: TFloatField
      FieldName = 'SETTLE_AMT'
    end
  end
end

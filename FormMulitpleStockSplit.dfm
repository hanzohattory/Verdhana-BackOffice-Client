object frmMultipeStockSplit: TfrmMultipeStockSplit
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Multiple Stock Split'
  ClientHeight = 336
  ClientWidth = 992
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 992
    Height = 103
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 776
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 187
      Top = 28
      TabStop = False
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsStockSplitH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 288
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 81
      Top = 55
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsStockSplitH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 91
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 187
      Top = 55
      DataBinding.DataField = 'STOCKNAME'
      DataBinding.DataSource = dsStockSplitH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 288
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 81
      Top = 28
      TabStop = False
      DataBinding.DataField = 'ACCNO'
      DataBinding.DataSource = dsStockSplitH
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 91
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 548
      Top = 28
      TabStop = False
      DataBinding.DataField = 'RECEIVE'
      DataBinding.DataSource = dsStockSplitH
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 93
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 548
      Top = 55
      TabStop = False
      DataBinding.DataField = 'DELIVER'
      DataBinding.DataSource = dsStockSplitH
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 93
    end
    object txtOrigReceive: TcxCurrencyEdit
      Left = 728
      Top = 28
      ParentColor = True
      Properties.DisplayFormat = '#,##0;(#,##0);0'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object txtOrigDeliver: TcxCurrencyEdit
      Left = 728
      Top = 55
      ParentColor = True
      Properties.DisplayFormat = '#,##0;(#,##0);0'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group5
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Stock Code'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Text = 'Account'
      Parent = dxLayoutControl1Group5
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Summary'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Receive'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'Deliver'
      Parent = dxLayoutControl1Group6
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object xx: TdxLayoutItem
      CaptionOptions.Text = 'Original Amount'
      Parent = dxLayoutControl1Group4
      Control = txtOrigReceive
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Original Amount'
      Parent = dxLayoutControl1Group6
      Control = txtOrigDeliver
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 103
    Width = 992
    Height = 185
    Align = alClient
    TabOrder = 1
    ExplicitTop = 73
    ExplicitWidth = 776
    ExplicitHeight = 215
    object gvwMultipleStockSplit: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsStockSplitD
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      object gvwMultipleStockSplitACCCUSTODYID: TcxGridDBColumn
        Caption = 'Account Custody Code'
        DataBinding.FieldName = 'ACCCUSTODYID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'ACCCUSTODYID'
        Properties.ListColumns = <
          item
            Width = 100
            FieldName = 'CUSTODYCODE'
          end
          item
            Width = 100
            FieldName = 'CUSTODYACCNO'
          end
          item
            Width = 200
            FieldName = 'CUSTODYACCNAME'
          end>
        Properties.ListSource = dsLuAccountCustody
        Width = 116
      end
      object gvwMultipleStockSplitSETTLE_TYPE: TcxGridDBColumn
        DataBinding.FieldName = 'SETTLE_TYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
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
        Width = 60
      end
      object gvwMultipleStockSplitQTY: TcxGridDBColumn
        DataBinding.FieldName = 'QTY'
        Width = 100
      end
      object gvwMultipleStockSplitORIG_AMOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'ORIG_AMOUNT'
        Visible = False
        Options.Editing = False
        Width = 100
      end
      object gvwMultipleStockSplitAMOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'AMOUNT'
        Width = 100
      end
      object gvwMultipleStockSplitDIFF_AMOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'DIFF_AMOUNT'
        Visible = False
        Options.Editing = False
        Width = 100
      end
      object gvwMultipleStockSplitINSTR_TYPE: TcxGridDBColumn
        DataBinding.FieldName = 'INSTR_TYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'FOP'
            ImageIndex = 0
            Value = 'FOP'
          end
          item
            Description = 'VP'
            Value = 'VP'
          end>
        Properties.OnChange = gvwMultipleStockSplitINSTR_TYPEPropertiesChange
        Width = 84
      end
      object gvwMultipleStockSplitSPLIT_HID: TcxGridDBColumn
        DataBinding.FieldName = 'SPLIT_HID'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwMultipleStockSplit
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 288
    Width = 992
    Height = 48
    Align = alBottom
    TabOrder = 2
    ExplicitWidth = 776
    object txtSumReceive: TcxCurrencyEdit
      Left = 100
      Top = 10
      TabStop = False
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0;(#,##0);0'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object txtSumDeliver: TcxCurrencyEdit
      Left = 318
      Top = 10
      TabStop = False
      ParentColor = True
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0;(#,##0);0'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 445
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 2
      OnClick = cxButton1Click
    end
    object dxLayoutGroup2: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl2Item1: TdxLayoutItem
      CaptionOptions.Text = 'Summary Receive'
      Parent = dxLayoutControl2Group2
      Control = txtSumReceive
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      CaptionOptions.Text = 'Summary Delivery'
      Parent = dxLayoutControl2Group2
      Control = txtSumDeliver
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl2Item3: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup2
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl2Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object dsStockSplitD: TDataSource
    DataSet = cdsStockSplitD
    Left = 219
    Top = 225
  end
  object dsStockSplitH: TDataSource
    DataSet = cdsStockSplitH
    Left = 219
    Top = 177
  end
  object cdsStockSplitH: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmStockManagement_qrySplitStockH'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 144
    Top = 177
    object cdsStockSplitHACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsStockSplitHSTOCKID: TLargeintField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsStockSplitHRECEIVE: TFloatField
      FieldName = 'RECEIVE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockSplitHDELIVER: TFloatField
      FieldName = 'DELIVER'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockSplitHACCNO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsStockSplitHACCNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ACCNAME'
      Size = 200
    end
    object cdsStockSplitHSTOCKCODE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'STOCKCODE'
      Size = 30
    end
    object cdsStockSplitHSTOCKNAME: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'STOCKNAME'
      Size = 200
    end
    object cdsStockSplitHSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsStockSplitHDUEDATE: TDateField
      FieldName = 'DUEDATE'
      Required = True
    end
    object cdsStockSplitHSPLITID: TLargeintField
      FieldName = 'SPLITID'
      Required = True
    end
  end
  object cdsStockSplitD: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SPLITID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qrySplitStockD'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsStockSplitDBeforePost
    OnNewRecord = cdsStockSplitDNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 144
    Top = 228
    object cdsStockSplitDACCCUSTODYID: TLargeintField
      DisplayLabel = 'Account Custody ID'
      FieldName = 'ACCCUSTODYID'
      Required = True
    end
    object cdsStockSplitDSETTLE_TYPE: TStringField
      DisplayLabel = 'Settle Type'
      FieldName = 'SETTLE_TYPE'
      Size = 5
    end
    object cdsStockSplitDQTY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QTY'
      OnChange = cdsStockSplitDQTYChange
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockSplitDAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockSplitDINSTR_TYPE: TStringField
      DisplayLabel = 'Instruction Type'
      FieldName = 'INSTR_TYPE'
      Size = 5
    end
    object cdsStockSplitDORIG_AMOUNT: TFloatField
      DisplayLabel = 'Original Amount'
      FieldName = 'ORIG_AMOUNT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockSplitDDIFF_AMOUNT: TFloatField
      DisplayLabel = 'Different Amount'
      FieldName = 'DIFF_AMOUNT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsStockSplitDSPLITID: TLargeintField
      FieldName = 'SPLITID'
      Required = True
    end
  end
  object cdsLuAccountCustody: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmLookup_qryAccountCustodyTypeB'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 354
    Top = 177
    object cdsLuAccountCustodyACCCUSTODYID: TIntegerField
      FieldName = 'ACCCUSTODYID'
      Required = True
    end
    object cdsLuAccountCustodyACCID: TIntegerField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsLuAccountCustodyCUSTODYCODE: TStringField
      DisplayLabel = 'Custody Code'
      FieldName = 'CUSTODYCODE'
      Size = 30
    end
    object cdsLuAccountCustodyCUSTODYACCNO: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'CUSTODYACCNO'
      Size = 30
    end
    object cdsLuAccountCustodyCUSTODYACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'CUSTODYACCNAME'
      Size = 50
    end
    object cdsLuAccountCustodyCUSTODYBRANCH: TStringField
      DisplayLabel = 'Branch'
      FieldName = 'CUSTODYBRANCH'
      Size = 50
    end
    object cdsLuAccountCustodyCUSTODYTYPE: TStringField
      DisplayLabel = 'Type'
      FieldName = 'CUSTODYTYPE'
      Size = 2
    end
    object cdsLuAccountCustodyACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsLuAccountCustodyCBEST_ACCBANKID: TLargeintField
      FieldName = 'CBEST_ACCBANKID'
    end
    object cdsLuAccountCustodyCUSTODY_DEFAULT: TStringField
      FieldName = 'CUSTODY_DEFAULT'
      Size = 1
    end
    object cdsLuAccountCustodySTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
  end
  object dsLuAccountCustody: TDataSource
    DataSet = cdsLuAccountCustody
    Left = 354
    Top = 225
  end
  object cdsGetOrigAmt: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'SIID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qryGetOrigQty'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 498
    Top = 174
    object cdsGetOrigAmtORIG_RECEIVE: TFloatField
      FieldName = 'ORIG_RECEIVE'
      ReadOnly = True
    end
    object cdsGetOrigAmtORIG_DELIVER: TFloatField
      FieldName = 'ORIG_DELIVER'
      ReadOnly = True
    end
  end
end

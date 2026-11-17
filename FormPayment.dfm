inherited frmPayment: TfrmPayment
  Caption = 'Bank Payment / Receive'
  ClientHeight = 488
  ClientWidth = 725
  ExplicitWidth = 731
  ExplicitHeight = 513
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 725
    Height = 133
    Align = alTop
    ExplicitWidth = 725
    ExplicitHeight = 133
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 80
      Top = 10
      TabStop = False
      DataBinding.DataField = 'VOUCHERNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit [1]
      Left = 80
      Top = 37
      TabStop = False
      DataBinding.DataField = 'VOUCHERDATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 521
      Top = 28
      TabStop = False
      DataBinding.DataField = 'BROKER_BANKID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCBANKID'
      Properties.ListColumns = <
        item
          FieldName = 'ACCBANKCODE'
        end
        item
          FieldName = 'BANKACCNAME'
        end
        item
          FieldName = 'BANKACCNO'
        end>
      Properties.ListSource = dmLookup.dsLuBankAccount
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      OnExit = cxDBLookupComboBox1Exit
      Width = 121
    end
    object edBankAccNo: TcxDBTextEdit [3]
      Left = 521
      Top = 55
      TabStop = False
      DataBinding.DataField = 'BROKER_BANKACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 180
    end
    object cxDBTextEdit3: TcxDBTextEdit [4]
      Left = 521
      Top = 82
      TabStop = False
      DataBinding.DataField = 'BROKER_BANKACCNO'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 180
    end
    object cxDBTextEdit2: TcxDBTextEdit [5]
      Left = 80
      Top = 64
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 74
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [6]
      Left = 251
      Top = 28
      RepositoryItem = dmGlobal.luAccount
      DataBinding.DataField = 'ACCID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit [7]
      Left = 251
      Top = 55
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 180
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [8]
      Left = 80
      Top = 91
      DataBinding.DataField = 'TOTAL_AMOUNT'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = '#,##0;(#,##0);0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      LayoutDirection = ldHorizontal
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Voucher No.'
      Parent = dxLayoutControl1Group9
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Voucher Date'
      Parent = dxLayoutControl1Group9
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Code'
      Parent = dxLayoutControl1Group8
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Bank Name'
      Parent = dxLayoutControl1Group8
      Control = edBankAccNo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account No'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency'
      Parent = dxLayoutControl1Group10
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Account'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Broker'
      Parent = dxLayoutControl1Group5
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutControl1Group7
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Name'
      Parent = dxLayoutControl1Group7
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'Total Amount'
      Parent = dxLayoutControl1Group10
      Control = cxDBCurrencyEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group9
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group6
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 419
    Width = 725
    ExplicitTop = 419
    ExplicitWidth = 725
    inherited dbNavLog: TDBNavigator
      Left = 611
      Hints.Strings = ()
      ExplicitLeft = 611
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
    Top = 468
    Width = 725
    ExplicitTop = 468
    ExplicitWidth = 725
  end
  inherited tabEditorData: TTabSet
    Top = 398
    Width = 725
    ExplicitTop = 398
    ExplicitWidth = 725
  end
  object cxGrid1: TcxGrid [4]
    Left = 0
    Top = 133
    Width = 725
    Height = 265
    Align = alClient
    TabOrder = 4
    object gvwCashVoucherD: TcxGridDBBandedTableView
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
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsCashVoucherD
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'TRANS_AMT'
          Column = gvwCashVoucherDTRANS_AMT
        end
        item
          Format = '#,##0;(#,##0);0'
          FieldName = 'NET_AMT'
          Column = gvwCashVoucherDAMOUNT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwCashVoucherDVOUCHERID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOUCHERID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwCashVoucherDSEQID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SEQID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwCashVoucherDTRANS_TYPE: TcxGridDBBandedColumn
        Caption = 'Trans Type'
        DataBinding.FieldName = 'TRANS_TYPE'
        Visible = False
        Width = 69
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwCashVoucherDLINKTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKTYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwCashVoucherDLINKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwCashVoucherDLINKNO: TcxGridDBBandedColumn
        Caption = 'Link No'
        DataBinding.FieldName = 'LINKNO'
        Width = 122
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwCashVoucherDACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwCashVoucherDACCNO: TcxGridDBBandedColumn
        Caption = 'Account No.'
        DataBinding.FieldName = 'ACCNO'
        Visible = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwCashVoucherDACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Visible = False
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwCashVoucherDCUST_BANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUST_BANKID'
        Visible = False
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwCashVoucherDCUST_BANKCODE: TcxGridDBBandedColumn
        Caption = 'Bank Account Code'
        DataBinding.FieldName = 'CUST_BANKCODE'
        Visible = False
        Width = 106
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwCashVoucherDCUST_BANKACCNO: TcxGridDBBandedColumn
        Caption = 'Bank Account No'
        DataBinding.FieldName = 'CUST_BANKACCNO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwCashVoucherDCUST_BANKACCNAME: TcxGridDBBandedColumn
        Caption = 'Bank Account Name'
        DataBinding.FieldName = 'CUST_BANKACCNAME'
        Visible = False
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwCashVoucherDCUST_BANKACCBRANCH: TcxGridDBBandedColumn
        Caption = 'Bank Account Branch'
        DataBinding.FieldName = 'CUST_BANKACCBRANCH'
        Visible = False
        Width = 107
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwCashVoucherDTRDDATE: TcxGridDBBandedColumn
        Caption = 'Trade Date'
        DataBinding.FieldName = 'TRDDATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.EditFormat = 'dd mmm yyyy'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwCashVoucherDDUEDATE: TcxGridDBBandedColumn
        Caption = 'Due Date'
        DataBinding.FieldName = 'DUEDATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.EditFormat = 'dd mmm yyyy'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwCashVoucherDCASH_DESC: TcxGridDBBandedColumn
        Caption = 'Cash Description'
        DataBinding.FieldName = 'CASH_DESC'
        Width = 186
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwCashVoucherDTRANS_AMT: TcxGridDBBandedColumn
        Caption = 'Trans Amount'
        DataBinding.FieldName = 'TRANS_AMT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0;(#,##0);0'
        Visible = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwCashVoucherDCHARGESAMT: TcxGridDBBandedColumn
        Caption = 'Charges Amount'
        DataBinding.FieldName = 'CHARGESAMT'
        Visible = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwCashVoucherDNETTYPE: TcxGridDBBandedColumn
        Caption = 'Net Type'
        DataBinding.FieldName = 'NETTYPE'
        Width = 61
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwCashVoucherDAMOUNT: TcxGridDBBandedColumn
        Caption = 'Amount'
        DataBinding.FieldName = 'AMOUNT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,##0;(#,##0);0'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwCashVoucherDMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwCashVoucherDMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwCashVoucherDAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwCashVoucherDAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwCashVoucherDUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwCashVoucherDUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwCashVoucherDNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwCashVoucherDISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwCashVoucherDID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwCashVoucherDOVERDUE: TcxGridDBBandedColumn
        Caption = 'Over Due'
        DataBinding.FieldName = 'OVERDUE'
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwCashVoucherD
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCashVoucher_H
    Left = 609
    Top = 205
  end
  object dsCashVoucherD: TDataSource
    DataSet = cdsCashVoucher_D
    Left = 609
    Top = 252
  end
  object cdsCashVoucher_H: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'VOUCHERID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryCashVoucher_H'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 486
    Top = 183
    object cdsCashVoucher_HVOUCHERID: TLargeintField
      FieldName = 'VOUCHERID'
      Required = True
    end
    object cdsCashVoucher_HVOUCHERNO: TStringField
      FieldName = 'VOUCHERNO'
    end
    object cdsCashVoucher_HVOUCHERTYPE: TStringField
      FieldName = 'VOUCHERTYPE'
      Size = 1
    end
    object cdsCashVoucher_HENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsCashVoucher_HVOUCHERDATE: TDateField
      FieldName = 'VOUCHERDATE'
    end
    object cdsCashVoucher_HACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCashVoucher_HACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsCashVoucher_HACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCashVoucher_HBROKER_BANKID: TIntegerField
      FieldName = 'BROKER_BANKID'
    end
    object cdsCashVoucher_HBROKER_BANKCODE: TStringField
      FieldName = 'BROKER_BANKCODE'
      Size = 10
    end
    object cdsCashVoucher_HBROKER_BANKACCNO: TStringField
      FieldName = 'BROKER_BANKACCNO'
    end
    object cdsCashVoucher_HBROKER_BANKACCNAME: TStringField
      FieldName = 'BROKER_BANKACCNAME'
      Size = 100
    end
    object cdsCashVoucher_HBROKER_BANKACCBRANCH: TStringField
      FieldName = 'BROKER_BANKACCBRANCH'
      Size = 100
    end
    object cdsCashVoucher_HBROKER_BANKPAYMENTID: TLargeintField
      FieldName = 'BROKER_BANKPAYMENTID'
    end
    object cdsCashVoucher_HCUST_BANKID: TIntegerField
      FieldName = 'CUST_BANKID'
    end
    object cdsCashVoucher_HCUST_BANKCODE: TStringField
      FieldName = 'CUST_BANKCODE'
      Size = 10
    end
    object cdsCashVoucher_HCUST_BANKACCNO: TStringField
      FieldName = 'CUST_BANKACCNO'
    end
    object cdsCashVoucher_HCUST_BANKACCNAME: TStringField
      FieldName = 'CUST_BANKACCNAME'
      Size = 100
    end
    object cdsCashVoucher_HCUST_BANKACCBRANCH: TStringField
      FieldName = 'CUST_BANKACCBRANCH'
      Size = 100
    end
    object cdsCashVoucher_HVOUCHER_DESC: TStringField
      FieldName = 'VOUCHER_DESC'
      Size = 150
    end
    object cdsCashVoucher_HCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsCashVoucher_HEXRATE: TFloatField
      FieldName = 'EXRATE'
    end
    object cdsCashVoucher_HTRANSFERMODE: TStringField
      FieldName = 'TRANSFERMODE'
      Size = 10
    end
    object cdsCashVoucher_HCHARGESAMT: TFloatField
      FieldName = 'CHARGESAMT'
    end
    object cdsCashVoucher_HTOTAL_AMOUNT: TFloatField
      FieldName = 'TOTAL_AMOUNT'
    end
    object cdsCashVoucher_HSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsCashVoucher_HPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsCashVoucher_HJRNID: TLargeintField
      FieldName = 'JRNID'
    end
    object cdsCashVoucher_HMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashVoucher_HMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashVoucher_HAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashVoucher_HAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashVoucher_HUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashVoucher_HUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashVoucher_HNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashVoucher_HISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashVoucher_HID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashVoucher_HqryCashVoucher_D: TDataSetField
      FieldName = 'qryCashVoucher_D'
    end
    object cdsCashVoucher_HBANK_REFERENCE: TStringField
      FieldName = 'BANK_REFERENCE'
      Size = 50
    end
    object cdsCashVoucher_HBANK_INSTRUCTION: TStringField
      FieldName = 'BANK_INSTRUCTION'
      Size = 1
    end
    object cdsCashVoucher_HCCYCODE_FX: TStringField
      FieldName = 'CCYCODE_FX'
      Size = 5
    end
    object cdsCashVoucher_HCHARGESAMT_FX: TFloatField
      FieldName = 'CHARGESAMT_FX'
    end
    object cdsCashVoucher_HTOTAL_AMOUNT_FX: TFloatField
      FieldName = 'TOTAL_AMOUNT_FX'
    end
    object cdsCashVoucher_HTOTAL_AMOUNT_FX_CHANGED: TFloatField
      FieldName = 'TOTAL_AMOUNT_FX_CHANGED'
    end
    object cdsCashVoucher_HTOTAL_AMOUNT_FX_DIFF: TFloatField
      FieldName = 'TOTAL_AMOUNT_FX_DIFF'
    end
  end
  object cdsCashVoucher_D: TNClientDataset
    Aggregates = <>
    DataSetField = cdsCashVoucher_HqryCashVoucher_D
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 486
    Top = 231
    object cdsCashVoucher_DVOUCHERID: TLargeintField
      FieldName = 'VOUCHERID'
      Required = True
    end
    object cdsCashVoucher_DSEQID: TLargeintField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsCashVoucher_DTRANS_TYPE: TStringField
      FieldName = 'TRANS_TYPE'
      Size = 2
    end
    object cdsCashVoucher_DLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
      Size = 10
    end
    object cdsCashVoucher_DLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsCashVoucher_DLINKNO: TStringField
      FieldName = 'LINKNO'
    end
    object cdsCashVoucher_DACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCashVoucher_DACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsCashVoucher_DACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCashVoucher_DTRDDATE: TDateField
      FieldName = 'TRDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashVoucher_DDUEDATE: TDateField
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashVoucher_DCASH_DESC: TStringField
      FieldName = 'CASH_DESC'
      Size = 150
    end
    object cdsCashVoucher_DTRANS_AMT: TFloatField
      FieldName = 'TRANS_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashVoucher_DNETTYPE: TStringField
      FieldName = 'NETTYPE'
      Size = 1
    end
    object cdsCashVoucher_DAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashVoucher_DMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashVoucher_DMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashVoucher_DAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashVoucher_DAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashVoucher_DUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashVoucher_DUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashVoucher_DNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashVoucher_DISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashVoucher_DID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashVoucher_DOVERDUE: TStringField
      FieldName = 'OVERDUE'
      Size = 1
    end
  end
end

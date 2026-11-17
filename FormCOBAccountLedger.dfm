inherited frmCOBAccountLedger: TfrmCOBAccountLedger
  Caption = 'Account Ledger Class'
  ClientHeight = 409
  ClientWidth = 646
  ExplicitWidth = 652
  ExplicitHeight = 438
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 646
    Height = 105
    Align = alTop
    ExplicitWidth = 646
    ExplicitHeight = 105
    object txtRegNo: TcxTextEdit [0]
      Left = 91
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object txtCustName: TcxTextEdit [1]
      Left = 91
      Top = 37
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 250
    end
    object cxButton1: TcxButton [2]
      Left = 242
      Top = 64
      Width = 115
      Height = 25
      Caption = 'Generate Act Ledger'
      TabOrder = 3
      OnClick = cxButton1Click
    end
    object cbAccLedClass: TcxDBLookupComboBox [3]
      Left = 91
      Top = 64
      RepositoryItem = dmGlobal.luAccLegClass
      DataBinding.DataField = 'ALCID'
      DataBinding.DataSource = dsAccount
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 145
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      LayoutDirection = ldHorizontal
      Index = -1
    end
    object LayoutControlItem1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Reg No'
      Parent = LayoutControlGroup1
      Control = txtRegNo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem2: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Customer Name'
      Parent = LayoutControlGroup1
      Control = txtCustName
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem4: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = lgLedegrClass
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lgLedegrClass: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object LayoutControlItem5: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Ledger Class'
      Parent = LayoutControlGroup2
      Control = cbAccLedClass
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup2: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = lgLedegrClass
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 360
    Width = 646
    ExplicitTop = 360
    ExplicitWidth = 646
    inherited LayoutControlFooterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    inherited LayoutControlFooterItem1: TdxLayoutItem
      Index = 0
    end
    inherited LayoutControlFooterItem2: TdxLayoutItem
      Index = 1
    end
  end
  object cxGrid1: TcxGrid [2]
    Left = 0
    Top = 105
    Width = 646
    Height = 255
    Align = alClient
    TabOrder = 2
    object grdAccLedger: TcxGridDBBandedTableView
      Navigator.Buttons.ConfirmDelete = True
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsSubject
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GridLineColor = clCream
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object grdAccLedgerALTYPE: TcxGridDBBandedColumn
        Caption = 'Ledger Type'
        DataBinding.FieldName = 'ALTYPE'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ListColumns = <>
        RepositoryItem = dmGlobal.luActLedgerType
        Width = 142
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grdAccLedgerALCODE: TcxGridDBBandedColumn
        Caption = 'Ledegr Code'
        DataBinding.FieldName = 'ALCODE'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grdAccLedgerCALCINTEREST: TcxGridDBBandedColumn
        Caption = 'Calc Interest'
        DataBinding.FieldName = 'CALCINTEREST'
        RepositoryItem = dmGlobal.chkStandard
        Width = 74
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grdAccLedgerINTERESTCODE: TcxGridDBBandedColumn
        Caption = 'Interest Code'
        DataBinding.FieldName = 'INTERESTCODE'
        Width = 97
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = grdAccLedger
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmCOBList.cdsAccountLedger
    Left = 418
    Top = 27
  end
  object cdsCOBAccLedgerClass: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ALCID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryCOBAccLedgerClass'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Left = 512
    Top = 8
    object cdsCOBAccLedgerClassALCID: TIntegerField
      FieldName = 'ALCID'
      Required = True
    end
    object cdsCOBAccLedgerClassALTYPE: TStringField
      FieldName = 'ALTYPE'
      Required = True
      Size = 10
    end
    object cdsCOBAccLedgerClassMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCOBAccLedgerClassMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCOBAccLedgerClassAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCOBAccLedgerClassAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCOBAccLedgerClassUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCOBAccLedgerClassUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCOBAccLedgerClassNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCOBAccLedgerClassISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCOBAccLedgerClassID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsAccount: TDataSource
    DataSet = frmCOBList.cdsAccount
    Left = 392
    Top = 184
  end
end

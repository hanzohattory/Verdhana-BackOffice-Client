inherited frmCashDebetCreditNoteList: TfrmCashDebetCreditNoteList
  Caption = 'Cash Debet/Credit Note'
  ClientHeight = 500
  ClientWidth = 1331
  ExplicitWidth = 1331
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 1331
    Height = 105
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 732
    object dtStartDate: TcxDateEdit
      Left = 51
      Top = 28
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 100
    end
    object cxButton1: TcxButton
      Left = 359
      Top = 10
      Width = 75
      Height = 25
      Action = actViewData
      TabOrder = 3
    end
    object rgStatus: TcxRadioGroup
      Left = 169
      Top = 10
      Caption = 'Status'
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'All'
          Value = 'A'
        end
        item
          Caption = 'Posted'
          Value = 'P'
        end
        item
          Caption = 'Open'
          Value = 'O'
        end
        item
          Caption = 'Cancel'
          Value = 'C'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 2
      Height = 79
      Width = 184
    end
    object dtEndDate: TcxDateEdit
      Left = 51
      Top = 55
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 100
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
      CaptionOptions.Text = 'From'
      Parent = dxLayoutControl1Group1
      Control = dtStartDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup1
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'cxRadioGroup1'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup3
      Control = rgStatus
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'To'
      Parent = dxLayoutControl1Group1
      Control = dtEndDate
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Due Date'
      Parent = dxLayoutGroup3
      ButtonOptions.Buttons = <>
      Index = 0
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 105
    Width = 1331
    Height = 395
    Align = alClient
    PopupMenu = popDocking
    TabOrder = 1
    ExplicitWidth = 732
    object gvwCashDCNote: TcxGridDBBandedTableView
      PopupMenu = popGrid
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsCashDCNoteList
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwCashDCNoteCDBCRID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CDBCRID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwCashDCNoteCDBCRCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CDBCRCODE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwCashDCNoteJTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JTYPE'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwCashDCNoteACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwCashDCNoteTRDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRDATE'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwCashDCNoteDUEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DUEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwCashDCNoteDC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DC'
        RepositoryItem = dmGlobal.luDebetCredit
        Width = 24
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwCashDCNoteCCY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCY'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwCashDCNoteAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AMOUNT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwCashDCNoteCCYFX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYFX'
        Width = 93
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwCashDCNoteEXRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXRATE'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwCashDCNoteAMOUNTFX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AMOUNTFX'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwCashDCNoteREMARK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REMARK'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwCashDCNoteGLCDDB: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GLCDDB'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwCashDCNoteGLCDCR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GLCDCR'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwCashDCNoteSTATUS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STATUS'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Open'
            ImageIndex = 0
            Value = 'O'
          end
          item
            Description = 'Posted'
            Value = 'P'
          end
          item
            Description = 'Cancel'
            Value = 'C'
          end>
        Width = 52
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwCashDCNotePROCESSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PROCESSDATE'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwCashDCNoteCANCELDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CANCELDATE'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwCashDCNoteACCCDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCCDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwCashDCNoteMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwCashDCNoteMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwCashDCNoteAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwCashDCNoteAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwCashDCNoteUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwCashDCNoteUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwCashDCNoteNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwCashDCNoteISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwCashDCNoteID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwCashDCNoteACCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCODE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwCashDCNoteACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwCashDCNote
    end
  end
  inherited popDocking: TPopupMenu
    Left = 416
    Top = 168
  end
  inherited ActionPermission: TNActionPermission
    ActionList = aclCashDCNote
    Left = 328
    Top = 168
  end
  object aclCashDCNote: TActionList
    Left = 328
    Top = 216
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      OnExecute = actViewDataExecute
      CheckPermission = False
    end
    object actNew: TNAction
      Category = 'NActions'
      Caption = 'New'
      OnExecute = actNewExecute
      CheckPermission = False
    end
    object actEdit: TNAction
      Category = 'NActions'
      Caption = 'Edit'
      OnExecute = actEditExecute
      OnUpdate = actViewUpdate
      CheckPermission = False
    end
    object actPosting: TNAction
      Category = 'NActions'
      Caption = 'Posting'
      OnExecute = actPostingExecute
      CheckPermission = False
    end
    object actCancel: TNAction
      Category = 'NActions'
      Caption = 'Cancel'
      OnExecute = actCancelExecute
      OnUpdate = actViewUpdate
      CheckPermission = False
    end
    object actView: TNAction
      Category = 'NActions'
      Caption = 'View'
      OnExecute = actViewExecute
      OnUpdate = actViewUpdate
      CheckPermission = False
    end
  end
  object popGrid: TPopupMenu
    Left = 416
    Top = 216
    object View1: TMenuItem
      Action = actView
    end
    object New1: TMenuItem
      Action = actNew
    end
    object Edit1: TMenuItem
      Action = actEdit
    end
    object Posting1: TMenuItem
      Action = actPosting
    end
    object Cancel1: TMenuItem
      Action = actCancel
    end
  end
  object cdsCashDCNoteList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'STARTDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'ENDDATE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ISALL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'STATUS'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmCashManagement_qryCashDCNoteList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 328
    Top = 272
    object cdsCashDCNoteListCDBCRID: TIntegerField
      FieldName = 'CDBCRID'
      Required = True
    end
    object cdsCashDCNoteListCDBCRCODE: TStringField
      DisplayLabel = 'Code'
      FieldName = 'CDBCRCODE'
      Required = True
    end
    object cdsCashDCNoteListJTYPE: TStringField
      DisplayLabel = 'Journal Type'
      FieldName = 'JTYPE'
    end
    object cdsCashDCNoteListACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsCashDCNoteListTRDATE: TDateField
      DisplayLabel = 'Trade Date'
      FieldName = 'TRDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCashDCNoteListDUEDATE: TDateField
      DisplayLabel = 'Due Date'
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCashDCNoteListDC: TStringField
      DisplayLabel = 'D/C'
      FieldName = 'DC'
      Size = 1
    end
    object cdsCashDCNoteListCCY: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCY'
      Size = 5
    end
    object cdsCashDCNoteListAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsCashDCNoteListCCYFX: TStringField
      DisplayLabel = 'Currency Forex'
      FieldName = 'CCYFX'
      Size = 5
    end
    object cdsCashDCNoteListEXRATE: TFloatField
      DisplayLabel = 'Ex Rate'
      FieldName = 'EXRATE'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsCashDCNoteListAMOUNTFX: TFloatField
      DisplayLabel = 'Amount Forex'
      FieldName = 'AMOUNTFX'
      DisplayFormat = '#,##0.00'
      EditFormat = '#.00'
    end
    object cdsCashDCNoteListREMARK: TStringField
      DisplayLabel = 'Remark'
      FieldName = 'REMARK'
      Size = 50
    end
    object cdsCashDCNoteListGLCDDB: TIntegerField
      DisplayLabel = 'Debet'
      FieldName = 'GLCDDB'
    end
    object cdsCashDCNoteListGLCDCR: TIntegerField
      DisplayLabel = 'Credit'
      FieldName = 'GLCDCR'
    end
    object cdsCashDCNoteListSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsCashDCNoteListPROCESSDATE: TDateTimeField
      DisplayLabel = 'Process Date'
      FieldName = 'PROCESSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashDCNoteListCANCELDATE: TDateTimeField
      DisplayLabel = 'Cancel Date'
      FieldName = 'CANCELDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashDCNoteListACCCDATE: TDateTimeField
      FieldName = 'ACCCDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashDCNoteListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashDCNoteListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashDCNoteListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashDCNoteListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashDCNoteListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashDCNoteListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashDCNoteListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashDCNoteListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashDCNoteListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashDCNoteListACCODE: TStringField
      DisplayLabel = 'Account Code'
      FieldKind = fkLookup
      FieldName = 'ACCODE'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCCODE'
      KeyFields = 'ACCID'
      Size = 30
      Lookup = True
    end
    object cdsCashDCNoteListACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldKind = fkLookup
      FieldName = 'ACCNAME'
      LookupDataSet = dmLookup.cdsLuAccount
      LookupKeyFields = 'ACCID'
      LookupResultField = 'ACCNAME'
      KeyFields = 'ACCID'
      Size = 150
      Lookup = True
    end
  end
  object dsCashDCNoteList: TDataSource
    DataSet = cdsCashDCNoteList
    Left = 328
    Top = 320
  end
end

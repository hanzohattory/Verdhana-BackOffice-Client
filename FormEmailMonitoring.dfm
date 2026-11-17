inherited frmEmailMonitoring: TfrmEmailMonitoring
  Caption = 'Email Monitoring'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmClassic
    ExplicitTop = 75
    ExplicitHeight = 393
    inherited gvwMaster: TcxGridDBBandedTableView
      object gvwMasterEMAILID: TcxGridDBBandedColumn
        Caption = 'Email ID'
        DataBinding.FieldName = 'EMAILID'
        Width = 64
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterEMAILDATE: TcxGridDBBandedColumn
        Caption = 'Email Date'
        DataBinding.FieldName = 'EMAILDATE'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterLINKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LINKID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterACCCODE: TcxGridDBBandedColumn
        Caption = 'Account Code'
        DataBinding.FieldName = 'ACCCODE'
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        Caption = 'Account Name'
        DataBinding.FieldName = 'ACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterEMAILTO: TcxGridDBBandedColumn
        Caption = 'Email To'
        DataBinding.FieldName = 'EMAILTO'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterEMAILCC: TcxGridDBBandedColumn
        Caption = 'Email CC'
        DataBinding.FieldName = 'EMAILCC'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterEMAILBCC: TcxGridDBBandedColumn
        Caption = 'Email BCC'
        DataBinding.FieldName = 'EMAILBCC'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterEMAILSUBJECT: TcxGridDBBandedColumn
        Caption = 'Email Subject'
        DataBinding.FieldName = 'EMAILSUBJECT'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterEMAILMESSAGE: TcxGridDBBandedColumn
        Caption = 'Email Message'
        DataBinding.FieldName = 'EMAILMESSAGE'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterNOTES: TcxGridDBBandedColumn
        Caption = 'Notes'
        DataBinding.FieldName = 'NOTES'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        Caption = 'Modification Date'
        DataBinding.FieldName = 'MODDA'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        Caption = 'Modification User'
        DataBinding.FieldName = 'MODUI'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMastereStatus: TcxGridDBBandedColumn
        DataBinding.FieldName = 'eStatus'
        RepositoryItem = dmGlobal.luEmailStatus
        Width = 71
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterEMAIL_DESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EMAIL_DESC'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object gvwSendEmail: TcxGridDBBandedTableView [1]
      PopupMenu = popSendMail
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      OnCustomDrawCell = gvwSendEmailCustomDrawCell
      DataController.DataSource = dsSendEmail
      DataController.DetailKeyFieldNames = 'EMAILID'
      DataController.KeyFieldNames = 'SENDID'
      DataController.MasterKeyFieldNames = 'EMAILID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = BlueToggle
      Bands = <
        item
        end>
      object gvwSendEmailSENDID: TcxGridDBBandedColumn
        Caption = 'Send ID'
        DataBinding.FieldName = 'SENDID'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwSendEmailEMAILID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EMAILID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwSendEmailEMAILTO: TcxGridDBBandedColumn
        Caption = 'Email To'
        DataBinding.FieldName = 'EMAILTO'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwSendEmailEMAILCC: TcxGridDBBandedColumn
        Caption = 'Email CC'
        DataBinding.FieldName = 'EMAILCC'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwSendEmailEMAILBCC: TcxGridDBBandedColumn
        Caption = 'Email BCC'
        DataBinding.FieldName = 'EMAILBCC'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwSendEmailEMAILSUBJECT: TcxGridDBBandedColumn
        Caption = 'Email Subject'
        DataBinding.FieldName = 'EMAILSUBJECT'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwSendEmailEMAILMESSAGE: TcxGridDBBandedColumn
        Caption = 'Email Message'
        DataBinding.FieldName = 'EMAILMESSAGE'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwSendEmailEMAILSTATUS: TcxGridDBBandedColumn
        Caption = 'Email Status'
        DataBinding.FieldName = 'EMAILSTATUS'
        RepositoryItem = dmGlobal.luEmailStatus
        Width = 64
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwSendEmailSENDDA: TcxGridDBBandedColumn
        Caption = 'Send Date'
        DataBinding.FieldName = 'SENDDA'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwSendEmailSENDUI: TcxGridDBBandedColumn
        Caption = 'Send User'
        DataBinding.FieldName = 'SENDUI'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwSendEmailMODDA: TcxGridDBBandedColumn
        Caption = 'Modification Date'
        DataBinding.FieldName = 'MODDA'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwSendEmailMODUI: TcxGridDBBandedColumn
        Caption = 'Modification User'
        DataBinding.FieldName = 'MODUI'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwSendEmailSENDINFO: TcxGridDBBandedColumn
        Caption = 'Send Info'
        DataBinding.FieldName = 'SENDINFO'
        Width = 350
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwSendEmailEMAILDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EMAILDATE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
    end
    inherited grdMasterLevel1: TcxGridLevel
      object grdMasterLevel2: TcxGridLevel
        GridView = gvwSendEmail
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actEdit'
        Permission = '[Email Monitoring].Edit'
      end
      item
        ActionName = 'actOpen'
        Permission = '[Email Monitoring].View'
      end>
    AssignedPermission = <
      item
        Name = '[Email Monitoring].Edit'
        Description = 'Edit Email Monitoring'
      end
      item
        Name = '[Email Monitoring].View'
        Description = 'View Email Monitoring'
      end>
    Left = 304
  end
  inherited PropStore: TcxPropertiesStore
    Components = <
      item
        Component = gvwSendEmailEMAILBCC
        Properties.Strings = (
          'Width')
      end
      item
        Component = gvwSendEmailEMAILCC
        Properties.Strings = (
          'Width')
      end
      item
        Component = gvwSendEmailEMAILID
        Properties.Strings = (
          'Width')
      end
      item
        Component = gvwSendEmailEMAILMESSAGE
        Properties.Strings = (
          'Width')
      end
      item
        Component = gvwSendEmailEMAILSTATUS
        Properties.Strings = (
          'Width')
      end
      item
        Component = gvwSendEmailEMAILSUBJECT
        Properties.Strings = (
          'Width')
      end
      item
        Component = gvwSendEmailEMAILTO
        Properties.Strings = (
          'Width')
      end
      item
        Component = gvwSendEmailMODDA
        Properties.Strings = (
          'Width')
      end
      item
        Component = gvwSendEmailMODUI
        Properties.Strings = (
          'Width')
      end
      item
        Component = gvwSendEmailSENDDA
        Properties.Strings = (
          'Width')
      end
      item
        Component = gvwSendEmailSENDID
        Properties.Strings = (
          'Width')
      end
      item
        Component = gvwSendEmailSENDUI
        Properties.Strings = (
          'Width')
      end>
  end
  inherited PrintComp: TdxComponentPrinter
    PixelsPerInch = 96
    inherited PrintCompMainGrid: TdxGridReportLink
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited saBrowse: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited popMaster: TPopupMenu
    object ResendThisEmail1: TMenuItem [8]
      Action = actResendEmail
    end
    object N5: TMenuItem [9]
      Caption = '-'
    end
    object ExpandAll1: TMenuItem [11]
      Action = actExpandAll
    end
    object CollapseAll1: TMenuItem [12]
      Action = actCollapseAll
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsEmailList
  end
  inherited aclEditor: TActionList
    inherited actNew: TNAction
      Enabled = False
      Visible = False
      CheckPermission = False
    end
    inherited actInsertFromCurrentData: TNAction
      Enabled = False
      Visible = False
      CheckPermission = False
    end
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      CheckPermission = False
    end
    object actResendEmail: TNAction
      Category = 'NActions'
      Caption = 'Resend This Email'
      OnExecute = actResendEmailExecute
      OnUpdate = actResendEmailUpdate
      CheckPermission = False
    end
    object actViewSendMail: TNAction
      Category = 'NActions'
      Caption = 'View Send Mail'
      OnExecute = actViewSendMailExecute
      CheckPermission = False
    end
    object actFindEmail: TNAction
      Category = 'NActions'
      Caption = 'Find Email'
      CheckPermission = False
    end
    object actExpandAll: TNAction
      Category = 'NActions'
      Caption = 'Expand All'
      OnExecute = actExpandAllExecute
      CheckPermission = False
    end
    object actCollapseAll: TNAction
      Category = 'NActions'
      Caption = 'Collapse All'
      OnExecute = actCollapseAllExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
    inherited BarMBrowseBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuInsert'
        end
        item
          Visible = True
          ItemName = 'mnuEdit'
        end
        item
          Visible = True
          ItemName = 'mnuDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dtStart'
        end
        item
          Visible = True
          ItemName = 'dtEnd'
        end
        item
          Visible = True
          ItemName = 'mnuRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnExpand'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuCustomFilter'
        end>
    end
    inherited mnuRefresh: TdxBarButton
      Caption = 'Load Data'
    end
    object dtStart: TcxBarEditItem
      Caption = 'Mail Date'
      Category = 0
      Hint = 'Mail Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
    object dtEnd: TcxBarEditItem
      Caption = '-'
      Category = 0
      Hint = '-'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
    object btnExpand: TdxBarButton
      Caption = 'Expand All'
      Category = 0
      Hint = 'Expand All'
      Visible = ivAlways
      ImageIndex = 1
      PaintStyle = psCaptionGlyph
      OnClick = btnExpandClick
    end
  end
  inherited DataContainer: TNMasterDetailData
    AutoUpdateList = True
    MasterDataset = cdsEmailView
    ListDataset = cdsEmailList
    DetailsData = <
      item
        DetailDataset = cdsEmailAttachmentView
        DetailTableName = 'main.B_EMAIL_ATTACHMENT'
        DetailKeys = <
          item
            FieldName = 'SEQID'
            FieldIndex = 0
          end>
      end>
    MasterTableName = 'main.B_EMAIL'
    Keys = <
      item
        FieldName = 'EMAILID'
        FieldIndex = 0
      end>
    AutoFields = <
      item
        FieldName = 'EMAILID'
        SequenceName = 'TBL_B_EMAIL'
        DataType = ftLargeint
        NumFormat = '%.6d'
      end>
    BeforePost = DataContainerBeforePost
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsEmailList: TNClientDataset
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
      end>
    ProviderName = 'dspN_dmAdministrator_qryEmailList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 104
    Top = 120
    object cdsEmailListEMAILID: TLargeintField
      FieldName = 'EMAILID'
      Required = True
    end
    object cdsEmailListEMAILTYPE: TStringField
      FieldName = 'EMAILTYPE'
      Size = 10
    end
    object cdsEmailListEMAILDATE: TDateField
      FieldName = 'EMAILDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsEmailListLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsEmailListACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsEmailListACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsEmailListACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsEmailListEMAILTO: TStringField
      FieldName = 'EMAILTO'
      Size = 500
    end
    object cdsEmailListEMAILCC: TStringField
      FieldName = 'EMAILCC'
      Size = 500
    end
    object cdsEmailListEMAILBCC: TStringField
      FieldName = 'EMAILBCC'
      Size = 500
    end
    object cdsEmailListEMAILSUBJECT: TStringField
      FieldName = 'EMAILSUBJECT'
      Size = 500
    end
    object cdsEmailListEMAILMESSAGE: TMemoField
      FieldName = 'EMAILMESSAGE'
      BlobType = ftMemo
    end
    object cdsEmailListEMAILSTATUS: TStringField
      FieldName = 'EMAILSTATUS'
      Size = 1
    end
    object cdsEmailListNOTES: TMemoField
      FieldName = 'NOTES'
      BlobType = ftMemo
    end
    object cdsEmailListMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEmailListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEmailListAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEmailListAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEmailListUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsEmailListUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsEmailListNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsEmailListISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsEmailListID: TLargeintField
      FieldName = 'ID'
    end
    object cdsEmailListeStatus: TStringField
      DisplayLabel = 'Status'
      FieldName = 'eStatus'
      ReadOnly = True
      Size = 5
    end
    object cdsEmailListEMAIL_DESC: TStringField
      DisplayLabel = 'Email Type'
      FieldName = 'EMAIL_DESC'
      ReadOnly = True
      Size = 100
    end
  end
  object cdsSendEmailList: TNClientDataset
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
      end>
    ProviderName = 'dspN_dmAdministrator_qrySendEmailList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 104
    Top = 168
    object cdsSendEmailListSENDID: TLargeintField
      FieldName = 'SENDID'
      Required = True
    end
    object cdsSendEmailListEMAILID: TLargeintField
      FieldName = 'EMAILID'
      Required = True
    end
    object cdsSendEmailListEMAILTO: TStringField
      FieldName = 'EMAILTO'
      Size = 500
    end
    object cdsSendEmailListEMAILCC: TStringField
      FieldName = 'EMAILCC'
      Size = 500
    end
    object cdsSendEmailListEMAILBCC: TStringField
      FieldName = 'EMAILBCC'
      Size = 500
    end
    object cdsSendEmailListEMAILSUBJECT: TStringField
      FieldName = 'EMAILSUBJECT'
      Size = 500
    end
    object cdsSendEmailListEMAILMESSAGE: TMemoField
      FieldName = 'EMAILMESSAGE'
      BlobType = ftMemo
    end
    object cdsSendEmailListEMAILSTATUS: TStringField
      FieldName = 'EMAILSTATUS'
      Size = 1
    end
    object cdsSendEmailListSENDDA: TDateTimeField
      FieldName = 'SENDDA'
      DisplayFormat = 'dd MMM yyyy hh:nn:ss.zzz'
    end
    object cdsSendEmailListSENDUI: TStringField
      FieldName = 'SENDUI'
      Size = 30
    end
    object cdsSendEmailListMODDA: TDateTimeField
      FieldName = 'MODDA'
      DisplayFormat = 'dd MMM yyyy hh:nn:ss.zzz'
    end
    object cdsSendEmailListMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsSendEmailListEMAILDATE: TDateField
      FieldName = 'EMAILDATE'
    end
    object cdsSendEmailListSENDINFO: TStringField
      FieldName = 'SENDINFO'
      Size = 500
    end
  end
  object dsSendEmail: TDataSource
    DataSet = cdsSendEmailList
    Left = 32
    Top = 224
  end
  object cdsEmailView: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'EMAILID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAdministrator_qryEmailView'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 120
    object cdsEmailViewEMAILID: TLargeintField
      FieldName = 'EMAILID'
      Required = True
    end
    object cdsEmailViewEMAILTYPE: TStringField
      FieldName = 'EMAILTYPE'
      Size = 10
    end
    object cdsEmailViewEMAILDATE: TDateField
      FieldName = 'EMAILDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsEmailViewLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsEmailViewACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsEmailViewACCCODE: TStringField
      FieldName = 'ACCCODE'
      Size = 30
    end
    object cdsEmailViewACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsEmailViewEMAILTO: TStringField
      FieldName = 'EMAILTO'
      Size = 500
    end
    object cdsEmailViewEMAILCC: TStringField
      FieldName = 'EMAILCC'
      Size = 500
    end
    object cdsEmailViewEMAILBCC: TStringField
      FieldName = 'EMAILBCC'
      Size = 500
    end
    object cdsEmailViewEMAILSUBJECT: TStringField
      FieldName = 'EMAILSUBJECT'
      Size = 500
    end
    object cdsEmailViewEMAILMESSAGE: TMemoField
      FieldName = 'EMAILMESSAGE'
      BlobType = ftMemo
    end
    object cdsEmailViewEMAILSTATUS: TStringField
      FieldName = 'EMAILSTATUS'
      Size = 1
    end
    object cdsEmailViewNOTES: TMemoField
      FieldName = 'NOTES'
      BlobType = ftMemo
    end
    object cdsEmailViewMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEmailViewMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEmailViewAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEmailViewAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEmailViewUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsEmailViewUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsEmailViewNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsEmailViewISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsEmailViewID: TLargeintField
      FieldName = 'ID'
    end
    object cdsEmailViewqryEmailAttachmentView: TDataSetField
      FieldName = 'qryEmailAttachmentView'
    end
  end
  object cdsSendEmailView: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'SENDID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAdministrator_qrySendEmailView'
    ReadOnly = True
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 248
    Top = 168
    object cdsSendEmailViewSENDID: TLargeintField
      FieldName = 'SENDID'
      Required = True
    end
    object cdsSendEmailViewEMAILID: TLargeintField
      FieldName = 'EMAILID'
      Required = True
    end
    object cdsSendEmailViewEMAILTO: TStringField
      FieldName = 'EMAILTO'
      Size = 500
    end
    object cdsSendEmailViewEMAILCC: TStringField
      FieldName = 'EMAILCC'
      Size = 500
    end
    object cdsSendEmailViewEMAILBCC: TStringField
      FieldName = 'EMAILBCC'
      Size = 500
    end
    object cdsSendEmailViewEMAILSUBJECT: TStringField
      FieldName = 'EMAILSUBJECT'
      Size = 500
    end
    object cdsSendEmailViewEMAILMESSAGE: TMemoField
      FieldName = 'EMAILMESSAGE'
      BlobType = ftMemo
    end
    object cdsSendEmailViewEMAILSTATUS: TStringField
      FieldName = 'EMAILSTATUS'
      Size = 1
    end
    object cdsSendEmailViewSENDDA: TDateTimeField
      FieldName = 'SENDDA'
      DisplayFormat = 'dd MMM yyyy hh:nn:ss.zzz'
    end
    object cdsSendEmailViewSENDUI: TStringField
      FieldName = 'SENDUI'
      Size = 30
    end
    object cdsSendEmailViewMODDA: TDateTimeField
      FieldName = 'MODDA'
      DisplayFormat = 'dd MMM yyyy hh:nn:ss.zzz'
    end
    object cdsSendEmailViewMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsSendEmailViewEMAILTYPE: TStringField
      FieldName = 'EMAILTYPE'
      ReadOnly = True
      Size = 10
    end
    object cdsSendEmailViewEMAILDATE: TDateField
      FieldName = 'EMAILDATE'
      ReadOnly = True
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsSendEmailViewLINKID: TLargeintField
      FieldName = 'LINKID'
      ReadOnly = True
    end
    object cdsSendEmailViewACCID: TIntegerField
      FieldName = 'ACCID'
      ReadOnly = True
    end
    object cdsSendEmailViewACCCODE: TStringField
      FieldName = 'ACCCODE'
      ReadOnly = True
      Size = 30
    end
    object cdsSendEmailViewACCNAME: TStringField
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsSendEmailViewqrySendEmailAttachmentView: TDataSetField
      FieldName = 'qrySendEmailAttachmentView'
    end
    object cdsSendEmailViewSENDINFO: TStringField
      FieldName = 'SENDINFO'
      Size = 500
    end
  end
  object cdsEmailAttachmentView: TNClientDataset
    Aggregates = <>
    DataSetField = cdsEmailViewqryEmailAttachmentView
    Params = <>
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'SEQID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 392
    Top = 120
    object cdsEmailAttachmentViewEMAILID: TLargeintField
      FieldName = 'EMAILID'
      Required = True
    end
    object cdsEmailAttachmentViewSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsEmailAttachmentViewEMAIL_OBJECT_FILENAME: TStringField
      FieldName = 'EMAIL_OBJECT_FILENAME'
      Required = True
      Size = 100
    end
    object cdsEmailAttachmentViewEMAIL_OBJECT_FILE: TBlobField
      FieldName = 'EMAIL_OBJECT_FILE'
      Required = True
    end
    object cdsEmailAttachmentViewMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsEmailAttachmentViewMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsEmailAttachmentViewAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsEmailAttachmentViewAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsEmailAttachmentViewUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsEmailAttachmentViewUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsEmailAttachmentViewNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsEmailAttachmentViewISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsEmailAttachmentViewID: TLargeintField
      FieldName = 'ID'
    end
  end
  object cdsSendEmailAttachmentView: TNClientDataset
    Aggregates = <>
    DataSetField = cdsSendEmailViewqrySendEmailAttachmentView
    Params = <>
    ReadOnly = True
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 392
    Top = 168
    object cdsSendEmailAttachmentViewSENDID: TLargeintField
      FieldName = 'SENDID'
      Required = True
    end
    object cdsSendEmailAttachmentViewSEQID: TIntegerField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsSendEmailAttachmentViewEMAIL_OBJECT_FILENAME: TStringField
      FieldName = 'EMAIL_OBJECT_FILENAME'
      Required = True
      Size = 100
    end
    object cdsSendEmailAttachmentViewEMAIL_OBJECT_FILE: TBlobField
      FieldName = 'EMAIL_OBJECT_FILE'
      Required = True
    end
  end
  object popSendMail: TPopupMenu
    Left = 440
    Top = 280
    object ViewSendMail1: TMenuItem
      Action = actViewSendMail
    end
  end
end

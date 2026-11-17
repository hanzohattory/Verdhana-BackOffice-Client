inherited frmEIPOAllotmentList: TfrmEIPOAllotmentList
  Caption = 'e-IPO Allotment'
  ClientWidth = 1359
  ExplicitLeft = 3
  ExplicitTop = 3
  ExplicitWidth = 1359
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Width = 1359
    ExplicitWidth = 1359
    inherited gvwMaster: TcxGridDBBandedTableView
      OptionsView.BandHeaders = True
      Bands = <
        item
          Options.HoldOwnColumnsOnly = True
        end
        item
          Caption = 'Inserted'
          Options.HoldOwnColumnsOnly = True
          Options.Moving = False
        end
        item
          Caption = 'Approved'
          Options.HoldOwnColumnsOnly = True
          Options.Moving = False
        end
        item
          Caption = 'Alloted'
          Options.HoldOwnColumnsOnly = True
          Options.Moving = False
        end
        item
          Caption = 'Distributed'
          Options.HoldOwnColumnsOnly = True
          Options.Moving = False
        end
        item
          Caption = 'Canceled'
          Options.HoldOwnColumnsOnly = True
          Options.Moving = False
        end>
      object gvwMasterINSTTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSTTYPE'
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterEXTREF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXTREF'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterSHARE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SHARE'
        Width = 99
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterCLIENTACC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CLIENTACC'
        Width = 103
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterSENT_TO_FROM: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SENT_TO_FROM'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterNOTEDESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTEDESC'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'QTY'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AMOUNT'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterSETTLEDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SETTLEDATE'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterREASON: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REASON'
        Visible = False
        Width = 42
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterSTATUS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STATUS'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterINSTRUCTION_TYPE_DESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSTRUCTION_TYPE_DESC'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterREASONINSTRDETAIL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REASONINSTRDETAIL'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterIPOCODE: TcxGridDBBandedColumn
        Caption = 'Code'
        DataBinding.FieldName = 'IPOCODE'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterSTOCKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterPRICE: TcxGridDBBandedColumn
        Caption = 'Price'
        DataBinding.FieldName = 'PRICE'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterSTAT_IPO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT_IPO'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Open'
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = 'Approved'
            Value = '2'
          end
          item
            Description = 'Alloted'
            Value = '3'
          end
          item
            Description = 'Distributed'
            Value = '4'
          end
          item
            Description = 'Canceled'
            Value = '5'
          end>
        Width = 81
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterAPPDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDATE'
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterAPPTIME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPTIME'
        Width = 150
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterALLDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALLDATE'
        Width = 100
        Position.BandIndex = 3
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterALLTIME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALLTIME'
        Width = 150
        Position.BandIndex = 3
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterALLUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALLUI'
        Position.BandIndex = 3
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterDISDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DISDATE'
        Width = 100
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterDISTIME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DISTIME'
        Width = 150
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterDISUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DISUI'
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCCLDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCLDATE'
        Width = 100
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterCCLTIME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCLTIME'
        Width = 150
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterCCLUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCLUI'
        Position.BandIndex = 5
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterINSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSDATE'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterINSTIME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSTIME'
        Width = 150
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterINSUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'INSUI'
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterALLOTEDQTY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALLOTEDQTY'
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterALLOTEDPRICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALLOTEDPRICE'
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterALLOTEDAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALLOTEDAMOUNT'
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterTRANSDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANSDATE'
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterIPOID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IPOID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterSTATUS_DESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STATUS_DESC'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actNew'
        Permission = 'e-IPO Allotment'
      end
      item
        ActionName = 'actEdit'
        Permission = 'e-IPO Allotment'
      end
      item
        ActionName = 'actOpen'
        Permission = 'e-IPO Allotment'
      end>
    AssignedPermission = <
      item
        Name = 'E-IPO Data'
        Description = 'E-IPO Data'
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
    object N5: TMenuItem [9]
      Caption = '-'
    end
    object UploadOrdereIPO1: TMenuItem [10]
      Action = actEIPOOrder
    end
    object CanceleIPO1: TMenuItem [11]
      Action = actCancelEIPO
    end
    object ApprovedAll1: TMenuItem [12]
      Action = actApprovedAll
    end
    object N1: TMenuItem [13]
      Caption = '-'
    end
    object eIPOAlloted2: TMenuItem [14]
      Action = actEIPOAllotment
    end
    object eIPOAlloted1: TMenuItem [15]
      Action = actEIPOAlloted
    end
    object AllotedProcess1: TMenuItem [16]
      Action = actAllotedProcess
    end
    object N6: TMenuItem [17]
      Caption = '-'
    end
    object DistributionProcess1: TMenuItem [18]
      Action = actDistributionProcess
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsEIPOList
  end
  inherited aclEditor: TActionList
    object actUpload: TNAction
      Category = 'NActions'
      Caption = 'Upload'
      ImageIndex = 1
      CheckPermission = False
    end
    object actApprovedSelected: TNAction
      Category = 'NActions'
      Caption = 'Approve Selected'
      CheckPermission = False
    end
    object actApprovedAll: TNAction
      Category = 'NActions'
      Caption = 'Approved All'
      OnExecute = actApprovedAllExecute
      CheckPermission = False
    end
    object actEIPOAlloted: TNAction
      Category = 'NActions'
      Caption = 'e-IPO Alloted'
      OnExecute = actEIPOAllotedExecute
      CheckPermission = False
    end
    object actAllotedProcess: TNAction
      Category = 'NActions'
      Caption = 'Process All Allotment'
      OnExecute = actAllotedProcessExecute
      CheckPermission = False
    end
    object actDistributionProcess: TNAction
      Category = 'NActions'
      Caption = 'Distribution Process'
      OnExecute = actDistributionProcessExecute
      CheckPermission = False
    end
    object actCancelEIPO: TNAction
      Category = 'NActions'
      Caption = 'Cancel e-IPO'
      OnExecute = actCancelEIPOExecute
      CheckPermission = False
    end
    object actEIPOOrder: TNAction
      Category = 'NActions'
      Caption = 'Upload Order e-IPO'
      OnExecute = actEIPOOrderExecute
      CheckPermission = False
    end
    object actEIPOAllotment: TNAction
      Category = 'NActions'
      Caption = 'Upload Allotment e-IPO'
      OnExecute = actEIPOAllotmentExecute
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
          ItemName = 'dtTrans'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkOpen'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkApproved'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkAlloted'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkDistributed'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkCanceled'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuRefresh'
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
    object dtTrans: TcxBarEditItem
      Caption = 'Transaction Date'
      Category = 0
      Hint = 'Transaction Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
    end
    object chkOpen: TcxBarEditItem
      Caption = 'Open'
      Category = 0
      Hint = 'Open'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
    end
    object chkApproved: TcxBarEditItem
      Caption = 'Approved'
      Category = 0
      Hint = 'Approved'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '2'
      Properties.ValueUnchecked = '0'
    end
    object chkAlloted: TcxBarEditItem
      Caption = 'Alloted'
      Category = 0
      Hint = 'Alloted'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '3'
      Properties.ValueUnchecked = '0'
    end
    object chkDistributed: TcxBarEditItem
      Caption = 'Distributed'
      Category = 0
      Hint = 'Distributed'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '4'
      Properties.ValueUnchecked = '0'
    end
    object chkCanceled: TcxBarEditItem
      Caption = 'Canceled'
      Category = 0
      Hint = 'Canceled'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '5'
      Properties.ValueUnchecked = '0'
    end
  end
  inherited DataContainer: TNMasterDetailData
    OnGetEditorClass = DataContainerGetEditorClass
  end
  object cdsEIPOList: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRANSDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'OPENED'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'APPROVED'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ALLOTED'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DISTRIBUTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CANCELED'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmIPO_qryEIPOAllotmentList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsEIPOListINSTTYPE: TStringField
      DisplayLabel = 'Instruction Type'
      FieldName = 'INSTTYPE'
      Required = True
      Size = 10
    end
    object cdsEIPOListEXTREF: TStringField
      DisplayLabel = 'External Reff'
      FieldName = 'EXTREF'
      Size = 30
    end
    object cdsEIPOListSHARE: TStringField
      DisplayLabel = 'Share (Stock Code)'
      FieldName = 'SHARE'
      Required = True
    end
    object cdsEIPOListTRANSDATE: TDateField
      DisplayLabel = 'Transaction Date'
      FieldName = 'TRANSDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOListCLIENTACC: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'CLIENTACC'
      Required = True
    end
    object cdsEIPOListSENT_TO_FROM: TStringField
      DisplayLabel = 'Sent To/From'
      FieldName = 'SENT_TO_FROM'
      Size = 10
    end
    object cdsEIPOListNOTEDESC: TStringField
      DisplayLabel = 'NoteDescription'
      FieldName = 'NOTEDESC'
      Size = 30
    end
    object cdsEIPOListQTY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsEIPOListAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsEIPOListSETTLEDATE: TDateField
      DisplayLabel = 'Settle Date'
      FieldName = 'SETTLEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOListREASON: TStringField
      DisplayLabel = 'Reason'
      FieldName = 'REASON'
      Size = 1
    end
    object cdsEIPOListSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Size = 10
    end
    object cdsEIPOListINSTRUCTION_TYPE_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'INSTRUCTION_TYPE_DESC'
      ReadOnly = True
      Size = 50
    end
    object cdsEIPOListREASONINSTRDETAIL: TStringField
      DisplayLabel = 'Reason Detail'
      FieldName = 'REASONINSTRDETAIL'
      ReadOnly = True
      Size = 200
    end
    object cdsEIPOListIPOCODE: TStringField
      DisplayLabel = 'IPO Code'
      FieldName = 'IPOCODE'
      Required = True
    end
    object cdsEIPOListSTOCKID: TLargeintField
      DisplayLabel = 'Stock ID'
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsEIPOListACCID: TLargeintField
      DisplayLabel = 'Account ID'
      FieldName = 'ACCID'
      Required = True
    end
    object cdsEIPOListPRICE: TFloatField
      FieldName = 'PRICE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsEIPOListSTAT_IPO: TStringField
      DisplayLabel = 'Process Status'
      FieldName = 'STAT_IPO'
      Size = 1
    end
    object cdsEIPOListAPPDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'APPDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOListAPPTIME: TDateTimeField
      DisplayLabel = 'Server Timestamp'
      FieldName = 'APPTIME'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsEIPOListAPPUI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'APPUI'
    end
    object cdsEIPOListALLDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'ALLDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOListALLTIME: TDateTimeField
      DisplayLabel = 'Server Timestamp'
      FieldName = 'ALLTIME'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsEIPOListALLUI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'ALLUI'
    end
    object cdsEIPOListDISDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'DISDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOListDISTIME: TDateTimeField
      DisplayLabel = 'Server Timestamp'
      FieldName = 'DISTIME'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsEIPOListDISUI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'DISUI'
    end
    object cdsEIPOListCCLDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'CCLDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOListCCLTIME: TDateTimeField
      DisplayLabel = 'Server Timestamp'
      FieldName = 'CCLTIME'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsEIPOListCCLUI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'CCLUI'
    end
    object cdsEIPOListINSDATE: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'INSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOListINSTIME: TDateTimeField
      DisplayLabel = 'Server Timestamp'
      FieldName = 'INSTIME'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsEIPOListINSUI: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'INSUI'
    end
    object cdsEIPOListALLOTEDQTY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'ALLOTEDQTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsEIPOListALLOTEDPRICE: TFloatField
      DisplayLabel = 'Price'
      FieldName = 'ALLOTEDPRICE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsEIPOListALLOTEDAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'ALLOTEDAMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsEIPOListACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      ReadOnly = True
      Size = 150
    end
    object cdsEIPOListIPOID: TLargeintField
      FieldName = 'IPOID'
      Required = True
    end
    object cdsEIPOListSTATUS_DESC: TStringField
      DisplayLabel = 'Status Description'
      FieldName = 'STATUS_DESC'
      ReadOnly = True
      Size = 200
    end
  end
  object cdsEIPO: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IPOID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmIPO_qryEIPOAllotment'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = True
    AutoApplyUpdate = False
    AutoSequenceField = 'ID'
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 344
    object cdsEIPOIPOID: TLargeintField
      FieldName = 'IPOID'
      Required = True
    end
    object cdsEIPOIPOCODE: TStringField
      FieldName = 'IPOCODE'
      Required = True
    end
    object cdsEIPOINSTTYPE: TStringField
      FieldName = 'INSTTYPE'
      Required = True
      Size = 10
    end
    object cdsEIPOEXTREF: TStringField
      FieldName = 'EXTREF'
      Size = 30
    end
    object cdsEIPOSTOCKID: TLargeintField
      FieldName = 'STOCKID'
      Required = True
    end
    object cdsEIPOSHARE: TStringField
      FieldName = 'SHARE'
      Required = True
    end
    object cdsEIPOTRANSDATE: TDateField
      FieldName = 'TRANSDATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOACCID: TLargeintField
      FieldName = 'ACCID'
      Required = True
    end
    object cdsEIPOCLIENTACC: TStringField
      FieldName = 'CLIENTACC'
      Required = True
    end
    object cdsEIPOSENT_TO_FROM: TStringField
      FieldName = 'SENT_TO_FROM'
      Size = 10
    end
    object cdsEIPONOTEDESC: TStringField
      FieldName = 'NOTEDESC'
      Size = 30
    end
    object cdsEIPOQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsEIPOPRICE: TFloatField
      FieldName = 'PRICE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsEIPOAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsEIPOSETTLEDATE: TDateField
      FieldName = 'SETTLEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOREASON: TStringField
      FieldName = 'REASON'
      Size = 1
    end
    object cdsEIPOALLOTEDQTY: TFloatField
      FieldName = 'ALLOTEDQTY'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsEIPOALLOTEDPRICE: TFloatField
      FieldName = 'ALLOTEDPRICE'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsEIPOALLOTEDAMOUNT: TFloatField
      FieldName = 'ALLOTEDAMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsEIPOSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
    object cdsEIPOSTAT_IPO: TStringField
      FieldName = 'STAT_IPO'
      Size = 1
    end
    object cdsEIPOINSDATE: TDateTimeField
      FieldName = 'INSDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOINSTIME: TDateTimeField
      FieldName = 'INSTIME'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsEIPOINSUI: TStringField
      FieldName = 'INSUI'
    end
    object cdsEIPOAPPDATE: TDateTimeField
      FieldName = 'APPDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOAPPTIME: TDateTimeField
      FieldName = 'APPTIME'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsEIPOAPPUI: TStringField
      FieldName = 'APPUI'
    end
    object cdsEIPOALLDATE: TDateTimeField
      FieldName = 'ALLDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOALLTIME: TDateTimeField
      FieldName = 'ALLTIME'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOALLUI: TStringField
      FieldName = 'ALLUI'
    end
    object cdsEIPODISDATE: TDateTimeField
      FieldName = 'DISDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPODISTIME: TDateTimeField
      FieldName = 'DISTIME'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsEIPODISUI: TStringField
      FieldName = 'DISUI'
    end
    object cdsEIPOCCLDATE: TDateTimeField
      FieldName = 'CCLDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsEIPOCCLTIME: TDateTimeField
      FieldName = 'CCLTIME'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsEIPOCCLUI: TStringField
      FieldName = 'CCLUI'
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Excel File|*.xls|Excel File|*.xlsx'
    Left = 437
    Top = 331
  end
  object cdsStockByLocalCode: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'LOCALCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmStockManagement_qryIntrumentByLocalCode'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 668
    Top = 210
    object cdsStockByLocalCodeINSTRUMENT_ID: TLargeintField
      FieldName = 'INSTRUMENT_ID'
      Required = True
    end
    object cdsStockByLocalCodeINSTRUMENT_CODE: TStringField
      FieldName = 'INSTRUMENT_CODE'
      Required = True
    end
    object cdsStockByLocalCodeLOCALCODE: TStringField
      FieldName = 'LOCALCODE'
      Required = True
    end
    object cdsStockByLocalCodeMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsStockByLocalCodeINSTRUMENT_TYPE_CODE: TStringField
      FieldName = 'INSTRUMENT_TYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsStockByLocalCodeSHORTNAME: TStringField
      FieldName = 'SHORTNAME'
      Size = 100
    end
    object cdsStockByLocalCodeLONGNAME: TStringField
      FieldName = 'LONGNAME'
      Size = 100
    end
    object cdsStockByLocalCodeISSUERNAME: TStringField
      FieldName = 'ISSUERNAME'
      Size = 100
    end
    object cdsStockByLocalCodeCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsStockByLocalCodeISINCODE: TStringField
      FieldName = 'ISINCODE'
      Size = 30
    end
    object cdsStockByLocalCodeISINDATE: TDateTimeField
      FieldName = 'ISINDATE'
    end
    object cdsStockByLocalCodeMARGIN: TIntegerField
      FieldName = 'MARGIN'
    end
    object cdsStockByLocalCodeSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsStockByLocalCodeDELISTINGDATE: TDateTimeField
      FieldName = 'DELISTINGDATE'
    end
    object cdsStockByLocalCodeLISTINGDATE: TDateTimeField
      FieldName = 'LISTINGDATE'
    end
    object cdsStockByLocalCodeLASTCLSPRICE: TFloatField
      FieldName = 'LASTCLSPRICE'
    end
    object cdsStockByLocalCodeLASTCPPRICEDATE: TDateField
      FieldName = 'LASTCPPRICEDATE'
    end
    object cdsStockByLocalCodeSECTOR: TStringField
      FieldName = 'SECTOR'
    end
    object cdsStockByLocalCodeMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsStockByLocalCodeMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsStockByLocalCodeAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsStockByLocalCodeAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsStockByLocalCodeISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsStockByLocalCodeID: TLargeintField
      FieldName = 'ID'
    end
    object cdsStockByLocalCodeCATEGORY: TStringField
      FieldName = 'CATEGORY'
      Size = 10
    end
    object cdsStockByLocalCodeMATURITYDATE: TDateTimeField
      FieldName = 'MATURITYDATE'
    end
    object cdsStockByLocalCodeRATING: TStringField
      FieldName = 'RATING'
      Size = 10
    end
    object cdsStockByLocalCodeREMARKS: TStringField
      FieldName = 'REMARKS'
    end
    object cdsStockByLocalCodeEFFECTIVEDATE: TDateTimeField
      FieldName = 'EFFECTIVEDATE'
    end
    object cdsStockByLocalCodeOFFERING_PERIODBEG: TDateTimeField
      FieldName = 'OFFERING_PERIODBEG'
    end
    object cdsStockByLocalCodeOFFERING_PERIODEND: TDateTimeField
      FieldName = 'OFFERING_PERIODEND'
    end
    object cdsStockByLocalCodeISSUEDATE: TDateTimeField
      FieldName = 'ISSUEDATE'
    end
    object cdsStockByLocalCodeNO_OFCERTIFICATES: TStringField
      FieldName = 'NO_OFCERTIFICATES'
      Size = 4
    end
    object cdsStockByLocalCodeLEAD_UNDERWRITER: TStringField
      FieldName = 'LEAD_UNDERWRITER'
      Size = 40
    end
    object cdsStockByLocalCodeSELLING_AGENT: TStringField
      FieldName = 'SELLING_AGENT'
      Size = 40
    end
    object cdsStockByLocalCodeTRUSTEE: TStringField
      FieldName = 'TRUSTEE'
      Size = 40
    end
    object cdsStockByLocalCodeCALCULATE_DAYS_METHOD: TIntegerField
      FieldName = 'CALCULATE_DAYS_METHOD'
    end
    object cdsStockByLocalCodeCOUPON_IN_YEAR: TIntegerField
      FieldName = 'COUPON_IN_YEAR'
    end
    object cdsStockByLocalCodeCOMMONCODE: TStringField
      FieldName = 'COMMONCODE'
      Size = 10
    end
    object cdsStockByLocalCodeDAYSOFYEAR: TIntegerField
      FieldName = 'DAYSOFYEAR'
    end
    object cdsStockByLocalCodeREGIONALBONDS: TIntegerField
      FieldName = 'REGIONALBONDS'
    end
    object cdsStockByLocalCodeCOUNTINGDAYS_METHOD: TIntegerField
      FieldName = 'COUNTINGDAYS_METHOD'
    end
    object cdsStockByLocalCodeACCRUEDDAYS_METHOD: TIntegerField
      FieldName = 'ACCRUEDDAYS_METHOD'
    end
    object cdsStockByLocalCodeDAYSPERYEAR_METHOD: TIntegerField
      FieldName = 'DAYSPERYEAR_METHOD'
    end
    object cdsStockByLocalCodeACCRUEDTYPE: TStringField
      FieldName = 'ACCRUEDTYPE'
      Size = 1
    end
    object cdsStockByLocalCodeDECDIGIT: TIntegerField
      FieldName = 'DECDIGIT'
    end
    object cdsStockByLocalCodeSEDOL: TStringField
      FieldName = 'SEDOL'
      Size = 50
    end
    object cdsStockByLocalCodeHAIRCUT: TFloatField
      FieldName = 'HAIRCUT'
    end
    object cdsStockByLocalCodeLIQUIDITY: TFloatField
      FieldName = 'LIQUIDITY'
    end
    object cdsStockByLocalCodeLASTHAIRCUTDATE: TDateField
      FieldName = 'LASTHAIRCUTDATE'
    end
    object cdsStockByLocalCodeISSUERID: TLargeintField
      FieldName = 'ISSUERID'
    end
    object cdsStockByLocalCodeHCUT_REPO: TFloatField
      FieldName = 'HCUT_REPO'
    end
    object cdsStockByLocalCodeHCUT_MARGIN: TFloatField
      FieldName = 'HCUT_MARGIN'
    end
    object cdsStockByLocalCodeHCUT_REG: TFloatField
      FieldName = 'HCUT_REG'
    end
    object cdsStockByLocalCodeAFFIL: TBooleanField
      FieldName = 'AFFIL'
    end
  end
end

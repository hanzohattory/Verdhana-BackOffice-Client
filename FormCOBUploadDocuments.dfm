inherited frmCOBUploadDocuments: TfrmCOBUploadDocuments
  Caption = 'Uploading Documents'
  ClientHeight = 321
  ClientWidth = 787
  ExplicitWidth = 793
  ExplicitHeight = 350
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 787
    Height = 46
    Align = alTop
    ExplicitWidth = 787
    ExplicitHeight = 46
    object cxDBLabel1: TcxDBLabel [0]
      Left = 54
      Top = 10
      DataBinding.DataField = 'CUST_REG_NO'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold, fsUnderline]
      Style.HotTrack = False
      Style.Shadow = False
      Style.IsFontAssigned = True
      Height = 21
      Width = 131
    end
    object cxDBLabel2: TcxDBLabel [1]
      Left = 223
      Top = 10
      DataBinding.DataField = 'NAME'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold, fsUnderline]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 21
      Width = 328
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem1: TdxLayoutItem
      CaptionOptions.Text = 'Reg No.'
      Parent = LayoutControlGroup1
      Control = cxDBLabel1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem2: TdxLayoutItem
      CaptionOptions.Text = 'Name'
      Parent = LayoutControlGroup1
      Control = cxDBLabel2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 272
    Width = 787
    ExplicitTop = 272
    ExplicitWidth = 787
    inherited btnOK: TcxButton
      Width = 130
      ExplicitWidth = 130
    end
    inherited btnCancel: TcxButton
      Left = 146
      Width = 130
      ExplicitLeft = 146
      ExplicitWidth = 130
    end
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
    Top = 46
    Width = 787
    Height = 226
    Align = alClient
    PopupMenu = popDocs
    TabOrder = 2
    object gvwUploadDocs: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsBrowse
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Bands = <
        item
          Width = 678
        end>
      object gvwUploadDocsDOC_TYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DOC_TYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Others'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'ID Card'
            Value = '1'
          end
          item
            Description = 'Taxpayer Reg No.'
            Value = '2'
          end
          item
            Description = 'SIUP'
            Value = '3'
          end
          item
            Description = 'Passport'
            Value = '4'
          end
          item
            Description = 'Driving License'
            Value = '5'
          end
          item
            Description = 'Photo'
            Value = '6'
          end
          item
            Description = 'Speciement'
            Value = '7'
          end>
        Width = 97
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwUploadDocsNOTES: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwUploadDocsTOKEN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOKEN'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwUploadDocsIMAGE_NAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IMAGE_NAME'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = gvwUploadDocsIMAGE_NAMEPropertiesButtonClick
        Width = 458
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwUploadDocsUPLOADEDON: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UPLOADEDON'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwUploadDocsUPLOADEDBY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UPLOADEDBY'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwUploadDocsCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwUploadDocsDOC_ATTACH: TcxGridDBBandedColumn
        Caption = '...'
        DataBinding.FieldName = 'DOC_ATTACH'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 21
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwUploadDocsCUST_REG_NO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUST_REG_NO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwUploadDocsDOCEXPIRE: TcxGridDBBandedColumn
        Caption = 'Expire'
        DataBinding.FieldName = 'DOCEXPIRE'
        RepositoryItem = dmGlobal.chkStandard
        Width = 42
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwUploadDocsDOCEXPIREDATE: TcxGridDBBandedColumn
        Caption = 'Expire Date'
        DataBinding.FieldName = 'DOCEXPIREDATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 81
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwUploadDocs
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmCOBList.cdsCOBDetailList
    Left = 499
    Top = 6
  end
  object dsBrowse: TDataSource
    DataSet = cdsCOBUploadDocs
    Left = 498
    Top = 99
  end
  object actList: TActionList
    Left = 27
    Top = 117
    object actAddDocs: TAction
      Caption = 'Add Document'
      OnExecute = actAddDocsExecute
    end
    object actEditDocs: TAction
      Caption = 'Edit Document'
      OnExecute = actEditDocsExecute
    end
    object actViewDocs: TAction
      Caption = 'View Document'
      OnExecute = actViewDocsExecute
    end
  end
  object popDocs: TPopupMenu
    Left = 63
    Top = 117
    object AddDocument1: TMenuItem
      Action = actAddDocs
    end
    object EditDocument1: TMenuItem
      Action = actEditDocs
    end
    object actViewDocs1: TMenuItem
      Action = actViewDocs
    end
  end
  object odDocs: TOpenDialog
    Left = 96
    Top = 117
  end
  object cdsCOBUploadDocs: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryCOBUploadDocs'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsCOBUploadDocsNewRecord
    AutoSequence = False
    AutoApplyUpdate = True
    AutoUserAuditTrail = False
    Left = 251
    Top = 82
    object cdsCOBUploadDocsDOC_TYPE: TStringField
      DisplayLabel = 'Document Type'
      FieldName = 'DOC_TYPE'
      Size = 50
    end
    object cdsCOBUploadDocsNOTES: TStringField
      FieldName = 'NOTES'
      Size = 255
    end
    object cdsCOBUploadDocsTOKEN: TStringField
      FieldName = 'TOKEN'
      Size = 150
    end
    object cdsCOBUploadDocsIMAGE_NAME: TStringField
      DisplayLabel = 'File Name'
      FieldName = 'IMAGE_NAME'
      Size = 255
    end
    object cdsCOBUploadDocsUPLOADEDON: TDateTimeField
      FieldName = 'UPLOADEDON'
    end
    object cdsCOBUploadDocsUPLOADEDBY: TStringField
      FieldName = 'UPLOADEDBY'
      Size = 50
    end
    object cdsCOBUploadDocsCID: TIntegerField
      FieldName = 'CID'
    end
    object cdsCOBUploadDocsDOC_ATTACH: TBlobField
      FieldName = 'DOC_ATTACH'
    end
    object cdsCOBUploadDocsCUST_REG_NO: TStringField
      FieldName = 'CUST_REG_NO'
      Size = 30
    end
    object cdsCOBUploadDocsDOCEXPIRE: TStringField
      FieldName = 'DOCEXPIRE'
      Size = 1
    end
    object cdsCOBUploadDocsDOCEXPIREDATE: TDateTimeField
      FieldName = 'DOCEXPIREDATE'
    end
    object cdsCOBUploadDocsDID: TLargeintField
      FieldName = 'DID'
      Required = True
    end
    object cdsCOBUploadDocsMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCOBUploadDocsMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCOBUploadDocsAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCOBUploadDocsAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCOBUploadDocsUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCOBUploadDocsUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCOBUploadDocsNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCOBUploadDocsISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCOBUploadDocsID: TLargeintField
      FieldName = 'ID'
    end
  end
end

inherited frmGLType1: TfrmGLType1
  Caption = 'GL Type'
  ClientHeight = 451
  ClientWidth = 594
  ExplicitWidth = 610
  ExplicitHeight = 490
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 594
    Height = 361
    ExplicitWidth = 594
    ExplicitHeight = 361
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 110
      Top = 10
      DataBinding.DataField = 'GLTYPE_CODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 110
      Top = 37
      DataBinding.DataField = 'GLTYPE_DESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 474
    end
    object grdGLType: TcxGrid [2]
      Left = 10
      Top = 64
      Width = 574
      Height = 287
      BevelOuter = bvNone
      TabOrder = 2
      object gvwGLType: TcxGridDBTableView
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
        ScrollbarAnnotations.CustomAnnotations = <>
        OnInitEdit = gvwGLTypeInitEdit
        DataController.DataSource = dsGLTypeD
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Appending = True
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsView.Footer = True
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle
        Styles.FilterRowInfoText = dmGlobal.GridFilterBox
        object gvwGLTypeGLTYPE_ID: TcxGridDBColumn
          DataBinding.FieldName = 'GLTYPE_ID'
          Visible = False
        end
        object gvwGLTypeMARKETCODE: TcxGridDBColumn
          Caption = 'Market'
          DataBinding.FieldName = 'MARKETCODE'
          RepositoryItem = dmGlobal.luMarket
          Width = 60
        end
        object gvwGLTypeLEDGERTYPE: TcxGridDBColumn
          Caption = 'Ledger Type'
          DataBinding.FieldName = 'LEDGERTYPE'
          RepositoryItem = dmGlobal.luLedgerType
          Width = 70
        end
        object gvwGLTypeLEDGERNAME: TcxGridDBColumn
          DataBinding.FieldName = 'LEDGERNAME'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 283
        end
        object gvwGLTypeGLACCOUNTID: TcxGridDBColumn
          Caption = 'GL Account'
          DataBinding.FieldName = 'GLACCOUNTID'
          Visible = False
          VisibleForCustomization = False
          Width = 100
        end
        object gvwGLTypeMODDA: TcxGridDBColumn
          DataBinding.FieldName = 'MODDA'
          Visible = False
        end
        object gvwGLTypeMODUI: TcxGridDBColumn
          DataBinding.FieldName = 'MODUI'
          Visible = False
        end
        object gvwGLTypeAPPDA: TcxGridDBColumn
          DataBinding.FieldName = 'APPDA'
          Visible = False
        end
        object gvwGLTypeAPPUI: TcxGridDBColumn
          DataBinding.FieldName = 'APPUI'
          Visible = False
        end
        object gvwGLTypeUNDER4Y: TcxGridDBColumn
          DataBinding.FieldName = 'UNDER4Y'
          Visible = False
        end
        object gvwGLTypeUNDER4YDA: TcxGridDBColumn
          DataBinding.FieldName = 'UNDER4YDA'
          Visible = False
        end
        object gvwGLTypeNOTES4Y: TcxGridDBColumn
          DataBinding.FieldName = 'NOTES4Y'
          Visible = False
        end
        object gvwGLTypeISDEL: TcxGridDBColumn
          DataBinding.FieldName = 'ISDEL'
          Visible = False
        end
        object gvwGLTypeID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object gvwGLTypeCOA: TcxGridDBColumn
          DataBinding.FieldName = 'COA'
        end
      end
      object grdGLTypeLevel1: TcxGridLevel
        GridView = gvwGLType
      end
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'GL Type Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'GL Type Description'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      Control = grdGLType
      ControlOptions.OriginalHeight = 171
      ControlOptions.OriginalWidth = 798
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 382
    Width = 594
    ExplicitTop = 382
    ExplicitWidth = 594
    inherited dbNavLog: TDBNavigator
      Left = 480
      Hints.Strings = ()
      ExplicitLeft = 480
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 431
    Width = 594
    ExplicitTop = 431
    ExplicitWidth = 594
  end
  inherited tabEditorData: TTabSet
    Top = 361
    Width = 594
    ExplicitTop = 361
    ExplicitWidth = 594
  end
  inherited dsSubject: TDataSource
    DataSet = cdsGLTypeH
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsGLTypeH: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'GLTYPE_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAccounting_qryGLTypeH'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsGLTypeHBeforePost
    OnNewRecord = cdsGLTypeHNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 24
    Top = 112
    object cdsGLTypeHGLTYPE_ID: TIntegerField
      Tag = -1
      FieldName = 'GLTYPE_ID'
      Required = True
    end
    object cdsGLTypeHGLTYPE_CODE: TStringField
      FieldName = 'GLTYPE_CODE'
      Required = True
      Size = 10
    end
    object cdsGLTypeHGLTYPE_DESC: TStringField
      FieldName = 'GLTYPE_DESC'
      Required = True
      Size = 100
    end
    object cdsGLTypeHMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsGLTypeHMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsGLTypeHAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsGLTypeHAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsGLTypeHUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsGLTypeHUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsGLTypeHNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsGLTypeHISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsGLTypeHID: TLargeintField
      FieldName = 'ID'
    end
    object cdsGLTypeHqryGLTypeD: TDataSetField
      FieldName = 'qryGLTypeD'
    end
  end
  object cdsGLTypeD: TNClientDataset
    Aggregates = <>
    DataSetField = cdsGLTypeHqryGLTypeD
    Params = <>
    OnNewRecord = cdsGLTypeDNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 24
    Top = 160
    object cdsGLTypeDGLTYPE_ID: TIntegerField
      Tag = -1
      FieldName = 'GLTYPE_ID'
      Required = True
    end
    object cdsGLTypeDMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsGLTypeDLEDGERTYPE: TStringField
      FieldName = 'LEDGERTYPE'
      Required = True
      Size = 10
    end
    object cdsGLTypeDGLACCOUNTID: TLargeintField
      FieldName = 'GLACCOUNTID'
      Required = True
    end
    object cdsGLTypeDMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsGLTypeDMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsGLTypeDAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsGLTypeDAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsGLTypeDUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsGLTypeDUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsGLTypeDNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsGLTypeDISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsGLTypeDID: TLargeintField
      FieldName = 'ID'
    end
    object cdsGLTypeDLEDGERNAME: TStringField
      Tag = -1
      DisplayLabel = 'Ledger Name'
      FieldKind = fkLookup
      FieldName = 'LEDGERNAME'
      LookupDataSet = dmLookup.cdsLuLedgerType
      LookupKeyFields = 'MARKETCODE;LEDGERTYPE'
      LookupResultField = 'LEDGERNAME'
      KeyFields = 'MARKETCODE;LEDGERTYPE'
      Size = 100
      Lookup = True
    end
    object cdsGLTypeDCOA: TStringField
      DisplayLabel = 'GL Account'
      FieldName = 'COA'
    end
  end
  object dsGLTypeD: TDataSource
    DataSet = cdsGLTypeD
    Left = 24
    Top = 208
  end
end

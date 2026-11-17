inherited frmSInvProcessConfig: TfrmSInvProcessConfig
  Caption = 'S-Invest Process Configuration'
  ClientHeight = 465
  ClientWidth = 939
  ExplicitWidth = 945
  ExplicitHeight = 494
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 939
    Height = 153
    Align = alTop
    ExplicitWidth = 939
    ExplicitHeight = 153
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 98
      Top = 10
      DataBinding.DataField = 'SIP_CODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 98
      Top = 37
      DataBinding.DataField = 'SIP_NAME'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 325
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 98
      Top = 64
      DataBinding.DataField = 'GENERATEFOLDER'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit [3]
      Left = 98
      Top = 91
      DataBinding.DataField = 'FORMAT1'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit [4]
      Left = 297
      Top = 64
      DataBinding.DataField = 'DELIMITERCHAR'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 36
    end
    object cxDBTextEdit6: TcxDBTextEdit [5]
      Left = 234
      Top = 91
      DataBinding.DataField = 'FORMAT2'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit [6]
      Left = 370
      Top = 91
      DataBinding.DataField = 'FORMAT3'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object cxDBTextEdit8: TcxDBTextEdit [7]
      Left = 98
      Top = 118
      DataBinding.DataField = 'DESCRIPTION'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 393
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Config Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Config Name'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 325
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Generate Folder'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Format File Name'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Delimiter Char'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 36
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 3
      AutoCreated = True
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = '-'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Description'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 396
    Width = 939
    ExplicitTop = 396
    ExplicitWidth = 939
    inherited dbNavLog: TDBNavigator
      Left = 825
      Hints.Strings = ()
      ExplicitLeft = 825
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 445
    Width = 939
    ExplicitTop = 445
    ExplicitWidth = 939
  end
  inherited tabEditorData: TTabSet
    Top = 375
    Width = 939
    ExplicitTop = 375
    ExplicitWidth = 939
  end
  object cxGrid1: TcxGrid [4]
    Left = 0
    Top = 153
    Width = 939
    Height = 222
    Align = alClient
    TabOrder = 4
    object gvwSInvFormatFields: TcxGridDBBandedTableView
      Navigator.Buttons.ConfirmDelete = True
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
      Navigator.Visible = True
      DataController.DataSource = dsSInvFormatFields
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsData.Inserting = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end>
      object gvwSInvFormatFieldsSIP_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SIP_ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwSInvFormatFieldsSEQ: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SEQ'
        Width = 26
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwSInvFormatFieldsFIELDNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FIELDNAME'
        Width = 174
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwSInvFormatFieldsFORMATSYNTAX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FORMATSYNTAX'
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwSInvFormatFieldsFORMATFIELD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FORMATFIELD'
        Width = 96
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwSInvFormatFieldsMOC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MOC'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Mandatory'
            ImageIndex = 0
            Value = 'M'
          end
          item
            Description = 'Option'
            Value = 'O'
          end
          item
            Description = 'Conditional'
            Value = 'C'
          end>
        Width = 61
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwSInvFormatFieldsDESCRIPTION: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DESCRIPTION'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwSInvFormatFieldsMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwSInvFormatFieldsMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwSInvFormatFieldsAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwSInvFormatFieldsAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwSInvFormatFieldsUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwSInvFormatFieldsUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwSInvFormatFieldsNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwSInvFormatFieldsISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwSInvFormatFieldsID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwSInvFormatFields
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsSInvProcessConf
    Left = 728
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 728
  end
  object cdsSInvProcessConf: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SIPID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSInvest_qrySInvProcess'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsSInvProcessConfNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 624
    Top = 16
    object cdsSInvProcessConfSIP_ID: TLargeintField
      FieldName = 'SIP_ID'
      Required = True
    end
    object cdsSInvProcessConfSIP_CODE: TStringField
      FieldName = 'SIP_CODE'
      Required = True
      Size = 10
    end
    object cdsSInvProcessConfSIP_NAME: TStringField
      FieldName = 'SIP_NAME'
      Required = True
      Size = 50
    end
    object cdsSInvProcessConfDELIMITERCHAR: TStringField
      FieldName = 'DELIMITERCHAR'
      Size = 1
    end
    object cdsSInvProcessConfFORMAT1: TStringField
      FieldName = 'FORMAT1'
      Size = 30
    end
    object cdsSInvProcessConfFORMAT2: TStringField
      FieldName = 'FORMAT2'
      Size = 30
    end
    object cdsSInvProcessConfFORMAT3: TStringField
      FieldName = 'FORMAT3'
      Size = 30
    end
    object cdsSInvProcessConfDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 250
    end
    object cdsSInvProcessConfMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsSInvProcessConfMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsSInvProcessConfAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsSInvProcessConfAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsSInvProcessConfUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsSInvProcessConfUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsSInvProcessConfNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsSInvProcessConfISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsSInvProcessConfID: TLargeintField
      FieldName = 'ID'
    end
    object cdsSInvProcessConfGENERATEFOLDER: TStringField
      FieldName = 'GENERATEFOLDER'
      Size = 150
    end
  end
  object cdsSInvFormatFields: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SIPID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSInvest_qrySInvDataFields'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsSInvFormatFieldsBeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 624
    Top = 72
    object cdsSInvFormatFieldsSIP_ID: TLargeintField
      FieldName = 'SIP_ID'
      Required = True
    end
    object cdsSInvFormatFieldsSEQ: TIntegerField
      DisplayLabel = 'Seq'
      FieldName = 'SEQ'
      Required = True
    end
    object cdsSInvFormatFieldsFIELDNAME: TStringField
      DisplayLabel = 'Field Name'
      FieldName = 'FIELDNAME'
      Size = 50
    end
    object cdsSInvFormatFieldsFORMATSYNTAX: TStringField
      DisplayLabel = 'Syntax'
      DisplayWidth = 20
      FieldName = 'FORMATSYNTAX'
    end
    object cdsSInvFormatFieldsFORMATFIELD: TStringField
      DisplayLabel = 'Format Field'
      FieldName = 'FORMATFIELD'
    end
    object cdsSInvFormatFieldsMOC: TStringField
      FieldName = 'MOC'
      Size = 1
    end
    object cdsSInvFormatFieldsDESCRIPTION: TStringField
      DisplayLabel = 'Description'
      FieldName = 'DESCRIPTION'
      Size = 250
    end
    object cdsSInvFormatFieldsMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsSInvFormatFieldsMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsSInvFormatFieldsAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsSInvFormatFieldsAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsSInvFormatFieldsUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsSInvFormatFieldsUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsSInvFormatFieldsNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsSInvFormatFieldsISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsSInvFormatFieldsID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsSInvFormatFields: TDataSource
    DataSet = cdsSInvFormatFields
    Left = 552
    Top = 72
  end
end

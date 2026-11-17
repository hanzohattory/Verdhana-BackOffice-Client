inherited frmCOBGroupAssign: TfrmCOBGroupAssign
  Caption = 'Assign CLient On Board Activity Group'
  ClientHeight = 543
  ClientWidth = 763
  ExplicitWidth = 763
  ExplicitHeight = 543
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 763
    Height = 57
    Align = alTop
    BevelKind = bkTile
    TabOrder = 0
    object luCOBType: TcxImageComboBox
      Left = 117
      Top = 10
      Properties.Items = <
        item
          Description = 'Retail'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'Institusi 1'
          Value = '2'
        end
        item
          Description = 'Institusi 2'
          Value = '3'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 156
    end
    object cxButton1: TcxButton
      Left = 279
      Top = 10
      Width = 75
      Height = 25
      Caption = 'View'
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Client On Board Type'
      Parent = dxLayoutControl1Group1
      Control = luCOBType
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group_Root
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 57
    Width = 763
    Height = 486
    Align = alClient
    PopupMenu = PopupMenu1
    TabOrder = 1
    object gvwCOBActivity: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = gvwCOBActivityCustomDrawCell
      DataController.DataSource = dsListCOBActGroup
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.HideSelection = True
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      Bands = <
        item
        end>
      object gvwCOBActivityACTIVITY_ID: TcxGridDBBandedColumn
        Caption = 'Activity ID'
        DataBinding.FieldName = 'ACTIVITY_ID'
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwCOBActivityACTIVITY_SUBID: TcxGridDBBandedColumn
        Caption = 'Activity Sub ID'
        DataBinding.FieldName = 'ACTIVITY_SUBID'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwCOBActivityACTIVITY_NAME: TcxGridDBBandedColumn
        Caption = 'Activity Name'
        DataBinding.FieldName = 'ACTIVITY_NAME'
        Width = 499
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwCOBActivity
    end
  end
  inherited ActionPermission: TNActionPermission
    ActionList = actCOBGroup
    Actions = <
      item
        ActionName = 'actSelectGroup'
        Permission = 'Admin'
      end>
    AssignedPermission = <
      item
        Name = 'Admin'
        Description = 'User Administratiion'
      end>
  end
  object cdsListCOBActGroup: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'COB_TYPE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmAdministrator_qryListCOBAct'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 200
    Top = 160
    object cdsListCOBActGroupACTIVITY_ID: TIntegerField
      FieldName = 'ACTIVITY_ID'
      Required = True
    end
    object cdsListCOBActGroupACTIVITY_SUBID: TIntegerField
      FieldName = 'ACTIVITY_SUBID'
      Required = True
    end
    object cdsListCOBActGroupACTIVITY_DESC: TStringField
      FieldName = 'ACTIVITY_DESC'
      Required = True
      Size = 50
    end
    object cdsListCOBActGroupACTIVITY_EMAIL_CLIENT: TIntegerField
      FieldName = 'ACTIVITY_EMAIL_CLIENT'
    end
    object cdsListCOBActGroupACTIVITY_EMAIL_USERS: TIntegerField
      FieldName = 'ACTIVITY_EMAIL_USERS'
    end
    object cdsListCOBActGroupACTIVITY_COLOR: TStringField
      FieldName = 'ACTIVITY_COLOR'
      Size = 30
    end
    object cdsListCOBActGroupACTIVITY_NEXT: TStringField
      FieldName = 'ACTIVITY_NEXT'
      Size = 30
    end
    object cdsListCOBActGroupCOB_TYPE: TStringField
      FieldName = 'COB_TYPE'
      Required = True
      Size = 10
    end
    object cdsListCOBActGroupACTTYPE: TStringField
      FieldName = 'ACTTYPE'
      Size = 5
    end
    object cdsListCOBActGroupACLEVEL: TStringField
      FieldName = 'ACLEVEL'
      Size = 5
    end
    object cdsListCOBActGroupACPROCESS: TStringField
      FieldName = 'ACPROCESS'
      Size = 5
    end
    object cdsListCOBActGroupACTIVITY_NAME: TStringField
      FieldName = 'ACTIVITY_NAME'
      Size = 50
    end
  end
  object dsListCOBActGroup: TDataSource
    DataSet = cdsListCOBActGroup
    Left = 352
    Top = 176
  end
  object actCOBGroup: TActionList
    Left = 568
    Top = 144
    object actSelectGroup: TNAction
      Category = 'NActions'
      Caption = 'Assign Group to Selected Activity'
      OnExecute = actSelectGroupExecute
      CheckPermission = True
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 440
    Top = 216
    object AssignGrouptoSelectedActivity1: TMenuItem
      Action = actSelectGroup
      OnDrawItem = MenuItemDrawItem
      OnMeasureItem = MenuItemMeasureItem
    end
  end
end

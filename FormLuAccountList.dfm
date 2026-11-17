object frmLuAccountList: TfrmLuAccountList
  Left = 0
  Top = 0
  Caption = 'Accounts'
  ClientHeight = 375
  ClientWidth = 522
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 320
    Width = 522
    Height = 55
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    ExplicitTop = 402
    ExplicitWidth = 519
    object cxButton1: TcxButton
      Left = 10
      Top = 10
      Width = 100
      Height = 25
      Caption = '&Ok'
      ModalResult = 1
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = dmGlobal.ilIcons
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 116
      Top = 10
      Width = 100
      Height = 25
      Caption = '&Cancel'
      ModalResult = 2
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = dmGlobal.ilIcons
      TabOrder = 1
    end
    object cxButton3: TcxButton
      Left = 408
      Top = 10
      Width = 100
      Height = 25
      Caption = '&Refresh'
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = dmGlobal.ilIcons
      TabOrder = 2
      OnClick = cxButton3Click
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object grdAccounts: TcxGrid
    Left = 0
    Top = 0
    Width = 522
    Height = 320
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 519
    ExplicitHeight = 402
    object gvwAccounts: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsLuAccounts
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentEven = dmGlobal.BlueToggle2
      object gvwAccountsACCID: TcxGridDBColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Options.Editing = False
        Options.ExpressionEditing = False
        VisibleForCustomization = False
      end
      object gvwAccountscheck: TcxGridDBColumn
        DataBinding.FieldName = 'check'
        RepositoryItem = dmGlobal.chkStandard
        Width = 25
        IsCaptionAssigned = True
      end
      object gvwAccountsACCCODE: TcxGridDBColumn
        DataBinding.FieldName = 'ACCCODE'
        Options.Editing = False
        Options.ExpressionEditing = False
        Width = 96
      end
      object gvwAccountsACCNAME: TcxGridDBColumn
        DataBinding.FieldName = 'ACCNAME'
        Options.Editing = False
        Options.ExpressionEditing = False
        Width = 200
      end
      object gvwAccountsACCTYPE: TcxGridDBColumn
        DataBinding.FieldName = 'ACCTYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Institution'
            ImageIndex = 0
            Value = 'I'
          end
          item
            Description = 'Individu'
            Value = 'N'
          end>
        Options.Editing = False
        Options.ExpressionEditing = False
        Width = 81
      end
      object gvwAccountsPRDCODE: TcxGridDBColumn
        DataBinding.FieldName = 'PRDCODE'
        Options.Editing = False
        Options.ExpressionEditing = False
        Width = 71
      end
    end
    object glvAccounts: TcxGridLevel
      GridView = gvwAccounts
    end
  end
  object dsLuAccounts: TDataSource
    DataSet = dmLookup.cdsLuAccountList
    Left = 384
    Top = 240
  end
  object popGrid: TPopupMenu
    Left = 464
    Top = 144
    object CheckAll1: TMenuItem
      Action = actCheckAll
    end
    object CheckSelected1: TMenuItem
      Action = actCheckSelected
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object UncheckAll1: TMenuItem
      Action = actUncheckAll
    end
    object UncheckSelected1: TMenuItem
      Action = actUncheckSelected
    end
  end
  object aclData: TActionList
    Left = 464
    Top = 200
    object Action1: TAction
      Caption = 'Action1'
    end
    object actCheckAll: TNAction
      Category = 'NActions'
      Caption = 'Check All'
      OnExecute = actCheckAllExecute
      CheckPermission = False
    end
    object actCheckSelected: TNAction
      Category = 'NActions'
      Caption = 'Check Selected'
      OnExecute = actCheckSelectedExecute
      CheckPermission = False
    end
    object actUncheckAll: TNAction
      Category = 'NActions'
      Caption = 'Uncheck All'
      OnExecute = actUncheckAllExecute
      CheckPermission = False
    end
    object actUncheckSelected: TNAction
      Category = 'NActions'
      Caption = 'Uncheck Selected'
      OnExecute = actUncheckSelectedExecute
      CheckPermission = False
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 120
    Top = 96
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 547
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cxBarEditItem1'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = True
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 22
      DockingStyle = dsTop
      FloatLeft = 547
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = False
      WholeRow = True
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'Account Type'
      Category = 0
      Hint = 'Account Type'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxCheckGroupProperties'
      Properties.Columns = 2
      Properties.EditValueFormat = cvfStatesString
      Properties.Items = <
        item
          Caption = 'Institution'
        end
        item
          Caption = 'Individu'
        end>
    end
  end
end

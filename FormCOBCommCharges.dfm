inherited frmCOBCommCharges: TfrmCOBCommCharges
  Caption = 'Commission & Charges'
  ClientHeight = 388
  ClientWidth = 835
  ExplicitWidth = 841
  ExplicitHeight = 417
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 835
    Height = 339
    ExplicitWidth = 835
    ExplicitHeight = 339
    object grdComm: TcxGrid [0]
      Left = 22
      Top = 55
      Width = 786
      Height = 114
      TabOrder = 2
      object gvwComm: TcxGridDBTableView
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
        DataController.DataSource = dsCommission
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Appending = True
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle
        object gvwCommCHANNELCODE: TcxGridDBColumn
          Caption = 'Channel'
          DataBinding.FieldName = 'CHANNELCODE'
          RepositoryItem = dmGlobal.luChannel
          Width = 45
        end
        object gvwCommMARKETCODE: TcxGridDBColumn
          Caption = 'Market'
          DataBinding.FieldName = 'MARKETCODE'
          RepositoryItem = dmGlobal.luMarket
          Width = 39
        end
        object gvwCommCCYCODE: TcxGridDBColumn
          Caption = 'Currency'
          DataBinding.FieldName = 'CCYCODE'
          RepositoryItem = dmGlobal.luCurrency
          Width = 50
        end
        object gvwCommCOMM_ID: TcxGridDBColumn
          Caption = 'Comm Code'
          DataBinding.FieldName = 'COMM_ID'
          RepositoryItem = dmGlobal.luCommission
          Width = 73
        end
        object gvwCommDESCRIPTION: TcxGridDBColumn
          Caption = 'Comm Description'
          DataBinding.FieldName = 'DESCRIPTION'
          Width = 220
        end
        object gvwCommNET_COMMID: TcxGridDBColumn
          Caption = 'Net Comm Code'
          DataBinding.FieldName = 'NET_COMMID'
          RepositoryItem = dmGlobal.luCommission
          Width = 83
        end
        object gvwCommCALC_METHOD: TcxGridDBColumn
          Caption = 'Calc Method'
          DataBinding.FieldName = 'CALC_METHOD'
          RepositoryItem = dmGlobal.luCommCalcMethod
          Width = 65
        end
        object gvwCommUSE_DAYTRADE: TcxGridDBColumn
          Caption = 'Day Trade'
          DataBinding.FieldName = 'USE_DAYTRADE'
          RepositoryItem = dmGlobal.chkStandard
          Width = 56
        end
        object gvwCommUSE_MINCOMM: TcxGridDBColumn
          Caption = 'Min Comm'
          DataBinding.FieldName = 'USE_MINCOMM'
          RepositoryItem = dmGlobal.chkStandard
          Width = 54
        end
        object gvwCommWITH_SELLTAX: TcxGridDBColumn
          Caption = 'With Sell Tax'
          DataBinding.FieldName = 'WITH_SELLTAX'
          RepositoryItem = dmGlobal.chkStandard
          Width = 68
        end
      end
      object grdCommLevel1: TcxGridLevel
        GridView = gvwComm
      end
    end
    object cxDBTextEdit1: TcxDBTextEdit [1]
      Left = 73
      Top = 10
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 135
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 214
      Top = 10
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 399
    end
    object grdCharge: TcxGrid [3]
      Left = 22
      Top = 205
      Width = 786
      Height = 105
      Align = alClient
      TabOrder = 3
      object gvwCharge: TcxGridDBTableView
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
        DataController.DataSource = dsCharges
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Appending = True
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle
        object gvwChargeMARKETCODE: TcxGridDBColumn
          Caption = 'Market'
          DataBinding.FieldName = 'MARKETCODE'
          RepositoryItem = dmGlobal.luMarket
        end
        object gvwChargeCHARGE_ID: TcxGridDBColumn
          Caption = 'Charge Code'
          DataBinding.FieldName = 'CHARGE_ID'
          RepositoryItem = dmGlobal.luCharge
          Width = 123
        end
        object gvwChargeDESCRIPTION: TcxGridDBColumn
          Caption = 'Charge Description'
          DataBinding.FieldName = 'DESCRIPTION'
          Width = 355
        end
        object gvwChargeISUSED: TcxGridDBColumn
          Caption = 'Use'
          DataBinding.FieldName = 'ISUSED'
          RepositoryItem = dmGlobal.chkStandard
          Width = 24
        end
      end
      object grdChargeLevel1: TcxGridLevel
        GridView = gvwCharge
      end
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Commission'
      Parent = LayoutControlGroup5
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object LayoutControlGroup3: TdxLayoutGroup
      CaptionOptions.Text = 'Charges'
      Parent = LayoutControlGroup4
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object LayoutControlGroup4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object LayoutControlGroup5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LayoutControlItem3: TdxLayoutItem
      Parent = LayoutControlGroup2
      Control = grdComm
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem1: TdxLayoutItem
      CaptionOptions.Text = 'A/C Number'
      Parent = LayoutControlGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem2: TdxLayoutItem
      CaptionOptions.Text = 'cxDBTextEdit2'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup1
      Control = cxDBTextEdit2
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
    object LayoutControlItem4: TdxLayoutItem
      Parent = LayoutControlGroup3
      Control = grdCharge
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 339
    Width = 835
    ExplicitTop = 339
    ExplicitWidth = 835
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
  inherited dsSubject: TDataSource
    DataSet = frmCOBList.cdsAccount
    Left = 589
    Top = 6
  end
  object dsCommission: TDataSource
    DataSet = frmCOBList.cdsCommission
    Left = 555
    Top = 156
  end
  object dsCharges: TDataSource
    DataSet = frmCOBList.cdsCharges
    Left = 546
    Top = 246
  end
end

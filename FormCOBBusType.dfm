inherited frmCOBBusType: TfrmCOBBusType
  Caption = 'Account Business Type'
  ClientWidth = 670
  ExplicitWidth = 676
  ExplicitHeight = 393
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 670
    Height = 72
    Align = alTop
    ExplicitWidth = 670
    ExplicitHeight = 72
    object txtCustRegNo: TcxLabel [0]
      Left = 83
      Top = 10
      Caption = 'txtCustRegNo'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold, fsUnderline]
      Style.HotTrack = False
      Style.IsFontAssigned = True
    end
    object cxDBLabel1: TcxDBLabel [1]
      Left = 203
      Top = 10
      AutoSize = True
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold, fsUnderline]
      Style.HotTrack = False
      Style.IsFontAssigned = True
    end
    object cbBusType: TcxDBLookupComboBox [2]
      Left = 83
      Top = 33
      RepositoryItem = dmGlobal.luBusinessType
      DataBinding.DataField = 'BUSSTYPE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 140
    end
    object btnGetSetting: TcxButton [3]
      Left = 229
      Top = 33
      Width = 230
      Height = 25
      Caption = 'Generate All Setting Based On Business Type'
      TabOrder = 3
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Cust Reg No.'
      Parent = LayoutControlGroup1
      Control = txtCustRegNo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem2: TdxLayoutItem
      CaptionOptions.Text = 'Name'
      Parent = LayoutControlGroup1
      Control = cxDBLabel1
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
    object LayoutControlItem3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Business Type'
      Parent = LayoutControlGroup2
      Control = cbBusType
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup2
      Control = btnGetSetting
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Width = 670
    ExplicitWidth = 670
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
  object cxPageControl1: TcxPageControl [2]
    Left = 0
    Top = 72
    Width = 670
    Height = 243
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = tabCommission
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 239
    ClientRectLeft = 4
    ClientRectRight = 666
    ClientRectTop = 24
    object tabCommission: TcxTabSheet
      Caption = 'Commission'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdComm: TcxGrid
        Left = 0
        Top = 0
        Width = 662
        Height = 215
        Align = alClient
        TabOrder = 0
        object gvwComm: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
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
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
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
          object gvwCommCOMM_ID: TcxGridDBColumn
            Caption = 'Comm Code'
            DataBinding.FieldName = 'COMM_ID'
            RepositoryItem = dmGlobal.luCommission
            Width = 73
          end
          object gvwCommDESCRIPTION: TcxGridDBColumn
            Caption = 'Comm Description'
            DataBinding.FieldName = 'DESCRIPTION'
            Width = 227
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
    end
    object tabCharge: TcxTabSheet
      Caption = 'Charge'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grdCharge: TcxGrid
        Left = 0
        Top = 0
        Width = 662
        Height = 215
        Align = alClient
        TabOrder = 0
        object gvwCharge: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.NextPage.Visible = False
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
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object gvwChargeMARKETCODE: TcxGridDBColumn
            Caption = 'Market'
            DataBinding.FieldName = 'MARKETCODE'
            RepositoryItem = dmGlobal.luMarket
          end
          object gvwChargeCHARGE_ID: TcxGridDBColumn
            Caption = 'Charge Code'
            DataBinding.FieldName = 'CHARGE_ID'
            RepositoryItem = dmGlobal.luCharge
          end
          object gvwChargeDESCRIPTION: TcxGridDBColumn
            Caption = 'Charge Description'
            DataBinding.FieldName = 'DESCRIPTION'
            Width = 245
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
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmCOBList.cdsAccount
    Left = 112
    Top = 136
  end
  object dsCommission: TDataSource
    DataSet = frmCOBList.cdsCommission
    Left = 173
    Top = 136
  end
  object dsCharges: TDataSource
    DataSet = frmCOBList.cdsCharges
    Left = 237
    Top = 136
  end
end

inherited frmCommTable: TfrmCommTable
  Caption = 'Commission Table'
  ClientHeight = 320
  ExplicitWidth = 512
  ExplicitHeight = 358
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Height = 105
    Align = alTop
    ExplicitHeight = 105
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 68
      Top = 10
      DataBinding.DataField = 'COMM_TABLE_CODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [1]
      Left = 68
      Top = 37
      RepositoryItem = dmGlobal.luMarket
      DataBinding.DataField = 'MARKETID'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [2]
      Left = 68
      Top = 64
      DataBinding.DataField = 'DESCRIPTION'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 413
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Market'
      Parent = dxLayoutGroup1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 250
    ExplicitTop = 250
    inherited dxLayoutGroup2: TdxLayoutGroup
      Index = -1
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup3
      Index = 0
    end
    inherited dxLayoutControl2Item2: TdxLayoutItem
      Index = 1
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      LayoutDirection = ldHorizontal
      Index = 0
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 300
    ExplicitTop = 300
  end
  object grdCommTableD: TcxGrid [3]
    Left = 0
    Top = 105
    Width = 496
    Height = 145
    Align = alClient
    TabOrder = 3
    object gvwCommTableD: TcxGridDBTableView
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
      DataController.DataSource = dsCommTableD
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
      object gvwCommTableDSTART_VALUE: TcxGridDBColumn
        Caption = 'Start Value'
        DataBinding.FieldName = 'START_VALUE'
        Width = 139
      end
      object gvwCommTableDEND_VALUE: TcxGridDBColumn
        Caption = 'End Value'
        DataBinding.FieldName = 'END_VALUE'
        Width = 165
      end
      object gvwCommTableDCOMM_RATE: TcxGridDBColumn
        Caption = 'Comm Rate'
        DataBinding.FieldName = 'COMM_RATE'
        Width = 75
      end
      object gvwCommTableDNET_RATE: TcxGridDBColumn
        Caption = 'Net Rate'
        DataBinding.FieldName = 'NET_RATE'
        Width = 73
      end
    end
    object grdCommTableDLevel1: TcxGridLevel
      GridView = gvwCommTableD
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmCommTables.NvtCommTableH
    Left = 432
    Top = 8
  end
  object dsCommTableD: TDataSource
    DataSet = frmCommTables.NvtCommTableD
    Left = 360
    Top = 8
  end
end

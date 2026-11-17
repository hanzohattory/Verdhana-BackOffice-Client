inherited frmReportTrialBalance: TfrmReportTrialBalance
  Caption = 'Trial Balance Report'
  ClientHeight = 466
  ClientWidth = 773
  OnShow = FormShow
  ExplicitWidth = 773
  ExplicitHeight = 466
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 73
    Width = 773
    Height = 373
    ExplicitTop = 73
    ExplicitWidth = 773
    ExplicitHeight = 373
  end
  inherited lcParameter: TdxLayoutControl
    Width = 773
    Height = 43
    ExplicitWidth = 773
    ExplicitHeight = 43
    object dtTransDateEnd: TcxDateEdit [0]
      Left = 241
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cmbMode: TcxImageComboBox [1]
      Left = 399
      Top = 10
      Properties.Items = <
        item
          Description = 'By Currency'
          ImageIndex = 0
          Value = 'CB'
        end
        item
          Description = 'Consolidate By Currency'
          Value = 'CC'
        end>
      Properties.OnChange = cmbModePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 148
    end
    object cbCcy: TcxLookupComboBox [2]
      Left = 602
      Top = 10
      RepositoryItem = dmGlobal.luCurrency
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 145
    end
    object dtTransDateStart: TcxDateEdit [3]
      Left = 97
      Top = 10
      AutoSize = False
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Height = 21
      Width = 121
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      LayoutDirection = ldHorizontal
    end
    object lcParameterItem1: TdxLayoutItem
      Parent = lcParameterGroup2
      CaptionOptions.Text = 'To'
      Control = dtTransDateEnd
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterItem2: TdxLayoutItem
      Parent = lcParameterGroup2
      CaptionOptions.Text = 'Mode'
      Control = cmbMode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 148
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcParameterItem3: TdxLayoutItem
      Parent = lcParameterGroup_Root
      CaptionOptions.Text = 'Currency'
      Visible = False
      Control = cbCcy
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup2: TdxLayoutGroup
      Parent = lcParameterGroup_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lcParameterGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'Transaction Date'
      Control = dtTransDateStart
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Top = 65
    Width = 773
    ExplicitTop = 65
    ExplicitWidth = 773
  end
  inherited StatusBar: TdxStatusBar
    Top = 446
    Width = 773
    ExplicitTop = 446
    ExplicitWidth = 773
  end
  inherited barMReport: TdxBarManager
    PixelsPerInch = 96
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Accounting\ConsolidatedTrialBalance.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'DATEFROM'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATETO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCY'
        ParamType = ptInput
      end>
  end
end

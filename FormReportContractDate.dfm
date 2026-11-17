inherited frmReportContractDate: TfrmReportContractDate
  Caption = 'Daily Bonds Trade'
  ClientHeight = 572
  ClientWidth = 985
  ExplicitWidth = 985
  ExplicitHeight = 572
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 77
    Width = 985
    Height = 475
    ExplicitTop = 77
    ExplicitWidth = 985
    ExplicitHeight = 475
  end
  inherited lcParameter: TdxLayoutControl
    Width = 985
    Height = 47
    ExplicitWidth = 985
    ExplicitHeight = 47
    object dtConDateFrom: TcxDateEdit [0]
      Left = 110
      Top = 10
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object dtConDateTo: TcxDateEdit [1]
      Left = 254
      Top = 10
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      CaptionOptions.Text = 'Contract Date From'
      Parent = lcParameterGroup1
      Control = dtConDateFrom
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = 'To'
      Parent = lcParameterGroup1
      Control = dtConDateTo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Top = 69
    Width = 985
    ExplicitTop = 69
    ExplicitWidth = 985
  end
  inherited StatusBar: TdxStatusBar
    Top = 552
    Width = 985
    ExplicitTop = 552
    ExplicitWidth = 985
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Fix Income\Daily_Bond_Trade.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'CONDATEFROM'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'CONDATETO'
        ParamType = ptUnknown
      end>
  end
end

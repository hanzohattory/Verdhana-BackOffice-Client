inherited frmReportStockDepList: TfrmReportStockDepList
  Caption = 'Stock Deposit List'
  ClientHeight = 620
  ClientWidth = 860
  ExplicitWidth = 860
  ExplicitHeight = 620
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 72
    Width = 860
    Height = 528
    ExplicitTop = 72
    ExplicitWidth = 860
    ExplicitHeight = 528
  end
  inherited lcParameter: TdxLayoutControl
    Width = 860
    Height = 42
    ExplicitWidth = 860
    ExplicitHeight = 42
    object dtStartDate: TcxDateEdit [0]
      Left = 65
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object dtEndDate: TcxDateEdit [1]
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
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      CaptionOptions.Text = 'Start Date'
      Parent = lcParameterGroup1
      Control = dtStartDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = 'End Date'
      Parent = lcParameterGroup1
      Control = dtEndDate
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
    Top = 64
    Width = 860
    ExplicitTop = 64
    ExplicitWidth = 860
  end
  inherited StatusBar: TdxStatusBar
    Top = 600
    Width = 860
    ExplicitTop = 600
    ExplicitWidth = 860
  end
  inherited ActionPermission: TNActionPermission
    AssignedPermission = <
      item
        Name = 'Reports'
        Description = 'View Reports'
      end>
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Stock Management\Stock_Deposit_list.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'STARTDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'ENDDATE'
        ParamType = ptInput
      end>
  end
end

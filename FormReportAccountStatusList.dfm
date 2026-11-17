inherited frmReportAccountStatusList: TfrmReportAccountStatusList
  Caption = 'Account Status List'
  ClientHeight = 513
  ClientWidth = 841
  ExplicitWidth = 841
  ExplicitHeight = 513
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 72
    Width = 841
    Height = 421
    ExplicitTop = 72
    ExplicitWidth = 841
    ExplicitHeight = 421
  end
  inherited lcParameter: TdxLayoutControl
    Width = 841
    Height = 42
    ExplicitWidth = 841
    ExplicitHeight = 42
    object cmbAccStatus: TcxImageComboBox [0]
      Left = 88
      Top = 10
      Properties.Items = <
        item
          Description = 'Active'
          ImageIndex = 0
          Value = 'A'
        end
        item
          Description = 'Dorman'
          Value = 'D'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object lcParameterGroup1: TdxLayoutGroup
      Parent = lcParameterGroup_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcParameterItem3: TdxLayoutItem
      Parent = lcParameterGroup1
      CaptionOptions.Text = 'Account Status'
      Control = cmbAccStatus
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Top = 64
    Width = 841
    ExplicitTop = 64
    ExplicitWidth = 841
  end
  inherited StatusBar: TdxStatusBar
    Top = 493
    Width = 841
    ExplicitTop = 493
    ExplicitWidth = 841
  end
  inherited ActionPermission: TNActionPermission
    AssignedPermission = <
      item
        Name = 'Reports'
        Description = 'View Reports'
      end>
    Left = 547
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Account Management\AccountStatusList.fr3'
    Params = <
      item
        DataType = ftString
        Name = 'ACC_STAT'
        ParamType = ptUnknown
      end>
  end
end

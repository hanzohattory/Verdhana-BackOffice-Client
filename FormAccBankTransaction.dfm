inherited frmReportAccBankTransaction: TfrmReportAccBankTransaction
  Caption = 'Account Bank Transaction'
  ClientWidth = 1037
  OnShow = FormShow
  ExplicitLeft = -231
  ExplicitWidth = 1037
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 129
    Width = 1037
    Height = 296
    ExplicitTop = 129
    ExplicitWidth = 1047
    ExplicitHeight = 296
  end
  inherited lcParameter: TdxLayoutControl
    Width = 1037
    Height = 99
    ExplicitWidth = 1047
    ExplicitHeight = 99
    object txtAccIDFrom: TcxButtonEdit [0]
      Left = 51
      Top = 28
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = txtAccIDFromPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Width = 82
    end
    object txtAccIDTo: TcxButtonEdit [1]
      Left = 51
      Top = 55
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = txtAccIDToPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Width = 82
    end
    object dtFrom: TcxDateEdit [2]
      Left = 354
      Top = 28
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 121
    end
    object dtTo: TcxDateEdit [3]
      Left = 354
      Top = 55
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 121
    end
    object chkMSOP: TcxCheckBox [4]
      Left = 505
      Top = 28
      Caption = 'Is MSOP Account'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Properties.OnChange = chkMSOPPropertiesChange
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object txtAccNameFrom: TcxTextEdit [5]
      Left = 139
      Top = 28
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 156
    end
    object txtAccNameTo: TcxTextEdit [6]
      Left = 139
      Top = 55
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 156
    end
    object txtAccMSOPNameFrom: TcxTextEdit [7]
      Left = 812
      Top = 28
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 177
    end
    object txtAccMSOPNameTo: TcxTextEdit [8]
      Left = 812
      Top = 55
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object txtAccMSOPIDFrom: TcxLookupComboBox [9]
      Left = 661
      Top = 28
      RepositoryItem = dmGlobal.luAccSOPByAccID
      Enabled = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      OnExit = txtAccMSOPIDFromExit
      Width = 145
    end
    object txtAccMSOPIDTo: TcxLookupComboBox [10]
      Left = 661
      Top = 55
      RepositoryItem = dmGlobal.luAccSOPByAccID
      Enabled = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      OnExit = txtAccMSOPIDToExit
      Width = 145
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      LayoutDirection = ldHorizontal
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      CaptionOptions.Text = 'From'
      Parent = lcParameterGroup6
      Control = txtAccIDFrom
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterGroup1: TdxLayoutGroup
      CaptionOptions.Text = 'Account ID'
      Parent = lcParameterGroup3
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = 'To'
      Parent = lcParameterGroup7
      Control = txtAccIDTo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Date'
      Parent = lcParameterGroup_Root
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lcParameterGroup3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object From: TdxLayoutItem
      CaptionOptions.Text = 'From'
      Parent = lcParameterGroup2
      Control = dtFrom
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem3: TdxLayoutItem
      CaptionOptions.Text = 'To'
      Parent = lcParameterGroup2
      Control = dtTo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup4: TdxLayoutGroup
      CaptionOptions.Text = 'Account MSOP ID'
      Parent = lcParameterGroup_Root
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object lcParameterItem4: TdxLayoutItem
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Parent = lcParameterGroup4
      Control = chkMSOP
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterGroup5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup4
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object lcParameterItem7: TdxLayoutItem
      CaptionOptions.Text = 'cxTextEdit1'
      CaptionOptions.Visible = False
      Parent = lcParameterGroup6
      Control = txtAccNameFrom
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcParameterItem8: TdxLayoutItem
      CaptionOptions.Text = 'cxTextEdit1'
      CaptionOptions.Visible = False
      Parent = lcParameterGroup7
      Control = txtAccNameTo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lcParameterItem9: TdxLayoutItem
      CaptionOptions.Text = 'cxTextEdit1'
      CaptionOptions.Visible = False
      Parent = lcParameterGroup8
      Control = txtAccMSOPNameFrom
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object txtAccMSOPName: TdxLayoutItem
      CaptionOptions.Text = 'cxTextEdit1'
      CaptionOptions.Visible = False
      Parent = lcParameterGroup8
      Control = txtAccMSOPNameTo
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object lcParameterGroup8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcParameterGroup4
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object lcParameterItem10: TdxLayoutItem
      CaptionOptions.Text = 'From'
      Parent = lcParameterGroup5
      Control = txtAccMSOPIDFrom
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object lcParameterItem5: TdxLayoutItem
      CaptionOptions.Text = 'To'
      Parent = lcParameterGroup5
      Control = txtAccMSOPIDTo
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
  end
  inherited spReport: TcxSplitter
    Top = 121
    Width = 1037
    ExplicitTop = 121
    ExplicitWidth = 1047
  end
  inherited StatusBar: TdxStatusBar
    Width = 1037
    ExplicitTop = -20
    ExplicitWidth = 1047
  end
  inherited ActionPermission: TNActionPermission
    AssignedPermission = <
      item
        Name = 'ReportAccountBankTransaction'
        Description = 'ReportAccountBankTransaction'
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
    ReportName = 'Cash Management\AccBank_Transaction.fr3'
    Params = <
      item
        DataType = ftLargeint
        Name = 'ACCIDFROM'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'ACCIDTO'
        ParamType = ptInput
      end
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
        Name = 'ISMSOP'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'ACCSOPIDFROM'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'ACCSOPIDTO'
        ParamType = ptInput
      end>
    Top = 131
  end
end

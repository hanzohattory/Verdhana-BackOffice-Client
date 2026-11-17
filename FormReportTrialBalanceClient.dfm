inherited frmReportTrialBalanceClient: TfrmReportTrialBalanceClient
  Caption = 'Trial Balance Client Report'
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 153
    Height = 272
    ExplicitTop = 153
    ExplicitHeight = 272
  end
  inherited lcParameter: TdxLayoutControl
    Height = 123
    ExplicitHeight = 123
    object dtDateFrom: TcxDateEdit [0]
      Left = 97
      Top = 10
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object dtDateTo: TcxDateEdit [1]
      Left = 239
      Top = 10
      AutoSize = False
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Height = 21
      Width = 121
    end
    object edAccCode: TcxButtonEdit [2]
      Left = 97
      Top = 64
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edAccCodePropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 80
    end
    object edLedgerCode: TcxLookupComboBox [3]
      Left = 97
      Top = 91
      RepositoryItem = dmGlobal.luLedgerType
      AutoSize = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Height = 21
      Width = 121
    end
    object chkAllAccCode: TcxCheckBox [4]
      Left = 183
      Top = 64
      Caption = 'All'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
    end
    object chkAllLedgerCode: TcxCheckBox [5]
      Left = 224
      Top = 91
      Caption = 'All'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
    end
    object cbCcy: TcxLookupComboBox [6]
      Left = 97
      Top = 37
      RepositoryItem = dmGlobal.luCurrency
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 48
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Transaction Date'
      Control = dtDateFrom
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'to'
      Control = dtDateTo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Account Code'
      Control = edAccCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Ledger Code'
      Control = edLedgerCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chkAllAccCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 33
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'cxCheckBox2'
      CaptionOptions.Visible = False
      Control = chkAllLedgerCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 33
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = lcParameterGroup_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Currency'
      Control = cbCcy
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 48
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = lcParameterGroup_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = lcParameterGroup_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Top = 145
    ExplicitTop = 145
    ExplicitWidth = 710
  end
  inherited barMReport: TdxBarManager
    PixelsPerInch = 96
  end
  inherited Report: TNClientReportContainer
    Params = <
      item
        DataType = ftDate
        Name = 'STARTDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'UNTILDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCY'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LDGCODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALLACCID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALLLDGCODE'
        ParamType = ptInput
      end>
  end
end

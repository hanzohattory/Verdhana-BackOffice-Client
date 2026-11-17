inherited frmReportClientActivity: TfrmReportClientActivity
  Caption = 'Client Activity'
  ClientHeight = 432
  ClientWidth = 734
  ExplicitWidth = 734
  ExplicitHeight = 432
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 99
    Width = 734
    Height = 313
    ExplicitTop = 99
    ExplicitWidth = 734
    ExplicitHeight = 313
  end
  inherited lcParameter: TdxLayoutControl
    Width = 734
    Height = 69
    ExplicitWidth = 734
    ExplicitHeight = 69
    object cbSales: TcxLookupComboBox [0]
      Left = 186
      Top = 10
      RepositoryItem = dmGlobal.luAccount
      Properties.KeyFieldNames = 'ACCID'
      Properties.ListColumns = <
        item
          FieldName = 'ACCCODE'
        end
        item
          FieldName = 'ACCNAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuAccount
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 286
    end
    object dtFromDate: TcxDateEdit [1]
      Left = 66
      Top = 37
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 80
    end
    object dtToDate: TcxDateEdit [2]
      Left = 169
      Top = 37
      Properties.DisplayFormat = 'dd MMM yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 80
    end
    object cmbFiltered: TcxImageComboBox [3]
      Left = 66
      Top = 10
      Properties.Items = <
        item
          Description = 'By Sales'
          ImageIndex = 0
          Value = 'BySales'
        end
        item
          Description = 'By Customer'
          Value = 'ByCustomer'
        end>
      Properties.OnCloseUp = cmbFilteredPropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 82
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Name'
      Parent = lcParameterGroup2
      Control = cbSales
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterItem2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Date From'
      Parent = lcParameterGroup1
      Control = dtFromDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'To'
      Parent = lcParameterGroup1
      Control = dtToDate
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
      Index = 1
    end
    object lcParameterItem4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Filtered By'
      Parent = lcParameterGroup2
      Control = cmbFiltered
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterGroup2: TdxLayoutGroup
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
    Top = 91
    Width = 734
    ExplicitTop = 91
    ExplicitWidth = 734
  end
  inherited StatusBar: TdxStatusBar
    Top = 412
    Width = 734
    ExplicitTop = 412
    ExplicitWidth = 734
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Middle Office\ClientActivityByAccount.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'SALESID'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FROMDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'TODATE'
        ParamType = ptInput
      end>
  end
end

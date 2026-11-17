inherited frmRptCashVoucher: TfrmRptCashVoucher
  Caption = 'Cash Voucher'
  ClientHeight = 622
  ClientWidth = 913
  ExplicitWidth = 913
  ExplicitHeight = 622
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 72
    Width = 913
    Height = 530
    ExplicitTop = 70
    ExplicitWidth = 913
    ExplicitHeight = 530
  end
  inherited lcParameter: TdxLayoutControl
    Width = 913
    Height = 42
    ExplicitWidth = 913
    ExplicitHeight = 42
    object CashVoucherID: TcxLookupComboBox [0]
      Left = 281
      Top = 10
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CSID'
      Properties.ListColumns = <
        item
          Caption = 'Cash Voucher No'
          FieldName = 'CSNO'
        end
        item
          Caption = 'Description'
          Width = 200
          FieldName = 'CSDESC'
        end>
      Properties.ListSource = dmLookup.dsluCashVoucher
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 145
    end
    object dtVoucherDate: TcxDateEdit [1]
      Left = 80
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.OnCloseUp = dtVoucherDatePropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 108
    end
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object lcParameterItem1: TdxLayoutItem
      CaptionOptions.Text = 'Cash Voucher No'
      Parent = lcParameterGroup1
      Control = CashVoucherID
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterItem2: TdxLayoutItem
      CaptionOptions.Text = 'Voucher Date'
      Parent = lcParameterGroup1
      Control = dtVoucherDate
      ControlOptions.ShowBorder = False
      Index = 0
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
    Width = 913
    ExplicitTop = 64
    ExplicitWidth = 913
  end
  inherited StatusBar: TdxStatusBar
    Top = 602
    Width = 913
    ExplicitTop = 602
    ExplicitWidth = 913
  end
  inherited ActionPermission: TNActionPermission
    AssignedPermission = <
      item
        Name = 'Reports'
        Description = 'View Reports'
      end>
    Left = 538
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Cash Management\Cash_Voucher.fr3'
    Params = <
      item
        DataType = ftLargeint
        Name = 'CSID'
        ParamType = ptUnknown
      end>
  end
end

inherited frmBondsTradeConfirmation: TfrmBondsTradeConfirmation
  Caption = 'Letter Of Confirmation'
  ClientHeight = 476
  ClientWidth = 886
  ExplicitWidth = 886
  ExplicitHeight = 476
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 71
    Width = 886
    Height = 385
    ExplicitTop = 71
    ExplicitWidth = 886
    ExplicitHeight = 385
  end
  inherited lcParameter: TdxLayoutControl
    Width = 886
    Height = 41
    ExplicitWidth = 886
    ExplicitHeight = 41
    object txtFromDate: TcxDateEdit [0]
      Left = 65
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.OnCloseUp = txtFromDatePropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 100
    end
    object txtUntilDate: TcxDateEdit [1]
      Left = 223
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.OnCloseUp = txtUntilDatePropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 100
    end
    object txtAuthPerson: TcxLookupComboBox [2]
      Left = 640
      Top = 10
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'AUTH_NAME'
      Properties.ListColumns = <
        item
          FieldName = 'AUTH_NAME'
        end
        item
          FieldName = 'JABATAN'
        end>
      Properties.ListSource = dmLookup.dsLuAuthPerson
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 145
    end
    object txtTradeNo: TcxLookupComboBox [3]
      Left = 382
      Top = 10
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'TRADEBOND_NO'
      Properties.ListColumns = <
        item
          Width = 80
          FieldName = 'TRADEDATE'
        end
        item
          FieldName = 'TRADEBOND_NO'
        end
        item
          FieldName = 'INSTRUMENT_CODE'
        end
        item
          FieldName = 'SHORTNAME'
        end
        item
          FieldName = 'FACEVALUE'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuBondsDealTicket
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 159
    end
    object lcParameterItem1: TdxLayoutItem
      Parent = lcParameterGroup1
      CaptionOptions.Text = 'From Date'
      Control = txtFromDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      Parent = lcParameterGroup1
      CaptionOptions.Text = 'Until Date'
      Control = txtUntilDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
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
      CaptionOptions.Text = 'Authorized Person'
      Control = txtAuthPerson
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lcParameterItem4: TdxLayoutItem
      Parent = lcParameterGroup1
      CaptionOptions.Text = 'Trade No.'
      Control = txtTradeNo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 159
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited spReport: TcxSplitter
    Top = 63
    Width = 886
    ExplicitTop = 63
    ExplicitWidth = 886
  end
  inherited StatusBar: TdxStatusBar
    Top = 456
    Width = 886
    ExplicitTop = 456
    ExplicitWidth = 886
  end
  inherited ActionPermission: TNActionPermission
    AssignedPermission = <
      item
        Name = 'Reports'
        Description = 'View Reports'
      end>
    Left = 547
    Top = 317
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Fix Income\LetterOfConfirm.fr3'
    Params = <
      item
        DataType = ftString
        Name = 'AUTHPERSON'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'JABATAN'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FROMDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'UNTILDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TRADEBOND_NO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TRADEBOND_ID'
        ParamType = ptInput
      end>
  end
end

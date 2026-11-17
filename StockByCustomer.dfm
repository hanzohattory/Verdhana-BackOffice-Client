inherited frmEditor1: TfrmEditor1
  Caption = 'By Customer'
  ClientHeight = 435
  ClientWidth = 579
  ExplicitWidth = 585
  ExplicitHeight = 464
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 579
    Height = 73
    Align = alTop
    ExplicitWidth = 579
    ExplicitHeight = 73
    object cxDBDateEdit1: TcxDBDateEdit [0]
      Left = 97
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 114
    end
    object cxDBDateEdit2: TcxDBDateEdit [1]
      Left = 276
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 112
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [2]
      Left = 97
      Top = 37
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit [3]
      Left = 233
      Top = 37
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 332
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem1: TdxLayoutItem
      CaptionOptions.Text = 'Transaction Date'
      Parent = LayoutControlGroup1
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem2: TdxLayoutItem
      CaptionOptions.Text = 'Settle Date'
      Parent = LayoutControlGroup1
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlItem3: TdxLayoutItem
      CaptionOptions.Text = 'Account Code'
      Parent = LayoutControlGroup2
      Control = cxDBButtonEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem4: TdxLayoutItem
      CaptionOptions.Text = '-'
      Parent = LayoutControlGroup2
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 386
    Width = 579
    inherited LayoutControlFooterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    inherited LayoutControlFooterItem1: TdxLayoutItem
      Index = 0
    end
    inherited LayoutControlFooterItem2: TdxLayoutItem
      Index = 1
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCutomer
    Left = 436
    Top = 222
  end
  object cdsCutomer: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 381
    Top = 222
    object cdsCutomerENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsCutomerTRANSDATE: TDateField
      FieldName = 'TRANSDATE'
    end
    object cdsCutomerSETTLEDATE: TDateField
      FieldName = 'SETTLEDATE'
    end
    object cdsCutomerACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCutomerACCCODE: TStringField
      FieldName = 'ACCCODE'
    end
  end
  object cdsDetailedStock: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 381
    Top = 273
  end
end

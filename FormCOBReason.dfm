inherited frmCOBReason: TfrmCOBReason
  Caption = 'Reason'
  ClientHeight = 153
  ClientWidth = 396
  ExplicitWidth = 402
  ExplicitHeight = 181
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 396
    Height = 104
    ExplicitWidth = 396
    ExplicitHeight = 104
    object mmReason: TcxMemo [0]
      Left = 10
      Top = 28
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Height = 60
      Width = 372
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem1: TdxLayoutItem
      CaptionOptions.Text = 'Reason'
      CaptionOptions.Layout = clTop
      Parent = LayoutControlGroup_Root
      Control = mmReason
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 104
    Width = 396
    ExplicitTop = 104
    ExplicitWidth = 396
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
end

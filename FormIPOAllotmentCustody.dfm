inherited frmIPOAllotmentCustody: TfrmIPOAllotmentCustody
  Caption = 'Get Custody Account'
  ClientHeight = 155
  ClientWidth = 375
  ExplicitWidth = 381
  ExplicitHeight = 184
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 375
    Height = 106
    ExplicitWidth = 375
    ExplicitHeight = 106
    object cxDBTextEdit2: TcxDBTextEdit [0]
      Left = 83
      Top = 37
      DataBinding.DataField = 'CUSTODY_CODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [1]
      Left = 83
      Top = 64
      DataBinding.DataField = 'SUBREK'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 276
    end
    object cxDBCheckBox1: TcxDBCheckBox [2]
      Left = 10
      Top = 10
      Caption = 'Use External Trans'
      DataBinding.DataField = 'EXTERNAL_TRANS'
      DataBinding.DataSource = dsSubject
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem2: TdxLayoutItem
      CaptionOptions.Text = 'Custody Code'
      Parent = LayoutControlGroup_Root
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem3: TdxLayoutItem
      CaptionOptions.Text = 'Sub Rek'
      Parent = LayoutControlGroup_Root
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlItem4: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup_Root
      Control = cxDBCheckBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 106
    Width = 375
    ExplicitTop = 106
    ExplicitWidth = 375
    inherited btnOK: TcxButton
      ModalResult = 1
    end
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
    DataSet = frmIPOAllotments.cdsIPOAllotment
    Left = 286
    Top = 18
  end
end

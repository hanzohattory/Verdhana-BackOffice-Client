inherited frmDHKs: TfrmDHKs
  Caption = 'DHK'
  ClientHeight = 283
  ClientWidth = 424
  ExplicitWidth = 430
  ExplicitHeight = 312
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 424
    Height = 234
    ExplicitTop = -3
    ExplicitWidth = 608
    ExplicitHeight = 366
    object cxDBTextEdit2: TcxDBTextEdit [0]
      Left = 100
      Top = 10
      TabStop = False
      DataBinding.DataField = 'ACCOUNT_SID'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 148
    end
    object cxDBTextEdit3: TcxDBTextEdit [1]
      Left = 100
      Top = 37
      TabStop = False
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 304
    end
    object cxDBTextEdit4: TcxDBTextEdit [2]
      Left = 100
      Top = 64
      TabStop = False
      DataBinding.DataField = 'SI_DESC'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 304
    end
    object cxDBTextEdit5: TcxDBTextEdit [3]
      Left = 100
      Top = 91
      TabStop = False
      DataBinding.DataField = 'SETTLE_SIDE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit [4]
      Left = 100
      Top = 172
      TabStop = False
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object txtValue: TcxDBTextEdit [5]
      Left = 100
      Top = 199
      DataBinding.DataField = 'VALUE'
      DataBinding.DataSource = dsSubject
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cmbCBestAcc01: TcxLookupComboBox [6]
      Left = 100
      Top = 118
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CUSTODYACCNO'
      Properties.ListColumns = <
        item
          Caption = 'Account No'
          FieldName = 'CUSTODYACCNO'
        end
        item
          Caption = 'Account Name'
          FieldName = 'CUSTODYACCNAME'
        end>
      Properties.ListSource = dmLookup.dsLuCBestAcc01
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 216
    end
    object cmbCBestAcc04: TcxLookupComboBox [7]
      Left = 100
      Top = 145
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CUSTODYACCNO'
      Properties.ListColumns = <
        item
          Caption = 'Account No'
          FieldName = 'CUSTODYACCNO'
        end
        item
          Caption = 'Account Name'
          FieldName = 'CUSTODYACCNAME'
        end>
      Properties.ListSource = dmLookup.dsLuCBestAcc04
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 216
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account SID'
      Parent = LayoutControlGroup_Root
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account Name'
      Parent = LayoutControlGroup_Root
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Parent = LayoutControlGroup_Root
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlItem5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Settle Side'
      Parent = LayoutControlGroup_Root
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutControlItem7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency/Stock'
      Parent = LayoutControlGroup_Root
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object LayoutControlItem8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Value'
      Parent = LayoutControlGroup_Root
      Control = txtValue
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object LayoutControlItem6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'CBest Account 01'
      Parent = LayoutControlGroup_Root
      Control = cmbCBestAcc01
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LayoutControlItem9: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'CBest Account 04'
      Parent = LayoutControlGroup_Root
      Control = cmbCBestAcc04
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 234
    Width = 424
    ExplicitTop = 366
    ExplicitWidth = 608
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
    DataSet = frmDHK.cdsDHKStockCompare
    Left = 346
    Top = 90
  end
end

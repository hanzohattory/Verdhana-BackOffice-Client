object frmSetAllocToOneAccount: TfrmSetAllocToOneAccount
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Set Allocation To One'
  ClientHeight = 77
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 554
    Height = 43
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 364
    object cbAccID: TcxLookupComboBox
      Left = 137
      Top = 10
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ACCID'
      Properties.ListColumns = <
        item
          FieldName = 'ACCCODE'
        end
        item
          FieldName = 'ACCNAME'
        end
        item
          FieldName = 'EXTREF_CODE'
        end>
      Properties.ListSource = dmLookup.dsLuAllocAccount
      Properties.OnEditValueChanged = cbAccIDPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 88
    end
    object cbAccID2: TcxLookupComboBox
      Left = 231
      Top = 10
      AutoSize = False
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'ACCID'
      Properties.ListColumns = <
        item
          FieldName = 'ACCNAME'
        end
        item
          FieldName = 'EXTREF_CODE'
        end
        item
          FieldName = 'ACCCODE'
        end>
      Properties.ListSource = dmLookup.dsLuAllocAccount
      Properties.OnEditValueChanged = cbAccID2PropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Height = 21
      Width = 298
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Set Allocation To Account'
      Control = cbAccID
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      CaptionOptions.Text = 'cxLookupComboBox1'
      CaptionOptions.Visible = False
      Control = cbAccID2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 298
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object cxButton1: TcxButton
    Left = 196
    Top = 44
    Width = 75
    Height = 25
    Caption = '&Ok'
    ModalResult = 1
    TabOrder = 1
  end
  object cxButton2: TcxButton
    Left = 277
    Top = 44
    Width = 75
    Height = 25
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 2
  end
end

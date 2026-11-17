object frmFacilitationBoard: TfrmFacilitationBoard
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Facilitation Board'
  ClientHeight = 99
  ClientWidth = 462
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 50
    Width = 462
    Height = 49
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 12
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 94
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dxLayoutControl2: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 462
    Height = 50
    Align = alClient
    TabOrder = 1
    object edBoardID: TcxLookupComboBox
      Left = 49
      Top = 12
      RepositoryItem = dmGlobal.luBoardMarket
      Properties.ListColumns = <>
      Properties.OnEditValueChanged = edBoardIDPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 112
    end
    object edCPAccID: TcxLookupComboBox
      Left = 286
      Top = 12
      RepositoryItem = dmGlobal.luCPAccount
      AutoSize = False
      Enabled = False
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Height = 23
      Width = 163
    end
    object dxLayoutControl2Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Board'
      Control = edBoardID
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 112
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutControl2Group_Root
      AlignVert = avClient
      CaptionOptions.Text = 'Counterpart Account'
      Control = edCPAccID
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 163
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
  end
  object cdsBoard: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'BOARDID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryBoard'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 272
    Top = 50
    object cdsBoardBOARDID: TLargeintField
      FieldName = 'BOARDID'
      Required = True
    end
    object cdsBoardBOARDCODE: TStringField
      FieldName = 'BOARDCODE'
      Required = True
      Size = 10
    end
    object cdsBoardMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsBoardBOARDDESC: TStringField
      FieldName = 'BOARDDESC'
      Size = 30
    end
    object cdsBoardGLCD: TStringField
      FieldName = 'GLCD'
      Size = 30
    end
    object cdsBoardMARKET: TStringField
      FieldName = 'MARKET'
      Size = 1
    end
    object cdsBoardCPTYPE: TStringField
      FieldName = 'CPTYPE'
      Size = 5
    end
    object cdsBoardDUEBUYSTOCK: TIntegerField
      FieldName = 'DUEBUYSTOCK'
    end
    object cdsBoardDUESELLSTOCK: TIntegerField
      FieldName = 'DUESELLSTOCK'
    end
    object cdsBoardDUEBUYCASH: TIntegerField
      FieldName = 'DUEBUYCASH'
    end
    object cdsBoardDUESELLCASH: TIntegerField
      FieldName = 'DUESELLCASH'
    end
    object cdsBoardUSEMOVEDUE: TStringField
      FieldName = 'USEMOVEDUE'
      Size = 1
    end
    object cdsBoardMOVEDUE_BUYSTOCK: TIntegerField
      FieldName = 'MOVEDUE_BUYSTOCK'
    end
    object cdsBoardMOVEDUE_SELLSTOCK: TIntegerField
      FieldName = 'MOVEDUE_SELLSTOCK'
    end
    object cdsBoardMOVEDUE_BUYCASH: TIntegerField
      FieldName = 'MOVEDUE_BUYCASH'
    end
    object cdsBoardMOVEDUE_SELLCASH: TIntegerField
      FieldName = 'MOVEDUE_SELLCASH'
    end
    object cdsBoardCPVALUE: TIntegerField
      FieldName = 'CPVALUE'
    end
    object cdsBoardMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsBoardMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsBoardAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsBoardAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsBoardISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsBoardID: TLargeintField
      FieldName = 'ID'
    end
  end
end

inherited frmTradingLimitClass: TfrmTradingLimitClass
  Caption = 'Trading Limit Class'
  ClientHeight = 511
  ClientWidth = 630
  ExplicitWidth = 636
  ExplicitHeight = 540
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 630
    Height = 421
    ExplicitWidth = 630
    ExplicitHeight = 421
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 79
      Top = 10
      DataBinding.DataField = 'TLCLASSCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 79
      Top = 37
      DataBinding.DataField = 'TLCLASSDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 537
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 79
      Top = 64
      RepositoryItem = dmGlobal.luProductType
      DataBinding.DataField = 'PRDTYPE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 145
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [3]
      Left = 300
      Top = 64
      RepositoryItem = dmGlobal.luProduct
      DataBinding.DataField = 'PRDCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 145
    end
    object cxGroupBox1: TcxGroupBox [4]
      Left = 10
      Top = 91
      Caption = 'Buy Order Validation'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 4
      Height = 318
      Width = 300
      object dxLayoutControl3: TdxLayoutControl
        Left = 2
        Top = 18
        Width = 296
        Height = 298
        Align = alClient
        TabOrder = 0
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 10
          Top = 10
          RepositoryItem = dmGlobal.chkStandard
          Caption = 'Validation Model'
          DataBinding.DataField = 'TLB_CHK'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 103
        end
        object cxDBImageComboBox1: TcxDBImageComboBox
          Left = 119
          Top = 10
          RepositoryItem = dmGlobal.luTradingLimitValidationModel
          DataBinding.DataField = 'TLB_CHK_MODEL'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 162
        end
        object cxDBRadioGroup1: TcxDBRadioGroup
          Left = 10
          Top = 64
          RepositoryItem = dmGlobal.rgAcceptRejectApproval
          Caption = 'Buy Order When Over Buying Limit'
          DataBinding.DataField = 'TLB_CHK_OVERLIMIT'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 3
          Height = 50
          Width = 185
        end
        object cxDBRadioGroup2: TcxDBRadioGroup
          Left = 10
          Top = 120
          RepositoryItem = dmGlobal.rgAcceptRejectApproval
          Caption = 'Buy Order When Client has Overdue Outstanding'
          DataBinding.DataField = 'TLB_CHK_OVERDUE'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 4
          Height = 50
          Width = 271
        end
        object cxDBRadioGroup3: TcxDBRadioGroup
          Left = 10
          Top = 176
          RepositoryItem = dmGlobal.rgAcceptRejectApproval
          Caption = 'Buy Order When Client on Not Valid Status'
          DataBinding.DataField = 'TLB_CHK_STSNOTVALID'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 5
          Height = 50
          Width = 185
        end
        object cxDBRadioGroup4: TcxDBRadioGroup
          Left = 10
          Top = 232
          RepositoryItem = dmGlobal.rgAcceptRejectApproval
          Caption = 'Trade Margin for Non Margin Stock'
          DataBinding.DataField = 'TLB_CHK_MRGNONMRG'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 6
          Height = 50
          Width = 185
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 70
          Top = 37
          DataBinding.DataField = 'STOCK_VAL'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 80
        end
        object dxLayoutControl3Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl3Item1: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Validation Model'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl3Group1
          Control = cxDBCheckBox1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item2: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'cxDBImageComboBox1'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl3Group1
          Control = cxDBImageComboBox1
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group1: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group_Root
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item7: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup1'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl3Group_Root
          Control = cxDBRadioGroup1
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item3: TdxLayoutItem
          CaptionOptions.Visible = False
          Parent = dxLayoutControl3Group_Root
          Control = cxDBRadioGroup2
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl3Item4: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup3'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl3Group_Root
          Control = cxDBRadioGroup3
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl3Item5: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup4'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl3Group_Root
          Control = cxDBRadioGroup4
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl3Item6: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Stock Value'
          Parent = dxLayoutControl3Group_Root
          Control = cxDBTextEdit3
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
    object cxGroupBox2: TcxGroupBox [5]
      Left = 316
      Top = 91
      Caption = 'Sell Order Validation'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 5
      Height = 318
      Width = 300
      object dxLayoutControl4: TdxLayoutControl
        Left = 2
        Top = 18
        Width = 296
        Height = 298
        Align = alClient
        TabOrder = 0
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 10
          Top = 10
          RepositoryItem = dmGlobal.chkStandard
          Caption = 'Validation Model'
          DataBinding.DataField = 'TLS_CHK'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 103
        end
        object cxDBImageComboBox2: TcxDBImageComboBox
          Left = 119
          Top = 10
          RepositoryItem = dmGlobal.luTradingLimitValidationModel
          DataBinding.DataField = 'TLS_CHK_MODEL'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 162
        end
        object cxDBRadioGroup5: TcxDBRadioGroup
          Left = 10
          Top = 64
          RepositoryItem = dmGlobal.rgAcceptRejectApproval
          Caption = 'Short Sell Order'
          DataBinding.DataField = 'TLS_CHK_SHORTSELL'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 3
          Height = 50
          Width = 185
        end
        object cxDBRadioGroup6: TcxDBRadioGroup
          Left = 10
          Top = 120
          RepositoryItem = dmGlobal.rgAcceptRejectApproval
          Caption = 'Short Sell Order for Not Valid Short Sell Stock'
          DataBinding.DataField = 'TLS_SSNONSS'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 4
          Height = 50
          Width = 185
        end
        object cxDBRadioGroup7: TcxDBRadioGroup
          Left = 10
          Top = 176
          RepositoryItem = dmGlobal.rgAcceptRejectApproval
          Caption = 'Sell Order When Client on Not Valid Status'
          DataBinding.DataField = 'TLS_CHK_STSNOTVALID'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 5
          Height = 50
          Width = 185
        end
        object cxDBRadioGroup8: TcxDBRadioGroup
          Left = 10
          Top = 232
          RepositoryItem = dmGlobal.rgAcceptRejectApproval
          Caption = 'Sell Order When Client has Overdue Outstanding'
          DataBinding.DataField = 'TLS_CHK_OVERDUE'
          DataBinding.DataSource = dsSubject
          Properties.Items = <>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 6
          Height = 50
          Width = 185
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 68
          Top = 37
          DataBinding.DataField = 'CASH_VAL'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 80
        end
        object dxLayoutControl4Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl4Item1: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'cxDBCheckBox2'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group3
          Control = cxDBCheckBox2
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item2: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'cxDBImageComboBox2'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group3
          Control = cxDBImageComboBox2
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group3: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group_Root
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item3: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup5'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group_Root
          Control = cxDBRadioGroup5
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Item4: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup6'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group_Root
          Control = cxDBRadioGroup6
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Item5: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup7'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group_Root
          Control = cxDBRadioGroup7
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl4Item6: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup8'
          CaptionOptions.Visible = False
          Parent = dxLayoutControl4Group_Root
          Control = cxDBRadioGroup8
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl4Item7: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Cash Value'
          Parent = dxLayoutControl4Group_Root
          Control = cxDBTextEdit4
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Product Type'
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Product Code'
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxGroupBox1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group2
      Control = cxGroupBox1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxGroupBox2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group2
      Control = cxGroupBox2
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 442
    Width = 630
    ExplicitTop = 442
    ExplicitWidth = 630
    inherited dbNavLog: TDBNavigator
      Left = 516
      Hints.Strings = ()
      ExplicitLeft = 516
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      Index = -1
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl2Item2: TdxLayoutItem
      Index = 1
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      Index = 0
    end
    inherited lcNavLog: TdxLayoutItem
      Index = 1
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 491
    Width = 630
    ExplicitTop = 491
    ExplicitWidth = 630
  end
  inherited tabEditorData: TTabSet
    Top = 421
    Width = 630
    ExplicitTop = 421
    ExplicitWidth = 630
  end
  inherited dsSubject: TDataSource
    DataSet = cdsTradingLimit
    Left = 456
    Top = 8
  end
  object cdsTradingLimit: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'TLCLASSID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryTrdLimit'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 456
    Top = 56
    object cdsTradingLimitTLCLASSID: TIntegerField
      FieldName = 'TLCLASSID'
      Required = True
    end
    object cdsTradingLimitTLCLASSCODE: TStringField
      FieldName = 'TLCLASSCODE'
      Required = True
      Size = 10
    end
    object cdsTradingLimitTLCLASSDESC: TStringField
      FieldName = 'TLCLASSDESC'
      Size = 50
    end
    object cdsTradingLimitPRDCODE: TStringField
      FieldName = 'PRDCODE'
      Required = True
      Size = 10
    end
    object cdsTradingLimitPRDTYPE: TStringField
      FieldName = 'PRDTYPE'
      Required = True
      OnChange = cdsTradingLimitPRDTYPEChange
      Size = 10
    end
    object cdsTradingLimitTLB_CHK: TStringField
      FieldName = 'TLB_CHK'
      Size = 1
    end
    object cdsTradingLimitTLB_CHK_MODEL: TStringField
      FieldName = 'TLB_CHK_MODEL'
      Size = 10
    end
    object cdsTradingLimitTLB_CHK_STOCK: TStringField
      FieldName = 'TLB_CHK_STOCK'
      Size = 1
    end
    object cdsTradingLimitTLB_CHK_OVERLIMIT: TStringField
      FieldName = 'TLB_CHK_OVERLIMIT'
      Size = 1
    end
    object cdsTradingLimitTLB_CHK_OVERDUE: TStringField
      FieldName = 'TLB_CHK_OVERDUE'
      Size = 1
    end
    object cdsTradingLimitTLB_CHK_STSNOTVALID: TStringField
      FieldName = 'TLB_CHK_STSNOTVALID'
      Size = 1
    end
    object cdsTradingLimitTLB_CHK_MRGNONMRG: TStringField
      FieldName = 'TLB_CHK_MRGNONMRG'
      Size = 1
    end
    object cdsTradingLimitTLS_CHK: TStringField
      FieldName = 'TLS_CHK'
      Size = 1
    end
    object cdsTradingLimitTLS_CHK_MODEL: TStringField
      FieldName = 'TLS_CHK_MODEL'
      Size = 10
    end
    object cdsTradingLimitTLS_CHK_SHORTSELL: TStringField
      FieldName = 'TLS_CHK_SHORTSELL'
      Size = 1
    end
    object cdsTradingLimitTLS_SSNONSS: TStringField
      FieldName = 'TLS_SSNONSS'
      Size = 1
    end
    object cdsTradingLimitTLS_CHK_OVERDUE: TStringField
      FieldName = 'TLS_CHK_OVERDUE'
      Size = 1
    end
    object cdsTradingLimitTLS_CHK_STSNOTVALID: TStringField
      FieldName = 'TLS_CHK_STSNOTVALID'
      Size = 1
    end
    object cdsTradingLimitCASH_VAL: TFloatField
      FieldName = 'CASH_VAL'
    end
    object cdsTradingLimitSTOCK_VAL: TFloatField
      FieldName = 'STOCK_VAL'
    end
    object cdsTradingLimitMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsTradingLimitMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsTradingLimitAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsTradingLimitAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsTradingLimitUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsTradingLimitUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsTradingLimitNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsTradingLimitISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsTradingLimitID: TLargeintField
      FieldName = 'ID'
    end
  end
end

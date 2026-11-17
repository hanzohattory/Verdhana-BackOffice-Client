inherited frmCommission: TfrmCommission
  Caption = 'Commission'
  ClientHeight = 331
  ExplicitWidth = 535
  ExplicitHeight = 360
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Height = 241
    ExplicitHeight = 241
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 116
      Top = 10
      DataBinding.DataField = 'COMM_CODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 100
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [1]
      Left = 260
      Top = 10
      RepositoryItem = dmGlobal.luMarket
      DataBinding.DataField = 'MARKETCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 100
    end
    object cxDBTextEdit3: TcxDBTextEdit [2]
      Left = 116
      Top = 37
      DataBinding.DataField = 'COMM_DESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 399
    end
    object cxDBTextEdit4: TcxDBTextEdit [3]
      Left = 116
      Top = 64
      DataBinding.DataField = 'MIN_COMM'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object rgCalcMethod: TcxDBRadioGroup [4]
      Left = 116
      Top = 91
      RepositoryItem = dmGlobal.rgCommissionCalcMethod
      DataBinding.DataField = 'CALC_METHOD'
      DataBinding.DataSource = dsSubject
      Properties.Items = <>
      Properties.OnEditValueChanged = rgCalcMethodPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 5
      Height = 32
      Width = 185
    end
    object edCommRate: TcxDBTextEdit [5]
      Left = 116
      Top = 129
      DataBinding.DataField = 'COMM_RATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object edNetRate: TcxDBTextEdit [6]
      Left = 116
      Top = 156
      DataBinding.DataField = 'NET_RATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object edCommTable: TcxDBButtonEdit [7]
      Left = 116
      Top = 183
      DataBinding.DataField = 'COMM_TABLE'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edCommTablePropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 8
      Width = 121
    end
    object edNewCommRate: TcxDBTextEdit [8]
      Left = 390
      Top = 129
      DataBinding.DataField = 'NEW_COMM_RATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object edNewNetRate: TcxDBTextEdit [9]
      Left = 390
      Top = 156
      DataBinding.DataField = 'NEW_NET_RATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object edNewCommTable: TcxDBButtonEdit [10]
      Left = 390
      Top = 183
      DataBinding.DataField = 'NEW_COMM_TABLE'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edNewCommTablePropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 11
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit [11]
      Left = 390
      Top = 210
      DataBinding.DataField = 'NEW_COMM_EFFECTIVE_DATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Width = 121
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [12]
      Left = 415
      Top = 10
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCYCODE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 100
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Commission Code'
      Parent = dxLayoutControl1Group1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Market'
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Minimum Commission '
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Calculation Method'
      Parent = dxLayoutGroup1
      Control = rgCalcMethod
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Commission Rate'
      Parent = dxLayoutControl1Group4
      Control = edCommRate
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Netting Rate'
      Parent = dxLayoutControl1Group4
      Control = edNetRate
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Commission Table'
      Parent = dxLayoutControl1Group4
      Control = edCommTable
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'New Commission Rate'
      Parent = dxLayoutControl1Group3
      Control = edNewCommRate
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'New Netting Rate'
      Parent = dxLayoutControl1Group3
      Control = edNewNetRate
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'New Commission Table'
      Parent = dxLayoutControl1Group3
      Control = edNewCommTable
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'New Commission Effective On'
      Parent = dxLayoutControl1Group3
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group2
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Currency'
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 262
    ExplicitTop = 262
    inherited dbNavLog: TDBNavigator
      Hints.Strings = ()
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
    Top = 311
    ExplicitTop = 311
  end
  inherited tabEditorData: TTabSet
    Top = 241
    ExplicitTop = 241
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCommission
    Left = 424
    Top = 32
  end
  object cdsCommission: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'COMM_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryCommission'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsCommissionNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 424
    Top = 80
    object cdsCommissionCOMM_ID: TLargeintField
      FieldName = 'COMM_ID'
      Required = True
    end
    object cdsCommissionCOMM_CODE: TStringField
      FieldName = 'COMM_CODE'
      Required = True
      Size = 10
    end
    object cdsCommissionMARKETCODE: TStringField
      FieldName = 'MARKETCODE'
      Required = True
      Size = 10
    end
    object cdsCommissionCOMM_DESC: TStringField
      FieldName = 'COMM_DESC'
      Size = 50
    end
    object cdsCommissionMIN_COMM: TFloatField
      FieldName = 'MIN_COMM'
      DisplayFormat = '#,##0.00'
    end
    object cdsCommissionCALC_METHOD: TStringField
      FieldName = 'CALC_METHOD'
      Size = 1
    end
    object cdsCommissionCOMM_RATE: TFloatField
      FieldName = 'COMM_RATE'
      DisplayFormat = '#,##0.00000'
    end
    object cdsCommissionNET_RATE: TFloatField
      FieldName = 'NET_RATE'
      DisplayFormat = '#,##0.00000'
    end
    object cdsCommissionCOMM_TABLE: TStringField
      FieldName = 'COMM_TABLE'
      Size = 10
    end
    object cdsCommissionNEW_COMM_RATE: TFloatField
      FieldName = 'NEW_COMM_RATE'
      DisplayFormat = '#,##0.00000'
    end
    object cdsCommissionNEW_NET_RATE: TFloatField
      FieldName = 'NEW_NET_RATE'
      DisplayFormat = '#,##0.00000'
    end
    object cdsCommissionNEW_COMM_TABLE: TStringField
      FieldName = 'NEW_COMM_TABLE'
      Size = 10
    end
    object cdsCommissionNEW_COMM_EFFECTIVE_DATE: TDateField
      FieldName = 'NEW_COMM_EFFECTIVE_DATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsCommissionMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCommissionMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCommissionAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCommissionAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCommissionUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCommissionUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCommissionNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCommissionISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCommissionID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCommissionCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
  end
end

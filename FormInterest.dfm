inherited frmInterest: TfrmInterest
  Caption = 'Interest'
  ClientHeight = 344
  ClientWidth = 438
  ExplicitWidth = 454
  ExplicitHeight = 383
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 438
    Height = 254
    ExplicitTop = -6
    ExplicitWidth = 435
    ExplicitHeight = 315
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 106
      Top = 10
      DataBinding.DataField = 'INTERESTCODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 111
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 106
      Top = 37
      DataBinding.DataField = 'INTERESTDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 321
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 106
      Top = 64
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 79
    end
    object rgCalcMethod: TcxDBRadioGroup [3]
      Left = 106
      Top = 91
      DataBinding.DataField = 'CALCMETHOD'
      DataBinding.DataSource = dsSubject
      Properties.Columns = 2
      Properties.DefaultValue = 'R'
      Properties.Items = <
        item
          Caption = 'Rate'
          Value = 'R'
        end
        item
          Caption = 'Table'
          Value = 'T'
        end>
      Properties.OnChange = cxDBRadioGroup1PropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      Style.TransparentBorder = True
      TabOrder = 3
      Height = 30
      Width = 185
    end
    object edInterestRate: TcxDBTextEdit [4]
      Left = 106
      Top = 127
      DataBinding.DataField = 'INTERESTRATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object edInterestTable: TcxDBButtonEdit [5]
      Left = 306
      Top = 127
      DataBinding.DataField = 'INTERESTTABLE'
      DataBinding.DataSource = dsSubject
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edInterestTablePropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit [6]
      Left = 106
      Top = 190
      DataBinding.DataField = 'INTERESTDAY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 79
    end
    object cxDBRadioGroup2: TcxDBRadioGroup [7]
      Left = 106
      Top = 154
      DataBinding.DataField = 'CALCBASIS'
      DataBinding.DataSource = dsSubject
      Properties.Columns = 2
      Properties.DefaultValue = 'S'
      Properties.Items = <
        item
          Caption = 'Simple'
          Value = 'S'
        end
        item
          Caption = 'Compound'
          Value = 'C'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Shadow = False
      TabOrder = 6
      Height = 30
      Width = 185
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [8]
      Left = 106
      Top = 217
      DataBinding.DataField = 'PENALTYRATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Width = 47
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [9]
      Left = 222
      Top = 217
      AutoSize = False
      DataBinding.DataField = 'PENALTYDAY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      Height = 21
      Width = 51
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [10]
      Left = 370
      Top = 217
      AutoSize = False
      DataBinding.DataField = 'PENALTYCALC_DAY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Height = 21
      Width = 53
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 7
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Interest Code'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 321
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Calculation Method'
      Control = rgCalcMethod
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Interest Rate'
      Control = edInterestRate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Interest Table'
      Control = edInterestTable
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Interest Day'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Calculation Basis'
      Control = cxDBRadioGroup2
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Penalty Rate'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 47
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Penalty Day'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 51
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Penalty Calc Days'
      Control = cxDBCurrencyEdit3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 7
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 275
    Width = 438
    ExplicitTop = 244
    ExplicitWidth = 440
    inherited dbNavLog: TDBNavigator
      Left = 324
      Hints.Strings = ()
      ExplicitLeft = 324
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 324
    Width = 438
    ExplicitTop = 293
    ExplicitWidth = 440
  end
  inherited tabEditorData: TTabSet
    Top = 254
    Width = 438
    ExplicitTop = 223
    ExplicitWidth = 440
  end
  inherited dsSubject: TDataSource
    DataSet = cdsInterest
    Left = 344
    Top = 64
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsInterest: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'INTERESTCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMaster_qryInterest'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = True
    Left = 336
    Top = 160
    object cdsInterestINTERESTCODE: TStringField
      FieldName = 'INTERESTCODE'
      Required = True
      Size = 10
    end
    object cdsInterestCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsInterestINTERESTDESC: TStringField
      FieldName = 'INTERESTDESC'
      Size = 50
    end
    object cdsInterestCALCMETHOD: TStringField
      FieldName = 'CALCMETHOD'
      Size = 1
    end
    object cdsInterestINTERESTRATE: TFloatField
      FieldName = 'INTERESTRATE'
    end
    object cdsInterestINTERESTTABLE: TStringField
      FieldName = 'INTERESTTABLE'
      Size = 10
    end
    object cdsInterestCALCBASIS: TStringField
      FieldName = 'CALCBASIS'
      Size = 1
    end
    object cdsInterestINTERESTDAY: TIntegerField
      FieldName = 'INTERESTDAY'
    end
    object cdsInterestISACCRUE: TSmallintField
      FieldName = 'ISACCRUE'
    end
    object cdsInterestMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsInterestMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsInterestAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsInterestAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsInterestISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsInterestID: TLargeintField
      FieldName = 'ID'
    end
    object cdsInterestUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsInterestUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsInterestNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsInterestPENALTYRATE: TFloatField
      FieldName = 'PENALTYRATE'
      DisplayFormat = '#,##0.00%;(#,##0.00)%;0.00%'
    end
    object cdsInterestPENALTYDAY: TIntegerField
      FieldName = 'PENALTYDAY'
      DisplayFormat = '#'
    end
    object cdsInterestPENALTYCALC_DAY: TIntegerField
      FieldName = 'PENALTYCALC_DAY'
      DisplayFormat = '#'
    end
  end
end

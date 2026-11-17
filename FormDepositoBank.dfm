inherited frmDepositoBank: TfrmDepositoBank
  Caption = 'Deposito Bank'
  ClientHeight = 187
  ClientWidth = 516
  ExplicitWidth = 532
  ExplicitHeight = 226
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 516
    Height = 97
    object cxDBLookupComboBox1: TcxDBLookupComboBox [0]
      Left = 68
      Top = 10
      DataBinding.DataField = 'BNCODE'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'BNCODE'
      Properties.ListColumns = <
        item
          FieldName = 'BNCODE'
        end
        item
          FieldName = 'BNNAME'
        end>
      Properties.ListSource = dmLookup.dsLuBank
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 102
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [1]
      Left = 185
      Top = 10
      AutoSize = False
      DataBinding.DataField = 'BNCODE'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'BNCODE'
      Properties.ListColumns = <
        item
          FieldName = 'BNCODE'
        end
        item
          FieldName = 'BNNAME'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuBank
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Height = 21
      Width = 314
    end
    object cxDBTextEdit1: TcxDBTextEdit [2]
      Left = 68
      Top = 37
      DataBinding.DataField = 'DESCRIPTION'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 431
    end
    object cxDBTextEdit2: TcxDBTextEdit [3]
      Left = 68
      Top = 64
      DataBinding.DataField = 'COACODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 100
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [4]
      Left = 243
      Top = 64
      RepositoryItem = dmGlobal.edCurrency
      AutoSize = False
      DataBinding.DataField = 'MAX_LPS'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Height = 21
      Width = 256
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Bank Code'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = '-'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 314
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Description'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'COA Code'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Maximum LPS'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 118
    Width = 516
    inherited dbNavLog: TDBNavigator
      Left = 402
      Hints.Strings = ()
      ExplicitLeft = 402
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 167
    Width = 516
  end
  inherited tabEditorData: TTabSet
    Top = 97
    Width = 516
  end
  inherited dsSubject: TDataSource
    DataSet = cdsSubject
    Left = 432
    Top = 56
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 448
    Top = 224
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsSubject: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'BNCODE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMKBD_qryDepositoBank'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsSubjectBeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 432
    Top = 8
    object cdsSubjectBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 10
    end
    object cdsSubjectBNNAME: TStringField
      FieldName = 'BNNAME'
      ReadOnly = True
      Size = 50
    end
    object cdsSubjectDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object cdsSubjectCOACODE: TStringField
      FieldName = 'COACODE'
    end
    object cdsSubjectMAX_LPS: TFloatField
      FieldName = 'MAX_LPS'
    end
    object cdsSubjectMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsSubjectMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
  end
end

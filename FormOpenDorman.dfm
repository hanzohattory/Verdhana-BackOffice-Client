inherited frmOpenDorman: TfrmOpenDorman
  Caption = 'Open Dorman'
  ClientHeight = 318
  ClientWidth = 516
  ExplicitWidth = 522
  ExplicitHeight = 347
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 516
    Height = 228
    ExplicitWidth = 516
    ExplicitHeight = 228
    object cxDBLookupComboBox1: TcxDBLookupComboBox [0]
      Left = 88
      Top = 10
      DataBinding.DataField = 'ACCID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCID'
      Properties.ListColumns = <
        item
          Width = 80
          FieldName = 'ACCCODE'
        end
        item
          Width = 200
          FieldName = 'ACCNAME'
        end
        item
          Width = 50
          FieldName = 'LASTTR_DATE'
        end
        item
          Width = 100
          FieldName = 'AccountType'
        end
        item
          FieldName = 'CustomerType'
        end>
      Properties.ListSource = dmLookup.dsLuAccDorman
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      OnExit = cxDBLookupComboBox1Exit
      Width = 105
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [1]
      Left = 199
      Top = 10
      TabStop = False
      DataBinding.DataField = 'ACCID'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ACCID'
      Properties.ListColumns = <
        item
          FieldName = 'ACCCODE'
        end
        item
          FieldName = 'ACCNAME'
        end
        item
          FieldName = 'LASTTR_DATE'
        end
        item
          FieldName = 'DORMANDAY'
        end
        item
          FieldName = 'AccountType'
        end
        item
          FieldName = 'CustomerType'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuAccDorman
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      OnExit = cxDBLookupComboBox1Exit
      Width = 306
    end
    object txtSIDNo: TcxTextEdit [2]
      Left = 88
      Top = 37
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 207
    end
    object txtProdDesc: TcxTextEdit [3]
      Left = 88
      Top = 64
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 207
    end
    object txtCustType: TcxTextEdit [4]
      Left = 88
      Top = 91
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 207
    end
    object cxDBMemo1: TcxDBMemo [5]
      Left = 88
      Top = 145
      DataBinding.DataField = 'REMARK'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Height = 69
      Width = 309
    end
    object txtDormanDesc: TcxTextEdit [6]
      Left = 88
      Top = 118
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 207
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account Code'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 306
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'SID No.'
      Control = txtSIDNo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 207
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Product Desc'
      Control = txtProdDesc
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 207
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Customer Type'
      Control = txtCustType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 207
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Remark'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 69
      ControlOptions.OriginalWidth = 309
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Dorman Desc'
      Control = txtDormanDesc
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 207
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 249
    Width = 516
    ExplicitTop = 249
    ExplicitWidth = 516
    inherited dbNavLog: TDBNavigator
      Left = 402
      Hints.Strings = ()
      ExplicitLeft = 402
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 298
    Width = 516
    ExplicitTop = 298
    ExplicitWidth = 516
  end
  inherited tabEditorData: TTabSet
    Top = 228
    Width = 516
    ExplicitTop = 228
    ExplicitWidth = 516
  end
  inherited dsSubject: TDataSource
    DataSet = frmOpenDormanList.cdsOpenDorman
    Left = 399
    Top = 232
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsUpdateAccountDorman: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'TransDate'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'AccID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmClientManagement_qryUpdateAccountDorman'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 369
    Top = 66
  end
end

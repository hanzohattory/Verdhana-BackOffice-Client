inherited frmExchangeRate: TfrmExchangeRate
  Caption = 'Exchange Rate'
  ClientHeight = 164
  ClientWidth = 350
  ExplicitWidth = 356
  ExplicitHeight = 193
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 350
    Height = 74
    ExplicitWidth = 392
    ExplicitHeight = 141
    object cbCurrencyFrom: TcxDBLookupComboBox [0]
      Left = 87
      Top = 37
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCY_CODE_FROM'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 80
    end
    object cxDBDateEdit1: TcxDBDateEdit [1]
      Left = 87
      Top = 10
      DataBinding.DataField = 'EFFECTIVE_DATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 120
    end
    object edRate: TcxDBTextEdit [2]
      Left = 201
      Top = 37
      DataBinding.DataField = 'CONVERSION_VALUE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 136
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency Code'
      Control = cbCurrencyFrom
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Effective Date'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Rate'
      Control = edRate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 136
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 95
    Width = 350
    ExplicitTop = 162
    ExplicitWidth = 392
    inherited dbNavLog: TDBNavigator
      Left = 236
      Hints.Strings = ()
      ExplicitLeft = 236
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 144
    Width = 350
    ExplicitTop = 211
    ExplicitWidth = 392
  end
  inherited tabEditorData: TTabSet
    Top = 74
    Width = 350
    ExplicitTop = 141
    ExplicitWidth = 392
  end
  inherited dsSubject: TDataSource
    DataSet = frmExchangeRates.cdsExchangeRate
    Left = 296
    Top = 8
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 248
    Top = 8
  end
end

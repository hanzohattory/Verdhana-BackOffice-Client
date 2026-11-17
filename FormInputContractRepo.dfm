inherited frmInputContractRepo: TfrmInputContractRepo
  Caption = 'Input Contract Reverse To REPO'
  ClientHeight = 482
  ClientWidth = 862
  ExplicitWidth = 868
  ExplicitHeight = 511
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 862
    Height = 214
    Align = alTop
    ExplicitWidth = 862
    ExplicitHeight = 214
    object cxDBDateEdit1: TcxDBDateEdit [0]
      Left = 83
      Top = 10
      TabStop = False
      DataBinding.DataField = 'CON_DATE'
      DataBinding.DataSource = dsSubject
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 89
    end
    object cxDBTextEdit1: TcxDBTextEdit [1]
      Left = 83
      Top = 37
      TabStop = False
      DataBinding.DataField = 'CONTRACT_NO'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 134
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox [2]
      Left = 83
      Top = 64
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
          Width = 250
          FieldName = 'ACCNAME'
        end
        item
          Caption = 'Product Code'
          FieldName = 'PRDCODE'
        end>
      Properties.ListSource = dmLookup.dsLuAccount
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      OnExit = cxDBLookupComboBox1Exit
      Width = 119
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox [3]
      Left = 208
      Top = 64
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
          Width = 250
          FieldName = 'ACCNAME'
        end
        item
          Caption = 'Product Code'
          FieldName = 'PRDCODE'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = dmLookup.dsLuAccount
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      OnExit = cxDBLookupComboBox2Exit
      Width = 273
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [4]
      Left = 83
      Top = 91
      DataBinding.DataField = 'LOAN_AMT'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 167
    end
    object txtSumLoanAmount: TcxCurrencyEdit [5]
      Left = 256
      Top = 91
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0;(#,##0);0'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 180
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox [6]
      Left = 583
      Top = 28
      RepositoryItem = dmGlobal.luInterest
      DataBinding.DataField = 'INTERESTCODE'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      OnExit = cxDBLookupComboBox3Exit
      Width = 105
    end
    object cxDBTextEdit2: TcxDBTextEdit [7]
      Left = 583
      Top = 55
      DataBinding.DataField = 'INTERESTDESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 255
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox [8]
      Left = 743
      Top = 28
      RepositoryItem = dmGlobal.luCurrency
      DataBinding.DataField = 'CCY'
      DataBinding.DataSource = dsSubject
      Properties.DropDownAutoSize = True
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 95
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit [9]
      Left = 583
      Top = 82
      DataBinding.DataField = 'INTERESTRATE'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0;(#,##0)'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 105
    end
    object cxDBRadioGroup2: TcxDBRadioGroup [10]
      Left = 583
      Top = 109
      DataBinding.DataField = 'CALCBASIS'
      DataBinding.DataSource = dsSubject
      Properties.Columns = 2
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
      TabOrder = 12
      Height = 35
      Width = 162
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit [11]
      Left = 583
      Top = 150
      DataBinding.DataField = 'INTERESTDAY'
      DataBinding.DataSource = dsSubject
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 105
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit [12]
      Left = 83
      Top = 118
      DataBinding.DataField = 'TOPUP'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 119
    end
    object cxDBDateEdit2: TcxDBDateEdit [13]
      Left = 83
      Top = 145
      DataBinding.DataField = 'DUE_DATE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 89
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Contract Date'
      Parent = dxLayoutControl1Group4
      Control = cxDBDateEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Contract No.'
      Parent = dxLayoutControl1Group4
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Account Code'
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'cxDBLookupComboBox2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = cxDBLookupComboBox2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Loan Amount'
      Parent = dxLayoutControl1Group2
      Control = cxDBCurrencyEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'cxCurrencyEdit1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group2
      Control = txtSumLoanAmount
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Interest'
      Parent = dxLayoutControl1Group7
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group7
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Interest Code'
      Parent = dxLayoutControl1Group5
      Control = cxDBLookupComboBox3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Currency'
      Parent = dxLayoutControl1Group5
      Control = cxDBLookupComboBox4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Interest Rate'
      Parent = dxLayoutControl1Group3
      Control = cxDBCurrencyEdit2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Calculation Basis'
      Parent = dxLayoutControl1Group3
      Control = cxDBRadioGroup2
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Interest Days'
      Parent = dxLayoutControl1Group3
      Control = cxDBCurrencyEdit3
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Top Up'
      Parent = dxLayoutControl1Group4
      Control = cxDBCurrencyEdit4
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Due Date'
      Parent = dxLayoutControl1Group4
      Control = cxDBDateEdit2
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 413
    Width = 862
    ExplicitTop = 413
    ExplicitWidth = 862
    inherited dbNavLog: TDBNavigator
      Left = 748
      Hints.Strings = ()
      ExplicitLeft = 748
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
    Top = 462
    Width = 862
    ExplicitTop = 462
    ExplicitWidth = 862
  end
  inherited tabEditorData: TTabSet
    Top = 392
    Width = 862
    ExplicitTop = 392
    ExplicitWidth = 862
  end
  object cxGrid1: TcxGrid [4]
    Left = 0
    Top = 214
    Width = 862
    Height = 178
    Align = alClient
    TabOrder = 4
    ExplicitTop = 199
    ExplicitHeight = 193
    object gvwContractRepoD: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      OnCellClick = gvwContractRepoDCellClick
      DataController.DataSource = dsContractRepoDetail
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0'
          Kind = skSum
          FieldName = 'SHARES'
          Column = gvwContractRepoDSHARES
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'ASSETS PLEDGED'
          HeaderAlignmentHorz = taLeftJustify
        end>
      object gvwContractRepoDCONRID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONRID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwContractRepoDSEQNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SEQNO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwContractRepoDSTOCKID: TcxGridDBBandedColumn
        Caption = 'Stock Code'
        DataBinding.FieldName = 'STOCKID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ListColumns = <>
        RepositoryItem = dmGlobal.luInstrumentAll
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwContractRepoDSTOCKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STOCKCODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwContractRepoDSTOCKNAME: TcxGridDBBandedColumn
        Caption = 'Stock Name'
        DataBinding.FieldName = 'STOCKNAME'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwContractRepoDSHARES: TcxGridDBBandedColumn
        Caption = 'Quantity'
        DataBinding.FieldName = 'SHARES'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.EditFormat = '#'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwContractRepoDTODAY_VAL: TcxGridDBBandedColumn
        Caption = 'Cost Price'
        DataBinding.FieldName = 'TODAY_VAL'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.EditFormat = '#'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwContractRepoDINSERT_DATE: TcxGridDBBandedColumn
        Caption = 'Insert Date'
        DataBinding.FieldName = 'INSERT_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DisplayFormat = 'dd mmm yyyy'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwContractRepoDMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwContractRepoDMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwContractRepoDAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwContractRepoDAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwContractRepoDUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwContractRepoDUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwContractRepoDNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwContractRepoDISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwContractRepoDID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
    end
    object glvvwContractRepoDetail: TcxGridLevel
      GridView = gvwContractRepoD
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmContractRepo.cdsContractRepo
    Left = 456
    Top = 319
  end
  object dsContractRepoDetail: TDataSource
    DataSet = frmContractRepo.cdsContractRepoD
    Left = 363
    Top = 318
  end
end

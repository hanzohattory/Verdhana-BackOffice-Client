inherited frmReportDef: TfrmReportDef
  Caption = 'Report Definition'
  ClientHeight = 571
  ExplicitWidth = 535
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Height = 481
    ExplicitHeight = 481
    object cxDBLookupComboBox1: TcxDBLookupComboBox [0]
      Left = 75
      Top = 10
      RepositoryItem = dmGlobal.luRptTypeAll
      DataBinding.DataField = 'RPTTYPE'
      DataBinding.DataSource = dsSubject
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 145
    end
    object cxDBImageComboBox1: TcxDBImageComboBox [1]
      Left = 75
      Top = 37
      DataBinding.DataField = 'DATATYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'F'
          ImageIndex = 0
          Value = 'F'
        end
        item
          Description = 'G'
          Value = 'G'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 80
    end
    object cxDBImageComboBox2: TcxDBImageComboBox [2]
      Left = 216
      Top = 37
      DataBinding.DataField = 'VALTYPE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'A'
          ImageIndex = 0
          Value = 'A'
        end
        item
          Description = 'D'
          Value = 'D'
        end
        item
          Description = 'N'
          Value = 'N'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 100
    end
    object cxDBImageComboBox3: TcxDBImageComboBox [3]
      Left = 394
      Top = 37
      DataBinding.DataField = 'FORMULAMODE'
      DataBinding.DataSource = dsSubject
      Properties.Items = <
        item
          Description = 'D'
          ImageIndex = 0
          Value = 'D'
        end
        item
          Description = 'T'
          Value = 'T'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 100
    end
    object cxDBTextEdit1: TcxDBTextEdit [4]
      Left = 75
      Top = 64
      DataBinding.DataField = 'ROWNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 60
    end
    object cxDBTextEdit2: TcxDBTextEdit [5]
      Left = 206
      Top = 64
      DataBinding.DataField = 'ROWTEXT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit [6]
      Left = 75
      Top = 91
      DataBinding.DataField = 'COLNO'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 60
    end
    object cxDBTextEdit4: TcxDBTextEdit [7]
      Left = 206
      Top = 91
      DataBinding.DataField = 'COLTEXT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit [8]
      Left = 10
      Top = 136
      DataBinding.DataField = 'TEXTITEM'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object cxDBCheckBox1: TcxDBCheckBox [9]
      Left = 22
      Top = 181
      Caption = 'Use Formula'
      DataBinding.DataField = 'USEFORML'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object cxDBCheckBox2: TcxDBCheckBox [10]
      Left = 22
      Top = 208
      Caption = 'Upload'
      DataBinding.DataField = 'DATAUPLD'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 121
    end
    object cxDBCheckBox3: TcxDBCheckBox [11]
      Left = 149
      Top = 181
      Caption = 'Use No. Detail'
      DataBinding.DataField = 'USE_NODTL'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 121
    end
    object cxDBCheckBox4: TcxDBCheckBox [12]
      Left = 149
      Top = 208
      Caption = 'Show Report Only'
      DataBinding.DataField = 'ONLYSHOWRPT'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 121
    end
    object cxDBCheckBox5: TcxDBCheckBox [13]
      Left = 276
      Top = 181
      Caption = 'Report Type Key Column'
      DataBinding.DataField = 'KEYRPTTYPECOL'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object cxDBCheckBox6: TcxDBCheckBox [14]
      Left = 276
      Top = 208
      Caption = 'Row Key Column'
      DataBinding.DataField = 'KEYROWCOL'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 121
    end
    object cxDBTextEdit6: TcxDBTextEdit [15]
      Left = 22
      Top = 283
      DataBinding.DataField = 'STRRPTHDR'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 80
    end
    object cxDBTextEdit7: TcxDBTextEdit [16]
      Left = 108
      Top = 283
      DataBinding.DataField = 'STRRPTHVAL'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 100
    end
    object cxDBTextEdit8: TcxDBTextEdit [17]
      Left = 214
      Top = 283
      DataBinding.DataField = 'STRHVALCOL'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 50
    end
    object cxDBTextEdit9: TcxDBTextEdit [18]
      Left = 294
      Top = 283
      DataBinding.DataField = 'HDR_VAL_UPLD'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 100
    end
    object cxDBTextEdit10: TcxDBTextEdit [19]
      Left = 400
      Top = 283
      DataBinding.DataField = 'HDR_COL_UPLD'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 50
    end
    object grdDetail: TcxGrid [20]
      Left = 10
      Top = 340
      Width = 440
      Height = 171
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 20
      object gvwDetail: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = dsDetail
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Appending = True
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.BandHeaders = False
        Styles.ContentOdd = dmGlobal.BlueToggle
        Bands = <
          item
            Caption = 'Formula'
            HeaderAlignmentHorz = taLeftJustify
          end>
        object gvwDetailRPTTYPE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RPTTYPE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwDetailROWNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ROWNO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwDetailCOLNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'COLNO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwDetailLNNUM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LNNUM'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwDetailROW_FORMULA: TcxGridDBBandedColumn
          Caption = 'Formula In Row'
          DataBinding.FieldName = 'ROW_FORMULA'
          Width = 81
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwDetailITEM: TcxGridDBBandedColumn
          Caption = 'Link Item'
          DataBinding.FieldName = 'ITEM'
          Width = 49
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwDetailCATEGORY: TcxGridDBBandedColumn
          Caption = 'Category'
          DataBinding.FieldName = 'CATEGORY'
          Width = 51
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwDetailUSE_COL_FORM: TcxGridDBBandedColumn
          Caption = 'Use Col. Formula'
          DataBinding.FieldName = 'USE_COL_FORM'
          Width = 87
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwDetailCOL_FORM: TcxGridDBBandedColumn
          Caption = 'Formula In Col.'
          DataBinding.FieldName = 'COL_FORM'
          Width = 79
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwDetailCOL_FORM_VAL: TcxGridDBBandedColumn
          Caption = 'Formula In Col. Value'
          DataBinding.FieldName = 'COL_FORM_VAL'
          Width = 108
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwDetailUSE_CONTRA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'USE_CONTRA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwDetailCONTRA_VAL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONTRA_VAL'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwDetailCONTRA_ITEM_FROM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONTRA_ITEM_FROM'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object gvwDetailCONTRA_ITEM_TO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONTRA_ITEM_TO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object gvwDetailCONTRA_CAT_FROM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONTRA_CAT_FROM'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object gvwDetailCONTRA_CAT_TO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CONTRA_CAT_TO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object gvwDetailCONTRA_SIDE: TcxGridDBBandedColumn
          Caption = 'Contra Side'
          DataBinding.FieldName = 'CONTRA_SIDE'
          Width = 62
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object gvwDetailMODDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object gvwDetailMODUI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODUI'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object gvwDetailAPPDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object gvwDetailAPPUI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPUI'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object gvwDetailUNDER4Y: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNDER4Y'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object gvwDetailUNDER4YDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNDER4YDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object gvwDetailNOTES4Y: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOTES4Y'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object gvwDetailISDEL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ISDEL'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object gvwDetailID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
      end
      object grdDetailLevel1: TcxGridLevel
        GridView = gvwDetail
      end
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Report Type'
      Parent = dxLayoutGroup1
      Control = cxDBLookupComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Data Mode'
      Parent = dxLayoutControl1Group1
      Control = cxDBImageComboBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Data Type'
      Parent = dxLayoutControl1Group1
      Control = cxDBImageComboBox2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'Formula Mode'
      Parent = dxLayoutControl1Group1
      Control = cxDBImageComboBox3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Row No.'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'Row Text'
      Parent = dxLayoutControl1Group2
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'Column No.'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.Text = 'Column Text'
      Parent = dxLayoutControl1Group3
      Control = cxDBTextEdit4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'Item Description'
      CaptionOptions.Layout = clTop
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit5
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group4
      Control = cxDBCheckBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group7
      Control = cxDBCheckBox2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox3'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group4
      Control = cxDBCheckBox3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox4'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group7
      Control = cxDBCheckBox4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox5'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group4
      Control = cxDBCheckBox5
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox6'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group7
      Control = cxDBCheckBox6
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Check'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Index = 5
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group6
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Parent = dxLayoutControl1Group6
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      CaptionOptions.Text = 'Code'
      CaptionOptions.Layout = clTop
      Parent = dxLayoutControl1Group5
      Control = cxDBTextEdit6
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      CaptionOptions.Text = 'Value'
      CaptionOptions.Layout = clTop
      Parent = dxLayoutControl1Group5
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      CaptionOptions.Text = 'Column'
      CaptionOptions.Layout = clTop
      Parent = dxLayoutControl1Group5
      Control = cxDBTextEdit8
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'For Header Report'
      Parent = dxLayoutControl1Group9
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      CaptionOptions.Text = 'Value'
      CaptionOptions.Layout = clTop
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit9
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      CaptionOptions.Text = 'Column'
      CaptionOptions.Layout = clTop
      Parent = dxLayoutControl1Group8
      Control = cxDBTextEdit10
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'For Header Report to Upload'
      Parent = dxLayoutControl1Group9
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Formula'
      CaptionOptions.Layout = clTop
      Parent = dxLayoutGroup1
      Control = grdDetail
      ControlOptions.ShowBorder = False
      Index = 7
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 502
    ExplicitTop = 502
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
    Top = 551
    ExplicitTop = 551
  end
  inherited tabEditorData: TTabSet
    Top = 481
    ExplicitTop = 481
  end
  inherited dsSubject: TDataSource
    DataSet = cdsRptDef
  end
  object cdsRptDef: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'RPTTYPE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ROWNO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COLNO'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMKBD_qryRptDef'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 24
    Top = 64
    object cdsRptDefRPTTYPE: TStringField
      FieldName = 'RPTTYPE'
      Required = True
      Size = 10
    end
    object cdsRptDefROWNO: TIntegerField
      FieldName = 'ROWNO'
      Required = True
    end
    object cdsRptDefCOLNO: TIntegerField
      FieldName = 'COLNO'
      Required = True
    end
    object cdsRptDefDATATYPE: TStringField
      FieldName = 'DATATYPE'
      Required = True
      Size = 1
    end
    object cdsRptDefROWTEXT: TStringField
      FieldName = 'ROWTEXT'
      Required = True
      Size = 10
    end
    object cdsRptDefCOLTEXT: TStringField
      FieldName = 'COLTEXT'
      Size = 10
    end
    object cdsRptDefUSEFORML: TBooleanField
      FieldName = 'USEFORML'
    end
    object cdsRptDefVALTYPE: TStringField
      FieldName = 'VALTYPE'
      Size = 1
    end
    object cdsRptDefFORMULAMODE: TStringField
      FieldName = 'FORMULAMODE'
      Size = 1
    end
    object cdsRptDefTEXTITEM: TStringField
      FieldName = 'TEXTITEM'
      Size = 1000
    end
    object cdsRptDefDATAUPLD: TBooleanField
      FieldName = 'DATAUPLD'
    end
    object cdsRptDefUSE_NODTL: TBooleanField
      FieldName = 'USE_NODTL'
    end
    object cdsRptDefONLYSHOWRPT: TBooleanField
      FieldName = 'ONLYSHOWRPT'
    end
    object cdsRptDefKEYRPTTYPECOL: TBooleanField
      FieldName = 'KEYRPTTYPECOL'
    end
    object cdsRptDefKEYROWCOL: TBooleanField
      FieldName = 'KEYROWCOL'
    end
    object cdsRptDefSET_DATAFORMAT: TBooleanField
      FieldName = 'SET_DATAFORMAT'
    end
    object cdsRptDefDATAFORMATKEY: TStringField
      FieldName = 'DATAFORMATKEY'
      Size = 50
    end
    object cdsRptDefDATAFORMATVAL: TStringField
      FieldName = 'DATAFORMATVAL'
      Size = 100
    end
    object cdsRptDefSTRRPTHDR: TStringField
      FieldName = 'STRRPTHDR'
      Size = 5
    end
    object cdsRptDefSTRRPTHVAL: TStringField
      FieldName = 'STRRPTHVAL'
      Size = 1000
    end
    object cdsRptDefSTRHVALCOL: TIntegerField
      FieldName = 'STRHVALCOL'
    end
    object cdsRptDefHDR_VAL_UPLD: TStringField
      FieldName = 'HDR_VAL_UPLD'
      Size = 100
    end
    object cdsRptDefHDR_COL_UPLD: TIntegerField
      FieldName = 'HDR_COL_UPLD'
    end
    object cdsRptDefCAN_EDIT: TStringField
      FieldName = 'CAN_EDIT'
      Size = 1
    end
    object cdsRptDefMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsRptDefMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsRptDefAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsRptDefAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsRptDefUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsRptDefUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsRptDefNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsRptDefISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsRptDefID: TLargeintField
      FieldName = 'ID'
    end
    object cdsRptDefqryRptDefDtl: TDataSetField
      FieldName = 'qryRptDefDtl'
    end
  end
  object cdsRptDefDtl: TNClientDataset
    Aggregates = <>
    DataSetField = cdsRptDefqryRptDefDtl
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 24
    Top = 112
    object cdsRptDefDtlRPTTYPE: TStringField
      FieldName = 'RPTTYPE'
      Required = True
      Size = 10
    end
    object cdsRptDefDtlROWNO: TIntegerField
      FieldName = 'ROWNO'
      Required = True
    end
    object cdsRptDefDtlCOLNO: TIntegerField
      FieldName = 'COLNO'
      Required = True
    end
    object cdsRptDefDtlLNNUM: TLargeintField
      FieldName = 'LNNUM'
      Required = True
    end
    object cdsRptDefDtlROW_FORMULA: TStringField
      FieldName = 'ROW_FORMULA'
      Size = 1
    end
    object cdsRptDefDtlITEM: TStringField
      FieldName = 'ITEM'
      Size = 1000
    end
    object cdsRptDefDtlCATEGORY: TStringField
      FieldName = 'CATEGORY'
      Size = 30
    end
    object cdsRptDefDtlUSE_COL_FORM: TBooleanField
      FieldName = 'USE_COL_FORM'
    end
    object cdsRptDefDtlCOL_FORM: TStringField
      FieldName = 'COL_FORM'
      Size = 1
    end
    object cdsRptDefDtlCOL_FORM_VAL: TFloatField
      FieldName = 'COL_FORM_VAL'
    end
    object cdsRptDefDtlUSE_CONTRA: TBooleanField
      FieldName = 'USE_CONTRA'
    end
    object cdsRptDefDtlCONTRA_VAL: TStringField
      FieldName = 'CONTRA_VAL'
      Size = 1
    end
    object cdsRptDefDtlCONTRA_ITEM_FROM: TStringField
      FieldName = 'CONTRA_ITEM_FROM'
      Size = 10
    end
    object cdsRptDefDtlCONTRA_ITEM_TO: TStringField
      FieldName = 'CONTRA_ITEM_TO'
      Size = 10
    end
    object cdsRptDefDtlCONTRA_CAT_FROM: TStringField
      FieldName = 'CONTRA_CAT_FROM'
      Size = 30
    end
    object cdsRptDefDtlCONTRA_CAT_TO: TStringField
      FieldName = 'CONTRA_CAT_TO'
      Size = 30
    end
    object cdsRptDefDtlCONTRA_SIDE: TStringField
      FieldName = 'CONTRA_SIDE'
      Size = 1
    end
    object cdsRptDefDtlMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsRptDefDtlMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsRptDefDtlAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsRptDefDtlAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsRptDefDtlUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsRptDefDtlUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsRptDefDtlNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsRptDefDtlISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsRptDefDtlID: TLargeintField
      FieldName = 'ID'
    end
  end
  object dsDetail: TDataSource
    DataSet = cdsRptDefDtl
    Left = 88
    Top = 16
  end
end

object frmAMLSetting: TfrmAMLSetting
  Left = 0
  Top = 0
  Caption = 'AML Condition Parameter'
  ClientHeight = 463
  ClientWidth = 799
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 13
  object Label1: TLabel
    Left = 45
    Top = 19
    Width = 182
    Height = 13
    Caption = 'Batas penghasilan terhadap net asset'
  end
  object Label2: TLabel
    Left = 43
    Top = 46
    Width = 102
    Height = 13
    Caption = ' Batas atas net asset'
  end
  object Label3: TLabel
    Left = 45
    Top = 73
    Width = 169
    Height = 13
    Caption = 'Usia customer batas atas net asset'
  end
  object Label4: TLabel
    Left = 413
    Top = 18
    Width = 235
    Height = 13
    Caption = '[ c ] Batas atas net asset berdasarkan pekerjaan'
  end
  object Label5: TLabel
    Left = 45
    Top = 101
    Width = 182
    Height = 26
    Caption = 
      'Batas atas total nilai deposit nasabah selama 5 hari berturut-tu' +
      'rut'
    WordWrap = True
  end
  object Label6: TLabel
    Left = 45
    Top = 133
    Width = 210
    Height = 26
    Caption = 
      'Batas atas transaksi beli nasabah selama satu hari terhadap rata' +
      'an nilai transaksi beli'
    WordWrap = True
  end
  object Label7: TLabel
    Left = 45
    Top = 165
    Width = 199
    Height = 39
    Caption = 
      'Batas atas transaksi beli nasabah selama satu hari terhadap stan' +
      'dar deviasi nilai transaksi beli'
    WordWrap = True
  end
  object Label8: TLabel
    Left = 45
    Top = 210
    Width = 199
    Height = 26
    Caption = 
      'Batas atas transaksi beli nasabah selama satu hari terhadap peng' +
      'hasilan'
    WordWrap = True
  end
  object Label9: TLabel
    Left = 45
    Top = 244
    Width = 218
    Height = 39
    Caption = 
      'Batas atas transaksi net beli nasabah selama satu hari terhadap ' +
      'Penghasilan dikalikan dengan batas tertentu'
    WordWrap = True
  end
  object Label10: TLabel
    Left = 45
    Top = 289
    Width = 217
    Height = 52
    Caption = 
      'Batas atas nilai net transaksi nasabah selama satu hari terhadap' +
      ' nilai rataan net ditambahan standar deviasi net dikalikan batas' +
      ' tertentu'
    WordWrap = True
  end
  object Label11: TLabel
    Left = 45
    Top = 345
    Width = 218
    Height = 39
    Caption = 
      'Nilai total transaksi nasabah selama satu hari terhadap nilai ra' +
      'taan ditambah standar deviasi dikalikan batas tertentu'
    WordWrap = True
  end
  object Label12: TLabel
    Left = 10
    Top = 18
    Width = 20
    Height = 13
    Caption = '[ a ]'
  end
  object Label13: TLabel
    Left = 10
    Top = 45
    Width = 23
    Height = 13
    Caption = '[ b1]'
  end
  object Label14: TLabel
    Left = 10
    Top = 72
    Width = 23
    Height = 13
    Caption = '[ b2]'
  end
  object Label16: TLabel
    Left = 10
    Top = 100
    Width = 20
    Height = 13
    Caption = '[ d ]'
  end
  object Label17: TLabel
    Left = 10
    Top = 132
    Width = 20
    Height = 13
    Caption = '[ e ]'
    WordWrap = True
  end
  object Label18: TLabel
    Left = 8
    Top = 164
    Width = 18
    Height = 13
    Caption = '[ f ]'
    WordWrap = True
  end
  object Label19: TLabel
    Left = 10
    Top = 209
    Width = 27
    Height = 26
    AutoSize = False
    Caption = '[ g ]'
    WordWrap = True
  end
  object Label20: TLabel
    Left = 10
    Top = 243
    Width = 27
    Height = 26
    AutoSize = False
    Caption = '[ h ]'
    WordWrap = True
  end
  object Label21: TLabel
    Left = 10
    Top = 288
    Width = 27
    Height = 26
    AutoSize = False
    Caption = '[ i ]'
    WordWrap = True
  end
  object Label22: TLabel
    Left = 10
    Top = 344
    Width = 27
    Height = 26
    AutoSize = False
    Caption = '[ j ]'
    WordWrap = True
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 413
    Width = 799
    Height = 50
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    object btnSave: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Save'
      TabOrder = 0
      OnClick = btnSaveClick
    end
    object cxButton2: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Cancel'
      TabOrder = 1
      OnClick = cxButton2Click
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnSave
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
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
  object edPenghasilanNetAsset: TcxCurrencyEdit
    Left = 269
    Top = 16
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = '#,##0 X'
    TabOrder = 1
    Width = 52
  end
  object edNetAsset: TcxCurrencyEdit
    Left = 269
    Top = 43
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = '#,##0'
    TabOrder = 2
    Width = 116
  end
  object edUsia: TcxCurrencyEdit
    Left = 269
    Top = 70
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = '#,##0 Tahun'
    TabOrder = 3
    Width = 52
  end
  object edDeposit: TcxCurrencyEdit
    Left = 269
    Top = 98
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = '#,##0'
    TabOrder = 4
    Width = 116
  end
  object edRataan: TcxCurrencyEdit
    Left = 269
    Top = 130
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = '#,##0 X'
    TabOrder = 5
    Width = 52
  end
  object edDeviasi: TcxCurrencyEdit
    Left = 269
    Top = 162
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = '#,##0 X'
    TabOrder = 6
    Width = 52
  end
  object edPenghasilan: TcxCurrencyEdit
    Left = 269
    Top = 207
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = '#,##0 X'
    TabOrder = 7
    Width = 52
  end
  object edPerkalianTertentu: TcxCurrencyEdit
    Left = 269
    Top = 234
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = '#,##0 X'
    TabOrder = 8
    Width = 52
  end
  object edRataanNetPlusDeviasi: TcxCurrencyEdit
    Left = 269
    Top = 285
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = '#,##0 X'
    TabOrder = 9
    Width = 52
  end
  object edTotalPlusDeviasi: TcxCurrencyEdit
    Left = 269
    Top = 341
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = '#,##0 X'
    TabOrder = 10
    Width = 52
  end
  object cxGrid1: TcxGrid
    Left = 413
    Top = 37
    Width = 372
    Height = 350
    TabOrder = 11
    object gvwAssetParameter: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      ScrollbarAnnotations.CustomAnnotations = <>
      OnFocusedItemChanged = gvwAssetParameterFocusedItemChanged
      DataController.DataSource = dsAssetParam
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsData.CancelOnExit = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentEven = dmGlobal.BlueToggle2
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      Bands = <
        item
        end>
      object gvwAssetParameterOCCUPATION: TcxGridDBBandedColumn
        Caption = '[ c1 ] Occupation'
        DataBinding.FieldName = 'OCCUPATION'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'OC_CODE'
        Properties.ListColumns = <
          item
            Width = 250
            FieldName = 'OC_DESC'
          end>
        Properties.ListSource = dsOccupation
        Width = 208
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwAssetParameterASSETVALUE: TcxGridDBBandedColumn
        Caption = '[ c2 ] Asset Value'
        DataBinding.FieldName = 'ASSETVALUE'
        Width = 131
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwAssetParameter
    end
  end
  object cdsAMLSetting: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAML_qryConditionParameter'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 744
    Top = 120
    object cdsAMLSettingCONDITION_A: TFloatField
      FieldName = 'CONDITION_A'
      Required = True
    end
    object cdsAMLSettingCONDITION_B1: TFloatField
      FieldName = 'CONDITION_B1'
      Required = True
    end
    object cdsAMLSettingCONDITION_B2: TFloatField
      FieldName = 'CONDITION_B2'
      Required = True
    end
    object cdsAMLSettingCONDITION_C1: TFloatField
      FieldName = 'CONDITION_C1'
      Required = True
    end
    object cdsAMLSettingCONDITION_C2: TFloatField
      FieldName = 'CONDITION_C2'
      Required = True
    end
    object cdsAMLSettingCONDITION_D: TFloatField
      FieldName = 'CONDITION_D'
      Required = True
    end
    object cdsAMLSettingCONDITION_E: TFloatField
      FieldName = 'CONDITION_E'
      Required = True
    end
    object cdsAMLSettingCONDITION_F: TFloatField
      FieldName = 'CONDITION_F'
      Required = True
    end
    object cdsAMLSettingCONDITION_G: TFloatField
      FieldName = 'CONDITION_G'
      Required = True
    end
    object cdsAMLSettingCONDITION_H: TFloatField
      FieldName = 'CONDITION_H'
      Required = True
    end
    object cdsAMLSettingCONDITION_I: TFloatField
      FieldName = 'CONDITION_I'
    end
    object cdsAMLSettingCONDITION_J: TFloatField
      FieldName = 'CONDITION_J'
    end
  end
  object cdsOccupation: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAML_qryAMLOccupation'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 368
    Top = 264
    object cdsOccupationOC_CODE: TLargeintField
      DisplayLabel = 'Occupation'
      FieldName = 'OC_CODE'
      Required = True
    end
    object cdsOccupationOCCUPATION: TStringField
      DisplayLabel = 'Occupation'
      FieldName = 'OCCUPATION'
      Size = 50
    end
    object cdsOccupationOC_DESC: TStringField
      FieldName = 'OC_DESC'
      Size = 200
    end
    object cdsOccupationMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsOccupationMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsOccupationAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsOccupationAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsOccupationUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsOccupationUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsOccupationNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsOccupationISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsOccupationID: TLargeintField
      FieldName = 'ID'
    end
    object cdsOccupationRISK: TStringField
      FieldName = 'RISK'
      Size = 1
    end
    object cdsOccupationOCCUPATION_EN: TStringField
      FieldName = 'OCCUPATION_EN'
      Size = 50
    end
    object cdsOccupationOCCUPATION_ID: TStringField
      FieldName = 'OCCUPATION_ID'
      Size = 50
    end
    object cdsOccupationMAXAMOUNT: TFloatField
      FieldName = 'MAXAMOUNT'
    end
  end
  object dsOccupation: TDataSource
    DataSet = cdsOccupation
    Left = 408
    Top = 264
  end
  object cdsAssetParam: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAML_qryAMLAssetParameter'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 488
    Top = 288
    object cdsAssetParamOCCUPATION: TStringField
      DisplayLabel = 'Occupation'
      FieldName = 'OCCUPATION'
      Required = True
      Size = 1
    end
    object cdsAssetParamASSETVALUE: TFloatField
      DisplayLabel = 'Asset Value'
      FieldName = 'ASSETVALUE'
      Required = True
      DisplayFormat = '#,##0'
      EditFormat = '#'
    end
  end
  object dsAssetParam: TDataSource
    DataSet = cdsAssetParam
    Left = 576
    Top = 288
  end
  object actPermission: TNActionPermission
    MenuBar = dmGlobal.menuBar
    Actions = <>
    AssignedPermission = <
      item
        Name = 'AML Condition Parameter'
        Description = 'AML Condition Parameter'
      end>
    Left = 360
    Top = 168
  end
end

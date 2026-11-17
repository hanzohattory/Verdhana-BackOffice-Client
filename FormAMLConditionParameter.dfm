object frmAMLConditionParameter: TfrmAMLConditionParameter
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmAMLConditionParameter'
  ClientHeight = 484
  ClientWidth = 840
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 426
    Width = 840
    Height = 58
    Align = alBottom
    BevelKind = bkTile
    TabOrder = 0
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
  end
  object cxLabel1: TcxLabel
    Left = 24
    Top = 27
    Caption = '[  a  ]'
  end
  object cxLabel2: TcxLabel
    Left = 60
    Top = 27
    AutoSize = False
    Caption = 'Batas penghasilan terhadap net asset'
    Properties.WordWrap = True
    Height = 17
    Width = 221
  end
  object cxLabel3: TcxLabel
    Left = 21
    Top = 51
    Caption = '[  b1 ]'
  end
  object cxLabel4: TcxLabel
    Left = 60
    Top = 50
    AutoSize = False
    Caption = 'Batas atas net asset'
    Properties.WordWrap = True
    Height = 17
    Width = 221
  end
  object cxLabel5: TcxLabel
    Left = 21
    Top = 78
    Caption = '[  b2 ]'
  end
  object cxLabel6: TcxLabel
    Left = 60
    Top = 78
    AutoSize = False
    Caption = 'Usia customer batas atas net asset'
    Properties.WordWrap = True
    Height = 17
    Width = 221
  end
  object cxLabel7: TcxLabel
    Left = 24
    Top = 105
    Caption = '[  d  ]'
  end
  object cxLabel8: TcxLabel
    Left = 60
    Top = 105
    AutoSize = False
    Caption = 
      'Batas atas total nilai deposit nasabah selama 5 hari berturut-tu' +
      'rut'
    Properties.WordWrap = True
    Height = 32
    Width = 221
  end
  object cxLabel9: TcxLabel
    Left = 24
    Top = 143
    Caption = '[  e  ]'
  end
  object cxLabel10: TcxLabel
    Left = 60
    Top = 143
    AutoSize = False
    Caption = 
      'Batas atas transaksi beli nasabah selama satu hari terhadap rata' +
      'an nilai transaksi beli'
    Properties.WordWrap = True
    Height = 32
    Width = 221
  end
  object cxLabel11: TcxLabel
    Left = 24
    Top = 181
    Caption = '[  f  ]'
  end
  object cxLabel12: TcxLabel
    Left = 58
    Top = 181
    AutoSize = False
    Caption = 
      'Batas atas transaksi beli nasabah selama satu hari terhadap stan' +
      'dar deviasi nilai transaksi beli'
    Properties.WordWrap = True
    Height = 32
    Width = 221
  end
  object cxLabel13: TcxLabel
    Left = 22
    Top = 219
    Caption = '[  g  ]'
  end
  object cxLabel14: TcxLabel
    Left = 60
    Top = 219
    AutoSize = False
    Caption = 
      'Batas atas transaksi beli nasabah selama satu hari terhadap peng' +
      'hasilan'
    Properties.WordWrap = True
    Height = 32
    Width = 221
  end
  object cxLabel15: TcxLabel
    Left = 22
    Top = 257
    Caption = '[  h  ]'
  end
  object cxLabel16: TcxLabel
    Left = 60
    Top = 257
    AutoSize = False
    Caption = 
      'Batas atas transaksi net beli nasabah selama satu hari terhadap ' +
      'Penghasilan dikalikan dengan batas tertentu'
    Properties.WordWrap = True
    Height = 48
    Width = 221
  end
  object cxLabel17: TcxLabel
    Left = 28
    Top = 303
    Caption = '[  i  ]'
  end
  object cxLabel18: TcxLabel
    Left = 60
    Top = 303
    AutoSize = False
    Caption = 
      'Batas atas nilai net transaksi nasabah selama satu hari terhadap' +
      ' nilai rataan net ditambahan standar deviasi net dikalikan batas' +
      ' tertentu'
    Properties.WordWrap = True
    Height = 64
    Width = 221
  end
  object cxLabel19: TcxLabel
    Left = 27
    Top = 365
    Caption = '[  j  ]'
  end
  object cxLabel20: TcxLabel
    Left = 58
    Top = 365
    AutoSize = False
    Caption = 
      'Nilai total transaksi nasabah selama satu hari terhadap nilai ra' +
      'taan ditambah standar deviasi dikalikan batas tertentu'
    Properties.WordWrap = True
    Height = 32
    Width = 221
  end
  object cxLabel22: TcxLabel
    Left = 444
    Top = 24
    AutoSize = False
    Caption = '[  c  ]  Batas atas net asset berdasarkan pekerjaan'
    Properties.WordWrap = True
    Height = 17
    Width = 221
  end
  object cxGrid1: TcxGrid
    Left = 444
    Top = 47
    Width = 372
    Height = 350
    TabOrder = 22
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
        Properties.KeyFieldNames = 'OCCUPATIONID'
        Properties.ListColumns = <
          item
            Width = 250
            FieldName = 'DESCRIPTION'
          end>
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
  object edPenghasilanNetAsset: TcxCurrencyEdit
    Left = 287
    Top = 26
    TabOrder = 23
    Width = 121
  end
  object edNetAsset: TcxCurrencyEdit
    Left = 287
    Top = 51
    TabOrder = 24
    Width = 121
  end
  object edUsia: TcxCurrencyEdit
    Left = 287
    Top = 76
    TabOrder = 25
    Width = 121
  end
  object edDeposit: TcxCurrencyEdit
    Left = 287
    Top = 101
    TabOrder = 26
    Width = 121
  end
  object edRataan: TcxCurrencyEdit
    Left = 287
    Top = 143
    TabOrder = 27
    Width = 121
  end
  object edDeviasi: TcxCurrencyEdit
    Left = 287
    Top = 180
    TabOrder = 28
    Width = 121
  end
  object edPenghasilan: TcxCurrencyEdit
    Left = 287
    Top = 219
    TabOrder = 29
    Width = 121
  end
  object edPerkalianTertentu: TcxCurrencyEdit
    Left = 287
    Top = 257
    TabOrder = 30
    Width = 121
  end
  object edRataanNetPlusDeviasi: TcxCurrencyEdit
    Left = 287
    Top = 302
    TabOrder = 31
    Width = 121
  end
  object edTotalPlusDeviasi: TcxCurrencyEdit
    Left = 287
    Top = 364
    TabOrder = 32
    Width = 121
  end
  object cdsAMLConditionParameter: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmAML_qryConditionParameter'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 704
    Top = 136
    object cdsAMLConditionParameterCONDITION_A: TFloatField
      FieldName = 'CONDITION_A'
      Required = True
    end
    object cdsAMLConditionParameterCONDITION_B1: TFloatField
      FieldName = 'CONDITION_B1'
      Required = True
    end
    object cdsAMLConditionParameterCONDITION_B2: TFloatField
      FieldName = 'CONDITION_B2'
      Required = True
    end
    object cdsAMLConditionParameterCONDITION_C1: TFloatField
      FieldName = 'CONDITION_C1'
      Required = True
    end
    object cdsAMLConditionParameterCONDITION_C2: TFloatField
      FieldName = 'CONDITION_C2'
      Required = True
    end
    object cdsAMLConditionParameterCONDITION_D: TFloatField
      FieldName = 'CONDITION_D'
      Required = True
    end
    object cdsAMLConditionParameterCONDITION_E: TFloatField
      FieldName = 'CONDITION_E'
      Required = True
    end
    object cdsAMLConditionParameterCONDITION_F: TFloatField
      FieldName = 'CONDITION_F'
      Required = True
    end
    object cdsAMLConditionParameterCONDITION_G: TFloatField
      FieldName = 'CONDITION_G'
      Required = True
    end
    object cdsAMLConditionParameterCONDITION_H: TFloatField
      FieldName = 'CONDITION_H'
      Required = True
    end
    object cdsAMLConditionParameterCONDITION_I: TFloatField
      FieldName = 'CONDITION_I'
    end
    object cdsAMLConditionParameterCONDITION_J: TFloatField
      FieldName = 'CONDITION_J'
    end
  end
end

inherited frmBankMovement: TfrmBankMovement
  Caption = 'Bank Movement'
  ClientWidth = 802
  ExplicitWidth = 802
  ExplicitHeight = 374
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 802
    Height = 76
    Align = alTop
    TabOrder = 0
    object txtBankMutation: TcxButtonEdit
      Left = 118
      Top = 37
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = txtBankMutationPropertiesButtonClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Width = 500
    end
    object txtTransDate: TcxDateEdit
      Left = 118
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 99
    end
    object cxButton2: TcxButton
      Left = 624
      Top = 37
      Width = 100
      Height = 25
      Action = actUploadData
      TabOrder = 3
    end
    object cbBank: TcxImageComboBox
      Left = 251
      Top = 10
      Properties.Items = <
        item
          Description = 'Bank Permata'
          Value = 'BNLI'
        end
        item
          Description = 'Bank CIMB Niaga'
          Value = 'BNGA'
        end
        item
          Description = 'Bank Mandiri'
          Value = 'BMRI'
        end
        item
          Description = 'BNI'
          Value = 'BBNI'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Text = 'Import Bank Mutation'
      Parent = dxLayoutControl1Group2
      Control = txtBankMutation
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Transaction Date'
      Parent = dxLayoutGroup2
      Control = txtTransDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group2
      Control = cxButton2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Bank'
      Parent = dxLayoutGroup2
      Control = cbBank
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 76
    Width = 802
    Height = 298
    Align = alClient
    PopupMenu = popDocking
    TabOrder = 1
    object gvwBankMutation: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsBankMutation
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwBankMutationMUTATIONID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MUTATIONID'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwBankMutationTRDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRDATE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwBankMutationTRDATETIME: TcxGridDBBandedColumn
        Caption = 'Transaction Time'
        DataBinding.FieldName = 'TRDATETIME'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwBankMutationSID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SID'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwBankMutationSUBREK01: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SUBREK01'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwBankMutationBNCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNCODE'
        Visible = False
        VisibleForCustomization = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwBankMutationBNACCNO: TcxGridDBBandedColumn
        Caption = 'Bank Account No.'
        DataBinding.FieldName = 'BNACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwBankMutationBNACCNAME: TcxGridDBBandedColumn
        Caption = 'Bank Account Name'
        DataBinding.FieldName = 'BNACCNAME'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwBankMutationCCY: TcxGridDBBandedColumn
        Caption = 'Currency'
        DataBinding.FieldName = 'CCY'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwBankMutationDC: TcxGridDBBandedColumn
        Caption = 'D / C'
        DataBinding.FieldName = 'DC'
        RepositoryItem = dmGlobal.luDebetCredit
        Width = 30
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwBankMutationSALDOAWAL: TcxGridDBBandedColumn
        Caption = 'Begining Balance'
        DataBinding.FieldName = 'SALDOAWAL'
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwBankMutationMUTASI: TcxGridDBBandedColumn
        Caption = 'Mutation Value'
        DataBinding.FieldName = 'MUTASI'
        Width = 77
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwBankMutationSALDOAKHIR: TcxGridDBBandedColumn
        Caption = 'Ending Balance'
        DataBinding.FieldName = 'SALDOAKHIR'
        Width = 78
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwBankMutationDESCRIPTION: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DESCRIPTION'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwBankMutation
    end
  end
  inherited popDocking: TPopupMenu
    Left = 399
    Top = 196
  end
  inherited ActionPermission: TNActionPermission
    ActionList = ActionList1
    Left = 287
    Top = 196
  end
  object ActionList1: TActionList
    Left = 288
    Top = 135
    object actUploadData: TNAction
      Category = 'NActions'
      Caption = 'Upload Data'
      OnExecute = actUploadDataExecute
      CheckPermission = False
    end
  end
  object ImportFilesDialog: TOpenDialog
    Left = 399
    Top = 126
  end
  object dsBankMutation: TDataSource
    DataSet = cdsBankMutation
    Left = 495
    Top = 237
  end
  object cdsBankMutation: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 537
    Top = 180
    object cdsBankMutationMUTATIONID: TIntegerField
      FieldName = 'MUTATIONID'
    end
    object cdsBankMutationTRDATE: TDateField
      FieldName = 'TRDATE'
      DisplayFormat = 'dd MMM yyyy'
    end
    object cdsBankMutationTRDATETIME: TDateTimeField
      FieldName = 'TRDATETIME'
      DisplayFormat = 'dd MMM yyyy hh:nn:ss'
    end
    object cdsBankMutationSID: TStringField
      FieldName = 'SID'
      Size = 30
    end
    object cdsBankMutationSUBREK01: TStringField
      FieldName = 'SUBREK01'
      Size = 30
    end
    object cdsBankMutationBNCODE: TStringField
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsBankMutationBNACCNO: TStringField
      FieldName = 'BNACCNO'
      Size = 30
    end
    object cdsBankMutationBNACCNAME: TStringField
      FieldName = 'BNACCNAME'
      Size = 60
    end
    object cdsBankMutationCCY: TStringField
      FieldName = 'CCY'
      Size = 5
    end
    object cdsBankMutationDC: TStringField
      FieldName = 'DC'
      Size = 1
    end
    object cdsBankMutationSALDOAWAL: TFloatField
      FieldName = 'SALDOAWAL'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsBankMutationMUTASI: TFloatField
      FieldName = 'MUTASI'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsBankMutationSALDOAKHIR: TFloatField
      FieldName = 'SALDOAKHIR'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsBankMutationDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 150
    end
  end
end

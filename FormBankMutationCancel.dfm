object frmBankMutationCancel: TfrmBankMutationCancel
  Left = 0
  Top = 0
  Caption = 'Bank Mutation By Account'
  ClientHeight = 376
  ClientWidth = 801
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 801
    Height = 43
    Align = alTop
    TabOrder = 0
    object txtAccCode: TcxTextEdit
      Left = 82
      Top = 10
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object txtAccName: TcxTextEdit
      Left = 209
      Top = 10
      ParentColor = True
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 293
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Account Code'
      Control = txtAccCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'cxTextEdit2'
      CaptionOptions.Visible = False
      Control = txtAccName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 293
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 43
    Width = 801
    Height = 333
    Align = alClient
    PopupMenu = PopupMenu1
    TabOrder = 1
    object gvwBankMutationCancel: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsBankMutationCancel
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwBankMutationCancelTRTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRTYPE'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Deposit'
            ImageIndex = 0
            Value = 'D'
          end
          item
            Description = 'Withdraw'
            Value = 'W'
          end>
        Width = 74
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwBankMutationCancelACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwBankMutationCancelENTRYDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTRYDATE'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwBankMutationCancelTRDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRDATE'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwBankMutationCancelREFID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REFID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwBankMutationCancelREFNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REFNO'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwBankMutationCancelRECON_DESC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RECON_DESC'
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwBankMutationCancelCCY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCY'
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwBankMutationCancelAMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AMOUNT'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwBankMutationCancel
    end
  end
  object cdsBankMutationCancel: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'REKONDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmCashManagement_qryAccountMutation'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 291
    Top = 156
    object cdsBankMutationCancelTRTYPE: TStringField
      DisplayLabel = 'Transfer Type'
      FieldName = 'TRTYPE'
      Size = 1
    end
    object cdsBankMutationCancelACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsBankMutationCancelENTRYDATE: TDateField
      DisplayLabel = 'Entry Date'
      FieldName = 'ENTRYDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsBankMutationCancelTRDATE: TDateField
      DisplayLabel = 'Trade Date'
      FieldName = 'TRDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsBankMutationCancelREFID: TLargeintField
      FieldName = 'REFID'
    end
    object cdsBankMutationCancelREFNO: TStringField
      DisplayLabel = 'Refferense No'
      FieldName = 'REFNO'
    end
    object cdsBankMutationCancelRECON_DESC: TStringField
      DisplayLabel = 'Description'
      FieldName = 'RECON_DESC'
      Size = 150
    end
    object cdsBankMutationCancelCCY: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCY'
      Size = 5
    end
    object cdsBankMutationCancelAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object dsBankMutationCancel: TDataSource
    DataSet = cdsBankMutationCancel
    Left = 291
    Top = 201
  end
  object PopupMenu1: TPopupMenu
    Left = 291
    Top = 246
    object CancelMutation1: TMenuItem
      Caption = 'Cancel Mutation'
      OnClick = CancelMutation1Click
    end
  end
end

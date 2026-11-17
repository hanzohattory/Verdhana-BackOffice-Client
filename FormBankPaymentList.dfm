inherited frmBankPaymentList: TfrmBankPaymentList
  Caption = 'Bank Payment List'
  ClientHeight = 538
  ClientWidth = 1003
  ExplicitWidth = 1003
  ExplicitHeight = 538
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 70
    Width = 1003
    Height = 468
    ExplicitTop = 70
    ExplicitWidth = 1003
    ExplicitHeight = 468
    inherited gvwMaster: TcxGridDBBandedTableView
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skCount
          FieldName = 'BROKER_BANKINFO'
          Column = gvwMasterBROKER_BANKINFO
          DisplayText = 'Count: '
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0'
          Kind = skSum
          FieldName = 'TOTAL_AMOUNT'
          Column = gvwMasterTOTAL_AMOUNT
        end>
      OptionsView.GroupByBox = True
      object gvwMasterVOUCHERID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOUCHERID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterVOUCHERNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOUCHERNO'
        HeaderAlignmentHorz = taCenter
        Width = 93
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterVOUCHERTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOUCHERTYPE'
        Visible = False
        Width = 76
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterENTRYDATE: TcxGridDBBandedColumn
        Caption = 'Entry Date'
        DataBinding.FieldName = 'ENTRYDATE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterVOUCHERDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOUCHERDATE'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterBROKER_BANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BROKER_BANKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterBROKER_BANKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BROKER_BANKCODE'
        Visible = False
        GroupIndex = 0
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 91
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterBROKER_BANKACCNO: TcxGridDBBandedColumn
        Caption = 'Broker Account Code'
        DataBinding.FieldName = 'BROKER_BANKACCNO'
        Visible = False
        GroupIndex = 1
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterBROKER_BANKACCNAME: TcxGridDBBandedColumn
        Caption = 'Broker Bank Name'
        DataBinding.FieldName = 'BROKER_BANKACCNAME'
        Visible = False
        Width = 176
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterBROKER_BANKACCBRANCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BROKER_BANKACCBRANCH'
        Visible = False
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterVOUCHER_DESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'VOUCHER_DESC'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 62
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterEXRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXRATE'
        Visible = False
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterTOTAL_AMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOTAL_AMOUNT'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Items = <
          item
            Description = 'Create Journal'
            ImageIndex = 0
            Value = 'V'
          end
          item
            Description = 'Settled'
            Value = 'S'
          end
          item
            Description = 'Open'
            Value = 'O'
          end
          item
            Description = 'Cancel'
            Value = 'C'
          end>
        HeaderAlignmentHorz = taCenter
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterTRANSFERMODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANSFERMODE'
        Width = 87
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterBROKER_BANKPAYMENTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BROKER_BANKPAYMENTID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterCUST_BANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUST_BANKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterCUST_BANKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUST_BANKCODE'
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterCUST_BANKACCNO: TcxGridDBBandedColumn
        Caption = 'Bank Account No'
        DataBinding.FieldName = 'CUST_BANKACCNO'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterCUST_BANKACCNAME: TcxGridDBBandedColumn
        Caption = 'Bank Account Name'
        DataBinding.FieldName = 'CUST_BANKACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterCUST_BANKACCBRANCH: TcxGridDBBandedColumn
        Caption = 'Bank Account Branch'
        DataBinding.FieldName = 'CUST_BANKACCBRANCH'
        Width = 119
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterCHARGESAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHARGESAMT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterJRNID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JRNID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 38
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 39
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 40
        Position.RowIndex = 0
      end
      object gvwMasterBICODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BICODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 41
        Position.RowIndex = 0
      end
      object gvwMasterBANK_REFERENCE: TcxGridDBBandedColumn
        Caption = 'Reference'
        DataBinding.FieldName = 'BANK_REFERENCE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 86
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterBANK_INSTRUCTION: TcxGridDBBandedColumn
        Caption = 'Instruction'
        DataBinding.FieldName = 'BANK_INSTRUCTION'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        HeaderAlignmentHorz = taCenter
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE_FX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE_FX'
        Visible = False
        Width = 61
        Position.BandIndex = 0
        Position.ColIndex = 42
        Position.RowIndex = 0
      end
      object gvwMasterCHARGESAMT_FX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHARGESAMT_FX'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 43
        Position.RowIndex = 0
      end
      object gvwMasterTOTAL_AMOUNT_FX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOTAL_AMOUNT_FX'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 44
        Position.RowIndex = 0
      end
      object gvwMasterTOTAL_AMOUNT_FX_CHANGED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOTAL_AMOUNT_FX_CHANGED'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 45
        Position.RowIndex = 0
      end
      object gvwMasterTOTAL_AMOUNT_FX_DIFF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOTAL_AMOUNT_FX_DIFF'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 46
        Position.RowIndex = 0
      end
      object gvwMasterBROKER_BANKINFO: TcxGridDBBandedColumn
        Caption = 'Broker Bank'
        DataBinding.FieldName = 'BROKER_BANKINFO'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterACCSOPID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCSOPID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 47
        Position.RowIndex = 0
      end
      object gvwMasterTRANSTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANSTYPE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 48
        Position.RowIndex = 0
      end
      object gvwMasterTRANSFER_AMT: TcxGridDBBandedColumn
        Caption = 'Transfer Amount'
        DataBinding.FieldName = 'TRANSFER_AMT'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterSWIFT_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SWIFT_CODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 49
        Position.RowIndex = 0
      end
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 26
    Width = 1003
    Height = 44
    Align = alTop
    TabOrder = 5
    object dtVoucherDate: TcxDateEdit
      Left = 80
      Top = 10
      Properties.DisplayFormat = 'dd MMM yyyy'
      Properties.ShowTime = False
      Properties.OnCloseUp = dtVoucherDatePropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 95
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Voucher Date'
      Control = dtVoucherDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
  end
  object PageControl: TcxPageControl [2]
    Left = 0
    Top = 70
    Width = 1003
    Height = 468
    Align = alClient
    TabOrder = 6
    Properties.ActivePage = tsAutoVoucher
    Properties.CustomButtons.Buttons = <>
    OnChange = PageControlChange
    ClientRectBottom = 464
    ClientRectLeft = 4
    ClientRectRight = 999
    ClientRectTop = 24
    object tsAutoVoucher: TcxTabSheet
      Caption = 'Auto Create Voucher'
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 995
        Height = 440
        Align = alClient
        TabOrder = 0
        OnEnter = grdMasterEnter
        object gvwAutoVoucher: TcxGridDBBandedTableView
          PopupMenu = popMaster
          OnKeyDown = gvwMasterKeyDown
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCustomDrawCell = gvwMasterCustomDrawCell
          DataController.DataSource = dsBrowseMaster
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skCount
              FieldName = 'BROKER_BANKINFO'
              DisplayText = 'Count: '
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'TOTAL_AMOUNT'
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.HideSelection = True
          OptionsSelection.InvertSelect = False
          OptionsView.Footer = True
          OptionsView.GridLineColor = 16777088
          OptionsView.Indicator = True
          OptionsView.BandHeaders = False
          Styles.ContentOdd = BlueToggle
          Styles.FilterRowInfoText = dmGlobal.GridFilterBox
          Bands = <
            item
            end>
          object gvwAutoVoucherVOUCHERID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VOUCHERID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwAutoVoucherVOUCHERNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VOUCHERNO'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwAutoVoucherVOUCHERTYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VOUCHERTYPE'
            Visible = False
            Width = 72
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwAutoVoucherENTRYDATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ENTRYDATE'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwAutoVoucherVOUCHERDATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VOUCHERDATE'
            Width = 71
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwAutoVoucherACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwAutoVoucherACCNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCNO'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwAutoVoucherACCNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCNAME'
            Width = 250
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwAutoVoucherBROKER_BANKID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKID'
            Visible = False
            Width = 77
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwAutoVoucherBROKER_BANKCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKCODE'
            Visible = False
            GroupIndex = 0
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwAutoVoucherBROKER_BANKACCNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKACCNO'
            Visible = False
            GroupIndex = 1
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwAutoVoucherBROKER_BANKACCNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKACCNAME'
            Width = 250
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwAutoVoucherBROKER_BANKACCBRANCH: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKACCBRANCH'
            Width = 99
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwAutoVoucherBROKER_BANKPAYMENTID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKPAYMENTID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gvwAutoVoucherCUST_BANKID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_BANKID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object gvwAutoVoucherCUST_BANKCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_BANKCODE'
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object gvwAutoVoucherCUST_BANKACCNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_BANKACCNAME'
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object gvwAutoVoucherCUST_BANKACCBRANCH: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_BANKACCBRANCH'
            Width = 110
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object gvwAutoVoucherCUST_BANKACCNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_BANKACCNO'
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object gvwAutoVoucherVOUCHER_DESC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VOUCHER_DESC'
            Width = 300
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object gvwAutoVoucherCCYCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CCYCODE'
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object gvwAutoVoucherEXRATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'EXRATE'
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object gvwAutoVoucherTRANSFERMODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRANSFERMODE'
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object gvwAutoVoucherCHARGESAMT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CHARGESAMT'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object gvwAutoVoucherTOTAL_AMOUNT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TOTAL_AMOUNT'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object gvwAutoVoucherSTAT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STAT'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Open'
                ImageIndex = 0
                Value = 'O'
              end
              item
                Description = 'Cancel'
                Value = 'C'
              end
              item
                Description = 'Settle'
                Value = 'S'
              end>
            Width = 40
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwAutoVoucherPOSTED: TcxGridDBBandedColumn
            DataBinding.FieldName = 'POSTED'
            RepositoryItem = dmGlobal.chkStandard
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwAutoVoucherJRNID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'JRNID'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Open'
                ImageIndex = 0
                Value = 'O'
              end
              item
                Description = 'Cancel'
                Value = 'C'
              end
              item
                Description = 'Settle'
                Value = 'S'
              end>
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object gvwAutoVoucherMODDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object gvwAutoVoucherMODUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODUI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
          object gvwAutoVoucherAPPDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 30
            Position.RowIndex = 0
          end
          object gvwAutoVoucherAPPUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPUI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 31
            Position.RowIndex = 0
          end
          object gvwAutoVoucherUNDER4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4Y'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 32
            Position.RowIndex = 0
          end
          object gvwAutoVoucherUNDER4YDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4YDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 33
            Position.RowIndex = 0
          end
          object gvwAutoVoucherNOTES4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOTES4Y'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 34
            Position.RowIndex = 0
          end
          object gvwAutoVoucherISDEL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ISDEL'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 35
            Position.RowIndex = 0
          end
          object gvwAutoVoucherID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 36
            Position.RowIndex = 0
          end
          object gvwAutoVoucherBICODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BICODE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 37
            Position.RowIndex = 0
          end
          object gvwAutoVoucherBANK_REFERENCE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BANK_REFERENCE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 38
            Position.RowIndex = 0
          end
          object gvwAutoVoucherBANK_INSTRUCTION: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BANK_INSTRUCTION'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 39
            Position.RowIndex = 0
          end
          object gvwAutoVoucherCCYCODE_FX: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CCYCODE_FX'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 40
            Position.RowIndex = 0
          end
          object gvwAutoVoucherCHARGESAMT_FX: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CHARGESAMT_FX'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 41
            Position.RowIndex = 0
          end
          object gvwAutoVoucherTOTAL_AMOUNT_FX: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TOTAL_AMOUNT_FX'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 42
            Position.RowIndex = 0
          end
          object gvwAutoVoucherTOTAL_AMOUNT_FX_CHANGED: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TOTAL_AMOUNT_FX_CHANGED'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 43
            Position.RowIndex = 0
          end
          object gvwAutoVoucherTOTAL_AMOUNT_FX_DIFF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TOTAL_AMOUNT_FX_DIFF'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 44
            Position.RowIndex = 0
          end
          object gvwAutoVoucherBROKER_BANKINFO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKINFO'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 45
            Position.RowIndex = 0
          end
          object gvwAutoVoucherACCSOPID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCSOPID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 46
            Position.RowIndex = 0
          end
          object gvwAutoVoucherTRANSTYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRANSTYPE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 47
            Position.RowIndex = 0
          end
          object gvwAutoVoucherTRANSFER_AMT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRANSFER_AMT'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 48
            Position.RowIndex = 0
          end
          object gvwAutoVoucherSWIFT_CODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SWIFT_CODE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 49
            Position.RowIndex = 0
          end
          object gvwAutoVoucherDEAL_EXRATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DEAL_EXRATE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 50
            Position.RowIndex = 0
          end
          object gvwAutoVoucherMANUAL_VOUCHER: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MANUAL_VOUCHER'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 51
            Position.RowIndex = 0
          end
        end
        object cxGridDBCardView1: TcxGridDBCardView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsPayment_D
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CardIndent = 7
        end
        object cxGridLevel2: TcxGridLevel
          GridView = gvwAutoVoucher
        end
      end
    end
    object tsManualVoucher: TcxTabSheet
      Caption = 'Manual Create Voucher'
      ImageIndex = 1
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 995
        Height = 440
        Align = alClient
        PopupMenu = popMaster
        TabOrder = 0
        OnEnter = grdMasterEnter
        object gvwManualVoucher: TcxGridDBBandedTableView
          PopupMenu = popMaster
          OnKeyDown = gvwMasterKeyDown
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCustomDrawCell = gvwMasterCustomDrawCell
          DataController.DataSource = dsBrowseMaster
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skCount
              FieldName = 'BROKER_BANKINFO'
              DisplayText = 'Count: '
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'TOTAL_AMOUNT'
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.HideSelection = True
          OptionsSelection.InvertSelect = False
          OptionsView.Footer = True
          OptionsView.GridLineColor = 16777088
          OptionsView.Indicator = True
          OptionsView.BandHeaders = False
          Styles.ContentOdd = BlueToggle
          Styles.FilterRowInfoText = dmGlobal.GridFilterBox
          Bands = <
            item
            end>
          object gvwManualVoucherVOUCHERID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VOUCHERID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwManualVoucherVOUCHERNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VOUCHERNO'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwManualVoucherVOUCHERTYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VOUCHERTYPE'
            Visible = False
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwManualVoucherENTRYDATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ENTRYDATE'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwManualVoucherVOUCHERDATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VOUCHERDATE'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwManualVoucherACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwManualVoucherACCNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCNO'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwManualVoucherACCNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCNAME'
            Width = 250
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwManualVoucherBROKER_BANKID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKID'
            Visible = False
            Width = 77
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwManualVoucherBROKER_BANKCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKCODE'
            Visible = False
            GroupIndex = 0
            Width = 91
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwManualVoucherBROKER_BANKACCNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKACCNO'
            Visible = False
            GroupIndex = 1
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwManualVoucherBROKER_BANKACCNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKACCNAME'
            Width = 250
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwManualVoucherBROKER_BANKACCBRANCH: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKACCBRANCH'
            Width = 99
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwManualVoucherBROKER_BANKPAYMENTID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKPAYMENTID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gvwManualVoucherCUST_BANKID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_BANKID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object gvwManualVoucherCUST_BANKCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_BANKCODE'
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object gvwManualVoucherCUST_BANKACCNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_BANKACCNO'
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object gvwManualVoucherCUST_BANKACCNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_BANKACCNAME'
            Width = 250
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object gvwManualVoucherCUST_BANKACCBRANCH: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_BANKACCBRANCH'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object gvwManualVoucherVOUCHER_DESC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VOUCHER_DESC'
            Width = 300
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object gvwManualVoucherCCYCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CCYCODE'
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object gvwManualVoucherEXRATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'EXRATE'
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object gvwManualVoucherTRANSFERMODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRANSFERMODE'
            Width = 76
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object gvwManualVoucherCHARGESAMT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CHARGESAMT'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object gvwManualVoucherTOTAL_AMOUNT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TOTAL_AMOUNT'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object gvwManualVoucherSTAT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STAT'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Open'
                ImageIndex = 0
                Value = 'O'
              end
              item
                Description = 'Cancel'
                Value = 'C'
              end
              item
                Description = 'Settle'
                Value = 'S'
              end>
            Width = 40
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwManualVoucherPOSTED: TcxGridDBBandedColumn
            DataBinding.FieldName = 'POSTED'
            RepositoryItem = dmGlobal.chkStandard
            Visible = False
            Width = 39
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwManualVoucherJRNID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'JRNID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object gvwManualVoucherMODDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object gvwManualVoucherMODUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODUI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
          object gvwManualVoucherAPPDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 30
            Position.RowIndex = 0
          end
          object gvwManualVoucherAPPUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPUI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 31
            Position.RowIndex = 0
          end
          object gvwManualVoucherUNDER4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4Y'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 32
            Position.RowIndex = 0
          end
          object gvwManualVoucherUNDER4YDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4YDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 33
            Position.RowIndex = 0
          end
          object gvwManualVoucherNOTES4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOTES4Y'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 34
            Position.RowIndex = 0
          end
          object gvwManualVoucherISDEL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ISDEL'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 35
            Position.RowIndex = 0
          end
          object gvwManualVoucherID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 36
            Position.RowIndex = 0
          end
          object gvwManualVoucherBICODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BICODE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 37
            Position.RowIndex = 0
          end
          object gvwManualVoucherBANK_REFERENCE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BANK_REFERENCE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 38
            Position.RowIndex = 0
          end
          object gvwManualVoucherBANK_INSTRUCTION: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BANK_INSTRUCTION'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 39
            Position.RowIndex = 0
          end
          object gvwManualVoucherCCYCODE_FX: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CCYCODE_FX'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 40
            Position.RowIndex = 0
          end
          object gvwManualVoucherCHARGESAMT_FX: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CHARGESAMT_FX'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 41
            Position.RowIndex = 0
          end
          object gvwManualVoucherTOTAL_AMOUNT_FX: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TOTAL_AMOUNT_FX'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 42
            Position.RowIndex = 0
          end
          object gvwManualVoucherTOTAL_AMOUNT_FX_CHANGED: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TOTAL_AMOUNT_FX_CHANGED'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 43
            Position.RowIndex = 0
          end
          object gvwManualVoucherTOTAL_AMOUNT_FX_DIFF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TOTAL_AMOUNT_FX_DIFF'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 44
            Position.RowIndex = 0
          end
          object gvwManualVoucherBROKER_BANKINFO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKINFO'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 45
            Position.RowIndex = 0
          end
          object gvwManualVoucherACCSOPID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCSOPID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 46
            Position.RowIndex = 0
          end
          object gvwManualVoucherTRANSTYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRANSTYPE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 47
            Position.RowIndex = 0
          end
          object gvwManualVoucherTRANSFER_AMT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRANSFER_AMT'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 48
            Position.RowIndex = 0
          end
          object gvwManualVoucherSWIFT_CODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SWIFT_CODE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 49
            Position.RowIndex = 0
          end
          object gvwManualVoucherDEAL_EXRATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DEAL_EXRATE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 50
            Position.RowIndex = 0
          end
          object gvwManualVoucherMANUAL_VOUCHER: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MANUAL_VOUCHER'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 51
            Position.RowIndex = 0
          end
        end
        object cxGridDBCardView2: TcxGridDBCardView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsPayment_D
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CardIndent = 7
        end
        object cxGridLevel3: TcxGridLevel
          GridView = gvwManualVoucher
        end
      end
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actView'
        Permission = '[Bank Payment List].View Approval Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[Bank Payment List].View'
      end
      item
        ActionName = 'actNew'
        Permission = '[Bank Payment List].New'
      end
      item
        ActionName = 'actEdit'
        Permission = '[Bank Payment List].Edit'
      end
      item
        ActionName = 'actDelete'
        Permission = '[Bank Payment List].Delete'
      end
      item
        ActionName = 'actRefresh'
        Permission = '[Bank Payment List].Refresh'
      end
      item
        ActionName = 'actCancel'
        Permission = '[Bank Payment List].Cancel'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[Bank Payment List].Copy From Selected Data'
      end
      item
        ActionName = 'actApprove'
        Permission = '[Bank Payment List].Approve'
      end
      item
        ActionName = 'actReject'
        Permission = '[Bank Payment List].Reject'
      end>
    Left = 299
  end
  inherited PrintComp: TdxComponentPrinter
    PixelsPerInch = 96
    inherited PrintCompMainGrid: TdxGridReportLink
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited saBrowse: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited popMaster: TPopupMenu
    inherited actPrint1: TMenuItem
      Caption = 'Print Payment Instruction'
    end
    object CashVoucher1: TMenuItem [3]
      Action = actReportCashVoucher
      Caption = 'Print Cash Voucher'
    end
    object N7: TMenuItem [10]
      Caption = '-'
    end
    object CancelCashVoucher1: TMenuItem [11]
      Action = actPostingCashPayment
    end
    object CreateCashPayment1: TMenuItem [12]
      Action = actCancelCash
    end
    object Reverse1: TMenuItem [13]
      Action = actReversePosting
    end
    object GeneratetoBankFile1: TMenuItem [14]
      Action = actGenerateBankFile
    end
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsPayment_H
  end
  inherited aclEditor: TActionList
    OnExecute = aclEditorExecute
    Left = 103
    inherited actEdit: TNAction
      Enabled = False
      Visible = False
      CheckPermission = False
    end
    inherited actDelete: TNAction
      CheckPermission = False
    end
    object actViewData: TNAction
      Category = 'NActions'
      Caption = 'View Data'
      CheckPermission = False
      ActionLog = dmGlobal.ActionLog
      ActionType = 'View Data'
    end
    object actGenerateBCAFile: TNAction
      Category = 'NActions'
      Caption = 'Generate to BCA File'
      CheckPermission = False
    end
    object actGenerateCBest: TNAction
      Category = 'NActions'
      Caption = 'Generate to CBest File'
      OnExecute = actGenerateCBestExecute
      CheckPermission = False
    end
    object actPosting: TNAction
      Category = 'NActions'
      Caption = 'Settle'
      OnExecute = actPostingExecute
      OnUpdate = actPostingUpdate
      CheckPermission = False
    end
    object actCancelCash: TNAction
      Category = 'NActions'
      Caption = 'Cancel Cash Voucher'
      OnExecute = actCancelCashExecute
      OnUpdate = actCancelCashUpdate
      CheckPermission = False
    end
    object actGenerateMandiriFile: TNAction
      Category = 'NActions'
      Caption = 'Generate to Mandiri File'
      OnExecute = actGenerateMandiriFileExecute
      CheckPermission = False
    end
    object actGeneratePermataFile: TNAction
      Category = 'NActions'
      Caption = 'Generate to Permata File'
      OnExecute = actGeneratePermataFileExecute
      CheckPermission = False
    end
    object actGenerateNiagaFile: TNAction
      Category = 'NActions'
      Caption = 'Generate to Niaga File'
      OnExecute = actGenerateNiagaFileExecute
      CheckPermission = False
    end
    object actGenerateBNIFile: TNAction
      Category = 'NActions'
      Caption = 'Generate to BNI File'
      OnExecute = actGenerateBNIFileExecute
      CheckPermission = False
    end
    object actReverse: TNAction
      Category = 'NActions'
      Caption = 'Reverse'
      OnExecute = actReverseExecute
      OnUpdate = actReverseUpdate
      CheckPermission = False
    end
    object actGenerateBankFile: TNAction
      Category = 'NActions'
      Caption = 'Generate to Bank File'
      OnExecute = actGenerateBankFileExecute
      CheckPermission = False
    end
    object actReportCashVoucher: TNAction
      Category = 'NActions'
      Caption = 'Cash Voucher'
      ImageIndex = 12
      OnExecute = actReportCashVoucherExecute
      CheckPermission = False
    end
    object actReportPayment: TNAction
      Category = 'NActions'
      Caption = 'Print Bank Payment'
      ImageIndex = 12
      CheckPermission = False
    end
    object actCreateCashPayment: TNAction
      Category = 'NActions'
      Caption = 'Create Cash Payment'
      OnExecute = actCreateCashPaymentExecute
      CheckPermission = False
    end
    object actPostingCashPayment: TNAction
      Category = 'NActions'
      Caption = 'Cash Payment Posting'
      OnExecute = actPostingCashPaymentExecute
      CheckPermission = False
    end
    object actReversePosting: TNAction
      Category = 'NActions'
      Caption = 'Reverse Cash Payment'
      OnExecute = actReversePostingExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
    inherited BarMBrowseBar1: TdxBar
      FloatLeft = 115
      FloatTop = 273
      FloatClientWidth = 112
      FloatClientHeight = 125
    end
    object dxBarButton1: TdxBarButton
      Action = actReportPayment
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  inherited DataContainer: TNMasterDetailData
    AutoUpdateList = True
    MasterDataset = cdsCashVoucher_H
    ListDataset = cdsPayment_H
    DetailsData = <
      item
        DetailDataset = cdsCashVoucher_D
        DetailKeys = <
          item
            FieldName = 'SEQID'
            FieldIndex = 0
          end>
      end>
    MasterTableName = 'main.B_CASH_VOUCHER'
    Keys = <
      item
        FieldName = 'VOUCHERID'
        FieldIndex = 0
      end>
  end
  inherited ReportContainer: TNClientReportContainer
    ReportName = 'Cash Management\Payment_Instructionz.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'VOUCHERDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BANKREFF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BROKER_BANKCODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BROKER_BANKACCNO'
        ParamType = ptInput
      end>
    Left = 443
  end
  object cdsPayment_H: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'VOUCHERDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'VOUCHERTYPE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryCashPayment_H'
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsPayment_HCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 515
    Top = 186
    object cdsPayment_HVOUCHERID: TLargeintField
      DisplayLabel = 'Voucher ID'
      FieldName = 'VOUCHERID'
      Required = True
    end
    object cdsPayment_HVOUCHERNO: TStringField
      DisplayLabel = 'Voucher No'
      FieldName = 'VOUCHERNO'
    end
    object cdsPayment_HVOUCHERTYPE: TStringField
      DisplayLabel = 'Voucher Type'
      FieldName = 'VOUCHERTYPE'
      Size = 1
    end
    object cdsPayment_HENTRYDATE: TDateField
      DisplayLabel = 'Entry date'
      FieldName = 'ENTRYDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsPayment_HVOUCHERDATE: TDateField
      DisplayLabel = 'Voucher Date'
      FieldName = 'VOUCHERDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsPayment_HACCID: TLargeintField
      DisplayLabel = 'Account ID'
      FieldName = 'ACCID'
    end
    object cdsPayment_HACCNO: TStringField
      DisplayLabel = 'Account No'
      FieldName = 'ACCNO'
    end
    object cdsPayment_HACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsPayment_HBROKER_BANKID: TIntegerField
      DisplayLabel = 'Broker Bank ID'
      FieldName = 'BROKER_BANKID'
    end
    object cdsPayment_HBROKER_BANKCODE: TStringField
      DisplayLabel = 'Broker Bank Code'
      FieldName = 'BROKER_BANKCODE'
      Size = 10
    end
    object cdsPayment_HBROKER_BANKACCNO: TStringField
      DisplayLabel = 'Broker Bank Account No'
      FieldName = 'BROKER_BANKACCNO'
    end
    object cdsPayment_HBROKER_BANKACCNAME: TStringField
      DisplayLabel = 'Broker Bank Account Name'
      FieldName = 'BROKER_BANKACCNAME'
      Size = 100
    end
    object cdsPayment_HBROKER_BANKACCBRANCH: TStringField
      DisplayLabel = 'Broker Bank Branch'
      FieldName = 'BROKER_BANKACCBRANCH'
      Size = 100
    end
    object cdsPayment_HBROKER_BANKPAYMENTID: TLargeintField
      FieldName = 'BROKER_BANKPAYMENTID'
    end
    object cdsPayment_HCUST_BANKID: TIntegerField
      DisplayLabel = 'Cust Bank ID'
      FieldName = 'CUST_BANKID'
    end
    object cdsPayment_HCUST_BANKCODE: TStringField
      DisplayLabel = 'Cust Bank Code'
      FieldName = 'CUST_BANKCODE'
      Size = 10
    end
    object cdsPayment_HCUST_BANKACCNAME: TStringField
      DisplayLabel = 'Cust Bank Acc No'
      FieldName = 'CUST_BANKACCNAME'
      Size = 100
    end
    object cdsPayment_HCUST_BANKACCBRANCH: TStringField
      DisplayLabel = 'Cust Bank Acc Branch'
      FieldName = 'CUST_BANKACCBRANCH'
      Size = 100
    end
    object cdsPayment_HCUST_BANKACCNO: TStringField
      DisplayLabel = 'Cust Bank Acc No'
      FieldName = 'CUST_BANKACCNO'
    end
    object cdsPayment_HVOUCHER_DESC: TStringField
      DisplayLabel = 'Voucher Desc'
      FieldName = 'VOUCHER_DESC'
      Size = 150
    end
    object cdsPayment_HCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsPayment_HEXRATE: TFloatField
      DisplayLabel = 'Exrate'
      FieldName = 'EXRATE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsPayment_HTRANSFERMODE: TStringField
      DisplayLabel = 'Transfer Mode'
      FieldName = 'TRANSFERMODE'
      Size = 10
    end
    object cdsPayment_HCHARGESAMT: TFloatField
      DisplayLabel = 'Change Amount'
      FieldName = 'CHARGESAMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsPayment_HTOTAL_AMOUNT: TFloatField
      DisplayLabel = 'Total Amount'
      FieldName = 'TOTAL_AMOUNT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsPayment_HSTAT: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STAT'
      Size = 1
    end
    object cdsPayment_HPOSTED: TStringField
      DisplayLabel = 'Posted'
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsPayment_HJRNID: TLargeintField
      FieldName = 'JRNID'
    end
    object cdsPayment_HMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsPayment_HMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsPayment_HAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsPayment_HAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsPayment_HUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsPayment_HUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsPayment_HNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsPayment_HISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsPayment_HID: TLargeintField
      FieldName = 'ID'
    end
    object cdsPayment_HBICODE: TStringField
      FieldName = 'BICODE'
      ReadOnly = True
      Size = 10
    end
    object cdsPayment_HBANK_REFERENCE: TStringField
      FieldName = 'BANK_REFERENCE'
      Size = 50
    end
    object cdsPayment_HBANK_INSTRUCTION: TStringField
      FieldName = 'BANK_INSTRUCTION'
      Size = 1
    end
    object cdsPayment_HCCYCODE_FX: TStringField
      FieldName = 'CCYCODE_FX'
      Size = 5
    end
    object cdsPayment_HCHARGESAMT_FX: TFloatField
      FieldName = 'CHARGESAMT_FX'
    end
    object cdsPayment_HTOTAL_AMOUNT_FX: TFloatField
      FieldName = 'TOTAL_AMOUNT_FX'
    end
    object cdsPayment_HTOTAL_AMOUNT_FX_CHANGED: TFloatField
      FieldName = 'TOTAL_AMOUNT_FX_CHANGED'
    end
    object cdsPayment_HTOTAL_AMOUNT_FX_DIFF: TFloatField
      FieldName = 'TOTAL_AMOUNT_FX_DIFF'
    end
    object cdsPayment_HBROKER_BANKINFO: TStringField
      FieldKind = fkCalculated
      FieldName = 'BROKER_BANKINFO'
      Size = 200
      Calculated = True
    end
    object cdsPayment_HACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsPayment_HTRANSTYPE: TStringField
      FieldName = 'TRANSTYPE'
      Size = 1
    end
    object cdsPayment_HTRANSFER_AMT: TFloatField
      FieldName = 'TRANSFER_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsPayment_HSWIFT_CODE: TStringField
      FieldName = 'SWIFT_CODE'
      ReadOnly = True
      Size = 10
    end
    object cdsPayment_HDEAL_EXRATE: TFloatField
      FieldName = 'DEAL_EXRATE'
    end
    object cdsPayment_HMANUAL_VOUCHER: TStringField
      FieldName = 'MANUAL_VOUCHER'
      Size = 1
    end
    object cdsPayment_HReqFF: TIntegerField
      FieldName = 'ReqFF'
    end
  end
  object cdsPayment_D: TNClientDataset
    Aggregates = <>
    IndexFieldNames = 'VOUCHERID'
    Params = <
      item
        DataType = ftDateTime
        Name = 'VOUCHERDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'VOUCHERTYPE'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryCashPayment_D'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 515
    Top = 234
    object cdsPayment_DVOUCHERID: TLargeintField
      FieldName = 'VOUCHERID'
      Required = True
    end
    object cdsPayment_DSEQID: TLargeintField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsPayment_DTRANS_TYPE: TStringField
      FieldName = 'TRANS_TYPE'
      Size = 2
    end
    object cdsPayment_DLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
      Size = 10
    end
    object cdsPayment_DLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsPayment_DLINKNO: TStringField
      FieldName = 'LINKNO'
    end
    object cdsPayment_DACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsPayment_DACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsPayment_DACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsPayment_DTRDDATE: TDateField
      FieldName = 'TRDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsPayment_DDUEDATE: TDateField
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsPayment_DCASH_DESC: TStringField
      FieldName = 'CASH_DESC'
      Size = 150
    end
    object cdsPayment_DTRANS_AMT: TFloatField
      FieldName = 'TRANS_AMT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsPayment_DNETTYPE: TStringField
      FieldName = 'NETTYPE'
      Size = 1
    end
    object cdsPayment_DAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsPayment_DMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsPayment_DMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsPayment_DAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsPayment_DAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsPayment_DUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsPayment_DUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsPayment_DNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsPayment_DISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsPayment_DID: TLargeintField
      FieldName = 'ID'
    end
    object cdsPayment_DOVERDUE: TStringField
      FieldName = 'OVERDUE'
      Size = 1
    end
  end
  object dsPayment_D: TDataSource
    DataSet = cdsPayment_D
    Left = 33
    Top = 225
  end
  object cdsCashVoucher_H: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'VOUCHERID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryCashVoucher_H'
    RemoteServer = dmGlobal.dspConnection
    OnNewRecord = cdsCashVoucher_HNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 639
    Top = 177
    object cdsCashVoucher_HVOUCHERID: TLargeintField
      FieldName = 'VOUCHERID'
      Required = True
    end
    object cdsCashVoucher_HVOUCHERNO: TStringField
      FieldName = 'VOUCHERNO'
    end
    object cdsCashVoucher_HVOUCHERTYPE: TStringField
      FieldName = 'VOUCHERTYPE'
      Size = 1
    end
    object cdsCashVoucher_HENTRYDATE: TDateField
      FieldName = 'ENTRYDATE'
    end
    object cdsCashVoucher_HVOUCHERDATE: TDateField
      FieldName = 'VOUCHERDATE'
    end
    object cdsCashVoucher_HACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCashVoucher_HACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsCashVoucher_HACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCashVoucher_HBROKER_BANKID: TIntegerField
      FieldName = 'BROKER_BANKID'
    end
    object cdsCashVoucher_HBROKER_BANKCODE: TStringField
      FieldName = 'BROKER_BANKCODE'
      Size = 10
    end
    object cdsCashVoucher_HBROKER_BANKACCNO: TStringField
      FieldName = 'BROKER_BANKACCNO'
    end
    object cdsCashVoucher_HBROKER_BANKACCNAME: TStringField
      FieldName = 'BROKER_BANKACCNAME'
      Size = 100
    end
    object cdsCashVoucher_HBROKER_BANKACCBRANCH: TStringField
      FieldName = 'BROKER_BANKACCBRANCH'
      Size = 100
    end
    object cdsCashVoucher_HBROKER_BANKPAYMENTID: TLargeintField
      FieldName = 'BROKER_BANKPAYMENTID'
    end
    object cdsCashVoucher_HCUST_BANKID: TIntegerField
      FieldName = 'CUST_BANKID'
    end
    object cdsCashVoucher_HCUST_BANKCODE: TStringField
      FieldName = 'CUST_BANKCODE'
      Size = 10
    end
    object cdsCashVoucher_HCUST_BANKACCNO: TStringField
      FieldName = 'CUST_BANKACCNO'
    end
    object cdsCashVoucher_HCUST_BANKACCNAME: TStringField
      FieldName = 'CUST_BANKACCNAME'
      Size = 100
    end
    object cdsCashVoucher_HCUST_BANKACCBRANCH: TStringField
      FieldName = 'CUST_BANKACCBRANCH'
      Size = 100
    end
    object cdsCashVoucher_HVOUCHER_DESC: TStringField
      FieldName = 'VOUCHER_DESC'
      Size = 150
    end
    object cdsCashVoucher_HCCYCODE: TStringField
      FieldName = 'CCYCODE'
      Size = 5
    end
    object cdsCashVoucher_HEXRATE: TFloatField
      FieldName = 'EXRATE'
    end
    object cdsCashVoucher_HTRANSFERMODE: TStringField
      FieldName = 'TRANSFERMODE'
      Size = 10
    end
    object cdsCashVoucher_HCHARGESAMT: TFloatField
      FieldName = 'CHARGESAMT'
    end
    object cdsCashVoucher_HTOTAL_AMOUNT: TFloatField
      FieldName = 'TOTAL_AMOUNT'
    end
    object cdsCashVoucher_HSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object cdsCashVoucher_HPOSTED: TStringField
      FieldName = 'POSTED'
      Size = 1
    end
    object cdsCashVoucher_HJRNID: TLargeintField
      FieldName = 'JRNID'
    end
    object cdsCashVoucher_HMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashVoucher_HMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashVoucher_HAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashVoucher_HAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashVoucher_HUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashVoucher_HUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashVoucher_HNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashVoucher_HISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashVoucher_HID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashVoucher_HqryCashVoucher_D: TDataSetField
      FieldName = 'qryCashVoucher_D'
    end
    object cdsCashVoucher_HBANK_REFERENCE: TStringField
      FieldName = 'BANK_REFERENCE'
      Size = 50
    end
    object cdsCashVoucher_HBANK_INSTRUCTION: TStringField
      FieldName = 'BANK_INSTRUCTION'
      Size = 1
    end
    object cdsCashVoucher_HCCYCODE_FX: TStringField
      FieldName = 'CCYCODE_FX'
      Size = 5
    end
    object cdsCashVoucher_HCHARGESAMT_FX: TFloatField
      FieldName = 'CHARGESAMT_FX'
    end
    object cdsCashVoucher_HTOTAL_AMOUNT_FX: TFloatField
      FieldName = 'TOTAL_AMOUNT_FX'
    end
    object cdsCashVoucher_HTOTAL_AMOUNT_FX_CHANGED: TFloatField
      FieldName = 'TOTAL_AMOUNT_FX_CHANGED'
    end
    object cdsCashVoucher_HTOTAL_AMOUNT_FX_DIFF: TFloatField
      FieldName = 'TOTAL_AMOUNT_FX_DIFF'
    end
    object cdsCashVoucher_HACCSOPID: TLargeintField
      FieldName = 'ACCSOPID'
    end
    object cdsCashVoucher_HDEAL_EXRATE: TFloatField
      FieldName = 'DEAL_EXRATE'
    end
    object cdsCashVoucher_HTRANSTYPE: TStringField
      FieldName = 'TRANSTYPE'
      Size = 1
    end
    object cdsCashVoucher_HTRANSFER_AMT: TFloatField
      FieldName = 'TRANSFER_AMT'
    end
    object cdsCashVoucher_HMANUAL_VOUCHER: TStringField
      FieldName = 'MANUAL_VOUCHER'
      Size = 1
    end
    object cdsCashVoucher_HReqFF: TIntegerField
      FieldName = 'ReqFF'
    end
  end
  object cdsCashVoucher_D: TNClientDataset
    Aggregates = <>
    DataSetField = cdsCashVoucher_HqryCashVoucher_D
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 639
    Top = 225
    object cdsCashVoucher_DVOUCHERID: TLargeintField
      FieldName = 'VOUCHERID'
      Required = True
    end
    object cdsCashVoucher_DSEQID: TLargeintField
      FieldName = 'SEQID'
      Required = True
    end
    object cdsCashVoucher_DTRANS_TYPE: TStringField
      FieldName = 'TRANS_TYPE'
      Size = 2
    end
    object cdsCashVoucher_DLINKTYPE: TStringField
      FieldName = 'LINKTYPE'
      Size = 10
    end
    object cdsCashVoucher_DLINKID: TLargeintField
      FieldName = 'LINKID'
    end
    object cdsCashVoucher_DLINKNO: TStringField
      FieldName = 'LINKNO'
    end
    object cdsCashVoucher_DACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsCashVoucher_DACCNO: TStringField
      FieldName = 'ACCNO'
    end
    object cdsCashVoucher_DACCNAME: TStringField
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsCashVoucher_DTRDDATE: TDateField
      FieldName = 'TRDDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashVoucher_DDUEDATE: TDateField
      FieldName = 'DUEDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashVoucher_DCASH_DESC: TStringField
      FieldName = 'CASH_DESC'
      Size = 150
    end
    object cdsCashVoucher_DTRANS_AMT: TFloatField
      FieldName = 'TRANS_AMT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashVoucher_DNETTYPE: TStringField
      FieldName = 'NETTYPE'
      Size = 1
    end
    object cdsCashVoucher_DAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashVoucher_DMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCashVoucher_DMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCashVoucher_DAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCashVoucher_DAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCashVoucher_DUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCashVoucher_DUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCashVoucher_DNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCashVoucher_DISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCashVoucher_DID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCashVoucher_DOVERDUE: TStringField
      FieldName = 'OVERDUE'
      Size = 1
    end
  end
  object SaveFile: TSaveDialog
    Left = 444
    Top = 282
  end
  object Cash_Voucher: TNClientReportContainer
    ReportClient = dmGlobal.ReportClient
    ReportName = 'Cash Management\Cash_Voucher.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'VOUCHERDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'VOUCHERTYPE'
        ParamType = ptInput
      end>
    Left = 443
    Top = 155
  end
  object cdsLuBrokerBank: TNClientDataset
    Aggregates = <>
    Filtered = True
    Params = <
      item
        DataType = ftInteger
        Name = 'ACCID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmLookup_qryLuBankAcc'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 277
    Top = 166
    object cdsLuBrokerBankACCBANKID: TIntegerField
      FieldName = 'ACCBANKID'
      Required = True
    end
    object cdsLuBrokerBankACCID: TIntegerField
      FieldName = 'ACCID'
    end
    object cdsLuBrokerBankBNCODE: TStringField
      DisplayWidth = 10
      FieldName = 'BNCODE'
      Size = 30
    end
    object cdsLuBrokerBankBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No.'
      DisplayWidth = 20
      FieldName = 'BANKACCNO'
      Size = 30
    end
    object cdsLuBrokerBankBANKACCNAME: TStringField
      DisplayLabel = 'Bank Account Name'
      DisplayWidth = 30
      FieldName = 'BANKACCNAME'
      Size = 50
    end
    object cdsLuBrokerBankBANKBRANCH: TStringField
      FieldName = 'BANKBRANCH'
      Size = 50
    end
    object cdsLuBrokerBankACTLED_SEQID: TIntegerField
      FieldName = 'ACTLED_SEQID'
    end
    object cdsLuBrokerBankISRDN: TStringField
      FieldName = 'ISRDN'
      Size = 1
    end
    object cdsLuBrokerBankACCBANKCODE: TStringField
      DisplayLabel = 'Acc Bank Code'
      DisplayWidth = 15
      FieldName = 'ACCBANKCODE'
      Size = 50
    end
    object cdsLuBrokerBankCCYCODE: TStringField
      DisplayLabel = 'Currency'
      FieldName = 'CCYCODE'
      Size = 5
    end
  end
  object dsLuBrokerBank: TDataSource
    DataSet = cdsLuBrokerBank
    Left = 238
    Top = 166
  end
  object BankPayment: TNClientReportContainer
    ReportClient = dmGlobal.ReportClient
    ReportName = 'Cash Management\Payment_Instruction.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'VOUCHERDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'BANK_REFERENCE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'BROKER_BANKID'
        ParamType = ptUnknown
      end>
    Left = 582
    Top = 282
  end
  object cdsBankList: TNClientDataset
    Aggregates = <>
    Params = <>
    ProviderName = 'dspN_dmMaster_qryBankList'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 738
    Top = 198
    object cdsBankListBNCODE: TStringField
      FieldName = 'BNCODE'
      Required = True
      Size = 30
    end
    object cdsBankListBNNAME: TStringField
      FieldName = 'BNNAME'
      Size = 50
    end
    object cdsBankListINITIAL_NAME: TStringField
      FieldName = 'INITIAL_NAME'
      Size = 10
    end
  end
end

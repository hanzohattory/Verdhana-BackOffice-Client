inherited frmBankReceiveList: TfrmBankReceiveList
  Caption = 'Bank Receive List'
  ClientHeight = 538
  ClientWidth = 934
  ExplicitWidth = 934
  ExplicitHeight = 538
  PixelsPerInch = 96
  TextHeight = 13
  inherited grdMaster: TcxGrid
    Top = 70
    Width = 934
    Height = 468
    ExplicitTop = 70
    ExplicitWidth = 934
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
        Width = 96
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterVOUCHERTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOUCHERTYPE'
        Visible = False
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterENTRYDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENTRYDATE'
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterVOUCHERDATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VOUCHERDATE'
        Width = 71
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterBROKER_BANKID: TcxGridDBBandedColumn
        Caption = 'Broker Bank  ID'
        DataBinding.FieldName = 'BROKER_BANKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterBROKER_BANKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BROKER_BANKCODE'
        Visible = False
        GroupIndex = 0
        Width = 106
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterBROKER_BANKACCNO: TcxGridDBBandedColumn
        Caption = 'Broker Account No'
        DataBinding.FieldName = 'BROKER_BANKACCNO'
        Visible = False
        GroupIndex = 1
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterBROKER_BANKACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BROKER_BANKACCNAME'
        Visible = False
        Width = 430
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterBROKER_BANKACCBRANCH: TcxGridDBBandedColumn
        Caption = 'Broker Bank Branch'
        DataBinding.FieldName = 'BROKER_BANKACCBRANCH'
        Visible = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterVOUCHER_DESC: TcxGridDBBandedColumn
        Caption = 'Description'
        DataBinding.FieldName = 'VOUCHER_DESC'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterEXRATE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EXRATE'
        Visible = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterTOTAL_AMOUNT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOTAL_AMOUNT'
        HeaderAlignmentHorz = taRightJustify
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterSTAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STAT'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
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
        HeaderAlignmentHorz = taCenter
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterTRANSFERMODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TRANSFERMODE'
        Width = 76
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 19
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
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterBROKER_BANKPAYMENTID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BROKER_BANKPAYMENTID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterCUST_BANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUST_BANKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterCUST_BANKCODE: TcxGridDBBandedColumn
        Caption = 'Cust Bank Code'
        DataBinding.FieldName = 'CUST_BANKCODE'
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterCUST_BANKACCNO: TcxGridDBBandedColumn
        Caption = 'Bank Account No'
        DataBinding.FieldName = 'CUST_BANKACCNO'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterCUST_BANKACCNAME: TcxGridDBBandedColumn
        Caption = 'Bank Account Name'
        DataBinding.FieldName = 'CUST_BANKACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterCUST_BANKACCBRANCH: TcxGridDBBandedColumn
        Caption = 'Bank Account Branch'
        DataBinding.FieldName = 'CUST_BANKACCBRANCH'
        Width = 107
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwMasterCHARGESAMT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHARGESAMT'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwMasterPOSTED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'POSTED'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwMasterJRNID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JRNID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwMasterMODDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwMasterMODUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MODUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwMasterAPPDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwMasterAPPUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APPUI'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwMasterUNDER4YDA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'UNDER4YDA'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object gvwMasterNOTES4Y: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOTES4Y'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object gvwMasterISDEL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ISDEL'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 38
        Position.RowIndex = 0
      end
      object gvwMasterID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 39
        Position.RowIndex = 0
      end
      object gvwMasterBICODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BICODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 40
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
        Width = 96
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterCCYCODE_FX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CCYCODE_FX'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 41
        Position.RowIndex = 0
      end
      object gvwMasterCHARGESAMT_FX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHARGESAMT_FX'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 42
        Position.RowIndex = 0
      end
      object gvwMasterTOTAL_AMOUNT_FX: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOTAL_AMOUNT_FX'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 43
        Position.RowIndex = 0
      end
      object gvwMasterTOTAL_AMOUNT_FX_CHANGED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOTAL_AMOUNT_FX_CHANGED'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 44
        Position.RowIndex = 0
      end
      object gvwMasterTOTAL_AMOUNT_FX_DIFF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TOTAL_AMOUNT_FX_DIFF'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 45
        Position.RowIndex = 0
      end
      object gvwMasterBROKER_BANKINFO: TcxGridDBBandedColumn
        Caption = 'Broker Bank'
        DataBinding.FieldName = 'BROKER_BANKINFO'
        Visible = False
        Width = 979
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterACCSOPID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCSOPID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 46
        Position.RowIndex = 0
      end
      object gvwMasterSWIFT_CODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SWIFT_CODE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 47
        Position.RowIndex = 0
      end
    end
    object grdMasterDBCardView1: TcxGridDBCardView [1]
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPayment_D
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CardIndent = 7
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 0
    Top = 26
    Width = 934
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
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
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
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object PageControl: TcxPageControl [2]
    Left = 0
    Top = 70
    Width = 934
    Height = 468
    Align = alClient
    TabOrder = 6
    Properties.ActivePage = tsAutoVoucher
    Properties.CustomButtons.Buttons = <>
    OnChange = PageControlChange
    ClientRectBottom = 464
    ClientRectLeft = 4
    ClientRectRight = 930
    ClientRectTop = 24
    object tsAutoVoucher: TcxTabSheet
      Caption = 'Auto Create Voucher'
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 926
        Height = 440
        Align = alClient
        TabOrder = 0
        OnEnter = grdMasterEnter
        object gvwAutoVoucher: TcxGridDBBandedTableView
          PopupMenu = popMaster
          OnKeyDown = gvwMasterKeyDown
          Navigator.Buttons.CustomButtons = <>
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
            Width = 106
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gvwAutoVoucherVOUCHERTYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VOUCHERTYPE'
            Width = 72
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gvwAutoVoucherENTRYDATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ENTRYDATE'
            Width = 77
            Position.BandIndex = 0
            Position.ColIndex = 54
            Position.RowIndex = 0
          end
          object gvwAutoVoucherVOUCHERDATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VOUCHERDATE'
            Width = 71
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwAutoVoucherACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwAutoVoucherACCNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCNO'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gvwAutoVoucherACCNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCNAME'
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gvwAutoVoucherBROKER_BANKID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwAutoVoucherBROKER_BANKCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKCODE'
            Visible = False
            GroupIndex = 0
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gvwAutoVoucherBROKER_BANKACCNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKACCNO'
            Visible = False
            GroupIndex = 1
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gvwAutoVoucherBROKER_BANKACCNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKACCNAME'
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object gvwAutoVoucherBROKER_BANKACCBRANCH: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKACCBRANCH'
            Width = 141
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object gvwAutoVoucherBROKER_BANKPAYMENTID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKPAYMENTID'
            Visible = False
            Width = 122
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object gvwAutoVoucherCUST_BANKID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_BANKID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object gvwAutoVoucherCUST_BANKCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_BANKCODE'
            Width = 106
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object gvwAutoVoucherCUST_BANKACCNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_BANKACCNO'
            Width = 136
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object gvwAutoVoucherCUST_BANKACCNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_BANKACCNAME'
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object gvwAutoVoucherCUST_BANKACCBRANCH: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_BANKACCBRANCH'
            Width = 156
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object gvwAutoVoucherVOUCHER_DESC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VOUCHER_DESC'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object gvwAutoVoucherCCYCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CCYCODE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object gvwAutoVoucherEXRATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'EXRATE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object gvwAutoVoucherTRANSFERMODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRANSFERMODE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object gvwAutoVoucherCHARGESAMT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CHARGESAMT'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object gvwAutoVoucherTOTAL_AMOUNT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TOTAL_AMOUNT'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 29
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
            Width = 37
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwAutoVoucherPOSTED: TcxGridDBBandedColumn
            DataBinding.FieldName = 'POSTED'
            RepositoryItem = dmGlobal.chkStandard
            Width = 39
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwAutoVoucherJRNID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'JRNID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 30
            Position.RowIndex = 0
          end
          object gvwAutoVoucherMODDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 31
            Position.RowIndex = 0
          end
          object gvwAutoVoucherMODUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODUI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 32
            Position.RowIndex = 0
          end
          object gvwAutoVoucherAPPDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 33
            Position.RowIndex = 0
          end
          object gvwAutoVoucherAPPUI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APPUI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 34
            Position.RowIndex = 0
          end
          object gvwAutoVoucherUNDER4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4Y'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 35
            Position.RowIndex = 0
          end
          object gvwAutoVoucherUNDER4YDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNDER4YDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 36
            Position.RowIndex = 0
          end
          object gvwAutoVoucherNOTES4Y: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOTES4Y'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 37
            Position.RowIndex = 0
          end
          object gvwAutoVoucherISDEL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ISDEL'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 38
            Position.RowIndex = 0
          end
          object gvwAutoVoucherID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 39
            Position.RowIndex = 0
          end
          object gvwAutoVoucherBICODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BICODE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 40
            Position.RowIndex = 0
          end
          object gvwAutoVoucherBANK_REFERENCE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BANK_REFERENCE'
            Width = 86
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwAutoVoucherBANK_INSTRUCTION: TcxGridDBBandedColumn
            Caption = 'Upload'
            DataBinding.FieldName = 'BANK_INSTRUCTION'
            RepositoryItem = dmGlobal.chkStandard
            Width = 38
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwAutoVoucherCCYCODE_FX: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CCYCODE_FX'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 41
            Position.RowIndex = 0
          end
          object gvwAutoVoucherCHARGESAMT_FX: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CHARGESAMT_FX'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 42
            Position.RowIndex = 0
          end
          object gvwAutoVoucherTOTAL_AMOUNT_FX: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TOTAL_AMOUNT_FX'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 43
            Position.RowIndex = 0
          end
          object gvwAutoVoucherTOTAL_AMOUNT_FX_CHANGED: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TOTAL_AMOUNT_FX_CHANGED'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 44
            Position.RowIndex = 0
          end
          object gvwAutoVoucherTOTAL_AMOUNT_FX_DIFF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TOTAL_AMOUNT_FX_DIFF'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 45
            Position.RowIndex = 0
          end
          object gvwAutoVoucherBROKER_BANKINFO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKINFO'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 46
            Position.RowIndex = 0
          end
          object gvwAutoVoucherACCSOPID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCSOPID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 47
            Position.RowIndex = 0
          end
          object gvwAutoVoucherSWIFT_CODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SWIFT_CODE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 48
            Position.RowIndex = 0
          end
          object gvwAutoVoucherDEAL_EXRATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DEAL_EXRATE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 49
            Position.RowIndex = 0
          end
          object gvwAutoVoucherTRANSTYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRANSTYPE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 50
            Position.RowIndex = 0
          end
          object gvwAutoVoucherTRANSFER_AMT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRANSFER_AMT'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 51
            Position.RowIndex = 0
          end
          object gvwAutoVoucherMANUAL_VOUCHER: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MANUAL_VOUCHER'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 52
            Position.RowIndex = 0
          end
          object gvwAutoVoucherSESION: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SESION'
            Width = 41
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwAutoVoucherSESION_TIME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SESION_TIME'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwAutoVoucherREQFF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REQFF'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 53
            Position.RowIndex = 0
          end
        end
        object cxGridDBCardView1: TcxGridDBCardView
          Navigator.Buttons.CustomButtons = <>
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 934
        Height = 444
        Align = alClient
        PopupMenu = popMaster
        TabOrder = 0
        OnEnter = grdMasterEnter
        object gvwManualVoucher: TcxGridDBBandedTableView
          PopupMenu = popMaster
          OnKeyDown = gvwMasterKeyDown
          Navigator.Buttons.CustomButtons = <>
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
            Position.ColIndex = 0
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
            Width = 72
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwManualVoucherENTRYDATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ENTRYDATE'
            Width = 77
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwManualVoucherVOUCHERDATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VOUCHERDATE'
            Width = 71
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwManualVoucherACCID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACCID'
            Visible = False
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
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gvwManualVoucherBROKER_BANKID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gvwManualVoucherBROKER_BANKCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKCODE'
            Visible = False
            GroupIndex = 0
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
            Width = 244
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gvwManualVoucherBROKER_BANKACCBRANCH: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BROKER_BANKACCBRANCH'
            Width = 141
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
            Width = 106
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object gvwManualVoucherCUST_BANKACCNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_BANKACCNO'
            Width = 136
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object gvwManualVoucherCUST_BANKACCNAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_BANKACCNAME'
            Width = 337
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object gvwManualVoucherCUST_BANKACCBRANCH: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_BANKACCBRANCH'
            Width = 156
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object gvwManualVoucherVOUCHER_DESC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VOUCHER_DESC'
            Width = 101
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object gvwManualVoucherCCYCODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CCYCODE'
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
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object gvwManualVoucherCHARGESAMT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CHARGESAMT'
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object gvwManualVoucherTOTAL_AMOUNT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TOTAL_AMOUNT'
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
            Width = 35
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwManualVoucherPOSTED: TcxGridDBBandedColumn
            DataBinding.FieldName = 'POSTED'
            RepositoryItem = dmGlobal.chkStandard
            Width = 39
            Position.BandIndex = 0
            Position.ColIndex = 2
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
          object gvwManualVoucherSWIFT_CODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SWIFT_CODE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 47
            Position.RowIndex = 0
          end
          object gvwManualVoucherDEAL_EXRATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DEAL_EXRATE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 48
            Position.RowIndex = 0
          end
          object gvwManualVoucherTRANSTYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRANSTYPE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 49
            Position.RowIndex = 0
          end
          object gvwManualVoucherTRANSFER_AMT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRANSFER_AMT'
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
        Permission = '[Bank Receive List].View Approval Data'
      end
      item
        ActionName = 'actOpen'
        Permission = '[Bank Receive List].View'
      end
      item
        ActionName = 'actNew'
        Permission = '[Bank Receive List].New'
      end
      item
        ActionName = 'actEdit'
        Permission = '[Bank Receive List].Edit'
      end
      item
        ActionName = 'actDelete'
        Permission = '[Bank Receive List].Delete'
      end
      item
        ActionName = 'actRefresh'
        Permission = '[Bank Receive List].Refresh'
      end
      item
        ActionName = 'actCancel'
        Permission = '[Bank Receive List].Cancel'
      end
      item
        ActionName = 'actInsertFromCurrentData'
        Permission = '[Bank Receive List].Copy From Selected Data'
      end
      item
        ActionName = 'actApprove'
        Permission = '[Bank Receive List].Approve'
      end
      item
        ActionName = 'actReject'
        Permission = '[Bank Receive List].Reject'
      end>
    Left = 299
  end
  inherited imlBrowse: TImageList
    Bitmap = {
      494C01010E002700300410001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00000000000000000000000000848484008484
      84008C8C8C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004C47456AB9AFACE94E45437F020202030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009C9C9C009C9C9C00D6CECE009494940039393900525252009C949400C6C6
      C600D6D6D6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000756C6CB3E3D9D6FF6F605DC00605050B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C009C9C
      9C00F7F7F700FFFFFF00D6D6D6009C9C9C004242420021182100211821003131
      310063636300848484008C8C8C00000000000000000000000000000000000000
      00000000000000000000000000006A6060AAD6CAC8FF5B4C4AB6040303080000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000948C8C009C9C9C00EFEFEF00FFFF
      FF00EFE7E700C6C6C6009C9C9C008C8C8C009494940084848400636363003939
      3900182121002118210073737300000000000000000000000000000000000000
      0000000000000000000000000000625857A6D2C5C3FF564847C2030303090000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C00E7E7E700E7E7E700BDBD
      BD00A5A5A500B5ADAD00C6BDBD00A5A5A50094949400948C8C00949494009C94
      94008C8C8C006B6B6B0084848400000000000000000000000000000000000000
      000000000000000000001916162FAB9D9DE4D6C9C8FF857676F81B17174A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000094949400ADADAD00A5A5A500ADAD
      AD00C6C6C600D6D6D600EFEFEF00EFEFEF00DEDEDE00C6C6C600ADADAD009C9C
      9C00948C8C00949494008C8C8C00000000000000000000000000000000000000
      00000000000003030306807374B9EADCDDFFB3A8A8FFA99D9DFF6A5D5DDB0605
      050F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000948C8C00ADADAD00C6C6C600CECE
      CE00C6C6C600DEDEDE00CECECE00A5ADA500BDBDBD00CECECE00D6D6D600D6D6
      D600C6C6C600B5B5B50094949400000000000000000000000000000000000000
      0000000000004840417BEEE3E3FFE8DDDDFFA39999FFDCD1CFFFBAABAAFF4136
      37A5020202070000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C9C9C00CECECE00CECE
      CE00DEDEDE00C6C6C600B5B5B500A5D6A500BDC6BD00C6A5A500ADA5A500A5A5
      A500B5B5B500C6BDBD00A5A5A500000000001411112C797271B1807675B92521
      20531612123ACBBEBFF7FFFDFCFFC1B7B6FFAAA09FFFE5D9D8FFDBCDCCFF8676
      76FB241E1E610000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C00BDBD
      BD00ADADAD00ADADAD00E7E7E700F7EFEF00EFEFEF00EFE7DE00D6D6D600CECE
      CE00B5B5B5009494940000000000000000004E4342A96864627C55504F624F42
      42AD807070EDFBF1F1FFF4EBE9FFA39897FFB4A8A7FFE9DDDCFFDACBC9FFAB9A
      99FF665657F10E0B0B2A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C9C
      9C00D6D6D600CECECE009C9C9C00BDBDBD00D6D6D600D6D6D600D6D6D600C6C6
      C600ADADAD00000000000000000000000000362E2D8906050508050505073A2F
      2F91D4C4C4FFFFFCFCFFDBD6D4FFA39896FFB9ACACFFEFE4E3FFD5C6C4FFB2A1
      9FFF7C6A6AFF3C3032BB01010106000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFE7E700FFDECE00E7C6BD00E7C6BD00E7CEC600DED6CE00CECECE009494
      94000000000000000000000000000000000036302F72716969BD706564C0A998
      98FFF8EEEEFFFEFEFEFFCDC9C8FFAEA19FFFCABFBDFFFCF8F7FFF5F0EFFFD9CF
      CFFF8E7B7BFF5E4D4EFF1E17177E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500FFAD9C00000000000000
      0000000000000000000000000000000000000605050C3A343580877977FEECE1
      E0FFFFFFFFFFFEFEFEFFEAE4E4FFDBD4D3FFECE5E5FFFCF9F9FFF5F0EFFFD9CF
      CFFFD9CFCFFF7A6A6CFF493A3CF61410115A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD9400000000000000
      0000000000000000000000000000000000000000000028222364B6A7A5FDF7EF
      EEFFD5D1D2FFAAA4A4FFA7A3A3FFADAAAAFFA8A6A6FF97908FFF9F9C9CFFADAA
      AAFFD9CFCFFFD9CFCFFF918588FF483D41E60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE9C9C00FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD9C00000000000000
      000000000000000000000000000000000000000000004A444481CCC0C1FFF7EF
      EEFFA19695FF8A7E7DFF998C8BFFA69F9FFF9E9695FF7A6968FF847778FF8C86
      86FF928887FFEFE4E3FFD8D0D0FF746A6DEB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      9C00FFE7D600FFDECE00FFCEBD00FFC6AD00FFBDA500F7AD9C00000000000000
      0000000000000000000000000000000000000000000017151523595253958980
      81DCF7EFEEFFEFE4E3FFEFE4E3FFEFE4E3FFEFE4E3FFEFE4E3FFEFE4E3FFEFE4
      E3FFEFE4E3FF9A9193EF6A6363B52A2626490000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CE9C
      9C00CE9C9C00CE9C9C00CE9C9C00F7AD9C00F7AD9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000A08
      09282F29298B766D6FCE8C8385E4958C8EE8998F91E9918788E98E8486E56B64
      66BF322C2C7B0D0B0C3404030309000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD5A5A00AD52
      5200A54A4A00AD949400C6CEC600CECEC600CECEC600C6CEC600C6CEC600B59C
      9C009C4242009C424200A55252000000000000000000000000000052AD000052
      AD00004A9C00004A9400004A9400004A9400004A9400004A9400004A9400004A
      9400004A940000428400000000000000000000000000000000000052AD000052
      AD00004A9C00004A9400004A9400004A9400004A9400004A9400004A9400004A
      9400004A940000428400000000000000000000000000000000000052AD000052
      AD00004A9C00004A9400004A9400004A9400004A9400004A9400004A9400004A
      9400004A940000428400000000000000000000000000BD7B7300CE636300CE6B
      6B00B55A5A009C848400BDA5A500E7CECE00FFF7F700FFFFF700F7F7F700CEB5
      B500942929009C313100C65A5A00AD5A5A00000000000063CE000073EF000073
      E700006BDE00006BD6000063CE000063CE000063CE000063CE000063CE000063
      CE00006BD600005ABD000042840000000000000000000063CE000073EF000073
      E700006BDE00006BD6000063CE000063CE000063CE000063CE000063CE000063
      CE00006BD600005ABD000042840000000000000000000063CE000073EF000073
      E700006BDE00006BD6000063CE000063CE000063CE000063CE000063CE000063
      CE00006BD600005ABD00004284000000000000000000BD7B7300CE636300CE63
      6300B55A5A009C7B7B009C424200B5737300E7DEDE00FFF7F700FFFFFF00D6B5
      B500943131009C313100BD5A5A00AD5A5A00000000000073E7000084FF00007B
      FF00007BF7000073F7000073EF00006BE700006BE700006BE700006BE700006B
      E7000073E700006BD600004A940000000000000000000073E7000084FF00007B
      FF00007BF7000073F7000073EF00006BE700006BE700006BE700006BE700006B
      E7000073E700006BD600004A940000000000000000000073E7000084FF00007B
      FF00007BF7000073F7000073EF00006BE700006BE700006BE700006BE700006B
      E7000073E700006BD600004A94000000000000000000BD7B7300CE636300CE63
      6300B55A5A00AD8484009C3939009C393900CEBDBD00EFEFEF00FFFFFF00E7C6
      C6009429290094313100BD5A5A00AD5A5A0000000000007BF7000884FF000084
      FF00007BFF00007BF7000073EF000073E700006BE700006BDE00006BDE00006B
      DE00006BE7000063CE00004A94000000000000000000007BF7000884FF000084
      FF00007BFF00007BF7000073EF0084BDF700006BE700006BDE00006BDE00006B
      DE00006BE7000063CE00004A94000000000000000000007BF7000884FF000084
      FF00007BFF00007BF700107BEF00CEE7FF00318CE700006BDE00006BDE00006B
      DE00006BE7000063CE00004A94000000000000000000BD7B7300CE636300CE63
      6300B55A5A00B58C8C009C4A4A0094313100A59C9C00D6D6D600FFFFFF00E7C6
      C6009429290094313100BD5A5A00AD5A5A0000000000007BF700188CFF00108C
      FF000084FF00FFFFFF00CEE7FF00107BEF000073EF009CCEF700FFFFFF00006B
      DE00006BE7000063CE00004A94000000000000000000007BF700188CFF00108C
      FF000084FF00007BFF00FFFFFF0084BDF7000073EF00006BE700006BDE00006B
      DE00006BE7000063CE00004A94000000000000000000007BF700188CFF00108C
      FF000084FF001084FF00CEE7FF00FFFFFF008CC6F700006BE700006BDE00006B
      DE00006BE7000063CE00004A94000000000000000000BD7B7300CE636300CE63
      6300BD5A5A00C6948C00C6949400B5848400AD8C8C00BDA5A500E7C6C600DEAD
      AD00A5393900A5393900C65A5A00AD5A5A0000000000007BF700399CFF002194
      FF00108CFF00D6E7FF00FFFFFF00CEE7FF009CCEFF00FFFFFF00CEE7FF00006B
      DE00006BE7000063CE00004A94000000000000000000007BF700399CFF002194
      FF00108CFF00FFFFFF00FFFFFF009CCEFF00429CF7004294EF004294EF004294
      EF00006BE7000063CE00004A94000000000000000000007BF700399CFF002194
      FF00218CFF00D6E7FF00FFFFFF00FFFFFF00DEEFFF000073EF000073E700006B
      DE00006BE7000063CE00004A94000000000000000000BD7B7300CE636300CE63
      6300CE636300CE636300CE636300CE636300CE636300C65A5A00C65A5A00CE63
      6300CE636300CE636300CE6B6B00AD525A0000000000007BF70063ADFF00319C
      FF00188CFF00218CFF00D6E7FF00FFFFFF00FFFFFF00CEE7FF00107BEF000073
      E7000073E7000063D600004A94000000000000000000007BF70063ADFF00319C
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000073E7000063D600004A94000000000000000000007BF70063ADFF00319C
      FF00E7F7FF00FFFFFF00D6E7FF0063ADFF00FFFFFF00429CF7000073EF000073
      E7000073E7000063D600004A94000000000000000000BD7B7300B5525200B55A
      5A00C6848400D6A5A500D6ADAD00D6ADA500D6ADAD00D6A5A500D6A5A500D6AD
      A500D6ADAD00D69C9C00CE636300AD52520000000000007BF70073BDFF00429C
      FF002194FF00108CFF00A5D6FF00FFFFFF00FFFFFF00CEE7FF001084F7000073
      EF000073EF00006BD600004A9C000000000000000000007BF70073BDFF00429C
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000073EF00006BD600004A9C000000000000000000007BF70073BDFF00429C
      FF0073BDFF00ADD6FF00188CFF000084FF00B5D6FF009CCEFF00007BF7000073
      EF000073EF00006BD600004A9C000000000000000000BD7B7300AD524A00E7CE
      CE00F7F7F700F7F7EF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700DEBDBD00C65A5A00AD525A0000000000007BF70084C6FF004AA5
      FF002994FF00ADD6FF00FFFFFF00D6EFFF00D6EFFF00FFFFFF00CEE7FF00007B
      F700007BF700006BE7000052AD000000000000000000007BF70084C6FF004AA5
      FF002994FF00FFFFFF00FFFFFF00A5D6FF004AA5FF0042A5FF00429CFF00429C
      FF00007BF700006BE7000052AD000000000000000000007BF70084C6FF004AA5
      FF002994FF00188CFF000884FF000884FF002994FF00E7EFFF001084FF00007B
      F700007BF700006BE7000052AD000000000000000000BD7B7300B5524A00EFD6
      D600FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7F7F700DEBDBD00C65A5A00AD525A0000000000007BF7008CC6FF0052AD
      FF00399CFF00F7FFFF00D6EFFF002194FF002194FF00D6EFFF00FFFFFF000084
      FF00007BFF000073EF00005AB5000000000000000000007BF7008CC6FF0052AD
      FF00399CFF003194FF00FFFFFF008CC6FF00108CFF000884FF000084FF000084
      FF00007BFF000073EF00005AB5000000000000000000007BF7008CC6FF0052AD
      FF00399CFF003194FF00218CFF00188CFF00108CFF006BB5FF0073BDFF000084
      FF00007BFF000073EF00005AB5000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600EFEFEF00DEBDBD00C65A5A00AD525A0000000000007BF7009CCEFF006BB5
      FF0042A5FF00399CFF002994FF002194FF002194FF00188CFF000884FF000884
      FF000084FF00007BF700005AC6000000000000000000007BF7009CCEFF006BB5
      FF0042A5FF00399CFF002994FF008CC6FF002194FF00188CFF000884FF000884
      FF000084FF00007BF700005AC6000000000000000000007BF7009CCEFF006BB5
      FF0042A5FF00399CFF002994FF002194FF002194FF00188CFF0084C6FF000884
      FF000084FF00007BF700005AC6000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00DED6D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DED6
      D600EFEFEF00DEBDBD00C65A5A00AD525A0000000000007BF700A5CEFF0094CE
      FF007BBDFF0073B5FF0063ADFF004AA5FF00399CFF002194FF00108CFF000884
      FF000884FF00007BFF000063CE000000000000000000007BF700A5CEFF0094CE
      FF007BBDFF0073B5FF0063ADFF004AA5FF00399CFF002194FF00108CFF000884
      FF000884FF00007BFF000063CE000000000000000000007BF700A5CEFF0094CE
      FF007BBDFF0073B5FF0063ADFF004AA5FF00399CFF002194FF00108CFF000884
      FF000884FF00007BFF000063CE000000000000000000BD7B7300B5524A00EFD6
      D600F7F7EF00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DEDE00E7DE
      DE00EFEFEF00DEBDBD00C65A5A00AD525A0000000000007BF70084BDFF00A5CE
      FF00A5D6FF009CCEFF008CC6FF0073BDFF0052A5FF00319CFF00188CFF00108C
      FF00108CFF000084FF00006BDE000000000000000000007BF70084BDFF00A5CE
      FF00A5D6FF009CCEFF008CC6FF0073BDFF0052A5FF00319CFF00188CFF00108C
      FF00108CFF000084FF00006BDE000000000000000000007BF70084BDFF00A5CE
      FF00A5D6FF009CCEFF008CC6FF0073BDFF0052A5FF00319CFF00188CFF00108C
      FF00108CFF000084FF00006BDE000000000000000000BD7B7300B5524A00EFD6
      D600EFEFEF00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600EFEFEF00DEBDBD00C65A5A00AD525A0000000000000000000884FF002994
      FF002994FF002994FF002194FF00188CFF000884FF000084FF00007BFF00007B
      F700007BF7000073E700000000000000000000000000000000000884FF002994
      FF002994FF002994FF002194FF00188CFF000884FF000084FF00007BFF00007B
      F700007BF7000073E700000000000000000000000000000000000884FF002994
      FF002994FF002994FF002194FF00188CFF000884FF000084FF00007BFF00007B
      F700007BF7000073E700000000000000000000000000BD7B7300B5524A00E7D6
      CE00FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00FFF7F700DEBDBD00C65A5A00AD525A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD524A00CEB5
      B500D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00D6D6D600CEADAD00A54A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000001884000018
      840000187B0000106B0000106B0000106B0000106B0000106B0000106B000010
      6B0000106B0000105A0000000000000000000000000000000000001884000018
      840000187B0000106B0000106B0000106B0000106B0000106B0000106B000010
      6B0000106B0000105A0000000000000000000000000000000000001884000018
      840000187B0000106B0000106B0000106B0000106B0000106B0000106B000010
      6B0000106B0000105A00000000000000000000000000000000000052AD000052
      AD00004A9C00004A9400004A9400004A9400004A9400004A9400004A9400004A
      9400004A9400004284000000000000000000000000000021AD000029CE000029
      C6000021BD000021B5000021AD000021AD000021AD000021AD000021AD000021
      AD000021B5000018940000105A0000000000000000000021AD000029CE000029
      C6000021BD000021B5000021AD000021AD000021AD000021AD000021AD000021
      AD000021B5000018940000105A0000000000000000000021AD000029CE000029
      C6000021BD000021B5000021AD000021AD000021AD000021AD000021AD000021
      AD000021B5000018940000105A0000000000000000000063CE000073EF000073
      E700006BDE00006BD6000063CE000063CE000063CE000063CE000063CE000063
      CE00006BD600005ABD000042840000000000000000000029CE000031EF000029
      DE000029DE000029D6000029CE000029C6000029C6000029C6000029C6000029
      C6000029C6000021B50000106B0000000000000000000029CE000031EF000029
      DE000029DE000029D6000029CE000029C6000029C6000029C6000029C6000029
      C6000029C6000021B50000106B0000000000000000000029CE000031EF000029
      DE000029DE000029D6000029CE000029C6000029C6000029C6000029C6000029
      C6000029C6000021B50000106B0000000000000000000073E7000084FF00007B
      FF00007BF7000073F7000073EF00006BE700006BE700006BE700006BE700006B
      E7000073E700006BD600004A940000000000000000000029D6000031F7000031
      EF000029DE000029D6000029CE000029C6000029C6000021BD000021BD000021
      BD000029C6000021AD0000106B0000000000000000000029D6000031F7000031
      EF000029DE000029D6000029CE000029C6000029C6000021BD000021BD000021
      BD000029C6000021AD0000106B0000000000000000000029D6000031F7000031
      EF000029DE000029D600526BDE00EFF7FF009CADE7001031C6000021BD000021
      BD000029C6000021AD0000106B000000000000000000007BF7000884FF000084
      FF001084FF0084BDFF00FFFFFF00FFFFFF00FFFFFF0084B5EF001073DE00006B
      DE00006BE7000063CE00004A940000000000000000000029D6000039FF000031
      FF000031EF000029DE000029D600FFFFFF00F7FFFF000029C6000021BD000021
      BD000029C6000021AD0000106B0000000000000000000029D6000039FF000031
      FF000031EF000029DE000029D6000029D6000029CE000029C6000021BD000021
      BD000029C6000021AD0000106B0000000000000000000029D6000039FF000031
      FF00ADBDFF001039E7000029D600ADBDF700FFFFFF009CADEF000021BD000021
      BD000029C6000021AD0000106B000000000000000000007BF700188CFF00108C
      FF00A5D6FF00EFF7FF0063ADFF00429CF70063ADF700EFF7FF009CCEF700006B
      DE00006BE7000063CE00004A940000000000000000000029D6002952FF000842
      FF000031FF000031EF000029E700FFFFFF00FFFFFF000029CE000029C6000021
      BD000029C6000021AD0000106B0000000000000000000029D6002952FF000842
      FF000031FF000031EF000029E7000029DE000029D6000029CE000029C6000021
      BD000029C6000021AD0000106B0000000000000000000029D6002952FF000842
      FF00FFFFFF008CA5F7000029E700526BE700FFFFFF00BDCEF7000029C6000021
      BD000029C6000021AD0000106B000000000000000000007BF700399CFF002194
      FF00FFFFFF0063B5FF00007BFF00007BF700007BF70063ADF700FFFFFF00006B
      DE00006BE7000063CE00004A940000000000000000000029D6004A73FF00184A
      FF000031FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000029
      CE000029C6000021B50000106B0000000000000000000029D6004A73FF00184A
      FF000031FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000029
      CE000029C6000021B50000106B0000000000000000000029D6004A73FF00184A
      FF00FFFFFF00FFFFFF008CA5F700EFF7FF00FFFFFF009CB5F7000029D6000029
      CE000029C6000021B50000106B000000000000000000007BF70063ADFF00319C
      FF00FFFFFF004AA5FF0063B5FF00FFFFFF00007BFF00218CF70084BDF7000073
      E7000073E7000063D600004A940000000000000000000029D6006B8CFF00295A
      FF000839FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000029
      D6000029CE000021B5000018730000000000000000000029D6006B8CFF00295A
      FF000839FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000029
      D6000029CE000021B5000018730000000000000000000029D6006B8CFF00295A
      FF006384FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFF7FF003152DE000029
      D6000029CE000021B500001873000000000000000000007BF70073BDFF00429C
      FF00F7FFFF00B5DEFF0084C6FF00FFFFFF00FFFFFF0063ADFF00007BF7000073
      EF000073EF00006BD600004A9C0000000000000000000029D6007394FF003163
      FF001042FF000031FF000031F700FFFFFF00FFFFFF000031EF000029E7000029
      DE000029DE000029C6000018840000000000000000000029D6007394FF003163
      FF001042FF000031FF000031F7000031F7000031F7000031EF000029E7000029
      DE000029DE000029C6000018840000000000000000000029D6007394FF003163
      FF001042FF00426BFF00849CFF00637BF700CEDEFF00FFFFFF00EFF7FF003152
      E7000029DE000029C600001884000000000000000000007BF70084C6FF004AA5
      FF007BBDFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDDEFF00007B
      F700007BF700006BE7000052AD0000000000000000000029D600849CFF00426B
      FF002152FF00184AFF000839FF00FFFFFF00FFFFFF000031F7000031EF000031
      E7000029E7000029CE000018940000000000000000000029D600849CFF00426B
      FF002152FF00184AFF000839FF000031FF000031FF000031F7000031EF000031
      E7000029E7000029CE000018940000000000000000000029D600849CFF00426B
      FF002152FF00184AFF000839FF000031FF001042FF00EFF7FF00FFFFFF00EFF7
      FF000029E7000029CE00001894000000000000000000007BF7008CC6FF0052AD
      FF00399CFF0063B5FF00C6E7FF00FFFFFF00FFFFFF00B5DEFF002194FF000084
      FF00007BFF000073EF00005AB50000000000000000000029D6008CA5FF005A7B
      FF00295AFF002952FF00184AFF000839FF000839FF000031FF000031F7000031
      EF000031EF000029D60000219C0000000000000000000029D6008CA5FF005A7B
      FF00295AFF002952FF00184AFF000839FF000839FF000031FF000031F7000031
      EF000031EF000029D60000219C0000000000000000000029D6008CA5FF005A7B
      FF00295AFF002952FF00184AFF000839FF000839FF00315AFF00EFF7FF00CEDE
      FF000031EF000029D60000219C000000000000000000007BF7009CCEFF006BB5
      FF0042A5FF00399CFF0094CEFF00FFFFFF005AADFF00188CFF000884FF000884
      FF000084FF00007BF700005AC60000000000000000000029D60094ADFF008CA5
      FF00738CFF006384FF004A73FF003963FF002952FF000839FF000031FF000031
      F7000031F7000029E7000021AD0000000000000000000029D60094ADFF008CA5
      FF00738CFF006384FF004A73FF003963FF002952FF000839FF000031FF000031
      F7000031F7000029E7000021AD0000000000000000000029D60094ADFF008CA5
      FF00738CFF006384FF004A73FF003963FF002952FF000839FF000031FF000031
      F7000031F7000029E7000021AD000000000000000000007BF700A5CEFF0094CE
      FF007BBDFF0073B5FF0063ADFF004AA5FF00399CFF002194FF00108CFF000884
      FF000884FF00007BFF000063CE0000000000000000000029D6007394FF0094AD
      FF009CB5FF008CA5FF007B9CFF006384FF003963FF00184AFF000031FF000031
      FF000031FF000031EF000021BD0000000000000000000029D6007394FF0094AD
      FF009CB5FF008CA5FF007B9CFF006384FF003963FF00184AFF000031FF000031
      FF000031FF000031EF000021BD0000000000000000000029D6007394FF0094AD
      FF009CB5FF008CA5FF007B9CFF006384FF003963FF00184AFF000031FF000031
      FF000031FF000031EF000021BD000000000000000000007BF70084BDFF00A5CE
      FF00A5D6FF009CCEFF008CC6FF0073BDFF0052A5FF00319CFF00188CFF00108C
      FF00108CFF000084FF00006BDE000000000000000000000000000031F7001042
      FF00184AFF001042FF000842FF000031FF000031F7000031E7000029DE000029
      DE000029DE000029CE00000000000000000000000000000000000031F7001042
      FF00184AFF001042FF000842FF000031FF000031F7000031E7000029DE000029
      DE000029DE000029CE00000000000000000000000000000000000031F7001042
      FF00184AFF001042FF000842FF000031FF000031F7000031E7000029DE000029
      DE000029DE000029CE00000000000000000000000000000000000884FF002994
      FF002994FF002994FF002194FF00188CFF000884FF000084FF00007BFF00007B
      F700007BF7000073E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000844200008442
      0000733900006B3100006B3100006B3100006B3100006B3100006B3100006B31
      00006B3100005A29000000000000000000000000000000000000844200008442
      0000733900006B3100006B3100006B3100006B3100006B3100006B3100006B31
      00006B3100005A29000000000000000000000000000000000000087B1000087B
      100008731000006B080000630800006308000063080000630800006308000063
      0800006308000052080000000000000000000000000000000000087B1000087B
      100008731000006B080000630800006308000063080000630800006308000063
      08000063080000520800000000000000000000000000AD520000CE630000C663
      0000BD5A0000B55A0000AD520000AD520000AD520000AD520000AD520000AD52
      0000B55A0000944A00005A2900000000000000000000AD520000CE630000C663
      0000BD5A0000B55A0000AD520000AD520000AD520000AD520000AD520000AD52
      0000B55A0000944A00005A2900000000000000000000109C290018B5390010AD
      310010AD210008AD180008A5180008A5100008A5100008A5100008A5100008A5
      100008AD1800008C1000005208000000000000000000109C290018B5390010AD
      310010AD210008AD180008A5180008A5100008A5100008A5100008A5100008A5
      100008AD1800008C1000005208000000000000000000C6630000EF730000DE6B
      0000D66B0000D6630000CE630000C6630000BD5A0000BD5A0000BD5A0000BD5A
      0000C6630000B55A00006B3100000000000000000000C6630000EF730000DE6B
      0000D66B0000D6630000CE630000C6630000BD5A0000BD5A0000BD5A0000BD5A
      0000C6630000B55A00006B310000000000000000000018AD390021C6520018C6
      420018BD390010BD310010BD210008BD180008BD180008BD180008BD180008B5
      180008BD180008AD100000630800000000000000000018AD390021C6520018C6
      420018BD390010BD310010BD210008BD180008BD180008BD180008BD180008B5
      180008BD180008AD1000006308000000000000000000D66B0000EF730000E773
      0000DE6B0000D66B0000CE630000C6630000C65A0000BD5A0000BD5A0000BD5A
      0000BD5A0000AD5200006B3100000000000000000000D66B0000EF730000E773
      0000DE6B0000D66B0000CE630000C6630000C65A0000BD5A0000BD5A0000BD5A
      0000BD5A0000AD5200006B310000000000000000000021B5420031C6630029BD
      520021BD4A0018BD390010B5310010B5290029BD3900D6F7D60008B5180008B5
      180008B5180008A51000006B0800000000000000000021B5420031C6630029BD
      520021BD4A0018BD3900D6F7DE0031BD420008B5210008B5180008B5180008B5
      180008B5180008A51000006B08000000000000000000D66B0000F7841000EF7B
      0800E7730000FFFFFF00D66B0000D66B0000CE630000D68C4200F7EFDE00BD5A
      0000BD5A0000AD5200006B3100000000000000000000D66B0000F7841000EF7B
      0800E7730000FFEFDE00E7944200D66B0000CE630000C6630000FFFFFF00BD5A
      0000BD5A0000AD5200006B310000000000000000000021B54A0039CE730031C6
      630029BD520021BD4A0018BD420052CE6B00F7FFF700FFFFFF0008B5180008B5
      180008BD180008A5100000630800000000000000000021B54A0039CE730031C6
      630029BD520021BD4A00FFFFFF00F7FFF7004ACE630008B5210008B5180008B5
      180008BD180008A51000006308000000000000000000D66B0000FF943100F784
      1800F77B0800FFFFFF00E76B0000DE7B2100F7D6AD00FFFFFF00FFFFFF00BD5A
      0000BD5A0000AD5200006B3100000000000000000000D66B0000FF943100F784
      1800F77B0800FFFFFF00FFFFFF00F7D6AD00DE7B2100CE630000FFFFFF00BD5A
      0000BD5A0000AD5200006B310000000000000000000021B54A005AD68C0042CE
      7B0031C66B0029BD5A0084DE9C00FFFFFF00FFFFFF00FFFFFF0010B5290008B5
      180008B5180008A5100000630800000000000000000021B54A005AD68C0042CE
      7B0031C66B0029BD5A00FFFFFF00FFFFFF00FFFFFF007BD68C0010B5290008B5
      180008B5180008A51000006308000000000000000000D66B0000FFA55200F78C
      2900F7841000FFFFFF00F7BD8400FFF7EF00FFFFFF00FFFFFF00FFFFFF00CE63
      0000C6630000B55200006B3100000000000000000000D66B0000FFA55200F78C
      2900F7841000FFFFFF00FFFFFF00FFFFFF00FFF7EF00EFB58400FFFFFF00CE63
      0000C6630000B55200006B310000000000000000000021B54A0073DE9C0052CE
      840039C67300B5EFC600FFFFFF00FFFFFF00FFFFFF00FFFFFF0018BD310010B5
      290008BD210008A51800006B0800000000000000000021B54A0073DE9C0052CE
      840039C6730031C66B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADE7B50010B5
      290008BD210008A51800006B08000000000000000000D66B0000FFB56B00F794
      3100F7841000FFFFFF00FFB57300FFF7EF00FFFFFF00FFFFFF00FFFFFF00D66B
      0000CE630000BD5A0000733900000000000000000000D66B0000FFB56B00F794
      3100F7841000FFFFFF00FFFFFF00FFFFFF00FFF7EF00EFAD7300FFFFFF00D66B
      0000CE630000BD5A000073390000000000000000000021B54A008CDEAD005AD6
      8C0042CE7300B5EFCE00FFFFFF00FFFFFF00FFFFFF00FFFFFF0018BD420018BD
      390010BD310008AD2100006B0800000000000000000021B54A008CDEAD005AD6
      8C0042CE730031C66B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADE7BD0018BD
      390010BD310008AD2100006B08000000000000000000D66B0000FFBD7B00F79C
      3900F78C2100FFFFFF00F77B0000F7841000FFD6AD00FFFFFF00FFFFFF00DE6B
      0000DE6B0000C6630000844200000000000000000000D66B0000FFBD7B00F79C
      3900F78C2100FFFFFF00FFFFFF00FFD6AD00F7841000EF730000FFFFFF00DE6B
      0000DE6B0000C663000084420000000000000000000021B54A0094E7B50063D6
      8C004ACE7B0039C673007BDEA500FFFFFF00FFFFFF00FFFFFF0021BD520018BD
      420018BD390010AD2900087B1000000000000000000021B54A0094E7B50063D6
      8C004ACE7B0039C67300FFFFFF00FFFFFF00FFFFFF007BDE9C0021BD520018BD
      420018BD390010AD2900087B10000000000000000000D66B0000FFBD8400F79C
      4A00F7943100FFFFFF00F7841000F77B0800F77B0000F79C4200FFEFDE00E773
      0000E7730000CE630000944200000000000000000000D66B0000FFBD8400F79C
      4A00F7943100FFF7E700F7A54A00F77B0800F77B0000F77B0000FFFFFF00E773
      0000E7730000CE63000094420000000000000000000021B54A009CE7BD006BD6
      940052CE84004ACE7B0042CE73005AD68C00F7FFF700FFFFFF0029C6630021BD
      520021C64A0018B5390008841800000000000000000021B54A009CE7BD006BD6
      940052CE84004ACE7B00FFFFFF00F7FFF7005AD68C0031C66B0029C6630021BD
      520021C64A0018B53900088418000000000000000000D66B0000FFC69400F7AD
      6300F7943900F7943100F78C2100F7841800F7841000F77B0800F77B0000EF73
      0000EF730000D66B00009C4A00000000000000000000D66B0000FFC69400F7AD
      6300F7943900F7943100F78C2100F7841800F7841000F77B0800F77B0000EF73
      0000EF730000D66B00009C4A0000000000000000000021B54A00ADE7C60084DE
      A5005AD68C005ACE84004ACE7B0042CE7B004ACE8400DEF7E70031C66B0029C6
      630029C65A0021B54A00108C1800000000000000000021B54A00ADE7C60084DE
      A5005AD68C005ACE8400DEF7E70052CE840042CE730039C6730031C66B0029C6
      630029C65A0021B54A00108C18000000000000000000D66B0000FFCE9C00FFC6
      9400FFB57300F7AD6B00F7A55200F79C4200F7943100F7841000F77B0800F77B
      0000F77B0000E7730000AD5200000000000000000000D66B0000FFCE9C00FFC6
      9400FFB57300F7AD6B00F7A55200F79C4200F7943100F7841000F77B0800F77B
      0000F77B0000E7730000AD520000000000000000000021B54A00ADEFC600A5E7
      BD0094DEAD0084DEA5007BD69C0063D694005ACE840042CE7B0031C66B0031C6
      6B0031C66B0021BD5200109C2100000000000000000021B54A00ADEFC600A5E7
      BD0094DEAD0084DEA5007BD69C0063D694005ACE840042CE7B0031C66B0031C6
      6B0031C66B0021BD5200109C21000000000000000000D66B0000FFBD7B00FFCE
      9C00FFCE9C00FFC69400FFBD8400FFB56B00FF9C4200F78C2100F7840800F77B
      0000FF7B0000EF730000B55A00000000000000000000D66B0000FFBD7B00FFCE
      9C00FFCE9C00FFC69400FFBD8400FFB56B00FF9C4200F78C2100F7840800F77B
      0000FF7B0000EF730000B55A0000000000000000000021B54A0094E7B500ADEF
      C600B5EFCE00ADE7C6009CE7BD0084DEAD006BD694004ACE840039C6730031C6
      730031CE730029BD5A0010A52900000000000000000021B54A0094E7B500ADEF
      C600B5EFCE00ADE7C6009CE7BD0084DEAD006BD694004ACE840039C6730031C6
      730031CE730029BD5A0010A52900000000000000000000000000DE731000DE84
      3100DE8C3100DE8C3100DE842900DE7B2100DE731000DE730800D66B0000D66B
      0000D66B0000CE63000000000000000000000000000000000000DE731000DE84
      3100DE8C3100DE8C3100DE842900DE7B2100DE731000DE730800D66B0000D66B
      0000D66B0000CE6300000000000000000000000000000000000039BD5A0052C6
      730052C6730052C66B004AC66B0042C6630031BD5A0029BD520021B54A0021B5
      4A0021B54A0018AD39000000000000000000000000000000000039BD5A0052C6
      730052C6730052C66B004AC66B0042C6630031BD5A0029BD520021B54A0021B5
      4A0021B54A0018AD390000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF00FDC7000000000000F003000000000000
      C001000000000000000100000000000000010000000000000001000000000000
      00010000000000008001000000000000C003000000000000E007000000000000
      F00F000000000000F03F000000000000F03F000000000000F03F000000000000
      E03F000000000000E07F000000000000FFFFFFFFFFFFC001C003C003C0038000
      8001800180018000800180018001800080018001800180008001800180018000
      8001800180018000800180018001800080018001800180008001800180018000
      8001800180018000800180018001800080018001800180008001800180018000
      C003C003C0038000FFFFFFFFFFFFC001FFFFFFFFFFFFFFFFC003C003C003C003
      8001800180018001800180018001800180018001800180018001800180018001
      8001800180018001800180018001800180018001800180018001800180018001
      8001800180018001800180018001800180018001800180018001800180018001
      C003C003C003C003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC003C003C003C003
      8001800180018001800180018001800180018001800180018001800180018001
      8001800180018001800180018001800180018001800180018001800180018001
      8001800180018001800180018001800180018001800180018001800180018001
      C003C003C003C003FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited PrintComp: TdxComponentPrinter
    inherited PrintCompMainGrid: TdxGridReportLink
      AssignedFormatValues = []
      BuiltInReportLink = True
    end
  end
  inherited saBrowse: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited popMaster: TPopupMenu
    Left = 93
    object PrintBankReceive1: TMenuItem [3]
      Action = actBankReceive
    end
    object N6: TMenuItem [10]
      Caption = '-'
    end
    object PostingCashReceive1: TMenuItem [11]
      Action = actPostCashReceive
    end
    object ReversePosting1: TMenuItem [12]
      Action = actReversePosting
    end
    object GeneratetoBankFile2: TMenuItem [13]
      Action = actGenerateBankFile
    end
    object N5: TMenuItem [14]
      Caption = '-'
    end
    object Settle1: TMenuItem [15]
      Action = actPosting
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
    object actBankReceive: TNAction
      Category = 'NActions'
      Caption = 'Print Bank Receive Instruction'
      ImageIndex = 12
      OnExecute = actBankReceiveExecute
      CheckPermission = False
    end
    object actCreateCashReceive: TNAction
      Category = 'NActions'
      Caption = 'Create Cash Receive'
      OnExecute = actCreateCashReceiveExecute
      CheckPermission = False
    end
    object actPostCashReceive: TNAction
      Category = 'NActions'
      Caption = 'Cash Receive Posting'
      OnExecute = actPostCashReceiveExecute
      CheckPermission = False
    end
    object actReversePosting: TNAction
      Category = 'NActions'
      Caption = 'Reverse Cash Receive'
      OnExecute = actReversePostingExecute
      CheckPermission = False
    end
  end
  inherited BarMBrowse: TdxBarManager
    DockControlHeights = (
      0
      0
      26
      0)
    inherited BarMBrowseBar1: TdxBar
      FloatLeft = 115
      FloatTop = 273
      FloatClientWidth = 112
      FloatClientHeight = 125
    end
    object dxBarButton1: TdxBarButton
      Action = actBankReceive
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
  end
  object cdsPayment_H: TNClientDataset
    Aggregates = <>
    Filter = 'MANUAL_VOUCHER = '#39'1'#39
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
    Left = 586
    Top = 177
    object cdsPayment_HVOUCHERID: TLargeintField
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
      DisplayLabel = 'Entry Date'
      FieldName = 'ENTRYDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsPayment_HVOUCHERDATE: TDateField
      DisplayLabel = 'Voucher Date'
      FieldName = 'VOUCHERDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsPayment_HACCID: TLargeintField
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
      DisplayLabel = 'Broker Bank Account Branch'
      FieldName = 'BROKER_BANKACCBRANCH'
      Size = 100
    end
    object cdsPayment_HBROKER_BANKPAYMENTID: TLargeintField
      DisplayLabel = 'Broker Bank Payment ID'
      FieldName = 'BROKER_BANKPAYMENTID'
    end
    object cdsPayment_HCUST_BANKID: TIntegerField
      FieldName = 'CUST_BANKID'
    end
    object cdsPayment_HCUST_BANKCODE: TStringField
      DisplayLabel = 'Customer Bank Code'
      FieldName = 'CUST_BANKCODE'
      Size = 10
    end
    object cdsPayment_HCUST_BANKACCNO: TStringField
      DisplayLabel = 'Customer Bank Account No'
      FieldName = 'CUST_BANKACCNO'
    end
    object cdsPayment_HCUST_BANKACCNAME: TStringField
      DisplayLabel = 'Customer Bank Account Name'
      FieldName = 'CUST_BANKACCNAME'
      Size = 100
    end
    object cdsPayment_HCUST_BANKACCBRANCH: TStringField
      DisplayLabel = 'Customer Bank Account Branch'
      FieldName = 'CUST_BANKACCBRANCH'
      Size = 100
    end
    object cdsPayment_HVOUCHER_DESC: TStringField
      DisplayLabel = 'Voucher Description'
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
      DisplayFormat = '#,##0'
    end
    object cdsPayment_HTRANSFERMODE: TStringField
      DisplayLabel = 'Transfer Mode'
      FieldName = 'TRANSFERMODE'
      Size = 10
    end
    object cdsPayment_HCHARGESAMT: TFloatField
      DisplayLabel = 'Charge Amount'
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
      DisplayLabel = 'BI Code'
      FieldName = 'BICODE'
      ReadOnly = True
      Size = 10
    end
    object cdsPayment_HBANK_REFERENCE: TStringField
      DisplayLabel = 'Bank Refference'
      FieldName = 'BANK_REFERENCE'
      Size = 50
    end
    object cdsPayment_HBANK_INSTRUCTION: TStringField
      DisplayLabel = 'Bank Instruction'
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
    object cdsPayment_HSWIFT_CODE: TStringField
      FieldName = 'SWIFT_CODE'
      ReadOnly = True
      Size = 10
    end
    object cdsPayment_HDEAL_EXRATE: TFloatField
      FieldName = 'DEAL_EXRATE'
    end
    object cdsPayment_HTRANSTYPE: TStringField
      FieldName = 'TRANSTYPE'
      Size = 1
    end
    object cdsPayment_HTRANSFER_AMT: TFloatField
      FieldName = 'TRANSFER_AMT'
    end
    object cdsPayment_HMANUAL_VOUCHER: TStringField
      FieldName = 'MANUAL_VOUCHER'
      Size = 1
    end
    object cdsPayment_HSESION: TStringField
      DisplayLabel = 'Session'
      FieldName = 'SESION'
      Size = 1
    end
    object cdsPayment_HSESION_TIME: TDateTimeField
      DisplayLabel = 'Session Time'
      FieldName = 'SESION_TIME'
    end
    object cdsPayment_HREQFF: TIntegerField
      FieldName = 'REQFF'
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
    Left = 521
    Top = 210
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
    end
    object cdsPayment_DDUEDATE: TDateField
      FieldName = 'DUEDATE'
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
    Left = 664
    Top = 232
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
    object cdsCashVoucher_HSESION: TStringField
      DisplayLabel = 'Session'
      FieldName = 'SESION'
      Size = 1
    end
    object cdsCashVoucher_HSESION_TIME: TDateTimeField
      DisplayLabel = 'Session Time'
      FieldName = 'SESION_TIME'
    end
    object cdsCashVoucher_HREQFF: TIntegerField
      FieldName = 'REQFF'
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
    Left = 664
    Top = 280
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
    end
    object cdsCashVoucher_DDUEDATE: TDateField
      FieldName = 'DUEDATE'
    end
    object cdsCashVoucher_DCASH_DESC: TStringField
      FieldName = 'CASH_DESC'
      Size = 150
    end
    object cdsCashVoucher_DTRANS_AMT: TFloatField
      FieldName = 'TRANS_AMT'
    end
    object cdsCashVoucher_DNETTYPE: TStringField
      FieldName = 'NETTYPE'
      Size = 1
    end
    object cdsCashVoucher_DAMOUNT: TFloatField
      FieldName = 'AMOUNT'
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
  object dsLuBrokerBank: TDataSource
    DataSet = cdsLuBrokerBank
    Left = 253
    Top = 346
  end
  object cdsLuBrokerBank: TNClientDataset
    Aggregates = <>
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
    Left = 310
    Top = 178
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
  object ReportReceive: TNClientReportContainer
    ReportClient = dmGlobal.ReportClient
    ReportName = 'Cash Management\Receive_Instruction.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'VOUCHERDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BANK_REFERENCE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BROKER_BANKID'
        ParamType = ptUnknown
      end>
    Left = 560
    Top = 284
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

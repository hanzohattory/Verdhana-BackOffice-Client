inherited frmAMLAccount: TfrmAMLAccount
  Caption = 'AML Customer'
  ClientHeight = 536
  ClientWidth = 688
  ExplicitWidth = 704
  ExplicitHeight = 575
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 688
    Height = 257
    Align = alTop
    ExplicitWidth = 688
    ExplicitHeight = 257
    object cxDBLabel1: TcxDBLabel [0]
      Left = 86
      Top = 10
      DataBinding.DataField = 'REPORTDATE'
      DataBinding.DataSource = dsReportDate
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.Shadow = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 99
    end
    object cxDBLabel2: TcxDBLabel [1]
      Left = 86
      Top = 37
      DataBinding.DataField = 'CUST_CODE'
      DataBinding.DataSource = dsSubject
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 155
    end
    object cxDBLabel3: TcxDBLabel [2]
      Left = 256
      Top = 37
      DataBinding.DataField = 'CUST_NAME'
      DataBinding.DataSource = dsSubject
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 422
    end
    object cxDBLabel4: TcxDBLabel [3]
      Left = 86
      Top = 64
      DataBinding.DataField = 'NO_ID'
      DataBinding.DataSource = dsSubject
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 195
    end
    object cxDBLabel5: TcxDBLabel [4]
      Left = 86
      Top = 91
      DataBinding.DataField = 'NPWP'
      DataBinding.DataSource = dsSubject
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 195
    end
    object cxDBLabel7: TcxDBLabel [5]
      Left = 400
      Top = 91
      DataBinding.DataField = 'OA_DATE'
      DataBinding.DataSource = dsSubject
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 278
    end
    object cxDBLabel8: TcxDBLabel [6]
      Left = 86
      Top = 118
      DataBinding.DataField = 'SOURCE_NAME'
      DataBinding.DataSource = dsSubject
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 195
    end
    object cxDBLabel9: TcxDBLabel [7]
      Left = 86
      Top = 145
      DataBinding.DataField = 'OCCUPATION'
      DataBinding.DataSource = dsSubject
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 195
    end
    object cxDBLabel10: TcxDBLabel [8]
      Left = 86
      Top = 172
      DataBinding.DataField = 'WORK_PLACE'
      DataBinding.DataSource = dsSubject
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 195
    end
    object chkStatus: TcxCheckGroup [9]
      Left = 10
      Top = 199
      Caption = 'Status'
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Asset Out Of Profile'
        end
        item
          Caption = 'Unusual Non Cash Transaction'
        end
        item
          Caption = 'Unusual Cash Transaction'
        end>
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 14
      Height = 45
      Width = 668
    end
    object cxDBLabel12: TcxDBLabel [10]
      Left = 400
      Top = 172
      DataBinding.DataField = 'HRC_REMARKS'
      DataBinding.DataSource = dsSubject
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 278
    end
    object cxDBLabel11: TcxDBLabel [11]
      Left = 400
      Top = 145
      DataBinding.DataField = 'HRC_STATUS'
      DataBinding.DataSource = dsSubject
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 278
    end
    object cxDBLabel6: TcxDBLabel [12]
      Left = 400
      Top = 118
      DataBinding.DataField = 'INCOME_VALUE'
      DataBinding.DataSource = dsSubject
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 278
    end
    object cxDBCheckBox1: TcxDBCheckBox [13]
      Left = 400
      Top = 64
      DataBinding.DataField = 'KSEISUBACC'
      DataBinding.DataSource = dsSubject
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'Y'
      Properties.ValueUnchecked = 'N'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
    end
    object cxDBLabel13: TcxDBLabel [14]
      Left = 492
      Top = 64
      DataBinding.DataField = 'KSEIACC'
      DataBinding.DataSource = dsSubject
      Properties.LineOptions.Alignment = cxllaBottom
      Properties.LineOptions.Visible = True
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Height = 21
      Width = 184
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Date'
      Control = cxDBLabel1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Account'
      Control = cxDBLabel2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 155
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = '-'
      Control = cxDBLabel3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 422
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'ID No.'
      Control = cxDBLabel4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 195
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'NPWP'
      Control = cxDBLabel5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 195
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Text = 'Opening Account Date'
      Control = cxDBLabel7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 278
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Income Source'
      Control = cxDBLabel8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 195
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Occupation'
      Control = cxDBLabel9
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 195
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Working Place'
      Control = cxDBLabel10
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 195
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxCheckGroup1'
      CaptionOptions.Visible = False
      Control = chkStatus
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 45
      ControlOptions.OriginalWidth = 391
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignVert = avClient
      CaptionOptions.Text = 'HRC Remarks'
      Control = cxDBLabel12
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 278
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 6
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'HRC Status'
      Control = cxDBLabel11
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 278
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 5
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Income'
      Control = cxDBLabel6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 278
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      CaptionOptions.Text = 'KSEI Sub Account'
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 17
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      CaptionOptions.Text = 'KSEI Account'
      Control = cxDBLabel13
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 184
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 467
    Width = 688
    ExplicitTop = 467
    ExplicitWidth = 688
    inherited btnOK: TcxButton
      ModalResult = 1
    end
    inherited dbNavLog: TDBNavigator
      Left = 574
      Hints.Strings = ()
      TabOrder = 3
      ExplicitLeft = 574
    end
    object cxButton1: TcxButton [3]
      Left = 172
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Print'
      OptionsImage.ImageIndex = 33
      TabOrder = 2
      OnClick = cxButton1Click
    end
    inherited dxLayoutControl2Item2: TdxLayoutItem
      Visible = False
    end
    inherited lcNavLog: TdxLayoutItem
      Index = 2
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 516
    Width = 688
    ExplicitTop = 516
    ExplicitWidth = 688
  end
  inherited tabEditorData: TTabSet
    Top = 446
    Width = 688
    ExplicitTop = 446
    ExplicitWidth = 688
  end
  object AmlDesc: TcxPageControl [4]
    Left = 0
    Top = 257
    Width = 688
    Height = 189
    Align = alClient
    TabOrder = 4
    Properties.ActivePage = tsAssetOutOfProfile
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 185
    ClientRectLeft = 4
    ClientRectRight = 684
    ClientRectTop = 24
    object tsAssetOutOfProfile: TcxTabSheet
      Caption = 'Asset Out Of Profile'
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 680
        Height = 161
        Align = alClient
        TabOrder = 0
        LevelTabs.Style = 9
        RootLevelOptions.DetailTabsPosition = dtpTop
        ExplicitLeft = 56
        ExplicitTop = 88
        object gvwPortofolio: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsPorfolio
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'VALUE'
              Column = gvwPortofolioVALUE
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
          Styles.ContentOdd = dmGlobal.BlueToggle2
          Bands = <
            item
            end>
          object gvwPortofolioCUST_CODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_CODE'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwPortofolioSTOCK_CODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STOCK_CODE'
            Width = 67
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwPortofolioSTOCK_NAME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STOCK_NAME'
            Width = 200
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwPortofolioQUANTITY: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QUANTITY'
            Width = 76
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwPortofolioCLOSE_PRICE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CLOSE_PRICE'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwPortofolioVALUE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VALUE'
            Width = 139
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwPortofolioTRX_DATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRX_DATE'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
        end
        object gvwCashOnHand: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsCashOnHand
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
          Styles.ContentOdd = dmGlobal.BlueToggle2
          Bands = <
            item
            end>
          object gvwCashOnHandCUST_CODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_CODE'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwCashOnHandBANK_CODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BANK_CODE'
            Width = 82
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwCashOnHandBANK_ACC_NO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BANK_ACC_NO'
            Width = 207
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwCashOnHandAMOUNT: TcxGridDBBandedColumn
            Caption = 'Cash On Hand'
            DataBinding.FieldName = 'AMOUNT'
            Width = 94
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwCashOnHandCASH_OUTSTAND: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CASH_OUTSTAND'
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwCashOnHandTRX_DATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRX_DATE'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwCashOnHandAR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AR'
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gvwCashOnHandAP: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AP'
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
        end
        object cxGrid1Level1: TcxGridLevel
          Caption = 'Stock Portfolio'
          GridView = gvwPortofolio
        end
        object cxGrid1Level2: TcxGridLevel
          Caption = 'Cash On Hand'
          GridView = gvwCashOnHand
        end
      end
    end
    object tsNonCash: TcxTabSheet
      Caption = 'Unusual Non Cash Transaction'
      ImageIndex = 1
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 680
        Height = 161
        Align = alClient
        TabOrder = 0
        object gvwNonCash: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsNonCash
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'TRX_VALUE'
              Column = gvwNonCashTRX_VALUE
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
          Styles.ContentOdd = dmGlobal.BlueToggle2
          Bands = <
            item
            end>
          object gvwNonCashCUST_CODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_CODE'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwNonCashTRX_DATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRX_DATE'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwNonCashTRX_TYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRX_TYPE'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Buy'
                ImageIndex = 0
                Value = 'B'
              end
              item
                Description = 'Sell'
                Value = 'S'
              end>
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwNonCashSTOCK_CODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STOCK_CODE'
            Width = 72
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gvwNonCashQUANTITY: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QUANTITY'
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwNonCashPRICE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRICE'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gvwNonCashTRX_VALUE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRX_VALUE'
            Width = 112
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = gvwNonCash
        end
      end
    end
    object tsCash: TcxTabSheet
      Caption = 'Unusual Cash Transaction'
      ImageIndex = 2
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 680
        Height = 161
        Align = alClient
        TabOrder = 0
        object gvwCash: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dsCash
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0'
              Kind = skSum
              FieldName = 'X'
              Column = gvwCashTRX_AMOUNT
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.BandHeaders = False
          Styles.ContentOdd = dmGlobal.BlueToggle2
          Bands = <
            item
            end>
          object gvwCashCUST_CODE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUST_CODE'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gvwCashTRX_DATE: TcxGridDBBandedColumn
            Caption = 'Transaction Date'
            DataBinding.FieldName = 'TRX_DATE'
            Width = 89
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gvwCashTRX_TYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRX_TYPE'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Debet'
                ImageIndex = 0
                Value = 'D'
              end
              item
                Description = 'Credit'
                Value = 'C'
              end>
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gvwCashTRX_AMOUNT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRX_AMOUNT'
            Width = 166
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gvwCashACC_TYPE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ACC_TYPE'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'Cash'
                ImageIndex = 0
                Value = 'C'
              end
              item
                Description = 'Bank'
                Value = 'B'
              end>
            Visible = False
            VisibleForCustomization = False
            Width = 72
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = gvwCash
        end
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = cdsAmlAccount
    Left = 192
    Top = 104
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 192
    Top = 152
    inherited lcRequired: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsAmlAccount: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'ASSESSMENT_DATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CUST_ID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmAML_qryAmlCustomer'
    ReadOnly = True
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 192
    Top = 56
    object cdsAmlAccountCUST_CODE: TStringField
      FieldName = 'CUST_CODE'
      Required = True
    end
    object cdsAmlAccountCUST_NAME: TStringField
      FieldName = 'CUST_NAME'
      Size = 200
    end
    object cdsAmlAccountNO_ID: TStringField
      FieldName = 'NO_ID'
    end
    object cdsAmlAccountNPWP: TStringField
      FieldName = 'NPWP'
      Size = 100
    end
    object cdsAmlAccountSOURCE_INC: TStringField
      FieldName = 'SOURCE_INC'
      Size = 1
    end
    object cdsAmlAccountOCCUPATION: TStringField
      FieldName = 'OCCUPATION'
      Size = 100
    end
    object cdsAmlAccountWORK_PLACE: TStringField
      FieldName = 'WORK_PLACE'
      Size = 50
    end
    object cdsAmlAccountINCOME: TFloatField
      FieldName = 'INCOME'
      DisplayFormat = '#,##0'
    end
    object cdsAmlAccountOA_DATE: TDateTimeField
      FieldName = 'OA_DATE'
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsAmlAccountHRC_STATUS: TStringField
      FieldName = 'HRC_STATUS'
    end
    object cdsAmlAccountHRC_REMARKS: TStringField
      FieldName = 'HRC_REMARKS'
      Size = 100
    end
    object cdsAmlAccountASSESSMENT_STATUS: TStringField
      FieldName = 'ASSESSMENT_STATUS'
      Size = 100
    end
    object cdsAmlAccountASSESSMENT_DATE: TDateTimeField
      FieldName = 'ASSESSMENT_DATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsAmlAccountSOURCE_NAME: TStringField
      FieldName = 'SOURCE_NAME'
      ReadOnly = True
      Size = 200
    end
    object cdsAmlAccountASSET_PROFILE_STAT: TStringField
      FieldName = 'ASSET_PROFILE_STAT'
      Size = 1
    end
    object cdsAmlAccountUNUSUAL_NONCASH: TStringField
      FieldName = 'UNUSUAL_NONCASH'
      Size = 1
    end
    object cdsAmlAccountUNUSUAL_CASH: TStringField
      FieldName = 'UNUSUAL_CASH'
      Size = 1
    end
    object cdsAmlAccountINCOME_VALUE: TFloatField
      Alignment = taLeftJustify
      FieldName = 'INCOME_VALUE'
      ReadOnly = True
      DisplayFormat = '#,##0'
    end
    object cdsAmlAccountKSEIACC: TStringField
      FieldName = 'KSEIACC'
      Size = 50
    end
    object cdsAmlAccountKSEISUBACC: TStringField
      FieldName = 'KSEISUBACC'
      Size = 1
    end
    object cdsAmlAccountCUST_ID: TLargeintField
      FieldName = 'CUST_ID'
      Required = True
    end
    object cdsAmlAccountACCID: TIntegerField
      FieldName = 'ACCID'
      ReadOnly = True
    end
  end
  object cdsPortofolio: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CUSTID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmAML_qryAMLPortfolio'
    ReadOnly = True
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 188
    Top = 337
    object cdsPortofolioCUST_CODE: TStringField
      FieldName = 'CUST_CODE'
      Required = True
    end
    object cdsPortofolioSTOCK_CODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'STOCK_CODE'
      Required = True
    end
    object cdsPortofolioSTOCK_NAME: TStringField
      DisplayLabel = 'Stock Name'
      FieldName = 'STOCK_NAME'
      Size = 100
    end
    object cdsPortofolioQUANTITY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QUANTITY'
      DisplayFormat = '#,##0'
    end
    object cdsPortofolioCLOSE_PRICE: TFloatField
      DisplayLabel = 'Close Price'
      FieldName = 'CLOSE_PRICE'
      DisplayFormat = '#,##0'
    end
    object cdsPortofolioVALUE: TFloatField
      DisplayLabel = 'Value'
      FieldName = 'VALUE'
      DisplayFormat = '#,##0'
    end
    object cdsPortofolioTRX_DATE: TDateField
      FieldName = 'TRX_DATE'
    end
    object cdsPortofolioCUST_ID: TLargeintField
      FieldName = 'CUST_ID'
      Required = True
    end
  end
  object cdsCashOnHand: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CUSTID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmAML_qryAMLCashOnHand'
    ReadOnly = True
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 260
    Top = 337
    object cdsCashOnHandCUST_CODE: TStringField
      FieldName = 'CUST_CODE'
      Required = True
    end
    object cdsCashOnHandBANK_CODE: TStringField
      DisplayLabel = 'Bank Code'
      FieldName = 'BANK_CODE'
      Size = 30
    end
    object cdsCashOnHandBANK_ACC_NO: TStringField
      DisplayLabel = 'Bank Account No.'
      FieldName = 'BANK_ACC_NO'
      Size = 60
    end
    object cdsCashOnHandAMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'AMOUNT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashOnHandCASH_OUTSTAND: TFloatField
      DisplayLabel = 'Cash Outstand'
      FieldName = 'CASH_OUTSTAND'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashOnHandTRX_DATE: TDateField
      FieldName = 'TRX_DATE'
    end
    object cdsCashOnHandAR: TFloatField
      FieldName = 'AR'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashOnHandAP: TFloatField
      FieldName = 'AP'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsCashOnHandCUST_ID: TLargeintField
      FieldName = 'CUST_ID'
      Required = True
    end
  end
  object cdsNonCash: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CUSTID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmAML_qryAMLNonCash'
    ReadOnly = True
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 332
    Top = 337
    object cdsNonCashCUST_CODE: TStringField
      FieldName = 'CUST_CODE'
      Required = True
    end
    object cdsNonCashTRX_DATE: TDateField
      FieldName = 'TRX_DATE'
      Required = True
    end
    object cdsNonCashTRX_TYPE: TStringField
      DisplayLabel = 'Type'
      FieldName = 'TRX_TYPE'
      Size = 10
    end
    object cdsNonCashSTOCK_CODE: TStringField
      DisplayLabel = 'Stock Code'
      FieldName = 'STOCK_CODE'
      Size = 10
    end
    object cdsNonCashQUANTITY: TFloatField
      DisplayLabel = 'Quantity'
      FieldName = 'QUANTITY'
      DisplayFormat = '#,##0'
    end
    object cdsNonCashPRICE: TFloatField
      DisplayLabel = 'Price'
      FieldName = 'PRICE'
      DisplayFormat = '#,##0'
    end
    object cdsNonCashTRX_VALUE: TFloatField
      DisplayLabel = 'Value'
      FieldName = 'TRX_VALUE'
      DisplayFormat = '#,##0'
    end
  end
  object cdsCash: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CUSTID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmAML_qryAMLCash'
    ReadOnly = True
    RemoteServer = dmGlobal.dspConnection
    OnCalcFields = cdsCashCalcFields
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 396
    Top = 337
    object cdsCashCUST_CODE: TStringField
      FieldName = 'CUST_CODE'
      Required = True
    end
    object cdsCashTRX_DATE: TDateField
      DisplayLabel = 'Deposit Date'
      FieldName = 'TRX_DATE'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object cdsCashTRX_TYPE: TStringField
      DisplayLabel = 'Type'
      FieldName = 'TRX_TYPE'
      Size = 10
    end
    object cdsCashTRX_AMOUNT: TFloatField
      DisplayLabel = 'Amount'
      FieldName = 'TRX_AMOUNT'
      DisplayFormat = '#,##0'
    end
    object cdsCashACC_TYPE: TStringField
      DisplayLabel = 'Account Type'
      FieldName = 'ACC_TYPE'
      Size = 10
    end
    object cdsCashX: TFloatField
      FieldKind = fkCalculated
      FieldName = 'X'
      Calculated = True
    end
  end
  object dsPorfolio: TDataSource
    DataSet = cdsPortofolio
    Left = 188
    Top = 385
  end
  object dsCashOnHand: TDataSource
    DataSet = cdsCashOnHand
    Left = 260
    Top = 385
  end
  object dsNonCash: TDataSource
    DataSet = cdsNonCash
    Left = 332
    Top = 385
  end
  object dsCash: TDataSource
    DataSet = cdsCash
    Left = 396
    Top = 385
  end
  object dsReportDate: TDataSource
    DataSet = cdsReportDate
    Left = 608
    Top = 408
  end
  object cdsReportDate: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 608
    Top = 360
    object cdsReportDateREPORTDATE: TDateField
      FieldName = 'REPORTDATE'
      DisplayFormat = 'dd mmm yyyy'
    end
  end
  object ReportContainer: TNClientReportContainer
    ReportClient = dmGlobal.ReportClient
    ReportName = 'AML\UnusualNonCashTransaction.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'REPORTDATE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CUSTID'
        ParamType = ptUnknown
      end>
    Left = 112
    Top = 336
  end
end

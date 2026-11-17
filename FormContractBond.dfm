inherited frmContractBond: TfrmContractBond
  Caption = 'Contract Bond'
  ClientHeight = 735
  ClientWidth = 1114
  ExplicitWidth = 1120
  ExplicitHeight = 763
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 1114
    Height = 645
    ExplicitWidth = 723
    ExplicitHeight = 645
    object pnlBuy: TPanel [0]
      Left = 10
      Top = 10
      Width = 696
      Height = 183
      ParentBackground = False
      TabOrder = 0
      object dxLayoutControl4: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 694
        Height = 181
        Align = alClient
        ParentBackground = True
        TabOrder = 0
        object cxDBLookupComboBox7: TcxDBLookupComboBox
          Left = 96
          Top = 28
          DataBinding.DataField = 'SACCID'
          DataBinding.DataSource = dsSubject
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'ACCID'
          Properties.ListColumns = <
            item
              Caption = 'Account Code'
              FieldName = 'ACCCODE'
            end
            item
              Caption = 'Account Name'
              FieldName = 'ACCNAME'
            end>
          Properties.ListFieldIndex = 1
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 337
        end
        object txtBidPrice: TcxDBCurrencyEdit
          Left = 96
          Top = 82
          DataBinding.DataField = 'SPRICE'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.0000 %;(#,##0.0000) %'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 2
          Width = 85
        end
        object txtBondsLimit: TcxCurrencyEdit
          Left = 96
          Top = 55
          TabStop = False
          EditValue = 0c
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 1
          Width = 152
        end
        object cxDBCurrencyEdit10: TcxDBCurrencyEdit
          Left = 545
          Top = 28
          TabStop = False
          DataBinding.DataField = 'SPROCEED'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 5
          Width = 131
        end
        object cxDBCurrencyEdit11: TcxDBCurrencyEdit
          Left = 545
          Top = 55
          TabStop = False
          DataBinding.DataField = 'SNETPROCEED'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 6
          Width = 131
        end
        object txtCapGain: TcxDBCurrencyEdit
          Left = 545
          Top = 82
          TabStop = False
          DataBinding.DataField = 'SUM_SCAPGAIN'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 7
          Width = 131
        end
        object cxDBCurrencyEdit7: TcxDBCurrencyEdit
          Left = 545
          Top = 109
          TabStop = False
          DataBinding.DataField = 'HOLDING_INTEREST'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 8
          Width = 86
        end
        object cxDBCurrencyEdit15: TcxDBCurrencyEdit
          Left = 96
          Top = 109
          TabStop = False
          DataBinding.DataField = 'SCOST_PRICE'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = '#,##0.0000 %;(#,##0.0000) %'
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 3
          Width = 85
        end
        object cxDBCurrencyEdit16: TcxDBCurrencyEdit
          Left = 96
          Top = 136
          TabStop = False
          DataBinding.DataField = 'SCOST_AMT'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 4
          Width = 157
        end
        object cxDBCurrencyEdit8: TcxDBCurrencyEdit
          Left = 545
          Top = 136
          TabStop = False
          DataBinding.DataField = 'HOLDING_INTEREST_TAX'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 9
          Width = 121
        end
        object dxLayoutGroup4: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutGroup5: TdxLayoutGroup
          CaptionOptions.Text = 'Buy'
          Parent = dxLayoutGroup4
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutGroup6: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup5
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutItem2: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Account Name'
          Parent = dxLayoutGroup6
          Control = cxDBLookupComboBox7
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem3: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Price'
          Parent = dxLayoutControl4Group6
          Control = txtBidPrice
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item2: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Bonds Limit'
          Parent = dxLayoutGroup6
          Control = txtBondsLimit
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group2: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup5
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item3: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Proceed'
          Parent = dxLayoutControl4Group10
          Control = cxDBCurrencyEdit10
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group4: TdxLayoutGroup
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group2
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item4: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Net Proceed'
          Parent = dxLayoutControl4Group10
          Control = cxDBCurrencyEdit11
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Group6: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group4
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutItem5: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Capital Gain'
          Parent = dxLayoutControl4Group10
          Control = txtCapGain
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Item27: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Holding Interest'
          Parent = dxLayoutControl4Group10
          Control = cxDBCurrencyEdit7
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl4Group10: TdxLayoutGroup
          Parent = dxLayoutGroup4
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl4Item5: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cost Price'
          Parent = dxLayoutControl4Group3
          Control = cxDBCurrencyEdit15
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Item6: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cost Amount'
          Parent = dxLayoutControl4Group3
          Control = cxDBCurrencyEdit16
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item7: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Interest Tax'
          Parent = dxLayoutControl4Group10
          Control = cxDBCurrencyEdit8
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutControl4Group1: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup5
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Group3: TdxLayoutGroup
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl4Group1
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
      end
    end
    object pnlSell: TPanel [1]
      Left = 10
      Top = 199
      Width = 690
      Height = 183
      ParentBackground = False
      TabOrder = 1
      object dxLayoutControl3: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 688
        Height = 181
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = True
        ParentFont = False
        TabOrder = 0
        object cxDBLookupComboBox5: TcxDBLookupComboBox
          Left = 96
          Top = 28
          DataBinding.DataField = 'BACCID'
          DataBinding.DataSource = dsSubject
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'ACCID'
          Properties.ListColumns = <
            item
              Caption = 'Account Code'
              FieldName = 'ACCCODE'
            end
            item
              Caption = 'Account Name'
              FieldName = 'ACCNAME'
            end>
          Properties.ListFieldIndex = 1
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 337
        end
        object txtOfferPrice: TcxDBCurrencyEdit
          Left = 96
          Top = 82
          DataBinding.DataField = 'BPRICE'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.0000 %;(#,##0.0000) %'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 2
          Width = 85
        end
        object txtCashLimit: TcxCurrencyEdit
          Left = 96
          Top = 55
          TabStop = False
          EditValue = '0'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 1
          Width = 157
        end
        object cxDBCurrencyEdit12: TcxDBCurrencyEdit
          Left = 545
          Top = 28
          TabStop = False
          DataBinding.DataField = 'BPROCEED'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 5
          Width = 131
        end
        object cxDBCurrencyEdit13: TcxDBCurrencyEdit
          Left = 545
          Top = 55
          TabStop = False
          DataBinding.DataField = 'BNETPROCEED'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 6
          Width = 131
        end
        object cxDBCurrencyEdit9: TcxDBCurrencyEdit
          Left = 545
          Top = 82
          TabStop = False
          DataBinding.DataField = 'SUM_BCAPGAIN'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 7
          Width = 131
        end
        object cxDBCurrencyEdit14: TcxDBCurrencyEdit
          Left = 545
          Top = 109
          TabStop = False
          DataBinding.DataField = 'WHT_TAX'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Properties.UseDisplayFormatWhenEditing = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 8
          Width = 86
        end
        object cxDBCurrencyEdit17: TcxDBCurrencyEdit
          Left = 96
          Top = 109
          TabStop = False
          DataBinding.DataField = 'BCOST_PRICE'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.0000 %;(#,##0.0000) %'
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 3
          Width = 85
        end
        object cxDBCurrencyEdit18: TcxDBCurrencyEdit
          Left = 96
          Top = 136
          TabStop = False
          DataBinding.DataField = 'BCOST_AMT'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0;(#,##0)'
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          Style.HotTrack = False
          TabOrder = 4
          Width = 157
        end
        object dxLayoutGroup7: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutGroup8: TdxLayoutGroup
          CaptionOptions.Text = 'Sell'
          Parent = dxLayoutGroup7
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutGroup9: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup8
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutItem4: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Account Name'
          Parent = dxLayoutGroup9
          Control = cxDBLookupComboBox5
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem6: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Price'
          Parent = dxLayoutControl3Group7
          Control = txtOfferPrice
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item2: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cash Limit'
          Parent = dxLayoutGroup9
          Control = txtCashLimit
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group2: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup8
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Item3: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Proceed'
          Parent = dxLayoutGroup11
          Control = cxDBCurrencyEdit12
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item4: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Net Proceed'
          Parent = dxLayoutGroup11
          Control = cxDBCurrencyEdit13
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl3Group4: TdxLayoutGroup
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group2
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group5: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group4
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group6: TdxLayoutGroup
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group5
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Group7: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl3Group6
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl3Item5: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Capital Gain'
          Parent = dxLayoutGroup11
          Control = cxDBCurrencyEdit9
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item6: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = '           WTH Tax'
          Parent = dxLayoutGroup11
          Control = cxDBCurrencyEdit14
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutGroup11: TdxLayoutGroup
          Parent = dxLayoutGroup7
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl3Item7: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cost Price'
          Parent = dxLayoutGroup8
          Control = cxDBCurrencyEdit17
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl3Item8: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cost Amount'
          Parent = dxLayoutGroup8
          Control = cxDBCurrencyEdit18
          ControlOptions.ShowBorder = False
          Index = 3
        end
      end
    end
    object Panel1: TPanel [2]
      Left = 712
      Top = 10
      Width = 402
      Height = 342
      Caption = 'Panel1'
      TabOrder = 2
      object dxLayoutControl5: TdxLayoutControl
        Left = 1
        Top = 1
        Width = 400
        Height = 340
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 138
        ExplicitTop = 15
        ExplicitWidth = 300
        ExplicitHeight = 250
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 108
          Top = 28
          DataBinding.DataField = 'CTPREFF'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 121
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 108
          Top = 55
          DataBinding.DataField = 'TRADEDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 121
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 292
          Top = 55
          DataBinding.DataField = 'VALUEDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 2
          Width = 121
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 108
          Top = 82
          DataBinding.DataField = 'INSTRUMENT_CODE'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 130
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 108
          Top = 109
          DataBinding.DataField = 'INTERESTRATE'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.0000%'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 130
        end
        object cxDBCurrencyEdit2: TcxDBCurrencyEdit
          Left = 108
          Top = 136
          DataBinding.DataField = 'FACEVALUE'
          DataBinding.DataSource = dsSubject
          ParentColor = True
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          Properties.ReadOnly = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Width = 130
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 319
          Top = 82
          DataBinding.DataField = 'SHORTNAME'
          DataBinding.DataSource = dsSubject
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          Width = 455
        end
        object cxDBDateEdit3: TcxDBDateEdit
          Left = 350
          Top = 127
          DataBinding.DataField = 'LASTCOUPONDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 7
          Width = 100
        end
        object cxDBDateEdit4: TcxDBDateEdit
          Left = 350
          Top = 154
          DataBinding.DataField = 'NEXTCOUPONDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 8
          Width = 100
        end
        object cxDBCurrencyEdit3: TcxDBCurrencyEdit
          Left = 350
          Top = 181
          DataBinding.DataField = 'PERIODECOUPON'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0 Days'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 9
          Width = 100
        end
        object cxDBDateEdit5: TcxDBDateEdit
          Left = 566
          Top = 127
          DataBinding.DataField = 'MATURITYDATE'
          DataBinding.DataSource = dsSubject
          Properties.DisplayFormat = 'dd mmm yyyy'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 10
          Width = 121
        end
        object cxDBCurrencyEdit4: TcxDBCurrencyEdit
          Left = 566
          Top = 154
          DataBinding.DataField = 'HOLDPERIOD'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0 Days'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 11
          Width = 121
        end
        object cxDBCurrencyEdit5: TcxDBCurrencyEdit
          Left = 566
          Top = 181
          DataBinding.DataField = 'INTEREST_AMT'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 12
          Width = 121
        end
        object cxDBCurrencyEdit6: TcxDBCurrencyEdit
          Left = 566
          Top = 208
          DataBinding.DataField = 'ACCRDAYS'
          DataBinding.DataSource = dsSubject
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 13
          Width = 121
        end
        object dxLayoutControl5Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl1Group1: TdxLayoutGroup
          CaptionOptions.Text = 'Deal Ticket'
          Parent = dxLayoutControl5Group_Root
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl1Group4: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group1
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'CTP Reff'
          Parent = dxLayoutControl1Group4
          Control = cxDBTextEdit1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Group5: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group4
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Trade Date'
          Parent = dxLayoutControl1Group5
          Control = cxDBDateEdit1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Value Date'
          Parent = dxLayoutControl1Group5
          Control = cxDBDateEdit2
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Group3: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group1
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Group2: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group3
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Instrument Code'
          Parent = dxLayoutControl1Group2
          Control = cxDBTextEdit2
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Interest Rate'
          Parent = dxLayoutControl1Group2
          Control = cxDBCurrencyEdit1
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item9: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Face Value'
          Parent = dxLayoutControl1Group2
          Control = cxDBCurrencyEdit2
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Group9: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group3
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item5: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'cxDBTextEdit3'
          Parent = dxLayoutControl1Group9
          Control = cxDBTextEdit3
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Group10: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group9
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Group6: TdxLayoutGroup
          Parent = dxLayoutControl1Group10
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl1Item10: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Last Coupon Date'
          Parent = dxLayoutControl1Group6
          Control = cxDBDateEdit3
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item11: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Next Coupon Date'
          Parent = dxLayoutControl1Group6
          Control = cxDBDateEdit4
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item12: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Coupon Period'
          Parent = dxLayoutControl1Group6
          Control = cxDBCurrencyEdit3
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Group7: TdxLayoutGroup
          Parent = dxLayoutControl1Group10
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutControl1Item13: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Maturity Date'
          Parent = dxLayoutControl1Group7
          Control = cxDBDateEdit5
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item14: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Holding Period'
          Parent = dxLayoutControl1Group7
          Control = cxDBCurrencyEdit4
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item15: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Accrued Interest'
          Parent = dxLayoutControl1Group7
          Control = cxDBCurrencyEdit5
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Item16: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Accrued Days'
          Parent = dxLayoutControl1Group7
          Control = cxDBCurrencyEdit6
          ControlOptions.ShowBorder = False
          Index = 3
        end
      end
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      LayoutDirection = ldHorizontal
      Index = -1
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group8
      Control = pnlBuy
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group8
      Control = pnlSell
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'Panel1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group11
      Control = Panel1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 666
    Width = 1114
    ExplicitTop = 666
    ExplicitWidth = 723
    inherited dbNavLog: TDBNavigator
      Left = 1000
      Hints.Strings = ()
      ExplicitLeft = 1000
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
    Top = 715
    Width = 1114
    ExplicitTop = 715
    ExplicitWidth = 723
  end
  inherited tabEditorData: TTabSet
    Top = 645
    Width = 1114
    ExplicitTop = 645
    ExplicitWidth = 723
  end
  inherited dsSubject: TDataSource
    DataSet = frmContractBonds.cdsBondsDealTicket
    Left = 432
    Top = 28
  end
end

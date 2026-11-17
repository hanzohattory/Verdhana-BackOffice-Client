inherited frmCOBCreditLimit: TfrmCOBCreditLimit
  Caption = 'Credit Limit'
  ClientHeight = 529
  ClientWidth = 762
  ExplicitWidth = 768
  ExplicitHeight = 558
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 762
    Height = 81
    Align = alTop
    ExplicitWidth = 762
    ExplicitHeight = 81
    object AccID: TcxDBTextEdit [0]
      Left = 102
      Top = 10
      DataBinding.DataField = 'ACCCODE'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 229
      Top = 10
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 320
    end
    object CreditLimitClass: TcxDBLookupComboBox [2]
      Left = 102
      Top = 37
      RepositoryItem = dmGlobal.luCRDCONCLASS
      DataBinding.DataField = 'CCCLS_ID'
      DataBinding.DataSource = dsAccCreditLimit
      Properties.ListColumns = <>
      Properties.OnCloseUp = CreditLimitClassPropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 145
    end
    object cmbType: TcxDBTextEdit [3]
      Left = 282
      Top = 37
      DataBinding.DataField = 'CC_TYPE'
      DataBinding.DataSource = dsAccCreditLimit
      Properties.ReadOnly = True
      Properties.OnChange = cmbTypePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 77
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem1: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'A/C Number'
      Parent = LayoutControlGroup1
      Control = AccID
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem2: TdxLayoutItem
      CaptionOptions.Text = 'cxDBTextEdit2'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlItem3: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Creadit Limit Class'
      Parent = LayoutControlGroup2
      Control = CreditLimitClass
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LayoutControlItem4: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Type'
      Parent = LayoutControlGroup2
      Control = cmbType
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 480
    Width = 762
    ExplicitTop = 480
    ExplicitWidth = 762
    inherited LayoutControlFooterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    inherited LayoutControlFooterItem1: TdxLayoutItem
      Index = 0
    end
    inherited LayoutControlFooterItem2: TdxLayoutItem
      Index = 1
    end
  end
  object PC: TcxPageControl [2]
    Left = 0
    Top = 81
    Width = 762
    Height = 399
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = ctReg
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    ClientRectBottom = 395
    ClientRectLeft = 4
    ClientRectRight = 758
    ClientRectTop = 4
    object ctDefault: TcxTabSheet
      Caption = 'ctDefault'
      ImageIndex = 0
      object dxLayoutControl7: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 754
        Height = 391
        Align = alClient
        TabOrder = 0
        object dxLayoutGroup4: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
      end
    end
    object ctCash: TcxTabSheet
      Caption = 'ctCash'
      ImageIndex = 1
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 754
        Height = 391
        Align = alClient
        TabOrder = 0
        object cxDBRadioGroup3: TcxDBRadioGroup
          Left = 22
          Top = 55
          Caption = 'Buy Order When Over Buying Limit'
          DataBinding.DataField = 'TLB_OVERLIMIT'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 1
          Height = 51
          Width = 347
        end
        object cxDBRadioGroup4: TcxDBRadioGroup
          Left = 22
          Top = 168
          Caption = 'Buy Order When  Client has Overdue Outstanding'
          DataBinding.DataField = 'TLB_OVERDUE'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 3
          Height = 50
          Width = 325
        end
        object cxDBRadioGroup2: TcxDBRadioGroup
          Left = 22
          Top = 112
          Caption = 'Buy Order When  Client on Not Valid Status'
          DataBinding.DataField = 'TLB_NOTVALIDSTATUS'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 2
          Height = 50
          Width = 325
        end
        object cxDBRadioGroup6: TcxDBRadioGroup
          Left = 399
          Top = 55
          Caption = 'Short Sell Order'
          DataBinding.DataField = 'TLS_SHORTSELL'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 4
          Height = 51
          Width = 332
        end
        object cxDBRadioGroup8: TcxDBRadioGroup
          Left = 399
          Top = 112
          Caption = 'Sell Orde When Client on Not valid Status'
          DataBinding.DataField = 'TLS_NOTVALIDSTATUS'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 5
          Height = 51
          Width = 312
        end
        object cxDBRadioGroup9: TcxDBRadioGroup
          Left = 399
          Top = 169
          Caption = 'Sell Order When Client has Overdue Outstanding'
          DataBinding.DataField = 'TLS_OVERDUE'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 6
          Height = 51
          Width = 320
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 91
          Top = 10
          DataBinding.DataField = 'CR_VAL'
          DataBinding.DataSource = dsAccCreditLimit
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 150
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object x: TdxLayoutGroup
          CaptionOptions.Text = 'Buy Order Validation'
          Parent = dxLayoutControl1Group1
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object LayoutControlItem23: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup3'
          CaptionOptions.Visible = False
          Parent = x
          Control = cxDBRadioGroup3
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object LayoutControlItem24: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup4'
          CaptionOptions.Visible = False
          Parent = x
          Control = cxDBRadioGroup4
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object LayoutControlItem7: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup2'
          CaptionOptions.Visible = False
          Parent = x
          Control = cxDBRadioGroup2
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Group1: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl1Group_Root
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object LayoutControlGroup7: TdxLayoutGroup
          CaptionOptions.Text = 'Sell Order Validation'
          Parent = dxLayoutControl1Group1
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object LayoutControlItem27: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup6'
          CaptionOptions.Visible = False
          Parent = LayoutControlGroup7
          Control = cxDBRadioGroup6
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object LayoutControlItem12: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup8'
          CaptionOptions.Visible = False
          Parent = LayoutControlGroup7
          Control = cxDBRadioGroup8
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object LayoutControlItem18: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup9'
          CaptionOptions.Visible = False
          Parent = LayoutControlGroup7
          Control = cxDBRadioGroup9
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem2: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Max Credit Limit'
          Parent = dxLayoutControl1Group_Root
          Control = cxDBTextEdit13
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object ctReg: TcxTabSheet
      Caption = 'ctReg'
      ImageIndex = 2
      object dxLayoutControl4: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 754
        Height = 391
        Align = alClient
        TabOrder = 0
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 361
          Top = 10
          DataBinding.DataField = 'TL_CASHVALUATE'
          DataBinding.DataSource = dsAccCreditLimit
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          Width = 53
        end
        object cxDBRadioGroup1: TcxDBRadioGroup
          Left = 22
          Top = 55
          Caption = 'Buy Order When Over Buying Limit'
          DataBinding.DataField = 'TLB_OVERLIMIT'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 3
          Height = 51
          Width = 347
        end
        object cxDBRadioGroup5: TcxDBRadioGroup
          Left = 22
          Top = 112
          Caption = 'Buy Order When  Client has Overdue Outstanding'
          DataBinding.DataField = 'TLB_OVERDUE'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 4
          Height = 50
          Width = 325
        end
        object cxDBRadioGroup7: TcxDBRadioGroup
          Left = 22
          Top = 168
          Caption = 'Buy Order When  Client on Not Valid Status'
          DataBinding.DataField = 'TLB_NOTVALIDSTATUS'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 5
          Height = 50
          Width = 325
        end
        object cxDBRadioGroup11: TcxDBRadioGroup
          Left = 399
          Top = 55
          Caption = 'Short Sell Order'
          DataBinding.DataField = 'TLS_SHORTSELL'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 6
          Height = 51
          Width = 332
        end
        object cxDBRadioGroup13: TcxDBRadioGroup
          Left = 399
          Top = 112
          Caption = 'Sell Orde When Client on Not valid Status'
          DataBinding.DataField = 'TLS_NOTVALIDSTATUS'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 7
          Height = 51
          Width = 312
        end
        object cxDBRadioGroup14: TcxDBRadioGroup
          Left = 399
          Top = 169
          Caption = 'Sell Order When Client has Overdue Outstanding'
          DataBinding.DataField = 'TLS_OVERDUE'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 8
          Height = 51
          Width = 320
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 520
          Top = 10
          DataBinding.DataField = 'TL_STOCKVALUATE'
          DataBinding.DataSource = dsAccCreditLimit
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 67
        end
        object cxDBTextEdit14: TcxDBTextEdit
          Left = 91
          Top = 10
          DataBinding.DataField = 'CR_VAL'
          DataBinding.DataSource = dsAccCreditLimit
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 166
        end
        object dxLayoutGroup5: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutGroup6: TdxLayoutGroup
          CaptionOptions.Text = 'Buy Order Validation'
          Parent = dxLayoutControl4Group3
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object LayoutControlItem13: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cash Valuation (%)'
          Parent = dxLayoutControl4Group2
          Control = cxDBTextEdit7
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem3: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup3'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup6
          Control = cxDBRadioGroup1
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem4: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup4'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup6
          Control = cxDBRadioGroup5
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem5: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup2'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup6
          Control = cxDBRadioGroup7
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutGroup7: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup5
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup8: TdxLayoutGroup
          CaptionOptions.Text = 'Sell Order Validation'
          Parent = dxLayoutControl4Group3
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutItem6: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup6'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup8
          Control = cxDBRadioGroup11
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem7: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup8'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup8
          Control = cxDBRadioGroup13
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem8: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup9'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup8
          Control = cxDBRadioGroup14
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem9: TdxLayoutItem
          CaptionOptions.Text = 'Stock Valuation (%)'
          Parent = dxLayoutControl4Group2
          Control = cxDBTextEdit1
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl4Group2: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup7
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl4Group3: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup7
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl4Item2: TdxLayoutItem
          CaptionOptions.Text = 'Max Credit Limit'
          Parent = dxLayoutControl4Group2
          Control = cxDBTextEdit14
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object ctRatio: TcxTabSheet
      Caption = 'ctRatio'
      ImageIndex = 3
      object dxLayoutControl5: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 754
        Height = 391
        Align = alClient
        TabOrder = 0
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 122
          Top = 55
          DataBinding.DataField = 'TL_CASHVALUATE'
          DataBinding.DataSource = dsAccCreditLimit
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          Width = 67
        end
        object cxDBRadioGroup10: TcxDBRadioGroup
          Left = 22
          Top = 139
          Caption = 'Buy Order When Over Buying Limit'
          DataBinding.DataField = 'TLB_OVERLIMIT'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 7
          Height = 51
          Width = 347
        end
        object cxDBRadioGroup12: TcxDBRadioGroup
          Left = 22
          Top = 252
          Caption = 'Buy Order When  Client has Overdue Outstanding'
          DataBinding.DataField = 'TLB_OVERDUE'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 9
          Height = 50
          Width = 325
        end
        object cxDBRadioGroup15: TcxDBRadioGroup
          Left = 22
          Top = 196
          Caption = 'Buy Order When  Client on Not Valid Status'
          DataBinding.DataField = 'TLB_NOTVALIDSTATUS'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 8
          Height = 50
          Width = 325
        end
        object cxDBRadioGroup16: TcxDBRadioGroup
          Left = 399
          Top = 139
          Caption = 'Short Sell Order'
          DataBinding.DataField = 'TLS_SHORTSELL'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 10
          Height = 51
          Width = 332
        end
        object cxDBRadioGroup17: TcxDBRadioGroup
          Left = 399
          Top = 196
          Caption = 'Sell Order When Client on Not valid Status'
          DataBinding.DataField = 'TLS_NOTVALIDSTATUS'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 11
          Height = 51
          Width = 312
        end
        object cxDBRadioGroup18: TcxDBRadioGroup
          Left = 399
          Top = 253
          Caption = 'Sell Order When Client has Overdue Outstanding'
          DataBinding.DataField = 'TLS_OVERDUE'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 12
          Height = 51
          Width = 320
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 122
          Top = 82
          DataBinding.DataField = 'TL_STOCKVALUATE'
          DataBinding.DataSource = dsAccCreditLimit
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 67
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 349
          Top = 82
          DataBinding.DataField = 'RATIO_MRGWARING'
          DataBinding.DataSource = dsAccCreditLimit
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Width = 59
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 349
          Top = 55
          DataBinding.DataField = 'RATIO_MRGCALL'
          DataBinding.DataSource = dsAccCreditLimit
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 59
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 567
          Top = 82
          DataBinding.DataField = 'FORCESELL_DAY'
          DataBinding.DataSource = dsAccCreditLimit
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          Width = 59
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 567
          Top = 55
          DataBinding.DataField = 'RATIO_FORCESELL'
          DataBinding.DataSource = dsAccCreditLimit
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Width = 59
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 91
          Top = 10
          DataBinding.DataField = 'CR_VAL'
          DataBinding.DataSource = dsAccCreditLimit
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 158
        end
        object dxLayoutGroup9: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutGroup10: TdxLayoutGroup
          CaptionOptions.Text = 'Buy Order Validation'
          Parent = dxLayoutControl5Group4
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutItem10: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Cash Valuation (%)'
          Parent = dxLayoutControl5Group8
          Control = cxDBTextEdit3
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem11: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup3'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup10
          Control = cxDBRadioGroup10
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem12: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup4'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup10
          Control = cxDBRadioGroup12
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem13: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup2'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup10
          Control = cxDBRadioGroup15
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutGroup11: TdxLayoutGroup
          CaptionOptions.Text = 'Sell Order Validation'
          Parent = dxLayoutControl5Group4
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutItem14: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup6'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup11
          Control = cxDBRadioGroup16
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem15: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup8'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup11
          Control = cxDBRadioGroup17
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem16: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup9'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup11
          Control = cxDBRadioGroup18
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem17: TdxLayoutItem
          CaptionOptions.Text = 'Stock Valuation (%)'
          Parent = dxLayoutControl5Group8
          Control = cxDBTextEdit4
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutGroup13: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup9
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutItem18: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Margin Warning Ratio (%)'
          Parent = dxLayoutControl5Group7
          Control = cxDBTextEdit5
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl5Item2: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Margin Call Ratio (%)'
          Parent = dxLayoutControl5Group7
          Control = cxDBTextEdit6
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Item3: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Force Sell Day'
          Parent = dxLayoutControl5Group9
          Control = cxDBTextEdit8
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl5Group4: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup13
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl5Item4: TdxLayoutItem
          CaptionOptions.AlignHorz = taRightJustify
          CaptionOptions.Text = 'Force Sell Ratio Protection (%)'
          Parent = dxLayoutControl5Group9
          Control = cxDBTextEdit9
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup12: TdxLayoutGroup
          Parent = dxLayoutControl5Group2
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object dxLayoutControl5Group5: TdxLayoutGroup
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup12
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Group6: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl5Group5
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Group2: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup13
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Group8: TdxLayoutGroup
          Parent = dxLayoutControl5Group2
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutControl5Group9: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl5Group6
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object dxLayoutControl5Group7: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutControl5Group6
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object dxLayoutControl5Item5: TdxLayoutItem
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Max Credit Limit'
          Parent = dxLayoutGroup9
          Control = cxDBTextEdit12
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object ctApprLimit: TcxTabSheet
      Caption = 'ctApprLimit'
      ImageIndex = 4
      object dxLayoutControl6: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 754
        Height = 391
        Align = alClient
        TabOrder = 0
        object cxDBRadioGroup19: TcxDBRadioGroup
          Left = 22
          Top = 55
          Caption = 'Buy Order When Over Buying Limit'
          DataBinding.DataField = 'TLB_OVERLIMIT'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 2
          Height = 51
          Width = 347
        end
        object cxDBRadioGroup20: TcxDBRadioGroup
          Left = 22
          Top = 168
          Caption = 'Buy Order When  Client has Overdue Outstanding'
          DataBinding.DataField = 'TLB_OVERDUE'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 4
          Height = 50
          Width = 325
        end
        object cxDBRadioGroup21: TcxDBRadioGroup
          Left = 22
          Top = 112
          Caption = 'Buy Order When  Client on Not Valid Status'
          DataBinding.DataField = 'TLB_NOTVALIDSTATUS'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 3
          Height = 50
          Width = 325
        end
        object cxDBRadioGroup22: TcxDBRadioGroup
          Left = 399
          Top = 55
          Caption = 'Sell Order when Over Selling Limit'
          DataBinding.DataField = 'TLS_SHORTSELL'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 5
          Height = 51
          Width = 332
        end
        object cxDBRadioGroup23: TcxDBRadioGroup
          Left = 399
          Top = 112
          Caption = 'Sell Orde When Client on Not valid Status'
          DataBinding.DataField = 'TLS_NOTVALIDSTATUS'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 6
          Height = 51
          Width = 312
        end
        object cxDBRadioGroup24: TcxDBRadioGroup
          Left = 399
          Top = 169
          Caption = 'Sell Order When Client has Overdue Outstanding'
          DataBinding.DataField = 'TLS_OVERDUE'
          DataBinding.DataSource = dsAccCreditLimit
          Properties.Columns = 3
          Properties.Items = <
            item
              Caption = 'Accept'
              Value = 'A'
            end
            item
              Caption = 'Reject'
              Value = 'R'
            end
            item
              Caption = 'Approval'
              Value = 'P'
            end>
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 7
          Height = 51
          Width = 320
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 89
          Top = 10
          DataBinding.DataField = 'BUY_LIMIT'
          DataBinding.DataSource = dsAccCreditLimit
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 152
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 324
          Top = 10
          DataBinding.DataField = 'SELL_LIMIT'
          DataBinding.DataSource = dsAccCreditLimit
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          Width = 149
        end
        object dxLayoutGroup14: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutGroup15: TdxLayoutGroup
          CaptionOptions.Text = 'Buy Order Validation'
          Parent = dxLayoutGroup16
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutItem19: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup3'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup15
          Control = cxDBRadioGroup19
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem20: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup4'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup15
          Control = cxDBRadioGroup20
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem21: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup2'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup15
          Control = cxDBRadioGroup21
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutGroup16: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup14
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutGroup17: TdxLayoutGroup
          CaptionOptions.Text = 'Sell Order Validation'
          Parent = dxLayoutGroup16
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutItem22: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup6'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup17
          Control = cxDBRadioGroup22
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem23: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup8'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup17
          Control = cxDBRadioGroup23
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem24: TdxLayoutItem
          CaptionOptions.Text = 'cxDBRadioGroup9'
          CaptionOptions.Visible = False
          Parent = dxLayoutGroup17
          Control = cxDBRadioGroup24
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem25: TdxLayoutItem
          CaptionOptions.Text = 'Buy Credit Limit'
          Parent = dxLayoutGroup18
          Control = cxDBTextEdit10
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl6Item2: TdxLayoutItem
          CaptionOptions.Text = 'Sell Credit Limit'
          Parent = dxLayoutGroup18
          Control = cxDBTextEdit11
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutGroup18: TdxLayoutGroup
          CaptionOptions.Text = 'Hidden Group'
          Parent = dxLayoutGroup14
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
      end
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmCOBList.cdsAccount
    Left = 425
    Top = 46
  end
  object cdsCrdConClassByParam: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CCCLS_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmClientManagement_qryCrdConClassByParam'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 542
    Top = 43
    object cdsCrdConClassByParamCCCLS_ID: TLargeintField
      FieldName = 'CCCLS_ID'
      Required = True
    end
    object cdsCrdConClassByParamCCLSSNAME: TStringField
      FieldName = 'CCLSSNAME'
      Size = 80
    end
    object cdsCrdConClassByParamCC_TYPE: TStringField
      FieldName = 'CC_TYPE'
      Size = 40
    end
    object cdsCrdConClassByParamTL_CASHVALUATE: TFloatField
      FieldName = 'TL_CASHVALUATE'
    end
    object cdsCrdConClassByParamTL_STOCKVALUATE: TFloatField
      FieldName = 'TL_STOCKVALUATE'
    end
    object cdsCrdConClassByParamTLB_OVERLIMIT: TStringField
      FieldName = 'TLB_OVERLIMIT'
      Size = 1
    end
    object cdsCrdConClassByParamTLB_NOTVALIDSTATUS: TStringField
      FieldName = 'TLB_NOTVALIDSTATUS'
      Size = 1
    end
    object cdsCrdConClassByParamTLB_MRG_NONVALSTOCK: TStringField
      FieldName = 'TLB_MRG_NONVALSTOCK'
      Size = 1
    end
    object cdsCrdConClassByParamTLB_OVERDUE: TStringField
      FieldName = 'TLB_OVERDUE'
      Size = 1
    end
    object cdsCrdConClassByParamTLS_SHORTSELL: TStringField
      FieldName = 'TLS_SHORTSELL'
      Size = 1
    end
    object cdsCrdConClassByParamTLS_NOTVALIDSTATUS: TStringField
      FieldName = 'TLS_NOTVALIDSTATUS'
      Size = 1
    end
    object cdsCrdConClassByParamTLS_OVERDUE: TStringField
      FieldName = 'TLS_OVERDUE'
      Size = 1
    end
    object cdsCrdConClassByParamRATIO_MRGCALL: TFloatField
      FieldName = 'RATIO_MRGCALL'
    end
    object cdsCrdConClassByParamRATIO_MRGWARING: TFloatField
      FieldName = 'RATIO_MRGWARING'
    end
    object cdsCrdConClassByParamRATIO_FORCESELL: TFloatField
      FieldName = 'RATIO_FORCESELL'
    end
    object cdsCrdConClassByParamFORCESELL_DAY: TIntegerField
      FieldName = 'FORCESELL_DAY'
    end
    object cdsCrdConClassByParamCR_VAL: TFloatField
      FieldName = 'CR_VAL'
    end
    object cdsCrdConClassByParamBUY_LIMIT: TFloatField
      FieldName = 'BUY_LIMIT'
    end
    object cdsCrdConClassByParamSELL_LIMIT: TFloatField
      FieldName = 'SELL_LIMIT'
    end
  end
  object dsAccCreditLimit: TDataSource
    DataSet = frmCOBList.cdsAccCreditLimit
    Left = 544
    Top = 96
  end
end

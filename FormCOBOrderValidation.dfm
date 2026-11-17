inherited frmOrderValidation: TfrmOrderValidation
  Caption = 'Order Validation'
  ClientHeight = 416
  ClientWidth = 782
  ExplicitWidth = 788
  ExplicitHeight = 444
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 782
    Height = 43
    Align = alTop
    ExplicitWidth = 782
    ExplicitHeight = 43
    object cxLabel1: TcxLabel [0]
      Left = 10
      Top = 10
      Caption = 'Cust Reg No,'
      Style.HotTrack = False
    end
    object txtCustRegNo: TcxLabel [1]
      Left = 84
      Top = 10
      Caption = 'txtCustRegNo'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold, fsUnderline]
      Style.HotTrack = False
      Style.IsFontAssigned = True
    end
    object cxDBLabel1: TcxDBLabel [2]
      Left = 204
      Top = 10
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Style.HotTrack = False
      Style.TextStyle = [fsBold, fsUnderline]
      Height = 21
      Width = 121
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem1: TdxLayoutItem
      CaptionOptions.Text = 'xx'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup2
      Control = cxLabel1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem2: TdxLayoutItem
      CaptionOptions.Text = 'cxLabel2'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup2
      Control = txtCustRegNo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = LayoutControlGroup_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlItem4: TdxLayoutItem
      CaptionOptions.Text = 'Name'
      Parent = LayoutControlGroup2
      Control = cxDBLabel1
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 367
    Width = 782
    ExplicitTop = 367
    ExplicitWidth = 782
    inherited btnOK: TcxButton
      Width = 130
      ExplicitWidth = 130
    end
    inherited btnCancel: TcxButton
      Left = 146
      Width = 130
      ExplicitLeft = 146
      ExplicitWidth = 130
    end
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
  object dxLayoutControl2: TdxLayoutControl [2]
    Left = 0
    Top = 43
    Width = 782
    Height = 324
    Align = alClient
    TabOrder = 2
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 108
      Top = 55
      DataBinding.DataField = 'TLB_VALUATE'
      DataBinding.DataSource = dsAccLimit
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 54
    end
    object cxDBCheckBox3: TcxDBCheckBox
      Left = 449
      Top = 28
      DataBinding.DataField = 'TLS_CHECK'
      DataBinding.DataSource = dsAccLimit
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 21
    end
    object cxDBCheckBox5: TcxDBCheckBox
      Left = 269
      Top = 55
      DataBinding.DataField = 'TLB_CHK_STOCK'
      DataBinding.DataSource = dsAccLimit
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 27
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 108
      Top = 28
      DataBinding.DataField = 'TLB_CHECK'
      DataBinding.DataSource = dsAccLimit
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 21
    end
    object luBuyValidationModel: TcxDBImageComboBox
      Left = 217
      Top = 28
      RepositoryItem = dmGlobal.luValidationMode
      DataBinding.DataField = 'TLB_CHK_MODEL'
      DataBinding.DataSource = dsAccLimit
      Properties.Items = <
        item
          Description = 'Credit Limit Calculation'
          ImageIndex = 0
          Value = 'CL'
        end
        item
          Description = 'Client Position Valuation'
          Value = 'CPOS'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 150
    end
    object cxDBRadioGroup3: TcxDBRadioGroup
      Left = 22
      Top = 82
      Caption = 'Buy Order When Over Buying Limit'
      DataBinding.DataField = 'TLB_CHK_OVERLIMIT'
      DataBinding.DataSource = dsAccLimit
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
      Width = 354
    end
    object cxDBRadioGroup4: TcxDBRadioGroup
      Left = 22
      Top = 138
      Caption = 'Buy Order When  Client has Overdue Outstanding'
      DataBinding.DataField = 'TLB_CHK_OVERDUE'
      DataBinding.DataSource = dsAccLimit
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
      Height = 49
      Width = 354
    end
    object cxDBRadioGroup2: TcxDBRadioGroup
      Left = 22
      Top = 193
      Caption = 'Buy Order When  Client on Not Valid Status'
      DataBinding.DataField = 'TLB_CHK_NVSTATUS'
      DataBinding.DataSource = dsAccLimit
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
      Height = 50
      Width = 354
    end
    object cxDBRadioGroup5: TcxDBRadioGroup
      Left = 22
      Top = 249
      Caption = 'Trade Margin for Non Margin Stock'
      DataBinding.DataField = 'TLB_CHK_MNONMS'
      DataBinding.DataSource = dsAccLimit
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
      Height = 49
      Width = 354
    end
    object luSellValidationModel: TcxDBImageComboBox
      Left = 558
      Top = 28
      RepositoryItem = dmGlobal.luValidationMode
      DataBinding.DataField = 'TLS_CHK_MODEL'
      DataBinding.DataSource = dsAccLimit
      Properties.Items = <
        item
          Description = 'Credit Limit Calculation'
          ImageIndex = 0
          Value = 'CL'
        end
        item
          Description = 'Client Position Valuation'
          Value = 'CPOS'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 150
    end
    object cxDBRadioGroup6: TcxDBRadioGroup
      Left = 406
      Top = 55
      Caption = 'Short Sell Order'
      DataBinding.DataField = 'TLS_SS'
      DataBinding.DataSource = dsAccLimit
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
      Height = 52
      Width = 354
    end
    object cxDBRadioGroup7: TcxDBRadioGroup
      Left = 406
      Top = 113
      Caption = 'Short Sell Order for Not Valid Short Sell Stock'
      DataBinding.DataField = 'TLS_SSNONSS'
      DataBinding.DataSource = dsAccLimit
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
      Width = 354
    end
    object cxDBRadioGroup8: TcxDBRadioGroup
      Left = 406
      Top = 170
      Caption = 'Sell Orde When Client on Not valid Status'
      DataBinding.DataField = 'TLS_NVSTATUS'
      DataBinding.DataSource = dsAccLimit
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
      Width = 354
    end
    object cxDBRadioGroup9: TcxDBRadioGroup
      Left = 406
      Top = 227
      Caption = 'Sell Order When Client has Overdue Outstanding'
      DataBinding.DataField = 'TLS_CHK_OVERDUE'
      DataBinding.DataSource = dsAccLimit
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
      TabOrder = 13
      Height = 52
      Width = 354
    end
    object dxLayoutGroup2: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object LayoutControlGroup12: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      Parent = dxLayoutGroup2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlGroup6: TdxLayoutGroup
      CaptionOptions.Text = 'Buy Order Validation'
      Parent = LayoutControlGroup12
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object LayoutControlGroup10: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup6
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlItem14: TdxLayoutItem
      CaptionOptions.Text = 'Validate'
      Parent = LayoutControlGroup10
      Control = cxDBCheckBox2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem22: TdxLayoutItem
      CaptionOptions.Text = 'Validation Model'
      Parent = LayoutControlGroup10
      Control = luBuyValidationModel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlGroup9: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup6
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LayoutControlItem13: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Val Buy Limit (%)'
      Parent = LayoutControlGroup9
      Control = cxDBTextEdit7
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem20: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Check Stock On Buy'
      Parent = LayoutControlGroup9
      Control = cxDBCheckBox5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem23: TdxLayoutItem
      CaptionOptions.Text = 'cxDBRadioGroup3'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup6
      Control = cxDBRadioGroup3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlItem24: TdxLayoutItem
      CaptionOptions.Text = 'cxDBRadioGroup4'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup6
      Control = cxDBRadioGroup4
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup6
      Control = cxDBRadioGroup2
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LayoutControlItem11: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup6
      Control = cxDBRadioGroup5
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object LayoutControlGroup7: TdxLayoutGroup
      CaptionOptions.Text = 'Sell Order Validation'
      Parent = LayoutControlGroup12
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object LayoutControlGroup15: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup7
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutControlItem15: TdxLayoutItem
      CaptionOptions.Text = 'Validate'
      Parent = LayoutControlGroup15
      Control = cxDBCheckBox3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem26: TdxLayoutItem
      CaptionOptions.Text = 'Validation Model'
      Parent = LayoutControlGroup15
      Control = luSellValidationModel
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem27: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup7
      Control = cxDBRadioGroup6
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem28: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup7
      Control = cxDBRadioGroup7
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutControlItem12: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup7
      Control = cxDBRadioGroup8
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutControlItem18: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup7
      Control = cxDBRadioGroup9
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmCOBList.cdsAccount
    Left = 508
    Top = 6
  end
  object dsAccLimit: TDataSource
    DataSet = frmCOBList.cdsAccLimit
    Left = 573
    Top = 6
  end
end

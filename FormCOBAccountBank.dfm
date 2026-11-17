inherited frmCOBAccountBank: TfrmCOBAccountBank
  Caption = 'Account Bank'
  ClientHeight = 236
  ClientWidth = 671
  ExplicitWidth = 677
  ExplicitHeight = 264
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 671
    Height = 46
    Align = alTop
    ExplicitWidth = 671
    ExplicitHeight = 46
    object cxLabel1: TcxLabel [0]
      Left = 10
      Top = 10
      Caption = 'Cust Reg No.'
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
      Left = 207
      Top = 10
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold, fsUnderline]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Height = 21
      Width = 286
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem1: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup1
      Control = cxLabel1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutControlItem2: TdxLayoutItem
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup1
      Control = txtCustRegNo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutControlItem3: TdxLayoutItem
      CaptionOptions.Text = 'Name '
      Parent = LayoutControlGroup1
      Control = cxDBLabel1
      ControlOptions.ShowBorder = False
      Index = 2
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
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 187
    Width = 671
    ExplicitTop = 187
    ExplicitWidth = 671
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
  object cxGrid1: TcxGrid [2]
    Left = 0
    Top = 46
    Width = 671
    Height = 141
    Align = alClient
    TabOrder = 2
    object gvwAccBank: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsAccBank
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Bands = <
        item
        end>
      object gvwAccBankBNCODE: TcxGridDBBandedColumn
        Caption = 'Bank Code'
        DataBinding.FieldName = 'BNCODE'
        RepositoryItem = dmGlobal.luBank
        Width = 57
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwAccBankBANKACCNO: TcxGridDBBandedColumn
        Caption = 'Bank Account No.'
        DataBinding.FieldName = 'BANKACCNO'
        Width = 91
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwAccBankBANKACCNAME: TcxGridDBBandedColumn
        Caption = 'Bank Account Name'
        DataBinding.FieldName = 'BANKACCNAME'
        Width = 253
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwAccBankBANKBRANCH: TcxGridDBBandedColumn
        Caption = 'Bank Branch'
        DataBinding.FieldName = 'BANKBRANCH'
        Width = 112
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwAccBankISRDN: TcxGridDBBandedColumn
        Caption = 'RDN'
        DataBinding.FieldName = 'ISRDN'
        RepositoryItem = dmGlobal.chkStandard
        Width = 27
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwAccBankBNCHGSTYPE: TcxGridDBBandedColumn
        Caption = 'Bank Charge Type'
        DataBinding.FieldName = 'BNCHGSTYPE'
        RepositoryItem = dmGlobal.luBankChargeType
        Width = 94
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwAccBank
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmClientOnBoardingList.cdsAccount
  end
  object dsAccBank: TDataSource
    DataSet = frmClientOnBoardingList.cdsAccBank
    Left = 432
    Top = 12
  end
end

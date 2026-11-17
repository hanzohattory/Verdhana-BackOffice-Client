inherited frmRepoContractList: TfrmRepoContractList
  Caption = 'Repo Contract List'
  ClientHeight = 631
  ClientWidth = 737
  ExplicitWidth = 743
  ExplicitHeight = 660
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 737
    Height = 582
    ExplicitWidth = 737
    ExplicitHeight = 582
    object cxGrid1: TcxGrid [0]
      Left = 10
      Top = 10
      Width = 711
      Height = 551
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsSubject
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1CONTRACT_NO: TcxGridDBColumn
          Caption = 'Contract No:'
          DataBinding.FieldName = 'CONTRACT_NO'
          Width = 99
        end
        object cxGrid1DBTableView1TRXDATE: TcxGridDBColumn
          Caption = 'Transaction Date:'
          DataBinding.FieldName = 'TRXDATE'
          Width = 100
        end
        object cxGrid1DBTableView1ACCCODE: TcxGridDBColumn
          Caption = 'Acc. Code:'
          DataBinding.FieldName = 'ACCCODE'
          Width = 91
        end
        object cxGrid1DBTableView1ACCNAME: TcxGridDBColumn
          Caption = 'Acc. Name:'
          DataBinding.FieldName = 'ACCNAME'
          Width = 250
        end
        object cxGrid1DBTableView1SETTDATE: TcxGridDBColumn
          Caption = 'Settlement Date:'
          DataBinding.FieldName = 'SETTDATE'
          Width = 100
        end
        object cxGrid1DBTableView1SETTDAY: TcxGridDBColumn
          Caption = 'Days:'
          DataBinding.FieldName = 'SETTDAY'
        end
        object cxGrid1DBTableView1MATURDATE: TcxGridDBColumn
          Caption = 'Maturity Date:'
          DataBinding.FieldName = 'MATURDATE'
          Width = 100
        end
        object cxGrid1DBTableView1CCY: TcxGridDBColumn
          DataBinding.FieldName = 'CCY'
        end
        object cxGrid1DBTableView1INTERESTRATE: TcxGridDBColumn
          Caption = 'Interest Rate:'
          DataBinding.FieldName = 'INTERESTRATE'
          Width = 80
        end
        object cxGrid1DBTableView1INTEREST_AMT: TcxGridDBColumn
          Caption = 'Interest Amount:'
          DataBinding.FieldName = 'INTEREST_AMT'
          Width = 120
        end
        object cxGrid1DBTableView1REPO_AMT: TcxGridDBColumn
          Caption = 'Repo Amount:'
          DataBinding.FieldName = 'REPO_AMT'
          Width = 120
        end
        object cxGrid1DBTableView1DUE_AMT: TcxGridDBColumn
          Caption = 'Due Amount:'
          DataBinding.FieldName = 'DUE_AMT'
          Width = 120
        end
        object cxGrid1DBTableView1COLL_AMT: TcxGridDBColumn
          Caption = 'Collateral Amount:'
          DataBinding.FieldName = 'COLL_AMT'
          Width = 120
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem1: TdxLayoutItem
      Parent = LayoutControlGroup_Root
      AllowRemove = False
      Control = cxGrid1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 582
    Width = 737
    AutoSize = True
    ExplicitTop = 582
    ExplicitWidth = 737
    inherited btnCancel: TcxButton
      OnClick = btnCancelClick
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
  inherited dsSubject: TDataSource
    Left = 152
    Top = 188
  end
end

inherited frmAccBankRelatedAccount: TfrmAccBankRelatedAccount
  Caption = 'Account Bank'
  ClientHeight = 371
  ClientWidth = 894
  ExplicitWidth = 900
  ExplicitHeight = 400
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 894
    Height = 281
    ExplicitWidth = 894
    ExplicitHeight = 281
    object cxGrid1: TcxGrid [0]
      Left = 10
      Top = 10
      Width = 986
      Height = 185
      Align = alTop
      TabOrder = 0
      object gvwBank: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        DataController.DataSource = dsSubject
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsView.GridLineColor = 16777088
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentOdd = dmGlobal.BlueToggle
        object gvwBankBNCODE: TcxGridDBColumn
          Caption = 'Bank Code'
          DataBinding.FieldName = 'BNCODE'
          RepositoryItem = dmGlobal.luBank
          Width = 100
        end
        object gvwBankBANKACCNO: TcxGridDBColumn
          Caption = 'Bank Account No.'
          DataBinding.FieldName = 'BANKACCNO'
          Width = 91
        end
        object gvwBankBANKACCNAME: TcxGridDBColumn
          Caption = 'Bank Account Name'
          DataBinding.FieldName = 'BANKACCNAME'
          Width = 205
        end
        object gvwBankBANKBRANCH: TcxGridDBColumn
          Caption = 'Bank Branch'
          DataBinding.FieldName = 'BANKBRANCH'
          Width = 92
        end
        object gvwBankCCYCODE: TcxGridDBColumn
          Caption = 'Currency'
          DataBinding.FieldName = 'CCYCODE'
          RepositoryItem = dmGlobal.luCurrency
          Width = 62
        end
        object gvwBankISRDN: TcxGridDBColumn
          Caption = 'RDN'
          DataBinding.FieldName = 'ISRDN'
          RepositoryItem = dmGlobal.chkStandard
          Width = 27
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = gvwBank
      end
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      Parent = dxLayoutGroup1
      Control = cxGrid1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 302
    Width = 894
    ExplicitTop = 302
    ExplicitWidth = 894
    inherited dbNavLog: TDBNavigator
      Left = 780
      Hints.Strings = ()
      ExplicitLeft = 780
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
      Visible = False
      Index = 1
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 351
    Width = 894
    Visible = False
    ExplicitTop = 351
    ExplicitWidth = 894
  end
  inherited tabEditorData: TTabSet
    Top = 281
    Width = 894
    ExplicitTop = 281
    ExplicitWidth = 894
  end
  inherited dsSubject: TDataSource
    DataSet = frmAccountBank.cdsAccBankOther
    Left = 384
    Top = 168
  end
end

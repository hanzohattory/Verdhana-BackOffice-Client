inherited frmAccCustodyRelatedAccount: TfrmAccCustodyRelatedAccount
  Caption = 'Account Custody'
  ClientHeight = 371
  ClientWidth = 894
  ExplicitWidth = 900
  ExplicitHeight = 400
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 894
    Height = 281
    ExplicitTop = -6
    ExplicitWidth = 894
    ExplicitHeight = 281
    object cxGrid1: TcxGrid [0]
      Left = 10
      Top = 10
      Width = 874
      Height = 261
      Align = alTop
      TabOrder = 0
      object gvwCustody: TcxGridDBTableView
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
        object gvwCustodyACCCUSTODYID: TcxGridDBColumn
          DataBinding.FieldName = 'ACCCUSTODYID'
          Visible = False
        end
        object gvwCustodyACCID: TcxGridDBColumn
          DataBinding.FieldName = 'ACCID'
          Visible = False
        end
        object gvwCustodyCUSTODYTYPE: TcxGridDBColumn
          Caption = 'Custody Type'
          DataBinding.FieldName = 'CUSTODYTYPE'
          RepositoryItem = dmGlobal.luCustudyType
          Width = 87
        end
        object gvwCustodyCUSTODYCODE: TcxGridDBColumn
          Caption = 'Custody Code'
          DataBinding.FieldName = 'CUSTODYCODE'
          Width = 86
        end
        object gvwCustodyCUSTODYACCNO: TcxGridDBColumn
          Caption = 'Custody Account No.'
          DataBinding.FieldName = 'CUSTODYACCNO'
          Width = 108
        end
        object gvwCustodyCUSTODYACCNAME: TcxGridDBColumn
          Caption = 'Custody Account Name'
          DataBinding.FieldName = 'CUSTODYACCNAME'
        end
        object gvwCustodyCUSTODYBRANCH: TcxGridDBColumn
          Caption = 'Custody Branch'
          DataBinding.FieldName = 'CUSTODYBRANCH'
          Width = 151
        end
        object gvwCustodyACTLED_SEQID: TcxGridDBColumn
          DataBinding.FieldName = 'ACTLED_SEQID'
          Visible = False
        end
        object gvwCustodyCBEST_ACCBANKID: TcxGridDBColumn
          DataBinding.FieldName = 'CBEST_ACCBANKID'
          Visible = False
        end
        object gvwCustodyCUSTODY_DEFAULT: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTODY_DEFAULT'
          Visible = False
        end
        object gvwCustodySTAT: TcxGridDBColumn
          DataBinding.FieldName = 'STAT'
          Visible = False
        end
        object gvwCustodyMODDA: TcxGridDBColumn
          DataBinding.FieldName = 'MODDA'
          Visible = False
        end
        object gvwCustodyMODUI: TcxGridDBColumn
          DataBinding.FieldName = 'MODUI'
          Visible = False
        end
        object gvwCustodyAPPDA: TcxGridDBColumn
          DataBinding.FieldName = 'APPDA'
          Visible = False
        end
        object gvwCustodyAPPUI: TcxGridDBColumn
          DataBinding.FieldName = 'APPUI'
          Visible = False
        end
        object gvwCustodyUNDER4Y: TcxGridDBColumn
          DataBinding.FieldName = 'UNDER4Y'
          Visible = False
        end
        object gvwCustodyUNDER4YDA: TcxGridDBColumn
          DataBinding.FieldName = 'UNDER4YDA'
          Visible = False
        end
        object gvwCustodyNOTES4Y: TcxGridDBColumn
          DataBinding.FieldName = 'NOTES4Y'
          Visible = False
        end
        object gvwCustodyISDEL: TcxGridDBColumn
          DataBinding.FieldName = 'ISDEL'
          Visible = False
        end
        object gvwCustodyID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = gvwCustody
      end
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutGroup1
      Control = cxGrid1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 302
    Width = 894
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
      Index = 1
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 351
    Width = 894
  end
  inherited tabEditorData: TTabSet
    Top = 281
    Width = 894
  end
  inherited dsSubject: TDataSource
    DataSet = frmAccountCustody.cdsAccCustodyOther
    Left = 208
    Top = 240
  end
end

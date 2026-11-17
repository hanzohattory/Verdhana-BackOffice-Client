inherited frmBankLink: TfrmBankLink
  Caption = 'Bank Link'
  ClientHeight = 263
  ClientWidth = 561
  ExplicitWidth = 567
  ExplicitHeight = 291
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Width = 561
    Height = 214
    ExplicitWidth = 561
    ExplicitHeight = 214
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 73
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
      Left = 200
      Top = 10
      DataBinding.DataField = 'ACCNAME'
      DataBinding.DataSource = dsSubject
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 345
    end
    object cxGrid1: TcxGrid [2]
      Left = 10
      Top = 37
      Width = 250
      Height = 159
      TabOrder = 2
      object gvwBankLink: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = dsAccountBank
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        Bands = <
          item
          end>
        object gvwBankLinkACCID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ACCID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object gvwBankLinkBNCODE: TcxGridDBBandedColumn
          Caption = 'Bank Code'
          DataBinding.FieldName = 'BNCODE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ListColumns = <>
          RepositoryItem = dmGlobal.luBank
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object gvwBankLinkBANKACCNO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BANKACCNO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object gvwBankLinkBANKACCNAME: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BANKACCNAME'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object gvwBankLinkBANKBRANCH: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BANKBRANCH'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object gvwBankLinkISRDN: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ISRDN'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object gvwBankLinkBNCHGSTYPE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BNCHGSTYPE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object gvwBankLinkMODDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object gvwBankLinkMODUI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MODUI'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object gvwBankLinkAPPDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object gvwBankLinkAPPUI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'APPUI'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object gvwBankLinkUNDER4Y: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNDER4Y'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object gvwBankLinkUNDER4YDA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNDER4YDA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object gvwBankLinkNOTES4Y: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOTES4Y'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object gvwBankLinkISDEL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ISDEL'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object gvwBankLinkID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object gvwBankLinkACTLED_SEQID: TcxGridDBBandedColumn
          Caption = 'Account Ledger'
          DataBinding.FieldName = 'ACTLED_SEQID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'SEQID'
          Properties.ListColumns = <
            item
              FieldName = 'SEQID'
            end
            item
              FieldName = 'ALTYPE'
            end
            item
              FieldName = 'ALCODE'
            end>
          Properties.ListFieldIndex = 1
          Properties.ListSource = dmLookup.dsLuAccLedger
          Width = 187
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gvwBankLink
      end
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem1: TdxLayoutItem
      CaptionOptions.Text = 'A/C Number'
      Parent = LayoutControlGroup1
      Control = cxDBTextEdit1
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
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Parent = LayoutControlGroup_Root
      Control = cxGrid1
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 214
    Width = 561
    ExplicitTop = 214
    ExplicitWidth = 561
    inherited btnOK: TcxButton
      ModalResult = 1
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
    DataSet = frmCOBList.cdsAccount
    Left = 124
    Top = 111
  end
  object dsAccountBank: TDataSource
    DataSet = frmCOBList.cdsAccBank
    Left = 453
    Top = 171
  end
end

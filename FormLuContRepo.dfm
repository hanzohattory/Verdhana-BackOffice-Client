object frmLuContRepo: TfrmLuContRepo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Lookup Contract Repo'
  ClientHeight = 513
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 474
    Width = 672
    Height = 39
    Align = alBottom
    TabOrder = 0
    object btnOK: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&OK'
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 1
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 0
    end
    object btnCancel: TcxButton
      Left = 91
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Cancel'
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'LiquidSky'
      ModalResult = 2
      OptionsImage.Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      OptionsImage.NumGlyphs = 2
      TabOrder = 1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = btnOK
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = btnCancel
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
      Index = 0
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 672
    Height = 474
    Align = alClient
    TabOrder = 1
    object gvwLuCOntractREPO: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSubject
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle
      Styles.Selection = dmGlobal.rowSelected
      Styles.FilterRowInfoText = dmGlobal.GridFilterBox
      object gvwLuCOntractREPOCONTRACT_NO: TcxGridDBColumn
        Caption = 'Contract No'
        DataBinding.FieldName = 'CONTRACT_NO'
        Options.Editing = False
        Width = 145
      end
      object gvwLuCOntractREPORACCCODE: TcxGridDBColumn
        Caption = 'A/C Number'
        DataBinding.FieldName = 'RACCCODE'
        Options.Editing = False
        Width = 125
      end
      object gvwLuCOntractREPORACCNAME: TcxGridDBColumn
        Caption = 'A/C Name'
        DataBinding.FieldName = 'RACCNAME'
        Options.Editing = False
        Width = 301
      end
      object gvwLuCOntractREPOTRXDATE: TcxGridDBColumn
        Caption = 'Trans Date'
        DataBinding.FieldName = 'TRXDATE'
        Options.Editing = False
      end
      object gvwLuCOntractREPOSETTDATE: TcxGridDBColumn
        Caption = 'Settle Date'
        DataBinding.FieldName = 'SETTDATE'
        Options.Editing = False
      end
      object gvwLuCOntractREPOMATURDATE: TcxGridDBColumn
        Caption = 'Maturity Date'
        DataBinding.FieldName = 'MATURDATE'
        Options.Editing = False
      end
      object gvwLuCOntractREPOORG_AMT: TcxGridDBColumn
        Caption = 'Original Amount'
        DataBinding.FieldName = 'ORG_AMT'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
      end
      object gvwLuCOntractREPOINTEREST_AMT: TcxGridDBColumn
        Caption = 'Interest Amount'
        DataBinding.FieldName = 'INTEREST_AMT'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
      end
      object gvwLuCOntractREPOREPO_AMT: TcxGridDBColumn
        Caption = 'Repo Amount'
        DataBinding.FieldName = 'REPO_AMT'
        HeaderAlignmentHorz = taRightJustify
        Options.Editing = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwLuCOntractREPO
    end
  end
  object dsSubject: TDataSource
    DataSet = dmLookup.cdsLuContRepo
    Left = 224
    Top = 304
  end
end

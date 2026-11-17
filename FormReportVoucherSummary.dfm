inherited frmReportVoucherSummary: TfrmReportVoucherSummary
  Caption = 'Journal Voucher'
  ClientWidth = 1026
  ExplicitWidth = 1026
  PixelsPerInch = 96
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Top = 124
    Width = 1026
    Height = 301
    ExplicitTop = 124
    ExplicitWidth = 1026
    ExplicitHeight = 301
  end
  inherited lcParameter: TdxLayoutControl
    Top = 74
    Width = 1026
    Height = 42
    Visible = False
    ExplicitTop = 74
    ExplicitWidth = 1026
    ExplicitHeight = 42
    object lcParameterGroup1: TdxLayoutGroup
      Parent = lcParameterGroup_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  inherited spReport: TcxSplitter
    Top = 116
    Width = 1026
    ExplicitTop = 116
    ExplicitWidth = 1026
  end
  inherited StatusBar: TdxStatusBar
    Width = 1026
    ExplicitWidth = 1026
  end
  inherited barMReport: TdxBarManager
    AlwaysSaveText = True
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      74
      0)
    object barMReportBar1: TdxBar [1]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 22
      DockingStyle = dsTop
      FloatLeft = 1044
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dtStart'
        end
        item
          Visible = True
          ItemName = 'dtEnd'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'txtJournalVoucher'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object barMReportBar2: TdxBar [2]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 48
      DockingStyle = dsTop
      FloatLeft = 1044
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkAll'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkAllType'
        end
        item
          Visible = True
          ItemName = 'edJournalType'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkAllVoucher'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 182
          Visible = True
          ItemName = 'edVoucherNo'
        end
        item
          BeginGroup = True
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'chkAllReff'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 164
          Visible = True
          ItemName = 'edReffNo'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 2
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object txtJournalVoucher: TcxBarEditItem
      Caption = 'Report Journal Voucher'
      Category = 0
      Hint = 'Report Journal Voucher'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxComboBoxProperties'
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'Summary'
        'Detail')
    end
    object dtStart: TcxBarEditItem
      Caption = 'Start Date'
      Category = 0
      Hint = 'Start Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
    object dtEnd: TcxBarEditItem
      Caption = 'End Date'
      Category = 0
      Hint = 'End Date'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.ImmediatePost = True
    end
    object chkAll: TcxBarEditItem
      Caption = 'View All'
      Category = 0
      Hint = 'View All'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Properties.OnChange = chkAllPropertiesChange
    end
    object chkAllType: TcxBarEditItem
      Caption = 'All Journal Type'
      Category = 0
      Hint = 'All Journal Type'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.OnChange = chkAllTypePropertiesChange
    end
    object edReffNo: TcxBarEditItem
      Category = 0
      Hint = 'Refference No'
      Visible = ivAlways
      PropertiesClassName = 'TcxTextEditProperties'
    end
    object edJournalType: TcxBarEditItem
      Caption = 'Journal Type'
      Category = 0
      Hint = 'Journal Type'
      Visible = ivAlways
      PropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.ImmediatePost = True
      Properties.ListColumns = <>
      RepositoryItem = dmGlobal.luJournalType
    end
    object chkAllReff: TcxBarEditItem
      Caption = 'All Refference No'
      Category = 0
      Hint = 'All Refference No'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Properties.OnChange = chkAllReffPropertiesChange
    end
    object chkAllVoucher: TcxBarEditItem
      Caption = 'All Journal Voucher No'
      Category = 0
      Hint = 'All Journal Voucher No'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Properties.OnChange = cxBarEditItem1PropertiesChange
    end
    object edVoucherNo: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxTextEditProperties'
    end
  end
  inherited Report: TNClientReportContainer
    ReportName = 'Accounting\Journal Voucher Detail.fr3'
    Params = <
      item
        DataType = ftDate
        Name = 'STARTDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'ENDDATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALL'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ALL_TYPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'JOURNALTYPE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ALL_REFF'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'REFNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'ALL_VOUCHER'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'VOUCHER_NO'
        ParamType = ptUnknown
      end>
  end
end

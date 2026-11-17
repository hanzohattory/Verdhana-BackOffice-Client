inherited frmIDXTransactionReport: TfrmIDXTransactionReport
  Caption = 'IDX Monthly Transaction Report'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    object grdMasterDBLayoutView1: TcxGridDBLayoutView [1]
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsBrowseMaster
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object grdMasterDBLayoutView1Period: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'Period'
        Visible = False
        LayoutItem = grdMasterDBLayoutView1LayoutItem1
        Options.Editing = False
        Options.Focusing = False
      end
      object grdMasterDBLayoutView1CompanyName: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'CompanyName'
        LayoutItem = grdMasterDBLayoutView1LayoutItem2
        Options.Editing = False
        Options.Focusing = False
      end
      object grdMasterDBLayoutView1ReportNo: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'ReportNo'
        LayoutItem = grdMasterDBLayoutView1LayoutItem3
      end
      object grdMasterDBLayoutView1DirectorName: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'DirectorName'
        LayoutItem = grdMasterDBLayoutView1LayoutItem4
        Options.Editing = False
        Options.Focusing = False
      end
      object grdMasterDBLayoutView1Occupation: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'Occupation'
        LayoutItem = grdMasterDBLayoutView1LayoutItem5
        Options.Editing = False
        Options.Focusing = False
      end
      object grdMasterDBLayoutView1RTBuy_Amount: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'RTBuy_Amount'
        LayoutItem = grdMasterDBLayoutView1LayoutItem6
        Options.Editing = False
        Options.Focusing = False
      end
      object grdMasterDBLayoutView1RTSell_Amount: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'RTSell_Amount'
        LayoutItem = grdMasterDBLayoutView1LayoutItem7
        Options.Editing = False
        Options.Focusing = False
      end
      object grdMasterDBLayoutView1OTBuy_Amount: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'OTBuy_Amount'
        LayoutItem = grdMasterDBLayoutView1LayoutItem8
        Options.Editing = False
        Options.Focusing = False
      end
      object grdMasterDBLayoutView1OTSell_Amount: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'OTSell_Amount'
        LayoutItem = grdMasterDBLayoutView1LayoutItem9
        Options.Editing = False
        Options.Focusing = False
      end
      object grdMasterDBLayoutView1DMABuy_Amount: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'DMABuy_Amount'
        LayoutItem = grdMasterDBLayoutView1LayoutItem10
        Options.Editing = False
        Options.Focusing = False
      end
      object grdMasterDBLayoutView1DMASell_Amount: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'DMASell_Amount'
        LayoutItem = grdMasterDBLayoutView1LayoutItem11
        Options.Editing = False
        Options.Focusing = False
      end
      object grdMasterDBLayoutView1CreateDate: TcxGridDBLayoutViewItem
        Caption = 'Date'
        DataBinding.FieldName = 'CreateDate'
        LayoutItem = grdMasterDBLayoutView1LayoutItem12
        Options.Editing = False
        Options.Focusing = False
      end
      object grdMasterDBLayoutView1CreateSysDate: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'CreateSysDate'
        LayoutItem = grdMasterDBLayoutView1LayoutItem13
        Options.Editing = False
        Options.Focusing = False
      end
      object grdMasterDBLayoutView1Create_UI: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'Create_UI'
        LayoutItem = grdMasterDBLayoutView1LayoutItem14
        Options.Editing = False
        Options.Focusing = False
      end
      object grdMasterDBLayoutView1Modda: TcxGridDBLayoutViewItem
        Caption = 'Date'
        DataBinding.FieldName = 'Modda'
        LayoutItem = grdMasterDBLayoutView1LayoutItem15
        Options.Editing = False
        Options.Focusing = False
      end
      object grdMasterDBLayoutView1ModSysDate: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'ModSysDate'
        LayoutItem = grdMasterDBLayoutView1LayoutItem16
        Options.Editing = False
        Options.Focusing = False
      end
      object grdMasterDBLayoutView1Modui: TcxGridDBLayoutViewItem
        DataBinding.FieldName = 'Modui'
        LayoutItem = grdMasterDBLayoutView1LayoutItem17
        Options.Editing = False
        Options.Focusing = False
      end
      object grdMasterDBLayoutView1Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Template Layout'
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object grdMasterDBLayoutView1LayoutItem1: TcxGridLayoutItem
        Index = -1
      end
      object grdMasterDBLayoutView1LayoutItem2: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1AutoCreatedGroup1
        SizeOptions.Width = 327
        Index = 0
      end
      object grdMasterDBLayoutView1LayoutItem3: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1AutoCreatedGroup1
        Index = 1
      end
      object grdMasterDBLayoutView1LayoutItem4: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1AutoCreatedGroup1
        Index = 2
      end
      object grdMasterDBLayoutView1LayoutItem5: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1AutoCreatedGroup1
        Index = 3
      end
      object grdMasterDBLayoutView1LayoutItem6: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group6
        AlignHorz = ahLeft
        AlignVert = avClient
        SizeOptions.Width = 130
        CaptionOptions.AlignHorz = taCenter
        CaptionOptions.Layout = clTop
        Index = 0
      end
      object grdMasterDBLayoutView1LayoutItem7: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group6
        AlignHorz = ahLeft
        AlignVert = avClient
        SizeOptions.Width = 113
        CaptionOptions.AlignHorz = taCenter
        CaptionOptions.Layout = clTop
        Index = 1
      end
      object grdMasterDBLayoutView1LayoutItem8: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group4
        AlignHorz = ahLeft
        AlignVert = avClient
        SizeOptions.Width = 119
        CaptionOptions.AlignHorz = taCenter
        CaptionOptions.Layout = clTop
        Index = 0
      end
      object grdMasterDBLayoutView1LayoutItem9: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group4
        AlignHorz = ahLeft
        AlignVert = avClient
        SizeOptions.Width = 112
        CaptionOptions.AlignHorz = taCenter
        CaptionOptions.Layout = clTop
        Index = 1
      end
      object grdMasterDBLayoutView1LayoutItem10: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1AutoCreatedGroup3
        AlignVert = avClient
        SizeOptions.Width = 116
        CaptionOptions.AlignHorz = taCenter
        CaptionOptions.Layout = clTop
        Index = 0
      end
      object grdMasterDBLayoutView1LayoutItem11: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1AutoCreatedGroup3
        AlignHorz = ahClient
        SizeOptions.Width = 109
        CaptionOptions.AlignHorz = taCenter
        CaptionOptions.Layout = clTop
        Index = 1
      end
      object grdMasterDBLayoutView1LayoutItem12: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group1
        Index = 0
      end
      object grdMasterDBLayoutView1LayoutItem13: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group1
        SizeOptions.Width = 209
        Index = 1
      end
      object grdMasterDBLayoutView1LayoutItem14: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group1
        AlignHorz = ahLeft
        SizeOptions.Width = 207
        Index = 2
      end
      object grdMasterDBLayoutView1LayoutItem15: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group2
        SizeOptions.Width = 209
        Index = 0
      end
      object grdMasterDBLayoutView1LayoutItem16: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group2
        Index = 1
      end
      object grdMasterDBLayoutView1LayoutItem17: TcxGridLayoutItem
        Parent = grdMasterDBLayoutView1Group2
        AlignHorz = ahLeft
        SizeOptions.Width = 210
        Index = 2
      end
      object grdMasterDBLayoutView1Group1: TdxLayoutGroup
        Parent = grdMasterDBLayoutView1AutoCreatedGroup2
        CaptionOptions.AlignHorz = taCenter
        CaptionOptions.Text = 'Create'
        ButtonOptions.Buttons = <>
        ItemIndex = 1
        Index = 1
      end
      object grdMasterDBLayoutView1AutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = grdMasterDBLayoutView1AutoCreatedGroup2
        Index = 0
      end
      object grdMasterDBLayoutView1Group2: TdxLayoutGroup
        Parent = grdMasterDBLayoutView1AutoCreatedGroup2
        CaptionOptions.AlignHorz = taCenter
        CaptionOptions.Text = 'Modification'
        ButtonOptions.Buttons = <>
        ItemIndex = 2
        Index = 2
      end
      object grdMasterDBLayoutView1Group3: TdxLayoutGroup
        Parent = grdMasterDBLayoutView1Group_Root
        CaptionOptions.AlignHorz = taCenter
        CaptionOptions.Text = 'Transaction'
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        Index = 1
      end
      object grdMasterDBLayoutView1AutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = grdMasterDBLayoutView1Group_Root
        LayoutDirection = ldHorizontal
        Index = 0
      end
      object grdMasterDBLayoutView1Group4: TdxLayoutGroup
        Parent = grdMasterDBLayoutView1Group3
        AlignHorz = ahLeft
        AlignVert = avClient
        CaptionOptions.AlignHorz = taCenter
        CaptionOptions.Text = 'Online Trading'
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        Index = 1
      end
      object grdMasterDBLayoutView1Group5: TdxLayoutGroup
        Parent = grdMasterDBLayoutView1Group3
        CaptionOptions.AlignHorz = taCenter
        CaptionOptions.Text = 'Direct Market Transaction'
        ButtonOptions.Buttons = <>
        Index = 2
      end
      object grdMasterDBLayoutView1AutoCreatedGroup3: TdxLayoutAutoCreatedGroup
        Parent = grdMasterDBLayoutView1Group5
        LayoutDirection = ldHorizontal
        Index = 0
      end
      object grdMasterDBLayoutView1Group6: TdxLayoutGroup
        Parent = grdMasterDBLayoutView1Group3
        CaptionOptions.AlignHorz = taCenter
        CaptionOptions.Text = 'Remote Trading'
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        Index = 0
      end
    end
    inherited grdMasterLevel1: TcxGridLevel
      GridView = grdMasterDBLayoutView1
    end
  end
  inherited ActionPermission: TNActionPermission
    AssignedPermission = <
      item
        Name = 'IDX Monthly Transaction Report'
        Description = 'IDX Monthly Transaction Report'
      end>
  end
  inherited PrintComp: TdxComponentPrinter
    PixelsPerInch = 96
    inherited PrintCompMainGrid: TdxGridReportLink
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited saBrowse: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsIDXMonthlyReport
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
    inherited BarMBrowseBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuInsert'
        end
        item
          Visible = True
          ItemName = 'mnuEdit'
        end
        item
          Visible = True
          ItemName = 'mnuDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'edMonth'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 63
          Visible = True
          ItemName = 'edYear'
        end
        item
          Visible = True
          ItemName = 'mnuRefresh'
        end
        item
          Visible = True
          ItemName = 'mnuPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuCustomFilter'
        end>
    end
    inherited mnuRefresh: TdxBarButton
      Caption = 'Generate'
    end
    object edMonth: TcxBarEditItem
      Caption = 'Period'
      Category = 0
      Hint = 'Period'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Januari'
          ImageIndex = 0
          Value = '01'
        end
        item
          Description = 'Februari'
          Value = '02'
        end
        item
          Description = 'Maret'
          Value = '03'
        end
        item
          Description = 'April'
          Value = '04'
        end
        item
          Description = 'Mei'
          Value = '05'
        end
        item
          Description = 'Juni'
          Value = '06'
        end
        item
          Description = 'Juli'
          Value = '07'
        end
        item
          Description = 'Agustus'
          Value = '08'
        end
        item
          Description = 'September'
          Value = '09'
        end
        item
          Description = 'Oktober'
          Value = '10'
        end
        item
          Description = 'Nopember'
          Value = '11'
        end
        item
          Description = 'Desember'
          Value = '12'
        end>
      Properties.OnChange = edMonthPropertiesChange
    end
    object edYear: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxSpinEditProperties'
      Properties.ImmediatePost = True
      Properties.OnChange = edYearPropertiesChange
    end
  end
  inherited ReportContainer: TNClientReportContainer
    ReportName = 'Settlement\IDX_Monthly_Report.fr3'
    Params = <
      item
        DataType = ftUnknown
        Name = 'Period'
        ParamType = ptUnknown
      end>
  end
  object cdsIDXMonthlyReport: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'period'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmSettlement_qryIDXMonthlyTransReport'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 32
    Top = 224
    object cdsIDXMonthlyReportPeriod: TStringField
      FieldName = 'Period'
      Required = True
      Size = 8
    end
    object cdsIDXMonthlyReportCompanyName: TStringField
      DisplayLabel = 'Company Name'
      FieldName = 'CompanyName'
      Required = True
      Size = 100
    end
    object cdsIDXMonthlyReportReportNo: TStringField
      DisplayLabel = 'Report No'
      FieldName = 'ReportNo'
      OnChange = cdsIDXMonthlyReportReportNoChange
    end
    object cdsIDXMonthlyReportDirectorName: TStringField
      DisplayLabel = 'Director Name'
      FieldName = 'DirectorName'
      Required = True
      Size = 100
    end
    object cdsIDXMonthlyReportOccupation: TStringField
      FieldName = 'Occupation'
      Required = True
      Size = 100
    end
    object cdsIDXMonthlyReportRTBuy_Amount: TFloatField
      DisplayLabel = 'Buy Transaction'
      FieldName = 'RTBuy_Amount'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsIDXMonthlyReportRTSell_Amount: TFloatField
      DisplayLabel = 'Sell Transaction'
      FieldName = 'RTSell_Amount'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsIDXMonthlyReportOTBuy_Amount: TFloatField
      DisplayLabel = 'Buy Transaction'
      FieldName = 'OTBuy_Amount'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsIDXMonthlyReportOTSell_Amount: TFloatField
      DisplayLabel = 'Sell Transaction'
      FieldName = 'OTSell_Amount'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsIDXMonthlyReportDMABuy_Amount: TFloatField
      DisplayLabel = 'Buy Transaction'
      FieldName = 'DMABuy_Amount'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsIDXMonthlyReportDMASell_Amount: TFloatField
      DisplayLabel = 'Sell Transaction'
      FieldName = 'DMASell_Amount'
      Required = True
      DisplayFormat = '#,##0.00;(#,##0.00);0.00'
    end
    object cdsIDXMonthlyReportCreateDate: TDateTimeField
      FieldName = 'CreateDate'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsIDXMonthlyReportCreateSysDate: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'CreateSysDate'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsIDXMonthlyReportCreate_UI: TStringField
      DisplayLabel = 'User'
      FieldName = 'Create_UI'
      Size = 30
    end
    object cdsIDXMonthlyReportModda: TDateTimeField
      FieldName = 'Modda'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsIDXMonthlyReportModSysDate: TDateTimeField
      DisplayLabel = 'System Date'
      FieldName = 'ModSysDate'
      DisplayFormat = 'dd mmm yyyy hh:nn:ss.zzz'
    end
    object cdsIDXMonthlyReportModui: TStringField
      DisplayLabel = 'User'
      FieldName = 'Modui'
      Size = 30
    end
  end
end

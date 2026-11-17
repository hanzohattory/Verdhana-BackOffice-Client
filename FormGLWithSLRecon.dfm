inherited frmGLWithSLRecon: TfrmGLWithSLRecon
  Caption = 'GL With SL Reconcile'
  OnShow = FormShow
  ExplicitWidth = 607
  ExplicitHeight = 374
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 607
    Height = 43
    Align = alTop
    TabOrder = 0
    object dtTransDate: TcxDateEdit
      Left = 97
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.OnCloseUp = dtTransDatePropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Transaction Date'
      Parent = dxLayoutControl1Group_Root
      Control = dtTransDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 43
    Width = 607
    Height = 331
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 51
    ExplicitTop = 171
    ExplicitWidth = 250
    ExplicitHeight = 200
    object gvGLWithSLRecon: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsGLWithSLRecon
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvGLWithSLReconACCID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvGLWithSLReconACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvGLWithSLReconACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCNAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvGLWithSLReconGL_BALANCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GL_BALANCE'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvGLWithSLReconSL_BALANCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SL_BALANCE'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvGLWithSLReconDIFFERENT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DIFFERENT'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvGLWithSLRecon
    end
  end
  inherited ActionPermission: TNActionPermission
    ActionList = ActionList1
    Left = 257
    Top = 91
  end
  object cdsGLWithSLRecon: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRDDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmAccounting_qryGLwithSLRekon'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 246
    Top = 141
    object cdsGLWithSLReconACCID: TLargeintField
      FieldName = 'ACCID'
    end
    object cdsGLWithSLReconACCNO: TStringField
      DisplayLabel = 'Account Code'
      FieldName = 'ACCNO'
      Size = 30
    end
    object cdsGLWithSLReconACCNAME: TStringField
      DisplayLabel = 'Account Name'
      FieldName = 'ACCNAME'
      Size = 150
    end
    object cdsGLWithSLReconGL_BALANCE: TFloatField
      DisplayLabel = 'GL Balance'
      FieldName = 'GL_BALANCE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsGLWithSLReconSL_BALANCE: TFloatField
      DisplayLabel = 'SL Balance'
      FieldName = 'SL_BALANCE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsGLWithSLReconDIFFERENT: TFloatField
      DisplayLabel = 'Different'
      FieldName = 'DIFFERENT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object ActionList1: TActionList
    Left = 258
    Top = 189
  end
  object dsGLWithSLRecon: TDataSource
    DataSet = cdsGLWithSLRecon
    Left = 387
    Top = 141
  end
end

inherited frmGLWithFL: TfrmGLWithFL
  Caption = 'GL With FL'
  ClientHeight = 367
  OnShow = FormShow
  ExplicitWidth = 607
  ExplicitHeight = 367
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 607
    Height = 46
    Align = alTop
    TabOrder = 0
    object dtTrDate: TcxDateEdit
      Left = 97
      Top = 10
      Properties.DisplayFormat = 'dd mmm yyyy'
      Properties.OnCloseUp = dtTrDatePropertiesCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 224
      Top = 10
      Width = 89
      Height = 25
      Action = adtRefrehData
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
      CaptionOptions.Text = 'Transaction Date'
      Parent = dxLayoutControl1Group1
      Control = dtTrDate
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group_Root
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = dxLayoutControl1Group_Root
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 46
    Width = 607
    Height = 321
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 138
    ExplicitTop = 132
    ExplicitWidth = 250
    ExplicitHeight = 200
    object gvwGLWithFL: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsGLWithFL
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwGLWithFLALTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALTYPE'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwGLWithFLALCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALCODE'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwGLWithFLGLACCOUNTCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GLACCOUNTCODE'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwGLWithFLGLACCOUNTNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GLACCOUNTNAME'
        Width = 300
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwGLWithFLACCBANKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCBANKCODE'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwGLWithFLBNCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNCODE'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwGLWithFLBANKACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwGLWithFLFL_CCY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FL_CCY'
        Width = 64
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwGLWithFLFL_BALANCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FL_BALANCE'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwGLWithFLGL_CCY: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GL_CCY'
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwGLWithFLGL_BALANCE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GL_BALANCE'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwGLWithFLDIFFERENT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DIFFERENT'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwGLWithFL
    end
  end
  inherited popDocking: TPopupMenu
    Left = 393
    Top = 193
  end
  inherited ActionPermission: TNActionPermission
    ActionList = ActionList1
    Left = 260
    Top = 199
  end
  object dsGLWithFL: TDataSource
    DataSet = cdsGLWithFL
    Left = 330
    Top = 147
  end
  object cdsGLWithFL: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'TRDDATE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryNsfGLwithFLRekon'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Left = 264
    Top = 141
    object cdsGLWithFLALTYPE: TStringField
      DisplayLabel = 'AL Type'
      FieldName = 'ALTYPE'
    end
    object cdsGLWithFLALCODE: TStringField
      DisplayLabel = 'AL Code'
      FieldName = 'ALCODE'
    end
    object cdsGLWithFLGLACCOUNTCODE: TStringField
      DisplayLabel = 'GL Account Code'
      FieldName = 'GLACCOUNTCODE'
      Size = 30
    end
    object cdsGLWithFLGLACCOUNTNAME: TStringField
      DisplayLabel = 'GL Account Name'
      FieldName = 'GLACCOUNTNAME'
      Size = 150
    end
    object cdsGLWithFLACCBANKCODE: TStringField
      DisplayLabel = 'Account Bank Code'
      FieldName = 'ACCBANKCODE'
    end
    object cdsGLWithFLBNCODE: TStringField
      DisplayLabel = 'Bank Code'
      FieldName = 'BNCODE'
      Size = 10
    end
    object cdsGLWithFLBANKACCNO: TStringField
      DisplayLabel = 'Bank Account No'
      FieldName = 'BANKACCNO'
    end
    object cdsGLWithFLFL_CCY: TStringField
      DisplayLabel = 'FL Currency'
      FieldName = 'FL_CCY'
      Size = 5
    end
    object cdsGLWithFLFL_BALANCE: TFloatField
      DisplayLabel = 'FL Balance'
      FieldName = 'FL_BALANCE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsGLWithFLGL_CCY: TStringField
      DisplayLabel = 'GL Currency'
      FieldName = 'GL_CCY'
      Size = 5
    end
    object cdsGLWithFLGL_BALANCE: TFloatField
      DisplayLabel = 'GL Balance'
      FieldName = 'GL_BALANCE'
      DisplayFormat = '#,##0;(#,##0);0'
    end
    object cdsGLWithFLDIFFERENT: TFloatField
      DisplayLabel = 'Different'
      FieldName = 'DIFFERENT'
      DisplayFormat = '#,##0;(#,##0);0'
    end
  end
  object ActionList1: TActionList
    Left = 162
    Top = 198
    object adtRefrehData: TAction
      Caption = 'Refresh Data'
      OnExecute = adtRefrehDataExecute
    end
  end
end

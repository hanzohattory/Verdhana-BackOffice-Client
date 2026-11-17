inherited frmReportGridCategory: TfrmReportGridCategory
  Caption = 'Report Grid Category'
  ClientHeight = 160
  ClientWidth = 498
  ExplicitWidth = 504
  ExplicitHeight = 189
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 498
    Height = 70
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 88
      Top = 10
      DataBinding.DataField = 'CATEGORY_CODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 120
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 88
      Top = 37
      DataBinding.DataField = 'DESCRIPTION'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 400
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Category Code'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 91
    Width = 498
    inherited dbNavLog: TDBNavigator
      Left = 384
      Hints.Strings = ()
      ExplicitLeft = 384
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
    Top = 140
    Width = 498
  end
  inherited tabEditorData: TTabSet
    Top = 70
    Width = 498
  end
  inherited dsSubject: TDataSource
    DataSet = cdsReportCategory
    Left = 48
  end
  object cdsReportCategory: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CATEGORY_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmReport_qryReportCategory'
    RemoteServer = dmGlobal.dspConnection
    BeforePost = cdsReportCategoryBeforePost
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 48
    Top = 64
    object cdsReportCategoryCATEGORY_ID: TIntegerField
      FieldName = 'CATEGORY_ID'
    end
    object cdsReportCategoryCATEGORY_CODE: TStringField
      FieldName = 'CATEGORY_CODE'
      Required = True
      Size = 10
    end
    object cdsReportCategoryDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Required = True
      Size = 100
    end
    object cdsReportCategoryPARENT_CATEGORY_ID: TIntegerField
      FieldName = 'PARENT_CATEGORY_ID'
    end
    object cdsReportCategoryMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsReportCategoryMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsReportCategoryAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsReportCategoryAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsReportCategoryUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsReportCategoryUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsReportCategoryNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsReportCategoryISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsReportCategoryID: TLargeintField
      FieldName = 'ID'
    end
  end
end

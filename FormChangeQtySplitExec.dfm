inherited frmChangeQtySplitExec: TfrmChangeQtySplitExec
  Caption = 'Set Qty Split Execution'
  ClientHeight = 148
  ClientWidth = 252
  ExplicitWidth = 258
  ExplicitHeight = 177
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 252
    Height = 78
    ExplicitWidth = 515
    ExplicitHeight = 235
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit [0]
      Left = 97
      Top = 10
      DataBinding.DataField = 'EXQTY'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object edSplitQty: TcxCurrencyEdit [1]
      Left = 97
      Top = 37
      Properties.DisplayFormat = '#,##0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    inherited dxLayoutControl1Group_Root: TdxLayoutGroup
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'Current Quantity'
      Parent = dxLayoutControl1Group_Root
      Control = cxDBCurrencyEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Split Quantity'
      Parent = dxLayoutControl1Group_Root
      Control = edSplitQty
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 78
    Width = 252
    ExplicitTop = 235
    ExplicitWidth = 515
    inherited dxLayoutControl2Group_Root: TdxLayoutGroup
      Index = -1
    end
    inherited dxLayoutControl2Item1: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl2Item2: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutControl2Group1: TdxLayoutGroup
      Index = 1
    end
  end
  inherited StatusBar: TdxStatusBar
    Top = 128
    Width = 252
    ExplicitTop = 121
    ExplicitWidth = 252
  end
  inherited dsSubject: TDataSource
    DataSet = cdsDealTicketPerExec
    Left = 128
    Top = 56
  end
  object cdsDealTicketPerExec: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftLargeint
        Name = 'DEALTICKETID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'SEQID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmMiddleOffice_qryDealTicketPerExec'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 48
    Top = 56
    object cdsDealTicketPerExecEXQTY: TLargeintField
      FieldName = 'EXQTY'
      ReadOnly = True
    end
  end
end

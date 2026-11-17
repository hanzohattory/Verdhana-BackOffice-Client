object frmSOPAccBank: TfrmSOPAccBank
  Left = 0
  Top = 0
  Caption = 'SOP Account Bank'
  ClientHeight = 317
  ClientWidth = 761
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
    Top = 0
    Width = 761
    Height = 70
    Align = alTop
    TabOrder = 0
    object txtNIK: TcxTextEdit
      Left = 82
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Text = 'txtNIK'
      Width = 159
    end
    object txtAccCode: TcxTextEdit
      Left = 82
      Top = 37
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Text = 'txtAccCode'
      Width = 159
    end
    object txtAccName: TcxTextEdit
      Left = 247
      Top = 37
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Text = 'txtAccName'
      Width = 426
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
      AlignHorz = ahLeft
      CaptionOptions.Text = 'NIK'
      Parent = dxLayoutControl1Group_Root
      Control = txtNIK
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Account Code'
      Parent = dxLayoutControl1Group1
      Control = txtAccCode
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'cxTextEdit3'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group1
      Control = txtAccName
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
      Index = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 70
    Width = 761
    Height = 212
    Align = alClient
    TabOrder = 1
    object gvwSOPAccBank: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dsAccSOPBank
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsData.Inserting = False
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Styles.ContentOdd = dmGlobal.BlueToggle2
      Bands = <
        item
        end>
      object gvwSOPAccBankACCSOPID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCSOPID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwSOPAccBankMSOP_BANKID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MSOP_BANKID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwSOPAccBankACCBANKCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ACCBANKCODE'
        Width = 111
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwSOPAccBankBNCODE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BNCODE'
        RepositoryItem = dmGlobal.luBank
        Width = 89
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwSOPAccBankBANKACCNO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCNO'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwSOPAccBankBANKACCNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKACCNAME'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwSOPAccBankBANKBRANCH: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BANKBRANCH'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwSOPAccBankREMARKS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REMARKS'
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwSOPAccBankASDEFAULT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ASDEFAULT'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Width = 56
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = gvwSOPAccBank
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 282
    Width = 761
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Ok: TcxButton
      Left = 9
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
      OnClick = OkClick
    end
    object Cancel: TcxButton
      Left = 87
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object dsAccSOPBank: TDataSource
    DataSet = frmSOPMember.cdsAccSOPBank
    Left = 408
    Top = 147
  end
end

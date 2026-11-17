inherited frmMonthlyLTAB: TfrmMonthlyLTAB
  Caption = 'Monthly LTAB'
  ClientWidth = 717
  ExplicitWidth = 717
  TextHeight = 13
  inherited ReportContainer: TfrxPreview
    Width = 717
  end
  inherited lcParameter: TdxLayoutControl
    Width = 717
    ExplicitWidth = 717
    object cbMonth: TcxImageComboBox [0]
      Left = 45
      Top = 10
      Properties.Items = <
        item
          Description = 'January'
          ImageIndex = 0
          Value = '1'
        end
        item
          Description = 'February'
          Value = '2'
        end
        item
          Description = 'March'
          Value = '3'
        end
        item
          Description = 'April'
          Value = '4'
        end
        item
          Description = 'May'
          Value = '5'
        end
        item
          Description = 'June'
          Value = '6'
        end
        item
          Description = 'July'
          Value = '7'
        end
        item
          Description = 'August'
          Value = '8'
        end
        item
          Description = 'September'
          Value = '9'
        end
        item
          Description = 'October'
          Value = '10'
        end
        item
          Description = 'November'
          Value = '11'
        end
        item
          Description = 'December'
          Value = '12'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object edYear: TcxSpinEdit [1]
      Left = 181
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Width = 121
    end
    object cbStockFrom: TcxLookupComboBox [2]
      Left = 45
      Top = 37
      RepositoryItem = dmGlobal.luInstrumentAll
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object cbStockTo: TcxLookupComboBox [3]
      Left = 181
      Top = 37
      RepositoryItem = dmGlobal.luInstrumentAll
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object ckSelectAll: TcxCheckBox [4]
      Left = 308
      Top = 37
      Caption = 'Select All'
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      OnClick = ckSelectAllClick
    end
    object lcParameterItem1: TdxLayoutItem
      Parent = lcParameterGroup1
      CaptionOptions.Text = 'Period'
      Control = cbMonth
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterItem2: TdxLayoutItem
      Parent = lcParameterGroup2
      CaptionOptions.Text = '-'
      Control = edYear
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup1: TdxLayoutGroup
      Parent = lcParameterGroup2
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lcParameterItem3: TdxLayoutItem
      Parent = lcParameterGroup3
      CaptionOptions.Text = 'Stock'
      Control = cbStockFrom
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcParameterGroup2: TdxLayoutGroup
      Parent = lcParameterGroup_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcParameterItem4: TdxLayoutItem
      Parent = lcParameterGroup3
      CaptionOptions.Text = '-'
      Control = cbStockTo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcParameterGroup3: TdxLayoutGroup
      Parent = lcParameterGroup_Root
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lcParameterItem5: TdxLayoutItem
      Parent = lcParameterGroup3
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = ckSelectAll
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited spReport: TcxSplitter
    Width = 717
    ExplicitWidth = 717
  end
  inherited StatusBar: TdxStatusBar
    Width = 717
    ExplicitWidth = 717
  end
  inherited barMReport: TdxBarManager
    PixelsPerInch = 96
    inherited dxBarManager1Bar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'barPrint'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'barExportToPdf'
        end
        item
          Visible = True
          ItemName = 'dxBarButton26'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'ZoomScale'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 52
          Visible = True
          ItemName = 'txtPages'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'barOutline'
        end
        item
          Visible = True
          ItemName = 'barThumbnails'
        end
        item
          Visible = True
          ItemName = 'barPageSetting'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'barReloadData'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end>
    end
    object dxBarButton1: TdxBarButton
      Caption = 'Generate Tax File'
      Category = 0
      Hint = 'Generate Tax File'
      Visible = ivAlways
      ImageIndex = 26
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton1Click
    end
  end
  inherited Report: TNClientReportContainer
    ReportName = 'FA\MonthlyLTAB.fr3'
    Params = <
      item
        DataType = ftInteger
        Name = 'MONTH'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'YEAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'STOCKIDFROM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'STOCKIDTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ISALL'
        ParamType = ptInput
      end>
  end
  object cdsBuktiPotongPajak: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'MONTH'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'YEAR'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspN_dmReport_qryBuktiPotongPajak'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 544
    Top = 70
    object cdsBuktiPotongPajakNPWPPemotong: TStringField
      FieldName = 'NPWP Pemotong'
      Size = 250
    end
    object cdsBuktiPotongPajakMasaPajak: TIntegerField
      FieldName = 'Masa Pajak'
      ReadOnly = True
    end
    object cdsBuktiPotongPajakTahunPajak: TIntegerField
      FieldName = 'Tahun Pajak'
      ReadOnly = True
    end
    object cdsBuktiPotongPajakNPWP: TStringField
      FieldName = 'NPWP'
      ReadOnly = True
      Size = 30
    end
    object cdsBuktiPotongPajakIDTKUPenerimaPenghasilan: TStringField
      FieldName = 'ID TKU Penerima Penghasilan'
      ReadOnly = True
      Size = 36
    end
    object cdsBuktiPotongPajakFasilitas: TStringField
      FieldName = 'Fasilitas'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object cdsBuktiPotongPajakKodeObjekPajak: TStringField
      FieldName = 'Kode Objek Pajak'
      ReadOnly = True
      Required = True
      Size = 9
    end
    object cdsBuktiPotongPajakDPP: TFloatField
      FieldName = 'DPP'
      ReadOnly = True
    end
    object cdsBuktiPotongPajakTarif: TFloatField
      FieldName = 'Tarif'
      ReadOnly = True
      Required = True
    end
    object cdsBuktiPotongPajakJenisDokReferensi: TStringField
      FieldName = 'Jenis Dok. Referensi'
      ReadOnly = True
      Required = True
      Size = 17
    end
    object cdsBuktiPotongPajakNomorDokReferensi: TStringField
      FieldName = 'Nomor Dok. Referensi'
      ReadOnly = True
      Size = 8000
    end
    object cdsBuktiPotongPajakTanggalDokReferensi: TWideStringField
      FieldName = 'Tanggal Dok. Referensi'
      ReadOnly = True
      Size = 4000
    end
    object cdsBuktiPotongPajakIDTKUPemotong: TStringField
      FieldName = 'ID TKU Pemotong'
      ReadOnly = True
      Size = 256
    end
    object cdsBuktiPotongPajakOpsiPembayaranIP: TStringField
      FieldName = 'Opsi Pembayaran (IP)'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object cdsBuktiPotongPajakNomorSP2DIP: TStringField
      FieldName = 'Nomor SP2D (IP)'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object cdsBuktiPotongPajakTanggalPemotongan: TWideStringField
      FieldName = 'Tanggal Pemotongan'
      ReadOnly = True
      Size = 4000
    end
  end
  object SaveDialog: TSaveDialog
    Filter = 'XML File|*.xml|Excel File|*.xlsx'
    Left = 424
    Top = 304
  end
end

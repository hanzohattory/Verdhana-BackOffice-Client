inherited frmCOBDetailsInst: TfrmCOBDetailsInst
  Caption = 'Client On Boarding Institution'
  ClientHeight = 682
  ClientWidth = 923
  ExplicitWidth = 929
  ExplicitHeight = 710
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Top = 26
    Width = 923
    Height = 607
    Align = alBottom
    ExplicitTop = 26
    ExplicitWidth = 923
    ExplicitHeight = 607
    object OATabs: TcxPageControl [0]
      Left = 10
      Top = 10
      Width = 898
      Height = 583
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      Properties.ActivePage = TabParticular
      Properties.CustomButtons.Buttons = <>
      Properties.HideTabs = True
      ClientRectBottom = 579
      ClientRectLeft = 4
      ClientRectRight = 894
      ClientRectTop = 4
      object TabParticular: TcxTabSheet
        Caption = 'TabParticular'
        ImageIndex = 0
        OnShow = TabParticularShow
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 890
          Height = 575
          Align = alClient
          TabOrder = 0
          object cmbTypeOfSecurities: TcxDBImageComboBox
            Left = 193
            Top = 10
            DataBinding.DataField = 'ACC_TYPE_SEC'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Regular Safekeeping'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'Regular Non Safekeeping'
                Value = '2'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 0
            Width = 121
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 22
            Top = 100
            DataBinding.DataField = 'NAME'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 3
            Width = 439
          end
          object cxDBImageComboBox2: TcxDBImageComboBox
            Left = 162
            Top = 127
            DataBinding.DataField = 'CLIENT_STATUS'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Local'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = 'Foreign'
                Value = 2
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 4
            Width = 151
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 162
            Top = 154
            DataBinding.DataField = 'SWIFTCODE'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 5
            Width = 299
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 162
            Top = 181
            DataBinding.DataField = 'SIUP_NO'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 6
            Width = 299
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 162
            Top = 208
            DataBinding.DataField = 'TDP_NO'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 7
            Width = 299
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 162
            Top = 235
            DataBinding.DataField = 'TDP_REG_DATE'
            DataBinding.DataSource = dsSubject
            Properties.DisplayFormat = 'dd mmm yyyy'
            Properties.EditFormat = 'dd/mm/yyyy'
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 8
            Width = 103
          end
          object cxDBDateEdit2: TcxDBDateEdit
            Left = 352
            Top = 235
            DataBinding.DataField = 'TDP_INVALID_DATE'
            DataBinding.DataSource = dsSubject
            Properties.DisplayFormat = 'dd mmm yyyy'
            Properties.EditFormat = 'dd/mm/yyyy'
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 9
            Width = 109
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Left = 162
            Top = 262
            DataBinding.DataField = 'COMP_ESTABLISH_PLACE'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 10
            Width = 176
          end
          object cxDBDateEdit3: TcxDBDateEdit
            Left = 372
            Top = 262
            DataBinding.DataField = 'COMP_ESTABLISH_DATE'
            DataBinding.DataSource = dsSubject
            Properties.DisplayFormat = 'dd mmm yyyy'
            Properties.EditFormat = 'dd/mm/yyyy'
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 11
            Width = 89
          end
          object cxDBTextEdit7: TcxDBTextEdit
            Left = 162
            Top = 289
            DataBinding.DataField = 'DEED_ESTABLISH_PLACE'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 12
            Width = 176
          end
          object cxDBDateEdit4: TcxDBDateEdit
            Left = 372
            Top = 289
            DataBinding.DataField = 'DEED_ESTABLISH_DATE'
            DataBinding.DataSource = dsSubject
            Properties.DisplayFormat = 'dd mmm yyyy'
            Properties.EditFormat = 'dd/mm/yyyy'
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 13
            Width = 89
          end
          object cxDBTextEdit8: TcxDBTextEdit
            Left = 162
            Top = 316
            DataBinding.DataField = 'NOTARY'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 14
            Width = 299
          end
          object cxDBTextEdit9: TcxDBTextEdit
            Left = 162
            Top = 343
            DataBinding.DataField = 'APPROVER_HAM_MINISTRI'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 15
            Width = 299
          end
          object cxDBTextEdit10: TcxDBTextEdit
            Left = 162
            Top = 370
            DataBinding.DataField = 'ANNOUNC_STATE_GAZELLE'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 16
            Width = 299
          end
          object TaxpayerChk: TcxDBImageComboBox
            Left = 162
            Top = 397
            DataBinding.DataField = 'TAX_REG_CHK'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Yes'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = 'No'
                Value = 0
              end>
            Properties.OnChange = TaxpayerChkPropertiesChange
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 17
            Width = 47
          end
          object cxDBDateEdit5: TcxDBDateEdit
            Left = 162
            Top = 424
            DataBinding.DataField = 'TAS_REG_DATE'
            DataBinding.DataSource = dsSubject
            Properties.DisplayFormat = 'dd mmm yyyy'
            Properties.EditFormat = 'dd/mm/yyyy'
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 19
            Width = 121
          end
          object FormOfBusinessChk: TcxDBImageComboBox
            Left = 162
            Top = 451
            DataBinding.DataField = 'BUSINESS_ENTITY_CHK'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Limited Liability'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'Foundation'
                Value = '2'
              end
              item
                Description = 'Cooperative'
                Value = '3'
              end
              item
                Description = 'Alliance Partnership'
                Value = '4'
              end
              item
                Description = 'Trading Bussiness'
                Value = '5'
              end
              item
                Description = 'Firm'
                Value = '6'
              end
              item
                Description = 'Others'
                Value = '7'
              end>
            Properties.OnChange = FormOfBusinessChkPropertiesChange
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 20
            Width = 223
          end
          object cxDBTextEdit12: TcxDBTextEdit
            Left = 162
            Top = 478
            DataBinding.DataField = 'BUSINESS_ENTITY_OTHER'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 21
            Width = 299
          end
          object LineOfBusinessChk: TcxDBImageComboBox
            Left = 162
            Top = 505
            DataBinding.DataField = 'BUSINESS_LINE_CHK'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Service'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'Financial Institution'
                Value = '2'
              end
              item
                Description = 'Asset Management'
                Value = '3'
              end
              item
                Description = 'Plantation'
                Value = '4'
              end
              item
                Description = 'Pesion Fund'
                Value = '5'
              end
              item
                Description = 'Mining'
                Value = '6'
              end
              item
                Description = 'Insurance'
                Value = '7'
              end
              item
                Description = 'Transportation'
                Value = '8'
              end
              item
                Description = 'Industry'
                Value = '9'
              end
              item
                Description = 'Contractor'
                Value = '10'
              end
              item
                Description = 'Trading'
                Value = '11'
              end
              item
                Description = 'Security Company'
                Value = '12'
              end
              item
                Description = 'Ohers'
                Value = '13'
              end>
            Properties.OnChange = LineOfBusinessChkPropertiesChange
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 22
            Width = 121
          end
          object cxDBTextEdit13: TcxDBTextEdit
            Left = 162
            Top = 532
            DataBinding.DataField = 'BUSINESS_LINE_OTHER'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 23
            Width = 299
          end
          object CompanyCharateristicChk: TcxDBImageComboBox
            Left = 608
            Top = 82
            DataBinding.DataField = 'COMPANY_CHARACTER_CHK'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'State Own Enterprise'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'Affilation'
                Value = '2'
              end
              item
                Description = 'Family Business'
                Value = '3'
              end
              item
                Description = 'Foreign Invesment'
                Value = '4'
              end
              item
                Description = 'Local Invesment Company'
                Value = '5'
              end
              item
                Description = 'Social'
                Value = '6'
              end
              item
                Description = 'Join Venture'
                Value = '7'
              end
              item
                Description = 'Others'
                Value = '8'
              end>
            Properties.OnChange = CompanyCharateristicChkPropertiesChange
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 24
            Width = 121
          end
          object txtCompanyCharateristik: TcxDBTextEdit
            Left = 608
            Top = 109
            DataBinding.DataField = 'COMPANY_CHARACTER_OTHER'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 25
            Width = 260
          end
          object cxDBMemo1: TcxDBMemo
            Left = 608
            Top = 136
            DataBinding.DataField = 'OFFC_ADDR_ASSKDP'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 26
            Height = 39
            Width = 260
          end
          object cxDBLookupComboBox1: TcxDBLookupComboBox
            Left = 608
            Top = 208
            RepositoryItem = dmGlobal.luCountry
            DataBinding.DataField = 'OFFC_COUNTRY'
            DataBinding.DataSource = dsSubject
            Properties.KeyFieldNames = 'NATIONALIST'
            Properties.ListColumns = <
              item
                FieldName = 'NATIONALIST'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 29
            Width = 145
          end
          object cxDBTextEdit15: TcxDBTextEdit
            Left = 806
            Top = 181
            DataBinding.DataField = 'OFFC_ZIPCODE'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 28
            Width = 62
          end
          object cxDBMemo2: TcxDBMemo
            Left = 608
            Top = 235
            DataBinding.DataField = 'CORESP_ADDR'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 30
            Height = 48
            Width = 260
          end
          object cxDBTextEdit17: TcxDBTextEdit
            Left = 806
            Top = 289
            DataBinding.DataField = 'CORESP_ZIPCODE'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 32
            Width = 62
          end
          object cxDBLookupComboBox2: TcxDBLookupComboBox
            Left = 608
            Top = 316
            RepositoryItem = dmGlobal.luCountry
            DataBinding.DataField = 'CORESP_COUNTRY'
            DataBinding.DataSource = dsSubject
            Properties.KeyFieldNames = 'NATIONALIST'
            Properties.ListColumns = <
              item
                FieldName = 'NATIONALIST'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 33
            Width = 145
          end
          object cxDBImageComboBox3: TcxDBImageComboBox
            Left = 608
            Top = 343
            DataBinding.DataField = 'OFFC_BUILD_STATUS'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Personal Property'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'Rent'
                Value = '2'
              end
              item
                Description = 'Others'
                Value = '3'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 34
            Width = 145
          end
          object cxDBCurrencyEdit3: TcxDBCurrencyEdit
            Left = 608
            Top = 370
            DataBinding.DataField = 'OFFC_LENGTH_COREPON'
            DataBinding.DataSource = dsSubject
            Properties.DisplayFormat = '#,##0'
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 35
            Width = 65
          end
          object cxDBTextEdit18: TcxDBTextEdit
            Left = 608
            Top = 397
            DataBinding.DataField = 'OFFC_PHONE_NO'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 36
            Width = 190
          end
          object cxDBTextEdit19: TcxDBTextEdit
            Left = 608
            Top = 424
            DataBinding.DataField = 'OFFC_FAX_NO'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 37
            Width = 190
          end
          object cxDBTextEdit20: TcxDBTextEdit
            Left = 608
            Top = 451
            DataBinding.DataField = 'EMAIL_ADDR'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 38
            Width = 190
          end
          object cxDBTextEdit21: TcxDBTextEdit
            Left = 608
            Top = 478
            DataBinding.DataField = 'OFFC_FAX_NO_OTHER'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 39
            Width = 190
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 193
            Top = 37
            DataBinding.DataField = 'SID'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 2
            Width = 268
          end
          object cxDBImageComboBox15: TcxDBImageComboBox
            Left = 362
            Top = 10
            DataBinding.DataField = 'PRD_CODE'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Reguler'
                ImageIndex = 0
                Value = 'EQS'
              end
              item
                Description = 'Margin'
                Value = 'EQM'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 1
            Width = 121
          end
          object cxDBLookupComboBox3: TcxDBLookupComboBox
            Left = 608
            Top = 289
            RepositoryItem = dmGlobal.luCity
            DataBinding.DataField = 'CORESP_CITY'
            DataBinding.DataSource = dsSubject
            Properties.ListColumns = <>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 31
            Width = 145
          end
          object cxDBLookupComboBox4: TcxDBLookupComboBox
            Left = 608
            Top = 181
            RepositoryItem = dmGlobal.luCity
            DataBinding.DataField = 'OFFC_CITY'
            DataBinding.DataSource = dsSubject
            Properties.ListColumns = <>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 27
            Width = 145
          end
          object cxDBMaskEdit1: TcxDBMaskEdit
            Left = 259
            Top = 397
            DataBinding.DataField = 'TAXPAYER_REG'
            DataBinding.DataSource = dsSubject
            Properties.EditMask = '00.000.000.0-000.000'
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 18
            Width = 202
          end
          object dxLayoutGroup1: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutControl1Group16
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Type of Securities Account'
            Control = cmbTypeOfSecurities
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Group2: TdxLayoutGroup
            Parent = dxLayoutControl1Group11
            CaptionOptions.Text = 'Client Data'
            ButtonOptions.Buttons = <>
            Index = 0
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            Parent = dxLayoutControl1Group2
            CaptionOptions.Text = 'Client Name as in lates Article of Association'
            CaptionOptions.Layout = clTop
            Control = cxDBTextEdit2
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 439
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            Parent = dxLayoutControl1Group2
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Company Status'
            Control = cxDBImageComboBox2
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 151
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Item5: TdxLayoutItem
            Parent = dxLayoutControl1Group2
            AlignHorz = ahClient
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'SWIFT Code'
            Control = cxDBTextEdit3
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 299
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            Parent = dxLayoutControl1Group2
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'S I U P  No.'
            Control = cxDBTextEdit4
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 299
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            Parent = dxLayoutControl1Group2
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'T D P No.'
            Control = cxDBTextEdit5
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 299
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutControl1Item8: TdxLayoutItem
            Parent = dxLayoutGroup2
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'T D P Reg. Date'
            Control = cxDBDateEdit1
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 103
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item9: TdxLayoutItem
            Parent = dxLayoutGroup2
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'T D P Valid Date'
            Control = cxDBDateEdit2
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 109
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutGroup2: TdxLayoutGroup
            Parent = dxLayoutControl1Group2
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 5
          end
          object dxLayoutControl1Item10: TdxLayoutItem
            Parent = dxLayoutControl1Group7
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Establishment Place'
            Control = cxDBTextEdit6
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 176
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item11: TdxLayoutItem
            Parent = dxLayoutControl1Group7
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Date'
            Control = cxDBDateEdit3
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 89
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Group3: TdxLayoutGroup
            Parent = dxLayoutControl1Group2
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 6
          end
          object dxLayoutControl1Item12: TdxLayoutItem
            Parent = dxLayoutControl1Group5
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Establisment Deed'
            Control = cxDBTextEdit7
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 176
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item13: TdxLayoutItem
            Parent = dxLayoutControl1Group5
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Date'
            Control = cxDBDateEdit4
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 89
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Group5: TdxLayoutGroup
            Parent = dxLayoutControl1Group3
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Group7: TdxLayoutGroup
            Parent = dxLayoutControl1Group3
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item14: TdxLayoutItem
            Parent = dxLayoutControl1Group2
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Drawn Before The Notary'
            Control = cxDBTextEdit8
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 299
            ControlOptions.ShowBorder = False
            Index = 7
          end
          object dxLayoutControl1Item15: TdxLayoutItem
            Parent = dxLayoutControl1Group2
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Approval From HAM Ministry'
            Control = cxDBTextEdit9
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 299
            ControlOptions.ShowBorder = False
            Index = 8
          end
          object dxLayoutControl1Item16: TdxLayoutItem
            Parent = dxLayoutControl1Group2
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Announcement in State'
            Control = cxDBTextEdit10
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 299
            ControlOptions.ShowBorder = False
            Index = 9
          end
          object dxLayoutControl1Item17: TdxLayoutItem
            Parent = dxLayoutControl1Group8
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Taxpayer Registration'
            Control = TaxpayerChk
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 47
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Group4: TdxLayoutGroup
            Parent = dxLayoutControl1Group2
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 10
          end
          object dxLayoutControl1Item18: TdxLayoutItem
            Parent = dxLayoutControl1Group6
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Tax Reg Date'
            Control = cxDBDateEdit5
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Group6: TdxLayoutGroup
            Parent = dxLayoutControl1Group4
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Group8: TdxLayoutGroup
            Parent = dxLayoutControl1Group6
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item19: TdxLayoutItem
            Parent = dxLayoutControl1Group2
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Form Of Business Entity'
            Control = FormOfBusinessChk
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 223
            ControlOptions.ShowBorder = False
            Index = 11
          end
          object txtFormOfBusinessOther: TdxLayoutItem
            Parent = dxLayoutControl1Group2
            CaptionOptions.Text = ' '
            Visible = False
            Control = cxDBTextEdit12
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 299
            ControlOptions.ShowBorder = False
            Index = 12
          end
          object dxLayoutControl1Item20: TdxLayoutItem
            Parent = dxLayoutControl1Group2
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Line of Business'
            Control = LineOfBusinessChk
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 13
          end
          object txtLineOfBusiness: TdxLayoutItem
            Parent = dxLayoutControl1Group2
            CaptionOptions.Text = ' '
            Visible = False
            Control = cxDBTextEdit13
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 299
            ControlOptions.ShowBorder = False
            Index = 14
          end
          object dxLayoutControl1Group9: TdxLayoutGroup
            Parent = dxLayoutControl1Group11
            ButtonOptions.Buttons = <>
            Index = 1
          end
          object dxLayoutControl1Group10: TdxLayoutGroup
            Parent = dxLayoutGroup1
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Group11: TdxLayoutGroup
            Parent = dxLayoutControl1Group10
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Item21: TdxLayoutItem
            Parent = dxLayoutControl1Group9
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Company Charateristic'
            Control = CompanyCharateristicChk
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object txtLayoutChar: TdxLayoutItem
            Parent = dxLayoutControl1Group9
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = ' '
            Visible = False
            Control = txtCompanyCharateristik
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 260
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Item23: TdxLayoutItem
            Parent = dxLayoutControl1Group9
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.AlignVert = tavTop
            CaptionOptions.Text = 'Company Address'
            Control = cxDBMemo1
            ControlOptions.OriginalHeight = 39
            ControlOptions.OriginalWidth = 260
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Item25: TdxLayoutItem
            Parent = dxLayoutControl1Group9
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Country'
            Control = cxDBLookupComboBox1
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 145
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutControl1Item26: TdxLayoutItem
            Parent = dxLayoutControl1Group12
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Zip Code'
            Control = cxDBTextEdit15
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 62
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Group12: TdxLayoutGroup
            Parent = dxLayoutControl1Group9
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 3
          end
          object dxLayoutControl1Item27: TdxLayoutItem
            Parent = dxLayoutControl1Group9
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.AlignVert = tavTop
            CaptionOptions.Text = 'Corepondence Address'
            Control = cxDBMemo2
            ControlOptions.OriginalHeight = 48
            ControlOptions.OriginalWidth = 260
            ControlOptions.ShowBorder = False
            Index = 5
          end
          object dxLayoutControl1Item29: TdxLayoutItem
            Parent = dxLayoutControl1Group15
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Zip Code'
            Control = cxDBTextEdit17
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 62
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Group13: TdxLayoutGroup
            Parent = dxLayoutControl1Group9
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 6
          end
          object dxLayoutControl1Item30: TdxLayoutItem
            Parent = dxLayoutControl1Group14
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Country'
            Control = cxDBLookupComboBox2
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 145
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Group14: TdxLayoutGroup
            Parent = dxLayoutControl1Group13
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Group15: TdxLayoutGroup
            Parent = dxLayoutControl1Group14
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item31: TdxLayoutItem
            Parent = dxLayoutControl1Group9
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Head Office Status'
            Control = cxDBImageComboBox3
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 145
            ControlOptions.ShowBorder = False
            Index = 7
          end
          object dxLayoutControl1Item32: TdxLayoutItem
            Parent = dxLayoutControl1Group9
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Lenght Of Occupation'
            Control = cxDBCurrencyEdit3
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 65
            ControlOptions.ShowBorder = False
            Index = 8
          end
          object dxLayoutControl1Item33: TdxLayoutItem
            Parent = dxLayoutControl1Group9
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Telephone No.'
            Control = cxDBTextEdit18
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 190
            ControlOptions.ShowBorder = False
            Index = 9
          end
          object dxLayoutControl1Item34: TdxLayoutItem
            Parent = dxLayoutControl1Group9
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Fax No.'
            Control = cxDBTextEdit19
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 190
            ControlOptions.ShowBorder = False
            Index = 10
          end
          object dxLayoutControl1Item35: TdxLayoutItem
            Parent = dxLayoutControl1Group9
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'E-mail Address'
            Control = cxDBTextEdit20
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 190
            ControlOptions.ShowBorder = False
            Index = 11
          end
          object dxLayoutControl1Item36: TdxLayoutItem
            Parent = dxLayoutControl1Group9
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Other Office Fax No.'
            Control = cxDBTextEdit21
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 190
            ControlOptions.ShowBorder = False
            Index = 12
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            Parent = dxLayoutControl1Group10
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Single Investor Identification Number'
            Control = cxDBTextEdit1
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 268
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Item37: TdxLayoutItem
            Parent = dxLayoutControl1Group16
            CaptionOptions.Text = 'Product'
            Control = cxDBImageComboBox15
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Group16: TdxLayoutGroup
            Parent = dxLayoutControl1Group10
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item22: TdxLayoutItem
            Parent = dxLayoutControl1Group15
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'City'
            Control = cxDBLookupComboBox3
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 145
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item1: TdxLayoutItem
            Parent = dxLayoutControl1Group12
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'City'
            Control = cxDBLookupComboBox4
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 145
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object TaxPayerRegNo: TdxLayoutItem
            Parent = dxLayoutControl1Group8
            CaptionOptions.Text = 'Reg No.'
            Control = cxDBMaskEdit1
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 202
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object TabAddress: TcxTabSheet
        Caption = 'TabAddress'
        ImageIndex = 1
        OnShow = TabAddressShow
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 890
          Height = 575
          Align = alClient
          TabOrder = 0
          object gvwBOD: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Last.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.Visible = True
            DataController.DataSource = dsCOBBOD
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Appending = True
            OptionsView.GridLineColor = 16777088
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.ContentOdd = dmGlobal.BlueToggle
            Bands = <
              item
              end>
            object gvwBODCUST_REG_NO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CUST_REG_NO'
              Visible = False
              Width = 84
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwBODBOD_NAME: TcxGridDBBandedColumn
              Caption = 'Board Of Director Name'
              DataBinding.FieldName = 'BOD_NAME'
              Width = 143
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object gvwBODBOD_POSITION: TcxGridDBBandedColumn
              Caption = 'Position'
              DataBinding.FieldName = 'BOD_POSITION'
              Width = 90
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object gvwBODBOD_CELLPHONE: TcxGridDBBandedColumn
              Caption = 'Mobile Phone'
              DataBinding.FieldName = 'BOD_CELLPHONE'
              Width = 104
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object gvwBODBOD_EMAIL: TcxGridDBBandedColumn
              Caption = 'Official EMail'
              DataBinding.FieldName = 'BOD_EMAIL'
              Width = 179
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object gvwBODBOD_NATIONALITY: TcxGridDBBandedColumn
              Caption = 'Nationality'
              DataBinding.FieldName = 'BOD_NATIONALITY'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownAutoSize = True
              Properties.KeyFieldNames = 'CODE'
              Properties.ListColumns = <
                item
                  FieldName = 'CODE'
                end
                item
                  FieldName = 'NATIONALITY'
                end>
              Properties.ListFieldIndex = 1
              RepositoryItem = dmGlobal.luNationality
              Width = 161
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = gvwBOD
          end
        end
      end
      object TabSourceOfFund: TcxTabSheet
        Caption = 'TabSourceOfFund'
        ImageIndex = 2
        OnShow = TabSourceOfFundShow
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dxLayoutControl3: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 890
          Height = 575
          Align = alClient
          TabOrder = 0
          object cmbAnnualNetProfit: TcxDBImageComboBox
            Left = 138
            Top = 28
            DataBinding.DataField = 'ANNUAL_NET_PROFIT'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = '< 500,000,000'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = '501,000,000 - 1,000,000,000'
                Value = '2'
              end
              item
                Description = '1,001,000,000 - 2,500,000,000'
                Value = '3'
              end
              item
                Description = '2,501,000,000 - 5,000,000,000'
                Value = '4'
              end
              item
                Description = '5,001,000,000 - 10,000,000,000'
                Value = '5'
              end
              item
                Description = '> 10,001,000,000'
                Value = '6'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 0
            Width = 207
          end
          object cxDBImageComboBox4: TcxDBImageComboBox
            Left = 138
            Top = 55
            DataBinding.DataField = 'TOTAL_ASSET'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = '< 500,000,000'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = '501,000,000 - 1,000,000,000'
                Value = '2'
              end
              item
                Description = '1,001,000,000 - 2,500,000,000'
                Value = '3'
              end
              item
                Description = '2,501,000,000 - 5,000,000,000'
                Value = '4'
              end
              item
                Description = '5,001,000,000 - 10,000,000,000'
                Value = '5'
              end
              item
                Description = '> 10,001,000,000'
                Value = '6'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 1
            Width = 207
          end
          object cxDBTextEdit46: TcxDBTextEdit
            Left = 540
            Top = 112
            DataBinding.DataField = 'FUND_SEP_BANK_ACC_NO'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 9
            Width = 121
          end
          object cxDBTextEdit47: TcxDBTextEdit
            Left = 540
            Top = 139
            DataBinding.DataField = 'FUND_SEP_BANK_BRANCH'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 10
            Width = 121
          end
          object cxDBTextEdit48: TcxDBTextEdit
            Left = 540
            Top = 166
            DataBinding.DataField = 'FUND_SEP_BANK_BENEFICIARY'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 11
            Width = 121
          end
          object cxDBCurrencyEdit1: TcxDBCurrencyEdit
            Left = 540
            Top = 28
            DataBinding.DataField = 'INIT_DEPOSIT_FUND'
            DataBinding.DataSource = dsSubject
            Properties.DisplayFormat = '#,##0;(#,##0)'
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 7
            Width = 148
          end
          object cxDBCurrencyEdit2: TcxDBCurrencyEdit
            Left = 540
            Top = 55
            DataBinding.DataField = 'INIT_DEPOSIT_SHARES'
            DataBinding.DataSource = dsSubject
            Properties.DisplayFormat = '#,##0;(#,##0)'
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 8
            Width = 148
          end
          object txtSourceOfFundChk: TcxDBImageComboBox
            Left = 138
            Top = 112
            DataBinding.DataField = 'RETAINED_EARNING_CHK'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Retained Earning'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'Others'
                Value = '2'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 2
            Width = 121
          end
          object cxDBTextEdit49: TcxDBTextEdit
            Left = 138
            Top = 139
            DataBinding.DataField = 'RETAINED_EARNING_OTHER'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 3
            Width = 257
          end
          object cxDBImageComboBox1: TcxDBImageComboBox
            Left = 138
            Top = 166
            DataBinding.DataField = 'INVS_EXPERIENCE'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Yes'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'No'
                Value = '2'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 4
            Width = 42
          end
          object txtInvestmentObjectiveChk: TcxDBImageComboBox
            Left = 138
            Top = 193
            DataBinding.DataField = 'INVS_OBJ'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Aggressive Growth'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'Growth'
                Value = '2'
              end
              item
                Description = 'Income'
                Value = '3'
              end
              item
                Description = 'Capital Preservation'
                Value = '4'
              end
              item
                Description = 'Speculation'
                Value = '5'
              end
              item
                Description = 'Investment'
                Value = '6'
              end
              item
                Description = 'Others'
                Value = '7'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 5
            Width = 121
          end
          object cxDBTextEdit50: TcxDBTextEdit
            Left = 138
            Top = 220
            DataBinding.DataField = 'INVS_OBJ_OTHER'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 6
            Width = 121
          end
          object cxGrid2: TcxGrid
            Left = 22
            Top = 277
            Width = 666
            Height = 276
            TabOrder = 12
            object gvwBankAccount: TcxGridDBBandedTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.First.Visible = False
              Navigator.Buttons.PriorPage.Visible = False
              Navigator.Buttons.NextPage.Visible = False
              Navigator.Buttons.Last.Visible = False
              Navigator.Buttons.SaveBookmark.Visible = False
              Navigator.Buttons.GotoBookmark.Visible = False
              Navigator.Buttons.Filter.Visible = False
              Navigator.Visible = True
              DataController.DataSource = dsCOBBankAcc
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Appending = True
              OptionsView.GridLineColor = 16777088
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.ContentOdd = dmGlobal.BlueToggle
              Bands = <
                item
                end>
              object gvwBankAccountCUST_REG_NO: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CUST_REG_NO'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object gvwBankAccountACC_NO: TcxGridDBBandedColumn
                Caption = 'Account No'
                DataBinding.FieldName = 'ACC_NO'
                Width = 128
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object gvwBankAccountBANK_NAME: TcxGridDBBandedColumn
                Caption = 'Bank Name'
                DataBinding.FieldName = 'BANK_NAME'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownAutoSize = True
                Properties.KeyFieldNames = 'BNCODE'
                Properties.ListColumns = <
                  item
                    FieldName = 'BNCODE'
                  end
                  item
                    FieldName = 'BNNAME'
                  end>
                Properties.ListFieldIndex = 1
                Properties.ListSource = dmLookup.dsLuBank
                Width = 147
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object gvwBankAccountBANK_BRANCH: TcxGridDBBandedColumn
                Caption = 'Branch'
                DataBinding.FieldName = 'BANK_BRANCH'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownAutoSize = True
                Properties.KeyFieldNames = 'BRCODE'
                Properties.ListColumns = <
                  item
                    FieldName = 'BRCODE'
                  end
                  item
                    FieldName = 'BRNAME'
                  end>
                Properties.ListFieldIndex = 1
                Properties.ListSource = dmLookup.dsLuBranch
                RepositoryItem = dmGlobal.luBranch
                Width = 86
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object gvwBankAccountBENEFICIARY: TcxGridDBBandedColumn
                Caption = 'Beneficiary'
                DataBinding.FieldName = 'BENEFICIARY'
                Width = 172
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = gvwBankAccount
            end
          end
          object dxLayoutGroup3: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutGroup4: TdxLayoutGroup
            Parent = dxLayoutControl3Group7
            CaptionOptions.Text = 'Client'#39's Financial Data'
            ButtonOptions.Buttons = <>
            Index = 0
          end
          object dxLayoutControl3Group2: TdxLayoutGroup
            Parent = dxLayoutGroup3
            CaptionOptions.Text = 'Bank Account(s)'
            ButtonOptions.Buttons = <>
            Index = 1
          end
          object dxLayoutControl3Group3: TdxLayoutGroup
            Parent = dxLayoutControl3Group8
            CaptionOptions.Text = 'Fund Separation Bank Account'
            ButtonOptions.Buttons = <>
            Index = 1
          end
          object dxLayoutControl3Group5: TdxLayoutGroup
            Parent = dxLayoutControl3Group8
            CaptionOptions.Text = 'Initial Deposit'
            ButtonOptions.Buttons = <>
            LayoutDirection = ldHorizontal
            Index = 0
          end
          object dxLayoutControl3Group6: TdxLayoutGroup
            Parent = dxLayoutControl3Group7
            CaptionOptions.Text = 'Initial and Investment Backgroud'
            ButtonOptions.Buttons = <>
            Index = 1
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutGroup4
            AlignHorz = ahClient
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Annual Net Profit (IDR)'
            Control = cmbAnnualNetProfit
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 207
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl3Item2: TdxLayoutItem
            Parent = dxLayoutGroup4
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Total Asset in IDR'
            Control = cxDBImageComboBox4
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 207
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl3Item12: TdxLayoutItem
            Parent = dxLayoutControl3Group3
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Account No.'
            Control = cxDBTextEdit46
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl3Item13: TdxLayoutItem
            Parent = dxLayoutControl3Group3
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Bank and Branch Name'
            Control = cxDBTextEdit47
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl3Item14: TdxLayoutItem
            Parent = dxLayoutControl3Group3
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Beneficiary'
            Control = cxDBTextEdit48
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl3Group7: TdxLayoutGroup
            Parent = dxLayoutControl3Group9
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl3Group8: TdxLayoutGroup
            Parent = dxLayoutControl3Group9
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl3Item15: TdxLayoutItem
            Parent = dxLayoutControl3Group4
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Fund'
            Control = cxDBCurrencyEdit1
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 148
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl3Item16: TdxLayoutItem
            Parent = dxLayoutControl3Group4
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Shares'
            Control = cxDBCurrencyEdit2
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 148
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl3Item17: TdxLayoutItem
            Parent = dxLayoutControl3Group6
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Source Of Fund'
            Control = txtSourceOfFundChk
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object txtSourceOfFund: TdxLayoutItem
            Parent = dxLayoutControl3Group6
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = ' '
            Visible = False
            Control = cxDBTextEdit49
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 257
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl3Item18: TdxLayoutItem
            Parent = dxLayoutControl3Group6
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Invesment Experience'
            Control = cxDBImageComboBox1
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 42
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl3Item19: TdxLayoutItem
            Parent = dxLayoutControl3Group6
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Invesment Objective'
            Control = txtInvestmentObjectiveChk
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object txtInvestmentObjOther: TdxLayoutItem
            Parent = dxLayoutControl3Group6
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = ' '
            Visible = False
            Control = cxDBTextEdit50
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutControl3Item20: TdxLayoutItem
            Parent = dxLayoutControl3Group2
            CaptionOptions.AlignHorz = taRightJustify
            Control = cxGrid2
            ControlOptions.OriginalHeight = 276
            ControlOptions.OriginalWidth = 666
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl3Group4: TdxLayoutGroup
            Parent = dxLayoutControl3Group5
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl3Group9: TdxLayoutGroup
            Parent = dxLayoutGroup3
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
          end
        end
      end
      object TabKnowYourCust: TcxTabSheet
        Caption = 'TabKnowYourCust'
        ImageIndex = 3
        OnShow = TabKnowYourCustShow
        object dxLayoutControl4: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 890
          Height = 575
          Align = alClient
          TabOrder = 0
          object cxLabel1: TcxLabel
            Left = 10
            Top = 10
            AutoSize = False
            Caption = '1. '
            Style.HotTrack = False
            Properties.Alignment.Horz = taRightJustify
            Height = 17
            Width = 25
            AnchorX = 35
          end
          object cxLabel2: TcxLabel
            Left = 10
            Top = 60
            AutoSize = False
            Caption = '2.'
            Style.HotTrack = False
            Properties.Alignment.Horz = taRightJustify
            Height = 17
            Width = 25
            AnchorX = 35
          end
          object cxLabel3: TcxLabel
            Left = 10
            Top = 110
            AutoSize = False
            Caption = '3.'
            Style.HotTrack = False
            Properties.Alignment.Horz = taRightJustify
            Height = 17
            Width = 25
            AnchorX = 35
          end
          object cxLabel4: TcxLabel
            Left = 10
            Top = 160
            AutoSize = False
            Caption = '4.'
            Style.HotTrack = False
            Properties.Alignment.Horz = taRightJustify
            Height = 17
            Width = 25
            AnchorX = 35
          end
          object cxLabel5: TcxLabel
            Left = 10
            Top = 210
            AutoSize = False
            Caption = '5.'
            Style.HotTrack = False
            Properties.Alignment.Horz = taRightJustify
            Height = 17
            Width = 25
            AnchorX = 35
          end
          object cxLabel6: TcxLabel
            Left = 10
            Top = 260
            AutoSize = False
            Caption = '6.'
            Style.HotTrack = False
            Properties.Alignment.Horz = taRightJustify
            Height = 17
            Width = 25
            AnchorX = 35
          end
          object cxLabel7: TcxLabel
            Left = 10
            Top = 310
            AutoSize = False
            Caption = '7.'
            Style.HotTrack = False
            Properties.Alignment.Horz = taRightJustify
            Height = 17
            Width = 25
            AnchorX = 35
          end
          object cxLabel8: TcxLabel
            Left = 10
            Top = 360
            AutoSize = False
            Caption = '8.'
            Style.HotTrack = False
            Properties.Alignment.Horz = taRightJustify
            Height = 17
            Width = 25
            AnchorX = 35
          end
          object cxLabel9: TcxLabel
            Left = 10
            Top = 423
            AutoSize = False
            Caption = '9.'
            Style.HotTrack = False
            Properties.Alignment.Horz = taRightJustify
            Height = 17
            Width = 25
            AnchorX = 35
          end
          object cxLabel10: TcxLabel
            Left = 10
            Top = 490
            AutoSize = False
            Caption = '10.'
            Style.HotTrack = False
            Properties.Alignment.Horz = taRightJustify
            Height = 17
            Width = 25
            AnchorX = 35
          end
          object cxLabel12: TcxLabel
            Left = 41
            Top = 10
            Caption = 
              'Does your Company have an existing Securities Account this Compa' +
              'ny?'
            Style.HotTrack = False
          end
          object cxLabel13: TcxLabel
            Left = 41
            Top = 60
            Caption = 
              'Does your Company have any relationship with any shareholder/Com' +
              'missioner/Director/employee in this Securities?'
            Style.HotTrack = False
          end
          object cxLabel14: TcxLabel
            Left = 41
            Top = 110
            Caption = 
              'Does any of your Company-affiliated companies own own an existin' +
              'g Securities Account in this Securities? if yes, please disclose'
            Style.HotTrack = False
          end
          object cxLabel15: TcxLabel
            Left = 41
            Top = 160
            Caption = 
              'Does your Company have any control of any existing account in Se' +
              'curities?'
            Style.HotTrack = False
          end
          object cxLabel16: TcxLabel
            Left = 41
            Top = 210
            Caption = 
              'Is your Company one of the controlling shareholders from any com' +
              'pany/companies that own(s) an account in this Securities?'
            Style.HotTrack = False
          end
          object cxLabel17: TcxLabel
            Left = 41
            Top = 260
            Caption = 'Is your Company one of the controlling of a listed company?'
            Style.HotTrack = False
          end
          object cxLabel18: TcxLabel
            Left = 41
            Top = 310
            Caption = 'Is your Company one of the shareholders of securities company?'
            Style.HotTrack = False
          end
          object cxLabel19: TcxLabel
            Left = 41
            Top = 360
            AutoSize = False
            Caption = 
              'Does any of the Board of Director'#39's or Board of Commissioner'#39's f' +
              'amily member work at Securities Company. Stock Exchange, company' +
              ' regulated by Stock Exchange/Bapepam and LK, bank, insurance or ' +
              'other similar financial institution?'
            Style.HotTrack = False
            Properties.WordWrap = True
            Height = 30
            Width = 752
          end
          object cxLabel20: TcxLabel
            Left = 41
            Top = 423
            AutoSize = False
            Caption = 
              'Is/Was any member of the Board of Director'#39's of Board of Commiss' +
              'ioner'#39's now/previously holding or nominated for any position exp' +
              'osed to public (Politically Exposed Person)?'
            Style.HotTrack = False
            Properties.WordWrap = True
            Height = 34
            Width = 736
          end
          object cxLabel21: TcxLabel
            Left = 41
            Top = 490
            Caption = 
              'Does your Company ever/still own an investment product in capita' +
              'l market?'
            Style.HotTrack = False
          end
          object chkInfo: TcxDBImageComboBox
            Left = 41
            Top = 33
            DataBinding.DataField = 'INFO_EXISTING_SEC_CHK'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Yes'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'No'
                Value = '2'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 2
            Width = 47
          end
          object cxDBTextEdit26: TcxDBTextEdit
            Left = 126
            Top = 33
            DataBinding.DataField = 'INFO_EXISTING_SEC_NAME'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 3
            Width = 121
          end
          object cxDBTextEdit27: TcxDBTextEdit
            Left = 317
            Top = 33
            DataBinding.DataField = 'INFO_EXISTING_SEC_ACC_NO'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 4
            Width = 121
          end
          object cxDBImageComboBox6: TcxDBImageComboBox
            Left = 41
            Top = 83
            DataBinding.DataField = 'INFO_EXISTING_REL_CHK'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Yes'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'No'
                Value = '2'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 7
            Width = 47
          end
          object cxDBImageComboBox7: TcxDBImageComboBox
            Left = 41
            Top = 133
            DataBinding.DataField = 'INFO_EXISTING_AFF_CHK'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Yes'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'No'
                Value = '2'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 11
            Width = 47
          end
          object cxDBImageComboBox8: TcxDBImageComboBox
            Left = 41
            Top = 183
            DataBinding.DataField = 'INFO_EXISTING_CNTRL_CHK'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Yes'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'No'
                Value = '2'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 17
            Width = 47
          end
          object cxDBImageComboBox9: TcxDBImageComboBox
            Left = 41
            Top = 233
            DataBinding.DataField = 'INFO_EXISTING_SHR_CHK'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Yes'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'No'
                Value = '2'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 22
            Width = 42
          end
          object cxDBImageComboBox10: TcxDBImageComboBox
            Left = 41
            Top = 283
            DataBinding.DataField = 'INFO_EXISTING_EMT_CHK'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Yes'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'No'
                Value = '2'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 28
            Width = 46
          end
          object cxDBImageComboBox11: TcxDBImageComboBox
            Left = 41
            Top = 333
            DataBinding.DataField = 'INFO_EXISTING_PE_CHK'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Yes'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'No'
                Value = '2'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 34
            Width = 49
          end
          object cxDBImageComboBox12: TcxDBImageComboBox
            Left = 41
            Top = 396
            DataBinding.DataField = 'INFO_EXISTING_DWN_CHK'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Yes'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'No'
                Value = '2'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 40
            Width = 48
          end
          object cxDBImageComboBox13: TcxDBImageComboBox
            Left = 41
            Top = 463
            DataBinding.DataField = 'INFO_EXISTING_PUB_CHK'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Yes'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'No'
                Value = '2'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 44
            Width = 48
          end
          object cxDBImageComboBox14: TcxDBImageComboBox
            Left = 41
            Top = 513
            DataBinding.DataField = 'INFO_EXISTING_MARKET_CHK'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Yes'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'No'
                Value = '2'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 47
            Width = 46
          end
          object cxDBTextEdit28: TcxDBTextEdit
            Left = 126
            Top = 83
            DataBinding.DataField = 'INFO_EXISTING_NAME'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 8
            Width = 121
          end
          object cxDBTextEdit29: TcxDBTextEdit
            Left = 126
            Top = 133
            DataBinding.DataField = 'INFO_EXISTING_AFF_NAME'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 12
            Width = 121
          end
          object cxDBTextEdit30: TcxDBTextEdit
            Left = 317
            Top = 133
            DataBinding.DataField = 'INFO_EXISTING_AFF_RELATION'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 13
            Width = 121
          end
          object cxDBTextEdit31: TcxDBTextEdit
            Left = 508
            Top = 133
            DataBinding.DataField = 'INFO_EXISTING_AF_ACCNO'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 14
            Width = 121
          end
          object cxDBTextEdit32: TcxDBTextEdit
            Left = 126
            Top = 183
            DataBinding.DataField = 'INFO_EXISTING_CNTRL_NAME'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 18
            Width = 121
          end
          object cxDBTextEdit33: TcxDBTextEdit
            Left = 317
            Top = 183
            DataBinding.DataField = 'INFO_EXISTING_CNTRL_ACCNO'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 19
            Width = 121
          end
          object cxDBTextEdit34: TcxDBTextEdit
            Left = 169
            Top = 233
            DataBinding.DataField = 'INFO_EXISTING_SHR_COMP_NAME'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 23
            Width = 121
          end
          object cxDBTextEdit36: TcxDBTextEdit
            Left = 338
            Top = 233
            DataBinding.DataField = 'INFO_EXISTING_SHR_POSITION'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 24
            Width = 121
          end
          object cxDBTextEdit37: TcxDBTextEdit
            Left = 509
            Top = 233
            DataBinding.DataField = 'INFO_EXISTING_SHR_RELATION'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 25
            Width = 121
          end
          object cxDBTextEdit38: TcxDBTextEdit
            Left = 204
            Top = 283
            DataBinding.DataField = 'INFO_EXISTING_EMT_NAME'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 29
            Width = 121
          end
          object cxDBTextEdit40: TcxDBTextEdit
            Left = 356
            Top = 283
            DataBinding.DataField = 'INFO_EXISTING_EMN_TITLE'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 30
            Width = 121
          end
          object cxDBTextEdit41: TcxDBTextEdit
            Left = 536
            Top = 283
            DataBinding.DataField = 'INFO_EXISTING_EMN_STOCK'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 31
            Width = 121
          end
          object cxDBTextEdit42: TcxDBTextEdit
            Left = 176
            Top = 333
            DataBinding.DataField = 'INFO_EXISTING_PE_COM_NAME'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 35
            Width = 121
          end
          object cxDBTextEdit43: TcxDBTextEdit
            Left = 328
            Top = 333
            DataBinding.DataField = 'INFO_EXISTING_PE_TITLE'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 36
            Width = 121
          end
          object cxDBTextEdit44: TcxDBTextEdit
            Left = 508
            Top = 333
            DataBinding.DataField = 'INFO_EXISTING_PE_STOCK'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 37
            Width = 121
          end
          object cxDBTextEdit45: TcxDBTextEdit
            Left = 240
            Top = 396
            DataBinding.DataField = 'INFO_EXISTING_DWN_COM_NAME'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 41
            Width = 121
          end
          object cxDBTextEdit51: TcxDBTextEdit
            Left = 204
            Top = 513
            DataBinding.DataField = 'INFO_EXISTING_MARKET_NAME'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 48
            Width = 121
          end
          object dxLayoutGroup5: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem3: TdxLayoutItem
            Parent = dxLayoutControl4Group4
            CaptionOptions.Text = 'cxLabel1'
            CaptionOptions.Visible = False
            Control = cxLabel1
            ControlOptions.OriginalHeight = 17
            ControlOptions.OriginalWidth = 25
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item2: TdxLayoutItem
            Parent = dxLayoutControl4Group6
            CaptionOptions.Text = 'cxLabel2'
            CaptionOptions.Visible = False
            Control = cxLabel2
            ControlOptions.OriginalHeight = 17
            ControlOptions.OriginalWidth = 25
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item3: TdxLayoutItem
            Parent = dxLayoutControl4Group14
            CaptionOptions.Text = 'cxLabel3'
            CaptionOptions.Visible = False
            Control = cxLabel3
            ControlOptions.OriginalHeight = 17
            ControlOptions.OriginalWidth = 25
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Group2: TdxLayoutGroup
            Parent = dxLayoutGroup5
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item4: TdxLayoutItem
            Parent = dxLayoutControl4Group15
            CaptionOptions.Text = 'cxLabel4'
            CaptionOptions.Visible = False
            Control = cxLabel4
            ControlOptions.OriginalHeight = 17
            ControlOptions.OriginalWidth = 25
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item5: TdxLayoutItem
            Parent = dxLayoutControl4Group5
            CaptionOptions.Text = 'cxLabel5'
            CaptionOptions.Visible = False
            Control = cxLabel5
            ControlOptions.OriginalHeight = 17
            ControlOptions.OriginalWidth = 25
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item6: TdxLayoutItem
            Parent = dxLayoutControl4Group7
            CaptionOptions.Text = 'cxLabel6'
            CaptionOptions.Visible = False
            Control = cxLabel6
            ControlOptions.OriginalHeight = 17
            ControlOptions.OriginalWidth = 25
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item7: TdxLayoutItem
            Parent = dxLayoutControl4Group8
            CaptionOptions.Text = 'cxLabel7'
            CaptionOptions.Visible = False
            Control = cxLabel7
            ControlOptions.OriginalHeight = 17
            ControlOptions.OriginalWidth = 25
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item8: TdxLayoutItem
            Parent = dxLayoutControl4Group9
            CaptionOptions.Text = 'cxLabel8'
            CaptionOptions.Visible = False
            Control = cxLabel8
            ControlOptions.OriginalHeight = 17
            ControlOptions.OriginalWidth = 25
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item9: TdxLayoutItem
            Parent = dxLayoutControl4Group10
            CaptionOptions.Text = 'cxLabel9'
            CaptionOptions.Visible = False
            Control = cxLabel9
            ControlOptions.OriginalHeight = 17
            ControlOptions.OriginalWidth = 25
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item10: TdxLayoutItem
            Parent = dxLayoutControl4Group11
            CaptionOptions.Text = 'cxLabel10'
            CaptionOptions.Visible = False
            Control = cxLabel10
            ControlOptions.OriginalHeight = 17
            ControlOptions.OriginalWidth = 25
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item12: TdxLayoutItem
            Parent = dxLayoutGroup6
            CaptionOptions.Text = 'cxLabel12'
            CaptionOptions.Visible = False
            Control = cxLabel12
            ControlOptions.OriginalHeight = 17
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item13: TdxLayoutItem
            Parent = dxLayoutControl4Group12
            CaptionOptions.Text = 'cxLabel13'
            CaptionOptions.Visible = False
            Control = cxLabel13
            ControlOptions.OriginalHeight = 17
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item14: TdxLayoutItem
            Parent = dxLayoutControl4Group13
            CaptionOptions.Text = 'cxLabel14'
            CaptionOptions.Visible = False
            Control = cxLabel14
            ControlOptions.OriginalHeight = 17
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item15: TdxLayoutItem
            Parent = dxLayoutControl4Group16
            CaptionOptions.Text = 'cxLabel15'
            CaptionOptions.Visible = False
            Control = cxLabel15
            ControlOptions.OriginalHeight = 17
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item16: TdxLayoutItem
            Parent = dxLayoutControl4Group17
            CaptionOptions.Text = 'cxLabel16'
            CaptionOptions.Visible = False
            Control = cxLabel16
            ControlOptions.OriginalHeight = 17
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item17: TdxLayoutItem
            Parent = dxLayoutControl4Group18
            CaptionOptions.Text = 'cxLabel17'
            CaptionOptions.Visible = False
            Control = cxLabel17
            ControlOptions.OriginalHeight = 17
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item18: TdxLayoutItem
            Parent = dxLayoutControl4Group19
            CaptionOptions.Text = 'cxLabel18'
            CaptionOptions.Visible = False
            Control = cxLabel18
            ControlOptions.OriginalHeight = 17
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item19: TdxLayoutItem
            Parent = dxLayoutControl4Group20
            CaptionOptions.Text = 'cxLabel19'
            CaptionOptions.Visible = False
            Control = cxLabel19
            ControlOptions.OriginalHeight = 30
            ControlOptions.OriginalWidth = 752
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item20: TdxLayoutItem
            Parent = dxLayoutControl4Group21
            CaptionOptions.Text = 'cxLabel20'
            CaptionOptions.Visible = False
            Control = cxLabel20
            ControlOptions.OriginalHeight = 34
            ControlOptions.OriginalWidth = 736
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item21: TdxLayoutItem
            Parent = dxLayoutControl4Group22
            CaptionOptions.Text = 'cxLabel21'
            CaptionOptions.Visible = False
            Control = cxLabel21
            ControlOptions.OriginalHeight = 17
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Group4: TdxLayoutGroup
            Parent = dxLayoutControl4Group2
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Group6: TdxLayoutGroup
            Parent = dxLayoutControl4Group2
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Group14: TdxLayoutGroup
            Parent = dxLayoutControl4Group2
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 2
          end
          object dxLayoutControl4Group15: TdxLayoutGroup
            Parent = dxLayoutControl4Group2
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 3
          end
          object dxLayoutControl4Group5: TdxLayoutGroup
            Parent = dxLayoutControl4Group2
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 4
          end
          object dxLayoutControl4Group7: TdxLayoutGroup
            Parent = dxLayoutControl4Group2
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 5
          end
          object dxLayoutControl4Group8: TdxLayoutGroup
            Parent = dxLayoutControl4Group2
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 6
          end
          object dxLayoutControl4Group9: TdxLayoutGroup
            Parent = dxLayoutControl4Group2
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 7
          end
          object dxLayoutControl4Group10: TdxLayoutGroup
            Parent = dxLayoutControl4Group2
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 8
          end
          object dxLayoutControl4Group11: TdxLayoutGroup
            Parent = dxLayoutControl4Group2
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 9
          end
          object dxLayoutControl4Item11: TdxLayoutItem
            Parent = dxLayoutControl4Group3
            AlignHorz = ahLeft
            CaptionOptions.Text = 'cxDBImageComboBox5'
            CaptionOptions.Visible = False
            Control = chkInfo
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 47
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutGroup6: TdxLayoutGroup
            Parent = dxLayoutControl4Group4
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item22: TdxLayoutItem
            Parent = dxLayoutControl4Group3
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Name'
            Control = cxDBTextEdit26
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Group3: TdxLayoutGroup
            Parent = dxLayoutGroup6
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item23: TdxLayoutItem
            Parent = dxLayoutControl4Group3
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Account No'
            Control = cxDBTextEdit27
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl4Item24: TdxLayoutItem
            Parent = dxLayoutControl4Group23
            AlignHorz = ahLeft
            CaptionOptions.Text = 'cxDBImageComboBox6'
            CaptionOptions.Visible = False
            Control = cxDBImageComboBox6
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 47
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Group12: TdxLayoutGroup
            Parent = dxLayoutControl4Group6
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item25: TdxLayoutItem
            Parent = dxLayoutControl4Group24
            AlignHorz = ahLeft
            CaptionOptions.Text = 'cxDBImageComboBox7'
            CaptionOptions.Visible = False
            Control = cxDBImageComboBox7
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 47
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Group13: TdxLayoutGroup
            Parent = dxLayoutControl4Group14
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item26: TdxLayoutItem
            Parent = dxLayoutControl4Group25
            AlignHorz = ahLeft
            CaptionOptions.Text = 'cxDBImageComboBox8'
            CaptionOptions.Visible = False
            Control = cxDBImageComboBox8
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 47
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Group16: TdxLayoutGroup
            Parent = dxLayoutControl4Group15
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item27: TdxLayoutItem
            Parent = dxLayoutControl4Group26
            AlignHorz = ahLeft
            CaptionOptions.Text = 'cxDBImageComboBox9'
            CaptionOptions.Visible = False
            Control = cxDBImageComboBox9
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 42
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Group17: TdxLayoutGroup
            Parent = dxLayoutControl4Group5
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item28: TdxLayoutItem
            Parent = dxLayoutControl4Group27
            AlignHorz = ahLeft
            CaptionOptions.Text = 'cxDBImageComboBox10'
            CaptionOptions.Visible = False
            Control = cxDBImageComboBox10
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 46
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Group18: TdxLayoutGroup
            Parent = dxLayoutControl4Group7
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item29: TdxLayoutItem
            Parent = dxLayoutControl4Group28
            AlignHorz = ahLeft
            CaptionOptions.Text = 'cxDBImageComboBox11'
            CaptionOptions.Visible = False
            Control = cxDBImageComboBox11
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 49
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Group19: TdxLayoutGroup
            Parent = dxLayoutControl4Group8
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item30: TdxLayoutItem
            Parent = dxLayoutControl4Group29
            AlignHorz = ahLeft
            CaptionOptions.Text = 'cxDBImageComboBox12'
            CaptionOptions.Visible = False
            Control = cxDBImageComboBox12
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 48
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Group20: TdxLayoutGroup
            Parent = dxLayoutControl4Group9
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item31: TdxLayoutItem
            Parent = dxLayoutControl4Group21
            AlignHorz = ahLeft
            CaptionOptions.Text = 'cxDBImageComboBox13'
            CaptionOptions.Visible = False
            Control = cxDBImageComboBox13
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 48
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Group21: TdxLayoutGroup
            Parent = dxLayoutControl4Group10
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item32: TdxLayoutItem
            Parent = dxLayoutControl4Group30
            AlignHorz = ahLeft
            CaptionOptions.Text = 'cxDBImageComboBox14'
            CaptionOptions.Visible = False
            Control = cxDBImageComboBox14
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 46
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Group22: TdxLayoutGroup
            Parent = dxLayoutControl4Group11
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item33: TdxLayoutItem
            Parent = dxLayoutControl4Group23
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Name'
            Control = cxDBTextEdit28
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Group23: TdxLayoutGroup
            Parent = dxLayoutControl4Group12
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item34: TdxLayoutItem
            Parent = dxLayoutControl4Group24
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Name'
            Control = cxDBTextEdit29
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Group24: TdxLayoutGroup
            Parent = dxLayoutControl4Group13
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item35: TdxLayoutItem
            Parent = dxLayoutControl4Group24
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Relation'
            Control = cxDBTextEdit30
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl4Item36: TdxLayoutItem
            Parent = dxLayoutControl4Group24
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Account No.'
            Control = cxDBTextEdit31
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl4Item37: TdxLayoutItem
            Parent = dxLayoutControl4Group25
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Name'
            Control = cxDBTextEdit32
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Group25: TdxLayoutGroup
            Parent = dxLayoutControl4Group16
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item38: TdxLayoutItem
            Parent = dxLayoutControl4Group25
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Account No.'
            Control = cxDBTextEdit33
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl4Item39: TdxLayoutItem
            Parent = dxLayoutControl4Group26
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Company Name'
            Control = cxDBTextEdit34
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Group26: TdxLayoutGroup
            Parent = dxLayoutControl4Group17
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item40: TdxLayoutItem
            Parent = dxLayoutControl4Group26
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Position'
            Control = cxDBTextEdit36
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl4Item41: TdxLayoutItem
            Parent = dxLayoutControl4Group26
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Relation'
            Control = cxDBTextEdit37
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl4Item42: TdxLayoutItem
            Parent = dxLayoutControl4Group27
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Listed Company Name'
            Control = cxDBTextEdit38
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Group27: TdxLayoutGroup
            Parent = dxLayoutControl4Group18
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item43: TdxLayoutItem
            Parent = dxLayoutControl4Group27
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Title'
            Control = cxDBTextEdit40
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl4Item44: TdxLayoutItem
            Parent = dxLayoutControl4Group27
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Stock (%)'
            Control = cxDBTextEdit41
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl4Item45: TdxLayoutItem
            Parent = dxLayoutControl4Group28
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Company Name'
            Control = cxDBTextEdit42
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Group28: TdxLayoutGroup
            Parent = dxLayoutControl4Group19
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item46: TdxLayoutItem
            Parent = dxLayoutControl4Group28
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Title'
            Control = cxDBTextEdit43
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl4Item47: TdxLayoutItem
            Parent = dxLayoutControl4Group28
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Stock (%)'
            Control = cxDBTextEdit44
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl4Item48: TdxLayoutItem
            Parent = dxLayoutControl4Group29
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Company or Institution Name'
            Control = cxDBTextEdit45
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Group29: TdxLayoutGroup
            Parent = dxLayoutControl4Group20
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item49: TdxLayoutItem
            Parent = dxLayoutControl4Group30
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Name of Institution'
            Control = cxDBTextEdit51
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Group30: TdxLayoutGroup
            Parent = dxLayoutControl4Group22
            CaptionOptions.Text = 'Hidden Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
        end
      end
    end
    object LayoutControlItem1: TdxLayoutItem
      Parent = LayoutControlGroup_Root
      Control = OATabs
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 583
      ControlOptions.OriginalWidth = 898
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 633
    Width = 923
    ExplicitTop = 633
    ExplicitWidth = 923
  end
  object pnlClientData: TPanel [2]
    Left = 0
    Top = 1
    Width = 200
    Height = 24
    Color = clLime
    ParentBackground = False
    TabOrder = 2
    OnClick = pnlClientDataClick
    object Label2: TLabel
      Left = 8
      Top = 4
      Width = 75
      Height = 13
      Caption = '1. Client Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Label2Click
    end
  end
  object pnlBOD: TPanel [3]
    Left = 201
    Top = 1
    Width = 200
    Height = 24
    ParentBackground = False
    TabOrder = 3
    OnClick = pnlBODClick
    object Label5: TLabel
      Left = 8
      Top = 4
      Width = 123
      Height = 13
      Caption = '2. Composition of BOD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Label5Click
    end
  end
  object pnlSourceOfFund: TPanel [4]
    Left = 402
    Top = 1
    Width = 200
    Height = 24
    ParentBackground = False
    TabOrder = 4
    OnClick = pnlSourceOfFundClick
    object Label8: TLabel
      Left = 8
      Top = 5
      Width = 97
      Height = 13
      Caption = '3. Source Of Fund'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Label8Click
    end
  end
  object pnlInformation: TPanel [5]
    Left = 604
    Top = 1
    Width = 200
    Height = 24
    ParentBackground = False
    TabOrder = 5
    OnClick = pnlInformationClick
    object Label11: TLabel
      Left = 8
      Top = 5
      Width = 163
      Height = 13
      Caption = '4. Miscellaneous Information'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Label11Click
    end
  end
  inherited dsSubject: TDataSource
    DataSet = frmClientOnBoardingList.cdsCOBDetails
    Left = 874
    Top = 20
  end
  object dsCOBBOD: TDataSource
    DataSet = frmClientOnBoardingList.cdsCOBBOD
    Left = 876
    Top = 66
  end
  object dsCOBBankAcc: TDataSource
    DataSet = frmClientOnBoardingList.cdsCOBBankAcc
    Left = 876
    Top = 111
  end
end

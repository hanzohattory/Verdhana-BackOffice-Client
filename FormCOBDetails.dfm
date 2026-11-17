inherited frmCOBDetails: TfrmCOBDetails
  Caption = 'Client On Boarding Details'
  ClientHeight = 712
  ClientWidth = 1046
  ExplicitWidth = 1052
  ExplicitHeight = 740
  PixelsPerInch = 96
  TextHeight = 13
  inherited LayoutControl: TdxLayoutControl
    Top = 25
    Width = 1046
    Height = 638
    Align = alBottom
    ExplicitTop = 25
    ExplicitWidth = 1046
    ExplicitHeight = 638
    object OATabs: TcxPageControl [0]
      Left = 10
      Top = 10
      Width = 1022
      Height = 612
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      Properties.ActivePage = TabAddress
      Properties.CustomButtons.Buttons = <>
      Properties.HideTabs = True
      ClientRectBottom = 608
      ClientRectLeft = 4
      ClientRectRight = 1018
      ClientRectTop = 4
      object TabPaticular: TcxTabSheet
        Caption = 'TabPaticular'
        ImageIndex = 0
        OnShow = TabPaticularShow
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 1014
          Height = 604
          Align = alClient
          TabOrder = 0
          object txtName: TcxDBTextEdit
            Left = 165
            Top = 82
            DataBinding.DataField = 'NAME'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 3
            Width = 150
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 165
            Top = 109
            DataBinding.DataField = 'POB'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 4
            Width = 150
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 165
            Top = 136
            DataBinding.DataField = 'DOB'
            DataBinding.DataSource = dsSubject
            Properties.DisplayFormat = 'dd mmm yyyy'
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 5
            Width = 150
          end
          object id_type: TcxDBImageComboBox
            Left = 165
            Top = 163
            DataBinding.DataField = 'ID_TYPE'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'ID Card'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = 'Passport'
                Value = 2
              end
              item
                Description = 'Driving License'
                Value = 3
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 6
            Width = 96
          end
          object id_valid: TcxDBDateEdit
            Left = 165
            Top = 217
            DataBinding.DataField = 'ID_VALID'
            DataBinding.DataSource = dsSubject
            Properties.DisplayFormat = 'dd mmm yyyy'
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 8
            Width = 78
          end
          object cxDBImageComboBox2: TcxDBImageComboBox
            Left = 165
            Top = 244
            DataBinding.DataField = 'GENDER'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Male'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = 'Female'
                Value = 2
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 10
            Width = 96
          end
          object cxDBImageComboBox3: TcxDBImageComboBox
            Left = 165
            Top = 463
            DataBinding.DataField = 'TAXPAYER_STATUS'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Own'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = 'Guarantor'
                Value = 2
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 17
            Width = 96
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 165
            Top = 490
            DataBinding.DataField = 'TAXPAYER_REG'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 18
            Width = 150
          end
          object MatiralStatus: TcxDBImageComboBox
            Left = 165
            Top = 298
            DataBinding.DataField = 'MARITAL_STATUS'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Single'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = 'Married'
                Value = 2
              end
              item
                Description = 'Widower'
                Value = 3
              end
              item
                Description = 'Widow'
                Value = '4'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 12
            Width = 96
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 165
            Top = 406
            DataBinding.DataField = 'MOTHER_NAME'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 16
            Width = 150
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Left = 510
            Top = 28
            DataBinding.DataField = 'GU_NAME'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 20
            Width = 150
          end
          object cxDBImageComboBox5: TcxDBImageComboBox
            Left = 510
            Top = 55
            DataBinding.DataField = 'GU_HUB'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Brother'
                ImageIndex = 0
                Value = 110
              end
              item
                Description = 'Sister'
                Value = 100
              end
              item
                Description = 'Mother'
                Value = 102
              end
              item
                Description = 'Father'
                Value = 103
              end
              item
                Description = 'Daughter'
                Value = 104
              end
              item
                Description = 'Son'
                Value = 105
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 21
            Width = 97
          end
          object cxDBTextEdit7: TcxDBTextEdit
            Left = 510
            Top = 82
            DataBinding.DataField = 'GU_ID_NO'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 22
            Width = 150
          end
          object cxDBDateEdit3: TcxDBDateEdit
            Left = 510
            Top = 109
            DataBinding.DataField = 'GU_ID_EXP'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 23
            Width = 150
          end
          object cxDBTextEdit8: TcxDBTextEdit
            Left = 510
            Top = 136
            DataBinding.DataField = 'GU_TAXPAYER_NO'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 24
            Width = 150
          end
          object cxDBImageComboBox6: TcxDBImageComboBox
            Left = 510
            Top = 190
            DataBinding.DataField = 'GU_GENDER'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Male'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = 'Female'
                Value = 2
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 26
            Width = 97
          end
          object cxDBTextEdit10: TcxDBTextEdit
            Left = 510
            Top = 217
            DataBinding.DataField = 'GU_POB'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 27
            Width = 150
          end
          object cxDBDateEdit4: TcxDBDateEdit
            Left = 510
            Top = 244
            DataBinding.DataField = 'GU_DOB'
            DataBinding.DataSource = dsSubject
            Properties.DisplayFormat = 'dd mmm yyyy'
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 28
            Width = 150
          end
          object cxDBImageComboBox7: TcxDBImageComboBox
            Left = 510
            Top = 271
            DataBinding.DataField = 'GU_MATIAL_STATUS'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Single'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = 'Married'
                Value = 2
              end
              item
                Description = 'Widower'
                Value = 3
              end
              item
                Description = 'Widow'
                Value = 4
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 29
            Width = 97
          end
          object cxDBTextEdit11: TcxDBTextEdit
            Left = 510
            Top = 298
            DataBinding.DataField = 'GU_EMAIL'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 30
            Width = 150
          end
          object cxDBTextEdit12: TcxDBTextEdit
            Left = 510
            Top = 325
            DataBinding.DataField = 'GU_CELLPHONE'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 31
            Width = 150
          end
          object cxDBTextEdit13: TcxDBTextEdit
            Left = 510
            Top = 352
            DataBinding.DataField = 'GU_FAX'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 32
            Width = 150
          end
          object cxDBMemo1: TcxDBMemo
            Left = 510
            Top = 379
            DataBinding.DataField = 'GU_ADDRESS'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 33
            Height = 40
            Width = 150
          end
          object cxDBTextEdit15: TcxDBTextEdit
            Left = 510
            Top = 479
            DataBinding.DataField = 'GU_POSTALCODE'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 36
            Width = 150
          end
          object cxDBTextEdit18: TcxDBTextEdit
            Left = 510
            Top = 533
            DataBinding.DataField = 'gu_phone'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 38
            Width = 150
          end
          object cxDBMemo2: TcxDBMemo
            Left = 842
            Top = 28
            DataBinding.DataField = 'gu_address2'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 40
            Height = 37
            Width = 150
          end
          object cxDBTextEdit20: TcxDBTextEdit
            Left = 842
            Top = 98
            DataBinding.DataField = 'gu_postalcode2'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 42
            Width = 150
          end
          object cxDBTextEdit22: TcxDBTextEdit
            Left = 842
            Top = 152
            DataBinding.DataField = 'gu_phone2'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 44
            Width = 150
          end
          object cxDBTextEdit23: TcxDBTextEdit
            Left = 842
            Top = 209
            DataBinding.DataField = 'gu_jobs'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 45
            Width = 150
          end
          object cxDBTextEdit24: TcxDBTextEdit
            Left = 842
            Top = 236
            DataBinding.DataField = 'gu_last_position'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 46
            Width = 150
          end
          object cxDBTextEdit25: TcxDBTextEdit
            Left = 842
            Top = 263
            DataBinding.DataField = 'gu_jobs_company'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 47
            Width = 150
          end
          object cxDBTextEdit26: TcxDBTextEdit
            Left = 842
            Top = 290
            DataBinding.DataField = 'gu_jobs_company_type'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 48
            Width = 150
          end
          object cxDBTextEdit27: TcxDBTextEdit
            Left = 842
            Top = 317
            DataBinding.DataField = 'GU_JOBS_ADDRESS'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 49
            Width = 150
          end
          object cxDBTextEdit29: TcxDBTextEdit
            Left = 842
            Top = 371
            DataBinding.DataField = 'gu_jobs_postalcode'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 51
            Width = 150
          end
          object cxDBTextEdit30: TcxDBTextEdit
            Left = 842
            Top = 398
            DataBinding.DataField = 'gu_jobs_phone'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 52
            Width = 150
          end
          object cxDBTextEdit31: TcxDBTextEdit
            Left = 842
            Top = 425
            DataBinding.DataField = 'gu_jobs_fax'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 53
            Width = 150
          end
          object cxDBImageComboBox8: TcxDBImageComboBox
            Left = 842
            Top = 452
            DataBinding.DataField = 'gu_jobs_fund_source'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Salary'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = 'Profit Of Business'
                Value = 2
              end
              item
                Description = 'Profit Of Investment'
                Value = 3
              end
              item
                Description = 'Other'
                Value = 0
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 54
            Width = 150
          end
          object cxDBTextEdit32: TcxDBTextEdit
            Left = 842
            Top = 479
            DataBinding.DataField = 'gu_jobs_fund_source_ot'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 55
            Width = 150
          end
          object cxDBImageComboBox9: TcxDBImageComboBox
            Left = 842
            Top = 506
            DataBinding.DataField = 'gu_jobs_annual_salary'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = '<= Rp 100 Juta'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = '> Rp 100 Juta - <= Rp 250 Juta'
                Value = 2
              end
              item
                Description = '> Rp 250 Juta - <= Rp 500 Juta'
                Value = 3
              end
              item
                Description = '> Rp 500 Juta'
                Value = 4
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 56
            Width = 150
          end
          object cxDBImageComboBox10: TcxDBImageComboBox
            Left = 842
            Top = 533
            DataBinding.DataField = 'gu_jobs_marital_status'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Single'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = 'Married'
                Value = 2
              end
              item
                Description = 'Widower'
                Value = 3
              end
              item
                Description = 'Widow'
                Value = 4
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 57
            Width = 103
          end
          object cxDBTextEdit33: TcxDBTextEdit
            Left = 842
            Top = 560
            DataBinding.DataField = 'gu_maiden_mother'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 58
            Width = 150
          end
          object cxCheckBox1: TcxCheckBox
            Left = 345
            Top = 560
            Caption = 'Guarantor Current Address if different from ID Address'
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 39
            Width = 315
          end
          object cxDBTextEdit77: TcxDBTextEdit
            Left = 165
            Top = 190
            DataBinding.DataField = 'ID_NO'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 7
            Width = 150
          end
          object cxDBLookupComboBox1: TcxDBLookupComboBox
            Left = 165
            Top = 271
            DataBinding.DataField = 'NATIONALITY'
            DataBinding.DataSource = dsSubject
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'CODE'
            Properties.ListColumns = <
              item
                Caption = 'Code'
                FieldName = 'CODE'
              end
              item
                Caption = 'Nationality'
                FieldName = 'NATIONALITY'
              end>
            Properties.ListFieldIndex = 1
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 11
            Width = 150
          end
          object cxDBLookupComboBox6: TcxDBLookupComboBox
            Left = 510
            Top = 425
            DataBinding.DataField = 'GU_PROVINCE'
            DataBinding.DataSource = dsSubject
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'PROVCODE'
            Properties.ListColumns = <
              item
                FieldName = 'PROVCODE'
              end
              item
                FieldName = 'PROVNAME'
              end>
            Properties.ListFieldIndex = 1
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 34
            Width = 150
          end
          object cxDBLookupComboBox7: TcxDBLookupComboBox
            Left = 510
            Top = 506
            DataBinding.DataField = 'GU_COUNTRY'
            DataBinding.DataSource = dsSubject
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'CODE'
            Properties.ListColumns = <
              item
                Caption = 'Code'
                FieldName = 'CODE'
              end
              item
                Caption = 'Country'
                FieldName = 'COUNTNAME'
              end>
            Properties.ListFieldIndex = 1
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 37
            Width = 150
          end
          object cxDBLookupComboBox8: TcxDBLookupComboBox
            Left = 842
            Top = 71
            DataBinding.DataField = 'GU_CITY2'
            DataBinding.DataSource = dsSubject
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'CITYCODE'
            Properties.ListColumns = <
              item
                Caption = 'City Name'
                FieldName = 'CITYCODE'
              end
              item
                FieldName = 'CITYNAME'
              end>
            Properties.ListFieldIndex = 1
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 41
            Width = 150
          end
          object cxDBLookupComboBox9: TcxDBLookupComboBox
            Left = 842
            Top = 125
            DataBinding.DataField = 'GU_COUNTRY'
            DataBinding.DataSource = dsSubject
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'CODE'
            Properties.ListColumns = <
              item
                FieldName = 'CODE'
              end
              item
                Caption = 'Country'
                FieldName = 'COUNTNAME'
              end>
            Properties.ListFieldIndex = 1
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 43
            Width = 150
          end
          object guCityCode: TcxDBLookupComboBox
            Left = 510
            Top = 452
            DataBinding.DataField = 'GU_CITY'
            DataBinding.DataSource = dsSubject
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'CITYCODE'
            Properties.ListColumns = <
              item
                FieldName = 'CITYCODE'
              end
              item
                FieldName = 'CITYNAME'
              end>
            Properties.ListFieldIndex = 1
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 35
            Width = 150
          end
          object gucaCity: TcxDBLookupComboBox
            Left = 842
            Top = 344
            DataBinding.DataField = 'GU_CITY'
            DataBinding.DataSource = dsSubject
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'CITYNAME'
            Properties.ListColumns = <
              item
                FieldName = 'CITYNAME'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 50
            Width = 150
          end
          object cxDBImageComboBox1: TcxDBImageComboBox
            Left = 60
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
            TabOrder = 0
            Width = 96
          end
          object cxCheckBox3: TcxCheckBox
            Left = 249
            Top = 217
            Caption = 'Life Time'
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 9
            Width = 66
          end
          object cxDBTextEdit17: TcxDBTextEdit
            Left = 165
            Top = 325
            DataBinding.DataField = 'SPOUSE_NAME'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 13
            Width = 150
          end
          object Edu_Background: TcxDBImageComboBox
            Left = 165
            Top = 352
            DataBinding.DataField = 'EDU_BACKGROUND'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Others'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = 'Elementary School'
                Value = 2
              end
              item
                Description = 'Junior High School'
                Value = 3
              end
              item
                Description = 'Senior High School'
                Value = 4
              end
              item
                Description = 'Academy'
                Value = 5
              end
              item
                Description = 'Degree'
                Value = 6
              end
              item
                Description = 'Master'
                Value = 7
              end
              item
                Description = 'Doctoral Degree'
                Value = 8
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 14
            Width = 141
          end
          object cxDBTextEdit21: TcxDBTextEdit
            Left = 165
            Top = 379
            DataBinding.DataField = 'EDU_BACKGOUND_OTHER'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 15
            Width = 150
          end
          object cxDBDateEdit2: TcxDBDateEdit
            Left = 165
            Top = 517
            DataBinding.DataField = 'TAX_REG_DATE'
            DataBinding.DataSource = dsSubject
            Properties.DisplayFormat = 'dd mmm yyyy'
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 19
            Width = 150
          end
          object cxDBTextEdit42: TcxDBTextEdit
            Left = 60
            Top = 37
            DataBinding.DataField = 'EVENT_NAME'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 2
            Width = 267
          end
          object cxDBLookupComboBox13: TcxDBLookupComboBox
            Left = 510
            Top = 163
            Properties.KeyFieldNames = 'CODE'
            Properties.ListColumns = <
              item
                Caption = 'Code'
                FieldName = 'CODE'
              end
              item
                Caption = 'Nationality'
                FieldName = 'NATIONALITY'
              end>
            Properties.ListFieldIndex = 1
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 25
            Width = 150
          end
          object cxDBLookupComboBox15: TcxDBLookupComboBox
            Left = 200
            Top = 10
            RepositoryItem = dmGlobal.luBranch
            DataBinding.DataField = 'BRCODE'
            DataBinding.DataSource = dsSubject
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
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 1
            Width = 121
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
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Name As State In the ID'
            Parent = dxLayoutControl1Group5
            Control = txtName
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Place Of Birth'
            Parent = dxLayoutControl1Group5
            Control = cxDBTextEdit2
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Date Of Birth'
            Parent = dxLayoutControl1Group5
            Control = cxDBDateEdit1
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'ID Type'
            Parent = dxLayoutControl1Group5
            Control = id_type
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl1Item5: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'ID Valid Until'
            Parent = dxLayoutControl1Group7
            Control = id_valid
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Gender'
            Parent = dxLayoutGroup2
            Control = cxDBImageComboBox2
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Item8: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Taxpayer Reg Status'
            Parent = dxLayoutControl1Group3
            Control = cxDBImageComboBox3
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item9: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Indonesia Taxpayer Reg No.'
            Parent = dxLayoutControl1Group3
            Control = cxDBTextEdit4
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Item10: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Marital Status'
            Parent = dxLayoutGroup2
            Control = MatiralStatus
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl1Item11: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Mother'#39's Maiden Name'
            Parent = dxLayoutGroup2
            Control = cxDBTextEdit5
            ControlOptions.ShowBorder = False
            Index = 7
          end
          object GuarantorPanel: TdxLayoutGroup
            CaptionOptions.Text = 'Guarantor Personal Data'
            Parent = dxLayoutGroup1
            Visible = False
            ButtonOptions.Buttons = <>
            Index = 1
          end
          object dxLayoutControl1Group2: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutGroup1
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item12: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Guarantor Name'
            Parent = GuarantorPanel
            Control = cxDBTextEdit6
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item13: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Relationship With Account Owner'
            Parent = GuarantorPanel
            Control = cxDBImageComboBox5
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Item14: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'ID Number Of Guarantor'
            Parent = GuarantorPanel
            Control = cxDBTextEdit7
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Item15: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Valid To'
            Parent = GuarantorPanel
            Control = cxDBDateEdit3
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl1Item16: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Taxpayer No. Of Guarantor'
            Parent = GuarantorPanel
            Control = cxDBTextEdit8
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutControl1Item18: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Gender'
            Parent = GuarantorPanel
            Control = cxDBImageComboBox6
            ControlOptions.ShowBorder = False
            Index = 6
          end
          object dxLayoutControl1Item19: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Place Of Birth'
            Parent = GuarantorPanel
            Control = cxDBTextEdit10
            ControlOptions.ShowBorder = False
            Index = 7
          end
          object dxLayoutControl1Item20: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Date Of Birth'
            Parent = GuarantorPanel
            Control = cxDBDateEdit4
            ControlOptions.ShowBorder = False
            Index = 8
          end
          object dxLayoutControl1Item21: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Marital Status'
            Parent = GuarantorPanel
            Control = cxDBImageComboBox7
            ControlOptions.ShowBorder = False
            Index = 9
          end
          object dxLayoutControl1Item22: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'E-Mail Address'
            Parent = GuarantorPanel
            Control = cxDBTextEdit11
            ControlOptions.ShowBorder = False
            Index = 10
          end
          object dxLayoutControl1Item23: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Cell Phone No.'
            Parent = GuarantorPanel
            Control = cxDBTextEdit12
            ControlOptions.ShowBorder = False
            Index = 11
          end
          object dxLayoutControl1Item24: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Fax No.'
            Parent = GuarantorPanel
            Control = cxDBTextEdit13
            ControlOptions.ShowBorder = False
            Index = 12
          end
          object dxLayoutControl1Item25: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.AlignVert = tavTop
            CaptionOptions.Text = 'Address Of Guarantor'
            Parent = GuarantorPanel
            Control = cxDBMemo1
            ControlOptions.ShowBorder = False
            Index = 13
          end
          object dxLayoutControl1Item27: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Postal Code'
            Parent = GuarantorPanel
            Control = cxDBTextEdit15
            ControlOptions.ShowBorder = False
            Index = 16
          end
          object dxLayoutControl1Item30: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Home Phone No.'
            Parent = GuarantorPanel
            Control = cxDBTextEdit18
            ControlOptions.ShowBorder = False
            Index = 18
          end
          object GuarantorCurrentAddress: TdxLayoutGroup
            CaptionOptions.Text = 'Guarantor Current Address'
            Parent = dxLayoutControl1Group4
            Visible = False
            ButtonOptions.Buttons = <>
            Index = 0
          end
          object GuarantorWorkInfo: TdxLayoutGroup
            CaptionOptions.Text = 'Guarantor Work Info && Source Of Fund'
            Parent = dxLayoutControl1Group4
            Visible = False
            ButtonOptions.Buttons = <>
            Index = 1
          end
          object dxLayoutControl1Group4: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutGroup1
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Item32: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.AlignVert = tavTop
            CaptionOptions.Text = 'Address'
            Parent = GuarantorCurrentAddress
            Control = cxDBMemo2
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item34: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Postal Code'
            Parent = GuarantorCurrentAddress
            Control = cxDBTextEdit20
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Item36: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Home Phone No.'
            Parent = GuarantorCurrentAddress
            Control = cxDBTextEdit22
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutControl1Item37: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Occupation'
            Parent = GuarantorWorkInfo
            Control = cxDBTextEdit23
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item38: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Last Position'
            Parent = GuarantorWorkInfo
            Control = cxDBTextEdit24
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Item39: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Company Name'
            Parent = GuarantorWorkInfo
            Control = cxDBTextEdit25
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Item40: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Company Business Sector'
            Parent = GuarantorWorkInfo
            Control = cxDBTextEdit26
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl1Item41: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Company Address'
            Parent = GuarantorWorkInfo
            Control = cxDBTextEdit27
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutControl1Item43: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Postal Code'
            Parent = GuarantorWorkInfo
            Control = cxDBTextEdit29
            ControlOptions.ShowBorder = False
            Index = 6
          end
          object dxLayoutControl1Item44: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Phone No.'
            Parent = GuarantorWorkInfo
            Control = cxDBTextEdit30
            ControlOptions.ShowBorder = False
            Index = 7
          end
          object dxLayoutControl1Item45: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Fax No.'
            Parent = GuarantorWorkInfo
            Control = cxDBTextEdit31
            ControlOptions.ShowBorder = False
            Index = 8
          end
          object dxLayoutControl1Item46: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Souce Of Fund will be invested'
            Parent = GuarantorWorkInfo
            Control = cxDBImageComboBox8
            ControlOptions.ShowBorder = False
            Index = 9
          end
          object OtherSourceOfFund: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = ' '
            Parent = GuarantorWorkInfo
            Visible = False
            Control = cxDBTextEdit32
            ControlOptions.ShowBorder = False
            Index = 10
          end
          object dxLayoutControl1Item48: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Income/Annual Salary'
            Parent = GuarantorWorkInfo
            Control = cxDBImageComboBox9
            ControlOptions.ShowBorder = False
            Index = 11
          end
          object dxLayoutControl1Item49: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Marital Status'
            Parent = GuarantorWorkInfo
            Control = cxDBImageComboBox10
            ControlOptions.ShowBorder = False
            Index = 12
          end
          object dxLayoutControl1Item50: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Mother Maiden Name'
            Parent = GuarantorWorkInfo
            Control = cxDBTextEdit33
            ControlOptions.ShowBorder = False
            Index = 13
          end
          object dxLayoutControl1Item47: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'cxCheckBox1'
            CaptionOptions.Visible = False
            Parent = GuarantorPanel
            Control = cxCheckBox1
            ControlOptions.ShowBorder = False
            Index = 19
          end
          object dxLayoutControl1Item31: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'ID Number'
            Parent = dxLayoutControl1Group5
            Control = cxDBTextEdit77
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutControl1Item51: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Nationality'
            Parent = dxLayoutGroup2
            Control = cxDBLookupComboBox1
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Province'
            Parent = GuarantorPanel
            Control = cxDBLookupComboBox6
            ControlOptions.ShowBorder = False
            Index = 14
          end
          object dxLayoutControl1Item52: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Country'
            Parent = GuarantorPanel
            Control = cxDBLookupComboBox7
            ControlOptions.ShowBorder = False
            Index = 17
          end
          object dxLayoutControl1Item53: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'City'
            Parent = GuarantorCurrentAddress
            Control = cxDBLookupComboBox8
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Item54: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Country'
            Parent = GuarantorCurrentAddress
            Control = cxDBLookupComboBox9
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl1Item28: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'City'
            Parent = GuarantorPanel
            Control = guCityCode
            ControlOptions.ShowBorder = False
            Index = 15
          end
          object dxLayoutControl1Item26: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'City'
            Parent = GuarantorWorkInfo
            Control = gucaCity
            ControlOptions.ShowBorder = False
            Index = 5
          end
          object dxLayoutControl1Item29: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Product'
            Parent = dxLayoutControl1Group8
            Control = cxDBImageComboBox1
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item33: TdxLayoutItem
            CaptionOptions.Text = 'Life Time'
            CaptionOptions.Visible = False
            Parent = dxLayoutControl1Group7
            Control = cxCheckBox3
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object SpouseName: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Spouse Name'
            Parent = dxLayoutGroup2
            Visible = False
            Control = cxDBTextEdit17
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutControl1Group3: TdxLayoutGroup
            CaptionOptions.Text = 'Taxpayer'
            Parent = dxLayoutControl1Group2
            ButtonOptions.Buttons = <>
            Index = 3
          end
          object dxLayoutControl1Item35: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Education Background'
            Parent = dxLayoutGroup2
            Control = Edu_Background
            ControlOptions.ShowBorder = False
            Index = 5
          end
          object EB_Other: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Other'
            Parent = dxLayoutGroup2
            Control = cxDBTextEdit21
            ControlOptions.ShowBorder = False
            Index = 6
          end
          object dxLayoutControl1Item42: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Tax Registration Date'
            Parent = dxLayoutControl1Group3
            Control = cxDBDateEdit2
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Group5: TdxLayoutGroup
            CaptionOptions.Text = 'Personal Data'
            Parent = dxLayoutControl1Group2
            ButtonOptions.Buttons = <>
            Index = 2
          end
          object dxLayoutControl1Group6: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl1Group5
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 5
          end
          object dxLayoutGroup2: TdxLayoutGroup
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl1Group6
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Group7: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutGroup2
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item55: TdxLayoutItem
            CaptionOptions.Text = 'On Event'
            Parent = dxLayoutControl1Group2
            Control = cxDBTextEdit42
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Item56: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Nationality'
            Parent = GuarantorPanel
            Control = cxDBLookupComboBox13
            ControlOptions.ShowBorder = False
            Index = 5
          end
          object dxLayoutControl1Item17: TdxLayoutItem
            CaptionOptions.Text = 'Branch'
            Parent = dxLayoutControl1Group8
            Control = cxDBLookupComboBox15
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Group8: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl1Group2
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
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
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 1014
          Height = 604
          Align = alClient
          TabOrder = 0
          object cmbTypeOfResidence: TcxDBImageComboBox
            Left = 141
            Top = 28
            DataBinding.DataField = 'resident_type'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'House'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'Dornitory'
                Value = '2'
              end
              item
                Description = 'Apartement'
                Value = '3'
              end
              item
                Description = 'Rent'
                Value = '4'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 0
            Width = 121
          end
          object cxDBImageComboBox12: TcxDBImageComboBox
            Left = 141
            Top = 55
            DataBinding.DataField = 'ownership_status'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Owned'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'Family'
                Value = '2'
              end
              item
                Description = 'Company'
                Value = '3'
              end
              item
                Description = 'Rent'
                Value = '4'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 1
            Width = 121
          end
          object cxDBMemo3: TcxDBMemo
            Left = 141
            Top = 82
            DataBinding.DataField = 'street'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 2
            Height = 43
            Width = 150
          end
          object cxDBTextEdit35: TcxDBTextEdit
            Left = 141
            Top = 158
            DataBinding.DataField = 'kelurahan'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 4
            Width = 150
          end
          object cxDBTextEdit36: TcxDBTextEdit
            Left = 141
            Top = 185
            DataBinding.DataField = 'kecamatan'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 5
            Width = 150
          end
          object cxDBTextEdit39: TcxDBTextEdit
            Left = 141
            Top = 266
            DataBinding.DataField = 'zip_code'
            DataBinding.DataSource = dsSubject
            Properties.MaxLength = 5
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 8
            Width = 150
          end
          object cxCheckBox2: TcxCheckBox
            Left = 22
            Top = 293
            Caption = 'Current Address if different from ID Address'
            Properties.NullStyle = nssUnchecked
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 9
            Width = 269
          end
          object cxDBImageComboBox13: TcxDBImageComboBox
            Left = 417
            Top = 28
            DataBinding.DataField = 'resident_type2'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'House'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = 'Dornitory'
                Value = 2
              end
              item
                Description = 'Apartement'
                Value = 3
              end
              item
                Description = 'Other'
                Value = 4
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 15
            Width = 121
          end
          object cxDBTextEdit40: TcxDBTextEdit
            Left = 417
            Top = 55
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 16
            Width = 150
          end
          object cxDBImageComboBox14: TcxDBImageComboBox
            Left = 417
            Top = 82
            DataBinding.DataField = 'ownership_status2'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Owned'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = 'Family'
                Value = 2
              end
              item
                Description = 'Company'
                Value = 3
              end
              item
                Description = 'Rent'
                Value = 4
              end
              item
                Description = 'Other'
                Value = 5
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 17
            Width = 121
          end
          object cxDBTextEdit41: TcxDBTextEdit
            Left = 417
            Top = 109
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 18
            Width = 150
          end
          object cxDBTextEdit44: TcxDBTextEdit
            Left = 417
            Top = 212
            DataBinding.DataField = 'kelurahan2'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 21
            Width = 150
          end
          object cxDBTextEdit45: TcxDBTextEdit
            Left = 417
            Top = 239
            DataBinding.DataField = 'kecamatan2'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 22
            Width = 150
          end
          object cxDBTextEdit48: TcxDBTextEdit
            Left = 417
            Top = 320
            DataBinding.DataField = 'zip_code2'
            DataBinding.DataSource = dsSubject
            Properties.MaxLength = 5
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 25
            Width = 84
          end
          object cxDBTextEdit49: TcxDBTextEdit
            Left = 141
            Top = 320
            DataBinding.DataField = 'EMAIL'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 10
            Width = 150
          end
          object cxDBTextEdit50: TcxDBTextEdit
            Left = 141
            Top = 347
            DataBinding.DataField = 'home_phone'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 11
            Width = 150
          end
          object cxDBTextEdit51: TcxDBTextEdit
            Left = 141
            Top = 374
            DataBinding.DataField = 'cell_phone'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 12
            Width = 150
          end
          object cxDBTextEdit52: TcxDBTextEdit
            Left = 141
            Top = 401
            DataBinding.DataField = 'fax_no'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 13
            Width = 150
          end
          object cxDBImageComboBox15: TcxDBImageComboBox
            Left = 141
            Top = 428
            DataBinding.DataField = 'correspondent_address'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'ID'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = 'Current Address'
                Value = 2
              end
              item
                Description = 'Office Address'
                Value = 3
              end
              item
                Description = 'Email Address'
                Value = 4
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 14
            Width = 121
          end
          object cxDBMemo5: TcxDBMemo
            Left = 417
            Top = 136
            DataBinding.DataField = 'STREET2'
            DataBinding.DataSource = dsSubject
            Properties.Alignment = taLeftJustify
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 19
            Height = 43
            Width = 150
          end
          object cxDBLookupComboBox2: TcxDBLookupComboBox
            Left = 141
            Top = 212
            DataBinding.DataField = 'PROVINCE'
            DataBinding.DataSource = dsSubject
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'PROVCODE'
            Properties.ListColumns = <
              item
                FieldName = 'PROVCODE'
              end
              item
                FieldName = 'PROVNAME'
              end>
            Properties.ListFieldIndex = 1
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 6
            Width = 150
          end
          object cxDBLookupComboBox3: TcxDBLookupComboBox
            Left = 141
            Top = 239
            DataBinding.DataField = 'COUNTRY'
            DataBinding.DataSource = dsSubject
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'CODE'
            Properties.ListColumns = <
              item
                FieldName = 'CODE'
              end
              item
                FieldName = 'COUNTNAME'
              end>
            Properties.ListFieldIndex = 1
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 7
            Width = 150
          end
          object cxDBLookupComboBox4: TcxDBLookupComboBox
            Left = 417
            Top = 266
            DataBinding.DataField = 'PROVINCE2'
            DataBinding.DataSource = dsSubject
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'PROVCODE'
            Properties.ListColumns = <
              item
                FieldName = 'PROVCODE'
              end
              item
                FieldName = 'PROVNAME'
              end>
            Properties.ListFieldIndex = 1
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 23
            Width = 150
          end
          object cxDBLookupComboBox5: TcxDBLookupComboBox
            Left = 417
            Top = 293
            DataBinding.DataField = 'COUNTRY2'
            DataBinding.DataSource = dsSubject
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'CODE'
            Properties.ListColumns = <
              item
                FieldName = 'CODE'
              end
              item
                FieldName = 'COUNTNAME'
              end>
            Properties.ListFieldIndex = 1
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 24
            Width = 150
          end
          object cxDBMaskEdit1: TcxDBMaskEdit
            Left = 141
            Top = 131
            DataBinding.DataField = 'RT_RW'
            DataBinding.DataSource = dsSubject
            Properties.EditMask = '000/000'
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 3
            Width = 83
          end
          object cxDBMaskEdit2: TcxDBMaskEdit
            Left = 417
            Top = 185
            DataBinding.DataField = 'RT_RW2'
            DataBinding.DataSource = dsSubject
            Properties.EditMask = '000/000'
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 20
            Width = 85
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
            CaptionOptions.Text = 'As State In The ID'
            Parent = dxLayoutControl2Group3
            ButtonOptions.Buttons = <>
            Index = 0
          end
          object CurrentAddress: TdxLayoutGroup
            CaptionOptions.Text = 'Current Address'
            Parent = dxLayoutControl2Group2
            Visible = False
            ButtonOptions.Buttons = <>
            Index = 0
          end
          object dxLayoutControl2Group3: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutGroup3
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
          end
          object dxLayoutItem2: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Type Of Residence'
            Parent = dxLayoutGroup4
            Control = cmbTypeOfResidence
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl2Item2: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Ownership Status'
            Parent = dxLayoutGroup4
            Control = cxDBImageComboBox12
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl2Item3: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.AlignVert = tavTop
            CaptionOptions.Text = 'Street Address'
            Parent = dxLayoutGroup4
            Control = cxDBMemo3
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl2Item5: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Kelurahan'
            Parent = dxLayoutGroup4
            Control = cxDBTextEdit35
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutControl2Item6: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Kecamatan'
            Parent = dxLayoutGroup4
            Control = cxDBTextEdit36
            ControlOptions.ShowBorder = False
            Index = 5
          end
          object dxLayoutControl2Item9: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Zip Code'
            Parent = dxLayoutGroup4
            Control = cxDBTextEdit39
            ControlOptions.ShowBorder = False
            Index = 8
          end
          object dxLayoutControl2Item10: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'cxCheckBox2'
            CaptionOptions.Visible = False
            Parent = dxLayoutGroup4
            Control = cxCheckBox2
            ControlOptions.ShowBorder = False
            Index = 9
          end
          object dxLayoutControl2Item11: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Type Of Residence'
            Parent = CurrentAddress
            Control = cxDBImageComboBox13
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl2Item12: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = ' '
            Parent = CurrentAddress
            Visible = False
            Control = cxDBTextEdit40
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl2Item13: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Ownership Status'
            Parent = CurrentAddress
            Control = cxDBImageComboBox14
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl2Item14: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = ' '
            Parent = CurrentAddress
            Visible = False
            Control = cxDBTextEdit41
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl2Item17: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Kecamatan'
            Parent = CurrentAddress
            Control = cxDBTextEdit44
            ControlOptions.ShowBorder = False
            Index = 6
          end
          object dxLayoutControl2Item18: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Kelurahan'
            Parent = CurrentAddress
            Control = cxDBTextEdit45
            ControlOptions.ShowBorder = False
            Index = 7
          end
          object dxLayoutControl2Item21: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Zip Code'
            Parent = CurrentAddress
            Control = cxDBTextEdit48
            ControlOptions.ShowBorder = False
            Index = 10
          end
          object dxLayoutControl2Item22: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Email Address'
            Parent = dxLayoutGroup4
            Control = cxDBTextEdit49
            ControlOptions.ShowBorder = False
            Index = 10
          end
          object dxLayoutControl2Item23: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Home Phone'
            Parent = dxLayoutGroup4
            Control = cxDBTextEdit50
            ControlOptions.ShowBorder = False
            Index = 11
          end
          object dxLayoutControl2Item24: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Cell Phone'
            Parent = dxLayoutGroup4
            Control = cxDBTextEdit51
            ControlOptions.ShowBorder = False
            Index = 12
          end
          object dxLayoutControl2Item25: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Fax no.'
            Parent = dxLayoutGroup4
            Control = cxDBTextEdit52
            ControlOptions.ShowBorder = False
            Index = 13
          end
          object dxLayoutControl2Item26: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Correspondent Address'
            Parent = dxLayoutGroup4
            Control = cxDBImageComboBox15
            ControlOptions.ShowBorder = False
            Index = 14
          end
          object dxLayoutControl2Item27: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.AlignVert = tavTop
            CaptionOptions.Text = 'Street Address'
            Parent = CurrentAddress
            Control = cxDBMemo5
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutControl2Item15: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Province'
            Parent = dxLayoutGroup4
            Control = cxDBLookupComboBox2
            ControlOptions.ShowBorder = False
            Index = 6
          end
          object dxLayoutControl2Item28: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Country'
            Parent = dxLayoutGroup4
            Control = cxDBLookupComboBox3
            ControlOptions.ShowBorder = False
            Index = 7
          end
          object dxLayoutControl2Item7: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Province'
            Parent = CurrentAddress
            Control = cxDBLookupComboBox4
            ControlOptions.ShowBorder = False
            Index = 8
          end
          object dxLayoutControl2Item8: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Country'
            Parent = CurrentAddress
            Control = cxDBLookupComboBox5
            ControlOptions.ShowBorder = False
            Index = 9
          end
          object dxLayoutControl2Group2: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl2Group3
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl2Item19: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'RT / RW'
            Parent = dxLayoutGroup4
            Control = cxDBMaskEdit1
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl2Item4: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'cxDBMaskEdit2'
            Parent = CurrentAddress
            Control = cxDBMaskEdit2
            ControlOptions.ShowBorder = False
            Index = 5
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
          Width = 1014
          Height = 604
          Align = alClient
          TabOrder = 0
          object cmbOccupation: TcxDBImageComboBox
            Left = 155
            Top = 28
            DataBinding.DataField = 'occupation'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Others'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = 'Private Employee'
                Value = 2
              end
              item
                Description = 'Civil Servant'
                Value = 3
              end
              item
                Description = 'Housewife'
                Value = 4
              end
              item
                Description = 'Entrepreneur'
                Value = 5
              end
              item
                Description = 'Student'
                Value = 6
              end
              item
                Description = 'Armed Forces/Police'
                Value = 7
              end
              item
                Description = 'Retiree'
                Value = 8
              end
              item
                Description = 'Teacher'
                Value = 9
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 0
            Width = 106
          end
          object cxDBTextEdit53: TcxDBTextEdit
            Left = 155
            Top = 82
            DataBinding.DataField = 'field_work'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 2
            Width = 150
          end
          object cxDBTextEdit54: TcxDBTextEdit
            Left = 155
            Top = 109
            DataBinding.DataField = 'company'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 3
            Width = 150
          end
          object cxDBTextEdit55: TcxDBTextEdit
            Left = 155
            Top = 136
            DataBinding.DataField = 'position'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 4
            Width = 150
          end
          object cxDBTextEdit56: TcxDBTextEdit
            Left = 155
            Top = 163
            DataBinding.DataField = 'job_division'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 5
            Width = 150
          end
          object cxLabel1: TcxLabel
            Left = 22
            Top = 190
            AutoSize = False
            Caption = 'Years Of Service'
            Style.HotTrack = False
            Height = 17
            Width = 100
          end
          object cxDBCurrencyEdit1: TcxDBCurrencyEdit
            Left = 163
            Top = 190
            DataBinding.DataField = 'yos_year'
            DataBinding.DataSource = dsSubject
            Properties.DisplayFormat = '0'
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 7
            Width = 50
          end
          object cxDBCurrencyEdit2: TcxDBCurrencyEdit
            Left = 163
            Top = 217
            DataBinding.DataField = 'yos_month'
            DataBinding.DataSource = dsSubject
            Properties.DisplayFormat = '0'
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 8
            Width = 50
          end
          object cxDBTextEdit57: TcxDBTextEdit
            Left = 155
            Top = 244
            DataBinding.DataField = 'company_phone'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 9
            Width = 82
          end
          object cxDBTextEdit58: TcxDBTextEdit
            Left = 264
            Top = 244
            DataBinding.DataField = 'company_phone_ext'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 10
            Width = 41
          end
          object cxDBMemo4: TcxDBMemo
            Left = 155
            Top = 271
            DataBinding.DataField = 'company_address'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 11
            Height = 37
            Width = 150
          end
          object cxDBImageComboBox17: TcxDBImageComboBox
            Left = 155
            Top = 314
            DataBinding.DataField = 'FUND_SOURCE'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Others'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = 'Salary'
                Value = 2
              end
              item
                Description = 'Business Profit'
                Value = 3
              end
              item
                Description = 'Interest'
                Value = 4
              end
              item
                Description = 'Heritage'
                Value = 5
              end
              item
                Description = 'Grant From Parent or Kids'
                Value = 6
              end
              item
                Description = 'Grant from Spouse'
                Value = 7
              end
              item
                Description = 'Pension Funds'
                Value = 8
              end
              item
                Description = 'Lottery'
                Value = 9
              end
              item
                Description = 'Proceed From Investment'
                Value = 10
              end
              item
                Description = 'Deposit'
                Value = 11
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 12
            Width = 150
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 449
            Top = 82
            DataBinding.DataField = 'INV_BANK_ACC_NO'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 18
            Width = 150
          end
          object cxDBTextEdit14: TcxDBTextEdit
            Left = 449
            Top = 109
            DataBinding.DataField = 'INV_BANK_ACC_NAME'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 19
            Width = 150
          end
          object cxDBTextEdit19: TcxDBTextEdit
            Left = 155
            Top = 341
            DataBinding.DataField = 'SOURCE_FUND_OTHER'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 13
            Width = 150
          end
          object cxDBLookupComboBox12: TcxDBLookupComboBox
            Left = 449
            Top = 136
            RepositoryItem = dmGlobal.luCurrency
            DataBinding.DataField = 'INV_BANK_ACC_CCY'
            DataBinding.DataSource = dsSubject
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'CCY'
            Properties.ListColumns = <
              item
                FieldName = 'CCY'
              end
              item
                FieldName = 'CCYNAME'
              end>
            Properties.ListSource = dmLookup.dsLuCcy
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 20
            Width = 103
          end
          object cxDBTextEdit28: TcxDBTextEdit
            Left = 155
            Top = 55
            DataBinding.DataField = 'OCCUPATION_OTHER'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 1
            Width = 150
          end
          object Invs_Objectives: TcxDBImageComboBox
            Left = 449
            Top = 193
            DataBinding.DataField = 'INVEST_OBJECTIVE'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Others'
                ImageIndex = 0
                Value = 1
              end
              item
                Description = 'Price Appreciation'
                Value = 2
              end
              item
                Description = 'Investment'
                Value = 3
              end
              item
                Description = 'Speculation'
                Value = 4
              end
              item
                Description = 'Income'
                Value = 5
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 21
            Width = 150
          end
          object cxDBTextEdit37: TcxDBTextEdit
            Left = 449
            Top = 220
            DataBinding.DataField = 'INVEST_OBJECTIVE_OTHER'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 22
            Width = 150
          end
          object cxDBTextEdit38: TcxDBTextEdit
            Left = 22
            Top = 413
            DataBinding.DataField = 'NAT_BUSINESS_ENTREPRENEUR'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 15
            Width = 283
          end
          object cxDBLookupComboBox10: TcxDBLookupComboBox
            Left = 449
            Top = 28
            DataBinding.DataField = 'INV_BANK_NAME'
            DataBinding.DataSource = dsSubject
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
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 16
            Width = 145
          end
          object cxDBLookupComboBox11: TcxDBLookupComboBox
            Left = 449
            Top = 55
            RepositoryItem = dmGlobal.luBranch
            DataBinding.DataField = 'INV_BANK_BRANCH'
            DataBinding.DataSource = dsSubject
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
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 17
            Width = 72
          end
          object cxDBLookupComboBox14: TcxDBLookupComboBox
            Left = 155
            Top = 368
            DataBinding.DataField = 'ANNUAL_INCOME'
            DataBinding.DataSource = dsSubject
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'SEC_INCCODE'
            Properties.ListColumns = <
              item
                Caption = 'Income Code'
                FieldName = 'SEC_INCCODE'
              end
              item
                Caption = 'Income Description'
                FieldName = 'SEC_INCDESC'
              end>
            Properties.ListFieldIndex = 1
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 14
            Width = 150
          end
          object dxLayoutGroup5: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem3: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Occupation'
            Parent = dxLayoutControl3Group6
            Control = cmbOccupation
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl3Item2: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Fields Of Work'
            Parent = dxLayoutControl3Group6
            Control = cxDBTextEdit53
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl3Item3: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Company Name'
            Parent = dxLayoutControl3Group6
            Control = cxDBTextEdit54
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl3Item4: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Position'
            Parent = dxLayoutControl3Group6
            Control = cxDBTextEdit55
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutControl3Item5: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Job Function/Division'
            Parent = dxLayoutControl3Group6
            Control = cxDBTextEdit56
            ControlOptions.ShowBorder = False
            Index = 5
          end
          object dxLayoutControl3Item6: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'cxLabel1'
            CaptionOptions.Visible = False
            Parent = dxLayoutControl3Group2
            Control = cxLabel1
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl3Item7: TdxLayoutItem
            CaptionOptions.Text = 'Years'
            Parent = dxLayoutGroup6
            Control = cxDBCurrencyEdit1
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl3Item8: TdxLayoutItem
            CaptionOptions.Text = 'Month'
            Parent = dxLayoutGroup6
            Control = cxDBCurrencyEdit2
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl3Item9: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Phone No.'
            Parent = dxLayoutControl3Group3
            Control = cxDBTextEdit57
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl3Item10: TdxLayoutItem
            CaptionOptions.Text = 'Ext'
            Parent = dxLayoutControl3Group7
            Control = cxDBTextEdit58
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl3Item11: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.AlignVert = tavTop
            CaptionOptions.Text = 'Company Address'
            Parent = dxLayoutControl3Group6
            Control = cxDBMemo4
            ControlOptions.ShowBorder = False
            Index = 8
          end
          object dxLayoutControl3Item12: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Source Of Fund'
            Parent = dxLayoutControl3Group6
            Control = cxDBImageComboBox17
            ControlOptions.ShowBorder = False
            Index = 9
          end
          object dxLayoutControl3Group4: TdxLayoutGroup
            CaptionOptions.Text = 'Personal Bank Account'
            Parent = dxLayoutControl3Group8
            ButtonOptions.Buttons = <>
            Index = 0
          end
          object dxLayoutControl3Group6: TdxLayoutGroup
            CaptionOptions.Text = 'Source Of Fund'
            Parent = dxLayoutGroup5
            ButtonOptions.Buttons = <>
            Index = 0
          end
          object dxLayoutControl3Group2: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl3Group6
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 6
          end
          object dxLayoutGroup6: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl3Group2
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl3Group7: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl3Group6
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 7
          end
          object dxLayoutControl3Group3: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl3Group7
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl3Item15: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Account No.'
            Parent = dxLayoutControl3Group4
            Control = cxDBTextEdit3
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl3Item16: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Account Name'
            Parent = dxLayoutControl3Group4
            Control = cxDBTextEdit14
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object SourceOfFundOther: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Others'
            Parent = dxLayoutControl3Group6
            Visible = False
            Control = cxDBTextEdit19
            ControlOptions.ShowBorder = False
            Index = 10
          end
          object dxLayoutControl3Item18: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Account Currency'
            Parent = dxLayoutControl3Group4
            Control = cxDBLookupComboBox12
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object Ocupation_other: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Occupation Others'
            Parent = dxLayoutControl3Group6
            Control = cxDBTextEdit28
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl3Group5: TdxLayoutGroup
            CaptionOptions.Text = 'Others'
            Parent = dxLayoutControl3Group8
            ButtonOptions.Buttons = <>
            Index = 1
          end
          object dxLayoutControl3Group8: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutGroup5
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl3Item19: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Investment Objectives'
            Parent = dxLayoutControl3Group5
            Control = Invs_Objectives
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object Invs_Objective_Others: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Others'
            Parent = dxLayoutControl3Group5
            Visible = False
            Control = cxDBTextEdit37
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl3Item20: TdxLayoutItem
            CaptionOptions.Text = 'Nature Business for The Entrepreneur'
            CaptionOptions.Layout = clTop
            Parent = dxLayoutControl3Group6
            Control = cxDBTextEdit38
            ControlOptions.ShowBorder = False
            Index = 12
          end
          object dxLayoutControl3Item21: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Bank Name'
            Parent = dxLayoutControl3Group4
            Control = cxDBLookupComboBox10
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl3Item22: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Bank Branch'
            Parent = dxLayoutControl3Group4
            Control = cxDBLookupComboBox11
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl3Item14: TdxLayoutItem
            CaptionOptions.Text = 'Annual Income (In Rupiah)'
            Parent = dxLayoutControl3Group6
            Control = cxDBLookupComboBox14
            ControlOptions.ShowBorder = False
            Index = 11
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
          Width = 1014
          Height = 604
          Align = alClient
          TabOrder = 0
          object txtFamily: TcxDBTextEdit
            Left = 192
            Top = 28
            DataBinding.DataField = 'rel_family_name'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 0
            Width = 150
          end
          object cxDBImageComboBox19: TcxDBImageComboBox
            Left = 192
            Top = 55
            DataBinding.DataField = 'rel_family'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Sister'
                Value = 100
              end
              item
                Description = 'Mother'
                Value = 102
              end
              item
                Description = 'Fahter'
                Value = 103
              end
              item
                Description = 'Doughter'
                Value = 104
              end
              item
                Description = 'Son'
                Value = 105
              end
              item
                Description = 'Brother'
                ImageIndex = 0
                Value = 110
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 1
            Width = 100
          end
          object cxDBTextEdit60: TcxDBTextEdit
            Left = 192
            Top = 82
            DataBinding.DataField = 'rel_family_phone'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 2
            Width = 150
          end
          object cxDBTextEdit61: TcxDBTextEdit
            Left = 192
            Top = 109
            DataBinding.DataField = 'beneficiary_name'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 3
            Width = 150
          end
          object cxDBImageComboBox20: TcxDBImageComboBox
            Left = 192
            Top = 136
            DataBinding.DataField = 'beneficiary_relation'
            DataBinding.DataSource = dsSubject
            Properties.Items = <
              item
                Description = 'Brother'
                ImageIndex = 0
                Value = '110'
              end
              item
                Description = 'Sister'
                Value = '100'
              end
              item
                Description = 'Mother'
                Value = '102'
              end
              item
                Description = 'Father'
                Value = '103'
              end
              item
                Description = 'Doughter'
                Value = '104'
              end
              item
                Description = 'Son'
                Value = '105'
              end>
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 4
            Width = 100
          end
          object cxDBTextEdit62: TcxDBTextEdit
            Left = 192
            Top = 163
            DataBinding.DataField = 'beneficiary_phone'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 5
            Width = 150
          end
          object cxDBTextEdit63: TcxDBTextEdit
            Left = 192
            Top = 190
            DataBinding.DataField = 'beneficiary_id_no'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 6
            Width = 150
          end
          object cxDBTextEdit64: TcxDBTextEdit
            Left = 192
            Top = 217
            DataBinding.DataField = 'rdn'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 7
            Width = 150
          end
          object cxLabel3: TcxLabel
            AlignWithMargins = True
            Left = 372
            Top = 28
            AutoSize = False
            Caption = 
              'Does any of your family or relative works for this Company Group' +
              ' ?'
            Style.HotTrack = False
            Properties.Alignment.Horz = taRightJustify
            Properties.WordWrap = True
            Height = 59
            Width = 164
            AnchorX = 536
          end
          object cxDBTextEdit69: TcxDBTextEdit
            Left = 596
            Top = 82
            DataBinding.DataField = 'fam_work_at_bhn_dept'
            DataBinding.DataSource = dsSubject
            Properties.ReadOnly = True
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 11
            Width = 150
          end
          object cxLabel4: TcxLabel
            Left = 372
            Top = 109
            AutoSize = False
            Caption = 
              'Does any of your family or relative work for other Securities Ho' +
              'use, Stock Exchange, Bapepam or ohter similiar finance'
            Style.HotTrack = False
            Properties.Alignment.Horz = taRightJustify
            Properties.WordWrap = True
            Height = 82
            Width = 164
            AnchorX = 536
          end
          object cxDBTextEdit70: TcxDBTextEdit
            Left = 596
            Top = 136
            DataBinding.DataField = 'fam_work_at_fin_name'
            DataBinding.DataSource = dsSubject
            Properties.ReadOnly = True
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 14
            Width = 150
          end
          object cxDBTextEdit71: TcxDBTextEdit
            Left = 596
            Top = 163
            DataBinding.DataField = 'fam_work_at_fin_inst_name'
            DataBinding.DataSource = dsSubject
            Properties.ReadOnly = True
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 15
            Width = 150
          end
          object cxLabel5: TcxLabel
            Left = 372
            Top = 197
            AutoSize = False
            Caption = 
              'Does any of your family or relative works as Director, or having' +
              ' controls of listed limited liabilities company (minimum 5% of o' +
              'wnership)?'
            Style.HotTrack = False
            Properties.Alignment.Horz = taRightJustify
            Properties.WordWrap = True
            Height = 74
            Width = 164
            AnchorX = 536
          end
          object cxDBTextEdit72: TcxDBTextEdit
            Left = 596
            Top = 224
            DataBinding.DataField = 'fam_work_as_dir_name'
            DataBinding.DataSource = dsSubject
            Properties.ReadOnly = True
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 18
            Width = 150
          end
          object cxDBTextEdit73: TcxDBTextEdit
            Left = 596
            Top = 251
            DataBinding.DataField = 'fam_work_as_dir_inst_name'
            DataBinding.DataSource = dsSubject
            Properties.ReadOnly = True
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 19
            Width = 150
          end
          object cxLabel6: TcxLabel
            Left = 372
            Top = 278
            AutoSize = False
            Caption = 
              'Apakah keluarga atau kerabat anda merupakan pejabat tinggi BUMN,' +
              ' kementrian, lembaga legislative, yudikatif atau lembaga tinggi ' +
              'negara lainnya ?'
            Style.HotTrack = False
            Properties.Alignment.Horz = taRightJustify
            Properties.WordWrap = True
            Height = 74
            Width = 164
            AnchorX = 536
          end
          object cxDBTextEdit74: TcxDBTextEdit
            Left = 596
            Top = 305
            DataBinding.DataField = 'fam_work_at_gov_name'
            DataBinding.DataSource = dsSubject
            Properties.ReadOnly = True
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 22
            Width = 150
          end
          object cxDBTextEdit75: TcxDBTextEdit
            Left = 596
            Top = 332
            DataBinding.DataField = 'fam_work_at_gov_inst_name'
            DataBinding.DataSource = dsSubject
            Properties.ReadOnly = True
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 23
            Width = 150
          end
          object cxDBTextEdit76: TcxDBTextEdit
            Left = 528
            Top = 371
            DataBinding.DataField = 'hobbies'
            DataBinding.DataSource = dsSubject
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 24
            Width = 230
          end
          object cxDBImageComboBox21: TcxDBImageComboBox
            Left = 542
            Top = 28
            DataBinding.DataField = 'fam_work_at_bhn'
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
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 9
            Width = 74
          end
          object cxDBTextEdit78: TcxDBTextEdit
            Left = 596
            Top = 55
            DataBinding.DataField = 'fam_work_at_bhn_name'
            DataBinding.DataSource = dsSubject
            Properties.ReadOnly = True
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 10
            Width = 150
          end
          object cxDBImageComboBox22: TcxDBImageComboBox
            Left = 542
            Top = 109
            DataBinding.DataField = 'fam_work_at_fin'
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
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 13
            Width = 74
          end
          object cxDBImageComboBox23: TcxDBImageComboBox
            Left = 542
            Top = 197
            DataBinding.DataField = 'fam_work_as_dir'
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
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 17
            Width = 74
          end
          object cxDBImageComboBox24: TcxDBImageComboBox
            Left = 542
            Top = 278
            DataBinding.DataField = 'fam_work_at_gov'
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
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 21
            Width = 74
          end
          object dxLayoutGroup7: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem4: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Family / Relative can be contacted'
            Parent = dxLayoutGroup8
            Control = txtFamily
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item2: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Family Relationship'
            Parent = dxLayoutGroup8
            Control = cxDBImageComboBox19
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item3: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Phone Number / Cell Phone'
            Parent = dxLayoutGroup8
            Control = cxDBTextEdit60
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl4Item4: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Beneficiary Name'
            Parent = dxLayoutGroup8
            Control = cxDBTextEdit61
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl4Item5: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Relation with Beneficiary'
            Parent = dxLayoutGroup8
            Control = cxDBImageComboBox20
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutControl4Item6: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Phone Number / Cell Phone'
            Parent = dxLayoutGroup8
            Control = cxDBTextEdit62
            ControlOptions.ShowBorder = False
            Index = 5
          end
          object dxLayoutControl4Item7: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'ID No (KTP / Other)'
            Parent = dxLayoutGroup8
            Control = cxDBTextEdit63
            ControlOptions.ShowBorder = False
            Index = 6
          end
          object dxLayoutControl4Item8: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Investor Bank Account (RDN)'
            Parent = dxLayoutGroup8
            Control = cxDBTextEdit64
            ControlOptions.ShowBorder = False
            Index = 7
          end
          object dxLayoutControl4Item14: TdxLayoutItem
            CaptionOptions.Text = 'cxLabel3'
            CaptionOptions.Visible = False
            Parent = dxLayoutControl4Group8
            Control = cxLabel3
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item17: TdxLayoutItem
            CaptionOptions.Text = 'Dept'
            Parent = dxLayoutControl4Group2
            Control = cxDBTextEdit69
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl4Item18: TdxLayoutItem
            CaptionOptions.Text = 'cxLabel4'
            CaptionOptions.Visible = False
            Parent = dxLayoutControl4Group11
            Control = cxLabel4
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item20: TdxLayoutItem
            CaptionOptions.Text = 'Name'
            Parent = dxLayoutControl4Group4
            Control = cxDBTextEdit70
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item21: TdxLayoutItem
            CaptionOptions.Text = 'Institution'
            Parent = dxLayoutControl4Group4
            Control = cxDBTextEdit71
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl4Item22: TdxLayoutItem
            CaptionOptions.Text = 'cxLabel5'
            CaptionOptions.Visible = False
            Parent = dxLayoutControl4Group19
            Control = cxLabel5
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item24: TdxLayoutItem
            CaptionOptions.Text = 'Name'
            Parent = dxLayoutControl4Group5
            Control = cxDBTextEdit72
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item25: TdxLayoutItem
            CaptionOptions.Text = 'Instituion'
            Parent = dxLayoutControl4Group5
            Control = cxDBTextEdit73
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl4Item26: TdxLayoutItem
            CaptionOptions.Visible = False
            Parent = dxLayoutControl4Group20
            Control = cxLabel6
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item28: TdxLayoutItem
            CaptionOptions.Text = 'Name'
            Parent = dxLayoutControl4Group3
            Control = cxDBTextEdit74
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item29: TdxLayoutItem
            CaptionOptions.Text = 'Instituion'
            Parent = dxLayoutControl4Group3
            Control = cxDBTextEdit75
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl4Item30: TdxLayoutItem
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = '                                            Hobby'
            Parent = dxLayoutControl4Group7
            Control = cxDBTextEdit76
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item31: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.Text = 'cxDBImageComboBox21'
            CaptionOptions.Visible = False
            Parent = dxLayoutControl4Group2
            Control = cxDBImageComboBox21
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item15: TdxLayoutItem
            CaptionOptions.Text = 'Name'
            Parent = dxLayoutControl4Group2
            Control = cxDBTextEdit78
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Item16: TdxLayoutItem
            AlignHorz = ahLeft
            Parent = dxLayoutControl4Group4
            Control = cxDBImageComboBox22
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item19: TdxLayoutItem
            AlignHorz = ahLeft
            Parent = dxLayoutControl4Group5
            Control = cxDBImageComboBox23
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Item23: TdxLayoutItem
            AlignHorz = ahLeft
            Parent = dxLayoutControl4Group3
            Control = cxDBImageComboBox24
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutGroup8: TdxLayoutGroup
            CaptionOptions.Text = 'Family Relation'
            Parent = dxLayoutControl4Group6
            ButtonOptions.Buttons = <>
            Index = 0
          end
          object dxLayoutControl4Group6: TdxLayoutGroup
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutGroup7
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Group15: TdxLayoutGroup
            CaptionOptions.Text = 'Others'
            Parent = dxLayoutControl4Group7
            ButtonOptions.Buttons = <>
            Index = 0
          end
          object dxLayoutControl4Group8: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl4Group15
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl4Group11: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl4Group15
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Group19: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl4Group15
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 2
          end
          object dxLayoutControl4Group20: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl4Group15
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 3
          end
          object dxLayoutControl4Group2: TdxLayoutGroup
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl4Group8
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Group4: TdxLayoutGroup
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl4Group11
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Group5: TdxLayoutGroup
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl4Group19
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Group3: TdxLayoutGroup
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutControl4Group20
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
          object dxLayoutControl4Group7: TdxLayoutGroup
            CaptionOptions.Text = 'Hidden Group'
            Parent = dxLayoutGroup7
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 1
          end
        end
      end
    end
    inherited LayoutControlGroup_Root: TdxLayoutGroup
      Index = -1
    end
    object LayoutControlItem5: TdxLayoutItem
      Parent = LayoutControlGroup_Root
      Control = OATabs
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited LayoutControlFooter: TdxLayoutControl
    Top = 663
    Width = 1046
    ExplicitTop = 663
    ExplicitWidth = 1046
    inherited LayoutControlFooterGroup_Root: TdxLayoutGroup
      Index = -1
    end
    inherited LayoutControlFooterItem1: TdxLayoutItem
      Index = 0
    end
    inherited LayoutControlFooterItem2: TdxLayoutItem
      Index = 1
    end
  end
  object pnlParticular: TPanel [2]
    Left = 1
    Top = 1
    Width = 200
    Height = 24
    Color = clLime
    ParentBackground = False
    TabOrder = 2
    OnClick = pnlParticularClick
    object Label2: TLabel
      Left = 8
      Top = 4
      Width = 74
      Height = 13
      Caption = '1. Particulars'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Label2Click
    end
  end
  object pnlAddress: TPanel [3]
    Left = 203
    Top = 1
    Width = 200
    Height = 24
    ParentBackground = False
    TabOrder = 3
    OnClick = pnlAddressClick
    object Label5: TLabel
      Left = 4
      Top = 6
      Width = 59
      Height = 13
      Caption = '2. Address'
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
    Left = 405
    Top = 1
    Width = 200
    Height = 24
    ParentBackground = False
    TabOrder = 4
    OnClick = pnlSourceOfFundClick
    object Label8: TLabel
      Left = 4
      Top = 6
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
  object pnlKnowYourCust: TPanel [5]
    Left = 607
    Top = 1
    Width = 200
    Height = 24
    ParentBackground = False
    TabOrder = 5
    OnClick = pnlKnowYourCustClick
    object Label11: TLabel
      Left = 8
      Top = 6
      Width = 130
      Height = 13
      Caption = '4. Know Your Customer'
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
    Left = 988
    Top = 480
  end
end

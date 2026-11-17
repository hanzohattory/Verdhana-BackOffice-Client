inherited frmCommShare: TfrmCommShare
  Caption = 'Commission Share'
  ClientHeight = 581
  ClientWidth = 515
  ExplicitTop = -16
  ExplicitWidth = 521
  ExplicitHeight = 610
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 515
    Height = 491
    ExplicitWidth = 515
    ExplicitHeight = 322
    object cxDBTextEdit1: TcxDBTextEdit [0]
      Left = 68
      Top = 10
      DataBinding.DataField = 'COMM_SHARE_CODE'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit [1]
      Left = 68
      Top = 37
      DataBinding.DataField = 'COMM_SHARE_DESC'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    object cxDBCheckBox1: TcxDBCheckBox [2]
      Left = 22
      Top = 82
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Never Expired'
      DataBinding.DataField = 'EXPIRED_PERIOD1'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxDBSpinEdit1: TcxDBSpinEdit [3]
      Left = 217
      Top = 82
      DataBinding.DataField = 'MONTH_PERIOD1'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 120.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 60
    end
    object cxDBSpinEdit2: TcxDBSpinEdit [4]
      Left = 52
      Top = 109
      DataBinding.DataField = 'SALES_COMM_PERIOD1'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 100.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 4
      Width = 60
    end
    object cxDBSpinEdit3: TcxDBSpinEdit [5]
      Left = 168
      Top = 109
      DataBinding.DataField = 'COMP_COMM_PERIOD1'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 100.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Width = 60
    end
    object cxDBSpinEdit4: TcxDBSpinEdit [6]
      Left = 301
      Top = 109
      DataBinding.DataField = 'EXT_REFERRAL_COMM_PERIOD1'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 100.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 6
      Width = 60
    end
    object cxDBSpinEdit5: TcxDBSpinEdit [7]
      Left = 432
      Top = 109
      DataBinding.DataField = 'INT_REFERRAL_COMM_PERIOD1'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 100.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 7
      Width = 60
    end
    object cxDBCheckBox2: TcxDBCheckBox [8]
      Left = 22
      Top = 166
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Never Expired'
      DataBinding.DataField = 'EXPIRED_PERIOD2'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 121
    end
    object cxDBSpinEdit6: TcxDBSpinEdit [9]
      Left = 217
      Top = 166
      DataBinding.DataField = 'MONTH_PERIOD2'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 120.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 9
      Width = 60
    end
    object cxDBSpinEdit7: TcxDBSpinEdit [10]
      Left = 52
      Top = 193
      DataBinding.DataField = 'SALES_COMM_PERIOD2'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 100.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 10
      Width = 60
    end
    object cxDBSpinEdit8: TcxDBSpinEdit [11]
      Left = 168
      Top = 193
      DataBinding.DataField = 'COMP_COMM_PERIOD2'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 100.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 11
      Width = 60
    end
    object cxDBSpinEdit9: TcxDBSpinEdit [12]
      Left = 301
      Top = 193
      DataBinding.DataField = 'EXT_REFERRAL_COMM_PERIOD2'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 100.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 12
      Width = 60
    end
    object cxDBSpinEdit10: TcxDBSpinEdit [13]
      Left = 432
      Top = 193
      DataBinding.DataField = 'INT_REFERRAL_COMM_PERIOD2'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 100.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 13
      Width = 60
    end
    object cxDBCheckBox3: TcxDBCheckBox [14]
      Left = 22
      Top = 250
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Never Expired'
      DataBinding.DataField = 'EXPIRED_PERIOD3'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 121
    end
    object cxDBSpinEdit11: TcxDBSpinEdit [15]
      Left = 217
      Top = 250
      DataBinding.DataField = 'MONTH_PERIOD3'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 120.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 15
      Width = 60
    end
    object cxDBSpinEdit12: TcxDBSpinEdit [16]
      Left = 52
      Top = 277
      DataBinding.DataField = 'SALES_COMM_PERIOD3'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 100.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 16
      Width = 60
    end
    object cxDBSpinEdit13: TcxDBSpinEdit [17]
      Left = 168
      Top = 277
      DataBinding.DataField = 'COMP_COMM_PERIOD3'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 100.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 17
      Width = 60
    end
    object cxDBSpinEdit14: TcxDBSpinEdit [18]
      Left = 301
      Top = 277
      DataBinding.DataField = 'EXT_REFERRAL_COMM_PERIOD3'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 100.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 18
      Width = 60
    end
    object cxDBSpinEdit15: TcxDBSpinEdit [19]
      Left = 432
      Top = 277
      DataBinding.DataField = 'INT_REFERRAL_COMM_PERIOD3'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 100.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 19
      Width = 60
    end
    object cxDBCheckBox4: TcxDBCheckBox [20]
      Left = 22
      Top = 334
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Never Expired'
      DataBinding.DataField = 'EXPIRED_PERIOD4'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Width = 121
    end
    object cxDBSpinEdit16: TcxDBSpinEdit [21]
      Left = 217
      Top = 334
      DataBinding.DataField = 'MONTH_PERIOD4'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 100.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 21
      Width = 60
    end
    object cxDBSpinEdit17: TcxDBSpinEdit [22]
      Left = 52
      Top = 361
      DataBinding.DataField = 'SALES_COMM_PERIOD4'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 100.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 22
      Width = 60
    end
    object cxDBSpinEdit18: TcxDBSpinEdit [23]
      Left = 168
      Top = 361
      DataBinding.DataField = 'COMP_COMM_PERIOD4'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 100.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 23
      Width = 60
    end
    object cxDBSpinEdit19: TcxDBSpinEdit [24]
      Left = 301
      Top = 361
      DataBinding.DataField = 'EXT_REFERRAL_COMM_PERIOD4'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 100.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 24
      Width = 60
    end
    object cxDBSpinEdit20: TcxDBSpinEdit [25]
      Left = 432
      Top = 361
      DataBinding.DataField = 'INT_REFERRAL_COMM_PERIOD4'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 100.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 25
      Width = 60
    end
    object cxDBCheckBox5: TcxDBCheckBox [26]
      Left = 22
      Top = 418
      RepositoryItem = dmGlobal.chkStandard
      Caption = 'Never Expired'
      DataBinding.DataField = 'EXPIRED_PERIOD5'
      DataBinding.DataSource = dsSubject
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 26
      Width = 121
    end
    object cxDBSpinEdit21: TcxDBSpinEdit [27]
      Left = 217
      Top = 418
      DataBinding.DataField = 'MONTH_PERIOD5'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 100.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 27
      Width = 60
    end
    object cxDBSpinEdit22: TcxDBSpinEdit [28]
      Left = 52
      Top = 445
      DataBinding.DataField = 'SALES_COMM_PERIOD5'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 100.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 28
      Width = 60
    end
    object cxDBSpinEdit23: TcxDBSpinEdit [29]
      Left = 168
      Top = 445
      DataBinding.DataField = 'COMP_COMM_PERIOD5'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 100.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 29
      Width = 60
    end
    object cxDBSpinEdit24: TcxDBSpinEdit [30]
      Left = 301
      Top = 445
      DataBinding.DataField = 'EXT_REFERRAL_COMM_PERIOD5'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 100.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 30
      Width = 60
    end
    object cxDBSpinEdit25: TcxDBSpinEdit [31]
      Left = 432
      Top = 445
      DataBinding.DataField = 'INT_REFERRAL_COMM_PERIOD5'
      DataBinding.DataSource = dsSubject
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 100.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 31
      Width = 60
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Code'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Description'
      Parent = dxLayoutGroup1
      Control = cxDBTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group4
      Control = cxDBCheckBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMonth1: TdxLayoutItem
      CaptionOptions.Text = 'Month Period'
      Parent = dxLayoutControl1Group4
      Control = cxDBSpinEdit1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      CaptionOptions.Text = 'Sales'
      Parent = dxLayoutControl1Group2
      Control = cxDBSpinEdit2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      CaptionOptions.Text = 'Company'
      Parent = dxLayoutControl1Group2
      Control = cxDBSpinEdit3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      CaptionOptions.Text = 'Ext. Referral'
      Parent = dxLayoutControl1Group2
      Control = cxDBSpinEdit4
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      CaptionOptions.Text = 'Int. Referral'
      Parent = dxLayoutControl1Group2
      Control = cxDBSpinEdit5
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcPeriod1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lcPeriod1: TdxLayoutGroup
      CaptionOptions.Text = '1st Period'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcPeriod1
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox2'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group7
      Control = cxDBCheckBox2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMonth2: TdxLayoutItem
      CaptionOptions.Text = 'Month Period'
      Parent = dxLayoutControl1Group7
      Control = cxDBSpinEdit6
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      CaptionOptions.Text = 'Sales'
      Parent = dxLayoutControl1Group1
      Control = cxDBSpinEdit7
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      CaptionOptions.Text = 'Company'
      Parent = dxLayoutControl1Group1
      Control = cxDBSpinEdit8
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      CaptionOptions.Text = 'Ext. Referral'
      Parent = dxLayoutControl1Group1
      Control = cxDBSpinEdit9
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcPeriod2: TdxLayoutGroup
      CaptionOptions.Text = '2nd Period'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcPeriod2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcPeriod2
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      CaptionOptions.Text = 'Int. Referral'
      Parent = dxLayoutControl1Group1
      Control = cxDBSpinEdit10
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      CaptionOptions.Text = 'Never Expired'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group10
      Control = cxDBCheckBox3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMonth3: TdxLayoutItem
      CaptionOptions.Text = 'Month Period'
      Parent = dxLayoutControl1Group10
      Control = cxDBSpinEdit11
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      CaptionOptions.Text = 'Sales'
      Parent = dxLayoutControl1Group9
      Control = cxDBSpinEdit12
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item18: TdxLayoutItem
      CaptionOptions.Text = 'Company'
      Parent = dxLayoutControl1Group9
      Control = cxDBSpinEdit13
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcPeriod3: TdxLayoutGroup
      CaptionOptions.Text = '3rd Period'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Index = 4
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcPeriod3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcPeriod3
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item19: TdxLayoutItem
      CaptionOptions.Text = 'Ext. Referral'
      Parent = dxLayoutControl1Group9
      Control = cxDBSpinEdit14
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item20: TdxLayoutItem
      CaptionOptions.Text = 'Int. Referral'
      Parent = dxLayoutControl1Group9
      Control = cxDBSpinEdit15
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox4'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group6
      Control = cxDBCheckBox4
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMonth4: TdxLayoutItem
      CaptionOptions.Text = 'Month Period'
      Parent = dxLayoutControl1Group6
      Control = cxDBSpinEdit16
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcPeriod4: TdxLayoutGroup
      CaptionOptions.Text = '4th Period'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Index = 5
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      CaptionOptions.Text = 'Sales'
      Parent = dxLayoutControl1Group5
      Control = cxDBSpinEdit17
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcPeriod4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item21: TdxLayoutItem
      CaptionOptions.Text = 'Company'
      Parent = dxLayoutControl1Group5
      Control = cxDBSpinEdit18
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcPeriod4
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item22: TdxLayoutItem
      CaptionOptions.Text = 'Ext. Referral'
      Parent = dxLayoutControl1Group5
      Control = cxDBSpinEdit19
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item23: TdxLayoutItem
      CaptionOptions.Text = 'Int. Referral'
      Parent = dxLayoutControl1Group5
      Control = cxDBSpinEdit20
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item24: TdxLayoutItem
      CaptionOptions.Text = 'cxDBCheckBox5'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group12
      Control = cxDBCheckBox5
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMonth5: TdxLayoutItem
      CaptionOptions.Text = 'Month Period'
      Parent = dxLayoutControl1Group12
      Control = cxDBSpinEdit21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcPeriod5: TdxLayoutGroup
      CaptionOptions.Text = '5th Period'
      Parent = dxLayoutGroup1
      ButtonOptions.Buttons = <>
      Index = 6
    end
    object dxLayoutControl1Item26: TdxLayoutItem
      CaptionOptions.Text = 'Sales'
      Parent = dxLayoutControl1Group11
      Control = cxDBSpinEdit22
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcPeriod5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item27: TdxLayoutItem
      CaptionOptions.Text = 'Company'
      Parent = dxLayoutControl1Group11
      Control = cxDBSpinEdit23
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item28: TdxLayoutItem
      CaptionOptions.Text = 'Ext. Referral'
      Parent = dxLayoutControl1Group11
      Control = cxDBSpinEdit24
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item29: TdxLayoutItem
      CaptionOptions.Text = 'Int. Referral'
      Parent = dxLayoutControl1Group11
      Control = cxDBSpinEdit25
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group11: TdxLayoutGroup
      CaptionOptions.Text = 'Hidden Group'
      Parent = lcPeriod5
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutControl2: TdxLayoutControl
    Top = 512
    Width = 515
    ExplicitTop = 343
    ExplicitWidth = 515
    inherited dbNavLog: TDBNavigator
      Left = 401
      Hints.Strings = ()
      ExplicitLeft = 401
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
    Top = 561
    Width = 515
    ExplicitTop = 392
    ExplicitWidth = 515
  end
  inherited tabEditorData: TTabSet
    Top = 491
    Width = 515
    ExplicitTop = 322
    ExplicitWidth = 515
  end
  inherited dsSubject: TDataSource
    DataSet = cdsCommShare
    Left = 256
    Top = 496
  end
  inherited LookAndFeelStyle: TdxLayoutLookAndFeelList
    Left = 168
    Top = 496
  end
  object cdsCommShare: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'COMM_SHARE_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmMaster_qryCommShare'
    RemoteServer = dmGlobal.dspConnection
    AfterOpen = cdsCommShareAfterOpen
    BeforePost = cdsCommShareBeforePost
    OnNewRecord = cdsCommShareNewRecord
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 336
    Top = 496
    object cdsCommShareCOMM_SHARE_ID: TIntegerField
      FieldName = 'COMM_SHARE_ID'
      Required = True
    end
    object cdsCommShareCOMM_SHARE_CODE: TStringField
      FieldName = 'COMM_SHARE_CODE'
      Required = True
      Size = 10
    end
    object cdsCommShareCOMM_SHARE_DESC: TStringField
      FieldName = 'COMM_SHARE_DESC'
      Required = True
      Size = 100
    end
    object cdsCommShareMONTH_PERIOD1: TIntegerField
      FieldName = 'MONTH_PERIOD1'
      Required = True
      DisplayFormat = '#,##0'
    end
    object cdsCommShareSALES_COMM_PERIOD1: TFloatField
      FieldName = 'SALES_COMM_PERIOD1'
      Required = True
      DisplayFormat = '#,##0'
    end
    object cdsCommShareCOMP_COMM_PERIOD1: TFloatField
      FieldName = 'COMP_COMM_PERIOD1'
      Required = True
      DisplayFormat = '#,##0'
    end
    object cdsCommShareEXT_REFERRAL_COMM_PERIOD1: TFloatField
      FieldName = 'EXT_REFERRAL_COMM_PERIOD1'
      Required = True
      DisplayFormat = '#,##0'
    end
    object cdsCommShareINT_REFERRAL_COMM_PERIOD1: TFloatField
      FieldName = 'INT_REFERRAL_COMM_PERIOD1'
      Required = True
      DisplayFormat = '#,##0'
    end
    object cdsCommShareEXPIRED_PERIOD1: TStringField
      FieldName = 'EXPIRED_PERIOD1'
      Required = True
      OnChange = cdsCommShareEXPIRED_PERIOD1Change
      Size = 1
    end
    object cdsCommShareMONTH_PERIOD2: TIntegerField
      FieldName = 'MONTH_PERIOD2'
      DisplayFormat = '#,##0'
    end
    object cdsCommShareSALES_COMM_PERIOD2: TFloatField
      FieldName = 'SALES_COMM_PERIOD2'
      DisplayFormat = '#,##0'
    end
    object cdsCommShareCOMP_COMM_PERIOD2: TFloatField
      FieldName = 'COMP_COMM_PERIOD2'
      DisplayFormat = '#,##0'
    end
    object cdsCommShareEXT_REFERRAL_COMM_PERIOD2: TFloatField
      FieldName = 'EXT_REFERRAL_COMM_PERIOD2'
      DisplayFormat = '#,##0'
    end
    object cdsCommShareINT_REFERRAL_COMM_PERIOD2: TFloatField
      FieldName = 'INT_REFERRAL_COMM_PERIOD2'
      DisplayFormat = '#,##0'
    end
    object cdsCommShareEXPIRED_PERIOD2: TStringField
      FieldName = 'EXPIRED_PERIOD2'
      OnChange = cdsCommShareEXPIRED_PERIOD2Change
      Size = 1
    end
    object cdsCommShareMONTH_PERIOD3: TIntegerField
      FieldName = 'MONTH_PERIOD3'
      DisplayFormat = '#,##0'
    end
    object cdsCommShareSALES_COMM_PERIOD3: TFloatField
      FieldName = 'SALES_COMM_PERIOD3'
      DisplayFormat = '#,##0'
    end
    object cdsCommShareCOMP_COMM_PERIOD3: TFloatField
      FieldName = 'COMP_COMM_PERIOD3'
      DisplayFormat = '#,##0'
    end
    object cdsCommShareEXT_REFERRAL_COMM_PERIOD3: TFloatField
      FieldName = 'EXT_REFERRAL_COMM_PERIOD3'
      DisplayFormat = '#,##0'
    end
    object cdsCommShareINT_REFERRAL_COMM_PERIOD3: TFloatField
      FieldName = 'INT_REFERRAL_COMM_PERIOD3'
      DisplayFormat = '#,##0'
    end
    object cdsCommShareEXPIRED_PERIOD3: TStringField
      FieldName = 'EXPIRED_PERIOD3'
      OnChange = cdsCommShareEXPIRED_PERIOD3Change
      Size = 1
    end
    object cdsCommShareMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsCommShareMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsCommShareAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsCommShareAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsCommShareUNDER4Y: TIntegerField
      FieldName = 'UNDER4Y'
    end
    object cdsCommShareUNDER4YDA: TDateTimeField
      FieldName = 'UNDER4YDA'
    end
    object cdsCommShareNOTES4Y: TStringField
      FieldName = 'NOTES4Y'
      Size = 100
    end
    object cdsCommShareISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsCommShareID: TLargeintField
      FieldName = 'ID'
    end
    object cdsCommShareMONTH_PERIOD4: TIntegerField
      FieldName = 'MONTH_PERIOD4'
      DisplayFormat = '#,##0'
    end
    object cdsCommShareSALES_COMM_PERIOD4: TFloatField
      FieldName = 'SALES_COMM_PERIOD4'
      DisplayFormat = '#,##0'
    end
    object cdsCommShareCOMP_COMM_PERIOD4: TFloatField
      FieldName = 'COMP_COMM_PERIOD4'
      DisplayFormat = '#,##0'
    end
    object cdsCommShareEXT_REFERRAL_COMM_PERIOD4: TFloatField
      FieldName = 'EXT_REFERRAL_COMM_PERIOD4'
      DisplayFormat = '#,##0'
    end
    object cdsCommShareINT_REFERRAL_COMM_PERIOD4: TFloatField
      FieldName = 'INT_REFERRAL_COMM_PERIOD4'
      DisplayFormat = '#,##0'
    end
    object cdsCommShareEXPIRED_PERIOD4: TStringField
      FieldName = 'EXPIRED_PERIOD4'
      OnChange = cdsCommShareEXPIRED_PERIOD4Change
      Size = 1
    end
    object cdsCommShareMONTH_PERIOD5: TIntegerField
      FieldName = 'MONTH_PERIOD5'
      DisplayFormat = '#,##0'
    end
    object cdsCommShareSALES_COMM_PERIOD5: TFloatField
      FieldName = 'SALES_COMM_PERIOD5'
      DisplayFormat = '#,##0'
    end
    object cdsCommShareCOMP_COMM_PERIOD5: TFloatField
      FieldName = 'COMP_COMM_PERIOD5'
      DisplayFormat = '#,##0'
    end
    object cdsCommShareEXT_REFERRAL_COMM_PERIOD5: TFloatField
      FieldName = 'EXT_REFERRAL_COMM_PERIOD5'
      DisplayFormat = '#,##0'
    end
    object cdsCommShareINT_REFERRAL_COMM_PERIOD5: TFloatField
      FieldName = 'INT_REFERRAL_COMM_PERIOD5'
      DisplayFormat = '#,##0'
    end
    object cdsCommShareEXPIRED_PERIOD5: TStringField
      FieldName = 'EXPIRED_PERIOD5'
      OnChange = cdsCommShareEXPIRED_PERIOD5Change
      Size = 1
    end
  end
end

object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Nayaga iBanking System'
  ClientHeight = 689
  ClientWidth = 1087
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  WindowState = wsMaximized
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = LoadLayout
  TextHeight = 13
  object Site: TLMDDockSite
    Left = 250
    Top = 25
    Width = 837
    Height = 644
    Manager = DockManager
    Align = alClient
    OnGetSiteInfo = SiteGetSiteInfo
    TabOrder = 2
    Layout = {
      3C3F786D6C2076657273696F6E3D22312E30223F3E0D0A3C736974656C697374
      3E0D0A20203C73697465206470693D223936222069643D2253454C465F534954
      45223E0D0A202020203C7A6F6E65206B696E643D2250414E454C222069737370
      6163653D2274727565222F3E0D0A20203C2F736974653E0D0A3C2F736974656C
      6973743E0D0A}
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 669
    Width = 1087
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 100
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 500
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Width = 160
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object nbMain: TdxNavBar
    Left = 0
    Top = 25
    Width = 250
    Height = 644
    Align = alLeft
    ActiveGroupIndex = 2
    TabOrder = 0
    TabStop = True
    View = 17
    ViewStyle.ColorSchemeName = 'Blue'
    OptionsBehavior.Common.AllowSelectLinks = True
    OptionsBehavior.Common.EachGroupHasSelectedLink = True
    OptionsBehavior.NavigationPane.AdjustWidthByPopup = True
    OptionsBehavior.NavigationPane.Collapsible = True
    OptionsImage.LargeImages = ilLarge
    OptionsImage.SmallImages = ilSmall
    OptionsView.NavigationPane.ShowOverflowPanel = False
    OnActiveGroupChanged = nbMainActiveGroupChanged
    object bgAdministratorCompanySetup: TdxNavBarGroup
      Caption = '&Admin && Company Setup Menu'
      LargeImageIndex = 30
      SelectedLinkIndex = -1
      SmallImageIndex = 2
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsGroupControl.ShowControl = True
      OptionsGroupControl.UseControl = True
      Links = <>
    end
    object bgStatic: TdxNavBarGroup
      Caption = 'S&tatic Menu'
      LargeImageIndex = 34
      SelectedLinkIndex = -1
      SmallImageIndex = 2
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsGroupControl.ShowControl = True
      OptionsGroupControl.UseControl = True
      Links = <>
    end
    object bgMainMenu: TdxNavBarGroup
      Caption = '&Main Menu'
      LargeImageIndex = 0
      SelectedLinkIndex = -1
      SmallImageIndex = 2
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsGroupControl.ShowControl = True
      OptionsGroupControl.UseControl = True
      Links = <
        item
          Item = nbMainUp
        end
        item
          Item = nbMainDesktop
        end
        item
          Item = nbMainMyDocuments
        end
        item
          Item = nbMainNetwork
        end>
    end
    object bgReportMenu: TdxNavBarGroup
      Caption = '&Report Menu'
      LargeImageIndex = 4
      SelectedLinkIndex = -1
      SmallImageIndex = 17
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsGroupControl.ShowControl = True
      OptionsGroupControl.UseControl = True
      Links = <>
    end
    object bgFavorites: TdxNavBarGroup
      Caption = '&Favorites'
      LargeImageIndex = 1
      SelectedLinkIndex = -1
      SmallImageIndex = 16
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsGroupControl.ShowControl = True
      OptionsGroupControl.UseControl = True
      Links = <>
    end
    object bgSearch: TdxNavBarGroup
      Caption = '&Search'
      LargeImageIndex = 2
      SelectedLinkIndex = -1
      SmallImageIndex = 9
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      OptionsGroupControl.ShowControl = True
      OptionsGroupControl.UseControl = True
      Links = <>
    end
    object bgOptions: TdxNavBarGroup
      Caption = '&Options'
      LargeImageIndex = 4
      SelectedLinkIndex = -1
      SmallImageIndex = 17
      TopVisibleLinkIndex = 0
      UseSmallImages = False
      Visible = False
      OptionsGroupControl.ShowControl = True
      OptionsGroupControl.UseControl = True
      Links = <
        item
          Item = nbMainLargeIcons
        end
        item
          Item = nbMainSmallIcons
        end
        item
          Item = nbMainList
        end
        item
          Item = nbMainReport
        end>
    end
    object nbMainUp: TdxNavBarItem
      Action = actUp
    end
    object nbMainDesktop: TdxNavBarItem
      Action = actDesktop
    end
    object nbMainMyDocuments: TdxNavBarItem
      Action = actMyDocuments
    end
    object nbMainNetwork: TdxNavBarItem
      Action = actMyNetworkPlaces
    end
    object nbMainBlue: TdxNavBarItem
      Caption = 'Bl&ue'
      LargeImageIndex = 5
      SmallImageIndex = 6
    end
    object nbMainBlack: TdxNavBarItem
      Tag = 1
      Caption = 'Bl&ack'
      LargeImageIndex = 6
      SmallImageIndex = 7
    end
    object nbMainSilver: TdxNavBarItem
      Tag = 2
      Caption = 'Sil&ver'
      LargeImageIndex = 7
      SmallImageIndex = 8
    end
    object nbMainLargeIcons: TdxNavBarItem
      Action = actLargeIcons
    end
    object nbMainSmallIcons: TdxNavBarItem
      Action = actSmallIcons
    end
    object nbMainList: TdxNavBarItem
      Action = actList
    end
    object nbMainReport: TdxNavBarItem
      Action = actReport
    end
    object bgAdministratorCompanySetupControl: TdxNavBarGroupControl
      Left = 1
      Top = 28
      Width = 248
      Height = 423
      TabOrder = 6
      GroupIndex = 0
      OriginalHeight = 41
      object nbAdmin: TdxNavBar
        Left = 0
        Top = 0
        Width = 248
        Height = 423
        Align = alClient
        PopupMenu = pmMainMenu
        ActiveGroupIndex = 0
        TabOrder = 0
        TabStop = True
        View = 18
        ViewStyle.ColorSchemeName = 'Blue'
        OptionsBehavior.Common.DragDropFlags = []
        OptionsImage.LargeImages = ilLarge
        OptionsImage.SmallImages = ilSmall
        OnLinkHotTrack = nbMainMenuLinkHotTrack
        object nbGroupAdministrator: TdxNavBarGroup
          Caption = 'Administrator'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          Links = <
            item
              Item = nbTodoList
            end
            item
              Item = nbEODProcess
            end
            item
              Item = nbReceiveEmail
            end
            item
              Item = nbGlobalParameter
            end
            item
              Item = nbEmailConfig
            end
            item
              Item = nbEmailMonitoring
            end
            item
              Item = nbMyApprovalRequest
            end
            item
              Item = nbApprovalRequest
            end
            item
              Item = nbUserActivity
            end
            item
              Item = nbUserMonitoring
            end
            item
              Item = nbUserConfiguration
            end
            item
              Item = nbStaticDataLog
            end>
        end
        object nbGroupCompany: TdxNavBarGroup
          Caption = 'Company Setup'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbCompanyCustody
            end
            item
              Item = nbBankCompany
            end
            item
              Item = nbCompanyAccount
            end
            item
              Item = nbCompanyMaintenance
            end
            item
              Item = nbCompanyCashBook
            end>
        end
        object nbUserConfiguration: TdxNavBarItem
          Action = dmGlobal.actUserConfiguration
        end
        object nbUserMonitoring: TdxNavBarItem
          Action = dmGlobal.actUserMonitoring
        end
        object nbUserActivity: TdxNavBarItem
          Action = dmGlobal.actUserActivity
        end
        object nbEmailConfig: TdxNavBarItem
          Action = dmGlobal.actEmailConfig
        end
        object nbEmailMonitoring: TdxNavBarItem
          Action = dmGlobal.actEmailMonitoring
        end
        object nbPermissionList: TdxNavBarItem
          Action = dmGlobal.actPermissions
        end
        object nbProcessingEOD: TdxNavBarItem
          Action = dmGlobal.actBatchProcess
        end
        object nbBatchConfig: TdxNavBarItem
          Action = dmGlobal.actBatchConfigSetting
        end
        object nbMyApprovalRequest: TdxNavBarItem
          Action = dmGlobal.actMyApprovalRequestList
        end
        object nbApprovalRequest: TdxNavBarItem
          Action = dmGlobal.actApprovalRequest
        end
        object nbApprovalHistory: TdxNavBarItem
          Action = dmGlobal.actApprovalHistory
        end
        object nbCompanyMaintenance: TdxNavBarItem
          Action = dmGlobal.actCompany
        end
        object nbCompanyAccount: TdxNavBarItem
          Action = dmGlobal.actCompanyAccount
        end
        object nbCompanyCashBook: TdxNavBarItem
          Action = dmGlobal.actCashBook
        end
        object nbStaticDataLog: TdxNavBarItem
          Action = dmGlobal.actStaticDatalog
        end
        object nbGlobalParameter: TdxNavBarItem
          Action = dmGlobal.actGlobalParam
        end
        object nbReceiveEmail: TdxNavBarItem
          Action = dmGlobal.actReceiveEmail
        end
        object nbEODProcess: TdxNavBarItem
          Action = dmGlobal.actEODProcess
        end
        object nbTodoList: TdxNavBarItem
          Action = dmGlobal.actTodoList
        end
        object nbBankCompany: TdxNavBarItem
          Action = dmGlobal.actBankCompany
        end
        object nbCompanyCustody: TdxNavBarItem
          Action = dmGlobal.actCompanyCustody
        end
      end
    end
    object bgStaticControl: TdxNavBarGroupControl
      Left = 1
      Top = 28
      Width = 248
      Height = 423
      PopupMenu = pmMainMenu
      TabOrder = 5
      GroupIndex = 1
      OriginalHeight = 41
      object nbStatic: TdxNavBar
        Left = 0
        Top = 0
        Width = 248
        Height = 423
        Align = alClient
        PopupMenu = pmMainMenu
        ActiveGroupIndex = 0
        TabOrder = 0
        TabStop = True
        View = 18
        ViewStyle.ColorSchemeName = 'Blue'
        OptionsBehavior.Common.DragDropFlags = []
        OptionsImage.LargeImages = ilLarge
        OptionsImage.SmallImages = ilSmall
        OnLinkHotTrack = nbMainMenuLinkHotTrack
        object nbGroupGeneral: TdxNavBarGroup
          Caption = 'General'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbEmailBlastConfig
            end
            item
              Item = nbOccupation
            end
            item
              Item = nbEmployee
            end
            item
              Item = nbProject
            end
            item
              Item = nbCity
            end
            item
              Item = nbCountry
            end
            item
              Item = nbProvince
            end
            item
              Item = nbProductType
            end
            item
              Item = nbProduct
            end
            item
              Item = nbHoliday
            end
            item
              Item = nbBranch
            end>
        end
        object nbGroupAccountInformation: TdxNavBarGroup
          Caption = 'Account Information'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbAccountParamClass
            end
            item
              Item = nbBusinessLine
            end
            item
              Item = nbBussType
            end
            item
              Item = nbCommShare
            end
            item
              Item = nbEvent
            end
            item
              Item = nbSales
            end
            item
              Item = nbSalesAgent
            end
            item
              Item = nbReferralType
            end
            item
              Item = nbReferral
            end>
        end
        object nbStaticMiddleOffice: TdxNavBarGroup
          Caption = 'Middle Office'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbMarket
            end
            item
              Item = nbBoard
            end
            item
              Item = nbChannel
            end
            item
              Item = nbCommission
            end
            item
              Item = nbCommTable
            end
            item
              Item = nbCharge
            end
            item
              Item = nbChargeTable
            end>
        end
        object nbStaticSettlementInterface: TdxNavBarGroup
          Caption = 'Settlement Interface'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbSInvProcessConfig
            end
            item
              Item = nbAccSInvestConf
            end
            item
              Item = nbAccOmgeoConfig
            end
            item
              Item = nbMTITrans
            end
            item
              Item = nbMTIRecord
            end
            item
              Item = nbMTIConfig
            end>
        end
        object nbStaticFinance: TdxNavBarGroup
          Caption = 'Finance'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbVD510Config
            end
            item
              Item = nbBank
            end
            item
              Item = nbInterest
            end
            item
              Item = nbInterestTable
            end>
        end
        object nbStaticSettlementCustody: TdxNavBarGroup
          Caption = 'Settlement && Custody'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbStockMovProgram
            end
            item
              Item = nbCustody
            end
            item
              Item = nbBAE
            end
            item
              Item = nbInstrumentType
            end
            item
              Item = nbInstrument
            end>
        end
        object nbStaticFixedIncome: TdxNavBarGroup
          Caption = 'Fixed Income'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbInstrumentBonds
            end>
        end
        object nbStaticCreditControl: TdxNavBarGroup
          Caption = 'Credit Control'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbCCClass
            end
            item
              Item = nbDOT
            end
            item
              Item = nbAccCreditLimit
            end>
        end
        object nbStaticAccounting: TdxNavBarGroup
          Caption = 'Accounting Interface'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbCashProfitCenter
            end
            item
              Item = nbGLType
            end
            item
              Item = nbGLFiscalYear
            end
            item
              Item = nbPeriod
            end
            item
              Item = nbCurrency
            end
            item
              Item = nbTaxInvoiceNo
            end
            item
              Item = nbGLType
            end>
        end
        object nbStaticRegulatorReportProcess: TdxNavBarGroup
          Caption = 'Regulator Report Process'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          Links = <
            item
              Item = nbVD5Config
            end>
        end
        object nbSurvailance: TdxNavBarGroup
          Caption = 'Survailance'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          UseRestSpace = True
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbSurvailanceSetting
            end>
        end
        object nbCity: TdxNavBarItem
          Action = dmGlobal.actCity
        end
        object nbCountry: TdxNavBarItem
          Action = dmGlobal.actCountry
        end
        object nbProvince: TdxNavBarItem
          Action = dmGlobal.actProvince
        end
        object nbProductType: TdxNavBarItem
          Action = dmGlobal.actProductype
        end
        object nbProduct: TdxNavBarItem
          Action = dmGlobal.actProduct
        end
        object nbHoliday: TdxNavBarItem
          Action = dmGlobal.actHoliday
        end
        object nbBranch: TdxNavBarItem
          Action = dmGlobal.actBranch
        end
        object nbAccountParamClass: TdxNavBarItem
          Action = dmGlobal.actAccountParamClass
        end
        object nbBusinessLine: TdxNavBarItem
          Action = dmGlobal.actBusinessLine
        end
        object nbBussType: TdxNavBarItem
          Action = dmGlobal.actBussType
        end
        object nbCommShare: TdxNavBarItem
          Action = dmGlobal.actCommShare
        end
        object nbEvent: TdxNavBarItem
          Action = dmGlobal.actEvent
        end
        object nbSales: TdxNavBarItem
          Action = dmGlobal.actSales
        end
        object nbSalesAgent: TdxNavBarItem
          Action = dmGlobal.actSalesAgent
        end
        object nbReferralType: TdxNavBarItem
          Action = dmGlobal.actReferralType
        end
        object nbReferral: TdxNavBarItem
          Action = dmGlobal.actReferral
        end
        object nbMarket: TdxNavBarItem
          Action = dmGlobal.actMarket
        end
        object nbBoard: TdxNavBarItem
          Action = dmGlobal.actBoard
        end
        object nbChannel: TdxNavBarItem
          Action = dmGlobal.actChannel
        end
        object nbCommission: TdxNavBarItem
          Action = dmGlobal.actCommission
        end
        object nbCommTable: TdxNavBarItem
          Action = dmGlobal.actCommTable
        end
        object nbCharge: TdxNavBarItem
          Action = dmGlobal.actCharge
        end
        object nbChargeTable: TdxNavBarItem
          Action = dmGlobal.actChargeTable
        end
        object nbAccOmgeoConfig: TdxNavBarItem
          Action = dmGlobal.actAccOmgeoConfig
        end
        object nbMTITrans: TdxNavBarItem
          Action = dmGlobal.actMTITrans
        end
        object nbMTIRecord: TdxNavBarItem
          Action = dmGlobal.actMTIRecord
        end
        object nbMTIConfig: TdxNavBarItem
          Action = dmGlobal.actMTIConfig
        end
        object nbBank: TdxNavBarItem
          Action = dmGlobal.actBank
        end
        object nbInterest: TdxNavBarItem
          Action = dmGlobal.actInterest
        end
        object nbInterestTable: TdxNavBarItem
          Action = dmGlobal.actInterestTable
        end
        object nbCustody: TdxNavBarItem
          Action = dmGlobal.actCustody
        end
        object nbBAE: TdxNavBarItem
          Action = dmGlobal.actBAE
        end
        object nbInstrumentType: TdxNavBarItem
          Action = dmGlobal.actInstrumentType
        end
        object nbInstrument: TdxNavBarItem
          Action = dmGlobal.actInstrument
        end
        object nbInstrumentBonds: TdxNavBarItem
          Action = dmGlobal.actInstrumentBonds
        end
        object nbCCClass: TdxNavBarItem
          Action = dmGlobal.actCCClass
        end
        object nbDOT: TdxNavBarItem
          Action = dmGlobal.actDOT
        end
        object nbAccCreditLimit: TdxNavBarItem
          Action = dmGlobal.actAccCreditLimit
        end
        object nbGLFiscalYear: TdxNavBarItem
          Action = dmGlobal.actGLFiscalYear
        end
        object nbPeriod: TdxNavBarItem
          Action = dmGlobal.actGLPeriod
        end
        object nbCurrency: TdxNavBarItem
          Action = dmGlobal.actCurrency
        end
        object nbTaxInvoiceNo: TdxNavBarItem
          Action = dmGlobal.actTaxInvoice
        end
        object nbGLType: TdxNavBarItem
          Action = dmGlobal.actGLType
        end
        object nbCOA: TdxNavBarItem
          Action = dmGlobal.actCOA
        end
        object nbProject: TdxNavBarItem
          Action = dmGlobal.actStaticProject
        end
        object nbEmployee: TdxNavBarItem
          Action = dmGlobal.actStaticEmployee
        end
        object nbAccSInvestConf: TdxNavBarItem
          Action = dmGlobal.actAccSInvestConf
        end
        object nbSInvProcessConfig: TdxNavBarItem
          Action = dmGlobal.actSInvProcessConfig
        end
        object nbVD510Config: TdxNavBarItem
          Action = dmGlobal.actVD510Config
        end
        object nbOccupation: TdxNavBarItem
          Action = dmGlobal.actOccupation
        end
        object nbEmailBlastConfig: TdxNavBarItem
          Action = dmGlobal.actBlastConfig
        end
        object nbStockMovProgram: TdxNavBarItem
          Action = dmGlobal.actStockMoveProgram
        end
        object nbVD5Config: TdxNavBarItem
          Action = dmGlobal.actVD5Configs
        end
        object nbCashProfitCenter: TdxNavBarItem
          Action = dmGlobal.actCPCenter
        end
        object nbSurvailanceSetting: TdxNavBarItem
          Action = dmGlobal.actSurvailanceSetting
        end
      end
    end
    object bgMainMenuControl: TdxNavBarGroupControl
      Left = 1
      Top = 28
      Width = 248
      Height = 423
      Color = clWindow
      TabOrder = 1
      UseStyle = True
      GroupIndex = 2
      OriginalHeight = 96
      object nbMainMenu: TdxNavBar
        Left = 0
        Top = 0
        Width = 248
        Height = 423
        Align = alClient
        PopupMenu = pmMainMenu
        ActiveGroupIndex = 1
        TabOrder = 0
        TabStop = True
        View = 18
        ViewStyle.ColorSchemeName = 'Blue'
        OptionsBehavior.Common.DragDropFlags = []
        OptionsImage.LargeImages = ilLarge
        OptionsImage.SmallImages = ilSmall
        OnLinkHotTrack = nbMainMenuLinkHotTrack
        object nbGroupStaticData: TdxNavBarGroup
          Caption = 'Static Data'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          Visible = False
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbBroker
            end
            item
              Item = nbDealer
            end
            item
              Item = nbAccLedgerTemplate
            end
            item
              Item = nbAuthPerson
            end
            item
              Item = nbTaxOfficeNo
            end>
        end
        object nbGroupOpeningAccount: TdxNavBarGroup
          Caption = 'Opening Account Flow'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbRDNRequest
            end
            item
              Item = nbKSEIRequest
            end
            item
              Item = nbClientOnBoarding
            end>
        end
        object nbGroupAccountManagement: TdxNavBarGroup
          Caption = 'Account Management'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbKSEIAccRecon
            end
            item
              Item = nbKSEIRDNUpload
            end
            item
              Item = nbEBCustomers
            end
            item
              Item = nbEntityInformation
            end
            item
              Item = nbAccountManagement
            end
            item
              Item = nbAccDorman
            end
            item
              Item = nbOpenDorman
            end
            item
              Item = nbAccSuspend
            end
            item
              Item = nbAccUnSuspend
            end
            item
              Item = nbClosingProcess
            end>
        end
        object nbGroupMiddleOffice: TdxNavBarGroup
          Caption = 'Middle Office'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          Links = <
            item
              Item = nbReksadanaDeposito
            end
            item
              Item = nbVerdhanaOMSInstitution
            end
            item
              Item = nbsInvestAutoSplit
            end
            item
              Item = nbSInvestReconTC
            end
            item
              Item = nbSInvestRecon
            end
            item
              Item = nbTradeTransactionNew
            end
            item
              Item = nbIDXTrade
            end
            item
              Item = nbDealTicket
            end
            item
              Item = nbContracts
            end
            item
              Item = nbImportDTE
            end
            item
              Item = nbReconcileDTE
            end
            item
              Item = nbClosingPrice
            end
            item
              Item = nbFacilitationTrade
            end
            item
              Item = nbWarehouseTrade
            end
            item
              Item = nbCrossTomTrade
            end>
        end
        object nbGroupSettlementInterface: TdxNavBarGroup
          Caption = 'Settlement Interface'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbSInvestMonitoring
            end
            item
              Item = nbOmgeoMonitor
            end>
        end
        object nbGroupFinance: TdxNavBarGroup
          Caption = 'Finance'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbWaveInterestPenalty
            end
            item
              Item = nbInvoiceInterest
            end
            item
              Item = nbDailyInterestOuts
            end
            item
              Item = nbCashPosition
            end
            item
              Item = nbBankRecon
            end
            item
              Item = nbCashSettlement
            end
            item
              Item = nbCashSettlementVoucher
            end
            item
              Item = nbDailyBankInstruction
            end
            item
              Item = nbCashDCNote
            end
            item
              Item = nbCashDeposit
            end
            item
              Item = nbCashWithdraw
            end
            item
              Item = nbCashDepositRDN
            end
            item
              Item = nbCashMovement
            end
            item
              Item = nbFundLedgerJournalEntry
            end>
        end
        object nbGroupSettlementCustody: TdxNavBarGroup
          Caption = 'Settlement and Custody'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbIDXMonthlyTransReport
            end
            item
              Item = nbACTReconcile
            end
            item
              Item = nbBOFISReconcile
            end
            item
              Item = nbAlternateCashSettlement
            end
            item
              Item = nbDailyInstruction
            end
            item
              Item = nbStockPosition
            end
            item
              Item = nbDHKReconcile
            end
            item
              Item = nbStockRec
            end
            item
              Item = nbStockSettlement
            end
            item
              Item = nbStockSettlementVoucher
            end
            item
              Item = nbStockDeposit
            end
            item
              Item = nbStockWithdraw
            end
            item
              Item = nbStockMovement
            end
            item
              Item = nbLendBorrow
            end
            item
              Item = nbSecuritiesJournalEntry
            end>
        end
        object nbGroupCoporateAction: TdxNavBarGroup
          Caption = 'Corporate Action && Tender Offer'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbCoporateActionList
            end
            item
              Item = nbCorpAct
            end
            item
              Item = nbTenderOfferList
            end>
        end
        object nbGroupEIPO: TdxNavBarGroup
          Caption = 'Elektronik Indonesia Public Offering'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbEIPOAllotment
            end
            item
              Item = nbEIPO
            end>
        end
        object nbGroupCreditControl: TdxNavBarGroup
          Caption = 'Credit Control'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbMarginMonitoring
            end
            item
              Item = nbMarginAlert
            end>
        end
        object nbGroupAccounting: TdxNavBarGroup
          Caption = 'Accounting Interface'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbGLInterface
            end
            item
              Item = nbPortfolioRevaluation
            end
            item
              Item = nbDailyExchangeRate
            end
            item
              Item = nbTaxInvoice
            end
            item
              Item = nbStockHaircut
            end>
        end
        object nbRegulatorReportProcess: TdxNavBarGroup
          Caption = 'Regulator Report Process'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbDeposito
            end
            item
              Item = nbDepositoBank
            end
            item
              Item = nbGenerateDailyTransReport
            end
            item
              Item = nbCheckDifferent
            end
            item
              Item = nbGenerateReport
            end
            item
              Item = nbReportNTransform
            end
            item
              Item = nbCreateReport
            end
            item
              Item = nbVD55Monthly
            end
            item
              Item = nbReportMarginMKBD
            end>
        end
        object nbGroupClientManagement: TdxNavBarGroup
          Caption = 'Account Management'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          Visible = False
          Links = <
            item
              Item = nbClientOnBoarding
            end
            item
              Item = nbOpeningAccountHistory
            end
            item
              Item = nbEntityInformation
            end
            item
              Item = nbAccountManagement
            end
            item
              Item = nbExpiredDocList
            end
            item
              Item = nbAccountLedgerType
            end
            item
              Item = nbAccountLedgerClass
            end
            item
              Item = nbTradingLimitClass
            end
            item
              Item = nbClientInquiry
            end
            item
              Item = nbAccLedgerBalPosition
            end
            item
              Item = nbAccSuspend
            end
            item
              Item = nbAccUnSuspend
            end
            item
              Item = nbClosingProcess
            end
            item
              Item = nbAccDorman
            end
            item
              Item = nbOpenDorman
            end
            item
              Item = nbUploadDataFeedback
            end
            item
              Item = nbProcessMonthlyStatement
            end>
        end
        object nbGroupBankPayment: TdxNavBarGroup
          Caption = 'Bank Payment'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          Visible = False
          OptionsExpansion.Expanded = False
          Links = <>
        end
        object nbGroupOmgeo: TdxNavBarGroup
          Caption = 'Omgeo'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          Visible = False
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbOmgeoMonitor
            end>
        end
        object nbGroupOJK: TdxNavBarGroup
          Caption = 'OJK'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbSlikInterface
            end>
        end
        object nbGroupAML: TdxNavBarGroup
          Caption = 'Anti Money Loundry'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbAMLList
            end
            item
              Item = nbAMLSummary
            end
            item
              Item = nbAMLGenerateDataReportMonitoringHis
            end
            item
              Item = nbAMLGenerateDataReportMonitoring
            end
            item
              Item = nbAMLConditionParameter
            end>
        end
        object nbGroupEmaterai: TdxNavBarGroup
          Caption = 'E-Materai'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbEMateraiConfig
            end
            item
              Item = nbEMateraiMonitoring
            end>
        end
        object nbBroker: TdxNavBarItem
          Action = dmGlobal.actBroker
        end
        object nbDealTicket: TdxNavBarItem
          Action = dmGlobal.actDealTickets
        end
        object nbDealer: TdxNavBarItem
          Action = dmGlobal.actDealer
        end
        object nbImportDTE: TdxNavBarItem
          Action = dmGlobal.actImportDTE
        end
        object nbContracts: TdxNavBarItem
          Action = dmGlobal.actContracts
        end
        object nbClientOnBoarding: TdxNavBarItem
          Action = dmGlobal.actOpeningAccounts
        end
        object nbAccountLedgerType: TdxNavBarItem
          Action = dmGlobal.actAccountLedgerType
        end
        object nbAccountLedgerClass: TdxNavBarItem
          Action = dmGlobal.actAccountLedgerClass
        end
        object nbTradingLimitClass: TdxNavBarItem
          Action = dmGlobal.actTradingLimitClass
        end
        object nbClosingPrice: TdxNavBarItem
          Action = dmGlobal.actClosingPrice
        end
        object nbDailyExchangeRate: TdxNavBarItem
          Action = dmGlobal.actDailyExchangeRate
        end
        object nbEntityInformation: TdxNavBarItem
          Action = dmGlobal.actEntityInformation
        end
        object nbAccountManagement: TdxNavBarItem
          Action = dmGlobal.actAccountManagement
        end
        object nbProcessMonthlyStatement: TdxNavBarItem
          Action = dmGlobal.actProcessMonthlyStatement
        end
        object nbOmgeoMonitor: TdxNavBarItem
          Action = dmGlobal.actOmgeoMonitor
        end
        object nbJournalType: TdxNavBarItem
          Action = dmGlobal.actJournalType
        end
        object nbKSEIRequest: TdxNavBarItem
          Action = dmGlobal.actKSEIRequest
        end
        object nbJournalInput: TdxNavBarItem
          Action = dmGlobal.actGLInput
        end
        object nbContactUsage: TdxNavBarItem
          Action = dmGlobal.actContactUsage
        end
        object nbCashSettlement: TdxNavBarItem
          Action = dmGlobal.actCashSettlement
        end
        object nbBankRecon: TdxNavBarItem
          Action = dmGlobal.actRDNBankReconList
        end
        object nbStockSettleInstruction: TdxNavBarItem
          Action = dmGlobal.actStockSettleInstruction
        end
        object nbClientInquiry: TdxNavBarItem
          Action = dmGlobal.actClientInquiry
        end
        object nbCashDeposit: TdxNavBarItem
          Action = dmGlobal.actCashDeposit
        end
        object nbCashWithdraw: TdxNavBarItem
          Action = dmGlobal.actCashWithdraw
        end
        object nbFacilitationTrade: TdxNavBarItem
          Action = dmGlobal.actFacilitationTrade
        end
        object nbWarehouseTrade: TdxNavBarItem
          Action = dmGlobal.actWarehouseTrade
        end
        object nbCrossTomTrade: TdxNavBarItem
          Action = dmGlobal.actCrossTomTrade
        end
        object nbAccLedgerTemplate: TdxNavBarItem
          Action = dmGlobal.actAccLedgerTemplate
        end
        object nbCBESTInstruction: TdxNavBarItem
          Action = dmGlobal.actCBestInstruction
        end
        object nbIPO: TdxNavBarItem
          Action = dmGlobal.actIPO
        end
        object nbBondsDealTicket: TdxNavBarItem
          Action = dmGlobal.actBondsDealTicket
        end
        object nbBondsQuotation: TdxNavBarItem
          Action = dmGlobal.actBondsClosingPrice
        end
        object nbFixedAssetGroup: TdxNavBarItem
          Action = dmGlobal.actFixedAssetGroup
        end
        object nbFixedAsset: TdxNavBarItem
          Action = dmGlobal.actFixedAsset
        end
        object nbDepreciationTable: TdxNavBarItem
          Action = dmGlobal.actDepreciationTable
        end
        object nbAccLedgerBalPosition: TdxNavBarItem
          Action = dmGlobal.actAccLedgerBalPosition
        end
        object nbStockDeposit: TdxNavBarItem
          Action = dmGlobal.actStockDeposit
        end
        object nbStockWithdraw: TdxNavBarItem
          Action = dmGlobal.actStockWithdraw
        end
        object nbReconcileDTE: TdxNavBarItem
          Action = dmGlobal.actReconcileDTE
        end
        object nbSettlementInstruction: TdxNavBarItem
          Action = dmGlobal.actSettlementInstruction
        end
        object nbStockSettlement: TdxNavBarItem
          Action = dmGlobal.actStockSettlement
        end
        object nbCashVoucher: TdxNavBarItem
          Action = dmGlobal.actCashVoucher
        end
        object nbStockVoucher: TdxNavBarItem
          Action = dmGlobal.actStockVoucher
        end
        object nbJournalList: TdxNavBarItem
          Action = dmGlobal.actJournalList
        end
        object nbReceiptList: TdxNavBarItem
          Action = dmGlobal.actReceiptList
        end
        object nbLendBorrow: TdxNavBarItem
          Action = dmGlobal.actLendBorrow
        end
        object nbCorpAct: TdxNavBarItem
          Action = dmGlobal.actCorpAction
        end
        object nbCorpActEnt: TdxNavBarItem
          Action = dmGlobal.actCorpActEnt
        end
        object nbAccSuspend: TdxNavBarItem
          Action = dmGlobal.actAccountSuspend
        end
        object nbClosingProcess: TdxNavBarItem
          Action = dmGlobal.actClosingProcess
        end
        object nbRDNRequest: TdxNavBarItem
          Action = dmGlobal.actRDNRequest
        end
        object nbAccUnSuspend: TdxNavBarItem
          Action = dmGlobal.actAccUnSuspend
        end
        object nbAccDorman: TdxNavBarItem
          Action = dmGlobal.actAccountDorman
        end
        object nbCashMutation: TdxNavBarItem
          Action = dmGlobal.actCashMutation
        end
        object nbGLJournal: TdxNavBarItem
          Action = dmGlobal.actGLJournal
        end
        object nbStockRec: TdxNavBarItem
          Action = dmGlobal.actStockRecImport
        end
        object nbAssignGroupToCOB: TdxNavBarItem
          Action = dmGlobal.actAssignGroupToCOB
        end
        object nbContractBonds: TdxNavBarItem
          Action = dmGlobal.actContractBonds
        end
        object nbKSEIRDNUpload: TdxNavBarItem
          Action = dmGlobal.actKSEIRDNUpload
        end
        object nbMonthlyStatement: TdxNavBarItem
          Action = dmGlobal.actMonthlyStatement
        end
        object nbExpiredDocList: TdxNavBarItem
          Action = dmGlobal.actExpiredDocList
        end
        object nbGenerateContractBonds: TdxNavBarItem
          Action = dmGlobal.actBondsDealTicketContract
        end
        object nbStockDelRev: TdxNavBarItem
          Action = dmGlobal.actStockDelRev
        end
        object nbAuthPerson: TdxNavBarItem
          Action = dmGlobal.actAuthPerson
        end
        object nbJournalMap: TdxNavBarItem
          Action = dmGlobal.actJournalMap
        end
        object nbGLJournalMap: TdxNavBarItem
          Action = dmGlobal.actGLJournalMap
        end
        object nbIDXTrade: TdxNavBarItem
          Action = dmGlobal.actIDXTrade
        end
        object nbIDXOrder: TdxNavBarItem
          Action = dmGlobal.actIDXOrder
        end
        object nbSOP: TdxNavBarItem
          Action = dmGlobal.actSOP
        end
        object nbDHK: TdxNavBarItem
          Action = dmGlobal.actDHK
        end
        object nbOpenDorman: TdxNavBarItem
          Action = dmGlobal.actOpenDorman
        end
        object nbReverseRepo: TdxNavBarItem
          Action = dmGlobal.actReverseRepo
        end
        object nbBankMutation: TdxNavBarItem
          Action = dmGlobal.actBankMutation
        end
        object nbKSEIAccRecon: TdxNavBarItem
          Action = dmGlobal.actKSEIAccRecon
        end
        object nbWHT: TdxNavBarItem
          Action = dmGlobal.actWHT
        end
        object nbBankPaymentList: TdxNavBarItem
          Action = dmGlobal.actBankPaymentList
        end
        object nbBankReceiveList: TdxNavBarItem
          Action = dmGlobal.actBankReceiveList
        end
        object nbDHKCash: TdxNavBarItem
          Action = dmGlobal.actDHKCash
        end
        object nbCashHandOverExer: TdxNavBarItem
          Action = dmGlobal.actHandOverExer
        end
        object nbCashDCNote: TdxNavBarItem
          Action = dmGlobal.actCashDCNotes
        end
        object nbCashLoanApproval: TdxNavBarItem
          Action = dmGlobal.actCorpactCashLoanApproval
        end
        object nbExerciseMonitoring: TdxNavBarItem
          Action = dmGlobal.actExerciseMonitoring
        end
        object nbProvisionPortFolioM2M: TdxNavBarItem
          Action = dmGlobal.actProvisionPortFolioM2M
        end
        object nbAccountInterest: TdxNavBarItem
          Action = dmGlobal.actAccountInterest
        end
        object nbUploadDataFeedback: TdxNavBarItem
          Action = dmGlobal.actUploadDataFeedback
        end
        object nbStockMovement: TdxNavBarItem
          Action = dmGlobal.actStockMovement
        end
        object nbCashMovement: TdxNavBarItem
          Action = dmGlobal.actCashMovement
        end
        object nbStockHaircut: TdxNavBarItem
          Action = dmGlobal.actStockHaircut
        end
        object nbTenderOfferList: TdxNavBarItem
          Action = dmGlobal.actTenderOffer
        end
        object nbTaxOfficeNo: TdxNavBarItem
          Action = dmGlobal.actTaxOffNo
        end
        object nbGLWithFL: TdxNavBarItem
          Action = dmGlobal.actGLWithFL
        end
        object nbCompanyBankRecon: TdxNavBarItem
          Action = dmGlobal.actCompanyBankRecon
        end
        object nbGLWithBankRecon: TdxNavBarItem
          Action = dmGlobal.actGLWithBankRecon
        end
        object nbGLWithSLRecon: TdxNavBarItem
          Action = dmGlobal.actGLWithSLRecon
        end
        object nbCashPositionMovement: TdxNavBarItem
          Action = dmGlobal.actCashPositionMovement
        end
        object nbGLInterface: TdxNavBarItem
          Action = dmGlobal.actGLInterface
        end
        object nbRptGrpType: TdxNavBarItem
          Action = dmGlobal.actRptGrpType
        end
        object nbReportType: TdxNavBarItem
          Action = dmGlobal.actReportType
        end
        object nbCreateContractREPO: TdxNavBarItem
          Action = dmGlobal.actCreteNewREPO
        end
        object nbMarginMonitoring: TdxNavBarItem
          Action = dmGlobal.actMarginMonitoring
        end
        object nbReportDefinition: TdxNavBarItem
          Action = dmGlobal.actReportDefinition
        end
        object nbReportSource: TdxNavBarItem
          Action = dmGlobal.actReportSource
        end
        object nbReportNTransform: TdxNavBarItem
          Action = dmGlobal.actReportNTransform
        end
        object nbGenerateReport: TdxNavBarItem
          Action = dmGlobal.actGenerateReport
        end
        object nbCreateReport: TdxNavBarItem
          Action = dmGlobal.actCreateReport
        end
        object nbCheckDifferent: TdxNavBarItem
          Action = dmGlobal.actCheckDifferent
        end
        object nbSetOff: TdxNavBarItem
          Action = dmGlobal.actSetOff
        end
        object nbCashBalanceAccount: TdxNavBarItem
          Action = dmGlobal.actCashBalanceAccount
        end
        object nbSupportingData: TdxNavBarItem
          Action = dmGlobal.actSupportingData
        end
        object nbReportSupporting: TdxNavBarItem
          Action = dmGlobal.actReportSupportingDataMKBD
        end
        object nbBalanceSheet: TdxNavBarItem
          Action = dmGlobal.actBalanceSheet
        end
        object nbREPOMonitor: TdxNavBarItem
          Action = dmGlobal.actREPOMonitoring
        end
        object nbChangeCollateral: TdxNavBarItem
          Action = dmGlobal.actChangeCollateral
        end
        object nbReportMarginMKBD: TdxNavBarItem
          Action = dmGlobal.actReportMarginMKBD
        end
        object nbFidessaLimit: TdxNavBarItem
          Action = dmGlobal.actFidessaLimit
        end
        object nbCashLedgerBalance: TdxNavBarItem
          Action = dmGlobal.actCashLedgerBalance
        end
        object nbStockLedgerBalance: TdxNavBarItem
          Action = dmGlobal.actStockLedgerBalance
        end
        object nbCashTransaction: TdxNavBarItem
          Action = dmGlobal.actCashTransaction
        end
        object nbCashSettlementVoucher: TdxNavBarItem
          Action = dmGlobal.actCashSettlementVoucher
        end
        object nbREPOSettlement: TdxNavBarItem
          Action = dmGlobal.actREPOSettlement
        end
        object nbRenewalRepoContract: TdxNavBarItem
          Action = dmGlobal.actRenewalRepoContract
        end
        object nbOpeningAccountHistory: TdxNavBarItem
          Action = dmGlobal.actOpeningAccountHistory
        end
        object nbStockSettlementVoucher: TdxNavBarItem
          Action = dmGlobal.actStockSettlementVoucher
        end
        object nbDailyBankInstruction: TdxNavBarItem
          Action = dmGlobal.actDailyBankInstruction
        end
        object nbCashDepositRDN: TdxNavBarItem
          Action = dmGlobal.actCashDepositRDN
        end
        object nbDHKReconcile: TdxNavBarItem
          Action = dmGlobal.actDHKReconcile
        end
        object nbVD55Monthly: TdxNavBarItem
          Action = dmGlobal.actVD55Monthly
        end
        object nbDailyStockSettleVoucher: TdxNavBarItem
          Action = dmGlobal.actDailyStockSettleVoucher
        end
        object nbMarginAlert: TdxNavBarItem
          Action = dmGlobal.actMarginAlert
        end
        object nbVidesaCreditLimit: TdxNavBarItem
          Action = dmGlobal.actVidesaCreditLimit
        end
        object sbSInvestMonitor: TdxNavBarItem
          Action = dmGlobal.actSInvestMonitor
        end
        object nbFundLedgerJournalEntry: TdxNavBarItem
          Action = dmGlobal.actFundLedgerJournalEntry
        end
        object nbSecuritiesJournalEntry: TdxNavBarItem
          Action = dmGlobal.actSInvestReconTC
        end
        object nbCouponPayment: TdxNavBarItem
          Action = dmGlobal.actCouponPayment
        end
        object nbTaxInvoice: TdxNavBarItem
          Action = dmGlobal.actTaxInvoice
        end
        object nbOTCSettlementList: TdxNavBarItem
          Action = dmGlobal.actOTCSettlementList
        end
        object nbSInvGenerateFile: TdxNavBarItem
          Action = dmGlobal.actSInvGenerateFile
        end
        object nbSInvTradeAlloc: TdxNavBarItem
          Action = dmGlobal.actSInvTradeAlloc
        end
        object nbPortfolioRevaluation: TdxNavBarItem
          Action = dmGlobal.actPortfolioRevaluationList
        end
        object nbGenerateDailyTransReport: TdxNavBarItem
          Action = dmGlobal.actGenerateDailyTransReport
        end
        object nbNextOfYearProcess: TdxNavBarItem
          Action = dmGlobal.actNextOfYearProcess
        end
        object nbEBCustomers: TdxNavBarItem
          Action = dmGlobal.actEBlastCustList
        end
        object nbStockPosition: TdxNavBarItem
          Action = dmGlobal.actStockPosition
        end
        object nbCashPosition: TdxNavBarItem
          Action = dmGlobal.actCashPosition
        end
        object nbCoporateActionList: TdxNavBarItem
          Action = dmGlobal.actCorpactExerciseLIst
        end
        object nbCorporateActonEntitlementList: TdxNavBarItem
          Action = dmGlobal.actCorpactEntitlementList
        end
        object nbBOFISReconcile: TdxNavBarItem
          Action = dmGlobal.actBOFISRecon
        end
        object nbEIPO: TdxNavBarItem
          Action = dmGlobal.actEIPO
        end
        object nbEIPOAllotment: TdxNavBarItem
          Action = dmGlobal.actEIPOAllotment
        end
        object nbTradeTransactionNew: TdxNavBarItem
          Action = dmGlobal.actReportTradeTransactionNew
        end
        object nbJournalBankList: TdxNavBarItem
          Action = dmGlobal.actJournalBankList
        end
        object nbSInvestRecon: TdxNavBarItem
          Action = dmGlobal.actSInvestRecon
        end
        object nbSInvestReconTC: TdxNavBarItem
          Action = dmGlobal.actSInvestReconTC
        end
        object nbSInvestMonitoring: TdxNavBarItem
          Action = dmGlobal.actSInvestMonitoring
        end
        object nbSlikInterface: TdxNavBarItem
          Action = dmGlobal.actSlikInterface
        end
        object nbsInvestAutoSplit: TdxNavBarItem
          Action = dmGlobal.actSInvestAutoSplit
        end
        object nbDailyInterestOuts: TdxNavBarItem
          Action = dmGlobal.actDailyInterestOuts
        end
        object nbInvoiceInterest: TdxNavBarItem
          Action = dmGlobal.actInvoiceInterest
        end
        object nbWaveInterestPenalty: TdxNavBarItem
          Action = dmGlobal.actWaveInterestPenalty
        end
        object nbDailyInstruction: TdxNavBarItem
          Action = dmGlobal.actDailyInstructionList
        end
        object nbAlternateCashSettlement: TdxNavBarItem
          Action = dmGlobal.actAlternateCashSettlement
        end
        object nbAMLConditionParameter: TdxNavBarItem
          Action = dmGlobal.actAMLConditionParameter
        end
        object nbVerdhanaOMSInstitution: TdxNavBarItem
          Action = dmGlobal.actVerdhanaOMSInstitution
        end
        object nbAMLGenerateDataReportMonitoring: TdxNavBarItem
          Action = dmGlobal.actAMLGenerateReportMonitoring
        end
        object nbAMLGenerateDataReportMonitoringHis: TdxNavBarItem
          Action = dmGlobal.actAMLGenerateReportMonitoringHis
        end
        object nbAMLSummary: TdxNavBarItem
          Action = dmGlobal.actAmlSummary
        end
        object nbAMLList: TdxNavBarItem
          Action = dmGlobal.actAMLList
        end
        object nbEMateraiMonitoring: TdxNavBarItem
          Action = dmGlobal.actEmateraiMonitortingList
        end
        object nbEMateraiConfig: TdxNavBarItem
          Action = dmGlobal.actEMateraiConfig
        end
        object nbDepositoBank: TdxNavBarItem
          Action = dmGlobal.actDepositoBank
        end
        object nbACTReconcile: TdxNavBarItem
          Action = dmGlobal.actACTReconcile
        end
        object nbDeposito: TdxNavBarItem
          Action = dmGlobal.actDeposito
        end
        object nbIDXMonthlyTransReport: TdxNavBarItem
          Action = dmGlobal.actIDXMonthlyTransReport
        end
        object nbReksadanaDeposito: TdxNavBarItem
          Action = dmGlobal.actReksadanaDeposito
        end
      end
    end
    object bgReportMenuControl: TdxNavBarGroupControl
      Left = 1
      Top = 28
      Width = 248
      Height = 423
      Caption = 'bgReportMenuControl'
      TabOrder = 4
      GroupIndex = 3
      OriginalHeight = 41
      object nbReportMenu: TdxNavBar
        Left = 0
        Top = 0
        Width = 248
        Height = 423
        Align = alClient
        PopupMenu = pmMainMenu
        ActiveGroupIndex = 1
        TabOrder = 0
        TabStop = True
        View = 18
        ViewStyle.ColorSchemeName = 'Blue'
        OptionsBehavior.Common.DragDropFlags = []
        OptionsImage.LargeImages = ilLarge
        OptionsImage.SmallImages = ilSmall
        OnLinkHotTrack = nbMainMenuLinkHotTrack
        object nbReportAdministrator: TdxNavBarGroup
          Caption = 'Administrator'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbReportAuditLog
            end
            item
              Item = nbReportApprovalHistory
            end>
        end
        object nbReportGroupAccountInformation: TdxNavBarGroup
          Caption = 'Account Information'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbReportIdxClearingResult
            end
            item
              Item = nbEmailBlast
            end
            item
              Item = nbReportAccountFundStatement
            end
            item
              Item = nbReportCustomersData
            end
            item
              Item = nbReportClientActivityOLNonOL
            end
            item
              Item = nbReportClientActivityInsReg
            end
            item
              Item = nbReportAccStatList
            end
            item
              Item = nbReportOpeningAccountByDate
            end
            item
              Item = nbReportEntityList
            end
            item
              Item = nbReportClientInquiry
            end
            item
              Item = nbReportProcessMonthlyStatement
            end
            item
              Item = nbReportStatementOfAccount
            end
            item
              Item = nbReportOpeningAccountHistory
            end
            item
              Item = nbReportClientPortofolio
            end
            item
              Item = nbReportExpiredDocumentsList
            end>
        end
        object nbReportGroupMiddleOffice: TdxNavBarGroup
          Caption = 'Middle Office'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbReportTradeConfirmation
            end
            item
              Item = nbReportTradeTransaction
            end
            item
              Item = nbDailyMarketTransaction
            end
            item
              Item = nbReportClientTradeSummary
            end
            item
              Item = nbReportSalesActivity
            end
            item
              Item = nbReportClientTradeActivitiesByPurchaseSales
            end>
        end
        object bnReportGroupFinance: TdxNavBarGroup
          Caption = 'Finance'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbReportDailyIntetestActivity
            end
            item
              Item = nbReportCustomerAging
            end
            item
              Item = nbAgingARAP
            end
            item
              Item = nbReportCashDepositList
            end
            item
              Item = nbReportCashWithdrawList
            end
            item
              Item = nbReportDailyPaymentReceive
            end
            item
              Item = nbReportFundLedgerBalance
            end
            item
              Item = nbReportFundLedgerJournal
            end
            item
              Item = nbReportDailyCashProjection
            end>
        end
        object nbReportGroupSettlementCustody: TdxNavBarGroup
          Caption = 'Settlement && Custody'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbReportIdxClearingResult
            end
            item
              Item = nbReportStockShortSell
            end
            item
              Item = nbReportTrialBalanceStock
            end
            item
              Item = nbReportAccountPosByStock
            end
            item
              Item = nbReportStockPosByAccount
            end
            item
              Item = nbMonthlyTransaction
            end
            item
              Item = nbReportSecuritiesLedgerBalance
            end
            item
              Item = nbReportClientStockActivity
            end
            item
              Item = nbReportDailyTransactionReport
            end
            item
              Item = nbPortofolioDetailReport
            end
            item
              Item = nbReportStockDepositList
            end
            item
              Item = nbReportStockWithdrawList
            end
            item
              Item = nbReportStockMovementList
            end
            item
              Item = nbReportStockPortfolio
            end
            item
              Item = nbReportStockOutstanding
            end
            item
              Item = nbReportSecuritiesLedgerJournal
            end
            item
              Item = nbReportProductList
            end
            item
              Item = nbReportShareBalance
            end
            item
              Item = nbReportSafeKeepingFeeStatement
            end
            item
              Item = nbStockAging
            end>
        end
        object nbReportGroupCorpact: TdxNavBarGroup
          Caption = 'Corporate Action, IPO && Tender Offer'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbReportCorpactAnnouncementList
            end
            item
              Item = nbReportCorpactEntitlementList
            end
            item
              Item = nbReportCorpactClientConfirmation
            end
            item
              Item = nbReportIPOAllocationList
            end
            item
              Item = nbReportIPOClientConfirmation
            end
            item
              Item = nbReportTenderOfferOrderList
            end
            item
              Item = nbReportTenderOfferClientConfirmation
            end>
        end
        object nbReportGroupCreditControl: TdxNavBarGroup
          Caption = 'Credit Control'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbReportForceSelling
            end
            item
              Item = nbReportAgingMonitoring
            end
            item
              Item = nbReportClientCashOutstanding
            end
            item
              Item = nbReportExceptionalReport
            end
            item
              Item = nbReportMarginAccountSummary
            end
            item
              Item = nbReportMarketCapitalization
            end
            item
              Item = nbReportTradeSummaryActivity
            end
            item
              Item = nbReportTop15SingleCounterExposure
            end
            item
              Item = nbReportTradeDetailOutstanding
            end
            item
              Item = nbReportDetailShareCollateral
            end
            item
              Item = nbReportLoanMarginRankClient
            end
            item
              Item = nbReportOutstandingCashRankClient
            end
            item
              Item = nbReportTotalShareValue
            end
            item
              Item = nbReportBlacklistPeopleOrganization
            end
            item
              Item = nbReportShareBalance
            end>
        end
        object nbReportGroupAccounting: TdxNavBarGroup
          Caption = 'Accounting Interface'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          Links = <
            item
              Item = nbReportARAP
            end
            item
              Item = nbReportMonthlyTaxSummary
            end
            item
              Item = nbReportMonthlyStamp
            end
            item
              Item = nbSummaryMarketTradeActivity
            end
            item
              Item = nbReportMonthlyTax
            end
            item
              Item = nbReportMonthlyCommision
            end
            item
              Item = nbReportMonthlyLTAB
            end
            item
              Item = nbReportMonthlyWithholdingTax
            end
            item
              Item = nbReportARAPNeting
            end>
        end
        object nbReportRegulatorReport: TdxNavBarGroup
          Caption = 'Regulator Report'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbReportLaporanKegiatanPerantaraPedagangEfek
            end
            item
              Item = nbReportTotalMonthlyTransaction
            end
            item
              Item = nbreportDailyVD55Report
            end
            item
              Item = nbReportMonthlyVD55Report
            end
            item
              Item = nbReportDailyVD55Support
            end
            item
              Item = nbReportMonthlyVD55Support
            end
            item
              Item = nbReportEODSupport
            end
            item
              Item = nbReportMKBDCompare2Date
            end
            item
              Item = nbReportVD51_2
            end
            item
              Item = nbReportVD57Qty
            end>
        end
        object nbReportSurveilance: TdxNavBarGroup
          Caption = 'Surveilance'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.Expanded = False
          Links = <
            item
              Item = nbReportMarkingTheClose
            end
            item
              Item = nbReportWashSale
            end
            item
              Item = nbReportUnusualMarketVol
            end
            item
              Item = nbReportFrontRunning
            end
            item
              Item = nbReportFakeDemand
            end>
        end
        object nbRptClientActivity: TdxNavBarItem
          Action = dmGlobal.actReportClientActivity
        end
        object nbAgingARAP: TdxNavBarItem
          Action = dmGlobal.actAgingARAP
        end
        object nbARAPReport: TdxNavBarItem
          Action = dmGlobal.actARAPReport
        end
        object nbARAPSummary: TdxNavBarItem
          Action = dmGlobal.actReportARAPSummary
        end
        object nbBalanceSheetReport: TdxNavBarItem
          Action = dmGlobal.actBalanceSheetReport
        end
        object nbCashFlow: TdxNavBarItem
          Action = dmGlobal.actCashFlow
        end
        object nbCashProjection: TdxNavBarItem
          Action = dmGlobal.actCashProjection
        end
        object nbConsolidatedTrialBalance: TdxNavBarItem
          Action = dmGlobal.actConsolidatedTrialBalance
        end
        object nbGLActivity: TdxNavBarItem
          Action = dmGlobal.actGLActivity
        end
        object nbGridReportDesign: TdxNavBarItem
          Action = dmGlobal.actGridReportDesigner
        end
        object nbLetterOfConfirm: TdxNavBarItem
          Action = dmGlobal.actLetterOfConfirm
        end
        object nbProfitLost: TdxNavBarItem
          Action = dmGlobal.actReportProfitLossStatement
        end
        object nbReportAccStatList: TdxNavBarItem
          Action = dmGlobal.actAccStatList
        end
        object nbReportAgingMonitoring: TdxNavBarItem
          Action = dmGlobal.actReportAgingMonitoring
        end
        object nbReportCashDepositList: TdxNavBarItem
          Action = dmGlobal.actReportCashDepositList
        end
        object nbReportCashVoucher: TdxNavBarItem
          Action = dmGlobal.actReportCashVoucher
        end
        object nbReportCashWithdrawList: TdxNavBarItem
          Action = dmGlobal.actReportCashWitdrawList
        end
        object nbReportClientAccountBalanceSummary: TdxNavBarItem
          Action = dmGlobal.actReportClientAccountBalanceSummary
        end
        object nbReportClientActivity: TdxNavBarItem
          Action = dmGlobal.actReportClientActivity
        end
        object nbReportClientCommission: TdxNavBarItem
          Action = dmGlobal.actReportClientCommission
        end
        object nbReportClientCommissionByRange: TdxNavBarItem
          Action = dmGlobal.actReportClientCommissionByRange
        end
        object nbReportClientPortofolio: TdxNavBarItem
          Action = dmGlobal.actReportClientPortofolio
        end
        object nbReportContractBondTrade: TdxNavBarItem
          Action = dmGlobal.actReportContractBondTrade
        end
        object nbReportDailyTradeByAgent: TdxNavBarItem
          Action = dmGlobal.actReportDailyTradeByAgent
        end
        object nbReportDailyTradeByClientOrClientType: TdxNavBarItem
          Action = dmGlobal.actReportDailyTradeByClientOrClientType
        end
        object nbReportDetailedPortofolioClient: TdxNavBarItem
          Action = dmGlobal.actReportDetailedPortofolioClient
        end
        object nbReportDetailOutstandingCashClient: TdxNavBarItem
          Action = dmGlobal.actReportDetailOutstandingCashClient
        end
        object nbReportDetailOutstandingMarginClient: TdxNavBarItem
          Action = dmGlobal.actReportDetailOutstandingMarginClient
        end
        object nbReportDormantClientList: TdxNavBarItem
          Action = dmGlobal.actReportDormantClientList
        end
        object nbReportExceptionalReport: TdxNavBarItem
          Action = dmGlobal.actReportExceptionalReport
        end
        object nbReportForceSelling: TdxNavBarItem
          Action = dmGlobal.actReportForceSelling
        end
        object nbReportFundLedgerBalance: TdxNavBarItem
          Action = dmGlobal.actReportFundLedgerBalance
        end
        object nbReportFundLedgerJournal: TdxNavBarItem
          Action = dmGlobal.actReportFundLedgerJournal
        end
        object nbReportList: TdxNavBarItem
          Action = dmGlobal.actReportList
        end
        object nbReportListStockEfek: TdxNavBarItem
          Action = dmGlobal.actReportListStockEfek
        end
        object nbReportMarginAccountSummary: TdxNavBarItem
          Action = dmGlobal.actReportMarginAccountSummary
        end
        object nbReportMarginCashAccountBalance: TdxNavBarItem
          Action = dmGlobal.actReportMarginCashAccountBalance
        end
        object nbReportMarginYU: TdxNavBarItem
          Action = dmGlobal.actReportMarginYU
        end
        object nbReportMarketCapitalization: TdxNavBarItem
          Action = dmGlobal.actReportMarketCapitalization
        end
        object nbReportProductList: TdxNavBarItem
          Action = dmGlobal.actReportProductList
        end
        object nbReportSalesActivity: TdxNavBarItem
          Action = dmGlobal.actReportSalesActivity
        end
        object nbReportSalesCommission: TdxNavBarItem
          Action = dmGlobal.actReportSalesCommission
        end
        object nbReportSecuritiesLedgerBalance: TdxNavBarItem
          Action = dmGlobal.actReportSecuritiesLedgerBalance
        end
        object nbReportSecuritiesLedgerJournal: TdxNavBarItem
          Action = dmGlobal.actReportSecuritiesLedgerJournal
        end
        object nbReportStatementOfAccount: TdxNavBarItem
          Action = dmGlobal.actReportStatementOfAccount
        end
        object nbReportStockActProfitLoss: TdxNavBarItem
          Action = dmGlobal.actReportStockActProfitLoss
        end
        object nbReportStockPortfolio: TdxNavBarItem
          Action = dmGlobal.actReportStockPortfolio
        end
        object nbReportStockPosByClientAcc: TdxNavBarItem
          Action = dmGlobal.actReportStockPosByClientAcc
        end
        object nbReportStockPosBySalesAcc: TdxNavBarItem
          Action = dmGlobal.actReportStockPosBySalesAcc
        end
        object nbReportStockPosBySalesStock: TdxNavBarItem
          Action = dmGlobal.actReportStockPosBySalesStock
        end
        object nbReportTop15SingleStockCashClient: TdxNavBarItem
          Action = dmGlobal.actReportTop15SingleStockCashClient
        end
        object nbReportTotalDetailCollateral: TdxNavBarItem
          Action = dmGlobal.actReportTotalDetailShareCollateral
        end
        object nbReportTotalDetailOutstandingContraClient: TdxNavBarItem
          Action = dmGlobal.actReportTotalDetailOutstandingContraClient
        end
        object nbReportTotalDetailOutstandingShareValue: TdxNavBarItem
          Action = dmGlobal.actReportTotalDetailOutstandingShareValue
        end
        object nbReportTotalLoanMarginClient: TdxNavBarItem
          Action = dmGlobal.actReportTotalLoanMarginClient
        end
        object nbReportTotalOutstandingCashClient: TdxNavBarItem
          Action = dmGlobal.actReportTotalOutstandingCashClient
        end
        object nbReportTotalShareValue: TdxNavBarItem
          Action = dmGlobal.actReportTotalShareValue
        end
        object nbReportTrialBalance: TdxNavBarItem
          Action = dmGlobal.actReportTrialBalance
        end
        object nbReportVoucherSummary: TdxNavBarItem
          Action = dmGlobal.actVoucherSummary
        end
        object nbStockAging: TdxNavBarItem
          Action = dmGlobal.actStockAging
        end
        object nbReportSummaryActivityByAgentPerClient: TdxNavBarItem
          Action = dmGlobal.actReportSummaryActivityByAgentPerClient
        end
        object nbTrialBalance: TdxNavBarItem
          Action = dmGlobal.actTrialBalanceByCcy
        end
        object nbReportCashAccountStatement: TdxNavBarItem
          Action = dmGlobal.actReportCashAccountStatement
        end
        object nbReportStatementofAccountCSO: TdxNavBarItem
          Action = dmGlobal.actReportStatementofAccountCSO
        end
        object nbReportInvestorOpeningAccount: TdxNavBarItem
          Action = dmGlobal.actReportInvestorOpeningAccount
        end
        object nbReportNotificaitonToClient: TdxNavBarItem
          Action = dmGlobal.actReportNotificationToClient
        end
        object nbReportAuditLog: TdxNavBarItem
          Action = dmGlobal.actReportAuditLog
        end
        object nbLTHReport: TdxNavBarItem
          Action = dmGlobal.actLTHReport
        end
        object nbPortofolioDetailReport: TdxNavBarItem
          Action = dmGlobal.actPortofolioDetailReport
        end
        object nbReportCombinedAccountReceivablePayabl: TdxNavBarItem
          Caption = 'Aging Report'
        end
        object nbReportMarginAccountSummaryByAgent: TdxNavBarItem
          Caption = 'Margin Account Summary By Agent'
        end
        object nbReportMarginAccountSummaryByClient: TdxNavBarItem
          Caption = 'Margin Account Summary By Client'
        end
        object nbReportMarginAccountSummaryUSD: TdxNavBarItem
          Action = dmGlobal.actReportMarginAccountSummaryUSD
        end
        object nbReportExposureReport: TdxNavBarItem
          Caption = 'Exposure Report'
        end
        object nbReportSingleCounterMargin: TdxNavBarItem
          Caption = 'Single Counter Exposure'
        end
        object nbReportOutstandingRepoDueForSettlement: TdxNavBarItem
          Caption = 'Outstanding Repo Report'
        end
        object nbReportRegularAccountSummary: TdxNavBarItem
          Caption = 'Regular Account Summary (By Client)'
        end
        object nbReportForecastCombinedACReceivablePayable: TdxNavBarItem
          Caption = 'Over Due Report'
        end
        object nbReportOutstandingTrxSettlementMovement: TdxNavBarItem
          Caption = 'Outstanding Transaction With Settlement Movement'
        end
        object nbReportMarginTPlusFinancingCreditRiskReport: TdxNavBarItem
          Caption = 'TPlus Margin Financing Credit Risk'
        end
        object nbReportClientActivityAndSharesMovement: TdxNavBarItem
          Caption = 'Client Activity And Shares Movement'
        end
        object nbReportMarginProduct: TdxNavBarItem
          Caption = 'Margin Stock List Report'
        end
        object nbReportListOfNewClient: TdxNavBarItem
          Caption = 'List Of New Client'
        end
        object nbReportRegularSummaryCrossBorderTrades: TdxNavBarItem
          Caption = 'Client Daily Position Monitoring i*trade'
        end
        object nbReportShareBalanceByAgent: TdxNavBarItem
          Action = dmGlobal.actReportShareBalancesByAgent
        end
        object nbReportShareBalance: TdxNavBarItem
          Action = dmGlobal.actReportShareBalancesByClient
        end
        object nbReportShareBalancesByProduk: TdxNavBarItem
          Action = dmGlobal.actReportShareBalancesByProduct
        end
        object nbReportShareBalanceWithShareValue: TdxNavBarItem
          Action = dmGlobal.actReportShareBalanceWithShareValue
        end
        object nbReportReverseREPO: TdxNavBarItem
          Caption = 'Laporan REPO / Reverse REPO'
        end
        object nbReportCashStatement: TdxNavBarItem
          Action = dmGlobal.actReportCashStatement
        end
        object nbReportBukuPembantuEfekAMT: TdxNavBarItem
          Action = dmGlobal.actReportBukuPembantuEfekAMT
        end
        object nbReportCBestAndClientCustodyReconciliation: TdxNavBarItem
          Action = dmGlobal.actReportCBestAndClientCustodyReconciliation
        end
        object nbReportCBestDailyTradeList: TdxNavBarItem
          Action = dmGlobal.actReportCBestDailyTradeList
        end
        object nbReportDailyCommision: TdxNavBarItem
          Action = dmGlobal.actReportDailyCommision
        end
        object nbReportDailyReportOddLotPosition: TdxNavBarItem
          Action = dmGlobal.actReportDailyReportOddLotPosition
        end
        object nbReportDailyTransactionReport: TdxNavBarItem
          Action = dmGlobal.actReportDailyTransactionReport
        end
        object nbReportLaporanKegiatanPerantaraPedagangEfek: TdxNavBarItem
          Action = dmGlobal.actReportLaporanKegiatanPerantaraPedagangEfek
        end
        object nbReportMonthlySafeCustodyStatementOfAccount: TdxNavBarItem
          Action = dmGlobal.actReportMonthlySafeCustodyStatementOfAccount
        end
        object nbReportMovementSafeCustody: TdxNavBarItem
          Action = dmGlobal.actReportMovementSafeCustody
        end
        object nbReportOutstandingTradesDueForDelivery: TdxNavBarItem
          Action = dmGlobal.actReportOutstandingTradesDueForDelivery
        end
        object nbReportPendukungDailyTransaction: TdxNavBarItem
          Action = dmGlobal.actReportPendukungDailyTransaction
        end
        object nbReportPortfolioAndCashAccountStatement: TdxNavBarItem
          Action = dmGlobal.actReportPortfolioAndCashAccountStatement
        end
        object nbReportReconPortofolioReportUntukIDX: TdxNavBarItem
          Action = dmGlobal.actReportReconPortofolioReportUntukIDX
        end
        object nbReportRekapitulasiTransaksiSaham: TdxNavBarItem
          Action = dmGlobal.actReportRekapitulasiTransaksiSaham
        end
        object nbReportSafeKeepingFeeStatement: TdxNavBarItem
          Action = dmGlobal.actReportSafeKeepingFeeStatement
        end
        object nbReportScheduleCorporateAction: TdxNavBarItem
          Action = dmGlobal.actReportScheduleCorporateAction
        end
        object nbReportSettlementInstructionForBondTransaction: TdxNavBarItem
          Action = dmGlobal.actReportSettlementInstructionForBondTransaction
        end
        object nbReportStockHoldingByClient: TdxNavBarItem
          Action = dmGlobal.actReportStockHoldingByClient
        end
        object nbReportStockHoldingByAgent: TdxNavBarItem
          Action = dmGlobal.actReportStockHoldingByAgent
        end
        object nbReportStockHoldingByStock: TdxNavBarItem
          Action = dmGlobal.actReportStockHoldingByStock
        end
        object nbReportTradeListWithCustodianBank: TdxNavBarItem
          Action = dmGlobal.actReportTradeListWithCustodianBank
        end
        object nbReportBOFISDHKMatch: TdxNavBarItem
          Action = dmGlobal.actReportBOFISDHKMatch
        end
        object nbReportCashDividendEntitlementListing: TdxNavBarItem
          Caption = 'Cash Dividend Entitlement Listing'
        end
        object nbReportCashDividendPayment: TdxNavBarItem
          Caption = 'Cash Dividend Payment'
        end
        object nbReportCombinedAccountReceivablePayable: TdxNavBarItem
          Caption = 'Combined Account Receivable Payable'
        end
        object nbReportInterestPrincipalizedForCashAccount: TdxNavBarItem
          Action = dmGlobal.actReportInterestPrincipalizedForCashAccount
        end
        object nbReportMonthlyLTAB: TdxNavBarItem
          Action = dmGlobal.actReportMonthlyLTAB
        end
        object nbReportOutstandingTransactionDueForSettlement: TdxNavBarItem
          Action = dmGlobal.actReportOutstandingTransactionDueForSettlement
        end
        object nbReportOutstandingTradesDueForSettlement: TdxNavBarItem
          Action = dmGlobal.actReportOutstandingTradesDueForSettlement
        end
        object nbReportOutstandingTransactionWithSettlementMovement: TdxNavBarItem
          Action = dmGlobal.actReportOutstandingTransactionWithSettlementMovement
        end
        object nbReportRecommendedTransactionsForSetoffRollOver: TdxNavBarItem
          Caption = 'Recommended Transactions For Setoff RollOver'
        end
        object nbReportRepoDailyTrade: TdxNavBarItem
          Action = dmGlobal.actReportRepoDailyTrade
        end
        object nbReportCorpactEntitlementListing: TdxNavBarItem
          Action = dmGlobal.actReportCorpactEntitlementListing
        end
        object nbReportClientTradeActivitiesByPurchaseSales: TdxNavBarItem
          Action = dmGlobal.actReportClientTradeActivitiesByPurchaseSales
        end
        object nbReportAgentRanking: TdxNavBarItem
          Action = dmGlobal.actReportAgentRanking
        end
        object nbReportDailyTradeDetail: TdxNavBarItem
          Action = dmGlobal.actReportDailyTradeDetail
        end
        object nbReportValueAddedTax: TdxNavBarItem
          Action = dmGlobal.actReportValueAddedTax
        end
        object nbDailyMarketTransaction: TdxNavBarItem
          Action = dmGlobal.actDailyMarketTransaction
        end
        object nbReportDailyCommisionGrid: TdxNavBarItem
          Action = dmGlobal.actReportDailyCommisionGrid
        end
        object nbReportWashSale: TdxNavBarItem
          Action = dmGlobal.actReportWashSale
        end
        object nbReportCreditLimitViolation: TdxNavBarItem
          Action = dmGlobal.actReportCreditLimitViolation
        end
        object nbReportValueAddedTaxGrid: TdxNavBarItem
          Action = dmGlobal.actReportValueAddedTaxGrid
        end
        object nbReportClientCommisionList: TdxNavBarItem
          Action = dmGlobal.actReportClientCommisionList
        end
        object nbReportTransactionRecapitulation: TdxNavBarItem
          Action = dmGlobal.actReportTransactionRecapitulation
        end
        object nbReportTradeAccountInterface: TdxNavBarItem
          Action = dmGlobal.actReportTradeAccountInterface
        end
        object nbReportDailyPaymentReceive: TdxNavBarItem
          Action = dmGlobal.actReportDailyPaymentReceive
        end
        object nbMKBDSupportingReport: TdxNavBarItem
          Action = dmGlobal.actMKBDSupportingReport
        end
        object nbReportDailyBondTradeList: TdxNavBarItem
          Action = dmGlobal.actReportDailyBondsTradeList
        end
        object nbReportStockDepositList: TdxNavBarItem
          Action = dmGlobal.actReportStockDepositList
        end
        object nbReportStockWithdrawList: TdxNavBarItem
          Action = dmGlobal.actReportStockWithdrawList
        end
        object nbReportClientStockActivity: TdxNavBarItem
          Action = dmGlobal.actReportClientStockActivity
        end
        object nbReportDailyCashOutstanding: TdxNavBarItem
          Action = dmGlobal.actDailyCashOutstanding
        end
        object nbVD55MonthlySupport: TdxNavBarItem
          Action = dmGlobal.actVD55MonthlySupport
        end
        object nbReportApprovalHistory: TdxNavBarItem
          Action = dmGlobal.actApprovalHistory
        end
        object nbreportDailyVD55Report: TdxNavBarItem
          Action = dmGlobal.actReportDailyVD5Report
        end
        object nbReportMonthlyVD55Report: TdxNavBarItem
          Action = dmGlobal.actReportMonthlyVD55Report
        end
        object nbReportDailyVD55Support: TdxNavBarItem
          Action = dmGlobal.actReportDailyVD5Support
        end
        object nbReportMonthlyVD55Support: TdxNavBarItem
          Action = dmGlobal.actReportMonthlyVD55Support
        end
        object nbReportEODSupport: TdxNavBarItem
          Action = dmGlobal.actReportEODSupport
        end
        object nbReportCashFlowStatement: TdxNavBarItem
          Action = dmGlobal.actReportCashFlowStatement
        end
        object nbReportDailyCashProjection: TdxNavBarItem
          Action = dmGlobal.actReportDailyCashProjection
        end
        object nbReportMonthlyCommision: TdxNavBarItem
          Action = dmGlobal.actReportMonthlyCommision
        end
        object nbReportMonthlyWithholdingTax: TdxNavBarItem
          Action = dmGlobal.actReportMonthlyWithholdingTax
        end
        object nbReportEntityList: TdxNavBarItem
          Action = dmGlobal.actReportEntityList
        end
        object nbReportAccountActiveList: TdxNavBarItem
          Action = dmGlobal.actReportAccountActiveList
        end
        object nbReportClientInquiry: TdxNavBarItem
          Action = dmGlobal.actClientInquiry
        end
        object nbReportProcessMonthlyStatement: TdxNavBarItem
          Action = dmGlobal.actMonthlyStatement
        end
        object nbReportOpeningAccountHistory: TdxNavBarItem
          Action = dmGlobal.actOpeningAccountHistory
        end
        object nbReportExpiredDocumentsList: TdxNavBarItem
          Action = dmGlobal.actExpiredDocList
        end
        object nbReportAccountSuspendList: TdxNavBarItem
          Action = dmGlobal.actReportAccountSuspendList
        end
        object nbReportAccountDormanList: TdxNavBarItem
          Action = dmGlobal.actReportAccountDormanList
        end
        object nbReportAccountClosedList: TdxNavBarItem
          Action = dmGlobal.actReportAccountClosedList
        end
        object nbReportClientTradeSummary: TdxNavBarItem
          Action = dmGlobal.actReportClientTradeSummary
        end
        object nbReportARAPNeting: TdxNavBarItem
          Action = dmGlobal.actReportARAPNeting
        end
        object nbReportCashFlow: TdxNavBarItem
          Action = dmGlobal.actReportCashFlow
        end
        object nbReportCashProjection: TdxNavBarItem
          Action = dmGlobal.actReportCashProjection
        end
        object nbReportStockMovementList: TdxNavBarItem
          Action = dmGlobal.actReportStockMovementList
        end
        object nbReportStockOutstanding: TdxNavBarItem
          Action = dmGlobal.actReportStockOutstanding
        end
        object nbReportCouponPaymentList: TdxNavBarItem
          Action = dmGlobal.actReportCouponPaymentList
        end
        object nbReportCorpactAnnouncementList: TdxNavBarItem
          Action = dmGlobal.actReportCorpactAnnouncementList
        end
        object nbReportCorpactEntitlementList: TdxNavBarItem
          Action = dmGlobal.actReportCorpactEntitlementList
        end
        object nbReportCorpactClientConfirmation: TdxNavBarItem
          Action = dmGlobal.actReportCorpactClientConfirmation
        end
        object nbReportIPOAllocationList: TdxNavBarItem
          Action = dmGlobal.actReportIPOAllocationList
        end
        object nbReportIPOClientConfirmation: TdxNavBarItem
          Action = dmGlobal.actReportIPOClientConfirmation
        end
        object nbReportTenderOfferOrderList: TdxNavBarItem
          Action = dmGlobal.actReportTenderOfferOrderList
        end
        object nbReportTenderOfferClientConfirmation: TdxNavBarItem
          Action = dmGlobal.actReportTenderOfferClientConfirmation
        end
        object nbReportClientCashOutstanding: TdxNavBarItem
          Action = dmGlobal.actReportClientCashOutstanding
        end
        object nbReportTradeDetailOutstanding: TdxNavBarItem
          Action = dmGlobal.actReportTradeDetailOutstanding
        end
        object nbReportDetailShareCollateral: TdxNavBarItem
          Action = dmGlobal.actReportDetailShareCollateral
        end
        object nbReportLoanMarginRankClient: TdxNavBarItem
          Action = dmGlobal.actReportLoanMarginRankClient
        end
        object nbReportOutstandingCashRankClient: TdxNavBarItem
          Action = dmGlobal.actReportOutstandingCashRankClient
        end
        object nbReportBlacklistPeopleOrganization: TdxNavBarItem
          Action = dmGlobal.actReportBlacklistPeopleOrganizationReport
        end
        object nbReportTradeSummaryActivity: TdxNavBarItem
          Action = dmGlobal.actReportTradeSummaryActivity
        end
        object nbReportTop15SingleCounterExposure: TdxNavBarItem
          Action = dmGlobal.actReportTop15SingleCounterExposure
        end
        object nbReportMKBDCompare2Date: TdxNavBarItem
          Action = dmGlobal.actReportMKBDCompare2Date
        end
        object nbReportVD57Qty: TdxNavBarItem
          Action = dmGlobal.actVD57Qty
        end
        object nbFunSubLedger: TdxNavBarItem
          Caption = 'Fund Sub Ledger'
        end
        object nbMonthlyTransaction: TdxNavBarItem
          Action = dmGlobal.actReportMonthlyTransaction
        end
        object nbReportMonthlyTax: TdxNavBarItem
          Action = dmGlobal.actReportMonthlyTax
        end
        object nbReportMonthlyTaxSummary: TdxNavBarItem
          Action = dmGlobal.actReportMonthlyTaxSummary
        end
        object nbReportTotalMonthlyTransaction: TdxNavBarItem
          Action = dmGlobal.actReportTotalTransaction
        end
        object nbReportOpeningAccountByDate: TdxNavBarItem
          Action = dmGlobal.actReportOpeningAccountByDate
        end
        object nbReportStockPosByAccount: TdxNavBarItem
          Action = dmGlobal.actReportStockPosByAccount
        end
        object nbReportAccountPosByStock: TdxNavBarItem
          Action = dmGlobal.actReportAccountPosByStock
        end
        object nbReportClientActivityOLNonOL: TdxNavBarItem
          Action = dmGlobal.actReportClientActivityOLNonOL
        end
        object nbReportClientActivityInsReg: TdxNavBarItem
          Action = dmGlobal.actReportClientActivityInsReg
        end
        object nbReportCustomerAging: TdxNavBarItem
          Action = dmGlobal.actReportCustomersAging
        end
        object nbReportTradeTransaction: TdxNavBarItem
          Action = dmGlobal.actReportTradeTransaction
        end
        object nbReportCustomersData: TdxNavBarItem
          Action = dmGlobal.actReportCustomersData
        end
        object nbReportAccountFundStatement: TdxNavBarItem
          Action = dmGlobal.actReportFundStatement
        end
        object nbEmailBlast: TdxNavBarItem
          Action = dmGlobal.actBlastConfig
        end
        object nbReportTrialBalanceStock: TdxNavBarItem
          Action = dmGlobal.actReportTrialBalanceStock
        end
        object nbGLClient: TdxNavBarItem
          Action = dmGlobal.actGLClient
        end
        object nbReportTrialBalanceClient: TdxNavBarItem
          Action = dmGlobal.actReportTrialBalanceClient
        end
        object nbReportStockShortSell: TdxNavBarItem
          Action = dmGlobal.actReportStockShortSell
        end
        object nbReportARAP: TdxNavBarItem
          Action = dmGlobal.actARAPReport
        end
        object nbReportTradeConfirmation: TdxNavBarItem
          Action = dmGlobal.actReportTradeConfirmation
        end
        object nbSummaryMarketTradeActivity: TdxNavBarItem
          Action = dmGlobal.actReportSummaryMarketTradeActivity
        end
        object nbReportFakeDemand: TdxNavBarItem
          Action = dmGlobal.actReportFakeDemand
        end
        object nbReportFrontRunning: TdxNavBarItem
          Action = dmGlobal.actReportFrontRunning
        end
        object nbReportUnusualMarketVol: TdxNavBarItem
          Action = dmGlobal.actReportUnusualMarketVol
        end
        object nbReportMarkingTheClose: TdxNavBarItem
          Action = dmGlobal.actReportMarkingTheClose
        end
        object nbReportDailyIntetestActivity: TdxNavBarItem
          Action = dmGlobal.actDailyInterestActivity
        end
        object nbReportVD51_2: TdxNavBarItem
          Action = dmGlobal.actReportVD51_2
        end
        object nbReportIdxClearingResult: TdxNavBarItem
          Action = dmGlobal.actReportIdxClearingResult
        end
        object nbReportMonthlyStamp: TdxNavBarItem
          Action = dmGlobal.actReportMonthlyStamp
        end
      end
    end
    object bgFavoritesControl: TdxNavBarGroupControl
      Left = 1
      Top = 28
      Width = 248
      Height = 352
      Color = clWindow
      TabOrder = 2
      UseStyle = True
      GroupIndex = 4
      OriginalHeight = 93
      object nbFavorites: TdxNavBar
        Left = 0
        Top = 0
        Width = 248
        Height = 352
        Align = alClient
        PopupMenu = pmFavoriteMenu
        ActiveGroupIndex = 0
        TabOrder = 0
        View = 18
        ViewStyle.ColorSchemeName = 'Blue'
        OptionsImage.LargeImages = ilLarge
        OptionsImage.SmallImages = ilSmall
        OnLinkHotTrack = nbFavoritesLinkHotTrack
        object nbFavoritesGroup: TdxNavBarGroup
          Caption = 'User Favorites Menu'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          Links = <>
        end
      end
    end
    object bgSearchControl: TdxNavBarGroupControl
      Left = 1
      Top = 28
      Width = 248
      Height = 423
      Color = clWindow
      TabOrder = 0
      UseStyle = True
      DesignSize = (
        248
        423)
      GroupIndex = 5
      OriginalHeight = 412
      object btnSearch: TButton
        Left = 182
        Top = 35
        Width = 56
        Height = 22
        Anchors = [akTop, akRight]
        Caption = 'Search'
        TabOrder = 0
        OnClick = btnSearchClick
      end
      object edSearch: TEdit
        Left = 7
        Top = 8
        Width = 231
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
        OnKeyPress = edSearchKeyPress
      end
      object nbSearch: TdxNavBar
        Left = 0
        Top = 63
        Width = 248
        Height = 360
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        ActiveGroupIndex = -1
        TabOrder = 2
        View = 18
        ViewStyle.ColorSchemeName = 'Blue'
        OptionsImage.LargeImages = ilLarge
        OptionsImage.SmallImages = ilSmall
      end
    end
    object bgOptionsControl: TdxNavBarGroupControl
      Left = 0
      Top = 0
      Width = 250
      Height = 644
      Caption = 'bgOptionsControl'
      TabOrder = 3
      GroupIndex = 6
      OriginalHeight = 41
      object nbOptions: TdxNavBar
        Left = 0
        Top = 0
        Width = 250
        Height = 644
        Align = alClient
        ActiveGroupIndex = 0
        TabOrder = 0
        TabStop = True
        View = 18
        ViewStyle.ColorSchemeName = 'Blue'
        OptionsImage.SmallImages = ilSmall
        object nbOptionsListOptions: TdxNavBarGroup
          Caption = 'List Appearance Options'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          Links = <
            item
              Item = nbOptionsLargeIcons
            end
            item
              Item = nbOptionsSmallIcons
            end
            item
              Item = nbOptionsList
            end
            item
              Item = nbOptionsReport
            end>
        end
        object nbOptionsNavBarOptions: TdxNavBarGroup
          Caption = 'NavBar Behavior Options'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          Links = <
            item
              Item = nbOptionsAdjustWidthByPopup
            end
            item
              Item = nbOptionsAllowCustomize
            end
            item
              Item = nbOptionsCollapsible
            end
            item
              Item = nbOptionsTabStop
            end>
        end
        object nbOptionsLargeIcons: TdxNavBarItem
          Action = actLargeIcons
        end
        object nbOptionsSmallIcons: TdxNavBarItem
          Action = actSmallIcons
        end
        object nbOptionsList: TdxNavBarItem
          Action = actList
        end
        object nbOptionsReport: TdxNavBarItem
          Action = actReport
        end
        object nbOptionsAdjustWidthByPopup: TdxNavBarItem
          Caption = '&AdjustWidthByPopup'
          LargeImageIndex = 7
          SmallImageIndex = 14
        end
        object nbOptionsAllowCustomize: TdxNavBarItem
          Caption = 'Allo&wCustomize'
          Hint = 'Add/Remove '#39'Add or Remove Buttons'#39' to PopupMenu'
          SmallImageIndex = 14
        end
        object nbOptionsCollapsible: TdxNavBarItem
          Caption = 'Colla&psible'
          SmallImageIndex = 14
        end
        object nbOptionsTabStop: TdxNavBarItem
          Caption = 'Ta&bStop'
          SmallImageIndex = 14
        end
      end
    end
  end
  object BarMain: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 753
    Top = 100
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      25
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 881
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxMenuUser'
        end
        item
          Visible = True
          ItemName = 'barOpenedForm'
        end
        item
          Visible = True
          ItemName = 'barWindows'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object barOpenedForm: TdxBarSubItem
      Caption = 'Opened Form'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object barWindows: TdxBarSubItem
      Caption = 'Windows'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnCloseAllOpenedForm'
        end>
    end
    object btnCloseAllOpenedForm: TdxBarButton
      Caption = 'Close All Opened Form'
      Category = 0
      Hint = 'Close All Opened Form'
      Visible = ivAlways
      OnClick = btnCloseAllOpenedFormClick
    end
    object dxMenuUser: TdxBarSubItem
      Caption = 'Main'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
    end
    object dxBarButton1: TdxBarButton
      Action = actChangePassword
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actLogout
      Category = 0
    end
  end
  object ilSmall: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 6554149
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000868686006666660066666600666666006666660066666600666666006666
          6600666666006666660066666600666666008686860000000000000000003399
          CC003399CC003366CC0000669900006699000066990000669900006699000066
          9900006699000066990000669900006699004D4D4D00868686003399CC0066CC
          FF003399CC0099FFFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
          FF0066CCFF0066CCFF003399CC0099FFFF0000669900666666003399CC0066CC
          FF003399CC0099FFFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
          FF0066CCFF0066CCFF003399CC0099FFFF0000669900666666003399CC0066CC
          FF003399CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
          FF0099FFFF0099FFFF0033CCCC0099FFFF0000669900666666003399CC0066CC
          FF003399CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
          FF0099FFFF0099FFFF0066CCFF0099FFFF0000669900666666003399CC0066CC
          FF003399CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FF
          FF0099FFFF0099FFFF0066CCFF0099FFFF0000669900666666003399CC0066CC
          FF003399CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0099CCFF00FFFFFF0000669900868686003399CC0099FF
          FF0099CCFF003399CC003399CC003399CC003399CC003399CC003399CC003399
          CC003399CC003399CC003399CC003399CC003399CC00000000003399CC0099FF
          FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00006699008686860000000000000000003399CC00FFFF
          FF0099FFFF0099FFFF0099FFFF0099FFFF00FFFFFF003399CC003399CC003399
          CC003399CC003399CC003366CC00000000000000000000000000000000003399
          CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF003399CC0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003399CC003399CC003399CC003399CC000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000C0010000800000000000000000000000000000000000
          0000000000000000000000010000000300000007000081FF0000C3FF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009966330066333300663333005F5F5F006666660066666600808080000000
          000000000000000000000000000000000000000000000000000000000000CC66
          00009933000099330000CC663300CC663300CC663300CC663300663333005555
          550066666600666666008080800000000000000000000000000000000000CC66
          0000CC660000C0DCC000CCFFFF00CCFFFF00CCFFFF00CCFFFF00CC663300CC66
          3300CC663300CC6633006633330055555500868686000000000000000000CC66
          0000C0C0C000CCFFFF00CCFFFF00CC663300CC663300CC663300CCFFFF00CCFF
          FF00CCFFFF00F0CAA600CC330000CC330000666666000000000000000000CC99
          3300C0DCC000CCFFFF00CCFFFF00FF993300FFECCC00FFECCC00CC663300CC66
          3300CC663300CCFFFF00F0CAA600CC660000666666000000000000000000CC99
          3300C0DCC000CCFFFF00CCFFFF00FF993300FFECCC00FFECCC00FFECCC00FFEC
          CC00CC663300CCFFFF00CCFFFF00CC660000666666000000000000000000CC99
          3300D6E7E700CCFFFF00CCFFFF00FF993300F1F1F1001616160016161600CC99
          3300CC993300CC993300CCFFFF00CC6600005F5F5F000000000000000000CC99
          3300CCFFFF00CCFFFF00CCFFFF00FF993300F1F1F100F1F1F10066999900FFEC
          CC00FFCC9900CC993300CC993300CC6600004D4D4D007777770000000000CC99
          3300F0FBFF00F0FBFF00F0FBFF00FF993300FFFFFF00F1F1F100F1F1F100CC99
          3300FFECCC00FFECCC00FFCC9900CC9933000033CC005555550000000000CC99
          3300DDDDDD00F0FBFF00F0FBFF00FF993300FFFFFF00F8F8F800F1F1F100FFEC
          CC00CC993300CC993300FFECCC003366CC003399FF000033CC0000000000CC99
          3300CC993300F0FBFF00F0FBFF00FF993300FFCC3300FFCC3300F8F8F800F1F1
          F100CC663300F0FBFF00CC993300CC993300333399000000000000000000CC99
          3300FFECCC00CC993300F0FBFF00F0FBFF00F0FBFF00F0CAA600FFCC3300FFCC
          3300CC663300F0FBFF00F0FBFF00CC993300666666000000000000000000CC99
          3300FF993300FF993300CC993300F0CAA600F0CAA600FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FF993300CC9933006666660000000000000000000000
          0000F0CAA600D7D7D700F0CAA600FF993300FF993300FF993300FF993300FFCC
          9900F0CAA600FF993300FFCC6600CC9933008686860000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF99
          3300FF993300FF993300FF993300FF9933000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000C07F000080070000800100008001000080010000800100008001
          0000800000008000000080000000800100008001000080010000C0010000FF83
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000096969600666666005F5F5F005F5F5F005F5F
          5F00868686000000000000000000000000000000000000000000000000000000
          000000000000C0C0C000A4A0A000B2B2B200C0C0C000B2B2B200CC9999008686
          8600996666009966660000000000000000000000000000000000000000000000
          0000D7D7D700CCCCCC00E3E3E300DDDDDD00D7D7D700C0C0C000CC9999009966
          6600CC9999009966660096969600000000000000000000000000000000000000
          0000CCCCCC00EAEAEA00F1F1F100EAEAEA00DDDDDD00CBCBCB00CC9999009966
          6600CC999900CC999900A4A0A000000000000000000000000000000000000000
          000000000000EAEAEA00EAEAEA00F1F1F100E3E3E300C0C0C000996666009966
          6600CC999900CC99990000000000000000000000000000000000000000000000
          000000000000D7D7D700CC999900C0C0C000CC999900CC999900993333009933
          330099666600B2B2B20000000000000000000000000000000000000000000000
          000000000000CCCCCC00CC996600FFCC3300FFCC6600CC999900CC6666009933
          3300666666008686860000000000000000000000000000000000000000000000
          000000000000C0C0C000CC996600FFCC3300FFCC3300FFCC3300FFCC6600CC99
          9900CC6666009966660080808000000000000000000000000000000000000000
          000000000000C0C0C000FF996600FFCC3300FFCC6600FFCC6600FFCC6600FFCC
          3300FFCC3300CC99660077777700000000000000000000000000000000000000
          000000000000CC999900FFCC6600FFCC6600FFCC6600FFCC6600FFCC6600FFCC
          6600FFCC6600CC99660080808000000000000000000000000000000000000000
          0000D7D7D700F0CAA600FFCC6600FFCC6600FFCC9900FFCC9900FFCC9900FFCC
          6600FFCC6600CC99660096969600000000000000000000000000000000000000
          0000CCCCCC00F0CAA600FFCC6600FFCC9900FFCC9900FFCC9900FFCC9900FFCC
          9900FFCC6600CC996600A4A0A000000000000000000000000000000000000000
          0000CCCCCC00F0CAA600FFCC9900FFCC9900FFFF9900FFECCC00FFFF9900FFFF
          9900FFCC990099666600A4A0A000000000000000000000000000000000000000
          0000CCCCCC00A4A0A000CCCC9900F0CAA600FFECCC00FFFFCC00FFFFCC00FFFF
          9900FFCC990099666600B2B2B200000000000000000000000000000000000000
          0000CCCCCC00D7D7D700CBCBCB00CBCBCB00B2B2B200B2B2B200CCCC9900CCCC
          9900CCCC990099666600CBCBCB00000000000000000000000000000000000000
          0000000000000000000000000000DDDDDD00D7D7D700D7D7D700CCCCCC00C0C0
          C000CC999900CCCCCC0000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F81F0000E00F0000C0070000C0070000E00F0000E00F0000E00F0000E007
          0000E0070000E0070000C0070000C0070000C0070000C0070000C0070000F80F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000777777006633
          3300663333006633330066333300996666000000000000000000000000000000
          00000000000000000000000000000000000099999900A4A0A000C0C0C000C0C0
          C000B2B2B200CC99990099666600666666006666660096969600000000000000
          0000000000000000000000000000C0C0C000DDDDDD00E3E3E300DDDDDD00D7D7
          D700CBCBCB00D7D7D700B2B2B200CC9999009966660099666600000000000000
          0000000000000000000000000000C0C0C000EAEAEA00F1F1F100EAEAEA00DDDD
          DD00CBCBCB00C0C0C000CC999900CC9999009966990086868600000000000000
          0000000000000000000000000000CCCCCC00F1F1F100E3E3E300EAEAEA00DDDD
          DD00C0C0C000CC999900CC999900CC999900CC99990000000000000000000000
          00000000000000000000C0C0C000C0C0C000C0C0C000CC999900C0C0C000CC99
          9900CC999900CC666600CC666600996666000000000000000000000000000000
          00000000000099666600993333009933330099666600FF993300FFCC3300FFCC
          9900CC999900CC666600CC666600663366009966660000000000000000000000
          0000CC6633009966330099663300CC663300CC999900FF993300FFCC3300FFCC
          3300FFCC3300FFCC6600CC999900CC6666009933660066336600000000009933
          000099330000993300003366000099330000CC999900FFCC3300FFCC3300FFCC
          6600FFCC6600FFCC6600FFCC3300FFCC3300CC99660066333300CC996600CC33
          0000CC660000808000000080000066660000F0CAA600FFCC6600FFCC6600FFCC
          6600FFCC6600FFCC6600FFCC6600FFCC6600CC99660066666600CC663300CC66
          0000CC660000339900003399000099993300F0CAA600FFCC6600FFCC6600FFCC
          9900FFCC9900FFCC9900FFCC6600FFCC6600CC66660077777700CC9933009999
          00003399330033993300CC993300CCCC9900FFCC9900FFCC9900FFCC9900FFCC
          9900FFCC9900FFCC9900FFCC9900FFCC6600CC66660086868600CC9933006699
          330033CC660033CC660099CC6600D7D7D700FFCC9900FFCC9900FFFF9900FFEC
          CC00FFECCC00FFFF9900FFFF9900FFCC99009966660096969600CCCC990033CC
          330066CC990099FF9900C0DCC000DDDDDD00A4A0A000CCCC9900CCCC9900FFEC
          CC00FFFFCC00FFFFCC00FFFF9900FFCC990099666600000000000000000099CC
          990066CC990099FFCC0099FF990066CC9900CCCC9900F0CAA600C0C0C000C0C0
          C000B2B2B200CC999900CCCC9900CCCC99009966660000000000000000000000
          0000C0DCC00099CC990099CC990066CC660099CC6600F0CAA600F1F1F100DDDD
          DD00DDDDDD00D7D7D700C0C0C000CC9999000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FF030000FC000000F8000000F8000000F8010000F0030000E0010000C000
          000080000000000000000000000000000000000000000001000080010000C003
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000868686006666660066666600666666006666660066666600666666006666
          6600666666006666660066666600666666008686860000000000000000003399
          CC003399CC003366CC0000669900006699000066990000669900006699000066
          9900006699000066990000669900006699004D4D4D00868686003399CC0066CC
          FF003399CC0099FFFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
          FF0066CCFF0066CCFF003399CC0099FFFF0000669900666666003399CC0066CC
          FF003399CC0099FFFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
          FF0066CCFF0066CCFF003399CC0099FFFF0000669900666666003399CC0066CC
          FF003399CC0099FFFF0099FFFF0066CCFF00CC999900CC666600CC666600A4A0
          A00066CCFF0099FFFF0033CCCC0099FFFF0000669900666666003399CC0066CC
          FF003399CC0099FFFF0066CCFF00A4A0A000E3E3E300FFCCCC00FFCCCC00FFCC
          CC00A4A0A00066CCFF0066CCFF0099FFFF0000669900666666003399CC0066CC
          FF003399CC0099FFFF0066CCFF00A4A0A000FFCCCC00E3E3E300FFCCCC00A4A0
          A000A4A0A00066CCFF0066CCFF0099FFFF0000669900666666003399CC0066CC
          FF003399CC00FFFFFF00FFFFFF00FFCCCC00FFCCCC00FFCCCC00E3E3E300E3E3
          E300FFCCCC00FFFFFF0099CCFF00FFFFFF0000669900868686003399CC0099FF
          FF003399CC003399CC003399CC003399CC00CC6666006633330066333300CC66
          6600663333003399CC003399CC003399CC003399CC00000000003399CC0099FF
          FF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF00FFFFFF00FFFFFF00FFFF
          FF0066333300FFFFFF00006699006666660086868600000000003399CC00FFFF
          FF0099FFFF0099FFFF0099FFFF0099FFFF00FFFFFF003399CC003399CC003399
          CC00993333003399CC003366CC00996666008080800000000000000000003399
          CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF003399CC0000000000000000000000
          0000CC6666008686860066669900663333008686860000000000000000000000
          00003399CC003399CC003399CC003399CC000000000000000000000000000000
          0000663333007777770099666600996666000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000993333006633330066333300808080000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000C001000080000000000000000000000000000000000000000000
          00000000000000010000000100000001000081C10000C3C30000FFC30000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000868686006666660066666600666666006666660066666600666666006666
          6600666666006666660066666600666666008686860000000000000000003399
          CC003399CC003366CC0000669900006699000066990000669900006699000066
          9900006699000066990000669900006699004D4D4D00868686003399CC0066CC
          FF003399CC0099FFFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
          FF0066CCFF0066CCFF003399CC0099FFFF0000669900666666003399CC0066CC
          FF003399CC0099FFFF0066CCFF0066CCCC0066CCCC0066CCCC0066CCCC0066CC
          CC0066CCCC0066CCCC003399CC0099FFFF0000669900666666003399CC0066CC
          FF003399CC0099FFFF006699CC006699CC006699CC006699CC006699CC006699
          CC006699CC006699CC006699CC006699CC0000669900666666003399CC0066CC
          FF003399CC0099FFFF006699CC00FFFFFF00FFFFFF00F1F1F100F1F1F100F1F1
          F100F1F1F100F1F1F100F1F1F1006699CC0000669900666666003399CC0066CC
          FF003399CC0099FFFF006699CC00FFFFFF00FFCC6600FFCC6600FFCC6600FFCC
          6600FFCC6600FFCC6600F1F1F1006699CC0000669900666666003399CC0066CC
          FF003399CC00FFFFFF00CCCCCC00FFFFFF00FFECCC00FFECCC00FFECCC00FFEC
          CC00FFECCC00FFECCC00F1F1F100CCCCCC0000669900868686003399CC0099FF
          FF003399CC003399CC003399CC003399CC003399CC003399CC003399CC003399
          CC003399CC003399CC003399CC003399CC003399CC00000000003399CC0099FF
          FF0099FFFF0099FFFF00A4A0A000FFFFFF0099996600CCCCFF00CCCCFF00807C
          FF003366FF0099996600FFFFFF007777770066666600000000003399CC00FFFF
          FF0099FFFF0099FFFF00A4A0A000FFFFFF0099996600FFFFFF00FFFFFF00807C
          FF00807CFF0099996600FFFFFF00777777006666660000000000000000003399
          CC00FFFFFF00FFFFFF00B2B2B200FFFFFF00999966009999FF00FFFFFF00CCCC
          FF009999FF0099996600FFFFFF00808080006666660000000000000000000000
          00003399CC003399CC00B2B2B200FFFFFF00FF99330099996600999966009999
          660099996600FF993300FFFFFF00808080006666660000000000000000000000
          00000000000000000000B2B2B200FFFFFF00FF990000FF990000FF990000FF99
          0000FF990000FF990000FFFFFF00868686006666660000000000000000000000
          00000000000000000000B2B2B200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00868686008686860000000000000000000000
          00000000000000000000C0C0C000B2B2B200B2B2B200B2B2B200B2B2B200A4A0
          A000A4A0A0009999990096969600969696000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C00100008000000000000000000000000000000000000000000000000000
          000000010000000100000001000080010000C0010000F0010000F0010000F003
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000100D0B105D4C3D5FB9987ABEE4BC96EAEEC49DF5EEC49DF5E4BC
          96EAB9987ABE5D4C3D5F100D0B10000000000000000000000000000000000000
          000031281F32B69476BCF9CCA4FFFAD1ABFFFCD4AFFFFDD6B3FFFDD6B3FFFCD4
          AFFFFAD1ABFFF9CCA4FFB69476BC31281F320000000000000000000000003027
          1E32D0A783D9F8CDA7FFFBD5B2FFFCD8B9FFFBDBBDFFFBDCBFFFFBDCBFFFFBDB
          BDFFFCD8B9FFFBD5B2FFF8CDA7FFD0A783D930271E32000000000C09070CB38D
          6CBCF6C79DFFF8CFAAFFF9D3B1FFF9D8B9FFFADBBFFFFADDC2FFFADDC2FFFADB
          BFFFF9D8B9FFF9D3B1FFF8CFAAFFF6C59DFFB38D6CBC0C09070C5843315EF0BA
          8BFFF4C196FFF5C79EFFF6CAA4FFF6D0ACFFF7D3B1FFF7D4B4FFF7D4B4FFF7D2
          B1FFF6D0ACFFF6CAA4FFF5C79EFFF4C196FFF0BA8BFF5843315EAF845DBFEDB3
          7FFFF0B684FFF0B989FFF1BB8EFFF1BE92FFF2C196FFF2C298FFF2C298FFF2C1
          96FFF1BE92FFF1BB8EFFF0B989FFF0B684FFEDB380FFAF845EBFD09869EAE9AA
          72FFEAAC73FFEAAC75FFEBAD77FFEBAD79FFEBAF79FFEBAE7AFFEBAE79FFEBAE
          78FFEBAD79FFEBAD77FFEAAC75FFEAAC73FFE9AA72FFD09869EAD19662F5E3A0
          64FFE3A065FFE3A064FFE3A065FFE5A46DFFE6AA76FFE7AE7BFFE7AE7BFFE6A9
          76FFE5A46DFFE3A065FFE3A065FFE3A065FFE3A064FFD19662F5C98957F5DD96
          58FFDD9557FFDC9557FFE0A069FFE4AB7AFFE4AD7DFFE4AE7EFFE4AE7EFFE4AD
          7DFFE4AB7BFFE0A069FFDC9557FFDD9557FFDD9657FFC98956F5BA7A48EAD58D
          4FFFD68D4DFFDA9B63FFE1AD7EFFE1AD7FFFE1AC7EFFE1AC7EFFE1AC7EFFE1AD
          7DFFE1AD7EFFE1AD7FFFDA9B62FFD68D4DFFD58D4EFFBA7A49EA915C33BFCB82
          45FFD18A4AFFDDA87AFFE0B288FFE0B086FFE0B187FFE0B086FFE0B087FFE0B1
          86FFE0B087FFE0B289FFDDA87AFFD1894AFFCB8246FF915C33BF472B175EBF74
          3BFFCC8648FFE0B590FFE0B693FFE0B692FFE0B692FFE0B692FFE0B692FFE0B6
          92FFE0B692FFE0B693FFE0B590FFCC8648FFBF743AFF472B175E0906030C884E
          25BCC1783EFFDFB894FFE3BFA1FFE2BE9EFFE2BE9EFFE2BE9EFFE2BE9EFFE2BE
          9EFFE2BE9EFFE3C0A1FFDFB894FFC1793EFF884E24BC0906030C000000002516
          0B329F5F33D9D3A079FFE9CFB7FFEAD1B9FFE9CEB6FFE8CDB5FFE8CDB5FFE9CF
          B6FFEAD1B9FFE9D0B7FFD3A07AFF9F5F33D925160B3200000000000000000000
          000026180E32936443BCD9AD91FFE8CEBBFFEDD9C9FFF0E0D2FFF0E0D2FFEDD9
          C9FFE8CFBBFFD9AD91FF936343BC26180E320000000000000000000000000000
          0000000000000D0907104C38295FA3836FBED1B3A0EADCBDACF5DCBDACF5D1B3
          A0EAA3836FBE4C38295F0D090710000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000020202041515153F32323292444444C84F4F4FEB4F4F4FEB4444
          44C8323232921515153F02020204000000000000000000000000000000000000
          0000080808192E2E2E90505050EE575757FF5A5A5AFF5C5C5CFF5C5C5CFF5A5A
          5AFF575757FF505050EE2E2E2E90080808190000000000000000000000000707
          0719343434AD525252FF575757FF5C5C5CFF606060FF626262FF626262FF6060
          60FF5C5C5CFF575757FF525252FF343434AD0707071900000000010101032525
          2590464646FF4E4E4EFF545454FF5B5B5BFF5F5F5FFF626262FF626262FF5F5F
          5FFF5B5B5BFF545454FF4E4E4EFF464646FF25252590010101030C0C0C3E3535
          35F13C3C3CFF424242FF484848FF4D4D4DFF515151FF545454FF545454FF5151
          51FF4D4D4DFF484848FF424242FF3C3C3CFF353535F10C0C0C3E181818932B2B
          2BFF2E2E2EFF323232FF353535FF383838FF3B3B3BFF3D3D3DFF3D3D3DFF3B3B
          3BFF383838FF353535FF323232FF2E2E2EFF2B2B2BFF18181893191919C82020
          20FF212121FF232323FF242424FF232323FF232323FF232323FF232323FF2323
          23FF232323FF242424FF232323FF212121FF202020FF191919C8161616EC1717
          17FF171717FF171717FF171717FF232323FF2F2F2FFF373737FF373737FF2F2F
          2FFF232323FF171717FF171717FF171717FF171717FF161616EC111111EC1212
          12FF111111FF121212FF2A2A2AFF434343FF474747FF474747FF474747FF4747
          47FF434343FF2A2A2AFF121212FF111111FF121212FF111111EC0A0A0AC80B0B
          0BFF0A0A0AFF272727FF4D4D4DFF4E4E4EFF4C4C4CFF4C4C4CFF4C4C4CFF4C4C
          4CFF4E4E4EFF4D4D4DFF272727FF0A0A0AFF0B0B0BFF0A0A0AC8040404960505
          05FF0A0A0AFF4B4B4BFF5E5E5EFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B
          5BFF5B5B5BFF5E5E5EFF4B4B4BFF0A0A0AFF050505FF04040496020202450000
          00F60C0C0CFF6B6B6BFF6F6F6FFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E
          6EFF6E6E6EFF6F6F6FFF6B6B6BFF0C0C0CFF000000F602020245010101060000
          00A1090909FF737373FF858585FF818181FF818181FF818181FF818181FF8181
          81FF818181FF858585FF737373FF090909FF000000A101010106000000000101
          01270B0B0BC85D5D5DFFA6A6A6FFA6A6A6FFA2A2A2FFA1A1A1FFA1A1A1FFA2A2
          A2FFA6A6A6FFA6A6A6FF5D5D5DFF0B0B0BC80101012700000000000000000000
          00000505052B252525B2818181FFB2B2B2FFBEBEBEFFC7C7C7FFC7C7C7FFBEBE
          BEFFB2B2B2FF818181FF252525B20505052B0000000000000000000000000000
          0000000000000404040E1D1D1D5B606060BA959595E7A3A3A3F4A3A3A3F49595
          95E7606060BA1D1D1D5B0404040E000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000E0E0E104E4E4E5F9E9E9EBEC2C2C2EACBCBCBF5CBCBCBF5C2C2
          C2EA9E9E9EBE4E4E4E5F0E0E0E10000000000000000000000000000000000000
          000028282832969696BCD1D1D1FFD8D8D8FFDCDCDCFFDEDEDEFFDEDEDEFFDCDC
          DCFFD8D8D8FFD1D1D1FF969696BC282828320000000000000000000000002727
          2732A7A7A7D9D2D2D2FFDBDBDBFFDEDEDEFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
          DFFFDEDEDEFFDBDBDBFFD2D2D2FFA7A7A7D927272732000000000909090C8B8B
          8BBCCCCCCCFFD8D8D8FFD9D9D9FFDBDBDBFFDCDCDCFFDEDEDEFFDEDEDEFFDCDC
          DCFFDBDBDBFFD9D9D9FFD8D8D8FFCCCCCCFF8B8B8BBC0909090C4242425EB9B9
          B9FFCDCDCDFFD0D0D0FFD2D2D2FFD4D4D4FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6
          D6FFD4D4D4FFD2D2D2FFD0D0D0FFCDCDCDFFB9B9B9FF4242425E808080BFB9B9
          B9FFC4C4C4FFC4C4C4FFC7C7C7FFC8C8C8FFC9C9C9FFCACACAFFCACACAFFC9C9
          C9FFC8C8C8FFC7C7C7FFC4C4C4FFC4C4C4FFB9B9B9FF808080BF949494EAB4B4
          B4FFB7B7B7FFB7B7B7FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8
          B8FFB8B8B8FFB8B8B8FFB7B7B7FFB7B7B7FFB4B4B4FF949494EA919192F5ACAC
          ACFFABABABFFABABABFFABABABFFB0B0B0FFB4B4B4FFB7B7B7FFB7B7B7FFB4B4
          B4FFB0B0B0FFABABABFFABABABFFABABABFFACACACFF919192F5888889F5A1A1
          A1FFA0A0A0FFA0A0A0FFAAAAAAFFB4B4B4FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5
          B5FFB4B4B4FFAAAAAAFFA0A0A0FFA0A0A0FFA1A1A1FF888889F57C7C7CEA9595
          95FF979797FFA3A3A3FFB2B2B2FFB3B3B3FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2
          B2FFB3B3B3FFB2B2B2FFA3A3A3FF979797FF959595FF7C7C7CEA5F5F5FBF8888
          88FF919191FFADADADFFB5B5B5FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4
          B4FFB4B4B4FFB5B5B5FFADADADFF919191FF888888FF5F5F5FBF2D2D2D5E7777
          79FF888888FFB7B7B7FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8
          B8FFB8B8B8FFB8B8B8FFB7B7B7FF888888FF777779FF2D2D2D5E0606060C5050
          51BC79797AFFB7B7B7FFC0C0C0FFBDBDBDFFBDBDBDFFBDBDBDFFBDBDBDFFBDBD
          BDFFBDBDBDFFC0C0C0FFB7B7B7FF79797AFF505051BC0606060C000000001616
          1632606061D9A0A0A0FFCFCECEFFCFCFCFFFCDCDCDFFCCCCCCFFCCCCCCFFCDCD
          CDFFCFCFCFFFCFCFCEFFA0A0A0FF606061D91616163200000000000000000000
          000018181832636363BCAEADAEFFCECECEFFD7D7D7FFDEDEDEFFDEDEDEFFD7D7
          D7FFCECECEFFAEAEAEFF626363BC181818320000000000000000000000000000
          000000000000090909103636365F828282BEB1B2B2EABDBDBDF5BDBDBDF5B1B1
          B2EA828282BE3636365F09090910000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001040A0FF0C367BFF1C14104000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001040A0FF0C367BFF0B326CFF1241B7FF1C141040000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001040A0FF0C367BFF0B326CFF1241B7FF0C367BFF1C141040000000000000
          00000000000019120E3C3F2D24955B4133D76A4B3CFA5D4234DB473227A51040
          A0FF0C367BFF0B326CFF1241B7FF0C367BFF1C14104000000000000000000000
          0000271C165C715A4CE0B39F8BFFDECAA3FFFBE5AAFFDEC58FFFB39871FF7459
          46E50B326CFF1241B7FF0C367BFF1C1410400000000000000000000000001912
          0E3C705A4DDECBBEB2FFFFD8A9FFFFD592FFFFE09CFFFFE5A1FFFFE6A2FFCBB2
          86FF745A49E50C367BFF1C141040000000000000000000000000000000003C2B
          228EB3A29AFFFFD1ADFFFFA85BFFFFCB82FFFFDF99FFFFE39FFFFFE19CFFFFE2
          A4FFB39D83FF493329AA100B092400000000000000000000000000000000583F
          32D0DED7D3FFFFA769FFFF9D51FFFFB86FFFFFD28BFFFFDA94FFFFD48DFFFFCC
          8AFFDED0B9FF5D4235DC17100D3400000000000000000000000000000000694B
          3CF9FBFAF9FFFE8B3DFFFC9F5DFFFAB783FFFEC287FFFFBD7AFFFFB367FFFFA4
          57FFFBF5E7FF6A4C3CFB1B13103E00000000000000000000000000000000583F
          32D0DDD6D3FFFBAE7BFFF3BC9BFFEFD8C8FFF1C9B3FFFAAF77FFFF974BFFFFAA
          6CFFDED6CFFF5D4235DC17100D34000000000000000000000000000000003C2B
          228EB2A29AFFF9D6BFFFEED3C1FFE9E5E4FFEDDACFFFF6AE7EFFFE8F44FFFFCF
          AEFFB3A39AFF493329AA100B0924000000000000000000000000000000001912
          0E3C705A4DDEC9BEB8FFF2DED1FFEDDDD2FFF0C6ACFFF8B78CFFFED0B1FFCBC0
          BAFF745C4FE52C1F19660705040F000000000000000000000000000000000000
          0000271C165C715A4DE0B0A098FFD9D2CEFFF5F4F4FFDDD6D2FFB3A39BFF745C
          4FE536271F7F0A07061700000000000000000000000000000000000000000000
          00000000000019120E3C3F2D24955B4133D76A4B3CFA5D4234DB473227A5261B
          15580705040F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001B130F3D1B130F3D1B130F3D1B130F3D1B130F3D1B130F3D1B13
          0F3D1B130F3D1B130F3D1B130F3D1B130F3D1B130F3D00000000000000000000
          0000C0A090FF705040FF705040FF705040FF705040FF705040FF705040FF7050
          40FF705040FF705040FF705040FF705040FF1B130F3D00000000000000000000
          0000C0A890FFFFFAF7FFFFF7F5FFFFF6F2FFFFF3EFFFFFF2ECFFFFEFEAFFFFED
          E7FFFFEBE4FFFFE9E2FFFFE8E0FF705040FF1B130F3D00000000000000000000
          0000C0A8A0FFFFFBFAFFC0A8A0FFC0A8A0FFFFF5F2FFC0A8A0FFC0A8A0FFFFEF
          E9FFC0A8A0FFC0A8A0FFFFE9E0FF705040FF1B130F3D00000000000000000000
          0000C0A8A0FFFFFCFBFFFFFAF8FFFFF8F6FFFFF7F3FFFFF4F1FFFFF2EDFFFFF0
          EBFFFFEEE8FFFFECE5FFFFE9E1FF705040FF1B130F3D00000000000000000000
          0000C0B0A0FFFFFCFCFF4048E0FF4048E0FFFFF7F5FFFE0EC3FFFE0EC3FFFFF0
          ECFFE56900FFE56900FFFFEAE2FF705040FF1B130F3D00000000000000000000
          0000C0B0A0FFFFFEFDFF4048E0FF4048E0FFFFF8F5FFFE0EC3FFFE0EC3FFFFF2
          EDFFE56900FFE56900FFFFEAE3FF705040FF1B130F3D00000000000000000000
          0000D0C0B0FFFFFEFEFF4048E0FF4048E0FFFFF9F7FFFE0EC3FFFE0EC3FFFFF3
          EFFFE56900FFE56900FFFFEBE4FF706050FF1B130F3D00000000000000000000
          0000D0C0B0FFFFFEFEFFFFFDFCFFFFFCFBFFFFFAF8FFFFF8F6FFFFF6F3FFFFF4
          F0FFFFF1EDFFFFEFEAFFFFEBE5FF806850FF1B130F3D00000000000000000000
          0000E09070FFE09070FFE09070FFE09060FFE08050FFE08050FFE08050FFE080
          50FFE08050FFD07850FFD07840FFD07040FF1B130F3D00000000000000000000
          0000E09870FFFFD8C0FFFDD3BAFFFDCEB1FFFBC7A6FFF9BF9BFFF7B78FFFF5AF
          84FFF4A979FFF2A26FFFF09860FFD07040FF1B130F3D00000000000000000000
          0000E09880FFFFD8C0FFFFD3BAFFFDCFB2FFFBC8A7FFF9C19DFFF7B991FFF6B1
          85FFF4A97AFFF2A36FFFF09861FFD07040FF1B130F3D00000000000000000000
          0000E0A080FFE09870FFE09070FFE09070FFE08860FFE08850FFE08050FFE080
          50FFE08050FFE07840FFE07840FFE07040FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001B130F3D1B130F3D1B130F3D1B130F3D1B130F3D1B130F3D1B13
          0F3D1B130F3D1B130F3D1B130F3D1B130F3D1B130F3D00000000000000000000
          0000C0A090FF705040FF705040FF705040FF705040FF705040FF705040FF7050
          40FF705040FF705040FF705040FF705040FF1B130F3D00000000000000000000
          0000C0A890FFFFFAF7FFFFF7F5FFFFF6F2FFFFF3EFFFFFF2ECFFFFEFEAFFFFED
          E7FFFFEBE4FFFFE9E2FFFFE8E0FF705040FF1B130F3D00000000000000000000
          0000C0A8A0FFFFFBFAFFFEC404FFFEC404FFFFF5F2FF8F8FFFFF8F8FFFFFFFEF
          E9FF1CB025FF1CB025FFFFE9E0FF705040FF1B130F3D00000000000000000000
          0000C0A8A0FFFFFCFBFFFEC404FFFEC404FFFFF7F3FF8F8FFFFF8F8FFFFFFFF0
          EBFF1CB025FF1CB025FFFFE9E1FF705040FF1B130F3D00000000000000000000
          0000C0B0A0FFFFFCFCFFFFFBFAFFFFF9F7FFFFF7F5FFFFF5F2FFFFF3EFFFFFF0
          ECFFFFEFE9FFFFEDE7FFFFEAE2FF705040FF1B130F3D00000000000000000000
          0000C0B0A0FFFFFEFDFF4048E0FF4048E0FFFFF8F5FFFE0EC3FFFE0EC3FFFFF2
          EDFFE56900FFE56900FFFFEAE3FF705040FF1B130F3D00000000000000000000
          0000D0C0B0FFFFFEFEFF4048E0FF4048E0FFFFF9F7FFFE0EC3FFFE0EC3FFFFF3
          EFFFE56900FFE56900FFFFEBE4FF706050FF1B130F3D00000000000000000000
          0000D0C0B0FFFFFEFEFFFFFDFCFFFFFCFBFFFFFAF8FFFFF8F6FFFFF6F3FFFFF4
          F0FFFFF1EDFFFFEFEAFFFFEBE5FF806850FF1B130F3D00000000000000000000
          0000E09070FFE09070FFE09070FFE09060FFE08050FFE08050FFE08050FFE080
          50FFE08050FFD07850FFD07840FFD07040FF1B130F3D00000000000000000000
          0000E09870FFFFD8C0FFFDD3BAFFFDCEB1FFFBC7A6FFF9BF9BFFF7B78FFFF5AF
          84FFF4A979FFF2A26FFFF09860FFD07040FF1B130F3D00000000000000000000
          0000E09880FFFFD8C0FFFFD3BAFFFDCFB2FFFBC8A7FFF9C19DFFF7B991FFF6B1
          85FFF4A97AFFF2A36FFFF09861FFD07040FF1B130F3D00000000000000000000
          0000E0A080FFE09870FFE09070FFE09070FFE08860FFE08850FFE08050FFE080
          50FFE08050FFE07840FFE07840FFE07040FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001B130F3D1B130F3D1B130F3D1B130F3D1B130F3D1B130F3D1B13
          0F3D1B130F3D1B130F3D1B130F3D1B130F3D1B130F3D00000000000000000000
          0000C0A090FF705040FF705040FF705040FF705040FF705040FF705040FF7050
          40FF705040FF705040FF705040FF705040FF1B130F3D00000000000000000000
          0000C0A890FFFFFAF7FFFFF7F5FFFFF6F2FFFFF3EFFFFFF2ECFFFFEFEAFFFFED
          E7FFFFEBE4FFFFE9E2FFFFE8E0FF705040FF1B130F3D00000000000000000000
          0000C0A8A0FFFFFBFAFFED9348FFED9247FFFFF5F2FFFFF3EFFF997F72FF997E
          71FF997E70FF997D70FFFFE9E0FF705040FF1B130F3D00000000000000000000
          0000C0A8A0FFFFFCFBFFFFFAF8FFFFF8F6FFFFF7F3FFFFF4F1FFFFF2EDFFFFF0
          EBFFFFEEE8FFFFECE5FFFFE9E1FF705040FF1B130F3D00000000000000000000
          0000C0B0A0FFFFFCFCFFFF49D1FFFF48D0FFFFF7F5FFFFF5F2FF997F73FF997E
          72FF997E71FF997E70FFFFEAE2FF705040FF1B130F3D00000000000000000000
          0000C0B0A0FFFFFEFDFFFFFCFBFFFFFAF8FFFFF8F5FFFFF6F3FFFFF4F0FFFFF2
          EDFFFFEFEAFFFFEDE7FFFFEAE3FF705040FF1B130F3D00000000000000000000
          0000D0C0B0FFFFFEFEFF0000AAFF0000AAFFFFF9F7FFFFF7F4FF998073FF997F
          73FF997E72FF997E71FFFFEBE4FF706050FF1B130F3D00000000000000000000
          0000D0C0B0FFFFFEFEFFFFFDFCFFFFFCFBFFFFFAF8FFFFF8F6FFFFF6F3FFFFF4
          F0FFFFF1EDFFFFEFEAFFFFEBE5FF806850FF1B130F3D00000000000000000000
          0000E09070FFE09070FFE09070FFE09060FFE08050FFE08050FFE08050FFE080
          50FFE08050FFD07850FFD07840FFD07040FF1B130F3D00000000000000000000
          0000E09870FFFFD8C0FFFDD3BAFFFDCEB1FFFBC7A6FFF9BF9BFFF7B78FFFF5AF
          84FFF4A979FFF2A26FFFF09860FFD07040FF1B130F3D00000000000000000000
          0000E09880FFFFD8C0FFFFD3BAFFFDCFB2FFFBC8A7FFF9C19DFFF7B991FFF6B1
          85FFF4A97AFFF2A36FFFF09861FFD07040FF1B130F3D00000000000000000000
          0000E0A080FFE09870FFE09070FFE09070FFE08860FFE08850FFE08050FFE080
          50FFE08050FFE07840FFE07840FFE07040FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001B130F3D1B130F3D1B130F3D1B130F3D1B130F3D1B130F3D1B13
          0F3D1B130F3D1B130F3D1B130F3D1B130F3D1B130F3D00000000000000000000
          0000C0A090FF705040FF705040FF705040FF705040FF705040FF705040FF7050
          40FF705040FF705040FF705040FF705040FF1B130F3D00000000000000000000
          0000C0A890FFFFFAF7FFFFF7F5FFFFF6F2FFFFF3EFFFFFF2ECFFFFEFEAFFFFED
          E7FFFFEBE4FFFFE9E2FFFFE8E0FF705040FF1B130F3D00000000000000000000
          0000C0A8A0FFFFFBFAFF997E71FF997E71FF997E71FF997E71FF997E71FF997E
          71FF997E71FF997E71FFFFE9E0FF705040FF1B130F3D00000000000000000000
          0000C0A8A0FFFFFCFBFFFFFAF8FFFFF8F6FFFFF7F3FFFFF4F1FFFFF2EDFFFFF0
          EBFFFFEEE8FFFFECE5FFFFE9E1FF705040FF1B130F3D00000000000000000000
          0000C0B0A0FFFFFCFCFF997E71FF997E71FF997E71FF997E71FF997E71FF997E
          71FF997E71FF997E71FFFFEAE2FF705040FF1B130F3D00000000000000000000
          0000C0B0A0FFFFFEFDFFFFFCFBFFFFFAF8FFFFF8F5FFFFF6F3FFFFF4F0FFFFF2
          EDFFFFEFEAFFFFEDE7FFFFEAE3FF705040FF1B130F3D00000000000000000000
          0000D0C0B0FFFFFEFEFF997E71FF997E71FF997E71FF997E71FF997E71FF997E
          71FF997E71FF997E71FFFFEBE4FF706050FF1B130F3D00000000000000000000
          0000D0C0B0FFFFFEFEFFFFFDFCFFFFFCFBFFFFFAF8FFFFF8F6FFFFF6F3FFFFF4
          F0FFFFF1EDFFFFEFEAFFFFEBE5FF806850FF1B130F3D00000000000000000000
          0000E09070FFE09070FFE09070FFE09060FFE08050FFE08050FFE08050FFE080
          50FFE08050FFD07850FFD07840FFD07040FF1B130F3D00000000000000000000
          0000E09870FFFFD8C0FFFDD3BAFFFDCEB1FFFBC7A6FFF9BF9BFFF7B78FFFF5AF
          84FFF4A979FFF2A26FFFF09860FFD07040FF1B130F3D00000000000000000000
          0000E09880FFFFD8C0FFFFD3BAFFFDCFB2FFFBC8A7FFF9C19DFFF7B991FFF6B1
          85FFF4A97AFFF2A36FFFF09861FFD07040FF1B130F3D00000000000000000000
          0000E0A080FFE09870FFE09070FFE09070FFE08860FFE08850FFE08050FFE080
          50FFE08050FFE07840FFE07840FFE07040FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001B1411361B1411361B1411361B1411361B1411361B1411361B1411361B14
          11361B1411361B1411361B1411361B141136000000000000000000000000C0A8
          90FF806050FF806050FF806050FF806050FF806050FF806050FF806050FF8060
          50FF806050FF806050FF806050FF1B141136000000000000000000000000C0A8
          90FFFFEEE8FFFFEDE7FFFFECE5FFFFEBE5FFFFEAE3FFFFE9E2FFFFE9E1FFFFE8
          E0FFFFE8E0FFFFE8E0FF806050FF1B141136000000000000000000000000C0A8
          A0FFFFEFEAFFFFEEE9FFFFEDE7FFFFECE5FFF9E4DDFFE1C9C0FFF9E3DBFFFFE9
          E0FFFFE8E0FFFFE8E0FF806050FF1B141136000000000000000000000000C0A8
          A0FFFFF0EBFFFFEFE9FFFFEEE8FFD2C3DCFF2D36D1FFBEAEC4FFE1C9BFFFF9E3
          DAFFFFE8E1FFFFE8E0FF806050FF1B141136000000000000000000000000C0A8
          A0FFFFF1ECFFFFF0EBFFD2C6DFFF2D36D1FF2D36D1FF2D36D1FFBEADC3FFE1C9
          C0FFF9E3DAFFFFE8E0FF806050FF1B141136000000000000000000000000C0A8
          A0FFFFF2EDFFD2C7E1FF2D36D1FF2D36D1FF2D36D1FF2D36D1FF2D36D1FFBEAD
          C2FFE1C9BFFFF9E3DAFF806050FF1B141136000000000000000000000000C0A8
          A0FFD7CFE8FF2D36D1FF2D36D1FF2D36D1FF2D36D1FF2D36D1FF2D36D1FF2D36
          D1FFBEADC2FFE1C8BFFF806050FF1B141136000000000000000000000000C0A8
          A0FF2D36D1FF2D36D1FF2D36D1FF2D36D1FF2D36D1FF2D36D1FF2D36D1FF2D36
          D1FF2D36D1FFBEACC2FF806050FF2018143F000000000000000000000000C0A8
          A0FFD7D3EFFF2D36D1FF2D36D1FF2D36D1FFD2C9E4FFD7CEE8FF2D36D1FF2D36
          D1FF2D36D1FF2D36D1FF705869FF332620660605040C0000000000000000C0A8
          A0FFFFF9F7FFD7D2EEFF2D36D1FFD7D1ECFFFFF4F0FFFFF3EFFFEADFEAFFB6B0
          E2FF2D36D1FF2D36D1FF2D36D1FF322942831F17133D0000000000000000C0A8
          A0FFFFF9F7FFFFF8F7FFFFF8F5FFFFF7F3FFFFF5F2FFFFF4F0FFFFF2EEFFFFF1
          EDFFEADDE8FFB6AEE1FF2D36D1FF2D36D1FF11112E420000000000000000C0A8
          A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A890FFC0A0
          90FFB0A090FFB0A090FFA39597FF101349592D36D1FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000030000
          000E000000190000001C0000001F000000220000002400000026000000270000
          002900000029000000290000002000000009000000010000000018577FBB0D61
          96FF075B92FF075A92FF065A92FF065A92FF065A92FF065A92FF065A93FF065A
          92FF075A92FF065A92FF065C93FE010A103C00000005000000000C6199FB4198
          C2FF6BB5D3FF38C7ECFF0BB8E6FF0BB4E5FF0BB0E3FF0BADE1FF0AA9DFFF09A7
          DDFF09A2DCFF099DDAFF0980B7FF065277C20000000E0000000009679EFF5CBA
          E6FF2686B2FF90E7F8FF1BCCF3FF1CC9F1FF19C6EFFF15C1ECFF0DBCEAFF0CB8
          E8FF0BB4E6FF0BAFE4FF0BA2D9FF0A75A8FC0003041D000000000B75AAFF6CC8
          F2FF3994BEFF97CEE2FF59DFF8FF3CD7F6FF39D4F5FF31D0F3FF0F875AFF066F
          34FF0DA4A8FF11BBEAFF10B7E8FF0C83B6FF06476190000000000D82B6FF83D4
          F6FF3EAEDEFF3F8EB7FFB3F3FDFF62E3FAFF5EE1F9FF53DDF8FF45D9F5FF0E7C
          42FF04621FFF0D9D8DFF16C4EDFF12ACD9FF0A73A4F200000000108CBFFF9DE2
          F9FF27BBF1FF3485B3FFBDDBE9FF9AF0FDFF86ECFCFF78E9FBFF65E3F9FF3BC3
          BDFF06631CFF066926FF17B6BDFF1CCBF1FF0C7CAFFF06384C65108FC4FFB8ED
          FCFF3BCAF5FF52B1D8FF5B98BDFFF9FEFFFFF3FDFFFFE8FCFEFFD7F9FEFFC1F5
          FDFF298948FF057212FF1C834BFF59DEF7FF32B0D6FF12709CE11093C8FFD0F6
          FEFF56DBF9FF4BD4F7FF2170A4FF065E98FF075E98FF065E98FF075E98FF075E
          98FF086B57FF066B14FF045E17FF06626FFF075E98FF076099FF1197CDFFE3FB
          FFFF77EBFDFF6AE7FCFF5CE1FBFF50DBF9FF45D6F9FF3AD0F8FF32CBF6FF2BC6
          F5FF1FB5C5FF056516FF067514FF076D41FF0000000900000000129BD0FFEFFD
          FFFF9AF4FFFF85F2FFFF7CEFFEFF6DEAFDFF6DE8FCFFB3F2FDFF32A960FF076F
          20FF087422FF10B92DFF0BA21DFF07741DFF045C13EE03480DB1129ED4FFF7FE
          FFFFCCF8FEFFA0F5FFFF7EE7F8FF1091C5FF108EC2FF0F8BBEFF1A9696FF1891
          3DFF36DD7CFF23D95DFF13C434FF0B9C1CFF056014F5000801122BA7D7FBE0F3
          FAFFF2F8FAFBD9F2F9FF28A0CEFB00000002000000020000000200000003198C
          3AFB64E4A7FF44E88FFF21CD51FF066C1BFD021C05380000000047879DAF2BA8
          D7FB12A0D5FF29A4D4FB44829AAF000000000000000000000000000000003A8E
          54D467C78FFF69EDACFF138B35FE063F116E0000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000365E
          428042AB63FF3FB168FF156B2FAA000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000090E
          0A122A994DF4298847CF00000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000004040411080707260A08082F080707270505051503030308020203050303
          030C0706071B0A09082B0A080729060505160303030701010101000000000000
          00000707082218171A792016129D1917197F0D0B0B3E07070720060606180908
          0929110F0F50201C1B941E17168E0C0C0C380404040F02020202000000000000
          0000114969AC1D83B8FF213A4AD8291A15C8201C1CA3100E0E520E0C0D451519
          1C714289ABF73982A8F8231F1DB5100F104C0405051302020203000000000000
          00000E354C7FB3EDFCFF05BFF0FF3D7E9EFB2C1B15DA261E1EBC1E252BA72E92
          BAFDACF0FFFF269FC6FF21272EB40C0B0B3A0304040F01010202000000000202
          0202060B0F2182B9D1FF16D0FFFF23D4FCFF2B7EA4FE293137F0509BBFFD91EB
          FFFF0ACFFFFF3480A6FB19181A820908092A0304040A01010101000000000202
          020405050512285E7AB575E3FFFF0FD1FFFF45E0FCFF65B5D9FFAEF9FFFF46E3
          FFFF09BBEBFF243743DD120F0E5B080708250303040A01010102000000000405
          061208080926133A509C91C8E6FF02CCFFFF2EDBFFFF79F0FFFF94FDFFFF5FEB
          FFFF178EBBFF2C1D17D71814137A0C0B0B3D0606061B0303030A000000000C0D
          0F3C1514156520303CC140AED4FF16D1FFFF16D3FFFF50E6FFFF88F9FFFF7AF4
          FFFF1F7FAAFF2D2523EE291A12CD1E1A1B980E0C0B4607070722000000003843
          4DAF2C82A9F90BBBEBFF42E2FFFF23D7FFFF04CDFFFF3ADFFFFF73F2FFFF93FD
          FFFF52E4FCFF1496C3FF22475CF42A1B15D3221B18AB10111456092B3F6005A4
          D6FF41E1FFFF90FCFFFF67EEFFFF36DEFFFF06CEFFFF20D6FFFF58E9FFFF90FC
          FFFF6FF1FFFF32DDFFFF03BEF0FF2889B3FE222B32C617181C78286C90BFB0DF
          EEFFBCE3EEFFA7CCDDFF80B2CCFF94BFD4FF48DCFFFF0ACFFFFF48D8F6FF80B2
          CCFFBBDCE8FFB4E0EEFFB1E7F6FF8EE2F6FF194662C60D0E104018506D9D1D5A
          7BBD1E5A7BBE1D5A7ABE1E5270B2256C95E193ECFFFF04CDFFFF12A4D1FF285C
          79ED153C53A913425EA611415DA112496AB00A0F143705060718000000000000
          00000000000000000000000000001E5D7FC5A4D9F2FF13D2FFFF1889B8FF231F
          1FB00D0C0C41060607190303040E0303040C0304040A02020306000000000000
          00000000000000000000000000001C4F6DA690C4E0FF27D9FFFF3182A8FA1D1D
          21900A0A0B2E0303040B01010102010101010101010101010101000000000000
          0000000000000000000000000000183F547D508DADDC3FCFF0FF20465FD61417
          1B6308080A220303030700000000000000000000000000000000000000000000
          000000000000000000000000000000000000153C5070246B8EBF040F16200000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000140E0C2E140E0C2E140E0C2E140E0C2E140E0C2E140E0C2E140E0C2E140E
          0C2E140E0C2E140E0C2E140E0C2E140E0C2E140E0C2E0000000000000000C0A8
          90FF807060FF806050FF806050FF806050FF806050FF806050FF806050FF8060
          50FF806050FF806050FF806050FF806050FF140E0C2E0000000000000000C0A8
          90FFFFFAF8FFFFEEE8FFFFEDE7FFFFECE5FFFFEBE5FFFFEAE3FFFFE9E2FFFFE9
          E1FFFFE8E0FFFFE8E0FFFFE8E0FF806050FF140E0C2E0000000000000000C0A8
          A0FFFFFBFAFFE4D7E9FF4048E0FFE4D6E6FFFFECE5FFFFEBE4FFFFEAE3FFFFE9
          E2FFFFE9E0FFFFE8E0FFFFE8E0FF806050FF140E0C2E0000000000000000C0A8
          A0FFFFFCFAFF4048E0FF4048E0FF4048E0FFE4D5E5FFFFECE5FFFFEBE4FFAF92
          84FFAF9184FFAF9184FFFFE8E0FF806050FF140E0C2E0000000000000000C0A8
          A0FFFFFCFCFFE4D9EAFF4048E0FFE4D7E8FF4048E0FFE4D5E5FFFFECE5FFFFEA
          E3FFFFEAE3FFFFE9E1FFFFE8E0FF806050FF140E0C2E0000000000000000C0A8
          A0FFFFFDFCFFFFF2EDFFFFF1ECFFFFF0E9FFE4D7E7FF4048E0FFFFECE5FFFFEB
          E4FFFFEAE2FFFFEAE2FFFFE9E1FF806050FF140E0C2E0000000000000000C0A8
          A0FFFFFEFDFFE4DBECFF4048E0FFE4D8E9FFFFEFEAFFFFEEE8FFFFEDE6FFFFEC
          E5FFFFEAE4FFFFEAE2FFFFE9E2FF806050FF140E0C2E0000000000000000C0A8
          A0FFFFFEFEFF4048E0FF4048E0FF4048E0FFE4D8E9FFFFEEE9FFFFEEE8FFFFEC
          E6FFFFECE5FFFFEAE3FFFFE9E2FF806050FF140E0C2E0000000000000000C0A8
          A0FFFFFFFFFFE4DFF3FF4048E0FFE4DDF0FF4048E0FFE4DBEDFFFFF2EDFFB69D
          91FFB69C90FFB69C90FFFFEDE7FF806050FF140E0C2E0000000000000000C0A8
          A0FFFFFFFFFFFFF9F7FFFFF7F5FFFFF7F3FFE4DDEFFF4048E0FFFFF3EFFFFFF2
          EDFFFFF1EBFFFFEFEAFFFFEEE8FF806050FF140E0C2E0000000000000000C0A8
          A0FFFFFFFFFFFFF9F7FFFFF8F7FFFFF8F5FFFFF7F3FFFFF5F2FFFFF4F0FFFFF2
          EEFFFFF1EDFFFFF0EBFFFFEFE9FF907860FF140E0C2E0000000000000000C0A8
          A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A8
          90FFC0A090FFB0A090FFB0A090FFB0A090FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000503020A110C09261C130F3E241813502418
          13501C130F3E110C09260503020A000000000000000000000000000000000000
          0000000000000000000008200E2E0F6235920B7E58D0038171F1038182F10B72
          7CD0165563A1232A2E6A1B120E3C090604130000000000000000000000000000
          00000000000004350A41228737C954C983FFAAF1D5FFDCFDF8FFDCFDFDFFAAE8
          F1FF54A9C9FF256088D01F2E437D1B120E3C0503020A00000000000000000000
          0000031B011D09770BBC80DF8CFFDAFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFDAF2FFFF80AEE0FF0C357BCB23202E6A110C092600000000000000000000
          00001C57007028AE01FFC7FEC1FFE4FFE7FFE6FFECFFE6FFF5FFE6FFFFFFE5F8
          FFFFE5F2FFFFC0D5FFFF002BAFFF162063A11C130F3E00000000000000000000
          0000477600B774D400FFCCFEA1FFD5FFC0FFC9FFC4FFC1FFD0FFC1FEFFFFC1DF
          FFFFC0CFFFFFA1AFFFFF0017D6FF0B117CD02418135000000000000000000000
          00006C8000EACFF100FFE5FE4BFFEDFE83FFF2FEA4FFF3FEADFFADADFFFFA4A4
          FFFF8383FFFF4B4BFFFF0000F3FF030282F12418135000000000000000000000
          0000807C00EAF2E800FFFEEF0BFFFEE94CFFFEE48CFFFEC899FFFE99A0FFFE8C
          C9FFFE4CCDFFFD0BCCFFF200C9FF82026EF11C130F3E00000000000000000000
          0000766700B7D5B200FFFEC400FFFECC6AFFFFBA80FFFE947FFFFE7F88FFFE7F
          A8FFFE6AB8FFFD00A5FFD50099FF810760D0110C092600000000000000000000
          000057430070AE7B00FFFE9900FFFFBD85FFFFB9A0FFFFA6A0FFFE9FA6FFFE9F
          B5FFFE85B5FFFD0086FFAE006BFF670A44920503020A00000000000000000000
          00001B12001D744200B0C05900FFFE925FFFFFC8BDFFFEBFBEFFFEBDC2FFFEBD
          C9FFFE5F92FFBF0053FF7D0641C32305142E0000000000000000000000000000
          00000000000033170039742900B0B53A16FFE7786CFFFBB5B5FFFBB4B9FFE66C
          80FFB51641FF7A042DBC36021941000000000000000000000000000000000000
          000000000000000000001B07001D570E0070760700B7800002EA800009EA7600
          11B7570014701B00091D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000036261D45C88F6EFFC88F6EFFC88F6EFFC88F6EFFC88F6EFFC88F6EFFC88F
          6EFFC88F6EFFC88F6EFFC88F6EFFC88F6EFFC88F6EFF100B0915000000000000
          0000110C0916C58D6DFCC88F6EFFC88F6EFFC88F6EFFC88F6EFFC88F6EFFC88F
          6EFFC88F6EFFC88F6EFFC88F6EFFC88F6EFFB48163E600000000000000000000
          0000000000006C4D3B8AC78E6EFEC88F6EFFC88F6EFFC88F6EFFA3755AD0B17F
          61E2C88F6EFFC88F6EFFC88F6EFFC18A6AF64833275C00000000000000000000
          00000000000000000000221A1A33846050B1C68E6DFD8F664FB7020101030F0B
          0814AF7D60DFC18A6BF77554419616100C1D00000000000000001C2674871D27
          788C1D27788C1E27778C232A738C1F1F42591D16182E291D16356246367D563D
          2F6E2B1F1838100C0917000000000000000000000000000000002C3CB5D33548
          DBFF3548DBFF3548DBFF3548DBFF2E3BABCB1F181F36B88366ECC88F6EFFC88F
          6EFFA37459D10D0A08162D2A2A9B302F2FAC302F2FAC2E2C2CA4192267793548
          DBFF3548DBFF3446D5F82937A7C419172D3FA57861DAC88F6EFFC88F6EFFC88F
          6EFFC88F6EFF7C5A46A92B252271474545FF474545FF393838CD000000000F15
          404B2A39ADCA0D123842000000003E2F305EC88F6EFFC88F6EFFC88F6EFFC88F
          6EFFC88F6EFFC78E6EFE1E161335444242F4464444FC1C1B1B66000000000000
          000002030A0C253399B32629627D7254499DC88F6EFFC88F6EFFC88F6EFFC88F
          6EFFC88F6EFFC88F6EFF49352A69262322760D0D0D3100000000000000000000
          00001F2A80963548DBFF22265E7772534C9FC88F6EFFC88F6EFFC88F6EFFC88F
          6EFFC88F6EFFC88F6EFF50392D6D000000010000000000000000000000000202
          080A3345D2F53548DBFF252D7893543E3F7CC88F6EFFC88F6EFFC88F6EFFC88F
          6EFFC88F6EFFC88F6EFF31241D4A232120730000000000000000000000000A0E
          2A323548DBFF3548DBFF2E3DB3D41712192AC58D6DFCC88F6EFFC88F6EFFC88F
          6EFFC88F6EFFB58264EA0F0C0A1E444242F50303030E0000000000000000090D
          282F3548DBFF3548DBFF3548DBFF1A1B40534B38386FC48C6CFAC88F6EFFC88F
          6EFFBA8566EF2E221B472F2B298C474545FF0E0E0E3400000000000000000102
          07093345D0F33548DBFF3548DBFF3345CFF31C1C3F54100C0C1938281F4C2F22
          1C470E0B091B2D282684474545FE474545FF0C0C0C2C00000000000000000000
          0000131A4F5C3244CFF13548DBFF3143C9EB0F153F4A00000000000000003331
          2FAC454343F7474545FF474545FF424040EC0101010600000000000000000000
          0000000000000101040505061418000002030000000000000000000000000F0F
          0F383B3939D3464444FB3D3B3BDB131313470000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00C0000000C0010000E0010000F0030000000F000000000000000000008800
          0000C0010000C003000080030000800100008001000080010000C1810000E383
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000E250D350206
          0209163814510918082309180823040B04110E230C3200010002000100021637
          144F17391452091808230918082316381451020602090E250D353F9E39E20F26
          0E3847B340FF2761238C2761238C173A1554378A32C60712061B0712061B47B3
          40FF47B340FF2761238C2761238C47B340FF0F260E383F9E39E23F763BE3101E
          0E39477642FF2749248E2749248E182D1656376734C7080F071D080F071D4777
          42FF477642FF2749248E2749248E477642FF101E0E393F763BE340443DE61114
          103E474545FF292E2794292E2794191D185B393D36CC0809081F080A081F4745
          45FF474545FF292E2794292E2794474545FF1114103E40443DE640443DE61112
          103E474545FF292D2794292D2794191B185B393C36CC0808081F0808081F4745
          45FF474545FF292D2794292D2794474545FF1112103E40443DE640443DE61112
          103E474545FF292D2794292D2794191B185B393C36CC0808081F0808081F4745
          45FF474545FF292D2794292D2794474545FF1112103E40443DE640443DE61112
          103E474545FF292D2794292D2794191B185B393C36CC0808081F0808081F4745
          45FF474545FF292D2794292D2794474545FF1112103E40443DE640443DE61112
          103E474545FF292C2794292C2794191B185B393C36CC0808081F0808081F4745
          45FF474545FF292C2794292C2794474545FF1112103E40443DE63F3F3DE31010
          0F3A474545FF2828268F2828268F18181757383835C80808071D0808071D4745
          45FF474545FF2828268F2828268F474545FF10100F3A3F3F3DE33F3D3DE20F0F
          0F38474545FF2726258C2726258C17161654373635C60707071C0707071C4745
          45FF474545FF2726258C2726258C474545FF0F0F0F383F3D3DE23F3D3DE20F0F
          0F38474545FF2726268C2726268C17161654373636C60707071B0707071B4745
          45FF474545FF2726268C2726268C474545FF0F0F0F383F3D3DE20E0E0E340202
          0208161616510909092309090923040404100D0D0D3100000002000000021515
          154E17161652090909230909092316161651020202080E0E0E34000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF0092929200DEDEDE00A4A3A400ECECEC00A4A4A300DEDDDE00A4A3
          A400ECECEC00A4A4A300DDDEDD00A4A3A400ECECEC00A4A4A300FFFFFF00FFFF
          FF00FFFFFF0096969600DFE0E000BBBBBB00BBBCBC00BCBCBB00DFE0E000BBBB
          BB00BBBCBC00BCBCBB00E0E0E000BBBBBB00BBBCBC00BCBCBB00FFFFFF00FFFF
          FF00FFFFFF009A9A9A00E3E2E200E2E2E200E2E2E300E2E2E200E3E2E300E2E3
          E200E2E3E200E2E2E300E2E2E200E2E3E200E3E3E200E2E2E200FFFFFF00FFFF
          FF00FFFFFF009E9E9E00E5E4E500E5E4E500E4E5E500E4E4E500E4E4E400E4E5
          E500E5E5E400E5E5E400E4E4E400E5E4E400E5E4E500E4E5E500FFFFFF00FFFF
          FF00FFFFFF00A1A1A100E7E7E700929292009292920092929200E6E7E7009292
          92009292920092929200E7E7E700929292009292920092929200FFFFFF00FFFF
          FF00FFFFFF00A5A5A500E9E9E900A4A3A400ECECEC00A4A4A300E9E9E900A4A3
          A400ECECEC00A4A4A300E9E9E900A4A3A400ECECEC00A4A4A300FFFFFF00FFFF
          FF00FFFFFF00A9A9A900ECECEC00BBBBBB00BBBCBC00BCBCBB00EBECEB00BBBB
          BB00BBBCBC00BCBCBB00ECECEB00BBBBBB00BBBCBC00BCBCBB00FFFFFF00FFFF
          FF00FFFFFF00ADADAD00EEEEED00EEEEEE00EDEEEE00EDEEED00EEEEEE00EEEE
          EE00EEEDEE00EEEEEE00EDEDEE00EEEDEE00EDEDED00EEEEEE00FFFFFF00FFFF
          FF00FFFFFF00B0B0B000EFEFF000EFF0F000F0F0F000EFEFEF00F0EFF000EFF0
          F000F0F0F000F0F0F000F0EFF000F0EFF000F0F0F000F0EFF000FFFFFF00FFFF
          FF00FFFFFF00B4B4B400F2F1F100326637003266370032663700326637003266
          3700326637003266370032663700326637003266370032663700FFFFFF00FFFF
          FF00FFFFFF00B7B7B700F4F4F40032663700E5F6E900E5F6E900DEF2E300D1EC
          D800C1E4CB00AFDCBB009ED3AC008CC99C007BC18E006DB98200FFFFFF00FFFF
          FF00FFFFFF00BABABA00F6F6F50032663700EBFBEF00EBFBEF00E8F9EC00DDF4
          E300CEECD600BBE4C700A9DAB60096D1A60084C8970074BF8900FFFFFF00FFFF
          FF00FFFFFF00BDBDBD00F7F7F70032663700EBFBEF00EBFBEF00EBFBEF00E1F6
          E700D4EFDB00C2E7CD00B0DEBC009DD4AC008ACB9C007AC28E00FFFFFF00FFFF
          FF00FFFFFF00BFBFBF00F9F8F900326637003266370032663700326637003266
          3700326637003266370032663700326637003266370032663700FFFFFF00FFFF
          FF00FFFFFF00C1C1C100FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
          FA00FAFAFA00FAFAFA00FAF9FA00FAFAFA00FAFAFA00FAFAFA00FFFFFF00FFFF
          FF00FFFFFF00DCDCDC00C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
          C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000F202B0033
          698E0057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057
          B4F20057B4F20057B4F20057B4F20057B4F20033698E000F202B00346B8E2E87
          DBFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF2E87DBFA00346B8E025AB6EF4DA6
          F4FF0582F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF83C1F8FF95CAF9FF0482F1FF0582F1FF4DA6F4FF025AB6EF045DBCF24EA7
          F5FF0482F1FF0281F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0281F1FF82C1
          F8FFFFFFFFFFFFFFFFFF94CAF9FF0482F1FF4EA7F5FF045DBCF20761BFF24EA7
          F5FF0482F1FF0281F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF82C1F8FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF9BCDF9FF4EA7F5FF0761BFF20964C3F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FFFFFFFFFFFFFFFFFF0281F1FF0482F1FF4EA7F5FF0964C3F20C67C8F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FFFFFFFFFFFFFFFFFF0281F1FF0482F1FF4EA7F5FF0C67C8F20F6ACCF24EA7
          F5FF0482F1FF0281F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FFFFFFFFFFFFFFFFFF0281F1FF0482F1FF4EA7F5FF0F6ACCF2116ED0F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FFFFFFFFFFFFFFFFFF0281F1FF0482F1FF4EA7F5FF116ED0F21371D4F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FF0281F1FF0482F1FF4EA7F5FF1371D4F21675D9F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FFFFFF
          FFFFFFFFFFFFFFFFFFFF0281F1FF0482F1FF4EA7F5FF1675D9F21878DDF24EA7
          F5FF0482F1FF0281F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FFFFFF
          FFFFFFFFFFFF0281F1FF0281F1FF0482F1FF4EA7F5FF1878DDF21B7BE0F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF0281F1FF0281F1FF0281F1FF0482F1FF4EA7F5FF1B7BE0F21D7EE3F24EA7
          F5FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0482F1FF4EA7F5FF1D7EE3F2134E8D943C98
          EFFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF3C98EFFA134E8D9406192E30134F
          8E942082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082
          E8F22082E8F22082E8F22082E8F22082E8F2134F8E9406192E30}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000F202B0033
          698E0057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057
          B4F20057B4F20057B4F20057B4F20057B4F20033698E000F202B00346B8E2E87
          DBFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF2E87DBFA00346B8E025AB6EF4DA6
          F4FF0281F1FF0281F1FFB0D7F9FF0281F1FF0281F1FF0281F1FFB0D7F9FFB0D7
          F9FFB0D7F9FF0281F1FFC4E1FAFF0281F1FF4DA6F4FF025AB6EF045DBCF24EA7
          F5FF0281F1FF0281F1FFB0D7F9FFB0D7F9FFB0D7F9FF0281F1FFB0D7F9FF0281
          F1FFB0D7F9FF0281F1FFBFDEFAFFBFDEFAFF4EA7F5FF045DBCF20761BFF24EA7
          F5FF0281F1FF0281F1FFB0D7F9FF0281F1FFB0D7F9FF0281F1FFB0D7F9FF0281
          F1FFB0D7F9FF0281F1FFC4E1FAFF0281F1FF4EA7F5FF0761BFF20964C3F24EA7
          F5FF0281F1FF0281F1FFB0D7F9FFB0D7F9FFC4E1FAFF0281F1FFB0D7F9FFB0D7
          F9FFB0D7F9FF0281F1FFBFDEFAFFBFDEFAFF4EA7F5FF0964C3F20C67C8F24EA7
          F5FF0281F1FF71B8F6FF71B8F6FF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FF0281F1FF0281F1FF4EA7F5FF0C67C8F20F6ACCF24EA7
          F5FF0281F1FF71B8F6FF96CAF8FF71B8F6FF71B8F6FF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FF0281F1FF0281F1FF4EA7F5FF0F6ACCF2116ED0F24EA7
          F5FF0281F1FF42A1F4FF71B8F6FF71B8F6FF71B8F6FF42A1F4FF0281F1FF0281
          F1FF0281F1FF0281F1FF0281F1FF0281F1FF4EA7F5FF116ED0F21371D4F24EA7
          F5FF0281F1FF0281F1FF0281F1FF71B8F6FF95CAF9FF95CAF9FF0281F1FF42A1
          F4FF42A1F4FF71B8F6FF0281F1FF0281F1FF4EA7F5FF1371D4F21675D9F24EA7
          F5FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FFB0D7FAFF96CAF8FFB0D7
          FAFF95CAF9FF71B8F6FF0281F1FF0281F1FF4EA7F5FF1675D9F21878DDF24EA7
          F5FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF42A1F4FFB0D7FAFF71B8
          F6FF0281F1FF0281F1FF0281F1FF0281F1FF4EA7F5FF1878DDF21B7BE0F24EA7
          F5FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FFB0D7FAFF0281
          F1FF0281F1FF0281F1FF0281F1FF0281F1FF4EA7F5FF1B7BE0F21D7EE3F24EA7
          F5FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF95CAF9FF0281
          F1FF0281F1FF0281F1FF0281F1FF0281F1FF4EA7F5FF1D7EE3F2134E8D943C98
          EFFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF3C98EFFA134E8D9406192E30134F
          8E942082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082
          E8F22082E8F22082E8F22082E8F22082E8F2134F8E9406192E30}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000F202B0033
          698E0057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057
          B4F20057B4F20057B4F20057B4F20057B4F20033698E000F202B00346B8E2E87
          DBFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF2E87DBFA00346B8E025AB6EF4DA6
          F4FF0582F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0582F1FF4DA6F4FF025AB6EF045DBCF24EA7
          F5FF0482F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0482F1FF0281F1FF0281F1FF0482F1FF4EA7F5FF045DBCF20761BFF24EA7
          F5FF0482F1FFFCFDFDFFFDFDFDFF0281F1FF0281F1FF0281F1FF0281F1FF2190
          F2FF9FCEF9FFF5F9FDFF0281F1FF0482F1FF4EA7F5FF0761BFF20964C3F24EA7
          F5FF0482F1FFFFFFFFFFFFFFFFFF0281F1FF0281F1FF2190F2FF9FCEF9FFDEEE
          FCFFFFFFFFFFFFFFFFFF0281F1FF0482F1FF4EA7F5FF0964C3F20C67C8F24EA7
          F5FF0482F1FFFFFFFFFFFFFFFFFF2190F2FF9FCEF9FFDEEEFCFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF0281F1FF0482F1FF4EA7F5FF0C67C8F20F6ACCF24EA7
          F5FF0482F1FFFFFFFFFFFFFFFFFFE3F0FCFF97CBF8FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF0281F1FF0482F1FF4EA7F5FF0F6ACCF2116ED0F24EA7
          F5FF0482F1FFFFFFFFFFFFFFFFFF0984F1FFA7D2F9FF8FC7F8FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF0281F1FF0482F1FF4EA7F5FF116ED0F21371D4F24EA7
          F5FF0482F1FFFEFEFEFFFFFFFFFF0281F1FF0281F1FF70B7F6FFBFDEFAFFFFFF
          FFFFFFFFFFFFFFFFFFFF0281F1FF0783F1FF4EA7F5FF1371D4F21675D9F24EA7
          F5FF0482F1FFFFFFFFFFFEFEFEFF0281F1FF0281F1FF0984F1FF41A0F4FFCEE6
          FBFFFFFFFFFFFFFFFFFF0281F1FF0482F1FF4EA7F5FF1675D9F21878DDF24EA7
          F5FF0482F1FFFDFDFDFFFDFDFDFF0281F1FF0281F1FF0281F1FF0281F1FF2190
          F2FF8FC7F8FF9FCEF9FF0281F1FF0482F1FF4EA7F5FF1878DDF21B7BE0F24EA7
          F5FF0482F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FF0281F1FF0482F1FF4EA7F5FF1B7BE0F21D7EE3F24EA7
          F5FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0482F1FF4EA7F5FF1D7EE3F2134E8D943C98
          EFFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF3C98EFFA134E8D9406192E30134F
          8E942082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082
          E8F22082E8F22082E8F22082E8F22082E8F2134F8E9406192E30}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000F202B0033
          698E0057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057
          B4F20057B4F20057B4F20057B4F20057B4F20033698E000F202B00346B8E2E87
          DBFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF2E87DBFA00346B8E025AB6EF4DA6
          F4FF0582F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0582F1FF4DA6F4FF025AB6EF045DBCF24EA7
          F5FF0482F1FF0281F1FF97CBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF97CBF9FF0281F1FF0482F1FF4EA7F5FF045DBCF20761BFF24EA7
          F5FF0482F1FF0281F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FFFFFFFFFF0281F1FF0482F1FF4EA7F5FF0761BFF20964C3F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFF0281F1FFFFFFFFFF0281F1FFFFFFFFFFFFFF
          FFFF0281F1FFFFFFFFFF0281F1FF0482F1FF4EA7F5FF0964C3F20C67C8F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FFFFFFFFFF0281F1FF0482F1FF4EA7F5FF0C67C8F20F6ACCF24EA7
          F5FF0482F1FF0281F1FFFFFFFFFF0281F1FFFFFFFFFF0281F1FFFFFFFFFFFFFF
          FFFF0281F1FFFFFFFFFF0281F1FF0482F1FF4EA7F5FF0F6ACCF2116ED0F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FFFFFFFFFF0281F1FF0482F1FF4EA7F5FF116ED0F21371D4F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFF0281F1FFFFFFFFFF0281F1FFFFFFFFFFFFFF
          FFFF0281F1FFFFFFFFFF0281F1FF0482F1FF4EA7F5FF1371D4F21675D9F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FFFFFFFFFF0281F1FF0482F1FF4EA7F5FF1675D9F21878DDF24EA7
          F5FF0482F1FF0281F1FF97CBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF97CBF9FF0281F1FF0482F1FF4EA7F5FF1878DDF21B7BE0F24EA7
          F5FF0482F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FF0281F1FF0482F1FF4EA7F5FF1B7BE0F21D7EE3F24EA7
          F5FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0482F1FF4EA7F5FF1D7EE3F2134E8D943C98
          EFFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF3C98EFFA134E8D9406192E30134F
          8E942082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082
          E8F22082E8F22082E8F22082E8F22082E8F2134F8E9406192E30}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000F202B0033
          698E0057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057
          B4F20057B4F20057B4F20057B4F20057B4F20033698E000F202B00346B8E2E87
          DBFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF2E87DBFA00346B8E025AB6EF4DA6
          F4FFFDFDFDFFFFFFFFFFFDFDFDFF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FFFCFDFDFFFFFFFFFFFDFDFDFF4DA6F4FF025AB6EF045DBCF24EA7
          F5FFFFFFFFFF0281F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF0281F1FFFFFFFFFF4EA7F5FF045DBCF20761BFF24EA7
          F5FFF8FBFDFF0281F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FFFFFFFFFF0281F1FFF8FBFDFF4EA7F5FF0761BFF20964C3F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFF0281F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF0281F1FFFFFFFFFF0281F1FF0482F1FF4EA7F5FF0964C3F20C67C8F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FFFFFFFFFF0281F1FF0482F1FF4EA7F5FF0C67C8F20F6ACCF24EA7
          F5FF0482F1FF0281F1FFFFFFFFFF0281F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF0281F1FFFFFFFFFF0281F1FF0482F1FF4EA7F5FF0F6ACCF2116ED0F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FFFFFFFFFF0281F1FF0482F1FF4EA7F5FF116ED0F21371D4F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFF0281F1FFFFFFFFFFFFFFFFFF0281F1FF0281
          F1FF0281F1FFFFFFFFFF0281F1FF0482F1FF4EA7F5FF1371D4F21675D9F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FFFFFF
          FFFFFFFFFFFFFFFFFFFF0281F1FF0482F1FF4EA7F5FF1675D9F21878DDF24EA7
          F5FFFDFDFDFF0281F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FFFFFF
          FFFFB5DAFBFF52A9F5FF0281F1FFF9FBFDFF4EA7F5FF1878DDF21B7BE0F24EA7
          F5FFFEFEFEFF0281F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF52A9F5FF0281F1FF0281F1FFFFFFFFFF4EA7F5FF1B7BE0F21D7EE3F24EA7
          F5FFFDFDFDFFFFFFFFFFFCFDFDFF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FFF9FBFDFFFEFEFEFFFBFCFDFF4EA7F5FF1D7EE3F2134E8D943C98
          EFFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF3C98EFFA134E8D9406192E30134F
          8E942082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082
          E8F22082E8F22082E8F22082E8F22082E8F2134F8E9406192E30}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000F202B0033
          698E0057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057
          B4F20057B4F20057B4F20057B4F20057B4F20033698E000F202B00346B8E2E87
          DBFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF2E87DBFA00346B8E025AB6EF4DA6
          F4FF0582F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0582F1FF4DA6F4FF025AB6EF045DBCF24EA7
          F5FF0482F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0482F1FF0281F1FF0281F1FF0482F1FF4EA7F5FF045DBCF20761BFF24EA7
          F5FF0482F1FF0281F1FFF5F9FDFF9FCEF9FF2190F2FF0281F1FF0281F1FF0281
          F1FF0281F1FFF9FBFDFFF9FBFDFF0482F1FF4EA7F5FF0761BFF20964C3F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFFFFFFFFFFDEEEFCFF9FCEF9FF2190F2FF0281
          F1FF0281F1FFFEFEFEFFFFFFFFFF0482F1FF4EA7F5FF0964C3F20C67C8F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEEEFCFF9FCE
          F9FF2190F2FFFFFFFFFFFFFFFFFF0482F1FF4EA7F5FF0C67C8F20F6ACCF24EA7
          F5FF0482F1FF0281F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABD5
          FAFFE3F0FCFFFFFFFFFFFFFFFFFF0482F1FF4EA7F5FF0F6ACCF2116ED0F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6E2FBFF87C3
          F7FF0984F1FFFFFFFFFFFFFFFFFF0482F1FF4EA7F5FF116ED0F21371D4F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFFFFFFFFFFFFFFFFFFCEE6FBFF399CF3FF0281
          F1FF0281F1FFFFFFFFFFFFFFFFFF0783F1FF4EA7F5FF1371D4F21675D9F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFFC7E2FBFF87C3F7FF0984F1FF0281F1FF0281
          F1FF0281F1FFFEFEFEFFFEFEFEFF0482F1FF4EA7F5FF1675D9F21878DDF24EA7
          F5FF0482F1FF0281F1FFD7EAFBFF399CF3FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FFF0F6FDFFF0F6FDFF0482F1FF4EA7F5FF1878DDF21B7BE0F24EA7
          F5FF0482F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FF0281F1FF0482F1FF4EA7F5FF1B7BE0F21D7EE3F24EA7
          F5FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0482F1FF4EA7F5FF1D7EE3F2134E8D943C98
          EFFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF3C98EFFA134E8D9406192E30134F
          8E942082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082
          E8F22082E8F22082E8F22082E8F22082E8F2134F8E9406192E30}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000F202B0033
          698E0057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057
          B4F20057B4F20057B4F20057B4F20057B4F20033698E000F202B00346B8E2E87
          DBFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF2E87DBFA00346B8E025AB6EF4DA6
          F4FF0582F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0582F1FF4DA6F4FF025AB6EF045DBCF24EA7
          F5FF0482F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FF0281F1FF0482F1FF4EA7F5FF045DBCF20761BFF24EA7
          F5FF0482F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF0482F1FF4EA7F5FF0761BFF20964C3F24EA7
          F5FF0482F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FFFFFFFFFF0482F1FF4EA7F5FF0964C3F20C67C8F24EA7
          F5FF0482F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FFFFFFFFFF0482F1FF4EA7F5FF0C67C8F20F6ACCF24EA7
          F5FF0482F1FFFFFFFFFF0281F1FF0281F1FF2E97F3FFFFFFFFFFFFFFFFFF2E97
          F3FF0281F1FF0281F1FFFFFFFFFF0482F1FF4EA7F5FF0F6ACCF2116ED0F24EA7
          F5FF0482F1FFFFFFFFFF0281F1FF2E97F3FFFFFFFFFF2E97F3FF2E97F3FFFFFF
          FFFF2E97F3FF0281F1FFFFFFFFFF0482F1FF4EA7F5FF116ED0F21371D4F24EA7
          F5FF0482F1FFFFFFFFFF2E97F3FFFFFFFFFF2E97F3FF0281F1FF0281F1FF2E97
          F3FFFFFFFFFF2E97F3FFFFFFFFFF0482F1FF4EA7F5FF1371D4F21675D9F24EA7
          F5FF0482F1FFFFFFFFFFFFFFFFFF2E97F3FF0281F1FF0281F1FF0281F1FF0281
          F1FF2E97F3FFFFFFFFFFFFFFFFFF0482F1FF4EA7F5FF1675D9F21878DDF24EA7
          F5FF0482F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF0482F1FF4EA7F5FF1878DDF21B7BE0F24EA7
          F5FF0482F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FF0281F1FF0482F1FF4EA7F5FF1B7BE0F21D7EE3F24EA7
          F5FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0482F1FF4EA7F5FF1D7EE3F2134E8D943C98
          EFFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF3C98EFFA134E8D9406192E30134F
          8E942082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082
          E8F22082E8F22082E8F22082E8F22082E8F2134F8E9406192E30}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000F202B0033
          698E0057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057
          B4F20057B4F20057B4F20057B4F20057B4F20033698E000F202B00346B8E2E87
          DBFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF2E87DBFA00346B8E025AB6EF4DA6
          F4FF0582F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0582F1FF4DA6F4FF025AB6EF045DBCF24EA7
          F5FF0482F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0482F1FF0281F1FF0281F1FF0482F1FF4EA7F5FF045DBCF20761BFF24EA7
          F5FF0482F1FF0281F1FFF5F9FDFF9FCEF9FF2190F2FF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FF0281F1FF0482F1FF4EA7F5FF0761BFF20964C3F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFFFFFFFFFFDEEEFCFF9FCEF9FF2190F2FF0281
          F1FF0281F1FF0281F1FF0281F1FF0482F1FF4EA7F5FF0964C3F20C67C8F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEEEFCFF9FCE
          F9FF2190F2FF0281F1FF0281F1FF0482F1FF4EA7F5FF0C67C8F20F6ACCF24EA7
          F5FF0482F1FF0281F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABD5
          FAFFE3F0FCFF0281F1FF0281F1FF0482F1FF4EA7F5FF0F6ACCF2116ED0F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6E2FBFF87C3
          F7FF0984F1FF0281F1FF0281F1FF0482F1FF4EA7F5FF116ED0F21371D4F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFFFFFFFFFFFFFFFFFFCEE6FBFF399CF3FF0281
          F1FF0281F1FF0884F1FF0281F1FF0783F1FF4EA7F5FF1371D4F21675D9F24EA7
          F5FF0482F1FF0281F1FFFFFFFFFFC7E2FBFF87C3F7FF0984F1FF0281F1FF0281
          F1FF0281F1FF0281F1FF0281F1FF0482F1FF4EA7F5FF1675D9F21878DDF24EA7
          F5FF0482F1FF0281F1FFD7EAFBFF399CF3FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FF0281F1FF0482F1FF4EA7F5FF1878DDF21B7BE0F24EA7
          F5FF0482F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FF0281F1FF0482F1FF4EA7F5FF1B7BE0F21D7EE3F24EA7
          F5FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0482F1FF4EA7F5FF1D7EE3F2134E8D943C98
          EFFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF3C98EFFA134E8D9406192E30134F
          8E942082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082
          E8F22082E8F22082E8F22082E8F22082E8F2134F8E9406192E30}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000F202B0033
          698E0057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057
          B4F20057B4F20057B4F20057B4F20057B4F20033698E000F202B00346B8E2E87
          DBFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF2E87DBFA00346B8E025AB6EF4DA6
          F4FF0582F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0582F1FF4DA6F4FF025AB6EF045DBCF24EA7
          F5FF8BC6F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFBEDEFBFF0482F1FF4EA7F5FF045DBCF20761BFF24EA7
          F5FFFFFFFFFFC7E3FCFF2693F3FF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FFBEDEFBFF2794F3FF4EA7F5FF0761BFF20964C3F24EA7
          F5FFFFFFFFFF8EC7F9FF5EAFF6FF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FF85C2F8FF5FB0F6FF4EA7F5FF0964C3F20C67C8F24EA7
          F5FFFFFFFFFF55ABF6FF94CAF9FF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FF4FA8F5FF95CAF9FF4EA7F5FF0C67C8F20F6ACCF24EA7
          F5FFFFFFFFFF1D8EF2FFCDE6FCFF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FF178BF2FFCDE6FCFF4EA7F5FF0F6ACCF2116ED0F24EA7
          F5FFFFFFFFFF0281F1FFCDE6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFC1E0FCFF50A8F5FF116ED0F21371D4F24EA7
          F5FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FFFFFFFFFF0482F1FF4EA7F5FF1371D4F21675D9F24EA7
          F5FFFFFFFFFF0281F1FF0281F1FF0281F1FF8AC5F8FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF8AC5F8FF0482F1FF4EA7F5FF1675D9F21878DDF24EA7
          F5FFFFFFFFFF0281F1FF0281F1FF0281F1FFFFFFFFFF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FF0281F1FF0482F1FF4EA7F5FF1878DDF21B7BE0F24EA7
          F5FF8AC5F8FFFFFFFFFFFFFFFFFFFFFFFFFF8AC5F8FF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FF0281F1FF0482F1FF4EA7F5FF1B7BE0F21D7EE3F24EA7
          F5FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0482F1FF4EA7F5FF1D7EE3F2134E8D943C98
          EFFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF3C98EFFA134E8D9406192E30134F
          8E942082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082
          E8F22082E8F22082E8F22082E8F22082E8F2134F8E9406192E30}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000F202B0033
          698E0057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057
          B4F20057B4F20057B4F20057B4F20057B4F20033698E000F202B00346B8E2E87
          DBFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF2E87DBFA00346B8E025AB6EF4DA6
          F4FF0582F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0582F1FF4DA6F4FF025AB6EF045DBCF24EA7
          F5FF0482F1FF0281F1FF0281F1FF148AF2FF1188F2FFFFFFFFFFFFFFFFFF1188
          F2FF1188F2FF0582F1FF0281F1FF0482F1FF4EA7F5FF045DBCF20761BFF24EA7
          F5FF0482F1FF0281F1FF97CBF9FFDBEDFDFF2C96F3FFFFFFFFFFFFFFFFFF2693
          F3FFD3E9FDFFA6D3FAFF0582F1FF0482F1FF4EA7F5FF0761BFF20964C3F24EA7
          F5FF0482F1FF1188F2FFD5EAFDFFFFFFFFFFEDF6FEFFFFFFFFFFFFFFFFFFEAF5
          FEFFFFFFFFFFE1F0FDFF1A8DF2FF0482F1FF4EA7F5FF0964C3F20C67C8F24EA7
          F5FF0482F1FF0281F1FF1A8DF2FFE4F2FEFFFFFFFFFFEDF6FEFFEDF6FEFFFFFF
          FFFFEAF5FEFF2090F3FF0281F1FF0482F1FF4EA7F5FF0C67C8F20F6ACCF24EA7
          F5FF1389F2FFFFFFFFFFFFFFFFFFFFFFFFFFE4F2FEFF0B85F1FF0B85F1FFE7F3
          FEFFFFFFFFFFFFFFFFFFFFFFFFFF1389F2FF4EA7F5FF0F6ACCF2116ED0F24EA7
          F5FF1389F2FFFFFFFFFFFFFFFFFFFFFFFFFFEAF5FEFF148AF2FF148AF2FFEAF5
          FEFFFFFFFFFFFFFFFFFFFFFFFFFF1389F2FF4EA7F5FF116ED0F21371D4F24EA7
          F5FF0482F1FF0281F1FF178BF2FFE4F2FEFFFFFFFFFFF6FBFFFFF6FBFFFFFFFF
          FFFFE7F3FEFF1D8EF2FF0281F1FF0482F1FF4EA7F5FF1371D4F21675D9F24EA7
          F5FF0482F1FF148AF2FFD5EAFDFFFFFFFFFFEDF6FEFFFFFFFFFFFFFFFFFFEAF5
          FEFFFFFFFFFFDEEFFDFF1A8DF2FF0482F1FF4EA7F5FF1675D9F21878DDF24EA7
          F5FF0482F1FF0582F1FFA0D0FAFFE1F0FDFF2E97F3FFFFFFFFFFFFFFFFFF2994
          F3FFD8ECFDFFB5DAFBFF0884F1FF0482F1FF4EA7F5FF1878DDF21B7BE0F24EA7
          F5FF0482F1FF0281F1FF0281F1FF178BF2FF1188F2FFFFFFFFFFFFFFFFFF1188
          F2FF178BF2FF0884F1FF0281F1FF0482F1FF4EA7F5FF1B7BE0F21D7EE3F24EA7
          F5FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0482F1FF4EA7F5FF1D7EE3F2134E8D943C98
          EFFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF3C98EFFA134E8D9406192E30134F
          8E942082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082
          E8F22082E8F22082E8F22082E8F22082E8F2134F8E9406192E30}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000F202B0033
          698E0057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057
          B4F20057B4F20057B4F20057B4F20057B4F20033698E000F202B00346B8E2E87
          DBFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF2E87DBFA00346B8E025AB6EF4DA6
          F4FF0582F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0582F1FF4DA6F4FF025AB6EF045DBCF24EA7
          F5FF0482F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0482F1FF0281F1FF0281F1FF0482F1FF4EA7F5FF045DBCF20761BFF24EA7
          F5FF0482F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF2190
          F2FF9FCEF9FFF5F9FDFF0281F1FF0482F1FF4EA7F5FF0761BFF20964C3F24EA7
          F5FF0482F1FF0281F1FF0281F1FF0281F1FF0281F1FF2190F2FF9FCEF9FFDEEE
          FCFFFFFFFFFFFFFFFFFF0281F1FF0482F1FF4EA7F5FF0964C3F20C67C8F24EA7
          F5FF0482F1FF0281F1FF0281F1FF2190F2FF9FCEF9FFDEEEFCFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF0281F1FF0482F1FF4EA7F5FF0C67C8F20F6ACCF24EA7
          F5FF0482F1FF0281F1FF0281F1FFE3F0FCFF97CBF8FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF0281F1FF0482F1FF4EA7F5FF0F6ACCF2116ED0F24EA7
          F5FF0482F1FF0281F1FF0281F1FF0984F1FFA7D2F9FF8FC7F8FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF0281F1FF0482F1FF4EA7F5FF116ED0F21371D4F24EA7
          F5FF0482F1FF0281F1FF0281F1FF0281F1FF0281F1FF70B7F6FFBFDEFAFFFFFF
          FFFFFFFFFFFFFFFFFFFF0281F1FF0783F1FF4EA7F5FF1371D4F21675D9F24EA7
          F5FF0482F1FF0281F1FF0281F1FF0281F1FF0281F1FF0984F1FF41A0F4FFCEE6
          FBFFFFFFFFFFFFFFFFFF0281F1FF0482F1FF4EA7F5FF1675D9F21878DDF24EA7
          F5FF0482F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF2190
          F2FF8FC7F8FF9FCEF9FF0281F1FF0482F1FF4EA7F5FF1878DDF21B7BE0F24EA7
          F5FF0482F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FF0281F1FF0482F1FF4EA7F5FF1B7BE0F21D7EE3F24EA7
          F5FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0482F1FF4EA7F5FF1D7EE3F2134E8D943C98
          EFFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF3C98EFFA134E8D9406192E30134F
          8E942082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082
          E8F22082E8F22082E8F22082E8F22082E8F2134F8E9406192E30}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000F202B0033
          698E0057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057
          B4F20057B4F20057B4F20057B4F20057B4F20033698E000F202B00346B8E2E87
          DBFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF2E87DBFA00346B8E025AB6EF4DA6
          F4FF0582F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0582F1FF4DA6F4FF025AB6EF045DBCF24EA7
          F5FF0482F1FF0281F1FF0281F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0281F1FF0281F1FF0482F1FF4EA7F5FF045DBCF20761BFF24EA7
          F5FF0482F1FF0281F1FF0281F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281
          F1FFFFFFFFFF0281F1FF0281F1FF0482F1FF4EA7F5FF0761BFF20964C3F24EA7
          F5FF0482F1FF97CBF9FFFFFFFFFFFFFFFFFF0281F1FF0281F1FF0281F1FF0281
          F1FFFFFFFFFFFFFFFFFF97CBF9FF0482F1FF4EA7F5FF0964C3F20C67C8F24EA7
          F5FF0482F1FFFFFFFFFF0281F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0281F1FFFFFFFFFF0482F1FF4EA7F5FF0C67C8F20F6ACCF24EA7
          F5FF0482F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FFFFFFFFFF0482F1FF4EA7F5FF0F6ACCF2116ED0F24EA7
          F5FF0482F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FF0281F1FFFFFFFFFF0482F1FF4EA7F5FF116ED0F21371D4F24EA7
          F5FF0482F1FF97CBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF97CBF9FF0482F1FF4EA7F5FF1371D4F21675D9F24EA7
          F5FF0482F1FF0281F1FF0281F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281
          F1FFFFFFFFFF0281F1FF0281F1FF0482F1FF4EA7F5FF1675D9F21878DDF24EA7
          F5FF0482F1FF0281F1FF0281F1FFFFFFFFFF0281F1FF0281F1FF0281F1FF0281
          F1FFFFFFFFFF0281F1FF0281F1FF0482F1FF4EA7F5FF1878DDF21B7BE0F24EA7
          F5FF0482F1FF0281F1FF0281F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0281F1FF0281F1FF0482F1FF4EA7F5FF1B7BE0F21D7EE3F24EA7
          F5FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0482F1FF4EA7F5FF1D7EE3F2134E8D943C98
          EFFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF3C98EFFA134E8D9406192E30134F
          8E942082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082
          E8F22082E8F22082E8F22082E8F22082E8F2134F8E9406192E30}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000F202B0033
          698E0057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057
          B4F20057B4F20057B4F20057B4F20057B4F20033698E000F202B00346B8E2E87
          DBFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF2E87DBFA00346B8E025AB6EF4DA6
          F4FF0582F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0582F1FF4DA6F4FF025AB6EF045DBCF24EA7
          F5FF0482F1FF8BC5F9FFBEDEFBFF1D8EF2FF0281F1FF0281F1FF0281F1FF0281
          F1FFFFFFFFFF0281F1FF0281F1FF0482F1FF4EA7F5FF045DBCF20761BFF24EA7
          F5FF0482F1FFD0E7FCFFFFFFFFFFDEEFFDFF1D8EF2FF0281F1FF0281F1FF0281
          F1FFFFFFFFFF0281F1FF0281F1FF0482F1FF4EA7F5FF0761BFF20964C3F24EA7
          F5FF0482F1FF2E97F3FFEAF5FEFFFFFFFFFFDEEFFDFF0281F1FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF0482F1FF4EA7F5FF0964C3F20C67C8F24EA7
          F5FF0482F1FF0281F1FF2E97F3FFEAF5FEFFFCFEFFFF0281F1FF0281F1FF0281
          F1FFFFFFFFFF0281F1FF0281F1FF0482F1FF4EA7F5FF0C67C8F20F6ACCF24EA7
          F5FF0482F1FF0281F1FF0281F1FF2E97F3FFB8DBFBFFDBEDFDFF3A9DF4FF0281
          F1FFFFFFFFFF0281F1FF55ABF6FF0482F1FF4EA7F5FF0F6ACCF2116ED0F24EA7
          F5FF0482F1FF0281F1FF0281F1FF0582F1FFEDF6FEFF3199F4FF0281F1FF0281
          F1FF0281F1FF0281F1FFE1F0FDFF0482F1FF4EA7F5FF116ED0F21371D4F24EA7
          F5FF0482F1FF0281F1FF0281F1FF148AF2FFF6FBFFFF0281F1FF0281F1FF0281
          F1FF0281F1FF0884F1FFFFFFFFFF0783F1FF4EA7F5FF1371D4F21675D9F24EA7
          F5FF0482F1FF0281F1FF0281F1FF0582F1FFEDF6FEFF3199F4FF0281F1FF0281
          F1FF0281F1FF40A0F4FFDEEFFDFF0482F1FF4EA7F5FF1675D9F21878DDF24EA7
          F5FF0482F1FF0281F1FF0281F1FF0281F1FF64B2F6FFD8ECFDFF3A9DF4FF0281
          F1FF43A2F5FFDEEFFDFF55ABF6FF0482F1FF4EA7F5FF1878DDF21B7BE0F24EA7
          F5FF0482F1FF0281F1FF0281F1FF0281F1FF0281F1FF67B3F7FFDBEDFDFFFFFF
          FFFFD8ECFDFF5BADF6FF0281F1FF0482F1FF4EA7F5FF1B7BE0F21D7EE3F24EA7
          F5FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0482F1FF4EA7F5FF1D7EE3F2134E8D943C98
          EFFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF3C98EFFA134E8D9406192E30134F
          8E942082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082
          E8F22082E8F22082E8F22082E8F22082E8F2134F8E9406192E30}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000F202B0033
          698E0057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057
          B4F20057B4F20057B4F20057B4F20057B4F20033698E000F202B00346B8E2E87
          DBFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF2E87DBFA00346B8E025AB6EF4DA6
          F4FF0582F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0582F1FF4DA6F4FF025AB6EF045DBCF24EA7
          F5FF0482F1FF8BC5F9FFBEDEFBFF1D8EF2FF0281F1FF0281F1FF0281F1FF0281
          F1FF0482F1FF0281F1FF0281F1FF0482F1FF4EA7F5FF045DBCF20761BFF24EA7
          F5FF0482F1FFD0E7FCFFFFFFFFFFDEEFFDFF1D8EF2FF0281F1FF0281F1FF0281
          F1FF0582F1FF0281F1FF0281F1FF0482F1FF4EA7F5FF0761BFF20964C3F24EA7
          F5FF0482F1FF2E97F3FFEAF5FEFFFFFFFFFFDEEFFDFF0281F1FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF0482F1FF4EA7F5FF0964C3F20C67C8F24EA7
          F5FF0482F1FF0281F1FF2E97F3FFEAF5FEFFFCFEFFFF0281F1FF71B8F6FFFCFC
          FCFFD3E8FBFF0281F1FF0281F1FF0482F1FF4EA7F5FF0C67C8F20F6ACCF24EA7
          F5FF0482F1FF0281F1FF0281F1FF2E97F3FFB8DBFBFFDBEDFDFF91C7F8FF0281
          F1FF0381F1FFD3E8FBFF55ABF6FF0482F1FF4EA7F5FF0F6ACCF2116ED0F24EA7
          F5FF0482F1FF0281F1FF0281F1FF0582F1FFEDF6FEFF3199F4FF0281F1FF0281
          F1FF0281F1FF0281F1FFE1F0FDFF0482F1FF4EA7F5FF116ED0F21371D4F24EA7
          F5FF0482F1FF0281F1FF0281F1FF148AF2FFF6FBFFFF0281F1FF0281F1FF0281
          F1FF0281F1FF0884F1FFFFFFFFFF0783F1FF4EA7F5FF1371D4F21675D9F24EA7
          F5FF0482F1FF0281F1FF0281F1FF0582F1FFEDF6FEFF3199F4FF0281F1FF0281
          F1FF0281F1FF40A0F4FFDEEFFDFF0482F1FF4EA7F5FF1675D9F21878DDF24EA7
          F5FF0482F1FF0281F1FF0281F1FF0281F1FF64B2F6FFD8ECFDFF3A9DF4FF0281
          F1FF43A2F5FFDEEFFDFF55ABF6FF0482F1FF4EA7F5FF1878DDF21B7BE0F24EA7
          F5FF0482F1FF0281F1FF0281F1FF0281F1FF0281F1FF67B3F7FFDBEDFDFFFFFF
          FFFFD8ECFDFF5BADF6FF0281F1FF0482F1FF4EA7F5FF1B7BE0F21D7EE3F24EA7
          F5FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0482F1FF4EA7F5FF1D7EE3F2134E8D943C98
          EFFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF3C98EFFA134E8D9406192E30134F
          8E942082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082
          E8F22082E8F22082E8F22082E8F22082E8F2134F8E9406192E30}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000F202B0033
          698E0057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057B4F20057
          B4F20057B4F20057B4F20057B4F20057B4F20033698E000F202B00346B8E2E87
          DBFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF2E87DBFA00346B8E025AB6EF4DA6
          F4FF0582F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0582F1FF4DA6F4FF025AB6EF045DBCF24EA7
          F5FF0482F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF97CBF9FF0482F1FF4EA7F5FF045DBCF20761BFF24EA7
          F5FF0482F1FFFFFFFFFFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FFFFFFFFFF97CBF9FF0482F1FF4EA7F5FF0761BFF20964C3F24EA7
          F5FF0482F1FFFFFFFFFFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FFFFFFFFFF0281F1FF0482F1FF4EA7F5FF0964C3F20C67C8F24EA7
          F5FF0482F1FFFFFFFFFFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FFFFFFFFFF97CBF9FF0482F1FF4EA7F5FF0C67C8F20F6ACCF24EA7
          F5FF0482F1FFFFFFFFFFFFFFFFFF0281F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF0281F1FFFFFFFFFF97CBF9FF0482F1FF4EA7F5FF0F6ACCF2116ED0F24EA7
          F5FF0482F1FFFFFFFFFFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FFFFFFFFFF97CBF9FF0482F1FF4EA7F5FF116ED0F21371D4F24EA7
          F5FF0482F1FFFFFFFFFFFFFFFFFF0281F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF0281F1FFFFFFFFFF0281F1FF0482F1FF4EA7F5FF1371D4F21675D9F24EA7
          F5FF0482F1FFFFFFFFFFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FFFFFFFFFF97CBF9FF0482F1FF4EA7F5FF1675D9F21878DDF24EA7
          F5FF0482F1FFFFFFFFFFFFFFFFFF0281F1FF0281F1FF0281F1FF0281F1FF0281
          F1FF0281F1FFFFFFFFFF97CBF9FF0482F1FF4EA7F5FF1878DDF21B7BE0F24EA7
          F5FF0482F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF97CBF9FF0482F1FF4EA7F5FF1B7BE0F21D7EE3F24EA7
          F5FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482F1FF0482
          F1FF0482F1FF0482F1FF0482F1FF0482F1FF4EA7F5FF1D7EE3F2134E8D943C98
          EFFA4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7
          F5FF4EA7F5FF4EA7F5FF4EA7F5FF4EA7F5FF3C98EFFA134E8D9406192E30134F
          8E942082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082E8F22082
          E8F22082E8F22082E8F22082E8F22082E8F2134F8E9406192E30}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FCFFFF001B9CD900ECF4F800FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0027A0DF0000A8F0001DB2EE004AACD900FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0099B5CD007BA3B90002B2F40018AAEA0000A3EE0008ADF1001CAFEA0061A1
          BE0094B7C30095BBCD0095B5C90095B0C80095AFC900FDFDFD00FFFFFF00FFFF
          FF000D98EB0029BAEE0020B9F20017B2EC0007B1F00000A8EF0000A3EE0013B3
          F000139DD6000975B8000C93E5000C98E900099AF000EDEDED00FFFFFF00FFFF
          FF001C8EC7003AC7F40032C3F3002ABEF30057C7ED0009B7F10000ADEF0000A6
          EF0000A5EF001BB3EB000583C4000987C600139CE600F0F0F000FFFFFF00FFFF
          FF0052DCFE0048CFF50042CCF4003BC8F30032C0EF0069D7F7000FBFF20000B3
          F00000ABEF0000A4EE0002AAF0001CA4E2000074BD00F3F3F300FFFFFF0084DD
          EC0059DDF70053D9F6004FD4F60048D0F50042CCF5006CD3EF0072DCF70021C7
          F30003BBF10000B1F00000A9EF0000A3EE000BB0F1001695E000FCFCFE00BEEA
          F300C6E8EE00C5E8ED00C4E6EE00C2E5ED00C0E4ED00BCE0EB0082E7FA0089E5
          F9003ED0F30026C2EE001DB8EC0024B2EB0024AEEB002AB5F500F6F6F500FFFF
          FF00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700FFF8F60045D0
          F50039CBF50011C3F3000ABFF30001BBF30000B8F400BFDDE900F7F7F700E8E8
          E800F2F1F000F8F8F800F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700D2E8
          ED0052D8F70047D2F5001FC9F4001AC5F30020C3F100EEEEEE00FFFFFF00FCFC
          FE004CA4D700F2EBE700F4F4F400F7F7F700F7F7F700F7F7F700F7F7F700FBF8
          F8006CE0F4005ADDF7004ED8F60026D0F70054F6FF00FFFFFF00FFFFFF00FFFF
          FF001690D4000086D10089BFDA00F5EDE900F7F7F700F7F7F700F7F7F700F7F7
          F700ECEFF00062E5F90060E1F7008BE2F400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00B5DAF000048DD2000692D4000593D200C2D7E100F3EFED00F8F8F800F7F7
          F700F8F8F80090E9F30071F4FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000593DB000792D4000997D5000498D7002AA3D600E6E5E400F2F2
          F100F8F8F800FBF7F700C3F4FA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0048AADE000792D4000799D8000AA2E3000DA5E50013A0DA00ABD3
          E400F4F3F300ECF0F100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00E9F4FA008AC7E900E7F4FB00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000A96A2BFF3E27105D03020104000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000038230E54AB6B2BFFA96A2BFF050301070000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000001010002A96A2BFF0000000000000000A96A
          2BFF000000000000000000000000000000000000000000000000000000005959
          59BD787878FF787878FF6A6A6AE2090909130302010500000000AB6B2BFFA567
          29F6A96A2BFF0000000000000000000000000000000000000000000000007B7B
          7BFFFFFFFFFFB3783EFFB3783EFF8E6031CB0E0E0E0EA96A2BFFA26629F2AB6B
          2BFFA56729F6A96A2BFF00000000000000000000000000000000000000007B7B
          7BFFFFFFFFFFB3783EFFB57C44FFB3783EFFC9C9C9C90A08050DA96A2BFFA266
          29F2AB6B2BFFA56729F6A96A2BFF000000000000000000000000000000007B7B
          7BFFFFFFFFFFB3783EFFFFFFFFFFB3783EFFFFFFFFFF8D5F31C90906030DA96A
          2BFFA26629F2AB6B2BFFA56729F6A96A2BFF0000000000000000000000007B7B
          7BFFFFFFFFFFB3783EFFB67E47FFB3783EFFFFFFFFFFB3783EFF8D5F31C90906
          030DA96A2BFFA26629F2AB6B2BFFA56729F60000000000000000000000007B7B
          7BFFFFFFFFFFB3783EFFB3783EFFB3783EFFFFFFFFFFB3783EFFB3783EFF8D5F
          31C90D0D0D0DA96A2BFFA26629F20000000000000000A96A2BFF000000007B7B
          7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC9C9C9C90606060D0000000000000000A96A2BFFA96A2BFF1C161030BDAB
          9AFFDBBEA1FFDFC8B0FFE2CDB7FFE2CCB7FFD3B191FFE5D2C0FFE3CFBBFFDDC3
          A8FFDFC4A9FF816F5FC600000000A96A2BFFA96A2BFF2C1B0B41A97038F1AE6D
          2DFFE4D0BCFFD1AE8BFFAE7032FFC99F77FFF2E9DFFFC99F77FFAE7032FFDABE
          A4FFDFC7AFFFAF6F2FFF7D4F21BB000000000000000000000000AB723BF3AD6D
          2FFFFFFFFFFFEAD9C9FFAE7033FFE0C9B3FFFFFFFFFFE0C9B3FFAE7033FFF9F5
          F1FFF8F2EEFFAD6F31FFA16C38E5000000000000000000000000402B165BAE70
          32FFEADBCCFFFEFEFFFFAD6F30FFD8BB9DFFFFFFFFFFD8BB9DFFAE7032FFFFFF
          FFFFD9BB9EFFAF7236FF2316093400000000000000000000000000000000AA70
          36F6CAA37BFFFFFFFFFFAE6F32FFCBA47DFFFFFFFFFFCBA47DFFB07337FFFFFF
          FFFFB9824EFF895622CC00000000000000000000000000000000000000003F27
          105DB47A41FFB17539FFB57D47FFB47A40FFB17539FFB57C43FFB57F46FFB174
          39FFB57D44FF1D12082B00000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000E12081C485D
          2A8D65823BC665823BC6485D2A8D0E12081C0000000000000000000000005EAF
          E9FF5EAFE9FF5EAFE9FF5EAFE9FF5096C7DA010102022B381955739543E282A8
          4CFF82A84CFF82A84CFF82A84CFF739543E22B38195500000000000000005EAF
          E9FF5EAFE9FF5EAFE9FF5EAFE9FF172B393E0E12081C739543E282A84CFF82A8
          4CFFFFFFFFFFE3ECD8FF82A84CFF82A84CFF739543E20E12081C000000005EAF
          E9FF5EAFE9FFFFFFFFFFD7D7D7D70B0B0B0B485D2A8D82A84CFF82A84CFF82A8
          4CFFFFFFFFFFE3ECD8FF82A84CFF82A84CFF82A84CFF485D2A8D919191FEFFFF
          FFFFBCBCBCFFBCBCBCFFD7D7D7D70202020365823BC682A84CFFE3ECD8FFE3EC
          D8FFFFFFFFFFE3ECD8FFE3ECD8FFE3ECD8FF82A84CFF65823BC6000000005EAF
          E9FF5EAFE9FFFFFFFFFFD7D7D7D70202020365823BC682A84CFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82A84CFF65823BC6000000005EAF
          E9FF5EAFE9FFFFFFFFFFD7D7D7D70A0A0A0C485D2A8D82A84CFF82A84CFF82A8
          4CFFFFFFFFFFE3ECD8FF82A84CFF82A84CFF82A84CFF485D2A8D919191FEFFFF
          FFFFBCBCBCFFBCBCBCFFFFFFFFFF333333400E12081C739543E282A84CFF82A8
          4CFFFFFFFFFFE3ECD8FF82A84CFF82A84CFF739543E20E12081C919191FEFFFF
          FFFFBCBCBCFFBCBCBCFFFFFFFFFFB0B0B0DC020202022B381955739543E282A8
          4CFF82A84CFF82A84CFF82A84CFF739543E22B38195500000000000000005EAF
          E9FF5EAFE9FFFFFFFFFFFFFFFFFFCCCCCCFF4A4A4AA3010101020E12081C485D
          2A8D65823BC665823BC6485D2A8D0E12081C0001010100000000000000005EAF
          E9FF5EAFE9FFFFFFFFFFFFFFFFFFCCCCCCFFCCCCCCFFACACACD72D2D2D380606
          060701010101010101010606060611202B2F4A89B7C800000000919191FEFFFF
          FFFFBCBCBCFFBCBCBCFFFFFFFFFFCCCCCCFF737373FF737373FFFFFFFFFFACAC
          ACD7616161D7ACACACD7D7D7D7D75EAFE9FF5EAFE9FF00000000919191FEFFFF
          FFFFBCBCBCFFBCBCBCFFFFFFFFFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFFFFFFFFF5EAFE9FF5EAFE9FF00000000000000005EAF
          E9FF5EAFE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF5EAFE9FF5EAFE9FF00000000000000005EAF
          E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAF
          E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF00000000000000005EAF
          E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAF
          E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF00000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006D6D
          6D00535353005151510066666600BABABA00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008B8B8B004E4E4E00A5A5
          A500E2E2E200E6E6E600B1B1B1005252520078787800FF00FF00626262005454
          5400545454005454540054545400A9A9A900FF00FF004D4D4D00E1E1E100FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00F5F5F50052525200B9B9B90054545400FDFD
          FD00FFFFFF00FFFFFF00FEFEFE00FF00FF00717171009A9A9A00FFFFFF00FFFF
          FF00FDFDFD00FCFBF800FFFFFF00FFFFFF00B8B9BA006565650054545400FDFD
          FD00B982A600B982A600BC8BAB00FF00FF005B5B5B00D0D0D000FFFFFF00FFFF
          FF009D520B009D520B009D520B00D1BEAB00D1BEAB005051540054545400FDFD
          FD00B982A600FFFFFF00FCFCFC00FF00FF005E5E5E00CECECE00FFFFFF00FFFF
          FF009D520B00E7D6C500F2E9E000F2E9E000E9EAEB005050500054545400FDFD
          FD00B982A600B982A600B982A600FF00FF007474740090909000FFFFFF00FFFF
          FF009D520B00F2E9E000FFFFFF00FFFFFF00ADADAD006969690054545400FDFD
          FD00B982A600FFFFFF00FFFFFF00EEEEEE00FF00FF004D4D4D00D2D2D200FFFF
          FF00D1BEAB00F2E9E000FFFFFF00E9E9E9004F4F4F00FF00FF0054545400FDFD
          FD00B982A600B982A600B982A600BC89AA00FF00FF00969696004D4D4D009090
          9100D4D4D400D4D4D4009D9D9D004F4F4F0086868600FF00FF0054545400FDFD
          FD00B982A600B982A600B982A600B982A600C094B100FF00FF00FF00FF007373
          730059595900565656006E6E6E00FF00FF00FF00FF00FF00FF0054545400FDFD
          FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00EEEEEE00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0054545400FDFD
          FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00919191005454
          5400626262006464640055555500FF00FF00FF00FF00FF00FF0054545400FDFD
          FD008D8D8D0069696900949494009494940094949400FFFFFF0054545400FEFE
          FE00FFFFFF00B8B8B8007B7B7B00FF00FF00FF00FF00FF00FF0054545400FDFD
          FD00C6C6C60069696900949494008C8C8C00AEAEAE00FFFFFF0054545400FEFE
          FE00B9B9B90078787800FF00FF00FF00FF00FF00FF00FF00FF0054545400FDFD
          FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0054545400B9B9
          B90077777700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00898989005454
          5400545454005454540054545400545454005454540054545400545454007A7A
          7A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00ACC1
          8E0097B46D0097B46D00ACC18E00FF00FF00FF00FF00FF00FF00FF00FF00B47A
          4100B3783E00B3783E00B3783E00B9875500FF00FF00C1CEAF008CAE5C0082A8
          4C0082A84C0082A84C0082A84C008CAE5C00C1CEAF00FF00FF00FF00FF00B378
          3E00B3783E00F6F0E900F6F0E900FF00FF00FF00FF008CAE5C0082A84C0082A8
          4C00FFFFFF00E3ECD80082A84C0082A84C008CAE5C00FF00FF00FF00FF00B378
          3E00B3783E00F6F0E900F2EDE700FF00FF00ACC18E0082A84C0082A84C0082A8
          4C00FFFFFF00E3ECD80082A84C0082A84C0082A84C00ACC18E00FF00FF00B378
          3E00B3783E00B3783E00BA885700FF00FF0097B46D0082A84C00E3ECD800E3EC
          D800FFFFFF00E3ECD800E3ECD800E3ECD80082A84C0097B46D00FF00FF00B378
          3E00B3783E00F6F0E900F2EDE700FF00FF0097B46D0082A84C00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0082A84C0097B46D00FF00FF00B378
          3E00B3783E00F6F0E900F2EDE700FF00FF00ACC18E0082A84C0082A84C0082A8
          4C00FFFFFF00E3ECD80082A84C0082A84C0082A84C00ACC18E00FF00FF00B378
          3E00B3783E00B3783E00B3783E00D5C6B800FF00FF008CAE5C0082A84C0082A8
          4C00FFFFFF00E3ECD80082A84C0082A84C008CAE5C00FF00FF00FF00FF00B378
          3E00B3783E00F6F0E900F6F0E900B9865400FF00FF00C1CEAF008CAE5C0082A8
          4C0082A84C0082A84C0082A84C008CAE5C00C1CEAF00FF00FF00FF00FF00B378
          3E00B3783E00F6F0E900F6F0E900B3783E00EEEAE600FF00FF00FF00FF00ACC1
          8E0097B46D0097B46D00ACC18E00FF00FF00FF00FF00FF00FF00FF00FF00B378
          3E00B3783E00B3783E00B3783E00B3783E00B3783E00BA885700FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B378
          3E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFA
          FA00FAFAFA00FAFAFA00BA895800FF00FF00FF00FF00FF00FF00FF00FF00B378
          3E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFAFAF00ACACAC00AEAE
          AE009F9F9F00FFFFFF00B3783F00FF00FF00FF00FF00FF00FF00FF00FF00B378
          3E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5A500C7C7C700A4A4
          A4008A8A8A00FFFFFF00B3783F00FF00FF00FF00FF00FF00FF00FF00FF00B378
          3E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00B3783F00FF00FF00FF00FF00FF00FF00FF00FF00B47A
          4200B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B3783E00B378
          3E00B3783E00B3783E00B47B4300FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000281A0D399462
          33D3B2773DFEB3773DFFB2773DFE946233D3281A0E390000000000000000281A
          0D39946233D3B2773DFEB3773DFFB2773DFE946233D3281A0E39976434D7E6D3
          C0FFFEFEFEFFFFFFFFFFFEFEFEFFE6D3C0FF976434D700000000000000009764
          34D7E6D3C0FFFEFEFEFFFFFFFFFFFEFEFEFFE6D3C0FF976434D7B3773DFFFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFB3773DFF0000000000000000B377
          3DFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFB3773DFF976434D7E6D3
          C0FFFEFEFEFFFFFFFFFFFEFEFEFFE6D3C0FF976434D700000000000000009764
          34D7E6D3C0FFFEFEFEFFFFFFFFFFFEFEFEFFE6D3C0FF976434D7271A0D389362
          32D2B2773DFEB3773DFFB2773DFE936232D2271A0E380000000000000000271A
          0D38936232D2B2773DFEB3773DFFB2773DFE936232D2271A0E38000000000000
          000000000000656565FF00000000000000000000000000000000000000000000
          00000000000000000000656565FF000000000000000000000000000000000000
          000000000000656565FF656565FF656565FF656565FF656565FF656565FF6565
          65FF656565FF656565FF656565FF000000000000000000000000000000000000
          00000000000000000000000000000000000000000000656565FF656565FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003C3C3C993C3C3C990000
          0000000000000000000000000000000000000000000000000000000000000000
          0000281A0D39946233D3B2773DFEB3773DFFB3773DFFB3773DFFB3773DFFB377
          3DFFB3773DFFB2773DFE946233D3281A0E390000000000000000000000000000
          0000976434D7E6D3C0FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFE6D3C0FF976434D70000000000000000000000000000
          0000B3773DFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFFB3773DFF0000000000000000000000000000
          0000B3773DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB3773DFF0000000000000000000000000000
          0000B2773DFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFFB2773DFE0000000000000000000000000000
          0000976434D7E6D3C0FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFE6D3C0FF976434D70000000000000000000000000000
          0000271A0D38936232D2B2773DFEB3773DFFB3773DFFB3773DFFB3773DFFB377
          3DFFB3773DFFB2773DFE936232D2271A0E380000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF000180000001800000018000000180000001800000EFF70000E0070000FE7F
          0000FE7F0000C0030000C0030000C0030000C0030000C0030000C0030000C003
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003825
          115198612EDCAB6E34F8B07135FFAC6E34F998622EDD31200F48000000000000
          000000000000000000000000000000000000000000000000000000000000B374
          36FFB07135FFB07135FFB07135FFB07135FFB07135FFB07135FF565656B86868
          68FF686868FF686868FF686868FF686868FF686868FF616161EE01010103A56B
          32ECB07135FFB07135FFB07135FFB07135FFB07135FF96602DD9686868FFFEEC
          CDFFFEECCDFFFEECCDFFFEECCDFFB9B7B4FFFFFFFFFFFFFFFFFF555555550805
          020CB07135FFA36931ED26180B3798612EDCB07135FF0805020D686868FFFEEC
          CDFFFEECCDFFFEECCDFFFEECCDFFB9B7B4FFFFFFFFFFFFFFFFFFECECECEC1F1F
          1F2D00000000130C051C63401E901C1208290000000000000000686868FFFEEC
          CDFFFEECCDFFFEECCDFFFEECCDFFB9B7B4FFFFFFFFFFFFFFFFFFFFFFFFFF2727
          2739402A1359B07135FFB07135FFB07135FF5436197700000000686868FFFEEC
          CDFFFEECCDFFFEECCDFFFEECCDFFB9B7B4FFFFFFFFFFFFFFFFFFFBFBFBFB0404
          0404A96E33ECB07135FFB07135FFB07135FFB37436FF00000000686868FFFEEC
          CDFFFEECCDFFFEECCDFFFEECCDFFB9B7B4FFFFFFFFFFC9C9C9FFB2B2B2FF1010
          1018855728BAB07135FFB07135FFB07135FF97622ED700000000686868FFFEEC
          CDFFFEECCDFFFEECCDFFFEECCDFFB9B7B4FFFFFFFFFFFFFFFFFFFFFFFFFF7E7E
          7E7E0000000099622EDEB07135FFA36931ED0000000000000000686868FFFEEC
          CDFFFEECCDFFFEECCDFFFEECCDFFB9B7B4FFFFFFFFFFC9C9C9FFB2B2B2FFB0B0
          B0FC4C4C4C6E0303030400000000000000020000000000000000686868FFFEEC
          CDFFFEECCDFFFEECCDFFFEECCDFFB9B7B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFEDEDEDEDC6C6C6C65F5F5FEA0000000000000000686868FFB2B2
          B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB2B2
          B2FFB2B2B2FFB2B2B2FFB2B2B2FF686868FF0000000000000000686868FFF3F3
          F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
          F3FFF3F3F3FFF3F3F3FFF3F3F3FF686868FF0000000000000000B2773DFFB377
          3DFFB3773DFFB3773DFFB3773DFFB3773DFFB3773DFFB3773DFFB3773DFFB377
          3DFFB3773DFFB3773DFFB3773DFFB3773DFF0000000000000000B3773DFFB377
          3DFFB3773DFFB3773DFFB3773DFFB3773DFFB3773DFFB3773DFFB3773DFFB377
          3DFFB3773DFFB3773DFFB3773DFFB3773DFF0000000000000000AA713AF2B377
          3DFFB3773DFFB3773DFFB3773DFFB3773DFFB3773DFFB3773DFFB3773DFFB377
          3DFFB3773DFFB3773DFFB3773DFFAB723BF40000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FF800000FF80000000000000000000000023000000010000000100000001
          000000230000000B000000030000000300000003000000030000000300000003
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000030404046066636F9BBA
          ABCD9DD0B9EC9DBCAED0656D6A75050605060000000000000000000000000000
          0000000000000000000000000000000000000304030492A399B557CC98FF2BC2
          85FF54CD9AFF2EC181FF52CB96FF9AAFA3BF0606060700000000000000000000
          000002080F100715252800000000000000005C635E6F51C78CFF24C183FF3FC8
          92FFFFFFFFFF4EC27FFF24C183FF49C68BFF66706A7B00000000000000000000
          0000010406073189DFF01D4E7E880406080989AD96CD38C58AFF3FC892FF61D1
          A3FFFFFFFFFF6BCB91FF3FC892FF38C589FF93BCA0DA00000000000000000000
          0000000000003680B2BC4BAFF2FE3C8AC5D38BC59FF574D8AFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF7ACF98FF93CFA5F800000000000000000000
          000000000000285B767B54BEF5FF53BCF5FF96CCB0FF58BC68FF78C884FF8DD2
          9BFFFFFFFFFF8ECD8EFF79C986FF5CBD6AFF8FB58FDC00000000000000000000
          000000000000142D37395BCBF8FF5AC9F7FF94D3E9FF5DA937FF5CB047FF70BF
          6DFFFFFFFFFF72BB64FF5CB14AFF5DA938FF666F638100000000000000000000
          0000000000001E414B4D62D8FAFF61D6FAFF61D1F8FFA4D1C4FF5EA334FF60A6
          35FF87BC66FF61A736FF5EA333FF91A388C60708070900000000000000000000
          0000152E333461D6EFF367E2FBFF66E0FBFF64DCFBFF63D3F8FF96D4E7FF95C2
          9DFF91BA7FFF91BB99FE688291AD050607090000000000000000000000000D1D
          21225FCFE5E86AE7FCFF6BE9FDFF6AE7FCFF67E2FCFF64DBFAFF5ED0F9FF57C2
          F5FE4DB1EDF83D9DEBFB267EDDF11A4778830204070800000000000000002D6A
          868B3D92BDC53D8DB1B74291ABAF6DEDFDFF69E6FCFF66D5F4F93976959A1B3C
          5256132E454A0B21363A06152529040D17190103050500000000000000000000
          000000000000000000000102020267DEECEE6AE7FCFF66CEF3F912232A2B0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004AA2AFB065DEF8FB50A5D9E2000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002D626D6E59C8F2F92E6997A0000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000011262C2D45ACECF91436555B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000010101266EAFBC040D1618000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000005050606636670768798
          C2D0869AD9EC8695BECC5A5D676E020303030000000000000000000000000000
          000000000000000000000000000000000000060606079197B4C0354FE0FF1937
          DCFF193ADCFF1936DCFF3B54E1FF878CA7B40202030300000000000000000000
          000002060B0C0818292C00000000000000006768757D3346DFFF7286E8FF6E84
          DAFF1550DFFF7995EAFF6775D8FF3C4CE0FF5657646D00000000000000000000
          0000010203032F85D9EA1E53869005080B0C898DC7DB2642DEFF839EEEFFFCFC
          FEFFACBDEAFFFDFDFEFF7692EAFF273FDEFF8487B6CB00000000000000000000
          0000000000003277A7B04BAFF2FE3C8CCBD88A90E1FC435BE2FF233FDEFFB9C3
          F4FFFFFFFFFFABB4E9FF233DDDFF4359E2FF888BCDEA00000000000000000000
          00000000000024516B6F54BEF5FF53BDF5FF8FA1E4FF464FD6FF9599E9FFFDFD
          FEFFC5C7F3FFFCFCFEFF8286D9FF464FD6FF8184B3CE00000000000000000000
          00000000000010242D2E5BCBF8FF5ACAF7FF9BD1F1FF474EC7FF969AE1FF9296
          E2FF494FD4FF9DA1E6FF8B90DDFF4F55C9FF5758647300000000000000000000
          0000000000001937404162D7F9FE61D7FAFF64D2F8FFA2BDE5FF474EC1FF464C
          C3FF484FC5FF464CC3FF4C53C2FF8586A0BC0404040500000000000000000000
          000011272B2C60D2EBEF67E2FBFF66E0FBFF64DDFBFF65D5F8FF99D2EEFF8C9E
          D7FF848CCEFF8799D5FE637997AB030405060000000000000000000000000B18
          1B1C5BC8DFE26AE7FCFF6BE9FDFF6AE7FCFF67E3FCFF64DCFBFF5FD1F9FF58C4
          F5FE4EB3EDF840A0ECFB2880DEF21B4B808B0206090A00000000000000002962
          7C813D93BEC63C8CB1B7408EA7AC6DEDFDFF6AE7FCFF66D6F4F93D7E9CA21C3D
          5357132F464B0B21363A0615262A040E181A0103050500000000000000000000
          000000000000000000000000000063D7E4E56AE8FCFF66CFF3F9162C35370000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004597A3A467E1F9FC52ABE1EB010203030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000285962635BCBF2F93170A3AC000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000D1C202147AFEDF9173D6067000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002569A5B206131F22000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFDFFF6F6F5FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE7E7E7FFCAC2B8FFCEA868FFDAC298FFE9E1D4FFF3F3F2FFFAFA
          FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFECECECFFAEACAAFFC4B297FFBD7A12FFBD780BFFC38623FFC2841EFFC898
          46FFD4B682FFE0CEAEFFEDEAE4FFF9F9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFE3E3E2FFB4B2B0FFCCB79BFFB6700EFFB97514FFBE8127FFBA740BFFBC79
          12FFC28627FFBD790AFFC79645FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFEBEAEAFFCFCECDFFD3C0A8FFBC7E31FFB1680BFFBA7B29FFB67013FFB56E
          0CFFBC7D23FFBA7613FFC18935FFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF1F1F0FFDDDCDBFFD8C9B8FFCEAD89FFAF6614FFB47225FFB16B16FFC899
          5EFFB87828FFB2690BFFBB7D2BFFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF2F1F1FFDCDBDAFFD3B99BFFB87C36FFCEB69AFFC7A278FFC1925CFFCAA9
          84FFB37126FFAF6714FFB57427FFF8F8F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF0F0EFFFD7D6D5FFD6BD9EFFBC7723FFBC813AFFCEAD86FFCAA479FFBC83
          42FFC2925BFFB16816FFB36F22FFF8F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFEFEFEEFFD8D7D6FFDAC1A1FFC58534FFC38231FFD2AD7FFFD6B791FFBC79
          27FFD7C0A4FFBF823AFFC38E4FFFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFEEEDEDFFDBDAD9FFDEC5A4FFCE9344FFCD9041FFCF9B59FFCF9D5DFFC88A
          3CFFD1A46CFFDCBD97FFDEC9B0FFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFEDECEBFFD7D6D5FFE1C9A7FFD69F52FFD59C4FFFD5A25EFFD19749FFD5A1
          5CFFD8AC72FFE6D0B4FFD3A161FFF7F4F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFEBEAEAFFCDCCCBFFE4CCAAFFDDA95EFFDCA75CFFDBAD6AFFDAA55BFFE1B8
          7FFFE1BC8AFFDFB47BFFDDB279FFF7F3EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFDAD8D8FFB4B2B0FFE0D3BFFFE6BC7DFFE3B470FFE1B574FFE4BB7DFFE9C8
          97FFE9CB9FFFE7C594FFE6C492FFF8F4EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFE2E1E1FFA6A4A2FFB6B5B3FFCBCACAFFD9D8D7FFE2E0DFFFE7E3DEFFE5DF
          D8FFE7E0D6FFE9E0D1FFEBE1D0FFFCFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFDFDFDFFFAFAFAFFF7F7F7FFF7F7F7FFF5F5F5FFF2F1
          F1FFF1F1F1FFF9F9F9FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000001010301060A1203121B2A051A2739051B283B0413
          1D2D02090E170001020500000000000000000000000000000000000000000000
          0000000000000105080E05192A3C0C426682136799B51778B1CA187BB2CC156C
          A0BB0E4B738F061F324701070C14000000010000000000000000000000000000
          000001070C130B315169176CACC72695DEF23DABEDFC4EB6F0FD51B7F0FD41AE
          EDFC2A9BE5F61876B9D30B3B617B020C141E0000010100000000000000000103
          06090B2A485D3781BFD74CA7E9FA7AC1F2FEB5DEF8FFC9E6FAFFCBE7FAFFBBE1
          F9FF87C8F4FE3EA2ECFC1B7CC8E10A38617901070C120000000000010102030F
          1E29175B9EB770B1EBFABCDDF7FEDAEBF9FEC4DEF8FFA0CCF5FF9CC9F5FFBDDA
          F7FFD8EAF9FE9CCDF5FE3C9AE9FC1569B7D1051A3140000102030104090C082C
          56691C74CFE77DB6F0FEE4EEFBFFD6E6F9FF60A8EFFF2B8EEBFF278CECFF3D96
          EDFF90C0F3FFD8E8F9FE84BCF1FE2582DFF50B3A6F8501070D12020A141A0D42
          83991A76DEF6559BECFF95BEF2FF96BFF2FF4E99ECFF1B7EE9FF157BE9FF167C
          E9FF3B8EEBFFBCD6F6FFB9D6F6FF398CE6FB0E4E99B0020E1C23020E1D230F4B
          97AD2078E1FA4891EAFF4B92EBFF2D7FE8FF1F76E7FF1672E7FF1572E7FF1572
          E7FF247BE8FF90BAF1FFBAD4F6FF4790E8FD1256AAC10312262E030D1C21194C
          94A94C8DE4F9C2D8F6FFBED5F6FF4F8EEBFF327CE8FF317BE8FF327BE8FF3C82
          E8FF4B8CEAFF5893EBFF5591EAFF3E84E6FD2059A8BE0512242B02091216163F
          7B8D4885DEF3AFCAF4FFD5E3F8FF79A6EEFF4482E9FF3F7EE9FF417FE8FF6194
          EBFFABC6F4FFBCD4F6FF8CB5F0FF4988E4FA1D4D93A6030C191E010306070C24
          49543E75C9DE84ADEEFED5E1F7FEC8D9F7FF80A7EEFF6392EBFF6190EBFF7EA4
          EEFFD1DEF7FFEFF3FBFEB0CAF3FE5087DAEF1332616F0104090B00000000040B
          171B284F8D9E6392E1F5A1BDF1FEDAE3F8FEDAE5F8FFC8D7F6FFC5D5F6FFD7E2
          F8FFE1E8F9FFC8D6F5FE9EBAEBF83D65A8BA0814282E00010202000000000102
          03040F1E3840486EAFC07B9FE4F5A4BCF0FEC9D6F6FFD8E0F8FFD9E1F8FFCDD9
          F6FFADC2F1FE8AAAE8F96382BECE1B2D4F580104080900000000000000000000
          000002030607162239404961919D7D97CFDD97AFE5F3A2B9EBF9A3B9EBF999B1
          E6F4849ED6E4546D9FAC1E2C474F03060B0D0000000000000000000000000000
          000000000000010204040A0E171A28324B524E5D808A62739AA564759DA85363
          8791303C575F0C111D2002030506000000000000000000000000000000000000
          0000000000000000000000000000030406070A0C131510131C1F10141D200B0E
          15170405090A0000010100000000000000000000000000000000}
      end>
  end
  object ilLarge: TcxImageList
    SourceDPI = 96
    Height = 24
    Width = 24
    FormatVersion = 1
    DesignInfo = 6554013
    ImageInfo = <
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000010101040101010F01010122010101380101014D0101015A010101600101
          015E01010153010101400101012A010101160101010701010101000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          01050101011F0101014C1810108B362525B94E3939CE5A4545D5553F3FD5402C
          2CCB251919BA0705059F010101840101015D0101012E0101010D010101010000
          0000000000000000000000000000000000000000000000000000010101040101
          011F37272796876E6EE5C3AFAFFDD4C7C7FFD7CACAFFD6C6C6FFD4C0C0FFCBAC
          ACFFBE9797FF9C7575F6543B3BDB0B0808AB01010179010101350101010A0000
          00000000000000000000000000000000000000000000000000000201010E6249
          49AFD0C4C4FFE2E4E4FFE2E3E3FFDEDCDCFFDBD6D6FFDAD1D1FFD3BDBDFFD6C3
          C3FFC7B5B5FFC1A2A2FFC49A9AFF916969F3171010B401010168010101190101
          01020101010701010109010101030101010100000000000000003A292961D3C6
          C6FFE9EDEDFFE9EAEAFFE8E9E9FFE2E4E4FFDDDBDBFFDBD5D5FFD4BDBDFFDDCC
          CCFFCDB9B9FFCBB5B5FFBC9797FFC99A9AFF785656E70101017D0101012B0101
          011E010101360101013D010101250101010F01010103000000006047478CE3E1
          E1FFEFF0F0FFF5F5F5FFF3F3F3FFEBEBEBFFE0E1E1FFDAD4D4FFD5BBBBFFD6B6
          B6FFCB9F9FFFCFA5A5FFBC9090FFCA9E9EFFA07676F30101017F010101571D15
          1585332424B202020297010101790101014C010101240101010C32252546DCCE
          CEFFF4F9F9FFFCFDFDFFFAFDFDFFEFF2F2FFE3E5E5FFD7CCCCFFD2AEAEFFD19A
          9AFFCC8B8BFFCD8D8DFFBE8A8AFFC79D9DFE684B4BDD241B1BB2755A5ADBC29E
          9EFCB6A5A5FF816E6EF0312424CA0101019D010101740101013D000000005542
          4271DDD1D1F7DAB8B9FFD3A7AEFFDECBCFFFE0E1E1FFD3BCBCFFD0A1A1FFCD7D
          7DFFCC7A7AFFCC7979FFBB7F7FFFB88E8EFC9B7A7AF0CEAEAEFEDABABAFFD9B7
          B7FFBAABABFFADA7A7FFAC9E9EFF7A6161ED231818BF01010179000000000000
          00003324254CBE827EF9E4A26FFFDEAB9AFFCE9FA6FFC89096FFC87577FFC964
          64FFCA6767FFC76464FFBF8686FFDAC2C2FFDFC7C7FFDDC1C1FFD8B6B6FFD1A7
          A7FFAB8686FFAB9696FFB2A2A3FFAFA8A4FF8E8D7FF80101018E000000000000
          00002F21224EC78C7EFEFD9F13FFFFB029FFF8B75DFFE6AC85FFD08986FFC269
          71FFBA5458FFAF4848FFC39A9AFFE3D0D0FFD8B6B6FFD1A6A6FFCFA1A1FFCFA3
          A3FFAD8585FF9E7171FFA47C7DFFAA9A93FF93A98DFC0101018F000000000101
          01015E46498DD3956FFFFEAA22FFFFAC25FFFFAD24FFFFB32DFFFDBA4DFFEDB1
          72FFD79480FFBE6B6FFFC3888FFFD2A4A6FFD2ABABFFD6B2B2FFD8B6B6FFD7B4
          B4FFB89696FFAA8484FFA77E7EFFA17373FF9A6E70FB0101018F000000000101
          0104896B71C3DD9D61FFFFB52FFFFFB63AFFFFB73EFFFFB940FFFFB83CFFFFB9
          39FFFFBB42FFF7B75BFFE19A6BFFD1867DFFD4989BFFDBBCBCFFD9BABAFFD6B3
          B3FFB48888FFBA8686FFB88989FFAF8484FF9E7373FB0101018F000000000B09
          0919B18E91EDE5A65AFFFFBD40FFFFBD4AFFFFBF4EFFFFC151FFFFC151FFFFC1
          50FFFFBF4CFFFFBD43FFFFBD3EFFFAB642FFDC835BFFD5A9AFFFD9BBBBFFD6B2
          B2FFB08181FFC49090FFD29E9EFFC69393FFA47777FB0101018F000000002E25
          264FC6A3A1FEF0B254FFFFC451FFFFC65AFFFFC85EFFFFC961FFFFC961FFFFC9
          60FFFFC75DFFFFC458FFFFC151FFFFBE43FFDD8B5EFFD6AFB5FFD9BBBBFFD6B2
          B2FFB17E7EFFAC7A7AFFBA8787FFC79595FFA77878FB0101018F01010101564A
          4B86CBA89BFFF9BF58FFFFCB62FFFFCD6AFFFFD06FFFFFD272FFFFD273FFFFD1
          71FFFFCF6DFFFFCC68FFFFC95FFFFEC155FFD6896FFFD7B6BAFFD9BABAFFD7B1
          B1FFB47D7DFFB48181FFAE7C7CFFAE7C7CFFA37070FB0101018F010101048374
          77BCD0AC8DFFFECB64FFFFD171FFFFD579FFFFD87FFFFFDA82FFFFDA82FFFFDA
          81FFFFD77DFFFFD477FFFFD16DFFFBC361FFCF8A7FFFD9BABCFFD9BABAFFD7AE
          AEFFB47979FFBE8C8CFFBB8888FFB88686FFA77474FB0101018F0A090917B1A0
          A6ECD8B382FFFFD570FFFFD87FFFFFDC87FFFFE18EFFFFE293FFFFE393FFFFE2
          91FFFFDF8CFFFFDB84FFFFD87AFFF6C16DFFCC8E8AFFDABDBFFFD9BABAFFD5A9
          A9FFB87474FFB17A7AFFC08E8EFFC79797FFA97474FB0101018F26232348C9BB
          BDFEE0BC7DFFFFDB7DFFFFDE8AFFFFE495FFFFE89EFFFFEAA3FFFFEBA4FFFFEA
          A1FFFFE69BFFFFE291FFFFE086FFEDB975FFCC9493FFDBBFC0FFD7B7B7FFD2A5
          A5FFC56F6FFFC06B6BFFB86D6DFFB17373FFA46969FB01010190504C4D81CCBF
          BBFFF0CA78FFFFE386FFFFE695FFFFEBA2FFFFEFACFFFFF3B2FFFFF3B4FFFFF2
          B1FFFFEDA9FFFFE89DFFFFE690FFE5B17BFFCC9B9DFFE1CACBFFE5CFCFFFEBD6
          D6FFE0AFAFFFD38888FFCA6F6FFFC86868FFB36363FA01010182858283B8B9B0
          AEFFC0A882FFDCC28CFFEDD599FFFBEAAAFFFFF8BAFFFFFFC6FFFFFFC9FFFFFC
          C2FFFFF4B5FFFFEDA7FFFFEB98FFDBAA80FFD7B3B8FFF4E9E9FFF4EAEAFFF6EC
          ECFFF7F0F0FFF5E9E9FFEDD1D1FFE0AAAAFFC57F7FFD01010149A4A4A3D4CECA
          CAFFACA4A9FFA5989DFFA69492FFAB9690FFBBA697FFD0C0A8FFE1D6B5FFF1EA
          BEFFFEF6BCFFFFF2ADFFFFF09DFFD4A584FFD6B0B5FFE7CECEFFE3C7C7FFE1C5
          C5FFD9BBBBFEC2A5A5F0997F7FCF7C6868AD4D3B3B7E010101101E1E1E315352
          52707572729B908A8BBFB5AAABE6BFB0B1FBBDA8ABFFAE9397FFAC8E90FFB08E
          8DFFB6938BFFC6A38EFFD8B48DFFC39283FFA0797BEB7C6060BC614A4A903D2C
          2C661C1414360D0A0A1802010105010101010101010100000000000000000000
          000000000000010101010B0A0A0E1A1717283B35355660575781786A6AA69883
          84D0B39597F1BA9598FEB4898EFFAE7F7FFB0E0A0A5F01010119010101010101
          0101000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000040303051915
          1523312B2B404E3F3F6F796262A36C53539F0101011301010105000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000201020203030309050506150607071B050606160303040C0202
          02040101010100000000000000000000000001010101020202040303040C0506
          07170707071D050506160303040A020102020000000000000000000000000000
          000001010101030202060605061A0E0E0F47131416631010114F090809290404
          05120203030601010102000000000101010202020306040405120908082A1010
          11511515176B0F0F10490606061B030202060101010100000000000000000000
          0000010101010303030C0C151A491C2D38B4232325C4241914B51514156E0B0A
          0B3505050616030303070202020303030308050506170B0A0B35161F26812034
          42CC252425C62016129D0B08072F0303030C0101010100000000000000000000
          0000010101010303030E196996E61CA5D1FF0379ABFF292B2DE7281B16C71A19
          1B890C0B0C3C0606071C040405110607071D0D0B0B3E1A29349F2276A3FBD4E5
          EEFF1E74A1FD241914B10C0908370303030E0101010200000000000000000000
          0000010101010303030C368EBCFFD0F6FFFF02CCFFFF078ABCFF263C49F3291A
          14CF1C1B1B950F0D0D480B0A0A360F0D0D491B3C4FC03283ACFFF2F9FCFF68EA
          FFFF247AA8FD201B1AA20B0909320303030C0101010200000000000000000000
          00000101010103030308135073BBDBE9F0FF1FD3FFFF09CFFFFF19ACD7FF2441
          52F52B1B13D6221D1DB01814127A1D4760D85D9DBDFFDBF7FFFF39DAFFFF3AD6
          F6FF1E506DED1613146E07070722020303070101010100000000000000000000
          0000000000000202020409202D505CA9D0FFAEEFFFFF01CCFFFF1BD5FFFF2CBB
          DFFF21506CFA2C211BE71F506DF380B2CCFFE2FAFFFF1AD4FFFF08CEFFFF258B
          C0FF212B33C50E0B0B4205050514010202030000000000000000000000000000
          000000000000010101020303030C1F6E99E5E9F2F6FF0ECFFFFF0ED0FFFF33DD
          FFFF48D6F0FF036A9BFFA2C7DAFFCCFAFFFF57E8FFFF24D8FFFF03CCFFFF1B60
          89F81B191A8B0A09092E0303030B010101020000000000000000000000000000
          00000000000001010101030303080E364C8380B2CCFF85E7FFFF03CCFFFF24D8
          FFFF47E3FFFF7DF1FFFFD5FEFFFF86F8FFFF62EDFFFF37DEFFFF0CAEDDFF223B
          49E01310105F0707072103030307010101010000000000000000000000000000
          000001010101020202050303040F0A0F1337116F9FFEF1F9FCFF03CCFFFF11D2
          FFFF3ADFFFFF5BEAFFFF81F7FFFF94FDFFFF74F3FFFF47E4FFFF087DACFF2723
          23CD130F0F5E0908092A0304040F020202050101010200000000000000000202
          020303030309050505160A08092D120F10581A5071DDAACCDDFF5CDFFFFF07CE
          FFFF29D9FFFF4AE5FFFF72F2FFFF94FDFFFF81F7FFFF56E0F6FF1E6D96FE2D1C
          13E1221C1CAB120F10590A090A2E050506160303030902020203000000000404
          0512070707220D0B0B40181B1F821E465EDE0185B8FF02C9FCFF24D6FFFF02CC
          FFFF19D4FFFF3FE1FFFF60ECFFFF86F9FFFF91FCFFFF6BEDFCFF1E97C0FF1C61
          86FD2B211BE2261C17BF191819820D0B0C41070708220303040E000000000B0C
          0E39141214631E313DC00A71A3FE01B8EBFF14D2FFFF3EE1FFFF27D9FFFF09CF
          FFFF0ACFFFFF2EDBFFFF4FE6FFFF78F4FFFF96FEFFFF7DF5FFFF54E8FFFF26CA
          F0FF0675A5FF273640F02A1A14D2211C1BAC131213600A090A2D000000001A27
          329B1C5679EC018DC0FF05CAFCFF60EBFFFF6EF0FFFF51E7FFFF33DDFFFF1AD5
          FFFF02CCFFFF1FD6FFFF43E2FFFF67EEFFFF8BFAFFFF8CFBFFFF67EEFFFF3CE0
          FFFF13D3FFFF0199CCFF1F5677FB2A2625E2261B17BB16161970082434500979
          AAFF01BDF0FF23D7FFFF84F8FFFF96FEFFFF79F4FFFF64ECFFFF5EE6FFFF41DD
          FFFF06CDFFFF11D1FFFF34DDFFFF56E8FFFF93F8FFFFA8FEFFFF79F4FFFF4EE6
          FFFF22D8FFFF03CCFFFF19CCF6FF2078A7FD243541DD1E1B1B9811557BBF6BD0
          EEFFB3F1FFFFE4FBFFFFE9FDFFFFF6FFFFFFE8FAFCFFD4E5EEFFA1DEEEFFECFB
          FFFF13D2FFFF04CDFFFF24D8FFFF47E3FFFFA2E0EEFFC0E4EEFFDFF1F6FFE6FC
          FFFFECFBFFFFD6F7FFFFD7F7FFFF99EBFCFF3780A6FA171619750B3249702C71
          95D237799AD52D6581BD1D6084CC145174C414577ECF15577ED016587FD5D4E5
          EEFF32DAFFFF03CCFFFF16D3FFFF34D4F6FF1C5B80F6185B82E416587FD41457
          7ECF1D597BBF326C8AC5387B9CD8317FA8EA11364C8E08070726000000000202
          020402020205020201070302010803020208020202070303030A0C2D416C80B2
          CCFF71E6FFFF0ED0FFFF09CFFFFF1BB3DDFF23343FDB130F105C080708260404
          04130403030F04030310040302100403020F0303030E0303030A000000000101
          0101010101010101010101010101010101010101010101010101051017262B80
          AAFFB9F3FFFF1DD6FFFF01CCFFFF047FAFFF242021BE0E0B0B41050404130202
          0204010101020101010201010102010101020101010201010101000000000000
          000000000000000000000000000000000000000000000101010102020205247B
          A6FCF2F9FCFF27D9FFFF08CEFFFF1B6189FA1F1C1DA20B0A0B340303030D0101
          0102000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001010101020202051048
          69A7C6DDE8FF4EE1FFFF17C6F0FF204B65ED19171A8008080927030303090101
          0101000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001010101020202040C34
          4B7977B1CCFF91EDFFFF15A0CCFF233441D7110F10550606061A020202050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010101010718
          2138247CA7FFD3F8FFFF1F81B4FF232327B70D0B0B4104040512010101020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000011557BBF2989BDFF0F47679F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001000001030201060A07
          051719110E382318134D19110E38000000000000000000000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000001000001030201060B0806181C13
          0F3F1040A0FF3C29218430211A6B19110D380000000002010103000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000001000001030201060B0806181C130F3F1040
          A0FF0C367BFF0B326CFF3C2920842318134D0000000002010105000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0001000000010000000101000001030201060B0806181C130F3F1040A0FF0C36
          7BFF0B326CFF1241B7FF0C367BFF19110E380000000002010103000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000403020A0C08061A1C130F3F1040A0FF0C367BFF0B32
          6CFF1241B7FF0C367BFF1C130F3F0A0705170000000000000001000000000000
          00000000000001010001030202060604040E0B080619110B0924140E0A2B150F
          0C2F140E0A2C110C0927120D0A291E1511441040A0FF0C367BFF0B326CFF1241
          B7FF0C367BFF1C130F3F0B080618030201060100000100000000000000000000
          000001010102040302080B080518160F0C302218124B2C1E186132231B6E3424
          1C7432221B6F2E1F18652D1E18631040A0FF0C367BFF0B326CFF1241B7FF0C36
          7BFF1C130F3F0B08061803020106010000010000000000000000000000000101
          0001040302080D09071D2419134F493328A1604234D46B4938F0704C3BFD6A47
          37F2614132DE54392CBF184197FF0C367BFF0B326CFF1241B7FF0C367BFF1D13
          0F3F0B0806180302010601000001000000000000000000000000000000010202
          02060B08061834251D71634436D2A3846FFFC9B099FFE9D5B9FFFCEDCCFFE9D7
          B8FFC7B095FF9D7F6AFF624233E424385EFF1241B7FF0C367BFF2117134B0C09
          071C030201070100000100000000000000000000000000000000010101020604
          040E30221B66785949E1C2A693FFFDD4B1FFFFCC9AFFFFD5A2FFFFE1B4FFFFEB
          C2FFFFEBC2FFFDE9C3FFBDA48BFF755543EF253B69FF37261E7A1B130F3E0806
          051302010103000000000000000000000000000000000000000002010104150F
          0C2C624638C7C3A694FFFFC599FFFFAA69FFFFBB7DFFFFD7A5FFFFE9BFFFFFF1
          C9FFFFEEC6FFFFE4B8FFFFE1B7FFBDA38CFF624333E3412D22912318134D0C08
          061A000000000000000000000000000000000000000000000000040201073C2B
          2379A98978FFFDCCA9FFFF974EFFFF9E54FFFFBB7FFFFFD7A5FFFFE7BBFFFFEC
          C2FFFFEAC0FFFFDDAEFFFFCB94FFFDD9B5FF9D7D6BFF54392BBE2C1E1861100B
          0924000000000000000100000000000000000000000000000000040302085C44
          37B6CEB2A1FFFFAB72FFFF8B3BFFFF9C54FFFFB578FFFFCD99FFFFDCADFFFFE1
          B4FFFFDDAEFFFFD09BFFFFB879FFFFC18CFFC7AC98FF624232DE32221B6F130E
          0A2C000000000000000100000000000000000000000000000000040302097556
          45E2ECD3C2FFFF9149FFFF8B3FFFFF9B54FFFFAE6FFFFFBF88FFFFCB97FFFFCF
          9BFFFFC892FFFFBB7DFFFFA45DFFFFA05BFFE9D0BDFF6A4837F235241C75150F
          0B2F000000000000000100000000000000000000000000000000040302088461
          50FCFDE6D7FFFF8638FFFF9048FFFF9F5FFFFFAB70FFFFB37BFFFFB87FFFFFB8
          7EFFFFB070FFFFA35DFFFF9244FFFF8634FFFCE4D2FF714C3BFD32221B6F130E
          0A2C000000000000000100000000000000000000000000000000040201077757
          49E1ECD5C6FFFFA062FFFF9D5DFFFFB280FFFFC7A1FFFFBD8FFFFFAD73FFFFA3
          62FFFF9A53FFFF9347FFFF8531FFFF8D41FFE9CFBDFF6C493AF02C1E1861100B
          0924000000000000000100000000000000000000000000000000020101045F46
          3AB0D1B7A8FFFFBE94FFFFAB76FFFFD7BDFFFFF8F4FFFFE1CEFFFFB583FFFF9D
          5CFFFF8F45FFFF8636FFFF781FFFFFA66BFFCAAD9BFF604334D42218124B0B08
          0619000000000000000000000000000000000000000000000000010101023A2B
          236CB09281FFFEDBC4FFFFC099FFFFE9DBFFFFFFFFFFFFF5EFFFFFBA8DFFFF9A
          58FFFF893CFFFF7C27FFFF883BFFFDCAA7FFA38371FF4A3328A1160F0C300604
          040E000000000000000000000000000000000000000000000000000000010E0A
          091B644A3DB7CAB1A3FFFFDDC7FFFFDDC7FFFFEEE3FFFFD4B8FFFFB17FFFFF99
          58FFFF873AFFFF8C42FFFFBD92FFC2A594FF634536D22419134F0B0806180202
          0206000000000000000000000000000000000000000000000000000000000101
          0001281D18497E6153D3CAB2A5FFFEE4D4FFFFD8BFFFFFC29AFFFFA76FFFFFA4
          69FFFFB07EFFFECEADFFC4A796FF785A4AE135251D710D09071D040302080101
          0001000000000000000000000000000000000000000000000000000000000000
          000001010102281E1849644A3DB7B09383FFD1BBAEFFECDACFFFFDEBDFFFECD6
          C8FFCFB4A3FFAA8A79FF634739C731231C660B08051804030208010101020000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000010100010F0B091B3A2C246C5F463AB0785949E1856351FC7656
          46E25D4437B63D2C2479150F0C2C0604040E0302020601010001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001010101020201010403020107040302080403
          0209040302080302010702010104010101020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          000000000000000000000000000000000002020202050504040C0A0705150F0A
          081E110D0B26150F0C2C16100D2F150F0D2D130E0B280F0B09210C0806180705
          040F030303070101010300000001000000000000000000000000000000000000
          00000000000000000000010000030404020909070515120D0A261C14103B251B
          154F2D1F195E32231C6934251D6E33241D6C2F211A63281D17551F1711421610
          0C2E0C09071B0605030D02010105010000010000000000000000000000000000
          000000000000020100030604040B0D08071B19120F3524342468256A4AAB1D82
          64D6128370EF057B74FB057A7DFC127B81F1217780DF2F6369C0363B398F2E21
          1B621E161241110B09240805050F030201050100000100000000000000000000
          0000010100030503030A0E0A081E1C15113F216934A3178A4BE60FA96CFF1FC9
          99FF2EE4C7FF3AF6EBFF3AF3F7FF2FD8E4FF1FB2C8FF0E86A5FF1A6886F03259
          6CC6382922792419154D130D0B280805050F0301010500000001000000000000
          0000030302080D08071A1B25134B207A2DBB11A542FF31D677FF5AFEB3FF6AFE
          CEFF75FEE3FF7CFEF5FF7DFCFFFF77F4FFFF6DEAFFFF5DDAFFFF32A1D3FF0E66
          9CFF2D577BDA3931318A241A144E120C09250605030D01010103000000000000
          00000806051217120D331F7A23B71CB337FF4FEB76FF79FEA6FF8FFEC2FF9EFE
          D8FFA6FEE9FFAAFEF7FFAAFEFFFFA6F7FFFF9FEEFFFF92E2FFFF7DD0FFFF52A6
          E9FF195EA8FF314C7DDA3929217B1F1611420C09071B03030308000000000000
          0000100C0922226717941CB025FF55EC67FF85FE9AFF9FFEB7FFAEFECBFFB7FE
          DCFFBBFEEAFFBCFEF7FFBCFEFFFFBBF8FFFFB7EFFFFFB0E5FFFFA2D7FFFF8CC4
          FFFF5B96E9FF16479FFF38426DC72F221B6416100C2F08060510000000000000
          00001C2A0D49309616DD50DC42FF84FE85FF9CFEA5FFADFEBAFFB5FEC7FFB8FE
          D4FFB8FEE3FFB9FEF3FFB9FEFFFFB8F6FFFFB8ECFFFFB5E1FFFFAFD6FFFFA2C8
          FFFF8AB1FFFF4770D5FF253B8BF13A303B92211813460D09071A000000000000
          000036640F8B4FBF19FF89FE5EFF9FFE89FFAAFEA2FFABFEAEFFAAFEB5FFACFE
          C0FFABFED2FFACFEEBFFACFEFFFFABF0FFFFABE1FFFFABD4FFFFA9CAFFFFA3BE
          FFFF95AFFFFF7994FFFF213AACFF37356CC42A1E195B110C0924000000000000
          0000568A0DBD7FDA23FFA8FE5EFFB4FE82FFB6FE93FFB0FE98FFA6FE9DFF9FFE
          A9FFA2FEB9FFA4FEDBFFA4FDFFFFA2E6FFFF9FCDFFFF9BBDFFFF99B2FFFF97AB
          FFFF8FA0FFFF7A8BFFFF3848CEFF2A2C85E132231C6A150F0C2D000000000000
          000078A10AE1AFED25FFC5FE54FFCCFE72FFCCFE80FFC9FE88FFC5FE93FFBBFE
          99FFA4FE9CFF99FEB2FF99FDFFFF99CAFFFF99B2FFFF93A4FFFF8895FFFF848E
          FFFF7D85FFFF6D75FFFF4149E8FF191A8EF336261E7318110D32000000000000
          000098B006F7DAF91FFFE3FE41FFE7FE5CFFEAFE6EFFEDFE84FFEFFE8FFFEFFE
          8FFFEFFE90FFEFFE90FF9090FFFF9090FFFF8F8FFFFF8F8FFFFF8484FFFF6F6F
          FFFF6565FFFF5555FFFF3838F9FF0A0990FC37271F7618120D34000000000000
          0000B0B504F7F5F914FFFDFD2DFFFEFB43FFFEFB65FFFEFA85FFFEF686FFFEF1
          87FFFEE488FFFEBF88FFFE8890FFFE87C6FFFE87DDFFFE86E6FFFE86EAFFFE68
          E8FFFE49E5FFFE3AE5FFF824DFFF960782FC35261E7118100D31000000000000
          0000B0A705DFF2E60BFFFEEF1AFFFEEC29FFFEED68FFFEEA7FFFFEE283FFFED4
          83FFFEBC84FFFE9784FFFE838CFFFE83ABFFFE83C4FFFE82D3FFFE7FDBFFFE68
          DBFFFE2ED4FFFE20D5FFEB11C5FF9C0D80F030221C67140E0B2B000000000000
          0000968606B7E7CD04FFFEDC0CFFFED414FFFEDE72FFFED87CFFFECC80FFFEBB
          81FFFEA383FFFE8A82FFFE828BFFFE83A0FFFE81B3FFFE80C2FFFE7FCDFFFE72
          D1FFFD17BDFFFE0EC3FFD806A9FF971473D9281D1756100C0922000000000000
          00005C4D0063DCB101FFFEC404FFFEB908FFFECF75FFFEC880FFFEBC83FFFEAB
          84FFFE9884FFFE8886FFFE868EFFFE859CFFFE84ABFFFE82B8FFFE81C3FFFE75
          C7FFFD09A8FFFE05B1FFC3018DFF7B1A55AF1E1611400C080718000000000000
          00001B15001CB38204D5EEA301FFFE9F02FFFEB964FFFFC08BFFFFB48CFFFFA6
          8CFFFF988DFFFE8D8EFFFE8D95FFFF8D9FFFFE8CABFFFE8CB6FFFE8BC0FFFE64
          B5FFFD0295FFE4018FFFA80C6EE8421C296E140F0B2A0605040D000000000000
          0000000000005F3F0065DF8600FFF68500FFFE9943FFFFBD97FFFFB398FFFFA7
          97FFFF9D97FFFE9899FFFE98A0FFFE98A7FFFE97AFFFFE98B8FFFE98C1FFFE43
          9BFFF10080FFC70073FF791649A81B140F3B0A08061702030207000000000000
          000000000000010100017F430089E56900FFF96B13FFFE9B72FFFFB8A5FFFFAF
          A5FFFFA9A5FFFEA5A7FFFEA6ADFFFFA6B2FFFEA5B8FFFEA5BEFFFE72A4FFF413
          71FFD30064FF8F114DBE201713450F0A081F0504030B01010003000000000000
          000000000000000000001208001280330089E54900FFF45928FFFE907BFFFFB9
          B3FFFFB3B2FFFEB2B4FFFEB2B7FFFFB2BCFFFEB2C1FFFE7B9DFFEE2867FFD300
          50FF8F1142BA2E14194E100B09210604040C0201010400000001000000000000
          000000000000000000000000000001000001611A0065BB2804D5EA3016FFF45D
          54FFFA8A89FFFEAEB0FFFEAEB4FFFA8896FFF25470FFE11646FFB50938DE7511
          2E971A110F360E09071D0604040C020201040100000100000000000000000000
          000000000000000000000100000200000000000000001C05001C6D1308809506
          00A0C10404DFD50108F7D20110F7BF051AE19F0A1FBE710E208D3110144B110C
          09240A0705150404020902010104010000010000000000000000000000000000
          00000000000000000000000000000000000000000000000000000604030D0B08
          061917100C3318100C3518100C3518100C3518100C3518100C350D09071C0604
          030D000000000000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001010102000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000003020207080605120F0B
          0921150F0B2C17110D3118110E3318110E3318110E3318110E3318110E331811
          0E3318110E3318110E3318110E3318110E3318110E3318110E3318110E331811
          0E3318110E3318110E3317110D31150F0B2C0F0B0921080605120F0B09211D15
          113D261B16512B1E195B2D1F195E2D1F195E2D1F195E2D1F195E2D1F195E2D1F
          195E2D1F195E2D1F195E2D1F195E2D1F195E2D1F195E2D1F195E2D1F195E2D1F
          195E2D1F195E2D1F195E2B1E195B261B16511D15113D0F0B0921C0A890FF8070
          60FF806050FF806050FF806050FF806050FF806050FF806050FF806050FF8060
          50FF806050FF806050FF806050FF806050FF806050FF806050FF806050FF8060
          50FF806050FF806050FF806050FF806050FF261B1651150F0C2CC0A890FFFFF9
          F8FFFFF8F6FFFFF7F4FFFFF6F3FFFFF5F1FFFFF3EFFFFFF2EDFFFFF1ECFFFFF0
          EAFFFFEEE9FFFFEEE7FFFFEDE6FFFFEBE5FFFFEBE3FFFFE9E3FFFFE9E1FFFFE8
          E0FFFFE8E0FFFFE8E0FFFFE8E0FF806050FF2A1E185A17100D31C0A890FFFFFA
          F8FFFFFAF7FFFFF8F6FFFFF7F4FFFFF6F2FFFFF4F1FFFFF3EFFFFFF1EDFFFFF1
          EBFFFFF0EAFFFFEEE8FFFFEDE7FFFFECE5FFFFEBE5FFFFEAE3FFFFE9E2FFFFE9
          E1FFFFE8E0FFFFE8E0FFFFE8E0FF806050FF2C1F195D18110E33C0A8A0FFFFFB
          FAFFFFFAF9FFFFF9F7FFDFDAF1FF4048E0FFDFD8EFFFFFF4F0FFFFF3EFFFFFF2
          EDFFFFF0EBFFFFEFEAFFFFEEE9FFFFEDE7FFFFECE5FFFFEBE4FFFFEAE3FFFFE9
          E2FFFFE9E0FFFFE8E0FFFFE8E0FF806050FF2D1F195E18110E33C0A8A0FFFFFC
          FAFFFFFAF9FFDFDBF4FF4048E0FF4048E0FF4048E0FFDFD8EFFFFFF4F0FFFFF3
          EEFFFFF1ECFFFFF0EBFFFFEFE9FFFFEEE8FFFFECE6FFFFECE5FFFFEBE4FFFFEA
          E2FFFFE9E1FFFFE8E1FFFFE8E0FF806050FF2D1F195E18110E33C0A8A0FFFFFC
          FCFFFFFCFBFF4048E0FF4048E0FF4048E0FF4048E0FF4048E0FFDFD8EEFFFFF3
          EFFFFFF3EDFFFFF1ECFFAE9387FFAD9285FFAD9285FFAD9084FFAC9083FFAC8E
          81FFAC8E81FFFFE9E1FFFFE8E0FF806050FF2D1F195E18110E33C0A8A0FFFFFD
          FCFFFFFCFBFFDFDDF6FF4048E0FFDFDBF3FFDFDAF2FF4048E0FF4048E0FFDFD7
          EEFFFFF3EFFFFFF2EDFFFFF1ECFFFFF0E9FFFFEEE8FFFFEDE7FFFFECE5FFFFEB
          E4FFFFEAE2FFFFEAE2FFFFE9E1FF806050FF2D1F195E18110E33C0A8A0FFFFFE
          FDFFFFFDFCFFFFFCFBFFFFFBFAFFFFFAF9FFFFF9F7FFFFF8F5FF9B9BE9FF4048
          E0FFFFF4F0FFFFF3EEFFFFF1EDFFFFF0EBFFFFEFEAFFFFEEE8FFFFEDE6FFFFEC
          E5FFFFEAE4FFFFEAE2FFFFE9E2FF806050FF2D1F195E18110E33C0A8A0FFFFFE
          FEFFFFFEFDFFFFFDFBFFFFFBFBFFFFFBF9FFFFF9F7FFFFF9F6FFFFF7F5FFFFF6
          F3FFFFF5F1FFFFF4EFFFFFF2EEFFFFF1ECFFFFF0EAFFFFEEE9FFFFEEE8FFFFEC
          E6FFFFECE5FFFFEAE3FFFFE9E2FF806050FF2D1F195E18110E33C0A8A0FFFFFF
          FFFFFFFEFDFFFFFEFDFFDFDEF7FF4048E0FFDFDCF5FFFFF9F8FFFFF9F6FFFFF7
          F4FFFFF5F3FFFFF5F1FFFFF4EFFFFFF2EEFFFFF1ECFFFFEFEBFFFFEEE9FFFFED
          E8FFFFECE6FFFFEBE4FFFFEAE4FF806050FF2D1F195E18110E33C0A8A0FFFFFF
          FFFFFFFFFEFFDFDFF9FF4048E0FF4048E0FF4048E0FFDFDCF5FFFFF9F7FFFFF8
          F5FFFFF7F4FFFFF6F3FFFFF4F0FFFFF3EEFFFFF2EDFFFFF0ECFFFFEFEAFFFFEE
          E9FFFFEDE7FFFFECE5FFFFEBE4FF806050FF2D1F195E18110E33C0A8A0FFFFFF
          FFFFFFFFFFFF4048E0FF4048E0FF4048E0FF4048E0FF4048E0FFDFDCF4FFFFF9
          F6FFFFF7F5FFFFF6F3FFB69F95FFB69E93FFB69D92FFB59C90FFB59C90FFB59B
          8FFFB4998DFFFFECE6FFFFECE5FF806050FF2D1F195E18110E33C0A8A0FFFFFF
          FFFFFFFFFFFFDFE0F9FF4048E0FFDFDEF8FFDFDEF7FF4048E0FF4048E0FFDFDB
          F3FFFFF8F6FFFFF8F4FFFFF6F3FFFFF5F1FFFFF4F0FFFFF3EEFFFFF2ECFFFFF0
          EBFFFFEFE9FFFFEEE7FFFFECE6FF806050FF2C1F195D18110E33C0A8A0FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFDFCFFFFFCFBFF9B9DECFF4048
          E0FFFFF9F7FFFFF8F6FFFFF7F4FFFFF6F3FFFFF4F1FFFFF3EFFFFFF2EDFFFFF1
          EBFFFFF0EAFFFFEFE9FFFFEDE7FF806050FF2A1E185A17100D31C0A8A0FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFEFEFFFFFDFDFFFFFCFBFFFFFB
          FAFFFFFAF8FFFFF9F7FFFFF7F5FFFFF7F3FFFFF6F2FFFFF4F0FFFFF3EFFFFFF2
          EDFFFFF1EBFFFFEFEAFFFFEEE8FF806050FF261B1651150F0C2CC0A8A0FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFEFFFFFEFDFFFFFCFCFFFFFC
          FAFFFFFBF9FFFFF9F7FFFFF8F7FFFFF8F5FFFFF7F3FFFFF5F2FFFFF4F0FFFFF2
          EEFFFFF1EDFFFFF0EBFFFFEFE9FF907860FF1D15113D0F0B0921C0A8A0FFC0A8
          A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A8
          A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A8
          90FFC0A090FFB0A090FFB0A090FFB0A090FF0F0B092108060512000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          000000000000000000000000000101010104030202080504030E080605150A07
          061A0C09071F0D0907210C09071F0A07061A080605150504030E030202080101
          0104000000010000000000000000000000000000000000000000000000000000
          00000000000001000002020101060604030F0B08061C100C092C17100D3B1C14
          10471F16114F201712521F16114F1C14104717100D3B100C092C0B08061C0604
          030F020101060100000200000000000000000000000000000000000000000000
          0000010100020302020808060414100C0A291A120F43251A155F2F211A783627
          1F8B3B2A22973C2B229A3B2A229736271F8B2F211A78251A155F1A120F43100C
          0A29080604140302020801010002000000000000000000000000000000000100
          00020302020709060516130E0B31211713544431268A7C5F48C4A58266E4C29D
          7CF5D3AD8BFDD1AC89FDC19B7AF7A68265EB81624AD3503A2CAA30231B7C2117
          1354130E0B310906051603020207010000020000000000000000000000010201
          010608060414130E0B31251A155D785B46B9BA9476EEE6BC98FFEEC5A0FFF2CB
          A6FFF6CDAAFFF5CDA8FFF2C9A3FFECC29EFFE2B894FFB89273F5806048D23727
          1F8B241A145C130E0B3108060414020101060000000100000000010101040504
          030E100A08282E2119618F6E54C9E0B691FFEFC5A0FFF7CFAAFFF8D4B2FFF9D8
          B9FFFAD9BBFFFAD8BAFFF9D5B5FFF8D1AEFFF5CBA7FFECC29CFFDAB08BFF9370
          53E0422F249320171355100A08280504030E0101010400000000030202070A07
          061B1A130F448B6A50C3E2B790FFF1C6A0FFF7CFABFFFAD4B5FFFADABDFFFADD
          C2FFFADEC3FFFADDC3FFFADBBFFFFAD7B7FFF9D2B0FFF6CCA8FFEFC49CFFDAAE
          87FF8F6B4FDD32241C7E19120E430A07061B03020207010000010504030E110C
          092C6C503B9FDCB088FFEFC39CFFF7CDA9FFFAD2B2FFFBD9BAFFFADDC1FFFADE
          C3FFFADEC3FFFADEC3FFFADDC2FFFBDABCFFFBD5B5FFF9D1AFFFF5CBA6FFECBF
          96FFD0A37BFF77563EC6251B1560110C092C0504030E01010002080605152D20
          1752AB835FE1E6B78EFFF2C59EFFF6CDA8FFF8D1AFFFF9D6B6FFFADABDFFFADB
          BFFFFADBBFFFFADBBFFFFADBBEFFFAD7B7FFF9D3B1FFF8D0ADFFF5CAA5FFF0C1
          99FFE0AE84FFA47A58F0422E228917110D3D08060515020101050A08061C6246
          3091D2A075FFECBA8DFFF1C39AFFF4C9A3FFF6CBA7FFF7CFACFFF8D3B2FFF8D4
          B4FFF8D5B5FFF8D5B5FFF8D3B2FFF7D1AEFFF6CCA8FFF6CCA6FFF3C7A0FFEFBF
          95FFE9B484FFC39166FF6E4D34BC1D15104B0A08061C030202070D0907218860
          3FC0D7A172FFE9B586FFEEBD92FFF1C39AFFF2C59EFFF3C7A0FFF3C9A2FFF4CA
          A3FFF4C9A3FFF4C9A3FFF3C8A2FFF3C8A1FFF3C69FFFF2C59DFFF0C198FFECBA
          8DFFE6AF7EFFCD9565FF875E3CDB211813560D090721030202080E0A08249F6E
          44E2D99E6AFFE6AD7CFFE9B486FFEDBA8EFFEEBE93FFEFC096FFF0C299FFF0C3
          9BFFF0C49DFFF0C49DFFF0C39BFFF0C198FFEFC095FFEEBD92FFEBB98CFFE8B2
          83FFE3A875FFD39661FF93653DEF2419145C0E0A0824030202090E0A0824AA72
          43F7DA9960FFE1A46FFFE5AB79FFE8B081FFEAB588FFECBC92FFEDC098FFEEC0
          99FFEEC099FFEEC099FFEDC098FFEEC098FFECBB92FFE9B487FFE6AF7EFFE3A9
          75FFDFA069FFD79459FF976337FB2419145C0E0A0824030202090D090721A66C
          3BF7D69155FFDC9A61FFE0A16BFFE3A875FFE8B589FFEBBB93FFEBBC94FFEBBD
          94FFEBBD94FFEABC94FFEBBD94FFEABB93FFEABB92FFE7B488FFE2A772FFDE9E
          67FFDA965CFFD38D4FFF925D31FA211813560D090721030202080A08061C955E
          30DFCD8649FFD79054FFDA975CFFE0A775FFE6B68BFFE8B88FFFE8B991FFE8BA
          92FFE8BA91FFE8BA91FFE8BA91FFE8B990FFE7B88EFFE6B68BFFE0A673FFD994
          58FFD58E50FFC78143FF8A582CEB1D15104B0A08061C03020207080605157B4D
          26B7C07A3CFFD38848FFD58D4EFFE1AB7DFFE5B58BFFE5B68EFFE6B88FFFE6B8
          90FFE7B890FFE7B891FFE6B78FFFE5B78FFFE5B68DFFE4B48AFFE0AA7BFFD48B
          4CFFD28645FFB87338FF7B4E28CE17110D3D08060515020101050504030E5535
          1A7EB36F34FFD08340FFD18543FFE2B288FFE4B58DFFE5B78FFFE5B891FFE5B8
          91FFE5B891FFE5B992FFE5B891FFE5B791FFE5B68FFFE3B48CFFE2B287FFD184
          42FFCF823FFFA7672FFF5E3B209E110C092C0504030E01010002030202071F14
          0B348D5728D4C17636FFCF803DFFE1B084FFE5B994FFE5BA94FFE5BA95FFE6BB
          96FFE6BB96FFE6BB96FFE5BA95FFE5BA95FFE5BA94FFE5B994FFE0AE84FFCE80
          3CFFBB7334FF895428E12D1E13580A07061B0302020701000001010101040504
          030E5534197DB16C2FFFC77A38FFDCA372FFE6BF9DFFE6BF9DFFE6BF9DFFE7BF
          9DFFE7BF9EFFE7BF9EFFE7BF9DFFE6BF9DFFE6BF9DFFE6BF9DFFDCA372FFC478
          36FFA5632BFF5C3A1E98100A08280504030E0101010400000000000000010201
          0106090605156D431FA0B56D30FFCD874BFFE5BC99FFE9C6A8FFE9C6A8FFE9C6
          A8FFE9C6A8FFE9C6A8FFE9C7A9FFE9C7A9FFE9C6A8FFE5BC99FFCB864AFFAC68
          2CFF704522B4140E0B3208060414020101060000000100000000000000000100
          000203020207160E09266D431FA0B36D30FFCB8C55FFE6BE9BFFECCDB3FFECCD
          B3FFECCDB3FFECCDB3FFECCEB3FFECCEB3FFE6BE9CFFC98A55FFAA682DFF6F45
          22B020160E400906051603020207010000020000000000000000000000000000
          000001010002030202080806051556351A7E905728D4BB7A41FFD4A277FFE2BA
          98FFEBCCB1FFEBCCB2FFE1BA98FFD2A176FFB7773FFF8D5727DB5A381D8D110C
          0A2A080604140302020801010002000000000000000000000000000000000000
          00000000000001000002020101060604030F20140C355435197E7B4C23B6955B
          29DEA4632BF7A4622AF7935A28DF7B4C23BA58371C8725180E430B08061C0604
          030F020101060100000200000000000000000000000000000000000000000000
          000000000000000000000000000101010104030202080504030E080605150A07
          061A0C09071F0D0907210C09071F0A07061A080605150504030E030202080101
          0104000000010000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          000000000000000000000000000101010104030202080504030E080605150A07
          061A0C09071F0D0907210C09071F0A07061A080605150504030E030202080101
          0104000000010000000000000000000000000000000000000000000000000000
          00000000000001000002020101060604030F0B08061C100C092C17100D3B1C14
          10471F16114F201712521F16114F1C14104717100D3B100C092C0B08061C0604
          030F020101060100000200000000000000000000000000000000000000000000
          0000010100020302020808060414100C0A291A120F43251A155F2F211A783627
          1F8B3B2A22973C2B229A3B2A229736271F8B2F211A78251A155F1A120F43100C
          0A29080604140302020801010002000000000000000000000000000000000100
          00020302020709060516130E0B31211713543327208A483D35C4594D46E46358
          52F56A6159FD696057FD635951F7594D45EB4E4037D33F2F27AA30231B7C2117
          1354130E0B310906051603020207010000020000000000000000000000010201
          010608060414130E0B31241A145D433932B95E554DEE6C6762FF6F6C69FF7170
          6EFF717171FF71706FFF6F6E6CFF6E6A67FF6A645EFF5F554CF54B3D36D23627
          1F8B241A145C130E0B3108060414020101060000000100000000010101040504
          030E100A0828231B1661483F39C967615CFF6D6B68FF727272FF787878FF7D7D
          7DFF7E7E7EFF7D7D7DFF797979FF757575FF6F6F6FFF6B6866FF655E58FF4E43
          3AE03728219320171355100A08280504030E0101010400000000030202070A07
          061B1A130F44453C36C365605CFF6C6A6AFF737373FF7A7A7AFF828282FF8787
          87FF888888FF878787FF838383FF7D7D7DFF777777FF707070FF696866FF615B
          55FF4B3F37DD31231C7E19120E430A07061B03020207000000000504030E110C
          092C342D299F605B55FF696867FF717171FF787878FF7F7F7FFF878787FF8A8A
          8AFF8A8A8AFF8A8A8AFF888888FF828282FF7A7A7AFF757575FF6E6E6EFF6462
          61FF59534CFF40342DC6251B1560110C092C0504030E00000000080605151B16
          12524A423DE15E5C5AFF686868FF707070FF767676FF7B7B7BFF808080FF8282
          82FF828282FF828282FF818181FF7D7D7DFF777777FF747474FF6E6E6EFF6464
          64FF585552FF494038F030231D8917110D3D08060515000000000A08061C2923
          1F91514B47FF5A5A5AFF646464FF6B6B6BFF6F6F6FFF727272FF767676FF7878
          78FF777777FF777777FF757575FF747474FF707070FF6E6E6EFF696969FF6060
          60FF525252FF49433DFF372B25BC1D15104B0A08061C000000000D090721312B
          26C0494744FF535353FF5D5D5DFF646464FF676767FF686868FF6A6A6AFF6A6A
          6AFF6A6A6AFF6A6A6AFF6A6A6AFF696969FF686868FF676767FF626262FF5A5A
          5AFF4D4D4DFF423E39FF382E27DB211813560D090721000000000E0A0824332D
          27E23F3E3DFF4B4B4BFF545454FF5A5A5AFF5D5D5DFF616161FF656565FF6868
          68FF6B6B6BFF6A6A6AFF676767FF656565FF606060FF5D5D5DFF595959FF5050
          50FF444444FF3A3735FF352B24EF2419145C0E0A0824000000000E0A08242F29
          22F7353434FF404040FF494949FF4F4F4FFF565656FF636363FF6B6B6BFF6C6C
          6CFF6C6C6CFF6C6C6CFF6B6B6BFF6B6B6BFF626262FF555555FF4D4D4DFF4545
          45FF3B3B3BFF302F2FFF31261DFB2419145C0E0A0824000000000D0907212B24
          1DF72B2B2BFF343434FF3D3D3DFF464646FF606060FF6B6B6BFF6B6B6BFF6C6C
          6CFF6C6C6CFF6C6C6CFF6B6B6BFF6B6B6BFF6A6A6AFF5E5E5EFF454545FF3939
          39FF303030FF272626FF2A2017FA211813560D090721000000000A08061C221C
          17DF252322FF292929FF303030FF4D4D4DFF696969FF6C6C6CFF6D6D6DFF6E6E
          6EFF6E6E6EFF6E6E6EFF6E6E6EFF6D6D6DFF6B6B6BFF686868FF4B4B4BFF2D2D
          2DFF262626FF211F1EFF271D16EB1D15104B0A08061C00000000080605151B16
          12B71E1C19FF202020FF252525FF5C5C5CFF6D6D6DFF6F6F6FFF717171FF7171
          71FF717171FF717171FF717171FF717171FF6F6F6FFF6C6C6CFF5B5B5BFF2323
          23FF1D1D1DFF1D1916FF251B15CE17110D3D08060515000000000504030E1410
          0D7E1C1814FF191919FF1B1B1BFF6E6E6EFF737373FF767676FF767676FF7676
          76FF777777FF777777FF767676FF767676FF757575FF737373FF6E6E6EFF1A1A
          1AFF181818FF1D1610FF2019149E110C092C0504030E00000000030202070B09
          0834191411D4181513FF161616FF6C6C6CFF7E7E7EFF7E7E7EFF7E7E7EFF7F7F
          7FFF7F7F7FFF7F7F7FFF7F7F7FFF7E7E7EFF7E7E7EFF7E7E7EFF6B6B6BFF1616
          16FF181512FF201711E119130F580A07061B0302020700000000010101040504
          030E120E0C7D181410FF141312FF575757FF8A8A8AFF8A8A8AFF8A8A8AFF8A8A
          8AFF8A8A8AFF8A8A8AFF8A8A8AFF8A8A8AFF8A8A8AFF898989FF575757FF1513
          12FF1A140EFF1C151198100A08280504030E0101010400000000000000010201
          01060806051515110EA016130FFF2B2A29FF858585FF979797FF979797FF9797
          97FF979797FF979797FF989898FF989898FF979797FF848484FF2B2A29FF1813
          0EFF1D1612B4130E0B3208060414020101060000000100000000000000000100
          0002030202070907062614110EA0181410FF3B3938FF888888FFA4A4A4FFA4A4
          A4FFA4A4A4FFA4A4A4FFA5A5A5FFA5A5A5FF898989FF3C3937FF19140FFF1C15
          11B0130E0B400906051603020207010000020000000000000000000000000000
          0000010100020302020808060415120E0D7E17130FD4292623FF636160FF8786
          86FFA3A3A3FFA4A4A4FF878686FF636260FF2A2623FF1B150FDB18120F8D100C
          0A2A080604140302020801010002000000000000000000000000000000000000
          00000000000001000002020101060604030F0C090735120E0C7E16120FB61813
          0FDE18130FF718130FF719130FDF19130FBA16110E87110D0A430B08061C0604
          030F020101060100000200000000000000000000000000000000000000000000
          000000000000000000000000000101010104030202080504030E080605150A07
          061A0C09071F0D0907210C09071F0A07061A080605150504030E030202080101
          0104000000010000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          000000000000000000000000000101010104030202080504030E080605150A07
          061A0C09071F0D0907210C09071F0A07061A080605150504030E030202080101
          0104000000010000000000000000000000000000000000000000000000000000
          00000000000001000002020101060604030F0B08061C100C092C17100D3B1C14
          10471F16114F201712521F16114F1C14104717100D3B100C092C0B08061C0604
          030F020101060100000200000000000000000000000000000000000000000000
          0000010100020302020808060414100C0A291A120F43251A155F2F211A783627
          1F8B3B2A22973C2B229A3B2A229736271F8B2F211A78251A155F1A120F43100C
          0A29080604140302020801010002000000000000000000000000000000000100
          00020302020709060516130E0B31211713543F332C8A6F635DC4918883E4AAA3
          9FF5B9B5B2FDB8B4B0FDA9A39EF7928782EB74665ED34B3B33AA30231B7C2117
          1354130E0B310906051603020207010000020000000000000000000000010201
          010608060414130E0B31241A155D6A605BB9A29C97EEC7C5C4FFCFCECEFFD4D4
          D4FFD6D6D6FFD6D6D6FFD2D2D2FFCDCCCBFFC4C2BFFFA19A94F572655ED23727
          208B241A145C130E0B3108060414020101060000000100000000010101040504
          030E100A08282B231E617C746FC9C2C0BDFFCFCFCEFFD8D8D8FFDDDDDDFFE2E2
          E2FFE4E4E4FFE3E3E3FFDEDEDEFFDADADAFFD5D5D5FFCDCCCBFFBCB9B6FF8075
          6FE03E30299320171355100A08280504030E0101010400000000030202070A07
          061B1A130F4479716DC3C2C0BEFFD1D1D0FFD8D8D8FFDEDEDEFFE6E6E6FFECEC
          ECFFEDEDEDFFECECECFFE8E8E8FFE0E0E0FFDADADAFFD6D6D6FFCECECDFFBAB7
          B5FF7D726BDD32241C7E19120E430A07061B03020207010000010504030E110C
          092C5D56529FBCB9B7FFCECECEFFD7D7D7FFDCDCDCFFE3E3E3FFEAEAEAFFEDED
          EDFFEDEDEDFFEDEDEDFFECECECFFE5E5E5FFDEDEDEFFDADADAFFD5D5D5FFCAC9
          C9FFB0ACA9FF685C55C6251B1560110C092C0504030E01010002080605152822
          1F52928B87E1C3C2C2FFD0D0D0FFD6D6D6FFD9D9D9FFE0E0E0FFE6E6E6FFE8E8
          E8FFE8E8E8FFE8E8E8FFE7E7E7FFE1E1E1FFDBDBDBFFD9D9D9FFD5D5D5FFCDCD
          CDFFBCBAB9FF8C847DF03D302A8917110D3D08060515020101050A08061C524C
          4891B0ACA9FFC6C6C6FFCECECEFFD3D3D3FFD5D5D5FFD9D9D9FFDCDCDCFFDEDE
          DEFFDFDFDFFFDFDFDFFFDDDDDDFFD9D9D9FFD6D6D6FFD5D5D5FFD1D1D1FFCBCB
          CBFFC1C1C1FFA29E99FF5E534DBC1D15104B0A08061C030202070D0907216F69
          66C0B1AFADFFC2C2C2FFC9C9C9FFCECECEFFD0D0D0FFD1D1D1FFD2D2D2FFD4D4
          D4FFD3D3D3FFD3D3D3FFD2D2D2FFD1D1D1FFD1D1D1FFCFCFCFFFCCCCCCFFC6C6
          C6FFBEBEBEFFA7A4A1FF716760DB211813560D090721030202080E0A0824807A
          75E2AFAEADFFBCBCBCFFC3C3C3FFC7C7C7FFCACACAFFCBCBCBFFCDCDCDFFCECE
          CEFFCECECEFFCECECEFFCDCDCDFFCDCDCDFFCACACAFFC9C9C9FFC6C6C6FFC0C0
          C0FFB8B8B8FFA8A7A5FF797068EF2419145C0E0A0824030202090E0A08248781
          7BF7ABABABFFB5B5B5FFBBBBBBFFBFBFBFFFC3C3C3FFC8C8C8FFCBCBCBFFCBCB
          CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC8C8C8FFC2C2C2FFBEBEBEFFB8B8
          B8FFB1B1B1FFA7A7A6FF797067FB2419145C0E0A0824030202090D090721817B
          76F7A5A5A5FFADADADFFB2B2B2FFB8B8B8FFC3C3C3FFC8C8C8FFC8C8C8FFC9C9
          C9FFC9C9C9FFC9C9C9FFC9C9C9FFC8C8C8FFC7C7C7FFC2C2C2FFB6B6B6FFB0B0
          B0FFAAAAAAFFA1A0A0FF736B62FA211813560D090721030202080A08061C736C
          68DF9B9A99FFA5A5A5FFAAAAAAFFB8B8B8FFC4C4C4FFC5C5C5FFC6C6C6FFC7C7
          C7FFC7C7C7FFC7C7C7FFC6C6C6FFC5C5C5FFC5C5C5FFC3C3C3FFB6B6B6FFA8A8
          A8FFA3A3A3FF979593FF6E645CEB1D15104B0A08061C03020207080605155E59
          55B7908E8BFF9E9E9EFFA2A2A2FFBBBBBBFFC3C3C3FFC4C4C4FFC5C5C5FFC5C5
          C5FFC5C5C5FFC5C5C5FFC4C4C4FFC4C4C4FFC3C3C3FFC2C2C2FFBABABAFFA0A0
          A0FF9D9D9DFF8A8683FF625852CE17110D3D08060515020101050504030E413D
          3A7E87827EFF9A9A9AFF9C9C9CFFC0C0C0FFC3C3C3FFC4C4C4FFC5C5C5FFC5C5
          C5FFC6C6C6FFC6C6C6FFC5C5C5FFC5C5C5FFC4C4C4FFC2C2C2FFC0C0C0FF9B9B
          9BFF999999FF7E7772FF4B443F9E110C092C0504030E01010002030202071917
          15346B6662D48E8C8AFF989898FFBEBEBEFFC6C6C6FFC7C7C7FFC7C7C7FFC7C7
          C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC6C6C6FFBDBDBDFF9797
          97FF8B8885FF69605AE127201D580A07061B0302020701000001010101040504
          030E413C3A7D847F7BFF929190FFB4B4B4FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
          CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFB4B4B4FF908F
          8EFF7B7570FF49423E98100A08280504030E0101010400000000000000010201
          010608060515524E4BA085827EFF9C9B9AFFC8C8C8FFD1D1D1FFD1D1D1FFD1D1
          D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD0D0D0FFC8C8C8FF9B9A99FF807B
          76FF57504CB4140E0B3208060414020101060000000100000000000000000100
          00020302020712100F26524E4BA084807DFFA09E9CFFCACACAFFD6D6D6FFD6D6
          D6FFD6D6D6FFD6D6D6FFD7D7D7FFD7D7D7FFCACACAFF9E9C9AFF807A75FF564F
          4BB01C1714400906051603020207010000020000000000000000000000000000
          0000010100020302020808060515423E3C7E6C6763D4908C8AFFB2B0AFFFC6C6
          C5FFD5D5D5FFD5D5D5FFC6C6C5FFB1B0AEFF8D8985FF6B6560DB46413D8D110C
          0A2A080604140302020801010002000000000000000000000000000000000000
          00000000000001000002020101060604030F1A171635413D3B7E5D5956B66F6B
          67DE7B746FF77A746FF76F6A65DF5D5855BA443F3C871E1B18430B08061C0604
          030F020101060100000200000000000000000000000000000000000000000000
          000000000000000000000000000101010104030202080504030E080605150A07
          061A0C09071F0D0907210C09071F0A07061A080605150504030E030202080101
          0104000000010000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00F2F9FD00D8EBF700C6E2F300C4E1F300CCE5
          F500DFEFF900FCFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00BDCCD6003CABE50003AEEB0000C0F70000CBFE0000CDFF0000C7
          FC0000B9F3000AA8E80069B9E800E8EBEC00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0099C0D80008B5F30000CFFF0000C5FB0003B5F00005AFED0006A9E80005AF
          ED0002BCF50000CCFE0000CCFE0021AAEB00DDE0E200FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E1E8
          ED0009B1F00000BBF50023A8E20064C4E70068DAF3005EDFF90063E5FB005DDE
          F8006BD5F00050B8E2000DA7E50000CAFD0048AFE500FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5BA
          C70008AAEA006ECCEA008DF6FF003CDDFF0027D7FF001ED5FF0016D2FF000ED0
          FF0005CEFF002BDAFF0090F2FB0038ACE000029CE000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A4BA
          C7005CBFE800A3FBFF005CE4FF0058E3FF0050E2FF0046E0FF003FDCFF0036DB
          FF002CD9FF0022D5FF0026D7FF00ABFEFF001A90D300FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AFC1
          CD0092E6F800A0F8FF0085F0FF007EEDFF0075ECFF006BEAFF0064E6FF005AE5
          FF0053E3FF0049DFFF003DDCFF00A1FCFF0046B1E100FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00AEC0CC0064BAEB002DAFEA000BACEE000AAEEF0019A9
          E70052B7E300BCFFFF00ACFBFF00A3F8FF009AF6FF0092F4FF0088F0FF0081EF
          FF0077EDFF006EE9FF0073ECFF00AEFBFD0061B5E500FFFFFF00FFFFFF00FFFF
          FF00DDE1E30032ABE90005BDF80000CFFF0000CEFF0000CDFF0000CDFF0000CE
          FF0000B3F0005BBBE500BEFFFE00BFFFFF00BBFFFF00B6FEFF00AFFBFF00A7FA
          FF00A0F8FF00A5FBFF00A0F2FB0051B3E800ECEEEF00FFFFFF00FFFFFF00FAFB
          FC001EA6E70000CFFF0002B5F00011A7E5003EB6E6004CBBE6004CBBE60047B9
          E50023AEE50004A1E40012A4E30059BCE50087DAF00097E7F800A6F2FC0094E6
          F80075D1EF0058B9E90096BED700FDFDFD00FFFFFF00FFFFFF00FFFFFF00CEE6
          F60000BBF50026A5E0007CD9F00070EDFF0040E0FF0021D7FF001BD5FF0021D9
          FF0046E4FF007AE8F9004BB8E40001B1EE0029A7E300BFCED700A7BCC900C3D1
          DA00E8EEF100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C3E1
          F4002EA7DF00A8FBFE0055E3FF0042DEFF003CDDFF0028C1F10018AAE5000FA8
          E6000AA7E50009A5E5003CB8E7002C9AD6002DA2E100FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C2E0
          F30097E9F6008FF4FF0073ECFF0059D5F500169FE00004B7F20000CDFF0000CD
          FF0000CDFF0000CDFF0000CDFF0000CCFF0007B1ED0053B4EA00EDEFF000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D2E9
          F70093E6F400AAFCFF0080E0F50007A1E30000D0FF0001BAF40009A6E60027AF
          E60036B5E70035B5E7001EACE50005A9E80000C2F90000CDFF0031ACE900F5F6
          F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
          FF004AADE400B9FCFD0042B4E40000BDF70028A6E00079D7EF0074ECFE0048E2
          FF0031DCFF002CDBFF0049E3FF006BE7FA006BCBE90015A6E20002C3FB0099B1
          C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00ECEEEF0067BAEB00159CDC0051B9E400A1FBFF0048E0FF0038DBFF0031D9
          FF0029D7FF0020D4FF0016D2FF000DCFFF0024D7FF009BF6FC002AAAE50085A1
          B400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00339EDE00B8FFFF0075ECFF0068E8FF0061E5FF0057E4
          FF0050E2FF0047E0FF003DDCFF0036DBFF002AD8FF0054E4FF0092EBF90083A0
          B300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF005CB6E800BFFFFF0097F4FF008FF3FF0086EFFF007CEE
          FF0075ECFF006BE8FF0064E7FF005BE5FF0050E2FF0068E8FF00A0F5FD008FAA
          BB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00BDCDD70078D3F100BDFFFF00B3FCFF00ABFBFF00A3F8
          FF009AF6FF0092F4FF0089F0FF007FEEFF007BEEFF00ABFFFF004EB6E900EDEF
          F000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FDFEFE00A8C5D70063BAE300A3ECF700B5FAFF00B7FE
          FF00B6FFFF00B0FEFF00A9FBFF00A7F6FC0090E2F60060B1DA00D0DAE100FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FBFCFC00F4F4F400E0E3E5008DB4CB0072B5D80070B7
          D40071B9D4006FB9D3006EB6D50074B7DA00A0B4C100EFF1F200F4F4F400FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9FAFA00EDEEEF00E8E9
          EA00E5E7E700E4E5E600E8E9EA00EFF0F000FBFCFC00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFAF900E1D2C800C6AB
          9800B4907700AB846800AB846800B4907800C6AB9900E2D4CB00FBF9F800FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FAF7F600D0BAAA00A3775800906748008A67
          48009E6848008C653C007E5F44007D663B0082684400936A4C00A3775900C5AF
          A000F8F6F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00E4DBD400AC8569009066470077542B00815F30005A6F
          51004D6B54005265450060431C006A4C18006B5120006C50200074552A00936A
          4900AC856900E4DBD400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00DACCC200A4785A007C553400654217006B3B060056592C002D7A
          54000F784F0015735300515E4F00735C30005C3A06005F3D09005D3B07006346
          12007A542E00A3775900DACCC200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00E6DCD500A77B5A00714C26005C4314006C410700804B1900427652000C8A
          5D000F9465000C8C5F0014765F007781570077662C0067501000614E09006E51
          1E0070502400704C2500A77B5B00E5DBD300FFFFFF00FFFFFF00FFFFFF00FBF8
          F700B0896B007B582D00684D2A006F50220080591900767B5600258562000A8F
          600018A56F00149D6900077554005E8C5700989248008385320075722C007367
          310079672F006A52170079552400B0896B00F8F6F400FFFFFF00FFFFFF00D3BE
          AD00946D4800665A1700765E42009B664D0095814E00469160000D885F00149D
          6B0025B77F0017A06B0003765100488760009F9B520087913A00767E3D007774
          430076743100776F220070541300946C4800CAB5A400FFFFFF00FDFBFA00AD83
          60007C682700766F34006D5D3E00B6805D008BA570001E9D60000991600028BF
          870029BF860018A56F00027C5400328C6B00828E56008387360084873F00898A
          4600888B390098873900A9775100865F3A00A97F5D00FCFAF900E5D8CD009A74
          4D007A782900887952007D724800C6A86F005CB876000E9F660027C088003DD8
          9F002FC78E002AC68B0014AB6E00367A4B0073A15D00ACA15800AFAD5700B4AF
          5400BAA54700918D4E005B7D68005D785A0099755000E4D7CB00CFB59F008B73
          420088883D00958A5500B8A26C00B4BE860024AB6E000B99640036D3980042E1
          A70030CF93001BBC7C0024A75C00446F19008BB66900DEC57600D7C07600D3B6
          6F00A3A06100327245001B6D440033995600807D5200CEB49E00C0A08100897C
          3C009B954C00A2A16000D0B66D006FB675000C9863000E9D670021BE820026CA
          8B0018BE780018A161003C862D0088C07400DFD28900F1D69200BBC57E006AAA
          6B0024785100027350000582590016AF700058895900BF9E8100BB9775009287
          3F009DA25D00649268007CA77C0041C07E0015B673000FA0670010955B001B97
          5B0033995A00BACC8E00F1D99B00F5DE9F00E8D89A00FED8A2004CA35F001770
          3800068257001BAC78002DC58C002CD1900042966000BA967500BD9975009B8F
          490055A16600158B5D00259155003EC9810032C7830049B179009AC59200ECDB
          A800E8D69200EDD79900F1D89A00F2DB9B00D8CF9700C3CD8C002BBF73001BBF
          7B0027C3880030C88F0034D197002CDB92004D9E6800BD997500C5A484008E86
          50001BA2670015AC72000E9F66002EB176007EC38900BCCB9900DED1A000EFD7
          9C00EDD69500EBD19800ECD79800EDD79A00ECD99E00B9D08A001DCE7A002CD1
          900033D0950031CB910031D496001CCB7F00668A5A00C5A48500D4BBA3008D81
          530019A86B0027C6890016AD74000C8D5E0020B77A005EC79000CBD29E00E9D2
          9A00EBD19A00EBD19A00EBD19A00ECD69D00EED7A300B1D298001CC57A002BCC
          8F0036D2980035D1970030D795001AC177008D7F5300D4BBA300E9DCCF00A385
          5D0032A86D0023C8870020BA800017B476000E9E6A0010A16B00B4CDA000E5D2
          A300E7D09F00E7D09E00E7D09E00EAD1A100EAD2A900B7CCA20017A96B001CB7
          7C0034D399003EDEA2002DD9930020B27100A5855E00EADDD100FDFBFA00BC95
          6B006E945D0019C07B0027CC8D0031D8970024CC8A00119F6B00A8C8A100E6D3
          B000E7D0A500E7D1A300E7D1A300E7D1A600E6D2AD00AECDA4000388580015A5
          6F003CDAA00036DC9E001BC8800057946100B9936900FDFBFA00FFFFFF00DECA
          B5009F89610050BE7E0022D08A0037D89B002CCF90000B9C630068C19100DCD6
          B600E7D2AC00E6D1A900E7D1A800E7D2AB00E4D4B30078C89800058D5D0022B9
          7F003ADDA00027DC900031BC7B009C876400D6C2AD00FFFFFF00FFFFFF00FCFA
          F700C4A17A00889267001DC07C002CD0920032D3950016AF74000C9E660087CE
          9B00DED2AE00E7D1AC00E7D1AB00E8D1AE00DBD1B00042BD84000CA3690027C7
          8A0025D78D003AD29200898E6C00C29F7900FBF9F700FFFFFF00FFFFFF00FFFF
          FF00EFE6DB00BD966A006A996D001BBE7C002CCF90002BC68D00088E5F001AAB
          6B00D7DDB300EBD6B100E9D3B200C4C8A30078BA890040B76E001CC2730019CB
          7E0041D5940096A08400BA946900EEE5DB00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00E9DDCF00BF996C007390670022BF7B001DBF81001CBF7E001BB9
          7400C6DBBA00F0DBC100C4D4B40058A35C005FBD6E0062E0AD0072E0B7009FE4
          BA008B937A00BB946A00E8DBCD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00F0E8DD00C9A77E009F90690079B6850060DCA90067C5
          8F00ACC9A400E5D5B900A6D0AA0063C689006CC89300CDF4DD00D4BEAD009E88
          6800C6A37B00EEE6DB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FCFAF800E1CEB700C49F7100AF956B00A59A
          7200C6B69200C9BF9800CDC39F00CBBC9A00A9987800AA8F6800BC966A00D9C6
          AF00FBF9F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFCFA00EDE1D300DCC5
          A900D0B18D00CAA87F00C9A77F00CFB08C00DCC4A900ECE0D100FDFBF900FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000784A13007C4E
          170087592200895B24008A5C25008B5D26007E501900784A13000F14A5001419
          A9002327B700262AB900272BBA00272CBA00161BAC000F14A5000D5E16001162
          1A001B6C24001E6F27001F7028001E6F270013641C000D5E16007A4C15008759
          2200A1733C00A97B4400AD7F4800AA7C45008C5E27007A4C15001015A6002529
          B9004649D7005054E2005458E6005154E2002D31C0001015A600106119002879
          31004899510055A65E005AAB630055A65E0031823A00106119007D4F18009769
          3200B98B5400C7996200CB9D6600C7996200A1733C007D4F18001318A8003135
          C3005457E4006265F200676AF7006265F2003C40CE001318A80014651D002E7F
          37004FA058005DAE660062B36B005DAE6600398A420014651D0081531C00996B
          3400BA8C5500C89A6300CD9F6800C89A6300A3753E0081531C00161BAB003033
          C2005457E4006265F200676AF7006265F2003A3ECC00161BAB00186921002F80
          38004FA058005DAE660062B36B005DAE66003A8B43001869210084561F00996B
          3400BA8C5500C89A6300CD9F6800C89A6300A3753E0084561F00191EAE003135
          C4005557E5006365F300676AF7006265F2003B3FCD00191EAE001D6E26003182
          3A004FA058005DAE660062B36B005DAE66003C8D45001D6E2600885A23009B6D
          3600BA8C5500C89A6300CD9F6800C89A6300A5774000885A23001C21B1003236
          C4005457E4006365F300676AF6006265F2003D40CF001C21B10022732B003485
          3D004FA058005DAE660062B36B005DAE66003E8F470022732B008C5E27009D6F
          3800BA8C5500C89A6300CD9F6800C89A6300A77942008C5E27002025B4003438
          C6005457E4006365F200696AF8006365F2003E42D0002025B400287931003889
          41004FA058005DAE660062B36B005DAE660041924A002879310091632C00A072
          3B00BA8C5500C89A6300CD9F6800C89A6300A97B440091632C002429B800363A
          C7005457E3006365F100696AF8006365F2004044D2002429B8002D7E36004091
          490050A159005DAE660062B36B005DAE660043944C002D7E360096683100A375
          3E00BA8C5500C89A6300CD9F6800C89A6300AB7D460096683100282DBC00393C
          C9005558E3006466F100686AF6006265F1004246D300282DBC0033843C004A9B
          530052A35B005DAE660062B36B005DAE660045964E0033843C009A6C3500AA7C
          4500BA8C5500C89A6300CD9F6800C89A6300AD7F48009A6C35002C31BF00393E
          C9005558E2006266F000676BF5006266F1004448D4002C31BF003889410054A5
          5D0056A75F005DAE660062B36B005DAE660047985000388941009F713A00B486
          4F00BD8F5800C89A6300CD9F6800C89A6300B0824B009F713A003035C3003C40
          CC005558E3006366F100686BF6006265F1004549D6003035C3003D8E460060B1
          69005BAC64005DAE660062B36B005DAE6600499A52003D8E4600A4763F00BC8E
          5700C0925B00C89A6300CD9F6800C89A6300B2844D00A4763F003439C7004144
          CE005658E3006466F100686BF6006366F100474BD8003439C70042934B006ABB
          730062B36B005DAE660062B36B005DAE66004B9C540042934B00A87A4300C698
          6100C5976000C89A6300CD9F6800C89A6300B3854E00A87A4300383DCA00484C
          D1005759E3006466F100686BF6006366F100494DD900383DCA0046974F0075C6
          7E0067B870005DAE660062B36B005DAE66004C9D550046974F00AC7E4700D0A2
          6B00C99B6400C89A6300CD9F6800C89A6300B5875000AC7E47003C41CE005456
          D500595BE4006466F100686BF6006366F1004B4FDB003C41CE004A9B53007FD0
          88006FC078005DAE660062B36B005DAE66004E9F57004A9B5300AF814A00DBAD
          7600CFA16A00C89A6300CD9F6800C89A6300B4864F00AF814A004045D2006063
          D8005F61E3006466F000696BF6006466F1004D50DC004045D2004D9E560089DA
          920081D28A0071C27A006FC0780063B46C0050A159004D9E5600B3854E00E3B5
          7E00D4A66F00C89A6300CD9F6800C89A6300B88A5300B3854E004449D5006E70
          DD006567E5006466F000696BF6006466F1004F52DE004449D5004F9B62004E9A
          61004F9B6200529E6500539F6600529E65004F9B62004F9B6200B6885100ECBE
          8700DAAC7500C99B6400CD9F6800C89A6300B98B5400B6885100474CD8007A7C
          E0006D6EE6006466F000696BF6006465F0005053DE00474CD800FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B88A5300F0C2
          8B00E7B98200D7A97200D6A87100CEA06900BB8D5600B88A53004A4FDB008789
          E4007475E7006466F000686BF5006466F0005155E0004A4FDB00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B3885C00AD82
          5600B4885C00BD926600C1966A00BE926600B4895D00B3885C004D52DE009395
          E7007C7DE8006466F000686BF5006466F0005356E1004D52DE00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005055E0009FA1
          EA008A8CEA006D6FF1006F71F5006769EF005558E1005055E000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005257E200A4A6
          EC009899ED00878AF1008082F4007173F000575BE3005257E200FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005156E1004E51
          DC005558E1005E61E9006164ED005F62EA005458E2005257E200FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = 7883283
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FFFFFF00CBCB
          CB009D9D9D00A5A5A500ACAEAC00B4B5B400BBBBBB00BDBEBE00BEBFBE00BFC0
          BF00C0C0BF00C0C1C000C1C1C000C0C1C000C0C0BF00BFC0BF00BEBFBE00BEBE
          BE00BBBCBB00B5B6B400ADAEAD00A5A5A5009D9D9D00CBCBCB00FFFFFF009D9D
          9D00D8D8D800D8D8D800D8D8D800D7D7D800D8D8D700D8D8D800D8D8D800D8D7
          D800D8D8D800D7D8D800D8D8D800D7D8D800D8D7D700D8D7D800D7D8D800D7D8
          D700D8D8D700D8D7D800D8D8D800D8D7D800D8D8D8009D9D9D00FFFFFF00A5A5
          A400D8D8D800E5CDB100E4CDB200E4CDB200E5CDB200D2B39400E5CDB100E5CE
          B100E5CEB200E4CDB200D3B39400E5CDB200E5CDB200E5CEB200E5CDB200D3B2
          9400E4CDB200E5CDB200E5CEB200E5CEB200D9D8D800A5A5A400FFFFFF00ADAD
          AC00D9D9D800E5CFB300E5CFB400E5CFB300E5CEB400D4B49500E5CEB300E5CF
          B300E5CEB300E5CFB300D3B49500E5CFB300E5CFB300E5CFB400E5CFB400D3B4
          9500E5CFB400E5CFB300E6CEB400E5CFB400D9D9D900ADAEAD00FFFFFF00B4B5
          B400DADADA00E6D0B600E6D0B600E5D1B600E6D0B600D4B59700E5CFB600E6D1
          B600E6D0B600E6D0B600D4B59700E6D1B600E6D0B600E6D0B700E6D0B700D4B5
          9700E6D1B600E6D0B600E6D0B600E6D0B600D9DADA00B5B5B400FFFFFF00BBBC
          BB00DBDCDB00E3CCB400E6D1B800E6D2BA00E7D2B900D4B59900E7D1B900E6D2
          B900E6D1B900E3CDB300D3B59800E7D2B900E7D1BA00E7D2BA00E7D2B900D4B6
          9900E7D2B900E7D2B900E7D2B900E7D2B900DBDCDC00BBBCBB00FFFFFF00BDBE
          BD00DDDDDD00B4947C00CAAC9000D4B69A00D5B79B00D4B79B00D4B79B00D3B6
          9A00CBAC9000B4947B00CBAC9000D3B69A00D4B79B00D5B79B00D5B79B00D4B7
          9B00D5B79B00D5B79B00D4B79B00D5B79B00DDDEDE00BDBEBD00FFFFFF00BFBF
          BE00DFDFDF0020209500AD948A00DDC9B200E8D5BF00D5B99E00E7D5BF00DDC8
          B100AD948A0020209500A2847800DCC9B100E7D5C000E8D6C100E8D6C000D6B9
          9E00E9D7C000E9D7C000E8D6C100E8D7C100DEDEDE00BFBFBE00FFFFFF00BFBF
          BF00E0E0DF0021219D0021219D00AD968E00DECBB500D5BA9E00DECBB500AE96
          8E0021219D0021219D0021219D00AD968E00DECBB500E8D8C300E9D9C400D6BB
          A000E9D9C400EAD9C400EAD9C400E9D9C400E0E0E000BFC0BF00FFFFFF00BFC0
          C000E1E2E100BEB1BF002323A6002323A600AF999100C7A99100AF9991002323
          A6002323A600A69BB9002323A6002323A600AF989100DFCDB800EADBC700D7BC
          A300EADCC800EADCC800EBDCC800EBDCC800E2E2E200BFC0BF00FFFFFF00C0C1
          C000E3E3E400E8D9CB00BFB3C5002424B0002424B00094787C002424B0002424
          B000BFB4C500E4D7CB00B09CA7002424B0002424B000AF999600DFD0BC00D7BD
          A500ECDECC00ECDECC00ECDECD00ECDECC00E3E3E300C0C1C000FFFFFF00C0C1
          C100E5E5E500D8C0A900D5BDA900B09EAC002626BB002626BB002626BB00B09E
          AC00D5BDA900D8C0A900D5BDA900B09EAC002626BB002626BB00A4898400CFB4
          9D00D7BFA800D8C0A900D7BFA800D5BCA400E4E4E500C1C1C000FFFFFF00C1C1
          C000E7E6E600EDE3D400EDE3D400E9DFD400C1B8D0002727C700C1B8D000E9DF
          D400EEE3D400EDE3D400D8C2AC00E9DFD400C1B8D0002727C7002727C700A48A
          8700E1D3C500ECE1D100E2D3C500C6B3A800E6E5E700C1C1C000FFFFFF00BFC0
          BF00E8E7E700EEE6D800EFE5D700EEE6D800EAE1D800C9B3B200EAE1D800EEE5
          D700EEE5D800EEE6D800D9C3AE00EEE5D800EAE2D700C2BBD5002929D1002929
          D100B29FA200DACDC000B29EA2002929D100E8E8E800C0C1BF00FFFFFF00BFBF
          BF00E9E9E800EFE8DB00F0E7DA00EFE8DB00EFE8DB00DBC5B000EFE7DB00EFE8
          DA00EFE8DB00F0E8DB00DBC5B000EFE8DB00EFE8DB00ECE4DB00C3BDDA002A2A
          DA002A2ADA009F8C9E002A2ADA002A2ADA00E8E9E900BFC0BF00FFFFFF00BEBF
          BE00EAEAEA00F0EADF00F0EADE00F0EADF00F0EADE00DBC7B300F0EADE00F1EA
          DE00F1EADF00F1EADE00DBC7B300F0EADE00F0EADF00F1EADF00ECE6DE00B4A3
          BD002B2BE2002B2BE2002B2BE200C4BEDE00EAEBEB00BFBFBE00FFFFFF00BDBE
          BE00EBECEC00DBC8B500DBC8B500DBC8B500DBC8B500DBC8B500DBC8B500DCC8
          B500DCC7B500DBC8B500DBC8B500DBC8B500DBC8B500DBC8B500DBC8B500D8C5
          B600B4A4BF002C2CE800B4A4BF00D8C4B600ECECEC00BEBEBE00FFFFFF00BBBC
          BB00EDEEED00F2EDE500F2EDE500F2EEE500F2EDE500DBC9B700F2EDE500F2ED
          E400F1EDE500F2EDE500DCC9B700F2EDE400F2EDE400F1EDE400F1EDE500DCC9
          B700EEEAE500DEDAE400EEE9E500F1EDE500EDEEED00BBBCBB00FFFFFF00B5B6
          B500EFEFEE00F3EFE600F3EFE600F2EFE600F3EEE600DDC9B800F3EEE600F3EF
          E600F3EFE600F3EFE600DCCAB800F2EFE600F2EFE600F3EFE600F3EFE600DDCA
          B800F2EEE600F2EFE600F3EFE600F3EFE600EEEEEE00B5B5B500FFFFFF00ADAD
          AD00EFF0EF00F3F0E800F3F0E800F3F0E800F3F0E800DDCBB900F3F0E800F3F0
          E800F3F0E800F3F0E800DDCBB900F3F0E800F3F0E800F3F0E800F3F0E800DDCB
          B900F3F0E800F3F0E800F3F0E800F3F0E800EFF0EF00ADAEAD00FFFFFF00A4A5
          A500F0F1F100F3F0E800F3F0E800F3F0E800F3F0E800DDCBB900F3F0E800F3F0
          E800F3F0E800F3F0E800DDCBB900F3F0E800F3F0E800F3F0E800F3F0E800DDCB
          B900F3F0E800F3F0E800F3F0E800F3F0E800F1F1F000A4A5A400FFFFFF009D9D
          9C00F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
          F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
          F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F1009C9D9C00FFFFFF00CBCB
          CB009D9D9C00A5A5A500ADADAC00B4B5B500BBBBBB00BDBEBD00BEBFBE00BFC0
          BF00C0C0C000C0C1C000C1C1C000C0C1C000C0C0BF00BFBFBF00BEBFBF00BDBE
          BE00BBBCBB00B5B5B500ADADAC00A5A5A5009C9D9D00CBCBCB00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00E4F1EB00D0E7DD00D0E7DD00E4F1EB00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDDDCF0062AE
          8D00228E5F0014865500148655001486550014865500228E5F0062AE8D00BDDD
          CF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3E9E0004AA37C00158856001588
          5600158856001588560015885600158856001588560015885600158856001588
          56004AA37C00D3E9E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00ADD6C4001F8F5D00168A5700168A5700168A
          5700168A5700168A5700168A5700168A5700168A5700168A5700168A5700168A
          5700168A57001F8F5D00ABD5C200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00ABD6C300178C5900178C5900178C5900178C59002895
          65007ABDA000BEDFD100D1E8DE00D1E8DE00B9DCCD006FB8980022926100178C
          5900178C5900178C5900178C5900ABD6C300FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00D1E9DF001D925F00178F5B00178F5B00178F5B007FC2A500F2F9
          F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECF6F20069B7
          9500178F5B00178F5B00178F5B001D925F00D1E9DF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0047A77D0018915C0018915C001B935E00A6D5C000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF008BC8AD0018915C0018915C0018915C0047A77D00FFFFFF00FFFFFF00FFFF
          FF00B4DCCA0019945E0019945E0019945E0086C7AA00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0068B9950019945E0019945E0019945E00B4DCCA002EBE7F002EBD
          7E0028B8790025B6770025B4750024B2740028B2750029B0750028AE730027AB
          710024A76D001EA268001D9F66001C9D640098D2B800FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0027BB7A0027BA
          790026B8780025B6770025B4750024B2740023B0720022AD700021AB6E0020A8
          6C001FA56A001EA268001D9F66001C9D64005FB89100FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0028BC7B0028BB
          7A0026B8780025B6770025B4750024B2740024B1730023AE710022AC6F0021A9
          6D0020A66B001EA268001D9F66001C9D64002AA16C00FDFEFE00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0E4
          D5001E9F67001E9F67001E9F6700E0F2EA00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BEE4
          D3001FA369001FA369001FA36900E3F4EC00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002EBE7F002DBC
          7D0026B7780025B6770025B4750024B2740028B2750029B0750028AE730027AB
          710024A76D001EA268001D9F66001C9D6400239E67009AD1B900FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0027BB7A0027BA
          790026B8780025B6770025B4750024B2740023B0720022AD700021AB6E0020A8
          6C001FA56A001EA268001D9F66001C9D64001B9A62005EB68F00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0028BC7B0028BB
          7A0026B8780025B6770025B4750024B2740024B1730023AE710022AC6F0021A9
          6D0020A66B001EA268001D9F66001C9D64001C9B6300299E6A00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00ADE1CA0023AE710023AE710023AE710083D2AF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0069C89F0023AE710023AE710023AE7100ADE1CA00FFFFFF00FFFF
          FF00FDFFFE0046BD880024B0720024B0720024B07200AAE1C900FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0091D8B80024B0720024B0720024B0720046BD8800FDFFFE00FFFFFF00FFFF
          FF00FFFFFF00C4EBDA0027B4760024B3740024B3740024B3740086D5B300F3FB
          F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDF9F40072CE
          A60024B3740024B3740024B3740027B47600C4EBDA00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF009BDEC10025B5760025B5760025B5760025B5760035BB
          800082D5B100BDE9D600D4F1E400D4F1E400B8E7D20078D1AA0030B97D0025B5
          760025B5760025B5760025B576009BDEC100FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0099DEBF0026B7770026B7770026B7770026B7
          770026B7770026B7770026B7770026B7770026B7770026B7770026B7770026B7
          770026B7770026B7770099DEBF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0EBD80046C38C0027B9780027B9
          780027B9780027B9780027B9780027B9780027B9780027B9780027B9780027B9
          780043C38A00BDEAD600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFEFC00A4E2C7005DCC
          9B0027BA790027BA790027BA790027BA790027BA790027BA79005DCC9B00A4E2
          C700FAFEFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00EEFAF400D4F2E500B6E8D200B6E8D200D4F2E500EEFAF400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          00004A66B8FF0031A5FF0155C2FF065DC9FF0B64CEFF106CD2FF1673D8FF1B7A
          DDFF1F82E3FF2389E9FF268EEDFF2892F0FF2A96F1FF2B96F2FF2894F0FF278F
          EEFF238AEAFF1F83E4FF1B7CDFFF1774D9FF126DD4FF0D66D0FF000000000000
          00004A66B8FF0032A5FF0155C1FF065DC9FF0B64CEFF0F6BD2FF1472D7FF1978
          DCFF1D7EE1FF2185E6FF238AEAFF268EEDFF2790EEFF2790EEFF268EEDFF248B
          EAFF2186E7FF1E80E2FF1A7ADDFF1673D8FF116DD3FF0C66CFFF000000000000
          00004A66B8FF0032A5FF0155C2FF065DC9FF0B63CEFF0F6AD1FF1370D5FF1776
          DAFF1B7CDFFF1E81E3FF2186E6FF2289E9FF238AEAFF238AEAFF2289E9FF2187
          E7FF1E82E4FF1C7CDFFF1977DBFF1572D6FF106BD2FF0C65CFFF000000000000
          00004A66B8FF0031A5FF0054C1FF055BC8FF0961CDFF0E67D0FF116DD3FF1573
          D8FF1978DBFF1C7CDFFF1E80E2FF2084E4FF2085E5FF2085E5FF1F83E4FF1E81
          E2FF1C7CE0FF1A78DDFF1774D9FF126FD5FF0E69D1FF0A5DC5FF000000000000
          00004A66B8FF0030A5FF0053C0FF035AC7FF075FCCFF0C64CFFF0F6AD2FF126F
          D5FF1674D8FF1978DBFF1B7ADEFF1C7DE0FF1D7EE1FF1D7EE1FF1C7DE0FF1B7B
          DEFF1978DCFF1774D9FF1470D6FF106CD2FF0D64CBFF0E65CBFF000000000000
          00004A66B8FF0030A5FF0052BFFF0258C6FF055DCAFF0A62CDFF0D67D0FF106C
          D2FF126FD5FF1673D7FF1875DAFF1978DCFF1A78DCFF1A79DDFF1A78DCFF1876
          DAFF1674D9FF1370D6FF116DD3FF0E67CFFF146ACEFF1570D5FF000000000000
          00004A66B8FF0030A4FF0050BDFF0156C4FF035BC8FF085FCCFF0B63CEFF0E68
          D0FF106BD2FF126FD4FF1471D6FF1573D8FF1674D8FF1674D8FF1672D8FF1471
          D6FF1270D5FF106CD3FF0E69D0FF1168CEFF1D80DFFF387EC9FF000000000000
          00004A66B8FF002FA3FF004EBCFF0053C2FF0258C6FF045CC9FF0860CCFF0C63
          CEFF0E66D0FF0F69D1FF0F6CD2FF116ED4FF116ED4FF126ED4FF116ED4FF116C
          D2FF0F6AD2FF0D67D1FF0B63CEFF136DD0FF2088E7FF588FC6FF000000000000
          00004A66B8FF002FA3FF004CBAFF0051C0FF0155C3FF0259C6FF045CC9FF0860
          CBFF0A62CEFF0C64CFFF0D67D0FF0E69D0FF0F69D1FF0F69D1FF0F69D1FF0E67
          D1FF0D65D0FF0B62CEFF0860CCFF085EC8FF1877D8FF2F7ED4FF000000000000
          00004A66B8FF002DA2FF0049B8FF004FBEFF0052C0FF0155C3FF0259C5FF055B
          C8FF065DCBFF0860CDFF0A62CDFF0A62CEFF0B63CFFF0B63CFFF0B63CFFF0A62
          CDFF0961CDFF075FCAFF045CC8FF0259C5FF0A5DC4FF116DD2FF000000000000
          00004A66B8FF002DA2FF0046B6FF004BBBFF004FBEFF0052C0FF0054C2FF0158
          C5FF055BC7FF095FC9FF0B61CCFF0C62CDFF0D63CEFF0D63CEFF0D63CDFF0C62
          CCFF0A60CBFF065DC8FF0259C5FF0056C3FF0051BFFF085AC2FF000000000000
          00004A66B8FF002CA2FF0044B5FF0048B8FF004CBBFF0454C0FF0E5DC8FF1766
          CEFF1C6BD1FF1E6DD2FF1F6ED2FF206FD3FF206FD3FF206FD3FF206FD3FF206E
          D3FF1F6ED2FF1D6CD1FF1969CEFF1262CAFF0858C4FF014DBAFF000000000000
          00004A66B8FF002BA1FF0041B4FF054CBAFF1D65CBFF2C76D5FF327BD9FF337C
          D9FF337CD9FF337BD9FF327CD9FF337CD9FF337DDAFF337DDAFF337DD9FF337C
          D9FF337CD9FF337CD9FF337CD9FF327CD9FF3079D7FF256ED0FF000000000000
          00004A66B8FF002BA0FF0242B3FF2F74D2FF478DDFFF488CDFFF478CDFFF478C
          DFFF478CDFFF478CDFFF478CDFFF488CDFFF488DE0FF488DE0FF488DE0FF488C
          E0FF488CE0FF488CE0FF478CDFFF478CDFFF478CE0FF478DE0FF000000000000
          00004A66B7FF002AA0FF023FB0FF1F60C5FF276ACBFF276ACBFF276BCCFF276D
          CDFF276DCDFF276ECEFF276ECFFF276FCFFF286FCFFF2770CFFF276FCFFF276E
          CFFF276ECFFF276ECEFF276DCEFF276CCDFF276BCCFF276ACBFF000000000000
          00004966B7FF00279FFF0033A4FF0035A7FF0036A8FF0038AAFF0039ABFF003B
          ABFF003CACFF003DACFF003EADFF003FAEFF003FAEFF003FAEFF003EAEFF003F
          AEFF003EADFF003DACFF003BABFF0039ABFF0038AAFF0037A9FF000000000000
          00004965B6FF002399FF00299AFF00309AFF00309BFF002E9AFF00319EFF002B
          A3FF0026A6FF0028A6FF002BA6FF002CA6FF0431A6FF0734A6FF0531A6FF012D
          A6FF002AA5FF0029A5FF0029A4FF032CA1FF08309EFF0931A0FF000000000000
          000049558AFF000446FF000E48FF00384AFF036754FF057C58FF098A6CFF0E86
          91FF0C5FB7FF0635D1FF031ADEFF010EE4FF101DE4FF313DE4FF4653E3FF4552
          E3FF2E3BE3FF1322E2FF0413E2FF5D67C3FFA3ABBBFFA7B0C0FF000000000000
          00009CA1B6FF585D7EFF585D81FF596180FF597181FF5B9C86FF41AF70FF18A7
          58FF10AC64FF12AE87FF149AABFF0F6ECAFF093EE3FF081BF4FF1015FDFF2326
          FEFF3D3FFEFF3B40FDFF181BF8FFACACD6FFE5E3D6FFDBD9CFFF000000000000
          0000000000000000000000000000000000000000000000000000E9F2EDFFB0D9
          C2FF62BA8AFF2AA963FF16AD60FF16BD77FF1BC595FF1BB4B0FF1689C8FF0E53
          DEFF0829EEFF0611F6FF1114F8FF8282E0FFBBBBD4FFBEBFD0FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000D0E7DBFF88CAA5FF42B075FF1EAA64FF1AB973FF22D192FF27DC
          A9FF1EAF91FF16798DFF0E53B2FF0F32D4FF272EEEFF3033EFFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000E4F0EAFFA9D7BEFF5CBB8AFF2AAD6BFF1CB1
          6CFF1EAE65FF20B063FF1EAE64FF31A677FFA3B6E1FF9090FBFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000F2F7F4FFC4E3D2FF7CC7
          A1FF41B47AFF27AF6BFF22AD69FF67C193FFF6F9F5FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000F8FA
          F9FFBFDFCFFF5DB98BFF28AC6AFF99D2B5FF0000000000000000}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00C0000000C0000000C0000000C0000000C0000000C0000000C0000000C000
          0000C0000000C0000000C0000000C0000000C0000000C0000000C0000000C000
          0000C0000000C0000000C0000000FF000000FFE00000FFF80000FFFE0100FFFF
          8300}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000004ED5FF2F70
          DBFF3575DBFF0E5AD5FFCFDBEDFFFFFFF3FFFEFAF3FFFFFBF3FFFFF9F2FFFFFF
          F3FFBED0E9FF0F59D5FF0C59D3FFC0D1E9FFFFFFF5FFFEFBF1FFFFFBF2FFFEFA
          F1FFFFFFF4FFCEDAEBFF1861D5FF0351D3FFB1C6E9FFFFFFF4FF0251D4FF3072
          DBFF3375DAFF1964D7FFEBEDF0FFEFEFF1FFEDEFF0FFEFEFF1FFEAEEF1FFF4F3
          F1FFDEE3F1FF0051D1FF004FD4FFDFE5EEFFF4F2F0FFECEDF2FFEEEEF1FFEEEE
          F1FFF3F0F0FFEAEDEFFF0B5AD6FF0045D1FFCDDBECFFF7F4F2FF0054D7FF2E75
          DCFF3277DFFF1765D8FFE7EBF0FFF3F3F1FFEEF0F1FFF0F1F1FFEFF0F1FFF2F3
          EFFFE8EAF0FF9DBAE7FFA1BCE7FFE7EAF1FFF5F3F1FFF0F1F2FFF0F2F0FFF1F2
          EFFFF3F2F3FFEAEDF1FFA3BCE9FF9AB9E8FFE3E9EEFFF6F3F1FF0056D3FF3077
          DDFF3579DEFF1967D7FFE9ECEFFFF4F3F1FFF0F0F1FFF1F1F2FFF1F1F0FFF0F1
          F0FFF0F2F1FFF6F5F0FFF2F3F4FFF3F2F1FFF0F0F1FFF0F1F2FFF1F0F2FFF3F1
          F0FFF3F1F1FFEFF2F0FFF6F4F0FFF4F4F1FFF0F2F2FFF2F0F2FF005AD7FF2F79
          DFFF347BDFFF1A6AD8FFE6EBF1FFF1F1F0FFEFEEF0FFEEEEF0FFE9EDF2FFF5F2
          F2FFDBE2EEFF1064D9FF1767D8FFDDE3EFFFF5F2EFFFEBEEF3FFF1F1F2FFEDEF
          F0FFF1F1F1FFE6EAF0FF1F6BDBFF085DD9FFCEDCECFFF7F4F1FF035DD8FF2E7B
          E0FF367EDFFF176ADBFFEDEEF2FFFFFDF5FFFFFAF2FFFFFBF2FFFEF9F2FFFFFF
          F2FFDCE4EEFF0561D9FF0B63D9FFDFE6F0FFFFFFF4FFFFF8F0FFF0F0F2FFFBF7
          F2FFFFFEF5FFECEEEFFF1168DBFF005AD7FFD0DCEDFFFFFFF6FF005ED6FF307C
          DFFF3A84E0FF0661D9FF699EE2FFAAC7EBFFA3C2E9FFA6C3E9FFA3C2EAFFACC7
          E9FF5995E3FF0762D9FF0763DBFF5D98E1FFA9C5EBFFB8CFECFFF5F6F3FFBDD2
          EBFFACC6E9FF659FE6FF0B63D8FF0562D9FF4F90E2FFACC6E9FF0361D9FF317E
          E0FF3A84E2FF0B67DCFF0060D9FF005CD9FF005DD9FF005DD9FF005DD9FF005C
          D9FF0261DAFF0C67DBFF0E68DAFF0261D9FF004DD7FF317DDFFFFFFFF3FF4088
          E0FF004BD7FF0161D9FF0E69DBFF0C68DCFF0261D9FF005CD9FF0363D8FF3181
          E1FF3A86E2FF0A69DCFF0F6BDBFF116DDDFF106CDCFF116DDDFF116DDDFF116D
          DDFF106CDDFF0E6BDDFF0968DCFF1871DEFF3783DEFF6AA0E4FFFBFBF4FF76A9
          E6FF3582DFFF2276DCFF0667DCFF0E6BDCFF0F6BDDFF116CDCFF0366DAFF3183
          E2FF3A89E3FF0B6CDEFF0D6DDCFF0C6DDDFF0D6CDDFF0D6DDDFF0D6DDDFF0D6D
          DDFF0D6DDDFF0D6DDDFF076ADCFFA3C4EAFFFFFCF2FFF4F4F2FFF1F0F0FFF7F4
          F1FFFFFCF1FFC1D7EFFF1470DDFF0C6CDCFF0E6DDDFF0D6DDDFF0468DBFF3185
          E2FF3A8BE4FF0D6EDEFF0D6FDCFF0D6FDEFF0E6FDDFF0E6FDEFF0E6FDEFF0E6F
          DEFF0E6FDEFF0C6EDDFF1372DEFFE3EAEFFFF4F3F1FFF1F0F0FFF2F1F2FFEDEF
          F1FFF4F2F0FFEDEFF1FF227AE0FF076BDDFF0E6FDEFF0D6FDDFF046BDCFF3287
          E4FF3B8DE3FF0D71DEFF0E71DFFF0F72DFFF0E72DFFF0F72DFFF0F72DFFF0F72
          DFFF0F72DFFF0D71DEFF1374DFFFDBE5EFFFF8F4F2FFF1F1EFFFF1F1F2FFEFF1
          F3FFF4F4F2FFE7EBF0FF1977DFFF0B6FDFFF0F72DFFF0E71DEFF066EDEFF3389
          E5FF3C8FE5FF0D73E0FF0F73E0FF0E74E0FF0F74E0FF0F74E0FF0F74E0FF0F74
          E0FF0F74E0FF0D73DFFF1376E0FFDBE6EFFFF5F3F3FFEEF1F1FFF1F2F0FFF1F1
          F0FFF5F3F1FFE8ECF1FF1B7BE1FF0B72DFFF0F74E0FF0F74E0FF0571DDFF328C
          E6FF3D92E6FF0D76E1FF0E77E1FF0E78E2FF0F77E1FF0F78E2FF0F78E2FF0F78
          E2FF0F78E2FF0D77E1FF137AE2FFDDE6EFFFF7F2F1FFEDEFF2FFEEF0F2FFEFF0
          F1FFF2F1F0FFE6EBF1FF1B7DE2FF0B75E0FF0F78E2FF0F77E1FF0673DFFF338E
          E7FF3C94E7FF0E79E3FF0F79E2FF0E7AE3FF0F79E2FF0F7AE3FF0F7AE3FF0F7A
          E3FF0F7AE3FF0D79E2FF117BE2FFDAE6F1FFFFFBF3FFFCF6F1FFFDF8F2FFFDF7
          F1FFFFFAF3FFEEEEF1FF1980E3FF0A78E1FF0F7AE3FF0F7AE2FF0675E1FF3490
          E8FF3D96E6FF0F7BE4FF0F7BE2FF107CE3FF0F7CE2FF107CE3FF107CE3FF107C
          E3FF107CE3FF107CE3FF0A78E2FF6BACE7FFBDD8EFFFB8D3EDFFB9D5EEFFB9D3
          EDFFBFD8EFFF78B2EAFF0D79E1FF107CE3FF107CE3FF107CE2FF067AE1FF3291
          E7FF3C97E7FF107EE5FF107DE4FF1080E4FF117EE4FF1180E5FF1180E5FF1180
          E5FF1180E5FF107EE4FF1080E4FF0479E4FF0476E2FF0577E2FF0279E2FF0277
          E3FF0578E2FF0579E3FF0C7EE4FF1180E3FF1080E4FF117EE4FF067BE0FF3594
          EBFF3B99E9FF0F80E3FF1280E4FF0F81E4FF1181E4FF1181E5FF1081E5FF1181
          E5FF1181E5FF1081E5FF1081E4FF1382E4FF1582E5FF1281E7FF1382E5FF1281
          E7FF1383E6FF1282E5FF1082E5FF1081E3FF1081E5FF1081E4FF0576DFFF2F87
          E4FF3E99ECFF0F84E5FF1284E5FF1185E5FF1184E5FF1185E6FF1285E6FF1285
          E6FF1285E6FF1184E5FF1184E5FF1185E5FF1083E6FF1084E6FF1283E5FF1284
          E6FF1084E5FF1183E4FF1483E7FF1184E6FF1184E5FF1184E6FF0984E9FF3787
          E3FF4A98EBFF0F88E7FF0D84E6FF1086E7FF1286E7FF1286E7FF1087E6FF1186
          E7FF1086E6FF1186E7FF1086E7FF1186E7FF1186E6FF1186E7FF1086E7FF1185
          E7FF1086E6FF1086E6FF1086E7FF1086E7FF1186E6FF1086E7FF2D98EBFF1D8C
          E8FF76ACEFFF53A1ECFF1D8CE8FF1087E6FF0D87E7FF0F86E7FF0E86E7FF0D87
          E6FF0E86E7FF0E87E7FF0E87E7FF0E87E7FF0E87E7FF0E87E7FF0E87E7FF0E87
          E7FF0E87E7FF0E87E7FF0E87E7FF0E87E7FF0E87E7FF0E87E7FFCBE1FBFF339B
          EDFF2491E8FF9AC1F5FF9FC4F5FF95C1F3FF93C0F2FF94C0F3FF95C1F3FF94C0
          F3FF94C1F4FF95C1F4FF95C1F4FF95C1F4FF95C1F4FF95C1F4FF95C1F4FF95C1
          F4FF95C1F4FF95C1F4FF95C1F4FF95C1F4FF95C1F4FF94C1F4FFFFFFFFFFD8E9
          FAFF369AEDFF1E91E7FF74B9F0FF96C9F6FF97C7F5FF95C9F4FF94C9F3FF96C8
          F3FF95C9F3FF96C9F3FF96C9F3FF96C9F3FF96C9F3FF96C9F3FF96C9F3FF96C9
          F3FF96C9F3FF96C9F3FF96C9F3FF96C9F3FF96C9F3FF95C8F3FFF0F4FDFFFFFF
          FCFFD4EDF8FF2995E9FF007BE6FF007BE7FF007BE3FF007AE3FF0079E3FF0077
          E6FF0078E5FF0078E6FF0078E6FF0078E6FF0078E6FF0078E6FF0078E6FF0078
          E6FF0078E6FF0078E6FF0078E6FF0078E6FF0078E6FF0078E6FF}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FDFDFDFFFEFE
          FEFFFEFEFEFFFEFEFEFFFDFFFCFFC6C4B9FFDFE9DDFFD5DED9FFB4AC9FFFC8CA
          B9FFC8C8B6FFC8C8B6FFC8C6B4FFC4C9AFFF8B8332FF8F8E2AFF858837FF76AE
          86FF238471FF24BA97FF2EB59CFF2A8EA3FF34A4EEFF38A8ECFFFEFEFEFFFEFE
          FEFFFDFDFEFFFAFBFAFFFFFFFFFFC6C4B6FFE2E5E2FFE1DEDAFFC5C3C8FFD0CF
          BBFFCCCDBDFFCFD0C0FFC7C7B5FFC6C6B9FFC9C5B6FFCAC2BDFFBBBEAFFF73A5
          8EFF138B64FF23B996FF24AF95FF268DA1FF34A6F1FF31A6EAFFFEFEFEFFFFFF
          FFFFFDFDFFFFFBFDFCFFE4E3DBFFB7B6A8FFDFDAD9FFE5DFDBFF94A3C1FFD0D0
          BEFFCDCEBEFFCECEBFFFCFD0C3FFC9CBB8FFC3CAB6FFC9CAB0FFC3C9B6FF6AA9
          8AFF1B856DFF23BA95FF21B295FF278FA1FF31A3F0FF29A0E5FFFDFDFDFFFDFD
          FDFFFDFDFDFFF9FCFDFFB4B2A8FFC4C5B8FFC9D1D5FFDADEE2FF80B6E6FFCAD4
          C1FFCCCDBDFFCCCDBDFFCFCFBFFFCBCDBDFFCDCEBEFFCFD1C0FFC8C7B5FF5FA8
          89FF1B8469FF31BB92FF25AE9CFF1E8BA1FF35A2F0FF1F9BE4FFFFFFFFFFFFFF
          FFFFFFFEFEFFFDFDFCFFC2C0B4FFE5E5DCFFDCD3D0FFE1E0E4FFA7D3EAFFAFBD
          B7FFCECFBFFFCECFBFFFCECEBEFFCDCEBEFFCACBBBFFCECFBFFFC8CEBCFF63B1
          92FF2AA383FF239C80FF2C9475FF2572B4FF34A4EFFF219AE6FFFFFFFFFFFFFF
          FFFFFEFFFEFFFFFFFEFFC6C5B7FFEBEAEAFFDADEDBFFD8DFE0FFDDDFE2FF8D99
          91FFCFD0C0FFCDCEBEFFCECEBEFFCCCDBDFFCDCEBEFFC6C7B7FFCCCABBFFCECD
          BBFFD0CEBEFFC8CEB8FFB5BDA7FF1874BAFF33A5ECFF219BE8FFFFFFFFFFFFFF
          FFFFFFFFFEFFD9D9D0FFB2B1A4FFEBEAEBFFEBEEEBFFEBE0DDFFD8DEE5FF9793
          8EFFCED0B9FFC3D0BDFFD0CBC1FFCCCCC0FFCDCEBEFFCECFBFFFA6A797FFCECD
          BDFFCACCBBFFCACEC1FFD0C5B6FF1976B8FF35A4EDFF1D9FE5FFFDFDFDFFFDFD
          FDFFFDFDFCFFA9A79EFFC1C0B7FFEBEAEAFFECEEF3FFD5E2E3FFE5E1DAFFB0B8
          B5FFBECAC0FFDBCEB8FFCBD1B9FFCDCEBCFFCFCFBEFFCECEBEFFCACBBBFFA6A7
          97FFCDCEBEFFD4CCC2FFCDCDC3FF1F78B1FF40A8F3FF2DA0E8FFFEFEFEFFFEFE
          FEFFFCFCFDFFB8B8ABFFDCDDD4FFE2E1E3FFF7F1ECFFDAE1E6FFC7E0D6FF64A2
          BFFFE1D1BFFFC4CDBCFFCBCCBFFFCFD1BBFFCECEBBFFCCCCBFFFCECFBFFFD2D3
          C3FFC4C5B5FFD1CAC3FFC9CEC1FF1174B5FF1689D3FF0C83CCFFFEFEFEFFFEFE
          FEFFFFFFFEFFCCCCBCFFF2F4EEFFD9D9DBFFE7ECF0FFCDE8E0FF22AA8AFF65CA
          D8FF5DABD7FF69868EFFB5C0B9FFCACFC9FFCACBBAFFCDCFC0FFCDCEBEFFCCCD
          BDFFD3D4C4FFC5C4BAFFC5CDBBFF83B5C8FF81B1C3FF7AACBFFFFCFDFDFFFAFC
          FCFFF4F1EAFFB9B9AAFFEDEEEDFFD1D5D2FFE7F8EFFF3B9E8CFF2EAA84FF24AB
          7BFF3FA6F3FF30A0F5FF7296EDFF2844B4FF9C9793FF9D9E8FFFD1D0C0FFCBCC
          B8FFC9CFBCFFD2D4C1FFCACBB7FFC9CBBCFFCECDBEFFCCCEC0FFFCFDFCFFFBFC
          FEFFB0AFA5FFB5B4A8FFEFF0F0FFCDCFCBFFFFF1F6FFA5C88EFF97C79AFF9BCD
          8FFFB4D7CDFF1C37C0FF2236D8FF1634D2FFDDD9F0FFD1D5D9FFE9E8C8FFB0A3
          ADFF9B9B84FFD1D2C2FFD1CEBBFFD0D0BDFFD0CDBFFFCBCDBEFFFDFEFDFFFBFC
          FDFFB1B1A0FFD5D6CDFFF0EFF2FFD4D3D1FFF1F5F4FFA28E3AFFAD9A33FFB8AB
          5AFFB698B0FF1E3ACCFF2432D9FF2336C9FFE2D9E8FFD9D6DBFFAE913CFFA29B
          3FFFAA9F57FFD2D4CDFFD0CFC1FFA2A391FFCFCCC0FFCACDBCFFFEFEFEFFFAFC
          FCFFCACBB9FFF2F4EEFFEDEFEFFFE2E2E0FFF6F4F8FFF5F6CFFFC7B052FFBC6F
          32FF767BCBFF2631D9FF2535D0FF4357B8FFE5E9DEFFE2E6E2FF28B697FF73C4
          A1FFB2DBC2FFCCDAD7FFD0CEC5FFCCCABEFFCBCBBDFFC9D0BCFFFDFDFDFFFFFF
          FDFFB6B6A8FFF1F3EFFFE9EAE8FFF1F0F1FFF0F9F1FFF5F1F8FFE4D9C1FFA46C
          33FF2B3BC4FF0C39D6FF454FAEFFE3E9EFFFE9E3F1FFE3E5EBFF84C9EEFF83D7
          E0FF4FAD93FF2BA68BFFB6D8D3FF7E9187FFD7CABFFFD4CDBBFFFAFBFBFFFDFD
          FAFFB3B5A7FFF3F3F3FFDBDBDBFFD3D4D2FFEBEEEFFFF9F7F2FFF3F3F1FFF3ED
          F8FFE5F1FFFFFCF3FFFFEEECEAFFE7E8EEFFE7EEE5FFE8EAECFF7AB6E7FF2D96
          D5FF2798DFFF369CE2FF76B7E5FFC2D3D5FFCDD2D3FFCCC9C4FFFCFEFEFFBEBD
          B3FFD2D5C8FFF5F6F2FFF0F1F0FFEFEEF0FFE8EBE9FFD3D6D7FFCECACAFFD5D7
          C9FFEDE9F2FFEBEEF1FFEBE9F1FFE4EEE5FFEBE7E9FFE7E5F9FF1A32AEFF1F2D
          B6FF3F5DB0FF9EC3F4FF7ABDECFF2687CBFF1B8BD6FF3B9ECDFFFCFCFDFFA0A1
          95FFCDC9BCFFC3C3B2FFB2B3A5FFC1C1B8FFE5E6E2FFEFF1F0FFE8EAE9FFEAEC
          ECFFE4E4E5FFD3D3D4FFC7C8C8FFD7D7D7FFEBECEAFFEBEBEAFFE4E5E7FFE3E7
          F6FFA9B3E7FF4C53ADFF1E31B1FF1D32A5FF677EC7FFA1CDFFFFFFFFFDFFC5C4
          B7FFCBC9B6FFC7C9B4FFC7C8B4FFC7C7B5FFC7CAB4FFC2C4B3FFB4B4A6FFC1C2
          B8FFE2E2DCFFEBE9E7FFE5E5E5FFE4E6E6FFDCDEDFFFCFD1D2FFC9C8C4FFDDD6
          DFFFE4E2EDFFDDE4E2FFE8DEDEFFE1DDF2FF9497D7FF3643A9FFFBFBFEFFFAFA
          FAFFFBFBF7FFD2D3CAFFBFBFB3FFCACABBFFC7C9B5FFC6C7B4FFC7C8B4FFC6C7
          B3FFC9CAB6FFC2C2B0FFB5B4A7FFBDBEB5FFDEDDD7FFE9E8E3FFDBDDDFFFDEE0
          DBFFDBD6DDFFD3CBCBFFC6C8C9FFDDD6D9FFDDDBE3FFDADBDAFFFDFEFDFFFDFE
          FDFFFEFFFEFFFDFEFEFFFCFDFCFFFFFFFDFFFFFFFFFFCECFC6FFC2C4B8FFCBCA
          BBFFC9C8B6FFC7C6B4FFC3C3B5FFE7E8DEFFE7E6E0FFB9B9B0FFB2AFA6FFBFBD
          B9FFD7DACDFFDCDFDDFFDADDD4FFD5DBDCFFD2D5D2FFCBC6CAFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFDFCFCFFFCFCFAFFFFFF
          FFFFFCFCF9FFFBFAF6FFFCFBFBFFFBFBFBFFFDFDFDFFFEFEFDFFFEFEFDFFFDFC
          FAFFDAD9D5FFB8BBADFFB5B8ABFFBEBEB3FFD3D3CCFFDADAD5FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFDFDFDFFFCFCFCFFFDFEFEFFFFFFFFFFFDFCFEFFFDFD
          FEFFFCFEFDFFFCFFFDFFFCFEFFFFFEFDFEFFFDFDFDFFFDFCFEFFFDFFFEFFFDFF
          FEFFFCFFFDFFFCFDFBFFFEFEFAFFF7F6F1FFCDCEC5FFBCBDB5FFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFCFCFCFFFEFEFEFFFEFEFCFFFEFEFDFFFEFE
          FDFFFEFDFEFFFEFDFEFFFEFCFEFFFCFEFBFFFDFFFBFFFDFCFEFFFEFDFEFFFFFD
          FEFFFEFCFEFFFDFDFDFFFCFDFDFFFAFEFDFFFCFCFDFFFCFDFBFF}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000CACFA5E992A917FFC0CD96FDB6CE82FF8198
          34FEDCD5E1FFFFFFFFFFFEFBFFFFEAE3E9FFE1D9DEFFD6CDD1FFC8C0C3FFBCB3
          B6FFB4A5A3FF9AA4B1FF5FC0E3FFBBF9FEFFACF1FCFF6EE2FDFF000000000000
          00000000000000000000CAD0A8E9869F01FF8FA415FBA2B640FF7E9D02FE7394
          00FF9AA064FFA9AB89FFA7AA89FFA9AC8DFFA9AB8DFFA9AB8BFFA8AA89FFACAD
          87FFB1AF99FF9CA65BFF41ABC2FF4CBAE9FF54BDE4FF50BBE4FF000000000000
          000000000000C3C99CE48FA60EFF90A717FDB9CB7EFFB0C26AFEAABD57FFA1B6
          3DFF95AD21FF859F05FF7A9800FF739400FF6F9200FF6C9100FF6A9000FF7299
          00FF95B41CFF81B151FF61C1DFFFC6FCFFFFB4F4FCFF6FE3FDFF000000000000
          0000C7CCA2E696AC21FFB7C678FBA0B436FFC4D5A0FEAAC56CFFB3CC80FFBBD1
          90FFC2D49BFFC5D69DFFBFD08CFFB6C772FFAABD54FF9DB235FF91A91BFF859F
          07FF84A000FF84A71CFF4DB2CEFF6BCCEFFF65C9EAFF53C5EBFF000000000000
          00008BA304FFC5D09FFABDCD88FFA2B53EFEC3D59CFFA0BE53FFA4C15BFF82A4
          1CFF82A521FF8BAC2FFF9AB74AFFA5C061FFB3CA7CFFBDD292FFC2D59AFFC2D3
          95FFC0CE84FFA1BD6DFF52B6CFFF8CDBF0FF85D7EBFF63CFEDFF000000000000
          0000C5CF8EF69CB132FFA3B648FEB3C266FFC3D39CFFA2BC57FF87A725FF9ABA
          63FFBCD9B5FFABC88AFFA1C173FF97B856FF86A82EFF81A41FFF83A621FF8CAD
          31FFA2BB4DFF90B972FF56BEE8FFADF5FFFFA0EEFFFF65E1FFFF000000000000
          000000000000C3CD8EF2819B02FCC9D39BFEAEC374FF82A431FFB0C78CFFD1E5
          D7FFBBDDC3FFB3DFC5FFA9CA8EFFB2CF9CFFC3E2CDFFC1DEC4FFB6D3A8FFA8C4
          84FF97B85EFF8DAD3EFF5BA680FF41A3A4FF3C9D8CFF409E89FF000000000000
          00000000000000000000A4B73AFFD1D8B0FD9BB451FFBBCE9BFFDBEBEBFFA4D0
          A4FFA6D3ABFF92C586FF91AA48FF9AB056FF94B25DFF99BC74FFA7C996FFB3D3
          B2FFBCDAC1FFC1DBC6FFC4D7B3FFBED1A5FFB8CC94FFABC579FF000000000000
          00000000000000000000A0B337FEDBDFC8FD93AE42FFCBD9B8FFC5DFCAFFB5D8
          B7FFB5D8BDFF9DC287FF9EB466FFB7C38CFFC1CB9BFFBAC68EFFAEBE7CFF9EB5
          64FF9AB361FF95B157FF91AC4AFF97B96DFFACD7BEFFC0E4D6FF000000000000
          00000000000000000000A6B742FFDEE2D0FD90AD3CFFDCE7D7FFB9DBBFFFB5D8
          B9FFBCDABEFFB0D8B9FFA6D2A6FF93BB69FF93AF49FFA4BA63FFB3C382FFC0CD
          96FFBDCA91FFB7C583FFA9B966FF84A838FF97CF9BFF98CE9AFF000000000000
          000000000000A1AC67D4B5C364FFD6DEC1FD9EB653FFEDF4F5FFB7DABAFFB8DB
          BCFFB5D9B9FFB5D8B7FFBBDEC6FFA9CD97FFB2CB90FF90B85FFF79A42DFF7DA2
          24FF9DB961FF92B860FF97BE73FF9BC583FFA8D4ADFFA3D2A7FF000000000000
          00000000000092A141D9C7D08CFED2DBB8FD89A730FFEAEEDFFFDAECDFFFB9DC
          BEFFBDDEC3FFBCDDC0FFC3E3CEFFA6C785FFC3D6A8FF99BE6DFF81A73CFFA8C7
          88FFB5CC91FFADD3A8FFB8DEC5FFB2DABBFFAFD7B3FFABD6B0FF000000000000
          0000000000007E901BD4D8DEB0FFDFE6D2FDB8C987FF98B248FFFAFAF9FFD3EA
          DAFFC4E1C9FFC0DFC3FFBDDFC4FFAFD3A6FFA5BD64FF8CAB36FF92B658FFC3D6
          A7FFA4C172FFB9DBBEFFBBDBBCFFB8DABAFFB8DABBFFB2D7B4FF000000000000
          00000000000096A92CF2E2E6CDFDD1DCBBFEDFE6D2FF9CB552FFBBCC89FFEEF2
          E1FFF3F7F0FFF5FBFBFFEEF8F7FFE6F5F4FFC2D9ACFFA0B855FF94AF43FF9DBB
          60FFB2D6AEFFBCDEC3FFBBDDC0FFBFE0C5FFBDDEC2FFB5D9B7FF000000000000
          00007B7F6590AABB49FEF9F9F9F9ECF0EBFEE6ECE2FECDD9B3FEA0B862FF9CB5
          51FF99B24CFFA4BA5CFFB7C87CFFCDD8A3FFE4EBD0FFEAEFDCFFEEF3E6FFF4FC
          FFFFF0FAFDFFE1F2EBFFD5EBDEFFC8E4CFFFC7E3CBFFEDF5F2FF000000000000
          00006C724D8899AE22FFB1C158FFC4D082FFD5DEA8FFEAEED6FFF9F9F7FEF3F4
          F6FAE8EDE6FBD4DEC5FAC0D09EFDACC175FF9BB455FE98B24DFF9EB755FFAABE
          66FFBDCC87FFD3DEB0FFE6ECD3FFF0F4E9FFFFFFFFFFCDD9A5FF000000000000
          00000000000000000000898F66A9A9B565E69FAE50E69AAB3FEAA5B841FFADBE
          4FFFB8C665FFCCD692FFE0E6BEFFECEFDFFBF4F5F3FBF4F6F6FEE6ECDEFFD2DD
          BCFEBDCE96FFA8BE6EFF9CB555FF9AB34EFF9CB553FF8DAA36FF000000000000
          000000000000000000000000000000000000000000000000000000000000898F
          69A67981529F727D3BA69CAC46E9A0B434FFA1B537FFABBC4AFFC3CF83FDD8DF
          AAFFE7EBCDFEF7F8F0FFF7F8F8FEF1F4EFFFDCE4D0FCDCE4D0FC000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000BCC685EE7D9900FF9AAE
          30FD9EB339FF92AA1EFEA3B63AFFB4C360FDC4D082FFD5DDA6FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C4CB9AE997AD
          24FFCCD7B1FBCEDBB9FFBBC885FC849E00FF808D34C089963FCA000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000C1CA
          94E992A917FFC1CD98FB99AF29FFB5BD86DC0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000BBC294DD90A71DFFADB57DD7000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00F8000000F0000000E0000000C0000000C0000000C0000000E0000000F000
          0000F0000000F0000000E0000000E0000000E0000000E0000000C0000000C000
          0000F0000000FF800000FFFE0000FFFF0000FFFF8300FFFFC700FFFFFF00FFFF
          FF00}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000B2D4FFFF3569
          C4FF165ED5FF0C5FEBFF0B60F7FF0153EFFF0F58F0FF1058E7FF1058E7FF1F6A
          EBFF105DDCFF125DE8FF1E5DD0FFAAD3FFFFCEFFFFFF6ECEA9FF2D8F56FFD1FF
          D7FFD9FFDCFFAEFFD1FF1C9347FFABFFC3FFC6FFD8FFB6FFCFFFB3D2FFFF3C6D
          BEFF569DFFFF2B7BF9FF2575FFFF3A88FFFF3376FCFF3779F7FF3779F7FF2F77
          E8FF3A85F5FF4990FFFF2C67CBFFA3CBFCFFCFFFFFFF66C69AFF288B4EFF5694
          61FF5F9E69FF309552FF2E9955FF45975DFF4A9A60FF2D944CFFBBD6FFFF75A0
          E1FFB5EDFFFF7CBCFFFF67A9FFFFADEBFFFF5790E2FFB6EDFFFFB6EDFFFF8EC3
          FFFF82B5FFFFBCE8FFFF6B8EDAFFB4CAF4FFDFFFFFFF76C98EFF399447FFAFE9
          B3FFB8EEBFFF9FE8B0FF2C7842FF9FDBB2FFB4F3CCFF9BF0C3FFB5CFFFFF5B84
          CCFFA4D9FFFF71ACFFFF64A0FDFFA0DAFFFF679EF1FFADE0FFFFADE0FFFF88BB
          FFFF8DBEFFFFB0D9FFFF7A9BE7FFB7CDFDFFDAFFFFFF77CF8FFF268732FFCFFF
          DBFFD3FFDFFFC5FFD3FF448F54FFC1FFD1FFC5FFDDFFAEFFD7FFBFDBFFFF3F69
          CFFF265CD9FF2B6AF1FF2566F1FF0A4BD7FF2664EDFF1E5DE4FF1E5DE4FF2468
          ECFF1457D7FF1F5CD5FF366CD2FFA0CCFFFFC1FFFFFF6AD9A5FF1A9243FF4CA8
          70FF5BAE78FF53AF69FF2C883CFF5BAC66FF56AB62FF41B05DFFAFC8FAFF4A71
          B6FF4F82D4FF427ED8FF3876D1FF3F7ED7FF306EC3FF5490E6FF5490E6FF417D
          DEFF346BCFFF5C8DEDFF466CBFFFA9C7FEFFCEFCFFFF7DD8A3FF3A9B53FFC9FF
          DDFFD6FFE5FFC2FECEFF498250FFC7F3CAFFDEFFE6FFC3FFD6FFC1DAFFFF7AA0
          DCFFBBEEFFFF85C0FFFF6FAFFFFFADECFFFF62A1EFFFAEEBFFFFAEEBFFFF84BD
          FFFF8BBEFFFFBDE9FFFF688DD9FFA8C2F8FFCAF8FFFF70CB96FF2B8C44FFBCFE
          D4FFD3FFE6FFB6F4C4FF437E4CFFBDE9C0FFE1FFE7FFC7FFD9FFB0CCFFFF638D
          DCFF9CD2FFFF6CABFFFF5FA2FFFF98DBFFFF5498FFFF93D4FFFF93D4FFFF6BAB
          FFFF77B2FFFFA6D9FFFF5F8EE6FF9DC4FFFFC5FFFFFF61D09CFF158F44FF42A1
          6AFF4EA673FF43A561FF2C8C40FF54A75DFF4BA555FF36A84DFFC1D6FFFF5D7D
          C0FF547CD0FF4A79D6FF4474DBFF4878E3FF3262CDFF3F70D7FF3F70D7FF4577
          D8FF406FCBFF5C87E0FF5279C5FFA5C8FAFFCAFFFFFF65D49AFF169241FF76DA
          A2FF8AE7B0FF6FD891FF299341FF77D485FF92F4A0FF6FEB89FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000008AD685FF37943AFFAAEE
          B7FFADEDC3FF98E3B0FF428E59FFA1E0B4FFABF1C2FF8FEFB3FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000008ED683FF399439FF5197
          5DFF62A378FF43935FFF34854FFF4C9161FF58A470FF369A5BFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000008CD783FF379539FFB3FA
          C2FFC8FFE2FFB8FFD6FF30844CFFA5ECBAFFC0FFD9FFABFFCFFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000087D685FF32943CFFBFFF
          D5FFCCFFEAFFB4FFD5FF32884DFFB1FCC6FFCAFFDFFFB8FFD6FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000083D588FF30933EFF5BA8
          77FF6BB28DFF4EA16FFF42965EFF5EA56FFF6EB97CFF4AAE63FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000085D28FFF358F44FFC5FF
          DDFFCDFFE9FFBEFFD7FF37854BFFBBFCC5FFD6FFDDFFCAFFD6FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000008ED297FF30833AFFADFF
          BBFFBAFFC8FFA5FFB3FF2B8639FFA7FCB2FFB4FFBDFFA2F9AFFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000008DCB97FF34823EFF2881
          34FF31903BFF339740FF339942FF19812BFF2F9643FF389C4BFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000BDF7C7FF76BF83FF94EA
          A4FF62C375FF66D17DFF6EE089FF68DC85FF5AD37AFF6CE48FFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000007DC08DFF4899
          5BFF47A860FF38A657FF2AA44FFF25A54EFF28AF54FF22AC50FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000B8F6
          CEFF479A65FF268C4DFF229C51FF27B15EFF01983DFF0CAE4BFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000091D3AAFF348D57FF35A25FFF09883BFF1AA850FF0AA343FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000094D9AEFF29834AFF2E9A54FF2CA857FF1BA44BFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000084C397FF308248FF3E9E5AFF258F43FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000007DB489FF468B55FF69B779FF}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          000000000000FFFE0000FFFE0000FFFE0000FFFE0000FFFE0000FFFE0000FFFE
          0000FFFE0000FFFE0000FFFF0000FFFF8000FFFFC000FFFFE000FFFFF000FFFF
          F800}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000010000
          000000000000A7A7A5A9CB9A3EFECFA75AFBF2E7D2FFF8F3EAFFDABA7AFFD4AB
          5CFFD3AB5DFFCFA148FFC99633FFC28818FFBC7D06FFBF830FFFC28716FFE3CA
          99FFFEFEFEFFFDFCF9FFFEFEFEFFF9F6EEFFDAB774FFD0A44EFF020202030B0A
          0A0BA3A19EA6CEA34DFFD7B97BFCFFFFFFFFFFFFFFFFFFFFFFFFE5CFA2FFD0A5
          51FFD5AE63FFD0A54FFFCA9838FFC68F26FFC38B1EFFC18719FFBD7C04FFE7D3
          AAFFFEFEFEFFFDFCFAFFFEFEFEFFF7F2E7FFC18614FFC38818FF000000005353
          5353D4AD62FFD4B374FAFFFFFFFFFCFBF9FEFDFBF9FFFEFEFDFFEBDAB8FFCFA3
          4DFFD6AF65FFD2A755FFCC9C3FFFC79029FFC48B1DFFBD800BFFE3CDA1FFFFFF
          FFFFFEFDFCFFFEFEFEFFFEFDFCFFFEFFFFFFE8D7B4FFC58F25FF000000004836
          165DCBA04AFCFAFBFBFBFCFBF9FEFCFCFCFEFEFDFCFFFFFFFFFFF1E5CEFFD0A3
          4CFFD6AF63FFD2AA59FFCD9E43FFC8942FFFC08410FFD1A958FFFFFFFFFFFEFD
          FBFFFDFDFDFFFEFEFEFFFEFEFEFFFEFDFBFFFFFFFFFFDBBA7BFF00000000422E
          065BD8B979FEFCFCFCFCFDFCFAFFFEFEFEFFFDFEFDFFFEFEFEFFF5EEDFFFD1A5
          50FFD5AD61FFD3AA5CFFCEA047FFC99633FFC08511FFEBDABAFFFEFEFEFFFDFC
          FBFFFEFEFEFFFFFFFFFFFEFDFDFFFDFDFCFFFEFEFDFFF1E7D3FF000000005048
          365BD1AA5DFEFAFAFAFCFEFEFDFFFEFEFEFFFDFDFCFFFEFDFBFFF8F3EAFFD2A9
          58FFD3AB5CFFD3AB5CFFCFA149FFC99530FFC68F26FFF6F0E4FFFEFEFEFFFEFD
          FDFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFDFFFEFEFEFFFAF8F3FF000000005B5B
          595ECFA655FEF1EADCFBFEFEFEFEFDFDFDFFFFFFFFFFFFFFFFFFFDFFFFFFD5AD
          61FFD3AA59FFD2AC5BFFD0A14AFFC9932FFFC99531FFF8F6EEFFFFFFFFFFFEFE
          FEFFFEFEFEFFFFFFFFFFFFFFFFFFFEFDFEFFFFFFFFFFFDFCFBFF000000003434
          3434D6B36BFFE3CDA0FEFEFEFEFFFEFEFEFFEBDBBBFFDCBD81FFE2CA99FFD1A5
          51FFD3AC5DFFD2AA5AFFCFA24AFFC99632FFC79129FFF6F1E5FFFEFEFEFFFEFE
          FDFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFDFFFEFEFEFFFBF8F4FF000000001C1B
          1B1DD5C39CEDD0A95AFEFEFEFEFEFEFEFEFEE6D2AAFFC08410FFCB9A3AFFD2A7
          55FFD4AD60FFD3AB5DFFD0A34CFFCB9A3AFFC28818FFECDCBDFFFEFEFDFFFDFD
          FBFFFEFEFEFFFFFFFFFFFEFEFDFFFDFDFCFFFEFEFDFFF1E7D4FF070707080101
          010200000000CDA149FFEFE8D9FAFEFEFEFFFDFDFDFFD5AF64FFCB993AFFD3AB
          5CFFD7AF65FFD5AF64FFD2A755FFCD9D42FFC48B1DFFD4AE61FFFFFFFFFFFDFC
          FAFFFDFDFCFFFEFEFEFFFDFDFCFFFDFBF8FFFFFFFFFFDCBD81FF040505050000
          000000000000D0AE6CF6D7B97BFCFDFDFDFDFFFEFEFFF3EBDAFFCB9A3CFFD2A7
          55FFD7B067FFD8B26BFFD4AC5FFFCFA24BFFCA9837FFC38B1CFFE6D3AAFFFFFF
          FFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFEBDBBCFFC7922BFF000000000000
          000000000000B6AE9EC1CB9B3EFFF5F2EBFBFEFDFBFFFFFFFFFFE5D0A5FFCC9B
          3DFFD6B067FFD9B26CFFD8B068FFD2A958FFCD9F45FFC99532FFC58E23FFE0C5
          8FFFF7F1E5FFFBFAF6FFF7F2E7FFE1C895FFC58E24FFC99632FF000000000101
          01020000000000000000CEA14DFED7BA7FFAFFFFFFFFFDFBF9FFFDFEFEFFD9B8
          75FFD0A44EFFD8B26CFFD9B16AFFD4AD5FFFD1A450FFCD9D41FFC99633FFC38A
          1BFFC8932DFFCC9C3DFFC6912AFFC08511FFC79027FFCB9B3CFF000000000202
          02030000000000000000D4AB5DFFBC8212FAF6F0E4FFFEFDFCFFFEFEFDFFF7F3
          E9FFD2A856FFD2A857FFD6AE63FFD3AC5EFFD2A653FFD0A14AFFCC9D40FFCB99
          39FFC7922CFFC58D22FFC68E23FFC8922BFFC99633FFCE9F46FF000000000202
          02030000000000000000D7B166FFBA7C05FAD6B066FFFEFFFFFFFDFCF9FFFFFF
          FFFFEEE1C7FFCC9C3FFFD1A652FFD1A652FFD0A34EFFCC9A3BFFC89733FFCA98
          35FFCB9B3DFFCA9939FFCA9736FFCA9837FFCD9D41FFD2A754FF000000000101
          01020000000000000000D6B068FEC18A22FAC38B21FEE5CFA3FFFFFFFFFFFCFB
          F7FFFFFFFFFFE3CB9CFFC7922CFFCE9F46FFC7922AFFD9B978FFECDDBEFFD0A6
          52FFC9952FFFCD9F44FFCC9E42FFCEA048FFD1A753FFD5AE63FF000000000202
          02030000000000000000D6B36EFDC08B24F9CA9737FFC79129FFEEE3C9FFFFFF
          FFFFFDFBF8FFFEFEFEFFD7B46FFFC18513FFD5B065FFFCFCFAFFFFFFFFFFF9F5
          EDFFD4AE63FFC89430FFD0A24AFFD1A551FFD4AD5FFFD8B36CFF000000000101
          01020000000000000000E5D0A6FFBC8519F7C7973AFCC7922EFDC69431FDF1E9
          D8FEFFFFFFFFFCFBF9FEF9F6EFFFEBDBB9FFFEFEFEFFFEFEFEFFFDFCFAFFFFFF
          FFFFFBFAF6FFD6B269FFC89532FFCFA34FFED4AC5EFFD5B069FD000000000000
          000000000000000000009998969CD9B875FFC48B1EFFC3891AFFBF8008FFC087
          19FEF0E6D1FEFFFFFFFFFDFDFCFEFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFDFD
          FCFFFFFFFFFFFCFBF8FFD3AD62FEC99531FFCC9C42FECD9E42FF000000000000
          00000000000000000000000000008F909191CAB996DFC0A673DDC2A773DFD9B7
          73FFC69330FFE6D6B7FBFFFFFFFFFBFAF7FEFDFDFCFFFFFFFFFFFFFFFFFFFEFE
          FEFFFDFDFCFFFEFDFCFFFBFAF6FFCC9F47FED8B56FFFCDB587E7000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000EADFC8FAC69531FFDEC48FFDFFFFFFFFFFFFFFFFFCFBF9FEFEFDFBFFFEFE
          FDFFFEFEFEFEFFFFFFFFF5F2EAFCC3912FFCE8DEC9F700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000B7B4AEBCD0A754FFD2AB5BFFF6F0E4FEFFFFFFFFFFFFFFFFFFFF
          FFFFF6F1E4FFE3CDA0FEC99A3CFFE1C794FF8C8C8B8D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000009E9E9E9EDAC191F7C99F47FCE0C692FEDCBE84FED3AD
          61FFCEA654FDD5B573FCBEB6A4C9000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000095959595EBE1CAFBBA7C06FDCA9C41FDE6D2
          A8FFD7D7D5DAB2B2B2B200000000000000000000000000000000}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00E0000000C00000008000000080000000800000008000000080000000C000
          0000C0000000E0000000E0000000E0000000F0000000F0000000F0000000F000
          0000F0000000F0000000F0000000F8000000FFC00100FFE00100FFF00700FFF8
          0F00}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000F9E9E2FFA767
          23FFFFFCF3FFFFFCF3FFFFFAFFFFFEFAF5FFE4C7A8FFBE6100FFBE6100FFCA67
          00FFB95E06FFB45803FFB44E00FFB44E00FFBB5B00FFF4D3BFFFFFEFC3FF9747
          16FFA13D03FFA13D03FFBA500DFFA74200FFA64300FFA33B00FFFAEAE3FFA767
          23FFFFFDF4FFFFFDF4FFFFFBFFFFFFFBF6FFFFF4D7FFBE701AFFBE701AFFB760
          06FFD18D51FFC58046FFB05703FFB05703FFC77629FFFFF5E2FFFFF2C8FF984C
          20FF963807FF963807FFA7410AFF9C3B00FF9F4207FF993901FFFAEAE3FFA868
          24FFFFFEF5FFFFFEF5FFFFFBFFFFFFFCF7FFFFFFF7FFD1A368FFD1A368FFAD61
          0BFFEFB678FFD69C60FFAE610FFFAE610FFFE1B080FFFFF7F4FFF4F8EDFFF1E7
          DDFFFFF8ECFFFFF8ECFFFFEFE2FFFFEFDFFFFFEEDEFFFFEBDBFFFAEAE3FFA868
          24FFFFFEF5FFFFFEF5FFFFFCFFFFFFFCF7FFEEFFFFFFFFE7BBFFFFE7BBFFB667
          00FFDE9538FFB76D12FFB36100FFB36100FFFFF6D3FFE2F0FCFFEAFAE2FFF9FB
          E7FFFFF3E1FFFFF3E1FFFDEDDDFFFCF5E2FFF0EAD7FFF9F0DCFFF7ECE4FFBD72
          1AFFFCFEFFFFFCFEFFFFFFFEFAFFFFFFFEFFF5FFF2FFFFFFF0FFFFFFF0FFAA8A
          30FFC87000FFC86300FFD39F5BFFD39F5BFFFFF3F5FFFFF9E2FFBA5D0AFF9C52
          02FFB04803FFB04803FFA2540BFFB34600FFA64300FFB54C09FFF7ECE4FFBD72
          1AFFFDFFFFFFFDFFFFFFFFFEFAFFFFFFFEFFFFF8FBFFFFFAFFFFFFFAFFFFE7C3
          9DFFC7803FFFBE7343FFEDCCB2FFEDCCB2FFFFF8FFFFF9F7EDFFBC6708FFAB53
          00FFC85109FFC85109FFA44700FFA74800FF9C4E05FF913700FFF7ECE4FFBE73
          1BFFFDFFFFFFFDFFFFFFFFFEFAFFFFFFFEFFFFFFF9FFEFF1FBFFEFF1FBFFFFFF
          F7FFFFFEF9FFFFFBF8FFFFFEFFFFFFFEFFFFEBF3FAFFF5FFEFFFFFF9E7FFFFFC
          EDFFF8EEE4FFF8EEE4FFFFF6EDFFFFFAF2FFFDF1E5FFFEF5E7FFF7ECE4FFBE73
          1BFFFDFFFFFFFDFFFFFFFFFEFAFFFFFFFEFFFAFDFFFFFFFEFFFFFFFEFFFFF8FF
          E4FFF9F6F1FFFFFFEFFFFFFAF8FFFFFAF8FFFFF5E9FFFFFBEFFFFFF7F7FFFFEE
          EBFFF8F6EEFFF8F6EEFFFFF7F5FFFEF2EEFFFFF0E5FFFFF5DBFFF7ECE4FFBE73
          1BFFFDFFFFFFFDFFFFFFFFFFFBFFFFFFFEFFFFF1FFFF6D3338FF6D3338FF6D3B
          25FF592745FF5F3340FF682544FF682544FF6A3B25FF553928FF67362CFF8233
          26FF65402AFF65402AFF732929FF4C2D3CFF5C3146FF4B2C2DFFF8EDE5FFBE73
          1BFFFDFFFFFFFDFFFFFFFFFFFBFFFFFFFEFFECFFE9FF42452BFF42452BFFF4EF
          FFFF0C05AAFF4654EBFF00036EFF00036EFF116C21FF39D44CFF005E16FF7A31
          00FFEB7E4EFFEB7E4EFF932D25FF007986FF2BD3F4FF18738FFFF8EDE5FFBF74
          1CFFFDFFFFFFFDFFFFFFFFFFFBFFFFFFFEFFFFF6FFFF51312BFF51312BFFFFFB
          FFFF0002A2FF3554F0FF000F95FF000F95FF005513FF3AE16BFF0D6404FF8B41
          00FFE79E42FFE79E42FF802506FF007887FF34DAFFFF00668BFFF8EDE5FFBF74
          1CFFFDFFFFFFFDFFFFFFFFFFFBFFFFFFFEFFFFF7FFFF623C24FF623C24FFFFFF
          F8FF00009FFF3F5CFFFF00008EFF00008EFF0C5E0CFF53ED5BFF035E09FF903B
          00FFF5A245FFF5A245FF912405FF007083FF3ED9FFFF096688FFFDEDE0FFC77D
          15FFF9FFFBFFF9FFFBFFFDFFFFFFFFFCFFFFF9FCFFFF6B3524FF6B3524FFFFFF
          F7FF0400A4FF6261FFFF000590FF000590FF006400FF59F75FFF006106FF9B39
          00FFFDA256FFFDA256FFAC2702FF006794FF42E1FFFF045F9DFFFDEDE0FFC77D
          15FFF9FFFBFFF9FFFBFFFDFFFFFFFFFCFFFFFBF4FFFF6A3130FF6A3130FFFFFF
          EFFF0B08A2FF5764E5FF000691FF000691FF005B14FF71EA8CFF00620EFF8E43
          00FFE39F51FFE39F51FFA03008FF006791FF46E2FFFF025C98FFFDEDE0FFC77D
          15FFF9FFFBFFF9FFFBFFFDFFFFFFFFFCFFFFFCFFF3FF713F2DFF713F2DFFFAFF
          F1FF0000A7FF6670FEFF0003A1FF0003A1FF135716FF096107FF125C1CFF8132
          00FFF5B06AFFF5B06AFF942F05FF00668CFF4EE6FFFF07669FFFFDEDE0FFC77D
          15FFFAFFFCFFFAFFFCFFFDFFFFFFFFFDFFFFFAFAFFFF682C36FF682C36FFFAFF
          FFFF0000A2FF7882FFFF0300A6FF0300A6FFDBF5E8FFE6FFF7FFFFFFE2FF9D37
          10FFF3A169FFF3A169FF8D2C08FF0A6A8FFF51E3FCFF006498FFFDEDE0FFC87E
          16FFFAFFFCFFFAFFFCFFFDFFFFFFFFFDFFFFFAFFF8FF642D30FF642D30FFFDFC
          FFFF0A08A3FF7577EEFF120098FF120098FFFBFFFCFFF7FFFAFFFFFFF1FF7727
          0EFF71330BFF71330BFF763215FF035F89FF5EE7FFFF006DA1FFFEEEE1FFC87E
          16FFFAFFFCFFFAFFFCFFFDFFFFFFFFFDFFFFF6FFF4FF6D3639FF6D3639FFF5E4
          FFFF0A008DFF1B0C86FF1E0389FF1E0389FFF1EBECFFFFFFF9FFFAFFFEFFFFFF
          F2FFFFFFEAFFFFFFEAFFFFFFEEFF06699EFF64E3FFFF006496FFFEEEE1FFC87E
          16FFFAFFFCFFFAFFFCFFFDFFFFFFFFFDFFFFECF6FFFF602A2AFF602A2AFFFFFE
          FCFFE7F5FFFFF6FBFFFFF7EEFFFFF7EEFFFFFFFFFBFFFBF7FFFFF3FEFFFFF3FD
          F7FFFAFFF8FFFAFFF8FFF9FBF5FF0060A1FF6FE5FFFF005D92FFFEEEE1FFC87E
          16FFFAFFFCFFFAFFFCFFFDFFFFFFFFFDFFFFEBFBFFFF6D3B2FFF6D3B2FFFFFFC
          F5FFF6FFF7FFFCFFF6FFFFFEFFFFFFFEFFFFFFFFEFFFF8FDFFFFFFF6FFFFFBFE
          FFFFF9FEFDFFF9FEFDFFFBFEFFFF035FA7FF006C96FF006599FFFDF0E2FFAE78
          1EFFFFFFE3FFFFFFE3FFFFFEF9FFEAF8FFFFFFF9FCFF474043FF474043FFFFFB
          FEFFFFFEFFFFF9F4F6FFFFFEFFFFFFFEFFFFFCF9FBFFFFFEFFFFFDFFFFFFFDFF
          FFFFFDFFFFFFFDFFFFFFFCFEFFFFFCFEFFFFFBFDFEFFFBFDFEFFF3ECE9FFB98A
          3FFFFFFDDDFFFFFDDDFFFFFFF8FFFAFFFFFFFFFFF8FFEBECE2FFEBECE2FFFFFF
          F8FFFEFFF5FFFFFFF8FFFFFFF8FFFFFFF8FFFDFFF8FFFBFFF6FFFFFFFCFFFFFF
          FCFFFFFFFCFFFFFFFCFFFFFEFBFFFFFEFBFFFFFEFBFFFFFDFAFFFFE4CAFFC97B
          0DFFD48C25FFD48C25FFC97813FFC27D14FFC47811FFDA8F27FFDA8F27FFC478
          11FFC37911FFC57B13FFBF770FFFBF770FFFC17911FFC37B13FFC0761BFFC076
          1BFFBF751AFFBF751AFFBF751AFFBF751AFFBF751AFFBE7419FFFCF6FFFFFAE5
          C6FFFCF0E4FFFCF0E4FFFFEFF0FFF1EEF0FFFFEBEBFFFAE0E0FFFAE0E0FFFFE9
          E9FFFFF6F6FFFAE5E4FFFFECEBFFFFECEBFFF9E4E3FFFFF1F0FFFCF0E6FFFCF0
          E6FFFCF0E6FFFCF0E6FFFBEFE5FFFBEFE5FFFBEFE5FFFBEFE5FF}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          200000000000000900000000000000000000000000000000000002D845FF00DA
          47FF1FCF59FFFEFDFEFF6AD899FF00E150FF00E450FF00E551FF00E552FF00E6
          51FF00E654FF00E755FF00E754FF02E854FF03E854FF01E956FF00E954FF00E9
          55FF00EB56FF02E757FFBAF5D9FFF5FEFAFF00E851FF00E84FFF01D944FF00DA
          43FF1CCF57FFFFFEFEFF6CD797FF00E14BFF00E24AFF00E24BFF00E24CFF03DB
          3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB
          3CFF03DB3CFF01E551FFBBF5D9FFF6FEFCFF00E64DFF00E54BFF01D944FF00DA
          41FF20CD56FFFCFCFCFF6DD496FF00DF49FF00E048FF00E047FF03DB3CFF03DB
          3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB
          3CFF03DB3CFF03DB3CFFBAF3D1FFFBFCFAFF00E34AFF00E348FF00DA44FF00DA
          40FF1ECC53FFFCFCFEFF6DD293FF00DC42FF00DC41FF00DE42FF03DB3CFF03DB
          3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB
          3CFF03DB3CFF03DB3CFFB5EAC6FFF5FEFCFF02E045FF00E240FF01D742FF00D9
          40FF1DCC54FFFDFDFDFF6ED292FF01DA3EFF00DC3FFF00DC3CFF03DB3CFF03DB
          3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB
          3CFF03DB3CFF03DB3CFFA5D3B2FFDEE5DEFF00DD42FF00DF3EFF01D743FF00D9
          41FF1DCB54FFFDFDFCFF6ED48FFF00DB3BFF00D93CFF00DA3BFF03DB3CFF03DB
          3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB
          3CFF03DB3CFF03DB3CFFBCF3D1FFF5FDFAFF30D664FF00DC3BFF03DB3CFF03DB
          3CFF03DB3CFFFDFCFAFF6DD38EFF00DA3CFF00D93CFF00DA3AFF03DB3CFF03DB
          3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB3CFF03DB
          3CFF03DB3CFF01D73BFFAADEB8FFF5FEFAFF41D065FFF3FAF9FF03DB3CFF03DB
          3CFF03DB3CFFFDFDFCFF6DD18CFF00DA3BFF00DA37FF00DA35FF00D73BFF02D7
          3DFF05D63BFF06D53DFF00D839FF0BD242FF0AD13EFF03DB3CFF03DB3CFF03DB
          3CFF03DB3CFF00D938FFAEE2C1FFF9FEFBFF3DCF68FFF9FEFCFF03DB3CFF03DB
          3CFF03DB3CFFFEFDFDFF6DD28CFF00D63BFF00D737FF00D539FF07D541FF09D7
          48FF3BCE61FFF4FEFEFF93EBB1FF0EDF4FFF1FC250FF1BC44FFF0ECB43FF00D7
          39FF00D537FF00D43AFFB0E5C1FFF8FEF8FF3BCE6AFFFAFDFBFF03DB3CFF03DB
          3CFF03DB3CFFF9FBFAFF82DFA5FF23E366FF1FE562FF1BE662FF1EE55FFF26E8
          60FFEDFDF7FFFEFDFCFFFDFDF7FFA1E3B9FF2ECE6BFF2ED367FF2FCF6CFF2AE3
          6BFF1DE662FF20E068FFB1EEC8FFF5FDFAFF65DB8DFFFFFDF9FF29E365FF1FE6
          61FF2CDC6BFFF5FDFCFFF4FCF4FF6EDC95FF6BE096FF6AE097FF68DF98FF5EE6
          93FFABF0C6FFFBFEFAFFFDFEF7FFE5E5E8FF31D36DFF75CE9AFF6BD494FF72DF
          9CFF67DF96FF74E198FFDCE7E4FFF2FEF5FF60DD92FFFBFBFDFF25E362FF1FE4
          60FF1EE460FFBAF9D1FFF9FBF7FFFEF9FBFFFDFCFEFFFDFDFEFFFBFDFAFFF6FA
          FCFF47CF77FFFEFCFCFFFBFDFAFFF8FDFAFF46CA76FFDCEAE3FFE2E9E7FFFCFB
          FDFFF9FCFEFFFBFCFEFFE2E8E0FF2FDA6DFFECFEF5FFF8FEFDFF23E563FF1FE3
          61FF20E360FF25E45AFF23DD62FF50DA85FF4EDC81FF4DDC81FF48DC80FF51DA
          83FF2FE36FFFE7E7E7FFFCFDFEFFFBFCFDFFC5F8D8FF4DDD7CFF54D885FF52D9
          85FF5AD88BFF56CF85FF2DD669FFD3FADDFFF9FBFAFFFBFDF8FF23E361FF22E1
          61FF1FE461FF1EE163FF1EE360FF1FE55FFF1EE364FF18E563FF1CE561FF1FE6
          5EFF1DE461FF9CDFB1FFF8FBF5FFFFFEFEFFFFFBFDFFF4FFFEFFFBFCFEFFFDFF
          FDFFE6EAE8FFFBFDFAFFF6FEFCFFFDF9FDFFFDFEFBFF4AD785FF22E260FF20E3
          60FF1EE360FF1EE360FF1EE360FF1DE360FF1BE460FF1BE460FF1BE460FF1AE5
          61FF16E660FF1AE15FFFF8FCF8FFFBFBF6FFEEFBFBFFFCFBFCFFFBFBFBFFFBFB
          FBFFFEFEFEFFFBFDFEFFFBFDFDFFFCFEF9FFA5EFD3FFD4FEE8FF20E15FFF1EE1
          5EFF1DE15EFF1ADF5CFF1AE05DFF18E35FFF1BE360FF19E25FFF1AE35FFF19E5
          60FF1BE261FF22E067FF87E9ADFFFBF9FCFFF7FFFBFFFDFEFDFFFEFEFEFFFEFE
          FEFFFEFEFEFFFDFEFDFFEFFEFCFF4ED384FFE3FEE9FFFFFCFDFF1EE05EFF1BE0
          5DFF1CE15EFF1AE15CFF1AE15CFF18E15CFF18E05CFF16E15CFF16E25CFF17E3
          5DFF18E35FFF17E25EFF1BE55EFF2FDB6EFF6DE38FFF79E9A0FF8CEBADFFA3E9
          BFFFB2F1CEFFC6F5DBFF64E399FFDFFFF2FFFAFEFDFFFDFCFDFF1BDF58FF19E0
          58FF1AE158FF18E157FF17E057FF17E259FF16E259FF15E259FF15E25BFF17E3
          5CFF16E05DFF16E15DFF1AE25EFF1DE064FF1AE559FF17E45DFF14E55DFF11E5
          5BFF15E75EFF0FE660FF17E362FFF7FBFDFFFEFEFEFFFCFDFDFF1CDB53FF17DF
          56FF17DF58FF14DE56FF15E058FF14E058FF12DF56FF13E056FF14E057FF13DF
          57FF12E157FF13E259FF13E25AFF13E15CFF15E25EFF14E35EFF15E45EFF15E3
          5EFF15E45FFF16E35CFF1CE15FFFA2EBBCFFFCFDFAFFF8FDEEFF18D055FF0CDC
          50FF12DB50FF13DD54FF12DD54FF10DE54FF10E054FF10DF53FF10DF54FF10DF
          55FF0FDF55FF11E056FF10DF55FF11E056FF13E258FF10E258FF10E157FF11E2
          58FF11E358FF0CE455FF08E35BFF18E258FF16E05EFF10DF5BFF79E799FF1ADE
          5BFF1ADE5BFF11DC52FF0FDA52FF0EDC52FF0EDD52FF0DDD51FF0BDD52FF0CDD
          53FF0DDC51FF0DDC52FF0EDE53FF0FDE53FF0FDF54FF0CE053FF0DE154FF0DE0
          53FF10E256FF0CDF58FF0EE251FF0FE051FF15DD57FF13DF52FFFDF8FDFF1BD0
          51FF34E974FF44E579FF41E878FF3BE272FF36E472FF39E575FF3AE675FF3BE6
          76FF3EE676FF41E87AFF41E87AFF40E979FF45EA7BFF4BEA7EFF4CEB7EFF51EA
          81FF52EC83FF53EA85FF56EB88FF59ED89FF5CEB8DFF5FEC90FFFDFEFDFFF7F7
          F5FF21D051FF81F2A5FF8BF0AAFF8FEFB0FF8FF0B0FF96F0B6FF97F2B7FF9EF0
          BCFF9FF3BEFFA4F2C2FFA9F3C3FFACF4C5FFB2F4C9FFBAF6C7FFC0F5CEFFC3F7
          D1FFC9F7D5FFCCF9D7FFCEF9D8FFD4FADEFFD6FAE1FFDAFBE4FFFDFCFEFFFCFE
          FDFFFCF8FCFF69E28DFF29BF54FF80E3A6FF91EFABFF93EDAFFF97EEB1FF9BED
          B1FF9CECAFFF9CECAEFF9CEDB0FF93EEB0FF93EFB1FF94EDB0FF98EDB2FF97EE
          B2FF95EEB0FF97EEB1FF96EFB1FF95EDB0FF95ECB1FF95ECB1FF}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          200000000000000900000000000000000000000000000000000000000000301B
          1385804A34FF955D44FF82513AFC6F4026FDBAA79CFEF5EDE9FE89563AFE8D61
          49FF825640FFB17A59FF9A6C68FF4948D9FF4848F1FF4141EDFF4F4FF3FF2424
          DDFF3939EAFF4344FFFF3737FBFF5050F4FFF3F3FAFFF7F5F4FF0604030B7443
          30DC955C44FD9B664EFB8F5E45FF8A5A40FECEC3BDFECEFBFFFF808482FFA368
          4AFF976D56FF93644EFFC28B67FF6D5CADFF4E52E9FF4443ECFFC1C0F4FFB8B8
          E6FF6A6AE1FF5151EDFF4748ECFFA0A0E5FFF3F1E7FFDEE5EBFF0D070425844E
          39E9A26950FEA06D54FEA77459FE9C7159FF9BC5D7FFA0EBFEFF79AFC6FFA36D
          52FFB9876BFF9D705AFFAB795DFFBE9082FF6763CCFF5254EFFFC4C2F0FFFFFF
          F8FFFCF8F2FFEBE9F1FFEFEBEEFFF2F3F1FFCBE3F6FFC4E6F7FF080504138751
          3CE1A76C53FFA9755CFDC28C6EFFA98672FFB0D9EAFFEEFBFFFFC4E1F0FFBB92
          7BFFBA8568FFC9977BFFA1735DFFC49070FFC49A95FF6967D6FFC0BFEDFFFCF8
          EAFFF5EFEEFFFDF5EDFFEEEBE7FFAED1F2FFB7DCF5FFC7E7F6FF00000000804D
          3ACDA46950FEB9856BFCCE997CFFCAA18BFFDBEDF6FF9CD2ECFFD2E8F3FFEDD8
          CEFFBF896CFFD19D81FFCF9D81FFA5755FFFDBA684FFC29A9CFFB4ADD6FFFAF1
          E4FFF3EBE5FFFFEEE0FFBBD6F1FFA5D1F7FFC3E2F4FFBFE1F4FE000000006940
          2FA5A4674FFDC79479FAD39D81FED9B09BFFD3EEFAFFB1DCF0FFD9E1E5FFEFF2
          F4FFC39C88FFD19A7CFFD9A488FFCB997DFFAC7C66FFE5B193FFDCB2A1FFF4E6
          DEFFFFEFDFFFB3B0B6FF5B7EAAFF8BB2D2FFAACFE6FF9BC5E5FF000000003C24
          1A5CAF6F55FFC89478FBD7A285FFB99481FE89BDD4FFBDEEFFFFB9E8FCFF8198
          A5FFA39289FFD49E82FFD5A084FFD9A488FFBD8B70FFDCAC95FFEEB79BFFDEC0
          B0FF76899FFF28476EFF4973A0FF7AABD9FF84B4E3FF7CB1E5FE010000020704
          020D92573EE2A76F55FFC49074FCBA9D8CFFA9B9C1FEA7D3E5FF7BB8D3FFA4AE
          B3FFF1EDEAFFD6B5A3FFD09779FFD39F84FFB08269FFCC9C82FFDBAD99FF5565
          80FF2E537EFF3A5D86FF73A7D8FF95C5F3FF95C7F5FF95C7F4FE020101040000
          0000261A1440996952FAB07C60FDB19584FAF6F4F2FF5E758AFE73869BFEE1E2
          E5FFFFFFFFFFEAE5E3FFC6967CFECC9A80FFC59E89FDC89B84FB767989FF345E
          8BFE3F6088FF436892FF93C3EEFF9DCEF7FF9FCEF5FFA1D0F6FF000000000100
          0002000000003923186F925F45F8AA8167FFB3ADA9FE324D69FF3B5875FF4562
          7DFFA4ADB6FEF4F1EEFFC7AEA1FEB8927CFBBFA08FFFA98B7DFF456489FE4469
          93FF41648DFF496C95FF9ACAF1FFA7D5F7FFADD8F6FFAED9F6FE000000000000
          0000000000020000000016120F2D523D32A6657081FD345C89FD3A5C82FE344F
          6BFF2C4762FF94999EFFBBABA0FE9C8172FF8F7563E13F444EB0456991FE4A6E
          97FE4A6E97FF41648DFF93BFE1FFB6E1FBFFB8E0F6FFBCE3F6FF000000000000
          0000000000000102030600000000172534623F6995FE436A96FB3F6895FE395F
          8AFE253E57FE324455FD8A7E74FB4E413B9F07080913131F2C574D6F96FE4F73
          9BFA52769EFE43668FFF779EC0FFC1EAFEFFC2E7F5FFC8ECF7FF000000000000
          0000000000000000000002040509496C8EE15D85ADFF5881A8FD4F77A1FF466F
          9CFF375A82FC223548FF171B1F6F000000000000000016202D584E729AFF5479
          A1FC5479A3FF51769FFF54789EFFB4DBEEFFCBEFF9FFCEF0F6FF000000000000
          000000000001000000000F161D35638CB2FF7199BFFC6D96BDFF658DB5FE577F
          A7FE4872A0FF2D4865FB010102140000000200000000070A0D1E507298F86387
          AEFE6488AEFE5E83ABFE4C709AFE82A6C2FFCEF3FCFECAEDF4FE000000000000
          000001010203000000002938476C749AC0FE7AA1C7F979A0C7FE749DC3FF6A92
          B9FE5781AAFD3F648CFB0D10157C000000010000010200000000445C74B47597
          B9FE7E9EBFFB7EA0C1FF668CB2FF577CA3FFB5DBEEFFC5EBF8FF000000000000
          0000010101020000000045576A8F8FAFD2FE93B3D5FA89ADD2FE7DA5CBFF759E
          C5FF6890B8FE537FABFB35516FFF0B0B0A7D0000000000000000191F263D83A1
          C0FF8EABC9FB92B0CEFE93B1CFFE668AB0FF79A0C1FEBFE8FEFE000000000000
          000001010102000000004F61759D9BB9DAFFA1BEDEFA9FBEDFFF94B5D8FF81A7
          CCFE719AC0FF608AB4FC43658BFB1D1D1DE80202020C0000000000000000596C
          7FAD97B4D1FF96B2CFF89AB7D4FF90AECCFE6081A5FE7198BBFE000000000000
          000001020203000000004E6073989DBBDBFFA4C1DFFAA3C1E2FF9EBDDEFF96B7
          D9FF7DA2C6FF35404BFE202327FC20201FFF0304043500000000000101020C0E
          10167C93AADB9BB9D5FF95B2CFFB85A2C0FA83A3C2FA7297BCFB000000000000
          00000101010200000000465667899CBADBFFA9C7E7FAABCAEBFFA4C3E4FF9BBC
          DFFF89A9CAFF2A2C2DFF1D1A18FA212121FE0908084B00000000000000040000
          00000F13162062768BBA83A1C0FF7A9CBCFF82A4C6FF789BBEFF000000000000
          000001010203000000003845546F93B0CFFF91AAC4F994ADC9FF96B1CFFF9CBF
          E3FF65788DFF2D2C2BFE252626FB202020FF0405053F00000000000000010000
          0001000000000000000013191F38303F4D76303F4F77151C2441000000000000
          000000000002000000002E323691535659FB555555F8535353FF4E5052FE4C52
          58FE454647FE414141FD313131FC212121F10202021500000000000000000000
          0000000000010000000100000000000000000000000000000000000000000000
          00000000000000000000333231C05A5959FF737374FF737273FF686868FF5B5A
          59FF505050FF3F3F3FFC343434FF1818189B0000000000000003000000000000
          0000000000000000000000000002010102030101020300000002000000000000
          000000000000000000010505051523232386444444DA545454F7545455FD4E4E
          4FFE414141FC313131F51A1A1AB4030303160000000100000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000202020F1212126F282828BC2E2E
          2FDF222222C60C0C0C6900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF0080000000800000008000000080000000800000008000000080000000C000
          0000E0000000E0000000F8000000F8020000F8060000F80F0000F0070000F003
          8000F0038000F003C000F003E000F003F900F003FF00F003FF00F807FF00FE0F
          FF00}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FCFCFFFF3F40
          42FF008B45FF86C9A6FFFCFAFEFFF2F8F8FFB5E3CFFFAEE1CAFFB8E4D1FFB3E2
          CEFFBFE8D6FFBDDFD0FF52B484FF1C9754FF132F1EFF28232AFF2C2D2EFF3939
          45FF0812C9FF7B81DEFFFBFBFDFFEEEFFBFFB3B6F1FFAEB2F0FFFCFCFFFF4040
          42FF008B44FF8ACAA9FFFFFEFFFFF3F8F9FFBBE5D3FFB8E4D1FFBAE4D2FFB2E2
          CDFFC1E9D8FFC3E5D7FF4EB583FF189250FF526E5DFF757177FF707172FF6969
          74FF0913CAFF7A80DDFFFDFDFDFFEFF0FCFFB8BBF2FFB8BBF2FFFCFCFFFF3F40
          42FF018C47FF74C79DFFCDEADEFFBDE7D5FFA0DDC2FFD8F1E8FFE5F5F0FFF6F7
          F9FFF9F5F9FFEBE2E6FF42AC76FF17924FFF334F3DFF3A353CFF4B4C4DFF1D1E
          28FF0109C1FF7D82DFFFFFFFFDFFF7F7FDFFB7BAF2FFB1B5F1FFFCFCFFFF4040
          42FF008B45FF7DC9A3FFF7F9FBFFF1F4F5FFBADECEFFDFE4E2FFBBD3C7FF95C2
          ABFF71B693FF4FAC7CFF3BAE76FF56B685FF143522FFA39EA5FFFFFFFFFF4040
          4CFF0004BCFF7E83E0FFF4F4FBFFD6D8F7FFA9ADEFFFB8BCF2FFFCFCFFFF4041
          43FF038F4AFF67BA8FFFB3CBBEFF88BFA3FF62B78DFF57B386FF47B47EFF41BC
          80FF3CC481FF35C37CFF2CB771FF60BC93FF1F2C29FFD0CED2FFFCFCFEFF3939
          45FF0209BEFF666DE1FFCED0F6FFCFD2F8FFB3B6F2FFF8F9FCFFFCFCFEFF363A
          3AFF459E72FF6ACE9EFF56BF8CFF4CC88CFF43C987FF32C079FF2DB470FF1B91
          56FF0A6538FF0D482CFF1D3C2FFF333939FF8D8B8EFFFAFAFDFFF8F9FAFF3C3C
          47FF0001BCFF767BDBFFF6F5F4FFD1D2ECFF8F93E1FF9497DAFFFEFFFFFF534D
          53FF164B31FF2BB770FF149454FF076F3CFF044D2AFF17402DFF4D5956FF2C28
          2DFF7C7079FF968C94FFD0CAD0FFEAE9EDFFE9EAECFFD1D1D4FFBFC0C0FF2E2F
          3EFF1F27C8FF555BD8FF7276D3FF5C61D9FF535AE2FF4951E8FFFAFAFCFFE8E7
          E9FF4E5152FF273A33FF47484BFF71676FFFAB9FA7FF574F56FF424044FF5052
          53FFD6DADBFFB0B3B4FFB2B3B4FFA8A8AAFF99999BFF939396FF919192FF2020
          29FF4C51BBFF6169FBFF434CF0FF353EE9FF2029CEFF1820B1FFFAFAFDFFFFFF
          FFFFFFFFFFFFF4EFF5FFFDFDFFFFFFFFFFFFFFFFFFFF696A6CFF414143FF3D3C
          3EFF919193FF7A7B7EFF66686EFF4E5158FF383A40FF2A2B2FFF57585EFF5A5A
          56FF0E1139FF0C1491FF060B62FF0E1142FF303143FF2C2C29FFFBFBFEFFFAFA
          FDFFFBFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F2FF57595EFF474A51FF1E22
          29FF2F3035FF231F1FFF271B11FF351F09FF4E2F0BFF5A3813FF1F160FFF5C5E
          63FF676763FF4F4F43FF8F8E82FFCFCFC6FFFBFAF6FF7C7C80FFFBFBFEFFFAFA
          FDFFFAFAFDFFF8F8FAFF999A9EFF4F5157FF333234FF2A221AFF5D4C3AFF462B
          0BFF5B380DFF734B19FF906836FFA48255FFA9885BFF8A5B20FF533314FF3738
          3DFF96969AFF96969CFFCCCDD2FFF4F4F9FFF9F9FBFF6E6E71FFFBFBFEFFF8F8
          FAFFFDFDFEFFB1B2B7FF0F0701FF51320EFF694312FF875F2DFF936C3CFFB093
          6BFFBFA88CFFC8B8A4FFD4CABFFFD0C5BBFFC3B3A0FF80531BFF533314FF3D3F
          43FF8F8F91FF858588FF9C9C9FFFB9B9BCFFD2D2D5FF606063FFFBFBFEFFF7F7
          FAFFFEFEFFFF9B9EA5FF38220AFF9C6C2DFFC7B6A0FFEDE8E4FFD9D0C8FFD1C7
          BDFFCFC4B8FFD0C5B8FFD4C9BDFFD0C5B8FFC6B6A1FF81541CFF533314FF3B3D
          41FF8F8F91FF848487FF969699FFC5C5C8FFF2F2F4FF717174FFFBFBFEFFF7F7
          FAFFFEFEFFFF9FA2A9FF341E06FF986F36FFEDEBECFFFFFFFFFFDED6CFFFD3C7
          BBFFD2C6BAFFD3C7BBFFD5CABFFFCEC1B4FFC2B09AFF82541CFF533313FF3D3E
          42FF989799FF979799FFB1B1B4FFE3E3E5FFFFFFFFFF818184FFFBFBFEFFF7F7
          FAFFFEFEFFFF9EA1A8FF341E05FF996F35FFE7E3E0FFFCFCFDFFDDD4CBFFD0C4
          B6FFD0C3B6FFD2C6B9FFD8CEC3FFD2C6BAFFC4B49FFF83551CFF4E2E0EFF5D5F
          63FFF9F9FBFFF2F2F5FFEBEBEDFFCDCDD0FFA7A7A8FF3C3C3FFFFBFBFEFFF7F7
          FAFFFEFEFFFF9EA1A8FF341E05FF996F36FFE8E4E1FFFBFCFDFFDDD4CCFFD3C7
          BBFFD0C4B7FFD0C3B6FFD3C7BAFFCFC3B6FFC7B6A3FF82551CFF4F2F10FF4243
          47FF88888BFF505154FF353538FF2D2D30FF353538FF626265FFFBFBFEFFF7F7
          FAFFFEFEFFFF9EA1A8FF341E05FF996F36FFEBE8E7FFFFFFFFFFE0D9D2FFD4C9
          BDFFD3C7BAFFD4C9BDFFD4C9BDFFD1C6B9FFC0AD97FF7E531AFF5F3F1FFF3536
          3BFF4A4A4CFF606063FF6C6C6FFF6A6A6DFF5A5B5DFF48484BFFFBFBFEFFF7F7
          FAFFFEFEFFFF9EA1A8FF341E06FF996E35FFDCD4CDFFE5DED8FFC7B8A6FFD2C6
          B8FFD9CFC5FFE6E0DAFFEDE9E7FFFAFAFDFFCEC0AEFF794B11FF6F4F30FF6A6C
          70FF4F4F51FF414144FF404143FF565659FF7C7C80FFA9A9ACFFFBFBFEFFF7F7
          FAFFFEFEFFFF9EA1A8FF341F07FF976C33FFD5CCC2FFF0EEECFFDAD1C8FFEAE6
          E3FFF7F6F7FFE6DED7FFD2C5B5FFBBA78FFF9B7D54FF8A6232FF5E3D1BFF3234
          38FF9D9D9EFFC8C9CBFFEFEFF2FFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFEFFF7F7
          FAFFFEFEFFFF9FA2A9FF331D04FF96692EFFDAD1C8FFDFD7CDFFBAA78FFFAE96
          77FFA58B68FF9A7950FF997446FFA07642FFA37642FFC19255FF7E5F36FF5D5F
          66FFFFFFFFFFFFFFFFFFFDFDFFFFF8F8FBFFF7F7FAFFF8F8FBFFFBFBFEFFF7F7
          FAFFFEFEFEFF9A9DA3FF412E1AFFAF8E61FFA48A68FFA88B63FFAA8759FFAB82
          50FFAA7D47FFA1743EFF8E6331FF714E24FF52391AFF3F2F1CFF2C2927FFB0B1
          B4FFF9F9FAFFF5F5F8FFFAFAFDFFFBFBFEFFFBFBFEFFFBFBFEFFFBFBFEFFF7F7
          FAFFFEFEFFFFA5A7ABFF221912FFB18E60FFAE854FFF9B723DFF7C5729FF5C3F
          1BFF422F18FF352C21FF3D3B3BFF585B60FF84888FFFB2B5BCFFE5E6EAFFFFFF
          FFFFFAFAFDFFFBFBFEFFFBFBFEFFFBFBFEFFFBFBFEFFFBFBFEFFFBFBFEFFFAFA
          FDFFF9F9FCFFF3F3F5FF5F6064FF362918FF473827FF383330FF494B50FF6F73
          7BFFA1A4ACFFD0D2D8FFF5F5F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
          FCFFFBFBFEFFFBFBFEFFFBFBFEFFFBFBFEFFFBFBFEFFFBFBFEFFFCFCFEFFFCFC
          FEFFFBFBFDFFFFFFFFFFFFFFFFFF787E88FF89909AFFDBDEE2FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F8FFF4F4F6FFF6F6F8FFFAFAFCFFFCFC
          FEFFFCFCFEFFFCFCFEFFFCFCFEFFFCFCFEFFFCFCFEFFFCFCFEFF}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000F7FAFEFFFFFF
          FEFFBAD6FCFF46ADEEFF72EFF5FF93EEFFFF5AB8F1FF61D0F3FF64D4FEFF75FB
          FCFF66CFFDFF62C4EEFFB6FBF7FFE1FCFFFFDDFFFDFFB1F0FFFF6DC8F5FF73F1
          F3FF6EEEFEFF63D2FCFF5EBEFCFF47A3FBFFD0E2FBFFFDFEFFFFF9FBFEFFFFFF
          FDFF7BB7FAFF53C3ECFF77F8F9FF90E8FEFF55B2F3FF5FC9F7FF65D6FDFF76FB
          FDFF6BD8FCFF66C3F3FF9FE5F2FFB2D7F5FF79B3F1FFA5DFF5FF72CBF5FF71EF
          F3FF6FEFFEFF64D4FCFF5FC0FCFF47A4FAFF77B5F7FFFFFFFDFFFFFFFFFFF8FA
          FCFF5EAAF9FF5CCCECFF78FAFAFF93E9FDFF52AAF7FF5CC2F9FF61CFFBFF72F1
          FBFF66DDFCFF62B5F5FF91D3E6FFC1ECE7FFA6D7E6FF70ADE6FF84C9E6FF6FDD
          EAFF66DDFAFF54B6F7FF4EABF9FF57B0FDFF74CFFBFF96C2F6FFFEFEFEFFECF3
          FDFF54A7FBFF58C2EFFF75F3F9FF9CECFCFF4EA2FAFF4DAAF9FF5BC2FAFF65DA
          FBFF5FCBF6FF62ACE4FF90D6E9FF9EEDF0FF83D3F8FF5CBBF5FF6AC5F3FF72C4
          E4FF67CFF3FF67C0EFFF4A9DF6FF4AA4F1FF5CB4ECFF45A5FAFFFFFFFFFFF0F5
          FDFF51A4FAFF56BEF5FF6FE0F4FF94DDF7FF459AF9FF51ACFAFF61C7FBFF5ECE
          FAFF65BDF1FF5B9DA1FF63C4E3FF72E3FFFF6AC3F4FF75D7FDFF4DA2BBFF59B2
          DFFF73C7F0FF64BFEFFF569EF2FF4499D8FF3F986AFF54BCDCFFFBFDFEFFFDFD
          FDFF6FB2F5FF4BBAF9FF72DAFFFF69BAFFFF3C94F8FF4CA4FAFF4CA8FAFF51B0
          F5FF63ABF1FF4F9C85FF3D9C6EFF6AB9D9FF55B8D1FF4A9A9CFF77B276FF6AB0
          B2FF5EA5E8FF4FA2FDFF569BF8FF479A8AFF5CA75CFF4CA46CFFF7FAFDFFFFFF
          FFFFD4E4FFFF41A2F9FF46A8C6FF3293A0FF449EF8FF4AA3F8FF469EFAFF54AD
          F3FF67B0EEFF4A9D88FF4EA758FF66A579FF58A978FF75B981FF7BB78DFF6AB4
          74FF77ADA2FF539FC0FF5CA09EFF64A86CFF469C5CFF59A366FFF9FBFAFFE9F2
          EAFF93C4ABFF289367FF2D9C3EFF2F9963FF4BA6FDFF5CBFFAFF57BFFBFF69D6
          F5FF71C3EDFF53A28FFF65B574FF7BB68DFF6BB77DFF5CB073FF5CAE71FF70B3
          83FF85B78CFF61AB66FF6BA872FF5EA770FF5FAA6FFF499E5EFFB6D4BBFF3999
          52FF179237FF289A44FF2B9A45FF2D956CFF49A3FCFF5FC3FCFF63CFFDFF6DE0
          F9FF6DBFEDFF5DA596FF57B168FF63A877FF67AB79FF6AB27DFF76B687FF86B7
          93FF6FAF81FF67AE7BFF73AC84FF5DA76EFF58A569FF61AA71FF9CC6A4FF2B93
          47FF239644FF29984AFF2C9C44FF30986DFF4AA4FCFF5EC2FBFF60CBFCFF6AE1
          FCFF69C3F1FF5A9C8FFF54AD65FF65B57DFF7CB78DFF77B088FF74AF84FF81BB
          91FFA1D3AFFF7DB48BFF6EAB7CFF66AE77FF5CA86DFF58A56AFF76B184FF2591
          42FF259845FF2C9C4DFF35A54DFF3AA076FF4AA4FCFF5EC2FBFF61CCFBFF6AE2
          FDFF5FC7F9FF68A69AFF73B580FF5EB175FF57AD6EFF80C291FFA9DAB6FFC2E9
          CDFFC5E0CDFFCBDCCFFF82BC90FF5FAA71FF6CB07BFF5DA86EFF6BAC78FF2894
          46FF2AA04BFF32A453FF35A54EFF339B6FFF49A3FCFF5EC2FCFF60CCFCFF6CE3
          FCFF56C4FEFF4B9893FF73B573FF84BB98FFA4D2B2FFB1DBBDFFB1D8BCFFB3D3
          BCFFB8D3C0FFC4E1CCFFDEF3E4FF94C8A1FF5EAA70FF6EB17DFFA0C9A8FF3398
          4EFF259C46FF2C9C4CFF2F9F47FF349C72FF4BA6FBFF5EC2FBFF61CCFCFF68DD
          FCFF69E3FCFF4AABECFF79BABBFFA9D9A7FFA0CBAFFFA6CDB2FFAFD1B8FFB5D6
          BFFFBFE1C9FFCAEAD3FFCEEAD6FFE9F8EEFFABD3B4FF5FA96FFFACCFB4FF3195
          4CFF229944FF30A251FF38A851FF369F6EFF439CFEFF5FC4FEFF63CEFBFF66DA
          FDFF6EECFCFF73F7FEFF54BBFAFF65AFC8FFA5DDAAFFABDDB6FFAEDDBEFFBAE3
          C5FFC1E7CCFFC9E9D2FFD1ECD9FFD5ECDCFFF0FBF3FFC0DEC7FFBED8C2FF3D9C
          56FF239C45FF2EA04EFF309E50FF3FAC59FF4AAAA1FF46A2F6FF61CDFFFF6ADF
          FBFF6BE6FDFF72F7FCFF8BFFFDFF75CBFEFF5DA8DCFFA4DAB6FFB8E4BCFFB7E1
          C6FFC1E7CBFFC9E9D2FFD1ECD9FFD8EEDFFFD9EEDFFFF3FBF4FF97C4A0FF3A99
          53FF269D48FF37AA57FF46B766FF53BE72FF5CC26AFF56B490FF46A1E8FF5FD0
          FFFF72F0FBFF70F5FCFF83FCFEFFADFFFCFFA1DFFFFF5DA6EAFF99D0C2FFC5EB
          C1FFBDE4CCFFC7E8D0FFD1ECD9FFE4F5EAFFF3FDF6FFEAF6ECFFA1CBABFF489F
          5EFF18953AFF3FB660FF4BBA69FF4DB96BFF58BC77FF65C577FF66BF87FF4BA2
          D6FF5ACAFFFF76FEFCFF84FDFDFF9FFAFEFFC9FFFDFFD0EFFFFF69ABF4FF8BC4
          D1FFCEEFC9FFD7F1DEFFCDE9D5FFAAD5B6FF7DBB8DFF61AB73FFFFFFFFFFFCFC
          FBFF88BC95FF1D8D3BFF35AA56FF58C176FF59BD74FF60C07DFF6DC882FF76C9
          85FF57A7C2FF51BEFCFF85FCFBFFA4FEFBFFBAF9FEFFECFFFDFFE5FAFDFF67B1
          FBFF72B5D8FF6EB580FF59A76CFF72B482FFA9D0B1FFE3EFE6FFFBFCFBFFFEFE
          FEFFFFFFFFFFC9E0CDFF3E9956FF249945FF5ABF76FF67C582FF69C484FF72C7
          8BFF84D28BFF6FB7BBFF5EB6FEFF9EF4FFFFC5FFFDFFC9EDFCFFA0CEFAFF67B1
          FAFF4C9BF6FFA7CDCDFFF0F6F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FEFFFBFCFBFFFFFFFFFFF6F9F6FF78B688FF1F8E3DFF4DB46AFF72CA8BFF79CC
          91FF79CB94FF71C77DFF3F9C73FF459CD3FF76B8FCFF81B6F7FFA4CAFAFFD5E6
          FBFFFFFFFEFFFFFFFFFFFFFFFFFFFBFDFCFFFCFDFCFFFEFEFEFFFEFEFEFFFEFF
          FEFFFFFFFFFFFCFDFCFFFEFEFEFFFFFFFFFFBBD8C1FF399752FF46A960FF51AF
          6BFF4AA461FF65AE7BFFA6CFA7FFDAE9E4FFE9F1FEFFFFFFFCFFFFFFFFFFFFFF
          FFFFFEFEFFFFFCFDFDFFFEFEFEFFFEFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFEFEFFFFFFFFFFFEFEFEFFF6FAF7FFFFFFFFFFE5EDE5FF1E8537FF69AC
          78FFDDEADEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFAFCFFFFF8FBFEFFFCFD
          FEFFFFFFFEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
          FF00}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000854936FFDB95
          6CFFDDB07CFFEDD4A8FFFFE0B9FFFACE9FFFE3BA7BFFD7AC72FFF1A15FFFCCA4
          62FFA6B795FF6ED9D2FF42EBF6FF4BE2FFFF3BDEFFFF37E0FFFF33DDFCFF2CDA
          FBFF25D7FCFF1ED6FDFF17D4FDFF11D1FEFF0ED0FCFF05D1FFFF7D4532FFD394
          67FFF7D69EFFE2D49FFFDEBF8CFFEAB777FFEAB865FFEAB06EFFFABA65FFF2A6
          52FFF99063FFA9B0A1FF37E0D9FF33E6F7FF49DAFFFF38E0FBFF32DDF9FF2BD9
          F9FF25D8FBFF1ED6FDFF18D5FEFF12D4FFFF0FD3FFFF02CFFFFF734E32FFF0C2
          92FFFDCD93FFF2C48AFFE6B87DFFF4BE81FFF0B56FFFE4B560FFF5B060FFE4AB
          77FFDCA256FFF5AA35FFACAF7CFF45CBECFF20E4FFFF33E2F8FF32E0FAFF30DB
          FDFF2DD8FFFF28D7FFFF22D4FFFF19D1FBFF15D0F8FF00D7F8FF896649FFFFD3
          A0FFFDCA8CFFEEBD7EFFF7C88BFFF0BB7BFFF4B875FFFFB776FFE8AA5DFFE4A8
          4DFFEBAD66FFDE8E64FFE28F56FFAAB17DFF4AD9DAFF1EE5F8FF1DE2FAFF1FE2
          FFFF1EDFFFFF19D8FFFF14D6FFFF16DBFFFF16DEFFFF07CBFFFF7D5C42FFFCCD
          9AFFFFCA8BFFFFD08EFFE9B879FFF1BC7CFFEFB572FFF3AE64FFE0AE79FFF2AB
          5AFFFFAF5CFFE19865FFFFA55BFFD89349FF65757BFF026EC7FF0068C6FF046C
          D0FF076DD8FF0065D3FF0060D1FF0064D2FF0062D0FF075FCAFF75563FFFFDD1
          A2FFF8C587FFF4C182FFF1C082FFEFBA7AFFF4BA78FFD1B272FFFAB672FFF5A4
          60FFDCA255FFDBAE46FFE6A946FF9C5D52FF3C1571FF000095FF000092FF0000
          9CFF0103A9FF0000AAFF0000ADFF0101ACFF0000A6FF110EA8FFB09685FFB991
          66FFFFD39DFFFFD197FFECBE84FFF0BD7EFFF5BB78FFE8BA79FFF4AD62FFE0AA
          68FFE0B963FFF0B950FF8A6253FF19147DFF080193FF080097FF03009BFF0508
          A8FF040DB2FF000CB5FF000FB7FF0212BAFF000FB6FF050CC2FF00000000A485
          65FFC8A579FFEDC99BFFE8BF8EFFF6C48AFFF2B673FFF6B465FFEDB16EFFE9B5
          6DFFE2A651FFA87362FF1E1993FF0000ACFF00048DFF000095FF000AB0FF0320
          CAFF0027D5FF0024D5FF0022D3FF0022D3FF0021D2FF0013D9FF000000000000
          0000A58B6CFFB29774FFEBC99EFFEEBD85FFF7BC76FFE3B77BFFFCBA6AFFEBA2
          4BFF916751FF0C0B69FF0000A1FF0000A5FF000093FF0003AFFF122DDCFF2149
          FDFF1B4DFFFF154CFFFF1249FFFF1144FFFF1645FFFF1542FFFF000000000000
          000000000000D4BFA4FFAF926CFFE1B27BFFF8BC75FFF5C087FFDCAC63FFB38E
          4FFF847A8FFF000783FF0000A3FF090093FF0E0193FF0C3DC8FF2C64F2FF3073
          FFFF1D68FFFF1866FFFF1761FEFF1457F5FF1A57F4FF0C4FFFFF000000000000
          0000000000000000000000000000D6CDC0FFAAA194FFA3905CFFA58B5CFFFFE7
          C2FFAC95ABFF120074FF0000A1FF0003A2FF1D40D7FF266FFFFF256EFFFF226B
          FFFF1D67FFFF1963FFFF145EFFFF1159FEFF0F56FEFF1C48FFFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009B95B4FF000576FF00069DFF0B48D5FF2772F5FF2C79F9FF2A75FAFF276F
          FEFF2367FFFF1F5EFFFF1B57FFFF1853FFFF164FFFFF134AFFFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00007981ACFF001287FF0D43D7FF2A7BFFFF2985FFFF267AFCFF2476FEFF2470
          FFFF2268FFFF2062FEFF1F5FFBFF1E5CF7FF1F5BF5FF1A4EFAFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000868DB4FF273AA4FF4A71FDFF467DFFFF407BFFFF2A7DF8FF2B78FEFF2C71
          FFFF2C68FFFF2A5EFFFF2654FFFF224EF6FF1F4AEEFF1D35CCFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000DCD9E2FF9394D1FF6973CBFF4D5CB3FF3D48A5FF223FC0FF203ABDFF1E36
          B9FF2235B7FF2C3EB4FF3A4DB5FF4A5EB6FF546BB8FF9B9FD2FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000E7E4F3FFF7EFF9FFFFEFFFFFE8EBEFFFE8E8EEFFE9E6
          EFFFEAE5EEFFF0E9EEFFF6EFECFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000008000
          0000C0000000E0000000F8000000FFC00000FFC00000FFC00000FFC00000FFF0
          0700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          20000000000000090000000000000000000000000000000000008B3313FF8234
          14FF00009DFF344CFDFF2A51FBFF3247FFFF234BFFFF2148FFFF000098FF0056
          00FF3BC747FF26C13BFF29C242FF25C237FF27C135FF0B5A00FF7C3100FFD674
          2AFFD57E1AFFDC7620FFD5791EFFD1761DFF7C3300FF0070A2FF8B3313FF8333
          12FF00009BFF3851FCFF3156FBFF384CFEFF2A51FFFF2C4EFFFF000097FF0057
          00FF3FCC50FF2AC847FF2EC84CFF29C740FF2EC73FFF0D5900FF7B3200FFD878
          2FFFD6831FFFDD7A26FFD67E22FFD37921FF7E3201FF006FA3FF8C3112FF8331
          10FF000099FF3F55FCFF395CFAFF4051FDFF3256FFFF3455FFFF000093FF0057
          00FF44D15AFF2ECF54FF32CC57FF2FCB4AFF35CA47FF0B5700FF7B3200FFD87B
          32FFD48823FFDA7E29FFD88227FFD77D25FF7D3100FF006FA3FF8C3112FF8230
          0DFF000095FF455AFDFF4162F9FF4756FAFF3A5CFDFF3F5AFFFF010091FF0158
          00FF49D663FF35D55FFF35D262FF36D054FF3CCF50FF0D5600FF7B3200FFD97E
          37FFD68D2AFFDA822DFFD8872BFFDA802AFF7E3001FF006DA4FF8D3213FF8330
          0DFF000095FF4C5FFFFF4967FCFF4F5BFAFF4261FDFF435EFFFF02008FFF0157
          00FF4DDC6AFF3BDC69FF3CD86CFF3CD85EFF44D75AFF0D5600FF7A3202FFDB83
          3BFFD7932FFFDC8631FFDA8A30FFDE842EFF813203FF016DA4FF8F3314FF8431
          0EFF020096FF4E61FFFF4C6BFDFF525EFBFF4665FDFF465FFFFF03008DFF0258
          00FF51DF6FFF3EE170FF40DC72FF41DC64FF4ADC61FF0F5800FF7C3404FFDC87
          3EFFD99632FFDC8933FFDD8D33FFDF8831FF823304FF036DA4FF912F0EFF8935
          0FFF000099FF656DFEFF5A6BFDFF6166FFFF5968FBFF6761FDFF000091FF0059
          00FF5BE578FF41E46DFF48EC72FF4EDD73FF5CDA73FF005100FF733F00FFE08E
          46FFDF8A43FFE38E3DFFD69538FFDA8C3EFF823400FF006DA3FF902E0DFF8935
          0FFF000097FF666EFEFF5C6DFFFF6469FFFF5C6AF9FF7266FFFF08069CFF005B
          04FF63E982FF48EC77FF42F075FF4BEA7EFF54E57BFF0D5A09FF6D3600FFE391
          49FFE9974FFFE18F3DFFD29336FFE19346FF803200FF006DAAFF902E0CFF8936
          0DFF000098FF6A71FFFF616FFEFF686CFFFF626CFAFF6E6CFCFF000490FF0056
          00FF65E982FF52F682FF3AF06FFF40EF78FF4AEE7AFF104F09FF6E3100FFE595
          4DFFE6994FFFE89949FFDE9F46FFEA9B51FF7E3000FF016DAEFF902E0CFF8936
          0CFF010096FF6E74FEFF6673FEFF7070FFFF6972F9FF6675F5FF00048BFF0863
          0DFF6FDE80FF6CF68AFF5AF47AFF5BEF7EFF5EEC7CFF15450BFF7D3900FFF3A5
          5DFFDB9449FFE29747FFDA9D46FFE4964EFF853803FF006DAAFF8F2E0AFF8A36
          09FF040095FF7377FFFF6D78FFFF7776FFFF7075FAFF7683FFFF00008AFF0D43
          08FF1C5118FF044702FF045100FF0B5209FF12510BFF325124FF6A1E00FFE89C
          53FFDD9D4EFFEBA656FFE1A550FFE2944EFF7C3000FF006FA2FF8F2E0AFF8A36
          09FF070095FF767AFFFF727CFFFF7E7AFFFF777BF9FF726FFFFF2404B0FFBBC5
          AEFFECE6D9FFFCF7E2FFFFFFE4FFFAF3DFFFFCEEDCFFDCEBCBFF933F12FFEBA1
          58FFDDA454FFE2A050FFDDA251FFEB9D59FF803400FF006C9FFF8E2D09FF8A37
          08FF080094FF7A7CFFFF7781FFFF847EFFFF7B7EF9FF7579FFFF12009CFFD0D0
          C0FFF6DBDEFFFFEAE9FFFFEDE1FFFDE4E2FFFFEDF2FFF9FDE4FF832A01FFEAA2
          5BFFE3B15EFFE2A455FFDFA656FFED9F5CFF7E3201FF0B78B7FF8E2E07FF8A37
          08FF080094FF7D7EFFFF7A82FFFF8680FFFF7E80F8FF718DFCFF04008DFFD2E1
          C2FFEDE0D8FFFFF4EBFFFBF5E2FFF3EDE6FFFAF3F0FFF7F3E0FF842803FFEEA8
          61FFDCAC59FFE2A757FFE9AF62FFEB9C5CFF793000FF0062ADFF943A15FF6913
          1DFF2F1B7AFF0C0081FF1B0095FF0B00A4FF0800A0FF130082FF301B7EFFD9C7
          F6FFFDEEECFFFFF3D9FFFFF8DEFFFBEBE4FFFBEBF2FFFFF0DDFF6B3611FFF4A6
          63FFE8A652FFEDBB67FFE3AC62FFF0A867FF883400FFD3C5BFFF993A00FF9743
          10FFC4B9BCFFE1DDE8FFF4E9EBFFE5EDEDFFE9F3E7FFE7E7FFFFDBD7F0FFFFFD
          FFFFFBEEE0FFFFF0DDFFFFEFDFFFFCEEE8FFFBEEF0FFFFF4DDFF643007FFFBB1
          6EFFF4B45FFFD9A956FFDFA961FFF0A968FF823100FFD6C8C2FF9A2D03FF9331
          0DFFD8BFC3FFFAE8E9FFFFEADCFFFCEDDDFFFFF2D8FFEFFAD9FFF4F7DDFFF7F0
          DDFFFCEADFFFFFF6F0FFFFECE7FFFEF1E9FFF3EAE0FFFFF3DEFF6F330FFFEDA1
          65FFF4B26AFFE2AB65FFEFB174FFE89E65FF873901FFE2D4CEFF963305FF8D33
          0EFFD2BFC2FFEDDDE4FFFFE7EAFFFFEBF4FFFFF0F4FFF6EFDBFFFFF5E7FFFEEB
          E8FFFFEDF1FFFFEBEFFFF8E5E2FFFFF9E8FFF9F7DFFFFFE2DBFF792D17FF8B32
          0DFF7D2F01FF793109FF782706FF862B0CFF872E0AFFF2E4DEFF923100FF8A36
          03FFD3CABCFFEAE7D9FFFFF5E2FFF0ECE1FFF6EFE0FFFFF0F3FFFFEEF1FFFFEB
          EFFFFFEDF1FFFCE8E7FFFBEBE4FFFDF4E6FFF9F2E1FFF0FFFBFFEAEBDBFFFEFA
          DEFFE9EECFFFF4FAE3FFFCF8E6FFFFF7E5FFF7F6DAFFFCEEE8FF9B3100FF8F31
          04FFD9C7C0FFE8DED7FFFFF3E8FFF1EBE6FFFAF1E8FFFFF1EAFFFCEDE4FFFDEF
          E3FFFBEEE0FFFFF2E6FFFFF6ECFFFBEDE7FFFDEEECFFECE5E8FFFDEEEBFFFDEF
          E3FFF9F2E9FFFCF2F2FFF8E2E7FFFFEDECFFFDF4E7FFFFF1EBFF9F3800FF9338
          00FFE6D5C8FFECE2D8FFFFF2E6FFFAEFEBFFFFF3E9FFF8F1DEFFF9F2E1FFF9F2
          E3FFF5EDE0FFFEF4EAFFFCEFE7FFFAEAE4FFFEEBE6FFFDEEEBFFFFF1E9FFFCEE
          E2FFF8F2EBFFFDF1F7FFFFEDF7FFFFF4F3FFF3EDE0FFFFF1EBFF9A3308FF8B30
          0DFFF0DEE5FFF6EAF0FFFFEFEDFFF7EDEDFFFBF0E8FFF4F0E5FFF7F1EAFFF5ED
          EDFFF6EDF0FFFFF4F6FFFAEEE8FFFFF9EBFFFFF4E1FFFFF1E5FFFFF1E0FFFBF4
          E1FFF3F3E7FFF5EAECFFFFEBF0FFFFEDE8FFF6F7E3FFFFF2ECFFFBEFE9FFFBEF
          E9FFFBEFE9FFFBEFE9FFFBEFE9FFFBEFE9FFFBEFE9FFFBEFE9FFFBEFE9FFFBEF
          E9FFFBEFE9FFFBEFE9FFFBEFE9FFFBEFE9FFFBEFE9FFFBEFE9FFFBEFE9FFFBEF
          E9FFFBEFE9FFFBEFE9FFFBEFE9FFFBEFE9FFFBEFE9FFFAEEE8FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF00}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000EAD8D9FFBD7E
          85FFC17E7DFFE9C3B7FFF8DBCEFFFFE9DAFFFBE2D8FFB76E72FFFEEEE2FFE1A1
          A5FFBC8282FFF5DAD1FFFFDCD4FFF7D0C7FFE5B3AFFFBF7378FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000DFC5C5FFC99192FFC38185FFCE8D8EFFD19995FFBB7073FFFFEDE0FFDB9F
          A2FFB67374FFD59898FFCE898BFFC38185FFC89294FFDCC5C6FF000000000000
          000000000000000000000000000099C8E9FFC5E0F0FF00000000000000000000
          00000000000000000000EFE4E5FFE2C9CBFFD8B4B5FFBB7079FFFEEDE0FFDB9D
          9FFFBF7D82FFDCB9BDFFE3CDCEFF000000000000000000000000000000000000
          0000E5EFF5FF5FAEDAFF1F9BD4FF09A4DDFF0899D5FF2F9BD4FFACD3EBFF0000
          00000000000000000000000000000000000000000000BE7C84FFFCE7DAFFE19F
          A2FFC79597FF00000000000000000000000000000000C0DAECFF00000000CFE6
          F1FF2AA0D5FF2AC6EBFF47E4F8FF38DCF5FF29D2F3FF0AB8E7FF008FD0FF80C0
          E4FF0000000000000000000000000000000000000000B8757AFFFFEEE1FFE09D
          A1FFC89295FF0000000000000000000000008BC5E5FF18A4D8FFF5F8FAFF3AA1
          D6FF41DBF0FF5FF6FFFF48E1F5FF31D2F1FF28CAF0FF20CAEEFF13BFECFF008E
          CFFFBFDEEFFF00000000000000000000000000000000B37278FFFEEFE3FFE19D
          A1FFC79295FF0000000000000000B8D8EDFF19A2D8FF5BF4FCFFACD1E9FF2FBD
          E6FF65FBFFFF4DE6F6FF47E4F7FF34D7F0FF28CDF3FF1AC2EEFF0DBDECFF00A6
          E3FF41A3D6FF00000000000000000000000000000000BF7A81FFFFEFE2FFE19D
          A1FFC69394FF00000000000000004EAFDCFF4CE7F3FF5BF1FBFF7ABEE1FF46DD
          EFFF72FFFEFF61F2F8FF56EAF7FF4DE3F3FF4DE2F4FF48E1F5FF38DCF4FF11C2
          EEFF0C91D3FFE6F1F8FF000000000000000000000000BD7880FFFFEFE2FFE09C
          A0FFC69294FF000000000000000032AEDBFF6AFCFDFF66F9FBFF62B1E0FF50E2
          F4FF3BD5F1FF11B0E5FF07A7DFFF059BD8FF0797D7FF0C98D5FF20A2D8FF4CD4
          EFFF18ADDDFFA6CCE1FF000000000000000000000000BE797EFFFFEFE3FFDE9B
          A0FFC89293FF00000000C7E0EEFF29AEDCFF5FF2FAFF2BC6ECFF9ECDE5FF1EAD
          DEFF14C4F1FF06AEE3FF00A6E0FF009BD9FF0095D7FF0193D4FF0693D3FF21B3
          E6FF279CC8FFCFDBE4FF000000000000000000000000BF7A80FFFFEFE4FFDE9C
          A0FFC69294FF00000000E6F1F5FF38A3D8FF1DCAF2FF02B3E7FFFEFFFBFF9896
          ABFF5696B6FF57CCECFF45C6EBFF33C2E7FF40C2E6FF4AC4E6FF5BC8ECFF5B80
          A4FFBCA9B3FF00000000000000000000000000000000BE797EFFFFF0E4FFDE9B
          9FFFC89295FF0000000000000000D1D2DBFF5780A3FF51BFE1FF00000000F5E2
          DDFFC77375FFE9DCDFFFE9F3F9FFD1EAF3FFDFEDF8FFF1F7FEFFE3CDCDFFC67C
          7AFF0000000000000000000000000000000000000000BF7980FFFFF0E3FFDD9A
          9EFFC99294FF000000000000000000000000D39291FFCA9BA2FF000000000000
          0000CD9EA0FFCE989AFFFFFFFFFFFFFFFDFFFFFFFFFFF9F6F4FFBB8283FFDBBA
          BCFF0000000000000000000000000000000000000000BE7A7EFFFFF0E4FFDD99
          9DFFC69195FF00000000000000000000000000000000BE7678FF000000000000
          0000F3EBECFFB97479FFE8D5D6FFFCFAFAFFF9FDFCFFD3B6B7FFC28085FF0000
          00000000000000000000000000000000000000000000BF7980FFFFF0E5FFDC98
          9CFFC69295FF00000000000000000000000000000000D1A0A4FF000000000000
          000000000000D7B0B0FFC6888EFFF5F8F7FFEDE7E8FFC27C83FFE0C7C7FF0000
          00000000000000000000000000000000000000000000BE7A7EFFFFEFE3FFDB98
          9CFFC59194FF0000000000000000000000000000000000000000000000000000
          000000000000F7F4F2FFBF777DFFFAFFFFFFD5B0B0FFC28688FF000000000000
          00000000000000000000000000000000000000000000BE787DFFFDEFE1FFD697
          9BFFC69295FF0000000000000000000000000000000000000000000000000000
          000000000000F1F0F0FFDFC5C1FFA16F7EFFCA8387FFE6CBCDFFE3C8CCFFE3CA
          CCFFE3CACCFFE3CACCFFE3CACBFFE1CBCBFFDCC5C5FFB67476FFE2C1BBFFC888
          8BFFC08584FFE2CCCDFFE5CACBFFE3CACBFFE2CACAFFE3C8CBFF000000000000
          000000000000E5D7D4FFB6707BFF26B0DAFF6788AAFFD68889FFCF898EFFCF89
          8DFFCF898DFFCF898DFFCF898EFFD0898EFFCF8A8FFFD58D91FFCC888BFFD08C
          90FFD68E92FFCE898EFFCF888EFFD0898FFFD08A8CFFD3898FFF000000000000
          000000000000FDE3E0FF84738AFF78FFFFFF34B4E1FFF3E9E4FFFFF5E7FFFFF5
          E3FFFFF4E6FFFFF5E6FFFFF4E5FFFFF5E5FFFFF5E5FFFFF3E1FFFFF4E6FFFFF3
          E5FFFFF2E3FFFFF5E6FFFFF4E5FFFFF5E5FFFFF5E5FFFFF2E6FF000000000000
          000000000000F2E4DFFFB77177FF269ECDFF7687A1FFD7A098FFCFA198FFD0A0
          9AFFCDA09BFFCEA09BFFCDA19BFFCEA19AFFD0A199FFD3A59BFFCE9F96FFCDA2
          99FFD3A59CFFCBA29AFFCCA299FFD2A19AFFCFA198FFCFA19AFF000000000000
          000000000000F7F8F8FFF2DBD8FFDAD2D7FFF1D3D3FFE9CFD2FFE5CFD1FFE8CF
          D3FFE8CFD2FFE8D0D2FFE8CFD2FFE6CFD3FFE3C9CBFFBC737AFFE8C7BFFFD894
          98FFB56971FFDEBDC0FFE6D1D2FFE8CED0FFE7CFD3FFE6CFD2FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C07E84FFFFFEEDFFE5AB
          ADFFBA6F75FFF4EAEBFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C98C91FFC88E8CFFBD75
          79FFC08386FFF4EAEBFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000F5EFEDFFE6D2D3FFEDDB
          DCFFF7F2F0FFFCFDFEFF00000000000000000000000000000000}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00FF000000FFC00000F9F00700C07E1E00803E1C00001E1800001E1800000E
          1800000E1000000E1000001E1800803E1C00C03E1E00C07E1E00E07E1F00E0FE
          1F00E0000000E0000000E0000000E0000000E0000000FFFE0F00FFFE0F00FFFE
          0F00}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FAFBFBFFFCFC
          FCFFF2F6F7FF4397C1FF2889BBFF2F8CBCFF2F92C3FF1B3C51FF0B0C11FF1940
          55FF2877A1FF2C82B0FF2D85B2FF2B87B3FF2E91C1FF1C4058FF0C0F18FF193E
          51FF2A80AAFF2E8DBDFF2D8DBDFF3B8EB8FF255672FF1F638AFFFBFBFBFFF9FA
          FAFFFEFDFCFF80BAD7FF2289BDFF359ACCFF2D84AFFF16283DFF122536FF266E
          92FF3299CBFF3093C3FF3092C3FF2F8DBCFF3198CAFF29719AFF15233AFF152F
          41FF216180FF3094C6FF3093C3FF3890BBFF265773FF246A91FFFBFBFBFFF8FA
          FBFFFDFCFCFF9ACAE1FF2590C5FF338EBAFF245A7EFF1D385BFF1F4D69FF308E
          BCFF3398C9FF399CCBFF3494C4FF3191C2FF3499CBFF3393C3FF234B74FF2242
          67FF1C3C55FF2D7198FF349DCEFF358EBAFF23516EFF2A7298FFFBFBFBFFF8F9
          FAFFFDFDFCFF92CDE7FF2276A7FF26435EFF254A76FF274D7CFF2E7CA5FF379F
          D1FF3EA3D1FF49ABD8FF3595C4FF379BCBFF389DCEFF3AA2D3FF2C699AFF284E
          7EFF1C3555FF245270FF3CA7D9FF3388B3FF214D6AFF24668CFFFBFBFBFFF8FA
          FAFFFDFCFBFF8CCFEFFF2473A2FF253F5DFF1E406BFF275C85FF40A9D6FF41A8
          D8FF5ABBE8FF4CACD9FF399CCBFF41A9DBFF40A7D7FF43AEDFFF3484B2FF122B
          53FF172B49FF2E5F7DFF45B3E8FF3787B1FF1A4561FF20658CFFFBFBFBFFF9FB
          FBFFFDFCFAFF8CD3F4FF4498C6FF374F6CFF1D355CFF4891C2FF5BBFF7FF5CB6
          EAFF6FC7F4FF5AB0DFFF57AEDAFF5EB7E1FF5BB5E3FF5CBCEAFF59B3DBFF396A
          89FF386584FF4E99BDFF5EC6F2FF3E8DB4FF163851FF23333EFFFAFBFBFFFAFA
          FBFFFCFCFAFF8BC7E4FF55ACCBFF4D919CFF428A89FF46978AFF3D9170FF4495
          62FF357654FF265F45FF30838AFF288FA9FF2D7767FF2E5361FF344F7BFF375B
          8AFF335C8EFF315A8EFF305A8FFF2D516DFF1F1C19FF22130CFFFBFBFBFFF9FA
          F9FFFFFDFFFF71A86EFF1C7513FF2E8815FF2C8A0DFF308E0AFF359707FF459C
          27FF144F0CFF0B4200FF146147FF088298FF096D6EFF090A34FF090250FF0902
          4EFF08024CFF09034CFF080454FF1B0D25FF2B1A10FF2D1E1AFFFAFAF9FFFCFC
          FCFFEDF4EAFF4DA828FF3EA615FF47AE1FFF4BB222FF4DB424FF57C02DFF4390
          34FF13500CFF175811FF154E07FF196A43FF135C7CFF0F0C6AFF10136FFF1112
          69FF101265FF101261FF0D0F63FF21193BFF352115FF35221CFFF9FAF8FFFCFC
          FDFFE5F3E2FF89DA74FF89DC72FF8ADC76FF8ADC73FF87D76FFF8FDF79FF569C
          50FF105506FF1B5F0EFF195D10FF185C03FF1A2E5DFF100C88FF0F1177FF0F0F
          75FF0F0F70FF0F0F6AFF0C0E6CFF201748FF402819FF422720FFFBFBFBFFFBFB
          FBFFFDFCFEFFE9F8E2FFAAEB91FFA7F081FFA0E987FFA0E887FFA0E885FFA0E9
          89FF64AB5CFF1B6510FF1C660CFF1E6016FF181C7EFF100D92FF0A0B85FF0D0D
          82FF0E0E7CFF0F0F77FF0C0D77FF221955FF4A2D1CFF5E3B2DFFFBFBFBFFFBFB
          FBFFFBFBFAFFF7F9FCFF41ACC0FF6BC586FFAAEF7EFFA5F081FFA6F083FFA6F2
          82FFACFB88FF82C96BFF368818FF184C26FF2A23A7FF312FB8FF2120AAFF1B1B
          A2FF17169AFF161491FF0F1095FF1C1675FF5A3826FF784532FFFBFBFBFFF8FA
          FBFFFDFCFCFFB2E3EEFF01A0D2FF0C90BBFF57B28BFF79C57CFF73BE77FF77B8
          77FF7CAD84FF7DCB97FF67B281FF344294FF4038E4FF4639E2FF4935DDFF412D
          D7FF3A29CFFF2F27CDFF2823B9FF402B56FF804F38FF7B4936FFFBFBFBFFF9FB
          FBFFFCFCFBFF53C9E6FF0AAEDAFF0EAFDAFF068AADFF08748FFF036988FF1755
          90FF2215BEFF5675C2FFADBACCFF7A74D0FF7A75C7FF5B7AD0FF3580DCFF3984
          DDFF2D64D0FF3239B1FF8C6066FFA7704DFF87503CFF94857DFFF7FAFAFFFCFC
          FCFFDBF1F6FF12BAE4FF0BB8E3FF0DB0D9FF1898A8FF1B96A8FF0EA2C7FF1D90
          C6FF493DD6FF7869E4FF8C82DAFF847CD2FF8981D6FF4E88E5FF308BEEFF2C86
          E4FF2C809AFF559592FF8FB7B3FFBC8C79FF99796BFF9B928EFFF3F9FAFFFFFD
          FCFF80DBEFFF03B7E4FF05B9E8FF43BAD8FFC5BDBAFF56A8BDFF04ABDAFF0DA4
          D1FF4390DCFF395AB5FF2A44A4FF2B42A3FF283A9CFF2F3798FF2F2B91FF595A
          A1FFB18B82FFA46A53FFAC9082FFC4BEB9FFB6B4B2FF7A4935FFFBFBFBFFEDF8
          F8FF31CAE9FF1AC1E8FF18C1E9FFA2D1DAFFE1D1CDFF38B6D4FF1DBBE3FF20BB
          E0FF1FA9C5FF0C586BFF0A586AFF0A5767FF0A515EFF0A4E59FF013944FF98B4
          B2FFFFFFFFFFE5DAD4FFCF9B86FFBF8368FFAA7863FF9F7665FFFBFBFBFFEAF8
          F9FF6DE0F5FF56DBF8FF55DCF9FF94D7E8FFE0D0CBFF82C2D2FF2ECCF3FF2BCA
          F2FF2EBDE3FF186C8BFF0B5B7CFF0D6183FF0D6284FF0C6083FF196481FFE4E9
          ECFFFBFBFBFFFDFFFFFFFCFEFFFFE7D3C9FFC49785FFE8E1DDFFF8FBFBFFFEFC
          FBFFDCF5F9FF50D9FAFF3BD6FBFF3ED4F9FF5CCCE1FF50C5D5FF1CC1E8FF1CC7
          F5FF13C9F9FF27B4D8FF106887FF0A6889FF0E6B8CFF096285FF5599AFFFFFFF
          FFFFF9FAFAFFFAFAF9FFFCFBFCFFFFFFFFFFFDFFFFFFFDFEFEFFFCFBFBFFF9FB
          FBFFFFFDFBFFDBF5F8FF4ED9F8FF43D8FAFF39D7FAFF0FCFECFF08C9E3FF16C7
          EEFF1EC9F5FF1ACBF8FF22A5C5FF0B6C8CFF0E7497FF086A8FFFA5CBD6FFFDFC
          FCFFF8F9F9FFFBFBFBFFFBFBFBFFFAFAF9FFFAFAFAFFFBFBFBFFFBFCFCFFFBFB
          FBFFF8FBFBFFFFFCFBFFD6F3F9FF4CD8F8FF47D7FAFF43D7F7FF75D8E6FF90CF
          D9FF2DC8EDFF1ECAF7FF22CBF5FF1E98B9FF0B7296FF1B85A5FFE9F2F3FFFDFC
          FCFFFAFBFBFFFBFBFBFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
          FCFFFBFBFBFFF8FAFBFFFFFDFBFFD4F3F8FF4DD9F8FF35D5FBFF5ED8F6FFE0DE
          DEFFA6CCD5FF28C9F0FF1CCBF8FF21C7F1FF0387ADFF59A9C1FFFFFEFDFFF9FA
          FBFFFCFBFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFFBFB
          FBFFFBFBFBFFFBFBFBFFF8FAFBFFFFFDFBFFCFF2F9FF83E2F7FF75E2F8FF95E2
          F2FFB0DCE1FF67D2E5FF55D8F7FF4ED7F9FF39C1E1FFB8DBE3FFFCFCFCFFF8FA
          FAFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFDFFFBFDFEFFFFFFFDFFFFFFFCFFFFFFFBFFFEFF
          FDFFE4FCFFFFFCFEFCFFFFFDFCFFF8FBFAFFF0FEFDFFFFFFFFFFFDFDFDFFFEFE
          FEFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          20000000000000090000000000000000000000000000000000000000000045B4
          E4FF31BBF9FF46C0FFFF4EC4FFFF3FC9F7FF3EC8F9FF3CC9FEFF34C3F8FF2BC2
          FFFF2DC4FFFF27BAFFFF28BBFFFF46B5C7FFEFFFE8FFB6964CFFCB6F03FFCE60
          00FFD16202FFCB6D0AFFC56500FFC96400FFC96104FFCD6008FF000000004EBF
          EDFF2FBCF7FF40B1F7FF3EA8EBFF2AA9D9FF34AFE5FF42B5EAFF49ADDFFF48AD
          E4FF44AEF1FF37A5FAFF30A7F8FF37A1BCFFDFFFF2FFA29762FFEDB563FFFFB7
          6EFFFAB36EFFEEB96FFFDFBB6CFFDBBB6EFFE0BA71FFE5B971FF0000000032B8
          DDFF2AC7FCFF5BD8FFFF74E8FFFF68EEFFFF66E4FFFF6BDDFFFF7BDDFFFF7CDB
          FFFF7BDEFFFF71D7FFFF6BD8FFFF72D0EFFFEDFFF9FFA0895AFFBB7225FFC065
          1EFFB95913FFB26114FFA56A18FFA26A19FFA2681DFFA66720FF000000003EC8
          E8FF28CAF7FF47C2FEFF50BFF9FF41C0E9FF4EC0F2FF58C3F8FF57BCF2FF58BD
          F4FF5ABFFFFF52B8FFFF4CB9FFFF53B0C9FFDAEEE1FFB19467FFFFD68EFFFFE4
          A1FFFFE49EFFFFE294FFFFE08EFFFFDF91FFFFDD95FFFFDE96FF000000003DBE
          DBFF2EC4F0FF58C4FEFF6BC6FFFF61C9F0FF6BC6F5FF6AC8F5FF5FCEF0FF5CD2
          EFFF60D4F9FF5CCBFFFF57CBFEFF60BFCCFFEEFFEFFFA88B5DFFB45B15FFBE4B
          0CFFCB4F0DFFD05A0FFFD0580DFFCE5710FFCB5615FFC95714FF0000000037BC
          E4FF0CB8ECFF1EAAEFFF26A7F0FF1DAFE6FF16B0DDFF10AFD3FF18B9D7FF23B3
          E6FF23AFEEFF18ACF6FF1CB6FBFF36B0C4FFE3FFFAFFAF8B64FFFFD089FFFFCB
          82FFFFC07AFFFFB57AFFFFC887FFFFC988FFFFC68FFFFFC88DFF000000003DC1
          ECFF1BCAFFFF37C8FFFF3CC3FFFF2BBFFDFF29C8F8FF2CD0F7FF25C8EBFF36C2
          FFFF36BFFFFF28BCFFFF2BC8FFFF41C0D8FFCFF4ECFFB5926FFFBC540BFFA75B
          0CFFAB5D14FFB3470EFFA95210FFA05311FFA1501BFFA15118FF0000000043C3
          E9FF28CBFFFF4ECFFFFF68D8FFFF72E5FFFF6DE4FFFF65E3FFFF66EDFFFF6FE5
          FFFF6ADEFFFF57D6FFFF50DBFFFF56CBE2FFDFFFF8FFA2855FFFFFE89CFFFFE0
          8EFFFFDF8FFFFFDA9BFFFFDC99FFFFDC9AFFFFD7A3FFFFDAA1FF000000004FC7
          E7FF25BCEBFF31A7EAFF3A9FEDFF48ABF3FF4AAFF0FF45B1EAFF2CA5D3FF3CA8
          ECFF41A8FAFF39A9FFFF38B3FFFF44ABC1FFD7F5EAFFB09169FFBA6A1BFF9468
          11FF95701CFF9A601BFFAC601BFFAE5F1DFFB05B27FFB05C24FF0000000065C6
          DDFF41C3E4FF47B5EBFF42ADEDFF36AEF3FF37B6F7FF3BBEF9FF31BAEAFF3DB2
          F3FF40ACF6FF41A7F5FF4BB1F5FF5EADBAFFEBF6E6FFA57A50FFFFE494FFFFE0
          88FFFFE28DFFFFE397FFFFDB96FFFFD998FFFFD6A2FFFFD79FFF0000000073C7
          D6FF48BFD8FF3EB0DBFF36AFE3FF24BFFAFF1AC1FCFF16C2F6FF27CCF7FF30BC
          F5FF36B2F4FF3EACF0FF53B8F2FF76B8C0FFF5F5E3FFCB966AFFC15609FFA75D
          09FF9F600CFF954D03FFA95811FFAB5615FFAB511EFFAE531CFF00000000BBFE
          FFFF94FBFFFF82EFFFFF67E1FFFF30D5FFFF27DBFFFF2AE3FFFF28DBFFFF3AD3
          FFFF4CD2FFFF65D6FFFF8DECFFFFC5FAFDFFFFFDE6FFC48558FFFFD489FFFFD8
          87FFFFD584FFFFD189FFFFD690FFFFD695FFFFD19EFFFFD29BFF000000000000
          0000C5FFFFFFB0F5FFFF66BBD5FF3FB3D8FF44C1E9FF24AED5FF1CB6DBFF31C3
          F0FF45C3F0FF51AEDDFF9BE2FFFFE5FFFBFFFFFFE7FFCF8C5AFFFF843EFFE176
          29FFD27327FFCE6E28FFD27C36FFD07B3AFFD07643FFD37841FF000000000000
          000000000000D6FDFFFFACD9EEFF98D1F1FFA1DBFFFF85D0F7FF69DCFFFF3CB6
          E0FF76DDFFFF91D7FFFFB8EAFFFFF1FFF8FFFFFFE3FFC48552FFFFCF8AFFFFDA
          90FFFFD58BFFFFD58EFFFFD48DFFFFD291FFFFCE9AFFFFCF97FF000000000000
          0000000000000000000000000000000000000000000000000000AFFDFFFF51B4
          DCFFA4F8FFFFC7FAFFFF000000000000000000000000CA905BFFCB5916FFA647
          00FFB26219FFAA621EFFA45611FFA55413FFA7501CFFA8521AFF000000000000
          0000000000000000000000000000000000000000000000000000BDEFFFFF73C4
          E9FFBAFAFFFFD4F6FFFF000000000000000000000000B9854FFFFFD390FFFFDC
          97FFFFD590FFFFD490FFFFDE98FFFFDD9BFFFFD8A4FFFFD9A1FF000000000000
          0000000000000000000000000000000000000000000000000000CFFCFFFF72B6
          D5FFC5FDFFFFE4FCFFFF000000000000000000000000C08F56FFD26224FFB44F
          0FFFB25919FFAA5D22FFA35915FFA55816FFA5541FFFA6561DFF000000000000
          000000000000000000000000000000000000000000000000000000000000ADDD
          F5FFD6FEFFFF00000000000000000000000000000000C29055FFFFCA87FFFFCF
          8BFFFFCE8CFFFFC98BFFFFCF8BFFFFCE8BFFFFCC92FFFFCD8FFF000000000000
          000000000000000000000000000000000000000000000000000000000000F3FB
          FFFF0000000000000000000000000000000000000000BA8446FFCA7124FFC669
          1CFFC6691CFFC0651EFFB0611CFFAA5B16FFB35E16FFC2691CFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C89359FFFFB466FFFFA3
          53FFFFAF5FFFFF9F53FFFFB06CFFFFB16CFFFFB167FFFFAD5DFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000A27752FFA75920FFB657
          16FFBE530CFFD56116FFBD5A14FFB95B16FFB8580FFFB8580FFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000DDC2A8FFF5BA8CFFEC9F
          65FFFEA65FFFFFC071FFFFB45AFFFFB55AFFFCAE53FFFCAD55FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000D08E
          5CFFD78445FFE07E34FFD87E23FFDA8625FFD98525FFD8872BFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000A462
          3CFFAC5821FFC35D18FFD3620EFFD4620CFFCD5C08FFCE6211FF}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00800000008000000080000000800000008000000080000000800000008000
          000080000000800000008000000080000000C0000000E0000000FF0E0000FF0E
          0000FF0E0000FF9E0000FFBE0000FFFE0000FFFE0000FFFE0000FFFF8000FFFF
          8000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000F7E0C6FFCC64
          03FFF3DDB4FFFADA9FFFEED799FFE2C88CFFE5BD82FFCE6609FFFFFFEDFFF5FF
          F3FFFFFFF4FFFBFCFFFFFCF9F1FFFFF3CCFFB77937FFE8A43AFFE6B765FFE0BA
          79FFDFB169FFE7C071FFE0C679FFE3BE73FFBD7A2CFF0A789BFFF7DFC7FFCC64
          03FFF2DDB7FFFBDBA0FFF0D89CFFE3CB91FFE6C086FFBF6209FFFFFFF0FFEEF6
          EFFFFDFFFCFFF8F6F6FFFFF7D3FFAA732CFFEBAA54FFE3C167FFE4C17EFFDDB8
          80FFF3D289FFE6C16CFFF5C576FFD5994CFFAD6717FF007CA5FFF7E1C8FFCB65
          03FFF3DEB8FFFCDBA3FFF0DB9EFFE6CE94FFEAC48AFFBD5C02FFFFFEFBFFF3FB
          FFFFFFF9F9FFFFF2DAFFC07936FFE6A452FFE7B66FFFDEC087FFF0C485FFF4CC
          8BFFDCC07EFFF6C379FFFA9F4DFFB45E18FFFFE8B4FF3B2635FFF7E0CAFFCD66
          06FFF3E0BBFFFDDFA6FFF2DCA2FFE7D098FFEBC68EFFC76906FFF9FBFBFFEDFD
          FFFFFFEED4FFBF7E48FFE0A058FFE4BD78FFE1C98FFFF3C895FFF4C686FFF0C5
          7BFFFCCE87FFDC9D52FFAD5F1AFFFFE4B7FFFFF7E8FF0280A6FFF6DFC9FFCE67
          07FFF5E2BDFFFEE0A7FFF4DEA4FFE8D199FFEDC890FFCF6B00FFFFFFF1FFF8F3
          E4FFCD8138FFF99D4DFFFFCB89FFDDC78DFFF0D28BFFF8CB88FFEFCD91FFFDD0
          8CFFE69F47FFA46511FFFFF4C0FFFFFEEFFFF8E6EDFF0180A2FFFFE5CBFFCC66
          00FFF1EABFFFF5DEACFFF7DDAFFFEED0A1FFE9C890FFAF620FFFFFF9C1FFCC81
          34FFEFAB5DFFDAC58EFFDBCD98FFEBCC95FFFFD191FFF0C699FFF4D98FFFE4AF
          54FFAF6118FFFFE7BDFFFFFEF1FFFCF0F0FFFFF6F4FF344034FFFFE5CBFFCB65
          00FFF1EABFFFF6E1AEFFF8DFB3FFF0D4A5FFEDCC94FFB46512FFDB8122FFD6B0
          75FFDAC189FFFFD396FFEACD90FFF8DD93FFE8C49EFFFADA93FFE99A56FFA15E
          1DFFFFFAC7FFFFF6DEFFFFF7F5FFFFF5F3FFF0EEE4FF0283A6FFFFE3CBFFCA64
          00FFF1EBC2FFF7E3B3FFFAE3B6FFF1D7A8FFEDD097FFC9650FFFEEB957FFE8CA
          89FFF3D7B4FFF3D79AFFF7DD90FFF6D7A0FFFFD6A1FFEEB05BFFA86021FFFFF8
          D2FFFEFBECFFFFFFFEFFF7F1F2FFFDFDF7FFFFFBF0FF0093A1FFFFE3CBFFCA64
          00FFF1EDC4FFF9E8B7FFFBE6B9FFEFD8AAFFEAD199FFE59B48FFF4CE8DFFF3D9
          97FFFADFADFFF8D59DFFE9DF9FFFE1D9A4FFFDA550FFAD5D1AFFFFF9CAFFF8F7
          E9FFFFF6FEFFFCF7F9FFF0FBF3FFFBFAF0FFFFF7F1FF3E314BFFFEE2CAFFCA65
          00FFF4F0C7FFFAEBBAFFF8E7BCFFECDAABFFE7D39AFFE2B777FFFADBA8FFEAE1
          BBFFF8DC9BFFF6D99CFFF2DFACFFDFAF5CFFAE691EFFFFF0CFFFFFFFF0FFFFFE
          FFFFFFFDFFFFEEEFE6FFFFFFF4FFFFF3EDFFF5F7F7FF0085B6FFFEE1CCFFCB66
          00FFF5F3CBFFFCEEBEFFF9E9BEFFEDDDAFFFE9D8A0FFDDB77CFFE8DEB6FFEFE0
          B9FFF5DEACFFFFEEB4FFF0AC5EFFB46316FFF7F3D0FFF4FFFEFFFFFCFFFFF2F1
          FAFFF0FDFBFFFFFFF5FFFFF9EBFFFCF1E9FFFEFDFFFF1990A9FFFEE1CCFFCC66
          03FFF4F4CCFFFBEFBFFFFAECC2FFF0E3B5FFF2E3ABFFDFC383FFF8E0B6FFF2DE
          A4FFFFF1C0FFDF9F64FFB16112FFFFFCDBFFFDFFFFFFF5F9FFFFFFFCFFFFFBFE
          FFFFFFFFFEFFFFF7F4FFFCF9F1FFFAFFFBFFFFF8F4FF364248FFFFE2CDFFCC66
          03FFF4F4CCFFFCF0C0FFFAEEC4FFF4EABBFFF8EBB3FFE5BE87FFFEEFA6FFFFEE
          B6FFF6A865FFB66016FFFFFAD9FFF3FBFBFFFDF9FFFFFFFAFFFFFAFBFFFFFFFD
          FFFFFFFCFFFFEEF9FDFFF4FFFFFFF7F4F0FFFAFFF0FF0592B7FFF9DDD6FFCE6B
          00FFF6F6C6FFF9F5C5FFE9E7C8FFFBEDD6FFFFEDB6FFF2C784FFFFECC0FFF7B5
          63FFC06511FFFDEEE5FFEDFCFFFFFFF4EDFFEDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFEFEFFFEFEFEFFFDFDFDFFFCFCFCFFFCFCFCFF0093B5FFFFDAC6FFD064
          02FFF5F4DFFFFFF9D1FFFFFAC0FFFFF2CBFFE9E9C5FFF3C185FFDCAF71FFA563
          1EFFFFFFC9FFFDFAF6FFFFFCFFFFFAFFF8FFFFFAFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFFDFDFDFFFDFDFDFFFCFCFCFF324266FFFFE6CEFFD866
          08FFFFF2E6FFFFF0CFFFFEFEC2FFEFE9BAFFFFF6CCFFE6A75CFFA9602AFFFFF8
          CEFFFFFFECFFFFFFFCFFEBF9F5FFFFFFFCFFFFFCFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFF0298ACFFFCE1D3FFD062
          06FFFFE6CCFFFFFDD8FFE7FBD1FFFFF7CFFFFBB670FFC05F00FFFFF6D2FFFFFF
          FEFFFFFFF7FFF2FFF7FFF6FEFFFFFFFEFFFFFFFDF9FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF0097AFFFFCDFD8FFC15A
          01FFFFFFE0FFFBFDCFFFFEFACAFFEBB98FFFBE631CFFD97D0AFFFCFFF6FFF6FA
          FFFFFFFFF7FFF3F9FFFFFAFCFFFFFFFFF8FFF7FFFDFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF54466AFFFFDFD1FFCA65
          0CFFE9FFE9FFFFFFC8FFFEC579FFA75726FFFBC29BFFC2861BFFFFFEF8FFEBFA
          FFFFFFF9F6FFFFF7FFFFF4F9FCFFFFFFEAFFECFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0099B4FFFFE5D2FFC160
          00FFFFFFDFFFEEC285FFA65E14FFFFC39BFFFEE9D4FFC27E22FFFFFFF4FFFDFB
          FFFFFFFFF8FFFBFAFEFFFFFBFFFFF8FFF7FFFCF6F7FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008EC5FFF0E2CFFFCB6D
          00FFEBB279FFBC6323FFF9C898FFF9E8D5FFE8DEC0FFCE7A25FFFFFDF4FFE6FC
          FFFFFFFFF1FFFDFFE9FFE8FEFFFFFEF7FFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0097C2FFFFDDBDFFB180
          4FFF996330FFF5C89DFFFFE5CBFFF7DDCCFFFBE4D5FFCB8411FFCB8411FFCB84
          11FFCB8411FFCB8411FFCB8411FFCB8411FFCB8411FFC87A1AFFC87A1AFFC87A
          1AFFC87A1AFFC87A1AFFC87A1AFFC87A1AFFC87A1AFF0095C2FFFFF0D9FFFFE3
          C1FFFFDCB9FFFFEED1FFFDE3D3FFF7E2DAFFEFDDD6FFF9DFD3FFF9DFD3FFF9DF
          D3FFF9DFD3FFF9DFD3FFF9DFD3FFF9DFD3FFF9DFD3FFFAE2CEFFFAE2CEFFFAE2
          CEFFFAE2CEFFFAE2CEFFFAE2CEFFFAE2CEFFFAE2CEFFFDE0D9FFF5DDD1FFFCE1
          CDFFFFE7D6FFF6E0D4FFE9D7D0FFF3E4E1FFE8D9D6FFF5DFD9FFF5DFD9FFF5DF
          D9FFF5DFD9FFF5DFD9FFF5DFD9FFF5DFD9FFF5DFD9FFF6E2D7FFF6E2D7FFF6E2
          D7FFF6E2D7FFF6E2D7FFF6E2D7FFF6E2D7FFF6E2D7FFFCE2D1FF}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000020100040000
          000065360DBC8E4E17FF8B4D17FB965519FE8B4D13FF8D5C2EFFDBD7D4FFD8DB
          DEFFD0C2B3FFA46324FF965D25FF1F1914FF070809FF0C0C0CFF0D0D0DFF0B0B
          0BFF171717FF1B1B1BFF141415FF1A1A1AFF121212FF0B0B0BFF030200070000
          0000582F0BA08E4F17FE8B4F17FB97581BFE935011FF95683DFFCDCECFFFDEDC
          DAFFE5E8ECFFAA7E54FFAD6A28FF2C261FFF050607FF0B0A0AFF050505FF0303
          03FF080808FF080808FF0A0A0AFF060606FF040404FF000000FF040200080000
          00004324087A8F5116FE8E5218FA9A5A1DFF97510FFFAE7D50FFE1E4E7FFDCD9
          D6FFCFD2D4FFD0C1B2FFC37426FF645240FF24272BFF292827FF242424FF2121
          21FF1E1E1EFF111111FF171717FF111111FF141414FF141414FF020100050000
          00001D0F033B925418FF94561BFB9C5C1EFE9F5812FEB58554FFE6E9EBFFD2D4
          D9FFD3D3D5FFDFE1E2FFB68350FF865C32FF4C5157FF555351FF4E4D4DFF4D4D
          4CFF444444FE343433FE3B3B3AFE434343FC3E3E3EFD3B3B3BFC000000000000
          0001010100036C3B0EC99C5B1CFF9E5D1FF7A95E15FEBF8952FEC7D4E8FEAECC
          FBFF9BB8E4FF9FB3D0FFC2B2A2FFAE7439FF6D7176FF858483FF838384FE8687
          88FF7C7D7EFF6A6D71FE717476FF838383FF7E8080FF7E8080FF000000000000
          000100000000180E0627804915DAAA6625FFB16419FCD08C46FE8AA5CFFF6E9D
          E3FE92BBF9FF91BBFAFF90B1E0FFA28363FFA79583FFB4B5B6FEB9B6B2FFBDB8
          B3FEB2AEAAFBB8A99AFF9D8E7FFB686666C68C8B87EF6F6D6ACB000000000000
          0000000000000605040D0D0702185E2E02A1B9640FFFC98645FE658BC3FE5080
          C9FF6494E0FF88B4F8FF7CAAEBFF859EC3FEB1793FFEB17131FFB07D4AFCCB9D
          6CFFA09181FF846E5AF8463425E91A191AAF464442BF0C0C0B26000000000000
          00000000000000000000000000000000000024170E4D7288B2FB67A4F8FD72A2
          EBFE6B9AE3FF6295E3FF78A6EEFE6DA1ECFF8E8F99FEB96919FCAB692AFF9D69
          38F23C25116E0A07041E0D09041C0808081B0101010200000000000000000000
          0000000000000000000000000000050808081A2B445567A2F4FD6EA2EFFC6EA3
          F2FE75A9F5FF7AA9EFFF689AE5FF6A9FEEFE6AA4F7FEA18062FF6E3C0CC8140C
          0433000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000001165D83BBDD7AACF5FF77A9F1FC79AB
          F4FF75A8F4FF75A9F5FF80AEF2FE6B9CE7FE5A93E7F91C26385C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000212F456A77A3E2FF7FAAE9FC84B3F7FF82B0
          F6FE82B1F6FF7DAEF5FF79AAF2FB80AEF3FF4A70ACC800000000030407110000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000102030300000000506E9BAC82ABE6FE85ADE7FB88B1ECFE8FBA
          FAFF8BB8F9FF89B5F8FF81AFF3FB82B1F7FE527AB1C904050608000E10250000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000020202047196CDD990B9F5FE8DB1E8FD91B6EDFE91B5
          EAFF95BEF9FF91BCFAFF8DB8F9FF86B3F6FC78ACF1FF0C4069A5000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000002050A1384AAE2EE9EC5FFFF9CC2FAFE97B7E7FF97B9
          E9FF9DC3F9FF9CC4FFFF95BEFBFF8FB9F9FE8EB7F9FB6AA4E2FF041A2B540000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000A0F171C91B6EEF5A4C9FEFFA5C8FDFEA7C8F9FFA7C8
          F9FFA2C2F2FF9EC0F2FF9EC2FAFE88B6F4FF8BB5F6FB95BCF9FD145883BF0000
          0000000101020000000000000000000000000000000000000000000000000000
          00000000000000000000080C1219A0BEEAF2BAD5FEFFB8D3FCFEB7D3FFFFB3D1
          FEFFA5C2EEFF9CBBE9FFA5C2F3FF6DA6DFFE3887C1FD65A0D9FE045F91EB0104
          060D000000000000000000000000000000000000000000000000000000000000
          000000000000000000000002070F9FB8DFE9C1DAFEFFC5DAFCFDC8DDFEFFC0D6
          F8FFAFC8EEFFAFD0FFFFA9C9FBFF76A7D9FF006CA1FE00679FFF03679BFB000C
          1424000000000000000100000000000000000000000000000000000000000000
          000000000000000000000001010290A9CED9C9DEFFFFC1D6F8FCD5E3FFFFD1E2
          FFFFC4DBFFFFB0D0FCFFAEC7F5FF619BCCFF0C76AAFF0E79B0FF0B72A6FE010F
          172B000000000000010200000000000000000000000000000000000000000000
          00000000000001010202000000007D8AA9B19EC5EEFF1F85BDFB5AA6D6FFC1D7
          F6FFD0DFFEFFC7DAFFFF91B9EBFF2286BDFF147FB5FE127EB6FF187AADF8000B
          111E000000000000000100000000000000000000000000000000000000000000
          000000000000000102030000000020577CA81785BEFF0784C1FB0A8CCCFF2899
          D6FF57ADE2FF53ABE3FF239ADAFF1592CFFE1A87BDFD1F86B8FD2178A3E90003
          060C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000036496D91689C2FC43A4D3FA35A5DEFE1EA1
          E2FE1DA4E5FE22A6E7FE25A6E6FE21A0E0FE2597CFF83195C7FF164B69A20003
          060C010405080000000000000000000000000000000000000000000000000000
          0000000000000001010200000000225977A458ADD8FF63BAE5FF68C2EEFF65C2
          F0FF66C4F3FF67C5F4FF60C2F2FF4EB9EEFF43B2E9FF2A83B3E4051017310103
          0510000000030000000000000000000000000000000000000000000000000000
          00000000000000000000000000000002030513384E702C7DA4CA49A5D3EE6DC0
          EAF984CCF2FB87CFF4FB6EC0EAF74BA4D2E91F6186AE051219270000000D0000
          0002000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000004121B3B183E
          54772F5B7392325B7190183C5070010E162F0000000000000000000000020000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00C0000000C0000000C0000000E0000000E0000000F0000000180001000600
          1F00040043000400800080018000F8018000F8008000F8004000F8006000F800
          6000F8007800F8007800F8007C00F8007F00F8007F00F800FF00FC01FF00FF87
          FF00}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000C49787FFF7DA
          CCFFFEEBDFFFFCE9DBFFFFEDDCFFFFECDEFFFFECE0FFFFECE1FFFEEBE2FFFAE7
          E0FFFBE6DCFFFBE6D9FFFAE5D9FFFAE6DAFFFCE8DBFFF9E8D8FFFAE9DAFFFAE7
          DBFFFAE6DCFFFBE9E1FFFEF2E9FFA19080FF529CD2FF59C0FEFFC39A88FFF5D8
          C9FFFEEADDFFF9E3D5FFE9CEBDFFE8CBB5FFEBCCB5FFE8CBB5FFEACCB9FFFCE2
          D0FFFCE8D9FFFFECDFFFFFEBDEFFFFECDEFFFFECDFFFFFEDDBFFFFEDDBFFFFED
          DCFFFFE9DCFFFDE4D9FFFEEBE0FF9F8F82FF54A1DCFF57C2FFFFC19D8BFFF4D8
          C9FFFFEFE3FFE7D0C2FFB49180FFC1967BFFC39878FFC0977AFFBB9278FFECCE
          B6FFFEEDD7FFCCB29EFFCBAD99FFD1AF9CFFD2AE9CFFD0AF9AFFCFB19CFFC8AA
          97FFD9C0AEFFFEEBDCFFFEE8DBFF9D8C83FF4093D5FF4ABAFCFFC2A08DFFF5DC
          CDFFFEECE0FFF9E5D7FFEBD3C3FFECD2C1FFEBD2C2FFEBD2C4FFEBD0C4FFFCE6
          DBFFFBE9D0FFB99B80FFD1AB91FFD3A78EFFD6A78EFFD6A68FFFD3A891FFC6A2
          8CFFC0A994FFFEECDAFFFFE7DAFFA09089FF4DA2E1FF3AADF3FFC7A58FFFF5DE
          D3FFFDEBE4FFFEEBD8FFFAEBDAFFF8E7DBFFFCEADEFFFAE6D9FFFAE6DAFFF8E4
          D8FFF1DFC9FFBB9E85FFCDA991FFCFA890FFD2A791FFD4A890FFD4AA8FFFCAA3
          89FFC8AE9CFFFDEFE2FFFEEBDAFFA18073FF6C7A8AFF70C0F1FFC8A68EFFF5DD
          D3FFFFF2EDFFD8C4B1FFCAB4A4FFD6C2B5FFC2A99AFFD4BEAFFFD5BFB0FFD6C1
          B2FFD3BCABFFBA9F8DFFCDB5A4FFCFB5A3FFD0B4A3FFD1B5A3FFD1B7A3FFCAB0
          9BFFC6AEA2FFFFF0E8FFFEEFD9FFB38269FF684532FF647370FFCCA68FFFF3D8
          CFFFFEECE7FFD5BCAAFFFAE2D2FFFFF0E3FFD8C1B0FFFFEDDDFFFFEFDFFFFFF1
          E1FFFCE4D6FFDCC4B6FFFFF4E7FFFFF0E3FFFFF0E3FFFFF1E5FFFFF3E4FFFFED
          DDFFD2BAAFFFFCE4E0FFFBE5DCFFA5826DFF6D5635FF735F3EFFCCA38EFFEDCF
          C6FFF7DFDAFFD2B4A2FFD2B6A7FFDEC4B4FFC1A592FFDCC2AFFFDFC4B2FFE0C5
          B4FFD8BBACFFC3A596FFDFC5B6FFDCC2B2FFDBC2B3FFD7C1B7FFDEC3B5FFDBBD
          ADFFC7AA9DFFF5DFD5FFE4DCD4FFA37E70FF795139FF7B6445FFCBA28BFFE7C9
          BFFFEFD7D2FFCEAF9EFFCBAEA0FFD5BBACFFBA9F8CFFD3B8A5FFD4B9A6FFD6BB
          A8FFD2B2A1FFC19F8EFFD9BCABFFD3B8A6FFD2B9A7FFD3B7ACFFD7B8AAFFD5B5
          A1FFC6A996FFEBD5C4FFF3D4C2FFA78069FF6C563AFF706346FFC49F83FFD7BF
          B2FFDDCAC7FFC5A89AFFE0C4B3FFE8CEBFFFC6AA9CFFE6CABCFFE7CBBDFFE9CD
          BEFFE5C5B7FFC8A99BFFECCFC0FFE5CBBCFFE6CBBDFFE6CBC0FFE5CCBDFFEDCA
          B6FFCDA995FFDAC9B8FFE4C8BAFFA37C6BFF6D563CFF706246FFCCAD99FFEEDF
          D8FFF6F3F2FFCEBAA8FFBC9B85FFC6A793FFB39380FFC3A490FFC6A693FFC7A7
          94FFC3A18EFFB49381FFC8A995FFC3A692FFC3A693FFC4A594FFC1A893FFC19F
          8BFFC4A89BFFF6F3EEFFF6EEE5FFA88674FF735436FF7C6441FFD5B8AAFFF9EF
          EDFFFFFFFFFFD4C5B2FFE4C2AAFFEFCFB9FFCCAD96FFEACBB4FFECCEB7FFEFCF
          B9FFE8C7B0FFCEAD97FFF0D1BAFFE9CEB6FFE9CEB6FFEDCDB7FFE8D0B7FFE6C7
          B7FFD1BCB5FFFDFFFFFFFFFEFAFFAA8C79FF745434FF816746FFDAB8A6FFF7ED
          E8FFFEFEFEFFCABFB0FFC7A998FFD5B8A6FFB69B88FFD0B5A2FFD1B6A3FFD4B8
          A4FFCFB19EFFB99B88FFD5BAA7FFCFB6A3FFCFB7A4FFD3B7A3FFCEB9A3FFCBB0
          9EFFC2ADA5FFFAFDFDFFFEFBF9FFAC8B7BFF715439FF685942FFDEBCA4FFFAF0
          E9FFFEFEFFFFE6E1D8FFD1C4BBFFD7CAC2FFD5CAC0FFD5C9BFFFD7CBC1FFD7CB
          C1FFD7C9BEFFD6C8BDFFD8CBC1FFD5CABEFFD5CBBDFFD7CBBFFFD5CCBFFFD4C7
          BBFFE4D8D0FFFBFDFCFFFFFCFCFFB38C79FF5E4931FF898E89FFD5C1AAFFF9F1
          EDFFFEFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFBFAFAFFFEFDF8FFB29187FF8EA7ADFFAAD0F3FFD8C0AEFFF7F2
          EEFFFAFDFEFFF6F1E8FFE4D2CAFFE6DCD4FFFCF9EFFFDED8CDFFEDE8DEFFF7F2
          E8FFDDCFC4FFE9DCD5FFF9F1EFFFD8D1CDFFEFEFE8FFFDFCFBFFFCFAFAFFFCFA
          FAFFFCFAFBFFFEFDFAFFFFFBEDFFAFA1AFFF70AAD8FF8BB0D4FFD8BFB0FFF7F3
          EFFFF8FFFFFFF9F7ECFFEEE3DFFFF0E8EAFFFDFAFCFFECE4E6FFF5EFF1FFFAF5
          F7FFEAE2DFFFF2EBE6FFFDF9F5FFE9E7E3FFF4F6F4FFFEFFFEFFFEFEFDFFFDFE
          FDFFFEFDFEFFFDFEFDFFFCFCF5FFB89E9BFFB3CAD0FFFAFFFFFFD4BFAFFFF9F4
          F0FFFEFEFEFFFFFFFAFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFEFFFFFF
          FDFFFCFFFFFFFFFFFFFFFDFFFDFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFEFFFEFF
          FEFFFEFEFEFFFDFFFFFFF7F9F7FFDCB7A7FFFFFFF2FFFFFEFEFFD0BFB1FFF8F4
          EEFFFFFDFDFFEDF5FDFF8FD1F5FF66C5F5FF68C7F7FF67C6F6FF68C7F6FF68C7
          F7FF74C7F1FFAFE0F7FFF9FBFEFFFEFDFBFFFAFEFCFFFEFEFEFFFFFEFEFFFEFE
          FDFFFEFDFDFFFEFEFEFFFCFAF3FFCEB5AEFFECF6F6FFFBFDFEFFD6BCB3FFF8F3
          EBFFFFFFFDFFB4DFF4FF0096EAFF0096FBFF0095FAFF0095FBFF0095FAFF0096
          FBFF0095F4FF35AEE8FFEFF8FFFFFEFEFBFFF7FEFBFFFEFDFDFFFDFFFEFFFEFD
          FDFFFDFEFDFFFEFFFEFFFEFCF6FFC9BBAEFFF9F7F5FFFAFEFFFFDBBDAFFFF9F2
          EFFFFEFBFEFFE8F3FBFF91D0EFFF6DC9F4FF70CCF8FF70CBF8FF70CCF8FF70CB
          F8FF79C7F1FFB2E2F6FFF9FBFEFFFDFDFCFFFCFCFEFFFCFCFEFFFCFDFEFFFCFC
          FDFFFCFCFDFFFCFDFEFFFDFAF6FFCBBCAEFFF9F8F4FFFBFFFFFFC8C2ADFFF6F8
          F3FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFEFFFFFFFCFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFAFFCCBEB1FFF9F7F4FFFBFFFFFFD9B9AAFFECCF
          CCFFE7D4D0FFDFDAC9FFE0D5D1FFE5D3D1FFE5D4CEFFE5D4CEFFE5D3CEFFE3D4
          CEFFE1D6CFFFE9D4CFFFDFD6CFFFEBD3CFFFE9D4CFFFE0D5CDFFE1D5CDFFE0D5
          CDFFE0D5CCFFDFD5CEFFDDD2CCFFC7B9ADFFFBFAF7FFFAFEFFFFD6CCBCFFD7C1
          B9FFD4C1B3FFCAC3ADFFD1BBBCFFCEBEB9FFCAC2B2FFCBC1B4FFCBC1B4FFC9C2
          B3FFCFBFB4FFDEBBB8FFC9BEB9FFD4BDB5FFCAC1B0FFC8BFB0FFCEBDB1FFCBBC
          B0FFCBBAAEFFC9BAB0FFC1B5AEFFD8CABEFFFFFEFCFFF8FDFFFF}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          00000000000000010203000203040001020300000000007EBFD80098E7FF008E
          E0FC19A4E6FF71D8F7FE36ABEAFF0083DAFC0089DFFF0087DCFF004C7F9B0004
          0608000000000001020300000000000000000000000000000000000000000000
          00000000000100000000000000000000000000314B5B009CE9FF0096E5FC0798
          E3FE63D7F5FF73E4FCFF7CE3FBFE52BDEFFF058ADEFE0085DAFB0089DEFF0068
          A9CC0016232B0000000000010203000000000000000000000000000000000000
          00010000000000334B570038515B00577F8E009CE5F8009FEBFD0095E4FE4EC7
          F0FF77E8FFFF6FE2FFFF6ADCF9FF78E3FAFE69CFF4FE1897E3FF0081D8FA0089
          DFFF007BCAEF002C485B00000000000000000001010100000000000304050000
          000000394F5A00A9F0FF00A8F1FF00A6F0FF00A6F0FF009AE8FE38BFF1FF7FF2
          FEFE63CCE6FF357588FF72E4FDFF6FE4FFFF71E0F8FF78DCF8FE31A6E8FF0082
          D9FB008ADFFF0087DBFF0047759000020405000000000002030400000001001D
          282D00A4E7F200ACF2FC00A7EEFA00A7EEFB00A1EEFE20B1EFFE66C6DCFE5EC1
          D1FF306B7BFF52ABBDFF64CCDFFF55B1C7FF79F4FFFF6EE1FBFF7CE2FAFE4CB9
          EEFF0289DEFE0086DBFC0189DEFF0064A3C300131E2500000000000000000081
          B1BB0FB8F8FF00ABF0F900AFF5FF00AAF3FE0FA9EBFF69DBFAFF6AD5E8FF2456
          65FF306B7BFF75EAFCFF2A606FFF4491A5FF44919FFF6AD7F1FF6EE3FDFF7BE4
          FBFE65CCF4FF1494E2FF0082D8FA008ADFFF0079C6EB00284253000000000B51
          6C7625BEF7FF09B6F9FF00AEF3FC00ABF4FF21B0EAFE78E2F9FF74E8FFFF6EE0
          F9FF4A9BAFFF428EA2FF4FA4BAFF367688FF4EA3B9FF428DA0FF71E3F8FF6DE0
          FDFF74E3FBFF76D9F8FE2BA3E7FF0082D9FB0089DEFF0086DBFF000202030000
          0000123F51592CB4E6F014BAF9FF00AEF3FB00ABF3FF21B3EDFF6AD8F5FE76E5
          FDFF70E4FFFF62C9E1FF70E1F9FF3A7E92FF56B3C8FF4492A5FF3C8395FF6DDC
          F0FF70E4FFFF70E3FDFF7CE1FAFE47B6EDFF0087DCFD0085DAFB000000000000
          000100000000051B23282393BDC921BEF9FF01AFF3FA00AAF4FD0EABEDFF56CD
          F2FE76E3FBFF70E4FFFF6FE1FBFF6DDDF4FF4FA5BAFF1F4C58FF245563FF3F87
          98FF57B4C9FF6DDDF9FF6BDEF9FF7AE3FAFE61C9F3FF1191E1FE000000000000
          00000002030300000000000405061C6A889427BFF8FF09B5F7FE00ADF4FC00A7
          EFFF3EC0EEFE74E1FAFF6FDEF9FF74EAFFFF4B9EB3FF4DA1B6FF4A9DB2FF397B
          8DFF306B7BFF4695A9FF77EEFFFF6EE4FFFF7CE7FDFE61CCF4FE000000000000
          000000000000000102020000000000000000144558602BB7EAF413B9F9FF00AD
          F3FA00A8F2FF26B4ECFE6CDBF7FE74E3FCFF6FE2FEFF72E5FFFF6DDCF4FF397B
          8DFF347284FF4EA4B9FF4798ACFF59B8D1FF76E8FFFF22A8E5FD000000000000
          0000000000000000000000000000000202030000000006222C31259AC7D31EBD
          F9FF02B1F4FB00ABF4FE12ACEDFF5AD0F3FE76E4FBFF6CDDF8FF71E4FDFF67D1
          EAFF4DA1B3FF37798BFF327183FE68CAD9FF3BBBECFD008EE2FF000000000000
          000000000000000000000000000000000000000203040000000002080B0D1C74
          96A224BEF8FF08B4F7FD00ADF4FC03A8EFFF42C2EFFE75E3FCFF6EDEF9FF73E8
          FFFF63CAE2FF1B4755FF6FD9EEFF58D7FEFE0093E1FD0096E3FA000000000000
          0000000000000000000000000000000000000000000000010202000000000000
          0000174D626B2CB8EDF611B9F9FF00ACF3FA00A8F1FF2AB6EDFE6DDCF7FE74E5
          FCFF64D0EBFF6FDCF6FE66D9F6FE089BE1FB009CEBFE0073ABC3000000000000
          0000000000000000000000000000000000000000000000000000000000000001
          0102000000000725323927A1CFDA1CBCF9FF00AFF4FA00A9F3FE15AEEDFF5FD2
          F3FE79E9FFFF74E3FCFF1CAAE8FD009FEEFF0082BDD4007CB9D1000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000002020300000000030C11131F7DA0AD25BFF8FF06B4F7FE00ACF5FD04A8
          EEFF4AC6F0FF32B7EAFD00A3EFFF0096D7E80078AEC500A1EDFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000020203000000000000000018536A732DBDF4FD10B8F9FF00AD
          F4FB00A7F0FE00A7F0FE00A5EAF70074A8BB00A0E7F700A2ECFC000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000000082B383E28A4D2DE1BBC
          F9FF00AEF2F800AEF5FD007CAEC10098D8E700AAF2FF00A7F1FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000002020300000000040E14161D80
          A7B31CBBF8FF058BC0CC008CC5D300AFF6FF00AAF0FC00A8F0FD000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000010202000000000000
          00002754636C2D99C1CE0BB7F9FF00ABF2FA00AFF5FF00A8EFFA000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010001
          0102000000000B3141492CABDCE61ABBFAFF04ADF0F802B1F7FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000203040000000000141B1E1787AEBB1EBCF8FF0395CEDA000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000010102000000000000000000384D530012191D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000020203000000000000000000000000}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00FE007F00FC003F00E0000F00C0000700C00003008000000080000000C000
          0000F0000000F8000000FC000000FF000000FF800000FFC00000FFF00000FFF8
          0000FFFC0000FFFF0000FFFF8000FFFFC000FFFFF000FFFFF800FFFFFD00FFFF
          FF00}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000020000
          000103030314373737EA878687FE707070FC747474FFD8D8DAFEEEEEF0FFFDFD
          FEFFF5F5F6FFF9F9FAFFEAEAECFF606060FF747474FFDCDCDCFFF1F1F1FFFAFA
          FAFFFEFEFEFFE0E0E0FF2B2B2BFF181818FF171717FF1D1D1DFF020202070000
          00001414148F737273FF858485FA59595AFFE8E8EAFEF6F6F8FFC7C7C8FFCFCF
          D0FFF4F4F6FFF9F9FBFFDEDEE0FF5A5A5AFF828282FFE2E2E2FFF3F3F3FFFBFB
          FBFFFFFFFFFFE0E0E0FF2D2D2DFF131313FF151515FF2E2E2EFF000000000404
          04184C4C4CF0949394FD595959FDB6B6B8FEFEFEFFFFF3F3F5FFEEEEF0FFB6B6
          B7FFF1F1F3FFF8F8FAFFE0E0E2FF5F5F5FFF808080FFDFDFDFFFF2F2F2FFFCFC
          FCFFFFFFFFFFE8E8E8FF606060FF464646FF404040FF414141FF000000000B0B
          0B6D777677FF848484FB717172FFF8F8FAFFF0F0F2FFF2F2F4FFF3F3F5FFF9F9
          FBFFF2F2F4FFF4F4F6FFEAEAECFF6E6E6EFF707070FFD9D9D9FFF6F6F6FFFBFB
          FBFFFEFEFEFFEAEAEAFF6D6D6DFF595959FF454545FF585858FF000000003939
          39B7949394FE696969FBA2A2A4FEF5F5F6FFEEEEF0FFF1F1F3FFF1F1F3FFF1F1
          F3FFF1F1F4FFEFEFF1FFFBFBFDFF929292FF5C5C5CFFC2C2C2FFF7F7F7FFF7F7
          F7FFFEFEFEFFECECECFF797979FF616161FF8E8E8EFFEAEAEAFF0404040E5E5E
          5EDF9F9F9FFF656565FDC8C8CBFFCFCFD1FFDFDFE1FFF2F2F5FFEFEFF2FFF0F0
          F2FFEFEFF2FFF1F1F3FFE3E3E5FFBBBBBDFF646466FF8C8C8CFFEAEAEAFFF4F4
          F4FFFEFEFEFFEAEAEAFF909090FFC9C9C9FFFFFFFFFFFFFFFFFF000000367A79
          7AEF9E9E9EFF6C6C6CFEE8E8EBFFF4F4F7FFEEEEF0FFEFEFF2FFF0F0F2FFF0F0
          F2FFEEEEF1FFF6F6F8FFC3C3C6FF858585FF7E7E77FF6B6B68FFADADAEFFF2F2
          F2FFF6F6F6FFF0F0F0FFEEEEEEFFFFFFFFFFFBFBFBFFFBFBFBFF070707538988
          89F49F9E9FFF747475FFECECEFFFECECEFFFEDEDF0FFEEEEF1FFEAEAECFFE8E7
          EBFFEBEBEEFFEAE9EDFFFFFFFFFF808089FF1A1A74FF747484FF767673FFAFAF
          AFFFE7E7E7FFF4F4F4FFF7F7F7FFF3F3F3FFF5F5F5FFF3F3F3FF0808084F8E8D
          8EF3A6A6A6FF767677FEEAEAEDFFEEEEF1FFEEEEF1FFE6E6E9FFE6E5E8FFEEEE
          F0FFE3E2E6FFE6E6EAFFF7F7FAFFA3A3ABFF00007BFF36366EFF7A7A71FF7373
          75FF939393FFC1C1C1FFDADADAFFE3E3E3FFE4E4E4FFDDDDDDFF000000308888
          88EDB3B3B3FF727273FDE2E2E5FFE7E7EAFFE4E4E7FFE8E8EBFFE2E2E8FFB5B5
          D0FFE7E7E8FFE3E2E8FFF9F9F3FFA4A4D6FF6868B3FFCACAC2FF7A7A7DFF8282
          82FF787878FF727272FF868686FF939393FF959595FF8D8D8DFF040404077473
          74D9C1C0C0FF767676FCBDBDC0FFC9C9CCFFDDDDE0FFE8E8EAFFD8D8E3FFD4D3
          E4FFE1E1E2FFE4E4E9FFEFEFEDFF6464BBFFDBDBECFFFBFBFCFFE0E0E3FFA1A1
          A3FFB6B6B8FFA5A5A6FF888888FF808080FF808080FF848484FF000000005050
          50ACC3C2C3FE898989FBA0A0A3FEF8F8FCFFE8E8ECFFE7E7EAFFDFDFE4FFE5E5
          E8FFDFDFE3FFF5F5F1FFB1B1D5FF9090CDFFF6F6F1FFE2E2E8FFECECF0FFE5E5
          E9FFBFBFC1FFE2E2E6FFEBEBEEFFE0E0E3FFDADADDFFE2E2E5FF000000001414
          145CB4B3B4FFB9B8B9FC767677FFE6E6EAFEE6E6E9FFE7E7EBFFECECF0FFE6E6
          EAFFE7E8ECFFEDEDECFF8A8AC8FFD8D8E7FFEBEBECFFE8E8ECFFE6E6EAFFE9E9
          EDFFE7E7EBFFCFCFD2FFAFAFB1FFD4D4D8FFEEEEF2FFE4E4E8FF000000010606
          060D868586E4D8D7D8FD828282FDA6A6A9FEF1F1F6FFEBEBEFFFC1C1C4FFABAB
          AEFFF3F3F3FFC4C4DAFFA9A9D4FFF2F2EEFFE4E4EAFFE7E7EBFFE7E7EBFFE5E5
          E9FFEBEBEFFFB3B3B6FFB6B6B9FFB9B9BCFFE0E0E3FFBEBEC2FF030303070000
          000025252574C4C4C4FFCFCECFFA6A6A6AFFCFCFD3FEDDDDE1FFB7B7BAFFDADA
          E0FFEAEAEBFFAFAFD4FFDADAE6FFE7E7EAFFE5E5E9FFE5E5EAFFE5E5EAFFE4E4
          E8FFE7E7ECFFD7D7DBFFBFBFC2FFBCBCBFFFB5B5B8FF78787AFF000000010000
          000103030308747474D6E6E5E6FFB8B8B8FB6A6A6BFFB9B9BCFEEBEBEFFFEBEB
          EDFFD7D7E3FFC7C7DFFFECECEDFFE3E3E8FFE5E5E9FFE5E5E9FFE6E6EAFFE8E8
          EDFFE4E4E9FFDEDEE2FFCCCCD0FFAEAEB1FF6A6A6DFF6D6D6DFF000000000000
          0001000000000E0E0E309E9E9EF7F6F5F6FEB6B6B6FC6A6B6BFFA9A9ADFED7D7
          DBFFD0D0DDFFDCDCE3FFCCCCD0FFE1E1E5FFE2E2E7FFE1E1E6FFD8D8DCFFC1C1
          C5FFC8C8CCFFB5B5B8FF9D9DA0FF6C6C6EFE6C6D6DFFE2E2E2FC000000000000
          000000000002000000001D1E1D4BABAAABF8FEFDFFFFC5C4C5FA6E6E6EFF7878
          7AFEA2A2A5FEB3B3B7FFA2A2A6FFC4C4C9FFC0C0C4FFBCBCC0FFB3B3B7FF8B8B
          8EFF939397FF767679FE5D5D5FFF818181FEE3E2E3FBEFEEEFFF000000000000
          0000000000000101010300000000191919439B9B9BEAF8F7F8FFE3E2E3FB9A9A
          9AFC6F6F6FFE686869FE707072FE7A7A7DFF7B7B80FF77777AFF6F6F72FF6161
          62FE5E5F5FFE747474FEB2B2B2FBF5F3F5FFE4E3E4FF757575DE000000000000
          0000000000000000000001010103000000000C0C0C22656565B5DDDCDDFFFDFC
          FDFFE2E1E2FFB5B5B5FB949494FB818181FB7A7A7BFC7B7B7BFC868686FB9D9D
          9DFBC1C1C1FCEEEDEEFFFAF8FAFFC3C2C3FA3F3F3F8C0808080F000000000000
          0000000000000000000000000000010101030000000000000000212121506B6B
          6BBBC7C6C7F8E7E6E7FFEDECEDFFEAE9EAFFE8E7E8FFE8E7E8FFEDECEDFFEFEE
          EFFFE5E4E5FFB1B0B1EC5151519E121212300000000002020204000000000000
          0000000000000000000000000000000000000000000100000001000000000000
          0000111111273C3C3C6463636398898989B7989798C6939393C2777777B05656
          568C1E1E1E540303031700000000000000000303030600000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000002000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000040404040606060807070708050505060303030304040404070707070808
          0808000000070000000200000000000000000000000000000001}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00E0000000C0000000C0000000800000008000000080000000800000000000
          00008000000080000000800000008000000080000000C0000000C0000000E000
          0000F0000000F8000000FC000000FE000100FF000700FFE01F00FFFFFF00FFFF
          FF00}
      end
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000FFF6EEFFE5EB
          E0FF2A6A2EFF287922FF4C9E48FF64AC69FF85AE89FF9CCD99FFB9CCB3FFCEDE
          CCFFE6F0E4FFFBFFFCFFFBFFFEFFF7FAF8FFFBFFF9FFFBFFF9FFFBF6FFFFFFFE
          FEFFFFFBF6FFFFFBFFFFE5CCCAFFB0855DFFAB844CFF6F582AFFFEE8F4FFF0FE
          E2FF1A6614FF43954BFF62A76BFF71AC70FFA6BC9FFFABBEADFFD0D4CFFFEEFF
          EDFFC4F2C4FF6AAC6DFF589D5BFFA5DFA9FFE6FFEBFFE8FFEFFFFFF0FFFFFFFD
          FFFFF4FBEEFFF4FFFEFFD7D0BFFFAE8655FFE8AF77FFB67E57FFFEE9F1FFF1FA
          E5FF155A11FF4F9753FF71A676FF86AD87FFBBCAB5FFDBF3D5FFD7FFDAFF5D92
          61FF2F6C34FF6CB071FF63AF6AFF1C6925FF33813CFF89D693FFE4FFDDFFF1FF
          F2FFE7FBEFFFFAFFFCFFE3D1C6FFBC8C73FFEEB987FFBE914CFFFDF1E7FFEFF4
          E5FF296328FF66A45FFF87B384FFCCF2D6FFD5F4D7FF6AAD5DFF1A641CFF629C
          64FFB5D4B7FFEAFBEEFFF4FFF8FFE5FFEAFF88C88DFF126419FF3C8F35FF77C2
          80FFC7F3D4FFF3F0EBFFEBC5C5FFCB9D8CFFE1BB8BFFC4A45CFFFFF1F2FFEFF9
          DBFF235F18FFB3E6B4FFD7FEDEFF679D6AFF276523FF399B39FFA6C3A9FFC1D6
          C0FFE7EFE4FFFFFEFDFFFFF8FBFFFFFBFCFFFDFFFEFFF0FBF3FF88CE91FF0A6B
          15FF277C2CFF5C7B4EFF7A7150FFCAB588FFFFE5C0FFD78F88FFFFDDF2FFF1F7
          DEFF479245FF016F00FF027305FF47874EFF83A184FFA2D298FFB0D6BAFFC9E5
          CEFFE8F7E9FFFBFFF9FFFFFEFFFFFFFDFFFFFFFDFFFFFFFEFFFFFBFBFFFFDFFF
          F6FF95D9B0FF29612CFF5E592CFFDCA384FFE2B398FF7D7558FFFFF3F6FF69AC
          6AFF0F7019FF327B37FF54985AFF78BA82FF94C898FFA5D5A1FFD0D9C4FFE0E4
          D8FFF6F4F3FFFFFCFFFFFFFAFFFFFFFAFFFFFFFCFEFFFFFFFCFFFFFBFFFFFFF8
          FAFFFBFFFBFFD8D4C2FF8C664AFF82572DFF565F27FF39813DFFE5F1E5FF1570
          1BFF228B2BFF629E6BFF7BA782FF8CBA8BFFA1C599FFB4D6B1FFDDE6DCFFF0FC
          F0FFF4FFF8FFEBFDF0FFEAFBEEFFF8FFF9FFFBFFFBFFF8FAF4FFFCFFFBFFFDFC
          FFFFFFFAFFFFF7D8D9FFB27158FFEAA573FF9A7D40FF516B2BFFE9F6E6FF1153
          0BFF4A9F46FF5DA464FF76AB7AFFA9BC9BFFCDCFBBFFE0F9DDFFF3FFF5FFD1FF
          E1FF91F5B4FF55DD87FF56D982FF97EDADFFE3FEDCFFFFFFF5FFFFFFF8FFFDFC
          FFFFFFFCFFFFEFDFD2FFA4784DFFF4B37BFFC99266FFD0B398FFEDF9E5FF1753
          0CFF5EA956FF6DA870FF98C69CFFDBF6D5FFEBFFE8FFD2FFE1FF87EEB1FF6AE4
          93FF4FE372FF44E964FF3EE35EFF3FD360FF57CF79FF72D795FFC2F5C3FFD8FA
          DCFFF6FFF7FFDDDBC3FFB69C6DFFF6C595FFBE8B70FFD1AEABFFECFCE5FF0C5C
          09FF68B866FFD2EDD3FFEBFFF3FFC6FFD6FF96F2B1FF6EE096FF5EEC7CFF52E8
          71FF46E967FF3FEC65FF38E861FF2EDC5BFF2CD55DFF2FD463FF41C464FF75CB
          87FFA3C49FFF958C70FFB78F72FFFFCCAFFFC89D8AFFBCA79FFFEFF0E0FF3376
          33FF5BA45DFFC6E6C3FFD7FFDCFF96E7B0FF6CE194FF59EC86FF48F175FF50F1
          76FF52E970FF51DE68FF53D767FF54D66AFF4ECE67FF44C55FFF519140FF5974
          32FF887C4AFFD3B48DFFFFE1BFFFFDD8BEFFAD9C87FFABB4A0FFFFF3EEFFCFE5
          C8FF86B682FF2C6B21FF327E30FF85CD99FFA4FFC5FF6AFF8DFF5FE785FF49DD
          74FF3EDF6EFF46E572FF4BD065FF499F49FF557736FF696B37FFC2926FFFF3B8
          8AFFFFCB8FFFEDCB89FFA89158FF806743FF8A7661FFC5C0B1FFFCF8F3FFF1EB
          E4FFFAFAEAFFFCFFE9FFB8CDA7FF577B4CFF3D7036FF5D9A5CFFAEECB8FFA2EC
          ACFF6EB970FF57833FFF726930FFAD7947FFE6A66EFFECAF6CFFFEA682FFD392
          6AFF897242FF4D702DFF3D9538FF35B43CFF25BA30FF1FBB29FFFDEFF1FFFFF2
          F3FFFDEEEBFFF5EDE0FFF9FAE6FFF2FFE4FFC4E0BCFF90B38BFF246B29FF4C60
          36FF82513FFFC46F55FFE4945EFFD69B55FFB99253FF957345FF576136FF4A7E
          38FF43B045FF36C847FF1FBC38FF20B635FF2AB838FF24AC2DFFFFEFF7FFFFEF
          F4FFFFEEF2FFFFEFF1FFFFF6F3FFFFFBF2FFF8F6EBFFEDEFE3FFFBFBF5FFAAB7
          97FF666C37FF815B2FFFA65943FF985B45FF78834DFF57A84CFF1ECA47FF30CA
          56FF2FBB52FF26B446FF22BD3FFF1DBE35FF1EB72FFF2DB939FFFBEEECFFFFF1
          EFFFFFF5F3FFFFF2F1FFFEECEDFFF8E8E9FFFDEDEEFFFFF6F7FFE7F5DDFFFDFB
          F3FFFCF2F2FFCCCFBFFF698A5AFF285E1DFF4E8B4EFF93CA9DFFA8E8B4FF59C8
          67FF23C734FF18D027FF28C833FF5AD062FF79CC7EFF67AB6DFFF6F5E7FFF8F7
          E9FFF7F5EAFFF7F2E9FFFDF5EEFFFFFAF6FFFFF6F2FFFAEBE9FFFFEDF9FFFFEF
          EEFFF0F1E1FFFFFDEBFFFFFFF2FFF1ECD7FFA2B895FF508451FF15710CFF70B4
          62FFAED99AFFA8D394FF7CB86DFF3C8538FF2A6C2BFF4C8452FFFDFDEBFFF6F7
          E7FFF3F6E6FFF5F8E9FFF5F5E9FFF4EFE6FFFBF1EAFFFFF8F2FFFFE8EEFFFFF1
          F3FFFFF4F1FFFFEFE9FFFFEEE7FFFFF6EAFFFFFEEBFFF2FFE5FFE2D4D5FF849C
          79FF2B6A24FF186612FF4B8644FFA4BC9CFFE9E7DFFFFBF0F3FFFFF2EAFFFFF7
          EEFFFCF6EFFFF6F4ECFFF8F5EDFFFFF7F3FFFFF6F3FFFFF2EFFFFFF4F1FFF9EF
          EFFFF4EFF0FFF7F6F2FFFCFAF0FFFAF7E9FFF6F2E7FFF5F2EAFFDEFEDBFFF0FF
          EAFFF5F2EEFFF6EEEFFFFAF7F2FFF0F4E8FFEEEEE0FFFDF9EEFFFFECF0FFFFEF
          F3FFFFF3F6FFFFF3F5FFFDF0F2FFFCEBEEFFFFEBEFFFFFEEF2FFFFF1F1FFFFF0
          EDFFF6F4ECFFF6F2EDFFFFF0EEFFFFEFF1FFFDF1EFFFF6F6F0FFFFF3F8FFFFEB
          EDFFFEF3EFFFFDF9F4FFF8F1EEFFFCEFEDFFFFF2F1FFFFEFEAFFFEF3EFFFFEF3
          EFFFFEF3EFFFFEF3EFFFFEF3EFFFFEF3EFFFFEF3EFFFFEF3EFFFFDF4F0FFFDF4
          F0FFFDF4F0FFFDF4F0FFFDF4F0FFFDF4F0FFFDF4F0FFFDF4F0FFFCF3EFFFFCF3
          EFFFFCF3EFFFFCF3EFFFFCF3EFFFFCF3EFFFFCF3EFFFFCF3EFFFFEF3EFFFFEF3
          EFFFFEF3EFFFFEF3EFFFFEF3EFFFFEF3EFFFFEF3EFFFFEF3EFFFFDF4F0FFFDF4
          F0FFFDF4F0FFFDF4F0FFFDF4F0FFFDF4F0FFFDF4F0FFFDF4F0FFFCF3EFFFFCF3
          EFFFFCF3EFFFFCF3EFFFFCF3EFFFFCF3EFFFFCF3EFFFFCF3EFFFFEF3EFFFFEF3
          EFFFFEF3EFFFFEF3EFFFFEF3EFFFFEF3EFFFFEF3EFFFFEF3EFFFFDF4F0FFFDF4
          F0FFFDF4F0FFFDF4F0FFFDF4F0FFFDF4F0FFFDF4F0FFFDF4F0FFFCF3EFFFFCF3
          EFFFFCF3EFFFFCF3EFFFFCF3EFFFFCF3EFFFFCF3EFFFFCF3EFFF}
        Mask.Data = {
          9E000000424D9E000000000000003E0000002800000018000000180000000100
          010000000000600000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end>
  end
  object LookFell: TcxLookAndFeelController
    SkinName = 'Lilian'
    Left = 617
    Top = 100
  end
  object ilMainSmall: TImageList
    Masked = False
    Left = 821
    Top = 100
    Bitmap = {
      494C01014E005100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004001000001002000000000000040
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FFFBFDFE0585AD
      4BFF85AD4BFF0000000000000000000000000000000000000000A2580FE2B763
      11FFB76311FFB76311FFA3580FE30000000000000000A2580FE2B76311FFB763
      11FFB76311FFA3580FE300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005EAFE9FFFFFFFFFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFFEFEFE0585AD
      4BFF85AD4BFF0000000000000000000000000000000000000000B76311FFEDC4
      9CFFF9DABBFFEBC299FFB76311FF0100000100000000B76311FFEDC49CFFF9DA
      BBFFEBC299FFB76311FF01000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000969696FFBCBCBCFFFFFFFFFFFFFF
      FFFF737373FF737373FF737373FFFFFFFFFC85AD4BFF85AD4BFF85AD4BFF85AD
      4BFF85AD4BFF85AD4BFF85AD4BFFFCFDFB050000000000000000B76311FFF9DA
      BBFFB76311FFF9DABCFFB76311FF0100000100000000B76311FFF9DABBFFB763
      11FFF9DABCFFB76311FF01000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005EAFE9FFFFFFFFFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFC85AD4BFF85AD4BFF85AD4BFF85AD
      4BFF85AD4BFF85AD4BFF85AD4BFFFCFDFB050000000000000000B76311FFEEC5
      9DFFFBDCBEFFEDC49AFFB76311FF0100000100000000B76311FFEEC59DFFFBDC
      BEFFEDC49AFFB76311FF01000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000969696FFBCBCBCFFFFFFFFFFF3F3
      F3FF737373FF737373FF737373FF737373FFFDFDFD09F7F8FD09FEFEFE0185AD
      4BFF85AD4BFF0000000000000000000000000000000000000000B76311FFB763
      11FFB76311FFB76311FFB76311FF0100000100000000B76311FFB76311FFB763
      11FFB76311FFB76311FF01000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005EAFE9FFFFFFFFFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFFEFEFE0585AD
      4BFF85AD4BFF0000000000000000000000000000000000000000B76311FFFFFF
      FFFFFFFFFFFFFFFFFFFFB76311FF0100000100000000B76311FFFFFFFFFFFFFF
      FFFFFFFFFFFFB76311FF01000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000969696FFBCBCBCFFFFFFFFFFFFFF
      FFFF737373FFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFF737373FFFCFCFC0585AD
      4BFF85AD4BFF0000000000000000000000000000000000000000B76512FFFFFF
      FFFFFFFFFFFFFFFFFFFFB76311FF0100000100000000B76512FFFFFFFFFFFFFF
      FFFFFFFFFFFFB76311FF01000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005EAFE9FFFFFFFFFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFF5EAFE9FF0000000000000000000000000000000000000000B76512FFFFFF
      FFFFFFFFFFFFFFFFFFFFB76311FF0100000100000000B76512FFFFFFFFFFFFFF
      FFFFFFFFFFFFB76311FF01000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000969696FFBCBCBCFFFFFFFFFFF3F3
      F3FF737373FF737373FF737373FF737373FFCCCCCCFF314ACCFF314ACCFFCCCC
      CCFF5EAFE9FF0000000000000000000000000000000000000000B76512FFFFFF
      FFFFFFFFFFFFFFFFFFFFB76311FF0100000100000000B76512FFFFFFFFFFFFFF
      FFFFFFFFFFFFB76311FF01000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005EAFE9FFFFFFFFFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFF5EAFE9FF0000000000000000000000000000000000000000B76512FFFFFF
      FFFFFFFFFFFFFFFFFFFFB76311FF0100000100000000B76512FFFFFFFFFFFFFF
      FFFFFFFFFFFFB76311FF01000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000969696FFBCBCBCFFFFFFFFFFFFFF
      FFFF737373FF737373FF737373FFFFFFFFFFCCCCCCFFFFFFFFFF737373FFCCCC
      CCFF5EAFE9FF0000000000000000000000000000000000000000B76512FFFFFF
      FFFFFFFFFFFFFFFFFFFFB76311FF0100000100000000B76512FFFFFFFFFFFFFF
      FFFFFFFFFFFFB76311FF01000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005EAFE9FFFFFFFFFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFF5EAFE9FF0000000000000000000000000000000000000000B76311FFFFFF
      FFFFFFFFFFFFFFFFFFFFB76311FF0100000100000000B76311FFFFFFFFFFFFFF
      FFFFFFFFFFFFB76311FF01000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000969696FFBCBCBCFFFFFFFFFFF3F3
      F3FF737373FF737373FF737373FFF3F3F3FFCCCCCCFF737373FF737373FFCCCC
      CCFF5EAFE9FF0000000000000000000000000000000000000000B76311FFB763
      11FFB76311FFB76311FFB76311FF0100000100000000B76311FFB76311FFB763
      11FFB76311FFB76311FF01000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005EAFE9FFFFFFFFFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFF5EAFE9FF0000000000000000000000000000000000000000A2580FE2B763
      11FFB76311FFB76311FFA3580FE30000000000000000A2580FE2B76311FFB763
      11FFB76311FFA3580FE300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAFE9FF5EAF
      E9FF5EAFE9FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFDFD02FDFDFD02FEFE
      FE01000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFC0500000000FFFF
      FF04E8E8E817DADADA25D0D0D02FCBCBCB34CBCBCB34D1D1D12EDADADA25E8E8
      E817FBFBFB04FBFBFD04FDFDFD0200000000E5E5E51AE5E5E51AE5E5E51AE5E5
      E51AE5E5E51AE5E5E51AE5E5E51AE5E5E51AE5E5E51AE5E5E51AE5E5E51AE5E5
      E51AE5E5E51AE5E5E51AE8E8E817F0F0F00F00000000FEFEFE01FCFCFC040000
      0000FEFFFF050000000000000000FFFFFF04FDFDFE0200000000DDDDE3224343
      B3BC2321C5E83B3BAFC4CDCDD53200000000000000000000000000000000FDFD
      FD02DDC3B847E1BBA956E0D2C837F7F7F708F7F7F708E8E8E819DFBEAD52EBB5
      8F76E7B4906FE0CDC53AF0F0F30FF5F5F50AFBFBFC04000000009192B1734244
      78CD3E4070D1363767D9333461DC31325DDE31325DDE34355FDC383963D93F40
      69D144446ECBAFB0C254FBFBFC04FBFBFC04999AA86633376BCC999AA866CCCC
      CC33CCCCCC33CCCCCC33595D7EA633386ECC33386ECC33386ECC33386ECC3338
      6ECC33386ECC33386ECC5B5F80A4E1E1E11E0000000000000000000000000000
      000000000000E4E6E937E4E8EB320000000000000000F5F5FD0A4346CFC2161C
      D5FF0303D4FC151BD6FF3538CAD0EEEEFB11F9F9F90BF7ECE51DF2E7E020DEB9
      A065E6925AFFECAF89FFDB8247EFD0C4BB56CFD2D444CF8756C1EBA273FFE4B4
      9AFFE8B597FFE28B52F9CFA58885FBEEEA19FAFAFC05E6E7EE1E626593C6191D
      69FF171968FF171A65FF171962FF17185EFF17195CFF141557FF101152FF1516
      54FF161756FF85819991FEFEFE01F8F8F908333F77CC6497DBFF333F77CCB7BA
      C948FFFFFF00FFFFFF0044629CBB5281C3EE5C8ED0F65688CBFC4679BDFF3567
      ABFC4374B7F64775B8EE44629CBBFFFFFF0000000000EEEEEE18D6D7D73F0000
      0000D7E1E877C3E0F2F7BAE0F7F9C3D2DE7EFCFCFE05989BE56D020BD7FF5061
      EBFA7F89EEFD5363EAFC020BDAFF5457D2B7F3F3F326EAEEF146F7FFFF47E2C8
      B478EDA474FCD2D8E6F7EAB393FFE2AA8591E3BBA06FEDA77CFFD1CCD5F9D5C9
      CAFACEC5CBF9DFCAC6FFE78F56EAF7ECE919FEFEFE01DADBE24D83859DE02326
      71FA191C72FB181C6DFD181B6AFD191B67FD151762FD272969FD414275FD2B2B
      62FB0D125AFC7F5A35ECFFFFEF1000000000B7BED348334A85CC5F92D6FF334A
      85CCB7BFD448FFFFFF00D9E1ED2683A0C97C5A81B7A5406DACBF3565A7CA406D
      ACBF5A81B7A583A0C97CD9E1ED26FFFFFF00ECECEC1EA2A1A1857B7874C5A6B1
      BEBDACD8F4FFA4DAF7FF92CAEAFF87CAF1FFAEBCB76C7375C7910014E6FF4A64
      EFF7A8BAFBFB5068EFF90011E0FF3B40CED30000000000000000FDF8F50EFEFA
      F709E49461AAE1B8A3FFD6CCD1FCE6935DE0DC8245C3DFC2B6FDD3C7CAFCEA88
      47FFE7A67FFFCCCCD8FDE9AC87FFD98E7689FDFDFE02D7D7E1467C7E9EDC1F24
      78FD181D79FC181C74FE181D70FE1A1D6FFD101366FE3D407DFE737498FE2B2D
      6CFC10125CFF696677D1F9FBF80AFEFEFE01FFFFFF00B7C2D848335493CC5485
      C9F9335493CCB7C3D948FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000DEE4E94A849FB8FF4A99
      D1FF44A2E7FB77B1DEFE83C0E3FC94DCFFFE8BB8D3CBADADAE522B40DBE1294D
      F5FF002CF7FF284AF1FF2439DEE6D9DCF8290000000000000000000000000000
      0000F1DDD828E08F5BF3D6D3DBFCE0B39BFFE07229FFD8C8C6FDE0C8C1FFD670
      2DE3E3986AF3D4D0D7FEE8B499FEDB7C44BBFDFDFE02D8D9E4437B7DA0DA1F24
      80FD171B81FF181881FF16137EFF191A7AFF111570FF393D81FE6F719BFF474C
      86FC120E5BFF2468BAE6F0FEFF0F00000000FFFFFF00FFFFFF00B7C5DC48335E
      9FCC4A7BBFF3335E9FCCFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FAFDFE16DCEDFA7382CC
      FBF073C0F7FE89CAF9FD9BDCFFFE96D9FEFE83CEFBF9ADB9BE5EB6B6D7497277
      E18D5061E7AF6D76EB92DCDCF52C00000000FEFCFC03FEFDFD02DFA98A75D791
      60C8D9956CCED76A21F3E1B59DFFD6D3DBFDF09B64FDDBC0B6FEE0D0CEFEDE6E
      27F5E5996AFAD6D6E1FEE8B192FED87D55AAFDFDFE02D5D6DE477E80A4DE1F22
      87FD232688F02E5A6CED2A6B5EF93B517ADE161577F83C3F89FF8788ADFE4145
      87FC12126BFF41688BD3F6FAF80AFEFEFE01FFFFFF00FFFFFF00FFFFFF00B7C8
      E0483365A8CC3C5997E666709999FFFFFF00FFFFFF00FFFFFF0066699199333C
      73CCB7BCD048FFFFFF00FFFFFF00FFFFFF00000000000000000000000000E0F0
      F94FA0D9FCFEA0DCFFFC98D8FDFE80D0FFFB6BC7FCFF97BFD892FFFFFF05BACD
      D86AA5C6DB8AFBFCFD0600000000FBFDFD0400000000D9966E96DE9D75FFE1D4
      D3FFDFD8DAFFE0BFAEFFE59C6CFED8D1D5FFEABFAAFEEBBDA4FFD4D6E1FEE9B9
      9FFFE1C3B7FCDBD8DFFBE89968FEE4C1BB48FDFDFE02D5D6E2497A7AA8E03653
      7AED3FA857E849C257F33ABD4EFD44C14CEB3C8061E2323486F655599AFE3E42
      8BFD12147BFF365340EEF4FBEF1000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00667BA9993A62A3E6667FAE99FFFFFF00B7B8CB48333C73CC3A6D
      B1FF334984CCB7C0D648FFFFFF00FFFFFF0000000000FEFEFE01FDFEFE050000
      0000BFE4FBA0A4DCFDFF93D7FFFA6DBEEEFD63B8E8FE7AC3EFD18599AC9C6398
      C5FF4C7FB2FF6596BFD2F0F7FC13FDFEFE02E4C0BB46D68653F5DFDBE0FBDAC0
      B5FCDCAB8EFFD9DAE4FEE8BEA9FFEABBA2FED9D7DDFFF3AC81FEE7C1AEFFE2DB
      DDFFE4D8D6FFE9AF8DFFDA9167A500000000FDFDFE02D6D5E6487D7AA8DC55B3
      64F23FAE5CF5437C73F246B95CF0407C6CE034B94CFA4D6F88F8706DB2FE363A
      90FA15197FFF7A83A798FCFCFD03F9FAFB06FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF006688BB99386AAEE633376BCC333C73CC2B5293F31A46
      8AFF4D80C4FF33518FCCB7C2D848FFFFFF000000000000000000FEFEFE01FEFE
      FE01EDF6FC28A6DCFCF584CEF9FD68B5E3FD5EB0E0FE5EBCF2FF4583B1FF5D8E
      BDFD587DAAF83F6895FFB6D0E28600000000CC7156A9D89E7BFCE2E6F1FFD894
      6AFBCF5E17F4E5D4CFFEE0CEC9FEF6A06BFDDED9DDFDE8C5B4FFDE712CF7D186
      5FCFD1865ECADCA2827DFCFAF906FDFCFC03FEFEFE01DADBE7477F82AADD3757
      79F2354385E3366376F344C05DF1418A6AE132BF4FFA4F738CF97B78BEFE494F
      A0F9141A86FF9D9ECC6E00000000F5F6FA0AFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0033376BCC315798F33366AAFF204D91FF4577
      BBFF2E5DA1FF5083C7FF335796CCFFFFFF00000000000000000000000000FDFE
      FE0200000000ADDCF9A773BDEAFE69B5E2FA5DAFDFFF57B6EBFE5FB0E3FC5683
      B1FE597BA2FA2B4F71FA5C8DAFCC00000000CE7143BDE2AD91FCE4E5ECFFDE9C
      75F5CB6528E1E7D0C6FFE4DCDFFDDB7331FFE3B195FFE4E9F4FCDC9367F8E9CC
      C83700000000000000000000000000000000FDFDFE02D5D6E1477E7FAEDD2632
      9DF5317B6EED3CB35FF935BB5FFE38B15AF8357D72E83E45A6F47579BDFE595C
      AEF9141A8EFF9698CB7700000000F6F7FB09FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B7B8CB48333C73CC3366AAFF396CB0FF4D80C4FF3A69
      ADFF3B69ADF3335796CC6683B399FFFFFF00000000000000000000000000FDFE
      FE0300000000D4EDFD5372BFEDFF67B5E4FA5DB0E1FE51ADE2FE59BFF8FF64A4
      D0FB4875A0FF286089FF8DA6B98300000000D0867986E1A683FAE7ECF6FDE0AC
      8DFFD87A3FFFE6DFDFFCE8D5CCFCD17D49CAD98957DCE7DEDEFBE6CABCFFDB8C
      5BBB00000000FEFCFB050000000000000000FDFDFE02D7D8E9457875AFD96EAA
      95E95BD27DF64CA678EA3DBB6DF73950A0DA24329FED2B30B0FF5B60B7FE4C52
      AFFA161D97FF969ACF7600000000F6F6FA0AFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0066699199333C73CC2B5193F3204D91FF4D80C4FF5D90D4FF5083
      C7FF335796CCB7C4DB48FFFFFF00FFFFFF000000000000000000000000000000
      0000FEFEFE01FBFDFE0796D3F7D06AB8E7FF61B7EAFB5BB5E9FE4A9CCCFB449D
      CEFF3A82AAF2A1BFD06B00000000FDFDFE02F7EEEC1AD88B59E0E9DCD6FFE9E7
      ECF9E9E1E1FBE9ECF4F9E2B08FFFE5BDAB57E2B29F60E2B092FFEBF6FFF6DEA3
      7EFEE4C1B64A00000000FEFDFD0200000000FEFEFE01D8D9E8467B79AFD97CB2
      9BE67CD0A7FB539492EF64C98EF460B880E04FB776F14F58B7F89396D4FE5B60
      BBF9141B9CFF989BD27500000000F6F7FB09FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00333C73CC3A6DB1FF1A468AFF4577BBFF3A69ADFF5083C7FF4B7B
      BFF3335A9ACCFFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FEFEFE0200000000E2F4FE3A81CDF9FA6EBAE6FF5C9BC1FE569BC2FF6EA2
      C0BEDEE9F02900000000FEFEFE010000000000000000E6C8BC48D08457EBE0BA
      A2FFE0C2AFFFDAA380FFCF8865ADFDFCFB04FCF9F907D08457D6DDB093FFD593
      69FFE4BCA85900000000FEFDFD0200000000FDFDFE02D4D5E64C7E7FB4E33A4E
      AAEB7BBB9DDE87DF9FF284E7A7FC6BC88CF44A7E91E6272BB0F8373DB5FE2E33
      AEF91920A4FF9599D47600000000F6F6FB0AFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B7BCD048334984CC4D80C4FF2E5DA1FF3B69ADF3335796CC335A
      9ACCB7C5DC48FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FDFEFE0200000000CEE6F34D72B9E1E1549DC7F5A4C7DC7AFEFE
      FE0100000000FDFEFE020000000000000000FDFCFC0300000000F3E5E11EE0B1
      9868DEAC8F79E6C3B748000000000000000000000000F6EBE718E8C5BA45EACF
      C83700000000000000000000000000000000FAFAFD06EDEEF9166E73D2B81E25
      C7FE242CC4EF4260ABED4E80A2F62C3CA8EA1B20B5FD1D25B7FE161EB0FE1D25
      B0FA1D24AEFF979BD97400000000F6F7FC09FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00B7C0D54833518FCC5083C7FF335796CCB7C4DB48FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000FEFEFE0100000000F3F8FC11E4F0F623000000000000
      0000FEFEFE0100000000000000000000000000000000FDFBFA05000000000000
      00000000000000000000FEFEFE0100000000FEFEFE0100000000000000000000
      000000000000000000000000000000000000F4F5FC0B00000000858BE6852633
      D1FE2733D1FF2027D2FF1B1FCFFF2B37CFFF2A38CAFE2936C9FD2B38C7FE2E3A
      C6F92632C0FDAFB2E45B00000000F8F9FC07FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B7C2D848335796CC6683B399FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000FBFCFD050000000000000000FAFCFD06FEFE
      FE010000000000000000000000000000000000000000FAFAFE00F9F9FD00F5F5
      F900F6F7FB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFFFF00F6F7
      FB00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000F7F8FB00F7F7FA00F9F9FD00F9F9FD0000000000F9F9FD00F9F9
      FD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE01FCFCFC040000
      0000FEFFFF050000000000000000FFFFFF05FEFEFE01FEFEFE0200000000EAF2
      EE50DCEEE8B5E4EFE87300000000FFFEFE01FBFBFE0000000000FBFBFE00FFFF
      FF00FCFBFC00E2E2E400C4C7CC00C8CACF00D4D5D800DEDEE000E8E7E8000BB2
      51000BB15000FBFBFE00FBFBFE00FBFBFE00FBFBFE00FBFBFE00FBFBFE00FBFB
      FD00FAFBFD00FEFEFF00FEFEFF00FCFCFF00FBFBFD0000000000FBFBFD00FAFA
      FC00FBFBFD00FBFBFE00FBFBFE00FBFBFE0000000000FEFEFE01FCFCFC03FCFD
      FD03FCFCFC03FEFDFD02FEFDFD02FDFDFD02FDFDFE02FDFDFE02FDFDFE02FCFD
      FE03FCFDFE03FCFCFC03FEFEFE01000000000000000000000000000000000000
      000000000000E4E6E937E4E8EB32000000000000000000000000B1E3CD7A5BCD
      A6FC8DDEC8FF76D8BBFF92D9BEAFFDFEFE03F9F9FC00FBFBFD00F1F1F300A3A7
      AD00606C790037485800304C67003C6182003B5E7F00446584000BB955000CB8
      550011BD5A0011B95800FBFBFE0000000000FBFBFE00FBFBFE0000000000FBFB
      FE00FEFDFF00ECECE900E8E7E500F3F2F600F9FAFD00FFFFFF00FAFAFE00FFFF
      FF00FEFEFF00F9F9FB0000000000FBFBFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EEEEEE18D6D7D73F0000
      0000D7E1E877C3E0F2F7BAE0F7F9C5D4DF7CFDFDFD08E8F5EE1F44AB6AF755C0
      84FFB2E4CCFB75D1A5FC3BB16DFFA4D9BE73F9F9FC00F9F9FC00F8F7FA004E5A
      67000B21370021354900324F6B0040678B00345B8000345B7F002D587E00C0C8
      D200FFFFFF004CCD830046C77D00FCFCFF00FBFBFE00FAFAFC0000000000F4F4
      F400A2AD94005C834B005D844B0094A18700CBC9CB00D9D8D900CFCDCD00B9B7
      B700EBEBED00FFFFFF00FBFBFE000000000000000000C5DBE73A95C2E16AA3B4
      BB6DB4977191AB8654AFAB885BA69D968B8385A6C57A86ABC87988ABC7778CB1
      CD7391B8D26E96C1D969CCDEE93300000000ECECEC1EA2A1A1857B7874C5A6B1
      BEBDACD8F4FFA4DAF7FF92CAEAFF88CBF2FF97A3AE77D1DED43A52A769EE71B0
      7EFFD5E7DAF8A9CEAFFC59A66CFFABD8BB6B00000000F9F9FC00FDFCFF00636E
      79001B314500253A4E00324F6A00456C8F003C5C7C00304C6A003B6183009298
      A000BEBBBD003DC1740053CB8600EEEEF10000000000F8F8FB00FCFCFE00B2B3
      AF0065895B00498E41004D924500638C5A00B1B0AA00DCD8D700B7B4B100ADAA
      A900B1AFAD00CBCACA00F6F6F90000000000000000006CC5F19D4098B9FF976F
      25FFB4802FFFE0CEB3FFC19B64FF8F5308FF496361FF1C99DEFF259EDFFF25A0
      E0FF2AA4E2FF2DA8E4FF86CCEB830000000000000000DEE4E94A849FB8FF4A99
      D1FF44A2E7FB77B1DEFE83C0E3FC94DDFFFE88B6D2D0C1C1C13EADCFB97F54A3
      69F677B587FF6FB281FFB0D8BF9E00000000FAFAFC00F7F7FA00F9FAFC00606C
      7900122B42001D354B002C4B670039638800304D6C002A44620033587A008A8F
      9800AFA9AA00A8A4A600ABA8AA00DEDEE10000000000F9F9FC00FFFFFF008498
      7A00A6CAA500C2E0C200C7E2C6009EC59B008E9F8300E4DFE300AFACA900B3AE
      A900D0CDCB00BCB8B500BDBAB800F9FAFC00000000007DCBEC9BA89451FBCC8C
      1FF6C89B46FAFFFFFFFAD8BE92FAA86909FAA25D08FA4B8699FA3DB6F1FA43B4
      E8FA4AB7E9F649B9EBFB8FD6F4820000000000000000FAFDFE16DCEDFA7382CC
      FBF073C0F7FE89CAF9FD9BDCFFFE96D9FEFD84CEFAF8AEB9C05CFDFFFF25D5DB
      D439CBE2CA57E4F5E83F0000000000000000FBFBFE00FFFFFF00FFFFFF00636E
      7D00102942001E344B0024425E002E5578002A4D6E0029496800224668008890
      9B008B87870098969800B8B5B700DFE0E20000000000F8F8FB00E5E4E500C1C5
      B6005A9F4F003EBF3F0040C042005D9E510092928500B5B1B100C0BDBA008F88
      82009E969000BDB9B600E7E6E800F7F7FA00000000008FC6CBA7CBA13CFFD19E
      33F9DBB974FDFEFFFFFDE6D1AEFDB78025FDB56C09FD70765CFD3AB4EEFD46B8
      EAFD4EBBEBF94EBDECFF85D4F39000000000000000000000000000000000E0F0
      F94FA0D9FCFEA0DCFFFC98D8FDFE80D0FFFB6BC7FCFF99C0D990FFFFFE0DB1C6
      D870A9C8E67EFAFBFD0700000000FDFDFE02F3F2F600C3C7C700869588003247
      4D001C355100243F5B00325374003B628600375D7F00385A790042607B009B9F
      A700949091007F7D7F00B6B4B600E0E0E300FCFCFF00D3D1CE00C1BCB700DDDA
      DC00AFB5A6006596590066965A009EA19400B3ADAD00C0BDBB00C1BEBC007B74
      6E00776F6800B6B2AF00FFFFFF00F7F7F9000000000096CFD3B0DFB857FFDDAF
      46FAEAD7ABFDFFFFFFFDF4EDDFFDC89135FDC87C0EFD868762FD4BBCF0FD57C1
      EDFD5CC3EDF95CC5EEFF7FD3F39B0000000000000000FEFEFE01FDFEFE050000
      0000BFE4FBA0A4DCFDFF93D7FFFA6DBEEEFD63B8E8FE7AC3EFD1879BAC9A6499
      C4FF4D7FB0FF6696BFD2F2F8FC11FDFEFE02F8F6FA0064766800143C1A002B4D
      3400395C4C004C7066003C5D5500535C64006B7077006F7074009A979800A9A5
      A600828082007D7B7D00A9A7A800DFDFE200FCFCFE00E8E6E700BFBBB9009F9B
      9800B8B4B400C6BBBF009B8D8E00B2ADAC00B3AEAA00C2BEBC00C3C0BE00C7C3
      C200A19C9700A09C9800F8F8FA00F7F6F9000000000083D3EDB9E3D183FFF3C3
      5BFAE6BB5BFDF2E5CBFDE2BD77FDDCA23DFDDA9730FD7DA39AFD6CCDF7FD75CE
      F0FD7AD0F1F97BD2F2FF87D7F5A7000000000000000000000000FEFEFE01FEFE
      FE01EDF6FC28A6DCFCF584CEF9FD68B5E3FD5EB0E0FE5EBCF2FF4583B1FF5D8E
      BDFD587DAAF83F6895FFB6D0E28600000000FFFEFF0074857800254A2C00335A
      3800406847005C8168004A6A530065636200827C7D0078757700989596009F9C
      9D00989596008C898A009A979900DEDEE100FBFBFD00FDFDFF00BDBBBB00ACA8
      A500BFBCB900BDBBB90098938C00BDB7B100BCB8B500BFBBB700968F85008983
      7D00A9A7A500CDCBCA00F0EFF100FBFBFD00000000007AD2F8C2ABD8CEFFF7D3
      76FAF5C964FDEEBF5DFDEDB955FDE2AC46FDA59F6BFD76C7E8FD82D5F4FD84D4
      F2FD8AD6F3FA8DD9F3FF8CDAF5B000000000000000000000000000000000FDFE
      FE0200000000ADDCF9A773BDEAFE69B5E2FA5DAFDFFF57B6EBFE5FB0E3FC5683
      B1FE597BA2FA2B4F71FA5C8DAFCC00000000FDFDFE0073867800204A27002C58
      32003C654600547A630041624E00555C5900777D7A0099999A00B4B1B300B7B5
      B700BAB7B900BEBCBE00CECDCF00EFEFF200FBFAFD00F5F5F700B9B6B300B3AE
      AA00C2BEBB00B6B2AE00B9B6B400BEBBB800AEAAA600B6AC9F00A3998A008A82
      760099959100F7F7F900FBFBFE00000000000000000086D6F4C88AD8F9FFA2D3
      D1FBC3C693FDC5B36EFDBBAD6EFD9AB198FD86CDE7FD90DCF9FD92DAF4FD94DB
      F5FD98DCF5FA9CDFF5FF8EDCF5C200000000000000000000000000000000FDFE
      FE0300000000D4EDFD5372BFEDFF67B5E4FA5DB0E1FE51ADE2FE59BFF8FF64A4
      D0FB4875A0FF286089FF8DA6B98300000000FEFDFE00778B7C00214E27002F5C
      350037624000496D570040614C003756430033543F00AFBAB500F4F3F700EDED
      F000F3F3F600F9F9FC00FCFCFF00FCFCFE00FBFBFD00EEEEEF00C9C4C100B5B1
      AD00B9B4AD00999084007D776E0094918E00E5E4E600E6E3E100CDC7BF00B4AD
      A500F5F4F700FDFDFF00FAFAFC00FBFBFE00FFFFFF018DDAF4D5A2DFF5FC97DE
      FBF994DCF9FB95D9F1FB4BBCEAFB2FB2EDFB3AB8EBFB39B5E6FB3DB6E7FB42B9
      E7FB4ABDE8F74FBEEAFC94D5F28E000000000000000000000000000000000000
      0000FEFEFE01FBFDFE0796D3F7D06AB8E7FF61B7EAFB5BB5E9FE4A9CCCFB449D
      CEFF3A82AAF2A1BFD06B00000000FDFDFE02FEFEFF00778C7C0017471F002A57
      320036624100456C540042695100476B540047695400BDC7C300FDFDFF00FBFB
      FE00FBFBFE00FBFBFE00FBFBFD00FBFBFE0000000000FBFBFE00F9FAFD00DCDB
      DC00C0B8AF00ACA29500928A7F00D3D2D200FEFEFF00FDFDFF00FEFFFF00FCFC
      FF00FCFCFF0000000000FBFBFE00FBFBFE00FDFEFE0284D1F0B45DC6ECFF55C3
      EBFF51C3ECFF4BC2EDFF2EB4E8FF45BCEBFF4ABEECFF48BEECFF49BEECFF4AC0
      ECFF4EC2EDFF4FC1EDFFA8DEF66D000000000000000000000000000000000000
      0000FEFEFE0200000000E2F4FE3A81CDF9FA6EBAE6FF5C9BC1FE569BC2FF6EA2
      C0BEDEE9F02900000000FEFEFE0100000000FCFCFE00D4D9D700B2BEB700B4C0
      BB00B2BFB900B0BDB700B8C4BF00CED4D300E0E3E400F5F5F80000000000FAFA
      FC0000000000FBFBFD00FBFBFE00FBFBFE00FBFBFE0000000000FBFBFE00FEFE
      FF0000000000EDECED00E4E3E300FFFFFF00FAFAFC00FAFAFC00FAFAFC000000
      000000000000FBFBFE00FBFBFE00FBFBFE0000000000EAF7FC17CDEDF936CDEE
      F935C9EDF936CAECF936D3EFFA36D4EEFA36D3EDFA36D3EEFA36D3EEFA36D3F0
      FA36D7F2FB35DCF4FB36EFFAFD17000000000000000000000000000000000000
      000000000000FDFEFE0200000000CEE6F34D72B9E1E1549DC7F5A4C7DC7AFEFE
      FE0100000000FDFEFE020000000000000000FBFBFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFF00FBFBFE00FBFBFE00FBFB
      FE00FBFBFE00FBFBFE00FBFBFE00FBFBFE00FBFBFE00FBFBFE00FBFBFE000000
      0000FBFBFE00FEFEFF00FFFFFF0000000000FBFBFE00FBFBFE00FBFBFE00FBFB
      FE00FBFBFE00FBFBFE00FBFBFE00FBFBFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE0100000000F3F8FC11E4F0F623000000000000
      0000FEFEFE01000000000000000000000000F9F9FD00F6F7FA00F4F5F800F4F5
      F900F4F6F900F5F6F900F5F6F900F5F6FA00F6F7FB00F9F9FD00F9F9FD00F9F9
      FD00F9F9FD00F9F9FD00F9F9FD00F9F9FD00F9F9FD00F9F9FD00F9F9FD00F9F9
      FD00F9F9FD00F7F7FB00F7F6FA00F9F9FD00F9F9FD00F9F9FD00F9F9FD00F9F9
      FD00F9F9FD00F9F9FD00F9F9FD00F9F9FD0000000000FCFCFC03F9F9F906F9FD
      FE06F9FDFE06F9FCFE06F9FCFE06F9FCFE06F9FCFE06F9FCFE06F9FCFE06F9FD
      FE06F9FDFE06F9F9F906FDFDFD02000000000000000000000000000000000000
      0000000000000000000000000000FBFCFD050000000000000000FAFCFD06FEFE
      FE010000000000000000000000000000000000000000FFFFFF03000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F200EBEBEB00E3E5
      E300DEE1DF00F0E9EF00F8ECF700F8EBF700F8ECF700ECE7EB00DEE1DF00DFE4
      E200E7EAE900FFFCFF00FAFDFC00FEFEFE00CCCCCC57D0D0D071D2D2D273D2D2
      D272D1D1D173D1D1D173D1D1D173D1D1D173D1D1D173D2D2D273D1D1D172D3D3
      D374CECECE6DFFFFFF00FFFFFF00FDFDFD020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE01FEFEFE098585859C8281
      82CF858485C9848484CC878687CC868686CC868686CC868686CC858585CB8A89
      8ACA787778CBB8B8B84900000000FBFBFB04F2F2F200E2E2E200D3D4D300D5D2
      D500D0CED0009AB19D00729E77006A9B6F0079A17E00A7B8AA00D5D1D500E0D6
      DC00D2D2D10091BB9D00FFFEFF00FEFEFE00CDCDCDB6EDEDEDFEF1F1F1FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F1F0FFF2F2F2FFF2F2F2FFF1F1F1FFF0F0F0FFF4F4
      F4FFE3E3E3FFC9C9C9B0FDFDFD07FFFFFF00000000000000000000000000E1E1
      E122D0CFCF42C8C7C752B1B1B168A6A6A6809A999A958F8E8FAC838383BD7070
      70D4D6D6D63500000000FEFEFE0100000000FFFFFF06000000008F8F8FCDEDED
      EDFFE8E8E8FFE4E4E4FFDBDBDBFFDCDCDCFFDCDCDCFFDCDCDCFFDBDBDBFFE8E8
      E8FFC0C0C0FFB4B4B44E00000000FAFAFA05FFFFFF00FDFDFD00FFFFFF00DFEC
      E2005CA56C0027873A0022863600208534002386350028883C0081B78A00A4DE
      C1004DBD840021A9600082D2AA00FCFEFD00D2D2D2B2F2F2F2F8F7F7F7FDF0F0
      F0FCF0F0F0FDF1F2F2FDF2F7FBFDF0EFEFFDF1F1F1FDF4F4F4FDF3F3F3FEF8F8
      F8FDE7E7E7FAD9D9D9FFD0D0D0AEFEFEFE07FEFDFD0200000000F8F7F70E5C5A
      5BE03E3D3DFF424140FF3F3E3DFF3A3938FF343331FF2C2B2AFF191818FF3534
      35FFD9D8D84000000000FDFDFD0200000000FFFFFF05000000009C9C9CC3B9B9
      B9FC9D9D9DF8DFDFDFFCC6C6C6FCCACACAFCCACACAFCCBCBCBFCC9C9C9FBD8D8
      D8F8BFBFBFFCB7B7B74B00000000FBFBFB04FBFCFB00FFFFFF00DBEDE000379A
      55001E8D3F002E964E002C954D00349953002C954D002C92480020A059001DBC
      7B0031C2860013BC79005ECD9E00FCFEFD00D1D1D1B2F2F2F2F9F7F6F6FEE8E7
      E6FDEBEDEFFEE3D5CAFED8B394FEECF1F5FEEBEBEAFEF2F1F1FEF4F4F1FEF5F6
      F3FEF5F5F5FDE9E9E9FBE8E8E8FFD8D8D869FDFDFD0300000000FCFBFB132D2C
      2DF00C0C0BFD312D28FB36312CFB36322DFB3B3630FB39342FFB12100EF92727
      27FDDBDADA3E00000000FEFEFE0100000000FFFFFF0600000000999999C5DBDB
      DCFFCCCCCDFBDFDFDFFFCCCCCCFFD0D0D0FFCFCFCFFFCFCFCFFFCECECEFEDCDC
      DCFBC1C1C1FFB7B7B74C00000000FAFAFA05FCFDFC00F9FCFB0054B27800219A
      4F0031A25C001F9A4E004BAE7200BADAC2002E9B5300229D530037B3750027A6
      610074C4980087E6CC00F9FFFF00FDFDFE00D1D1D1B3F3F4F4FAF9FBFDFFEBEE
      F1FEEDF2F7FFEDF6FCFFD6A47AFFD7AB88FFEDF5FBFFEBEAEAFFDFE1EAFFEADE
      ECFEFED8EAFEFAFCFBFDF5F5F5FDCECECE77FEFDFD0200000000FBFBFB133130
      31ED0B0B0AFE3D3934FD3D3934FE403C36FE393531FE34302CFF161513FC2727
      28FFDAD9D93F00000000FDFDFD0200000000FFFFFF06000000009E9E9EC5C0C0
      BEFFA3A3A0FBE2E2E2FFCCCCCCFFD0D0D0FFD0D0D0FFD0D0D0FFCECECEFEDDDD
      DDFBC3C3C3FFB8B8B84C00000000FAFAFA05FFFFFF00B3E0C7001EA4590031AC
      680024A65D0094D3B000F5FAF700F9FAF800DCECE00063B681001DA962005293
      44007E822D00DBE6D500EAD0B100D5B48100D2D3D4B3F1EEEBFAEFE3D8FFDFCB
      B8FEDDC0A6FFDCB99CFFDBB18EFFC36D27FFDFB083FFCCCDE5FF6062DAFF746B
      D9FFF9D8E9FDF9FAF9FEF3F3F3FED1D1D174FDFDFD0300000000FBFAFA133231
      31EE0B0C0BFF393531FE38342FFF2F2C28FF2E2B27FF33302CFF151412FC2A2A
      2AFFDAD9D93F00000000FDFDFD0200000000FFFFFF06000000009C9C9AC5DADA
      E4FFC9CADAFBE3E3E2FFCECECEFFD1D1D1FFD1D1D1FFD1D1D1FFCFCFCFFEDEDE
      DEFBC5C5C5FFB9B9B94C00000000FAFAFA05FFFFFF006AC797001FAC640027AE
      6A003EB77900FFFFFF00A5D3B50027AC6600E2F6ED00E7F2ED0047A05400BA73
      0300BD6F0000B86A0000C07E1500F3E8D500D2D3D4B3F1EDE9FAEDDECFFFDDC3
      ABFEDAB494FFD8A981FFD8A77FFFC36C26FFDDA36DFFC5C6E2FF5658D8FF685F
      D6FFF7D6E8FEFBFCFBFEF4F4F4FFD1D1D174FDFDFD0300000000FBFAFA143332
      33EE101010FF3B3833FE3D3934FF3B3732FF393531FF36332FFF191916FC2C2C
      2DFFD9D9D93F00000000FDFDFD0200000000FFFFFF0600000000A5A69AC5A5A4
      EFFF7A78ECFBE8E8E1FFCECECFFFD2D2D2FFD2D2D2FFD2D2D2FFD0D0D0FEDEDE
      DEFBC6C7C6FFBABABA4C00000000FAFAFA05F7FCF9004AC0880021B26E0029B5
      73002EB7760036BA7B0029B3700054C48F00EEFAF500F1F2EE0037AB6700A691
      2200C5810500AF9E4300F7EBD600FFFFFF00D1D1D1B3F5F6F6FAFCFEFFFFEBEE
      F1FEEEF2F6FFF0FAFFFFDAB08DFFD19B6FFFEEF3F6FFEBEBEDFFCACCEAFFD9CE
      ECFFFFDBECFEFAFCFBFEF6F6F6FFD0D0D075FDFDFD0300000000FAFAFA143635
      35EE181918FF43403BFE403C38FF383531FF383531FF45413CFF22211FFC2E2E
      2FFFD9D8D93F00000000FDFDFD0200000000FFFFFF0600000000A1A09FC5D4DC
      E2FFC0CBD6FBE7E6E5FFD0D0D0FFD4D4D4FFD3D3D3FFD4D4D4FFD2D2D2FEE0E0
      E0FBC9C9C9FFBBBBBB4C00000000FAFAFA05E6F6EF0041C38A0021BA77002ABC
      7D001CB8740077D3AA00EBFAF400FFFFFF00EDF5EF006EC4950017B9780039BC
      790051AD560061D8B200FFFFFF00F8FCF900D1D2D1B3F4F5F4FAF9FAF8FFF0F1
      EEFEEEF2F2FFE3D6C9FFD3A67EFFEDF1F3FFEBEDEDFFEAEAE9FFF2F5ECFFF7ED
      ECFFFBDAEAFEFAFDFBFDF4F5F4FFD0D0D075FDFDFD0300000000FAF9FA143F3F
      3FEE2E2F2EFF5B5853FE63605AFF5B5753FF4E4B47FF4C4944FF282725FC3131
      31FFD9D8D83F00000000FDFDFD0200000000FFFFFF0600000000ACA6AAC595BD
      A0FF609C70FBECE8EBFFCDCDCDFFD1D1D1FFD1D1D1FFD1D1D1FFD0D0D0FEDEDE
      DEFBCACBCAFFBCBCBC4C00000000FAFAFA05F6FCFA004CCA97001EBD7D0020BE
      7E0038C48B00FDFEFE00E5F0E70068CA9D003DC2890027BE800027BF800025BF
      820014BD7D0078D5AC00FEFDFC00F8FDFB00D8D4D8B0FFFBFFF9FFFFFFFFFFFC
      FFFDFEF8FEFFFAF4F9FFFCFAFFFFFBF6FBFFFBF5FAFFFAF4FAFFFBF6FCFFFFF2
      FCFFFFEAFCFDFFFFFFFEFFFBFFFFD4D2D472FDFDFD0300000000FAFAFA144141
      41ED313130FF5B5853FE64615BFF615E5AFF5A5854FF585652FF2C2B29FC3333
      33FFD9D8D83F00000000FDFDFD0200000000FEFEFE0600000000A0A0A0C5EDF1
      EFFFE3EAE6FBF6F5F6FFF1F1F1FFF2F2F2FFF2F2F2FFF2F2F2FFF1F1F1FEF9F9
      F9FBCCCCCCFFBCBDBC4C00000000FAFBFA05FFFFFF006FD6AE001ABE7F001DC0
      820033C58E00FFFFFF00BADCC50023BB7D00E1FAF300C3DECA0017B7760025C3
      88001DBE7E00A0E4CA00FEFFFE00F8FCFB00BCC8BCBBD2E5D2FAD6EAD6FFD7EC
      D7FED8EED9FFD9EFDBFFD9EFDAFFDAEFDCFFDAF0DDFFD9F0DCFFCFEBD2FFD0EB
      D2FFCBEACDFED3E9D2FDD2E6D2FFC1C8C180FEFEFE0300000000FCFCFC133F3E
      3FED212121FF57534EFE605B56FF645F5AFF645F5AFF6B6762FF403F3DFC3635
      36FFD8D7D83F00000000FDFDFD0200000000FFFFFF0600000000A3A3A3C4FFFF
      FFFFFDFCFCFAF5F5F5FEF7F7F7FEF6F6F6FEF7F7F7FEF6F6F6FEF6F6F6FDFFFF
      FFFAD4D4D4FEBEBEBE4B00000000FBFBFB04FFFFFF00B5EAD7001FC2870020C4
      8B0014C0830076DBB700EEFAF600FDFCFB00EAF3EC005DC4960017C085001EC3
      890034C79100E0F6EE00FFFFFF00FCFDFD00358E35ED008200FF008900FF048F
      08FF089612FF0D9D1DFF12A225FF15A62CFF15A62BFF16A52AFF4BB657FF32A7
      3BFF46AC4AFF1E991FFC008500FF5A975AC1FEFEFE0300000000FCFBFC124442
      43EC302F2EFF3F3D3BFE403E3CFF403E3CFF454441FF4B4946FF3F3E3DFC4141
      41FFD7D7D73E00000000FDFDFD0200000000FEFEFE05000000009A9B9AC5E3E4
      E4FBCBCCCBF7C2C2C2FBBEBEBEFEC3C3C3FFC0C0C0FEC0C0C0FCC4C4C4FAE1E1
      E1F7BFBFBFFCBEBFBE4C00000000FBFBFB05FCFEFD00F9FDFC005ED4AA0018C3
      89001AC58E000CC185003CCFA000B9E1CC0026BC830011C48A001AC58E0019C2
      88008BDFC200FFFFFF00FCFEFD00FEFEFE00368F36EC028702FD019101FE029B
      0CFF0FA220FE18A52EFD1EAE3AFD24B343FD24B344FD20AF3DFD85D192FD81D0
      8BFE7DD186FF65C068FC028802FD5D995DC0FEFEFE0200000000FBFBFB124544
      44E84E4D4CFB585755FA51504FFB484846FB484745FC4D4B4AFD3C3C3BFB3F3E
      3EFED7D7D73F00000000FDFDFD0200000000FBFBFB06000000006F706FC34849
      48FFA5A5A5FFE9E9E9FFEEEEEEFFDEDEDEFEE9E9E9FFEBEBEBFFD9D9D9FF6565
      65FF464746FFC8C8C84700000000FBFBFB04FBFDFD00FFFFFF00DDF6EF004CD0
      A3001BC68F0014C692000EC58F0013C58F000EC58F0015C792001FC68F006AD8
      B200F5FCFA00FDFEFD00FDFEFE00FFFFFF00359635F1018501FF236C25FF386D
      3CFF168724FF1CB539FF28BD4EFF31C75DFF32C960FF2AC153FF1BB73CFF168A
      26FF356D3AFF246A27FE028803FF589958C5FEFEFE0300000000FBFBFB13403F
      3FF93F3E3EFF414040FF494948FF464645FF3D3D3CFF555453FF3D3C3BFF3534
      35FFD8D7D83F00000000FDFDFD0200000000FDFDFD0200000000DFDFDF29D3D3
      D34DDADADA49D7D7D769D8D8D8E9D0D0D0FDDBDBDBFCD0D0D0ADE8E8E84BEBEB
      EB4AC8C8C844F6F6F60B0000000000000000FFFFFF00FCFEFD00FFFFFF00DAF6
      EE006ED9B6003ECE9F002DCC9B0028CB9A0030CC9C0043CFA10084E0C200EFFB
      F900FFFEFF00FDFEFE00FFFFFF00FEFEFE00499149D6187D18E7A4B2A4F9DFCC
      DDFE509656EC3EA64FE84CAF61E955B86FE956BA73E950B267E941AA54E85398
      59EDDFCCDDFEA2B1A2F7167E16E96D9D6DAD0000000000000000FDFDFD06D2D1
      D25BB7B6B675A3A2A3878E8D8E9E7E7D7DB3707070C75E5D5DD84C4B4BE35553
      54F0DAD9D93B00000000FEFEFE01000000000000000000000000000000000000
      00000000000000000000D1D1D176CACACAC0C2C2C2B7F7F7F713000000000000
      000000000000000000000000000000000000FEFEFE00FFFFFF00FAFDFC00FFFF
      FF00FBFFFF0089E3C8004DD1A60057D2A80051D3AA00A5EAD700FFFFFF00FFFF
      FF00FCFDFD00FFFFFF00FEFEFE00FFFFFF00D2D7D235DAD6DA30D0D7D0CBD9E1
      DAFECFD4CE5BD6CFD233CCCCC83BC5C5C53AC5C5C53ACCCCC83BD6D0D332CFD3
      CE5DDAE1DAFED2D6D2C9D7D4D733DFE3DF290000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF08FCFCFC22E9E8
      E844F4F4F4130000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF95FFFFFFFFFFFF
      FFFFFFFFFF9500000000000000000000000000000000FEFEFE03FEFEFE05FEFE
      FE05FEFEFE05FAFCFB0600000000F8FBF90742885FCAF9FBFA06000000000000
      000055B489B9CDEADD3600000000FBFCFB0400000000FCFCFC06F8F9FB0DF6F7
      F715F5F5F51BF1F4F321EDF0F325EFEFEF2BECF0EF2CEEF1F029F5F1F123FFF9
      F90CFFF5F50AF1FFFF0EFAFFFE05000000007E7E7EFF7E7E7EFF7E7E7EFF7E7E
      7EFF7E7E7EFFD6E6F22970AFD88FDCF6FC237E7E7EFF7E7E7EFF7E7E7EFFDCF3
      FE235CA5D2A3CFE2F0307E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E
      7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFFC9C9C9FFFFFFFFFF01B318FF01B3
      18FFFFFFFFFFC9C9C9FF7E7E7EFF7E7E7EFF0000000000000000000000000000
      00000000000000000000DFEAE3284A8963C1126C38FD67A884A374B4939675BC
      9B9526A26AED36B47EDDBEE6D547FCFEFD03F6F6F618DCDEDF59D9D1CC84D1C9
      C598CAC5C2A2CAC3C1A6C8C3B7B9CABBBEADC7BDBFADC3BDBFAFC2C5C4A395C3
      BCCB99C9C2B9C2D9D780D2E6E356FDF9FA0C7E7E7EFFB7B7B7FFB7B7B7FF0000
      000000000000BFE6F64005BAF5FA08C9F2F712BAD8ED23A8C7DC14B6D2EB08CD
      F0F704C3F6FBBEE6F641000000007E7E7EFF7E7E7EFFB7B7B7FFB7B7B7FFB7B7
      B7FFB7B7B7FFB7B7B7FFB7B7B7FFE1E1E1FFFFFFFFFF01B318FF01CB33FF01CB
      33FF01B318FFFFFFFFFFE4E4E1FF83837DFF00000000F3F3F36CEEEFEFC7EFEF
      F0C2EDEEEEC6D6DFD9BA579570C90B6A34FF177642FF177F49FF188851FF198B
      52FF1AA165FF1DB778FF33C086E2F2FBF80E00000000FDFEFE02F8FBFD07F9FC
      FD06DFEEF824DBF5F726F6FBFD098DF5E27E62F2D7A9CEFAF2339BF2E56700E2
      C0FF25E2C8DAF8FEFD07FCFEFE03000000007E7E7EFFC1C1C1FFA1F3F3FF0000
      000000000000C7ECFA3802BEF7FF02CEF8FF02DEFBFF00E9FDFF00E5FCFF00D8
      FAFF00CAF6FFC6EEF939000000007E7E7EFF7E7E7EFFC1C1C1FFF3F3F3FFF2F0
      E8FFF0E8CEFFF0E6C6FFF9F5EBFFFFFFFFFF01B318FF00DD4EFF00D34AFF00D3
      4AFF00DD4EFF01B318FFFFFFFFFFCFCFC8FF00000000F6F7F792F7F5F4FFF1E9
      E6FFEEEAE8FFF4F0F1FFF9FBFA2180B69983127F47F288C2A57796CBB26995DE
      C66A27AC73DE4DC090B6E4F5EE1BFDFEFD0200000000FEFEFE01FBFDFE04EBF6
      FC14299FE4D61E95E0E1D9E7FA2930FFD3DD00F4C8FF09F3C9F608F0C8FF11E8
      C4FE0CE0C2F4E5FAF81A00000000FDFEFE027E7E7EFFCACACAFFA3F4F4FF0000
      0000FDFEFE02B8E7F75A4DD0F7FF4DD7F8FF43DCF9FF29DAF9FF11D3F8FF0FCC
      F8FF12C7F6FFA5E4F75BFDFEFE02A5A5A5FF7E7E7EFFCACACAFFF4F4F4FFF1EC
      DBFFEFEADAFFEFECE1FFFFFFFFFF01B318FF00E572FF00E572FF00DC65FF00DC
      65FF00E572FF00E572FF01B318FFFFFFFFFF00000000F9FBFB8AF7F0ECFCF6D6
      C7F8F0E0DAFCEFF0F0FBFAF6F794E8EEEA82A7CCB9D4CCE0D587CFE2D879C8F2
      EB79A8D5C1CCCEEBDF96D9EBE362FFFFFF02000000000000000000000000DDF1
      FB22008FE2FF0C96E3FF1C92E0E330E4D5DA1EFDC9FB46DEBAFE47D7B2FE65FA
      D2FB12E2C5FFC2F5EE3D00000000FAFEFD057E7E7EFFD4D4D4FFA5F6F6FFF4FC
      FD0D95D5EB774BC3EAF666D4F7FF66D8F8FF66DBF8FF64DCF8FF62DBF8FF62D9
      F8FF69D7F8FF41C2EAF692D5EC79A5A5A5FF7E7E7EFFD4D4D4FFF6F6F6FFF2F0
      EBFFE5B82CFFE5B82CFFFFFFFFFF4DCA5DFF01B318FF01B318FF00E483FF00E4
      83FF01B318FF01B318FF4DCA5DFFFFFFFFFF00000000FAFBFC8CF9F2EFFFF6D8
      CAFBF1E2DCFFF1F1F1FFEAE8E6FFEEEAEAFFEFE8E7FFEBE4E4FFEAE2E3FFEEDC
      DDFFE7DDDFFFF3EBECFFF4EDF0D30000000000000000F1FAFE0E93CFF26C4BB8
      F0B419ABF0FD74E0FAFB46B9F1FF0084D8FF1EDED3FF5CE2B5FF37A38AFE62ED
      CAF921E8C9FE97EDE26800000000F7FDFC087E7E7EFFDEDEDEFFA7F8F8FF73B7
      E39D54BDE8F66DCEF5FF6ED4F5FF72D9F7FF71DAF8FF71DBF7FF71DCF7FF72DB
      F8FF6DD5F6FF6DD2F5FF5EC3ECF77FC4E6957E7E7EFFDEDEDEFFF8F8F8FFF6F6
      F6FFEFEEE8FFE5B82CFFF8F8F5FFFFFFFFFFFFFFFFFF01B318FF00EDA5FF00ED
      A5FF01B318FFFFFFFFFFFFFFFFFFD5D5C7FF00000000FAFBFC8CFAF3F0FFFADC
      CEFBF5E7E0FFF5F6F7FEF0EEEDFAEFEEECFAEFEAF1FDEEE7EEFAE6E5E3FADEDF
      DDFAE0DFDDFADCDAD8FBE9E9E7C0000000000000000057CDF9AC00ABF3FF1AB2
      F3FF53B5D0FF4FA2B5FF76DEF1FD4EC0F5FD0081DAFF40DED8FE44BB93FF57D5
      B4FA31F0CFFE6CE5D69300000000F5FDFC0AA5A5A5FFECECECFFD3FBFBFFF7D7
      FD2CC3E5F64656B4E3BC62C1E5D58DDDF6E479DCF6FF7DE0F7FF79DCF5FF8FDF
      F6E467C4E8D550B2E2C2C0E3F549A5A5A5FFA5A5A5FFECECECFFFBFBFBFFFBF9
      F4FFF8F6F2FFF2DC96FFF8F6F2FFF1EFE8FFFFFFFFFF01B318FF01B318FF01B3
      18FF01B318FFFFFFFFFFF6F6EAFFB1B1A3FF00000000FAFBFC8CFAF3EFFFFADB
      CCFBF7E8E1FFF7F8F9FFF2F0EEFFF3EEF5FF99CDBCFF9BC7C3FFEAE5ECFFE4E2
      DFFFE3E1DFFCDFDDDBFFE4E4E1C400000000FEFEFE01B0E8FD5E12B5F6F72DC0
      F7FB70CDE1FC4EA4B9FF428EA3FE72D9EBFF53C7F8FF008AE2FF2092A1FF54C8
      9EFB42F6D5FE41DECBBE00000000F9FEFD06A5A5A5FFE8E8E8FFD2FBFBFF0000
      000000000000F9FBFD06F9FCFE07BCE3F75663CEEFF588EEF7FF63CEEEF7BBE3
      F658FAFDFE07F9FBFD0600000000A5A5A5FFA5A5A5FFE8E8E8FFFBFBFBFFF9F6
      EEFFF7F6F3FFF2DC96FFF8F7F3FFF3F2EFFFF5E2A7FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFDFFEDEDE7FFA8A8A4FF00000000FAFBFB8BFAF4F1FFF9E0
      D3FBF8EBE6FFF9F9FAFFF5F2F1FFF4F1F4FFADCDD9FF8DBEB0FFE7E6E7FFE8E5
      E3FFE5E3E2FCE2DFDEFFE6E6E5C300000000FBFDFE0500000000C2EDFD4B11B6
      F6F728BFF7FF7BEAFFFC53AABFFF327386FE70D6E8FF5ACFFAFF057ED8FF2FB1
      BEFC58FFD1FF1FDAC5E0F7FCFC0800000000A5A5A5FFE4E4E4FFD1FAFAFF0000
      0000000000000000000000000000EBF7FC178EDAF49263D6F1F48EDBF395E9F7
      FC19000000000000000000000000A5A5A5FFA5A5A5FFE4E4E4FFFAFAFAFFF8F8
      F6FFF2DC96FFF2DC96FFF8F7F6FFF8F8F8FFF4F4EEFFF0D728FFF9F026FFFEFE
      EBFFFDFDF9FFFBFBFAFFE5E5E4FFA5A5A5FF00000000F8F8F98EFDFEFFFFFCFD
      FFFBFCFDFEFFFBFAFCFFF7F6F7FFF7F8F8FFF7F3FAFFF6F1F9FFEEEFEEFFEAE9
      E9FFE9E9E9FCE4E4E4FFEAE9E8C60000000000000000FCFEFE0300000000CCF0
      FE3F1CB9F6ED21B9F2FF76E3FAFB5BB7CDFF3A7F92FE71D5E6FE23A9ECFF0187
      D8FE32C6D7FE0DDCC0FCD6F7F42900000000A5A5A5FFE1E1E1FFD0F9F9FF0000
      000000000000000000000000000000000000E9F7FC1CBAE7F854E9F8FD1C0000
      0000000000000000000000000000A5A5A5FFA5A5A5FFE1E1E1FFF9F9F9FFF9F9
      F9FFF8F8F8FFF8F8F8FFF9F9F9FFF9F9F9FFFAFAF6FFFCFCF2FFFEFEF1FFFCFC
      F6FFFBFBF8FFF9F9F9FFE1E1E1FFA5A5A5FF00000000F7F4F092FDF8F2FFFCF7
      F1FBFCF7F2FFFBF6F1FFF6F0EBFFF4EEEAFFF1EBE5FFEEE8E2FFEDE5E1FFEAE1
      DDFFE9DFDBFBE7DDD9FFE8E1DEC9000000000000000000000000FBFEFE040000
      0000D6F3FD3424BCF7E81CB8F3FF75E3FEFB61B7C9FF26AAE2FF029DE2FE048C
      E0FD0681E2F906C8C5F9B7F5EA4800000000A5A5A5FFDDDDDDFFDDDDDDFFDDDD
      DDFFDDDDDDFFDDDDDDFFDFDFDDFFE7E7DBFFF4F4D9FFFBFBD8FFF6F6D9FFE9E9
      DBFFE0E0DCFFDDDDDDFFDDDDDDFFA5A5A5FFA5A5A5FFDDDDDDFFDDDDDDFFDDDD
      DDFFDDDDDDFFDDDDDDFFDFDFDDFFE7E7DBFFF4F4D9FFFBFBD8FFF6F6D9FFE9E9
      DBFFE0E0DCFFDDDDDDFFDDDDDDFFA5A5A5FF00000000C2D1E4949FB8D7FDA5BD
      D7F9A6BFD8FDA8C1D8FDABC3D7FDAFC5D6FDAFC4D5FDABC3D4FDA5C3D3FDA1C1
      D1FD9DC0CFFA98BECEFDA7C7D3CC00000000000000000000000000000000FCFE
      FE0300000000E0F6FE282FC0F8DD1CB8F4FF38C3F9FB04A8EBFB03A1E8FC00A4
      E0FF07B5D4F817D9C2E88DEBE172000000000101ABFF0101ECFF0101ECFF0101
      ECFF0101ECFF0101ECFF0101EBFF0202EAFF0202E9FF0202EAFF0101EBFF0101
      ECFF0101ECFF0101ECFF0101ECFF0101ABFF0101ABFF0101ECFF0101ECFF0101
      ECFF0101ECFF0101ECFF0101EBFF0202EAFF0202E9FF0202EAFF0101EBFF0101
      ECFF0101ECFF0101ECFF0101ECFF0101ABFF000000005D9FFEA2006DFFFF0074
      FFFF007AFFFF0081FFFF0087FEFF008DFEFF0193FEFF0099FEFF009FFFFF00A5
      FFFF00ABFEFF00B1FFFF20BDFBDF000000000000000000000000000000000000
      0000FDFEFE0200000000E6F8FE203DC2F5D404AFF1FB0AABF2F500B6E1FF22F3
      C0DD1DE7C1E200D7BDFF5CE2D4A3000000000101A3FF0101D9FF0101D9FF0101
      D9FF9999F0FFA1A1F0FFBBBBEFFFD8D8EEFFDCDCEEFFC4C4EFFFA8A8F0FF9B9B
      F0FF0101D9FF0101D9FF0101D9FF0101A3FF0101A3FF0101D9FF0101D9FF0101
      D9FF9999F0FFA1A1F0FFBBBBEFFFD8D8EEFFDCDCEEFFC4C4EFFFA8A8F0FF9B9B
      F0FF0101D9FF0101D9FF0101D9FF0101A3FF000000006EA9FD911B7BFFE82386
      FEE3218BFFE72591FEE72897FEE72B9EFDE72CA2FDE729A6FEE726AAFEE722AF
      FEE722B3FEE51DB8FEE73BC4FBC5000000000000000000000000000000000000
      000000000000FCFEFE0300000000F0F9FC1258CEFABE05AEF7FF37C8ECC8F5FA
      FD0AE7F6FC18A4F1E75BE0F9F61F0000000001019BFF0202C6FF0202C6FF0202
      C6FF0202C6FF0202C6FF0202C4FF0202C4FF0202C4FF0202C5FF0202C6FF0202
      C6FF0202C6FF0202C6FF0202C6FF01019BFF01019BFF0202C6FF0202C6FF0202
      C6FF0202C6FF0202C6FF0202C4FF0202C4FF0202C4FF0202C5FF0202C6FF0202
      C6FF0202C6FF0202C6FF0202C6FF01019BFF00000000F5F9FE0AF0F6FE10F3F8
      FE0FF5F9FE0FF6FAFE0FF8FBFE0FFAFCFE0FFAFCFD0FF9FBFE0FF7FBFE0FF5FB
      FE0FF3FBFE0FF1FAFF10F2FBFF0D000000000000000000000000000000000000
      00000000000000000000FDFEFE0200000000ECF9FE158BDDFB7BF0FAFE0F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFEFF02000000000000000000000000FEFE
      FE01FDFEFE02F6FDFC09FCFCFC030000000000000000F5F5F50AE8E8E817E5E5
      E51AE5E5E51AE5E5E51AE5E5E51AE5E5E51AE5E5E51AE5E5E51AE5E5E51AE5E5
      E51AE5E5E51AE5E5E51AE8E8E817F5F5F50A00000000ECEBED00A7A3A900A4A0
      AB009F9AA400BCB9BE00FFFFFF00FFFFFF00FFFFFF004646C0004141AE00FFFF
      FF00FDFDFF00F8F8FC0000000000FAFAFD00E7E7E718E2E2E21DDCDCDC23D9D9
      D926DDDDDD22DDDDDD22DDDDDD22F7FEF81681B7859B47B148D8D3D1D82EE1E1
      E11EE8E8E817FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A3A399698E8E7D878E8E
      7D878E8E7D878E8E7D878E8E7D878E8E7D878E8E7D878E8E7D878E8E7D878E8E
      7D878E8E7D878E8E7D878E8E7D87A3A39969FDFEFF00D8D7DB0016149B000908
      B3000807B8002A28A000C1C1E900C1C1CA001E1E9A002222C4003333BF000C0C
      7500F5F5F500F8F8FD00FBFBFD00FBFBFE00CBCBCB84BDBDBDC8C0C2C3CFBDBE
      BECDBEBEBECEBCBEBCCEC9BFC9CE8BAF90D021DA0EF91EF404FF58AE57DCC1B9
      C2D0E4E5E446FFFFFF00FEFEFE01FFFFFF0000000000FDFDFD02E6E6E625E1E1
      E12DE2E2E22BE1E1E12CE1E1E12CE1E1E12CE1E1E12CE1E1E12CE2E2E22BE0E0
      E02DEDEDED1A000000000000000000000000000000009B9B8A81F9F9E9FFF3F3
      E2FFF3F3E2FFF3F3E2FFF3F3E2FFF3F3E2FFF3F3E2FFF3F3E2FFF3F3E2FFF3F3
      E2FFF3F3E2FFF3F3E2FFF9F9E9FF9B9B8A81FDFEFF00D9D7DD000E0DB0000202
      CB000202D6002625B2002626CD001E1EB4004141BB00B8B8CF009393C9001212
      B600D1D1E300FCFCFF00F9F9FC00FBFBFE00BABABAC1D5D4D4FFDED6CFFFDFDD
      DDFFDEE0DFFFE6E1E5FFA6C7AAFF2AD11DFF1DFF00FF1DFD02FD1CEB06FF6EB8
      6FFFE0DDE159FFFFFF00FDFDFD03FFFFFF0000000000F9F9F919E0E0E0F3E0E0
      E0FAE1E1E1F8E2E2E2FAE2E2E2FAE3E3E3FADFDFDFFAE1E1E1FAE2E2E2F5DFDF
      DFFADBDBDB7E00000000FEFEFE020000000000000000A9A9987AF4F4E4FFFFCC
      44FFFECB43FFECD286FFD9D9C8FFD7D7C6FFD5D5C4FFD4D4C3FFD2D2C1FFD0D0
      BFFFCECEBDFFCDCDBCFFF4F4E4FFA9A9987AFDFDFE00DCDADF000B0ABD000000
      DA000000E9002523C5002424AD000000B3004242D000F2F2EA00B2B2E6000A0A
      C200CECEE700FDFDFE00F9F9FD00FBFBFE00BABFC5B9D6CFC6F9DB9657FCCEBD
      ACFBB4B5BBFC9DAEA1FC18BD14FC15F703FC21C81AFE36B735FE18EA06F91BD8
      0EFC78B37FA1FFFFFF00FDFEFD02FEFEFE0100000000FAFAFA1AF3F3F3F8DCDC
      DCFFCACACAFDCFCFCFFFCACACAFFCFCECEFFEAEBEBFFD9D9D9FFD9D9D9FAECEC
      ECFFE0E0E08000000000FEFEFE030000000000000000AFAF9E77F5F5E6FFFFCC
      44FFFFEE88FFECD286FFF5F5EEFFF5F5EEFFF5F5EEFFD4D4C3FFF5F5EEFFF5F5
      EEFFF5F5EEFFCDCDBCFFF5F5E6FFAFAF9E77FEFEFF00D9D8E5003934A9006A62
      BA006B66CD007C76D0009891BB00524D9D004D4ED1004444D3005D5DD6001E1E
      B800E3E3EE0000000000FAFAFD00FBFBFE00B8B9BABBDAD9D8FCECDDCEFFDFDB
      D6FED7D8D8FFD4D6D6FF6DC170FF10B411FF8FBA95FFDAD2DEFF45AE4AFE10DD
      07FB19CB16FF7BBA8393FFFFFF00FAFDFA0500000000FAFAFA19F2F2F2F7D8D8
      D8FEBBBBBBFCC5C5C5FE939394FE717071FEBEB9B6FECFCECEFED5D5D5F9E9E9
      E9FEE0E0E07F00000000FEFEFE020000000000000000C5C5B858F6F6E9FFF6DC
      92FFF5DC91FFECDFB3FFE3E3D4FFE2E2D3FFE1E1D2FFE0E0D1FFDFDFD0FFDEDE
      CFFFDDDDCEFFDDDDCEFFF6F6E9FFB3B3A175FEFEFE00DBDAF00070658800BFB1
      7900C3BC9200CBC69E00BBB29000FFFFFF004848C2004947D2005858DA00FFFF
      FF00FFFFFF00F9F9FD00FBFBFE00FBFBFE00B6B7B7C1DEDDDDFDE9DDD4FFEBE9
      E8FEEAEBEBFFEEEBEDFFE7E4E8FFB6CBBAFFE4E2E3FFE7E5E6FFD3D5D5FF45AB
      4DFE0FCF12FB19BD1FFF82BC8A8FFFFFFF0000000000F9F9F91AF3F3F3F8E5E5
      E5FFD1D1D1FDD9D9D9FFB5B6B6FF88B4C3FF619DBFFF9E9D9DFFDEDDDCFAF0F1
      F1FFDEDEDE8000000000FEFEFE020000000022991AFFCDE3C840F7F7EBFF2299
      1AFF22991AFF22991AFF22991AFF22991AFF22991AFF22991AFF22991AFF2299
      1AFF22991AFF22991AFFF7F7EBFFB6B6A573FDFDFE00DEDDF100847DA100908A
      7000868271006D6B56006D684B007F7353006963B100F8F7F100FFFFFF00FFFF
      FF00FAFAFD00FBFBFE00FBFBFE00FBFBFE00B5BBC0C2E1D9D1FEDE9857FFD9C5
      B4FEC5C9CDFFBBBBBAFFC5C6C5FFC9C6C8FFC3C4C3FFA8A9A8FEC3C0C2FECFD0
      D0FF349E40F70FC51BFF14B521FF64AF6DB100000000F9F9F91AF4F4F4F8F0F0
      F0FFE4E4E5FDE7E7E7FFE9E8E9FFADF1FBFF6EDFFFFF59A0C9FFA5A1A1FAF0EF
      EEFFE1E2E28000000000FEFEFE02000000004DB642E035AC28FFF8F8EEFF35AC
      28FF62EA51FF62EA51FF62EA51FF62EA51FF62EA51FF62EA51FF62EA51FF62EA
      51FF62EA51FF35AC28FFF8F8EEFFB9B9A772FDFDFE00E1E0EE007C77BF00938E
      BA008F8BC2007F7BB3006F69A200645BA0005652C000FBFBFB0000000000F8F8
      FC00FBFBFE00FBFBFE00FBFBFE00FBFBFE00B4B4B4C1E7E7E7FDFAF2E9FFF1EF
      ECFEEEEFF0FFECECECFFEBEBEBFFE7E8E7FFEAEAEAFFE8E8E8FEE7E8E8FCE3E1
      E3FECECECF7940AB42BF11AD21FF5CA567BB00000000F9F9F91AF6F6F6F8F0F0
      F0FFE0E0E0FDE2E3E3FFE3E2E1FFDAE3E5FFA2EDF7FF70DEFFFF589EC8F9B3B0
      AFFEDEDCDB7F00000000FEFEFE030000000042B932FFD1E7CC40F9F9F1FF42B9
      32FF42B932FF42B932FF42B932FF42B932FF42B932FF42B932FF42B932FF42B9
      32FF42B932FF42B932FFF9F9F1FFBCBCAB70FCFDFF00E7E6EE006262CD005B5C
      DD005454DE004E4EE1004748DF003334D5005D5CC800FBFBF80000000000FAFA
      FD00FBFBFE00FBFBFE00FBFBFE00FBFBFE00B4B6B7C1E9E7E6FDF1DECFFFF9F5
      F2FEFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFDFDFDFFF5F5F5FDF6F6F6FAE1E2
      E1FFE4E0E355F6F8F714A1C7A678FFFFFF0000000000F9F9F91AF7F7F7F8F2F2
      F2FFDFDFDFFDE2E2E2FFE1E2E2FFE4E1E0FFDCE2E5FFA1ECF5FF71DFFFFA63A4
      CAFFA0A0A29500000000000000000000000000000000CFCFC352FBFBF4FFFAE0
      99FFF9E099FFF0E3BAFFE7E7DBFFE6E6DAFFE5E5D9FFEDEDE4FFE3E3D8FFE2E2
      D7FFE1E1D6FFE1E1D5FFFBFBF4FFBFBFAE6EFDFDFE00E7E5EF007372C6007374
      D1006B6BD1006464D0005D5DCC004E4EC5006867C200FBFBF90000000000FAFA
      FD00FBFBFE00FBFBFE00FBFBFE00FBFBFE00B5B9BFC0E8E0D8FDE29F60FFE7D4
      C3FDD0D3D4FFD7D6D5FFD8D8D8FFD3D3D3FFC9C9C9FFF1F1F1FEFBFBFBFBE6E6
      E6FFD8D8D865FFFFFF00FFFFFF00FEFEFE0100000000F9F9F91AF5F5F5F8FFFF
      FFFFFBFBFBFDF2F2F2FFF4F3F3FFF1F3F3FFECEAEAFFE2EAEEFFA6F0FAFC6CE0
      FFFE699CB3DDBBBBBB44000000000000000000000000C1C1B06DFCFCF7FFFFCC
      44FFFFEE88FFECD286FFFCFCFAFFFCFCFAFFFCFCFAFFD4D4C3FFFCFCFAFFFCFC
      FAFFFCFCFAFFCDCDBCFFFCFCF7FFC1C1B06DFDFDFF00E7E6ED00807FC4008282
      D0007979CD006F6FCA006B6BC8005C5DC2007170BC00FBFBF900FAFBFE00FAFA
      FD00FBFBFE00FBFBFE00FBFBFE00FBFBFE00B2B2B2C6D2D2D2FFDED7CFFECDCB
      C9FEAFAFB0FED8D8D7FFE0E0E0FFD6D6D6FFD4D4D4FFF8F8F8FEFEFEFEFBEAEA
      EAFFDADADA62FEFEFE01FDFDFD06FFFFFF0000000000F8F8F81AF7F7F7F8F0F0
      F0FFDBDBDBFDE0E0E0FFDEDEDEFFE1E1E1FFFCFDFEFFFFFFFEFFF2FBFDFEA7DC
      E1FDDDDBD2FF8E8CA3D6BDBDCC430000000000000000C4C4B36BFDFDF9FFFFCC
      44FFFECB43FFF5CE64FFEAD184FFE8CF82FFE6CD80FFE5CC7FFFE3CA7DFFE1C8
      7BFFDFC679FFDEC578FFFDFDF9FFC4C4B36B00000000F6F5F6009F9DC3008F90
      CD008888CA008787CB007979C4006E6FBD00A5A2C500FCFCFD00F9F9FD00FAFA
      FD00FBFBFE00FBFBFE00FBFBFE00FBFBFE00E2E2E259C7C7C7E5DCDDDFFFDADA
      DBFBD4D4D4FFE9E9E9FEFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFEFFFFFFFBEDED
      EDFFDADADA63FFFFFF00FEFEFE03FFFFFF0000000000F7F7F719FDFDFDF7BCBC
      BCFD636363FC727272FD6D6D6DFD777777FDF5F5F5FDFFFFFFFDFFFFFFFEFBF2
      EEFDBFC8E0FF578BF4FFAFBAE4610000000000000000C6C6B56AFEFEFCFFFFCC
      44FFFFEE88FFFDCA42FFFCEB85FFFAE983FFF7E681FFF6C33BFFF3E27CFFF1E0
      7AFFEFDE78FFEFBC34FFFEFEFCFFC6C6B56AF8F7FB00FCFCFF00DFDDE3008F8F
      BC009C9CD000DEDEED008383C3009190B900EEEDEE00FBFBFE00FAFAFC00FBFB
      FE00FBFBFE00FBFBFE00FBFBFE00FBFBFE00FFFFFF00E9E9E944DDDCDCF4FFFF
      FFFFE7E7E7FBDCDCDCFEFDFDFDFEFAFAFAFEFAFAFAFEFCFCFCFDFEFEFEFAEEEE
      EEFED9D9D968FFFFFF00FEFEFE03FFFFFF0000000000F9F9F91AF7F7F7F8FFFF
      FFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F4F4FFECECEDFCFBFD
      FBFFC3CADBAFD4E2FA5C00000000FDFDFE0300000000C8C8B868FFFFFEFFFFCC
      44FFFECB43FFFDCA42FFFBC840FFF9C63EFFF7C43CFFF6C33BFFF4C139FFF2BF
      37FFF0BD35FFEFBC34FFFFFFFEFFC8C8B868FBFBFD00F9F9FC00FEFEFF00C8C6
      D2008C8BBE009697CE008C8BB900DCDADF00FDFDFF00F9F9FC00FBFBFE00FBFB
      FE00FBFBFE00FBFBFE00FBFBFE00FBFBFE00FDFDFD07FFFFFF00E9E9E946D9D9
      D9F4E2E2E2FFE5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF1F1
      F1FFD8D8D86AFFFFFF00FEFEFE03FFFFFF0000000000FAFAFA19EFEFEFF1F6F6
      F6F8F5F5F5F6F6F6F6F8F6F6F6F8F6F6F6F8F6F6F6F8ECECECF8E7E7E7F2EFEF
      EFF8E9E9E77000000000FEFEFE030000000000000000CACAB967FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCACAB967FBFBFE00FAFAFD00F9F9FC00FBFA
      FB00B3B0C5008B8AB400C4C2CE00FEFEFF00F9F9FC00FBFBFD00FBFBFE00FBFB
      FE00FBFBFE00FBFBFE00FBFBFE00FBFBFE00FFFFFF00FEFEFE02FFFFFF00E7E7
      E747C0C0C0E6D5D5D5F7E6E6E6F1E4E4E4F3E4E4E4F3E3E3E3F2E5E5E5EFDADA
      DAF9DCDCDC62FFFFFF00FEFEFE03FFFFFF0000000000FEFEFE02FAFAFA19F9F9
      F91AF9F9F919F9F9F91AF9F9F91AF9F9F91AF9F9F91AFBFBFB1AFDFDFD19FAFA
      FA1AFDFDFE0CFEFEFE02000000000000000000000000D8D8CB4DCBCBBB66CBCB
      BB66CBCBBB66CBCBBB66CBCBBB66CBCBBB66CBCBBB66CBCBBB66CBCBBB66CBCB
      BB66CBCBBB66CBCBBB66CBCBBB66D8D8CB4DF9F9FD00F9F9FD00F8F8FC00F9F9
      FE00F2F1F200BFBBBD00FDFDFE00F7F8FD00F9F8FC00F9F9FD00F9F9FD00F9F9
      FD00F9F9FD00F9F9FD00F9F9FD00F9F9FD00FFFFFF00FFFFFF00FCFCFC08FFFF
      FF00DBDBDB5FC0C0C0A8C1C1C18EC2C2C293C2C2C293C2C2C294C2C2C28FBDBD
      BDACECECEC37FFFFFF00FEFEFE02FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D9D9DD00A9A9AD00ABAC
      B000A6A8AE00A6A8AE00A7A8AD00A8A8AC00AAABAF00E9E6E700FAFDFF00F9FF
      FF00FAF7F900F9F6F600FAF6F600FAF7F900F5F5F50AE8E8E817E5E5E51AE5E5
      E51AE5E5E51AE5E5E51AE5E5E51AE5E5E51AE5E5E51AE5E5E51AE5E5E51AE5E5
      E51AE5E5E51AE8E8E817F5F5F50AFFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFF00C7C7CA00A1A1A400ADAD
      AF00B4B0B000B3B1B200B5B4B500B5B5B800A6A5A700DFE5ED00FCF1E800F8B8
      8100FAF7F700FBFFFF00FAFFFF00FBFFFF00A3A399698E8E7D878E8E7D878E8E
      7D878E8E7D878E8E7D878E8E7D878E8E7D878E8E7D878E8E7D878E8E7D878E8E
      7D878E8E7D878E8E7D87A3A39969FFFFFF0000000000DBD7CF40B0A59585AEA3
      9282ADA29184AFA49385AFA49485ADA29185ADA29085ADA29085ADA29085ADA2
      9184AEA49382B0A59585DCD8D13E0000000000000000FEFEFD02D3C9BF53C3B5
      A771C5B8A96EC1B1A16FBFB09F70C0B09F70C0B09F70C0B09F70C0B09F70C0B0
      9F70C1B2A06EBFB09E71D2C7BB5400000000FCFCFE00E7E8EB00DDDDE000DEE0
      E500B9D1EF0080B6F800DCE7F800FFFEFE00F3F7FE00F3D6BF00FAA05200F890
      3700F9CCA600FAD2B100FACFAD00FAE2D0009B9B8A81F9F9E9FFF3F3E2FFF3F3
      E2FFF3F3E2FFF3F3E2FFF3F3E2FFF3F3E2FFF3F3E2FFF3F3E2FFF3F3E2FFF3F3
      E2FFF3F3E2FFF9F9E9FF9B9B8A81FFFFFF0000000000A89C8A92BBB4AAFFDBDA
      D7FFD7D4D0FFD0CCC7FFCDC9C2FFD5D2CEFFD7D5D1FFD7D4D1FFD7D4D0FFD7D4
      D0FFD9D7D4FFBAB2A8FFABA08F8D00000000FFFEFE0200000000C2996CD7BE90
      5CFFB88955FFE4CDB2FFEBD5BCFFE9D3B9FFEAD4BAFFEAD4BAFFEAD4BAFFEAD4
      BAFFE9D2B8FFEBD7BFFFCCAE8CD700000000FBFBFD00E9EAEE00E1DCDA00A5C6
      E70054A8F90055A9FA0058ABF800CDD8E700F5CEA900F7B06C00F89E4800F99D
      4900F8963C00F78F3000F88C2B00F9B47800A9A9987AF4F4E4FFFFCC44FFFECB
      43FFECD286FFD9D9C8FFE0E0D0FF0A8107FF0A8107FF0A8107FFDCDCCCFFCECE
      BDFFCDCDBCFFF4F4E4FFA9A9987AFFFFFF0000000000B0A59588C7C3BBF9AEA4
      96F3A09583FAD6D4D1F9EDEFF0F9B1A99CF9A29685F9A69B8AF9A69B8BF99E93
      81FABFB8AEF3D2CEC9F9B0A5958300000000FEFEFE02DBD9D75AB6A28CE4CCA5
      76FABA8B56F9F4E3D1FBFBEDDDFBF9EAD9FBFAEBDAFBFAEBDAFBFAEBDAFBFAEB
      DAFBF9E9D9F8FDF0E2FBD4B99BCB00000000FFFFFF00F2F2F600E9E5E500C3D7
      EB0072BEF90072C3FB005FBCFE00C2C7CE00FFD4A200FDDDB100F9C88E00F9C1
      8100FEC48300FFC17D00FDB77200F9C08E00AFAF9E77F5F5E6FFFFCC44FFFFEE
      88FFECD286FFF5F5EEFFF5F5EEFF1D9416FF27DE16FF1D9416FFF5F5EEFFF5F5
      EEFFCDCDBCFFF5F5E6FFAFAF9E77FFFFFF0000000000ADA29189CAC6BFFFDEDD
      DCF9D7D4D1FEE1E0DFFFE5E5E4FFDAD9D6FFD8D6D2FFD8D6D3FFD8D6D3FFD7D4
      D1FEE1E1E0F9CCC8C2FFB0A5958400000000FEFEFE01FBF8ED23B3997BD9B98F
      5CFEBE9059FCEEDAC4FFF5E3CEFFF3E0CAFFF4E1CBFFF4E1CBFFF4E1CBFFF4E1
      CBFFF3DFC9FCF8E6D3FFD2B698CD00000000E0E0E300B4B5B900E9E4E400BCE0
      F5008DE3FC0092DFFD0080CAF900E5EEF900D4C7BD00DABD9E00FDEAC700F8E2
      C100E3C29C00E1C09900EAC29700FAD1AB00B3B3A175F6F6E9FFFFCC44FFFECB
      43FFECD286FFD9D9C8FFE2E2D3FF269D1CFF31E020FF269D1CFFDEDECFFFCECE
      BDFFCDCDBCFFF6F6E9FFB3B3A175FFFFFF0000000000AFA4938AC2BDB4FFAA9F
      90F99D917FFFD0CDC9FFE7E7E7FFADA496FF9E9281FFA29685FFA29686FF9C90
      7EFFB9B2A8F9CCC7C1FFAFA4948500000000FFFFFE02E5E7E555B7A189E5CFA8
      76FDBD9059FDEEDAC4FFF5E2CBFFF3DFC9FFF4E0CAFFF4E0CAFFF4E0CAFFF4E0
      CAFFF3DEC6FCF8E6D1FFD2B798CE00000000E3E3E600A3A4A700AAA8AA00DDE7
      EF00A8E5FF0097E5FC00AAE2FB00C8CDD30090929700BEB4AD00EED8C500F7D5
      B300DCCCBE00CECCCC00CAC4C100FCFAFC00B6B6A573F7F7EBFFFFCC44FFFFEE
      88FFECD286FFF7F7F1FFF7F7F1FF2BA220FF3CE32BFF2BA220FFF7F7F1FFF7F7
      F1FFCDCDBCFFF7F7EBFFB6B6A573FFFFFF0000000000ACA1908ACBC7C0FFE2E1
      E1F9DAD8D5FFE2E2E1FFE6E6E6FFDDDCDAFFDBDAD7FFDCDAD8FFDCDAD8FFDAD7
      D5FFE4E4E4F9CCC8C2FFAFA4948500000000FEFEFE01FCFCF61DBA9C79D8C299
      63FEC2955EFCEED9C2FFF4DFC6FFF3DBC0FFF5DCC1FFF3DBC0FFF4DBC1FFF3DA
      BFFFF2DAC0FCF7E4CFFFD2B798CE00000000FFFFFF00F5F7FB00B6B9BE00C4C0
      C000EDD5C500C8E3F800D9D9DF00ACA9AA00B9B8BB00B8D1ED006DAAF20085AB
      D800EAEDF400F7F8FC00F1F3F800FBFBFF00B9B9A772F8F8EEFFFFCC44FFFECB
      43FFECD286FFD9D9C8FFE4E4D7FF30A724FF4AE539FF30A724FFE0E0D3FFCECE
      BDFFCDCDBCFFF8F8EEFFB9B9A772FFFFFF0000000000AFA4948AC2BCB3FFA79C
      8CF99A8D7AFFCFCCC7FFE7E7E7FFAAA192FF9B8E7CFF9F9381FF9F9381FF998C
      79FFB7AFA4F9CCC7C1FFAFA4948500000000FEFEFE02E4E5E25BB4A08BE6D0AA
      77FDC4965EFDEDD8C1FFF4DDC2FFF1E2D0FFEFE2D3FFF3E5D6FFF0E2D4FFF5E8
      DAFFF2DCC3FCF6E1CAFFD3B79ACE00000000F8F7F900FCF7F600F7F4F400D4C9
      C200F5944000F7B57E00CFCCCC00CFD4DB00DCDDE2006DB3F7005AAEFD0052AF
      FF0078BAF800F0EDEE00F2F3F60000000000BCBCAB70F9F9F1FFFFCC44FFFFEE
      88FFECD286FFF9F9F5FFF9F9F5FF35AC28FF57E846FF35AC28FFF9F9F5FFF9F9
      F5FFCDCDBCFFF9F9F1FFBCBCAB70FFFFFF0000000000ADA29189CAC6BFFFE2E1
      E1F9DBD9D6FEE1E0DFFFE3E3E2FFDDDCDAFFDCDAD8FFDCDBD8FFDCDBD8FFDBD9
      D6FEE4E3E3F9CBC7C0FFB0A5958400000000FEFEFE02FDFDF818BD9E7CD7C9A2
      6BFEC69A62FCEBD6BEFFF8DFC1FFDEDDDCFFD2D5D7FFE3E5E7FFD4D6D7FFEBEE
      F2FFF2E0CBFCF5DFC3FFD3B99BCE00000000F9BF8C00F89B4900FA9D4C00FAA2
      5400F8974100F9923400F4AF7100E9D5C700E4E6EB0096CDF30076C8FC006CC2
      FC008EC7F600F2EFF000F2F3F600FEFEFF00BFBFAE6EFBFBF4FFFFCC44FFFECB
      43FFECD286FFD9D9C8FFE7E7DBFF39B02BFF63EA52FF39B02BFFE3E3D7FFCECE
      BDFFCDCDBCFFFBFBF4FFBFBFAE6EFFFFFF0000000000AEA4938ACAC6BEFFB1A8
      9AF8A39887FFDAD8D6FFF2F4F6FFB5ACA0FFA59A89FFA89E8EFFA89E8FFFA297
      86FFC2BBB3F8D5D1CDFFAFA4948500000000FEFEFE02E4E4E061AE9E8BE8CFAB
      77FDCA9D64FDEAD5BDFFF7DDBEFFDCDBD9FFDCDDDDFFD8D9D9FFD7D7D7FFDADC
      DEFFF5E2CCFCF4DDC0FFD3BA9DCE00000000F9BB8400F9A04E00F8A24F00F8A9
      5900F9AE6100F9B46D00FAC88D00FECC9800EAD5C70094E2FF009BE9FC0084D6
      FD00B1DCF800E7E1E000A1A2A500CBCBCE00C1C1B06DFCFCF7FFFFCC44FFFFEE
      88FFECD286FFFCFCFAFFFCFCFAFF3DB42EFF6EED5DFF3DB42EFFFCFCFAFFFCFC
      FAFFCDCDBCFFFCFCF7FFC1C1B06DFFFFFF0000000000B0A59489A09687FFACA3
      96F9A69C8EFEACA498FFAEA79BFFA9A092FFA79D8FFFA79E90FFA79E90FFA69C
      8EFEADA699F9A19788FFB2A8988400000000FEFEFE02FEFEF914C0A17ED6D0AC
      73FECAA066FCEAD5BEFFF4D8B7FFE7E0D8FFE9E5E2FFE0DCD9FFEEEAE6FFE3E0
      DDFFF3DCC2FCF3DBC0FFD4BA9ECE00000000F9C59500F9C68F00F9CF9B00F9D1
      9F00FAD8AB00F9DEB400FBE1BC00D0B49900C5BDB900D9EAF7009FE0F900A5E4
      FB00C7DAE700A19FA000A7A8AB00E9E9EB00C4C4B36BFDFDF9FFFFCC44FFFECB
      43FFF5CE64FFEAD184FFF1E4BDFF41B831FF76EE65FF41B831FFEDE0B9FFDFC6
      79FFDEC578FFFDFDF9FFC4C4B36BFFFFFF0000000000AEA49489B49F7FFFC4B0
      90F9C0AA8AFEC6B090FFC8B392FFC1AB8BFFC1AB8BFFC1AB8BFFC1AB8BFFC0AB
      8BFEC5B192F9B7A281FFB1A8988400000000FEFEFE01E4E5E064AB9B8BE8CCAB
      75FDCFA46AFDEAD4BEFFF1D3B1FFEBCBA8FFECCBA7FFEECDA9FFE9C9A4FFEECE
      ABFFEDCEABFCF4DDC2FFD3BA9ECE00000000FAEADD00FAE5D100FAE8D600FAE1
      CB00FAE1C300F9E1C300FBE9D700E1E3E800B3B5BA00DAD5D500E3E9F100DBE0
      E700C1BCBD00BBBCBF00F7F7FA00FEFEFF00C6C6B56AFEFEFCFFFFCC44FFFFEE
      88FFFDCA42FFFCEB85FFFBF3BFFF44BB33FF44BB33FF44BB33FFF6EEBAFFEFDE
      78FFEFBC34FFFEFEFCFFC6C6B56AFFFFFF0000000000B2A89888BAA789F97C69
      4DF36C593CFAC5B295F9F6E3C6F97D694CF9756145F9776347F9776347F9715F
      41FA8D7A5EF3DAC7AAF9B3A9998300000000FEFEFE02FFFFFB11C2A582D5D8B5
      7AFECEA56AFCE8D3BCFFF1D2AFFFE1C19BFFE1C09BFFE1C19AFFDFBD97FFE3C3
      9EFFECCCA8FCF2DBBFFFD3BBA0CD00000000FBFEFF00FBFDFF00FBFDFF00FAF9
      FA00FADDC000FAF1E900FAFCFF00FFFFFF00EFEFF100D1D2D600E1E0E200D9D9
      DB00D6D7DA00F9F9FC00FBFBFE00F9F9FC00C8C8B868FFFFFEFFFFCC44FFFECB
      43FFFDCA42FFFBC840FFFAD05FFFFBE7B0FFFDF5E0FFFAE5AEFFF4CA5AFFF0BD
      35FFEFBC34FFFFFFFEFFC8C8B868FFFFFF0000000000A99E8D92BDA98AFFC3B1
      93FFBDA98BFFCEBA9CFFD7C4A6FFC1AD8FFFBFAB8DFFC0AC8EFFC0AC8EFFBFAB
      8DFFC6B395FFC2AE90FFACA1908D00000000FEFEFE01D4DADC67A79989EBD0AF
      76FDD5AB70FDEBD7C3FFF1CFA7FFF1D2AEFFF2D2AEFFF2D2AEFFF3D3AFFFF2D2
      AFFFEECBA4FCF5DDC1FFD4BDA4CE00000000FBFAFC00FBFAFC00FBFAFC00FBFA
      FC00FAFCFF00FBFCFF00FBFAFD00F9F9FC00FCFCFF00F2F2F500DADBDE00E2E2
      E500F9F9FC00FBFBFD0000000000FBFBFE00CACAB967FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCBE9C8FF2BA220FFCBE9C8FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCACAB967FFFFFF0000000000DAD5CD42AFA4948AB4A9
      9987B4AA9989AFA5948AADA2928AB3A8988AB3A8988AB3A8988AB3A8988AB4A9
      9989B3A99987ADA3928ADBD6CF4000000000FEFEFE02FEFEFE03C6A986C9D3BB
      91FED4B081FBE0C9B3FFE9D3BAFFE7D1B9FFE8D2BAFFE8D2BAFFE8D2B9FFE8D2
      BAFFE7D1B8FCEAD7C2FFD1B699CA00000000F9F9FD00F9F9FD00F9F9FD00F9F9
      FD00F9F8FB00F9F8FB00F9F9FD00F9F9FD00F7F7FB00FBFBFF00E6E6EA00F1F1
      F500FAFAFE00F7F7FC00F9F9FE00F9F9FD00D8D8CB4DCBCBBB66CBCBBB66CBCB
      BB66CBCBBB66CBCBBB66F3F6F11A40B730FF57BF49E040B730FFF3F6F11ACBCB
      BB66CBCBBB66CBCBBB66D8D8CB4DFFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFCFB0500000000DFC5AA80CCA6
      81C1C29E78BEBE9568C1BD966CC1BD976CC1BD976CC1BD976CC1BD976CC1BD97
      6CC1BD986EBFBD9468C1D2B5959000000000F1F1F10ED1D1D12ECCCCCC33CCCC
      CC33CCCCCC33CCCCCC33CCCCCC33CCCCCC33CCCCCC33CCCCCC33CCCCCC33CCCC
      CC33CCCCCC33D1D1D12EF1F1F10EFFFFFF000000000000000000FDFFFF020000
      00000000000000000000FAF9FA06000000000000000000000000000000000000
      000000000000FAFAFA05FFFDFD0200000000FCFCFC03C7CBD05AA1A9B2D48790
      9BFE9198A2F69097A0F89097A0F89097A1F89097A1F89097A1F89097A1F89099
      A2F786909BFDA3AAB2D4AFB3BB90D9DDE3260000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C1C4C65E979FAACA919CA5D9919C
      A5D9919CA5D9919CA5D9919CA5D9919CA5D9919CA5D9919CA5D9919CA5D9919C
      A5D9919CA5D9979FAACAC1C4C65EFFFFFF0000000000FEFEFE0100000000B4B8
      D44B3466A8D4DAD9E12600000000EAE8EB17E5CECE31DFC3C33CDFC3C33CE4CD
      CD32EBE7E718000000000000000000000000F9FBFD06FFFFFF004D78A9B2044C
      99FF084995F7044694FB044794FB044895FB044895FB044895FB044895FB0849
      94F7044C99FF4D78A9B2FFFFFF00FBFCFD047E7E7EFF7E7E7EFF7E7E7EFF7E7E
      7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E
      7EFF7E7E7EFF7E7E7EFF7E7E7EFF7E7E7EFF98A3ADC7B3BEC9F4D3DCE2FF53E4
      EFFF53E4EFFFC4CCD2FFB9C1C6FFB9C1C6FFB9C1C6FFC4CCD2FFD3DCE2FFB9C1
      C6FFFFFFFFFFA4ADB6F698A3ADC7FFFFFF00FAFAFC0500000000D1DCE62E087F
      C4F70EE0FAFF4874ABD6C67869A7D87E47EFE48847FFF39846FFF49948FFE68B
      49FFDA814AEFCA755FB2F4E6E21FFEFEFE01FAFCFE05FEFEFE013A6CA6C8507A
      A4FECFD3BFFBCDCDC2FFCECEC2FFC9CBC0FFC8CBC2FFCACCC4FFC6CBC4FFCFD9
      CBFB517EA9FE3A6BA5C8FDFDFE02F7F9FC087E7E7EFFB7B7B7FFB7B7B7FFB7B7
      B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7
      B7FFB7B7B7FFBABAB6FFBDBDB6FF83837DFF94A1A9D9BCC3C8FFAAB6BEFF58E5
      F0FF58E5F0FFAAB6BEFFFFFFFFFFFFFFFFFFFFFFFFFFAAB6BEFFAAB6BEFFAAB6
      BEFFFFFFFFFFBCC3C8FF94A1A9D9FFFFFF00FCFCFD0300000000EBF0F114198F
      CAE60CEEFFFC418DAFFFED9655FFFFCA7AFFFEC77EFD8267B1FD73599AFDF9C3
      7DFDFFC67DFDF9B168FFCD7057C100000000F9FBFD06FFFFFF003B6BA6C46285
      A7FFFFF8C9FAB5AC93FEEDDBBBFEEFDDC2FEC6BAA9FECEC3AFFEC4BBABFEFEF2
      CEFA678DB0FF3B69A4C4FFFFFF00F8FAFC077E7E7EFFC1C1C1FFA1F3F3FF98EE
      F4FF83E2F5FF7CDFF6FF83E2F5FF98EEF4FF98EEF4FF83E2F5FF83E2F5FF98EE
      F4FFA2F3F3FFAEF5F3FFCFCFBEFF8B8B7BFF97A3ADD9FFFFFFFFFFFFFFFF5EE7
      F1FF52CDD6FFFFFFFFFFFFFFFFFFADB9C1FFFFFFFFFFADB9C1FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF97A3ADD9FFFFFF00FBFBFC0400000000D4E1E92B1388
      CBEC0CE8FEFD4390B4FBEEAF7FFBFED29BFDF6CC9DFE3B3DDEFE1A1CD5FEE9C5
      9EFEFDC488FCFFC686FCE58C5DF3FFFFFF01F9FBFD06FFFFFF003A6BA7C55F83
      A6FFF8E1B9FBCDC1A7FFB6AD95FFD9CBB3FFC7BCABFFCBC0AEFFC3BAABFFF1E7
      C5FB6087ABFF3A6AA6C5FFFFFF00F7F9FC087E7E7EFFCACACAFFA3F4F4FF72EB
      F7FF2BF0FCFF1DF5FDFF2BF0FCFF6CE6F7FF6AE7F8FF2BF0FCFF2BF0FCFF6AE7
      F8FFA4F1F5FFC7F8F3FFE5E5C4FF989879FF98A4AFD9BFC7CCFFB0BBC4FF59CF
      D7FFB2B2B3FF9FAAB1FFFFFFFFFFB0BBC4FFFFFFFFFFB0BBC4FFB0BBC4FFFFFF
      FFFFB0BBC4FFBFC7CCFF98A4AFD9FFFFFF00F9F9FB0600000000B7B7CA480297
      D5FD0DECFEFC3F8EB5FDECB493FEFFE4C0FFFFE9C2FE6C69D7FF5853D6FFF9E3
      BCFEE1CE95FCFECE9DFEE79A77EA00000000F9FBFD06FFFFFF003A6CA9C55D81
      A4FFFFF0C5FBFDE8C7FFF2DEBDFFF0DCBDFFF3E0C0FFF3E1C2FFF0E0C3FFFDF3
      CBFB5F85A8FF3A6CA8C5FFFFFF00F7F9FC087E7E7EFFD4D4D4FFA5F6F6FF4DF7
      FBFFE5B82CFFE5B82CFFE5B82CFF33EAFCFF24F4FDFFE5B82CFFE5B82CFF27F5
      FDFF99F2F8FFE5FCF5FFF2F2CEFF9D9D78FF9CA9B2D9C2C9D0FFFFFFFFFF6DEB
      F4FFBFBFBFFFA3A3A3FFE7E7E7FFB3BFC7FFFFFFFFFFB3BFC7FFB3BFC7FFFFFF
      FFFFB3BFC7FFDCE5ECFF9CA9B2D9FFFFFF00F9F9FB0600000000D3D3DE2C058C
      CEFA0BE8FFFD4195BCFFE6BCACFFFDF4E6FEFFFFEDFF7B75DDFE625AD3FEFFFF
      ECFFFCF4ECFAF7DBC2FFE79B85B600000000F9FBFD06FFFFFF003A6DAAC55F83
      A7FFFEEAC0FBA19B88FFDBCAACFFE0CFB5FFB3A99BFFBCB0A1FFB2A89CFFEFDC
      B9FB6287AAFF3A6CAAC5FFFFFF00F7F9FC087E7E7EFFDEDEDEFFA7F8F8FF83FA
      FAFF18FAFEFFE5B82CFF18FAFEFF26F5FEFFE5B82CFF00FFFFFF00FFFFFFECCB
      2AFF81FDFBFFF5FEF7FFF5F5D9FF9A9A78FF9DABB4D9FFFFFFFFB7C2CBFF3977
      E3FF0F0EE1FF5257C8FFA5A5A5FFB2BDC6FFEDEDEDFFA0ABB3FFAAB4BCFFFFFF
      FFFFB7C2CBFFDFE7EEFF9DABB4D9FFFFFF00FAFBFD05000000008088BB7F00B2
      E8FF0FEDFEFD428DB1F2EA9F95EBFFE8DAFFEBD6BBFD4D57B4FF3B48B1FFE9C8
      A2FDFFE0CEFFE8A99BFDF7D9D53600000000F9FBFD06FFFFFF003A6EACC56085
      A9FFFBE3BBFBDBCCB0FFBBB097FFDDCCB1FFD1C1ACFFD3C3ADFFCBBEAAFFF5E2
      BCFB6186A8FF3A6EACC5FFFFFF00F7F9FC08A5A5A5FFECECECFFD3FBFBFFCDF8
      FCFF8FFBFEFFF2DC96FF90FBFEFF2BF9FEFFE5B82CFFE6BA2CFFEBC72AFF5EFD
      FDFFF3FFFBFFF8FEFBFFF6F6EAFFB1B1A3FFA1AFB8D9C6CED4FFC5D2DAFF1217
      F5FF1110F5FF1515F4FFF9F9F9FFEDEDEDFFD09276FFC6591EFFB87B61FFEDED
      EDFFBAC6CEFFE1EBF1FFA1AFB8D9FFFFFF0000000000F3FDFE0C236DBADC01D9
      FEFE12E0FAFE349ECCE5B7778594B18582F364A1C8FD5EACD3FD4FA3CCFD3E85
      ADFCA37F7CEDFFD7CC4C00000000FFFDFC03F9FBFD06FFFFFF003A70ADC55E83
      A8FFFFF1C5FBF7E3C3FFF6E1C0FFF0DCBCFFF0DCBDFFF0DCBDFFECD9BCFFFDEB
      C1FB5F84A8FF3A6FADC5FFFFFF00F7F9FC08A5A5A5FFE8E8E8FFD2FBFBFFB6F6
      FCFF8BFCFEFFF2DC96FF90FCFEFF4BFCFEFFE6B92CFF00FFFFFF1BFDFFFFE8FD
      FDFFF9FEFBFFECFDFBFFEDEDE7FFA8A8A4FFA3B0BAD9E4EDF3FF8CC9E3FF8FB4
      FAFF2A2AF7FF486AE9FFB0BBC2FFC28663FFD56721FFD56721FFD56721FFD99A
      78FFB0BBC2FFE4EDF3FFA3B0BAD9FFFFFF00000000006978B2960297E6FD05E7
      FFFA0DD7F2FE42E5FAFF449FCFFD5886BAF893E1FFFF91D4F8FE8DD1F4FC6EC0
      E8FE3E8FC3ECEEF3F917FEFEFE01FDFDFE02F9FBFD06FFFFFF003A70AFC56086
      ABFFFDE8BEFB9E9885FFD4C4A8FFDFCDB4FFB1A79AFFBAAFA0FFAFA69BFFEED9
      B6FB6388ACFF3A70AFC5FFFFFF00F7F9FC08A5A5A5FFE4E4E4FFD1FAFAFFA6FB
      FDFFF2DC96FFF2DC96FF9DFCFDFFACFBFBFF46FCFEFFF0D728FFF9F026FFBAFE
      FDFFEEFDF9FFDDFBFAFFE5E5E4FFA5A5A5FFA7B4BFD93EC2F6FF3EC2F6FF3EC2
      F6FF3EC2F6FF3EC2F6FF9E8976FFE47725FFE47725FFE47725FFE47725FFE477
      25FF9E8976FF3EC2F6FFA7B4BFD9FFFFFF00000000003B78C4C400C5FFFF04E6
      FDFB0DF7FAFD68FFFFFE87E3F4FF668DBDFFAEE7FEFEA3DBFCFF99D8FCFE95D6
      F8FB69B6E0FF92BBDF7300000000F9FBFD07F9FBFD06FFFFFF003A71B0C56087
      ACFFFAE4BBFBE3D3B5FFC0B49BFFDDCCB1FFD3C4AEFFD5C6AEFFCEC0ACFFF4E1
      BBFB6187ACFF3A71B0C5FFFFFF00F7F9FC08A5A5A5FFE1E1E1FFD0F9F9FFC2FA
      FAFF9EFDFDFF9EFDFDFFC2FAFAFFD4F9F9FFC9FCFAFF87FEFDFF93FFFDFFE4FD
      F9FFDFFBF8FFD3F9F9FFE1E1E1FFA5A5A5FFA9B6C0D941CBFFFF41CBFFFF41CB
      FFFF41CBFFFF41CBFFFFF5B68AFFF5B68AFFF5B68AFFF5B68AFFF5B68AFFF5B6
      8AFFF5B68AFF41CBFFFFA9B6C0D9FFFFFF00DFDFDF201D72C6E201C7FEFE01E9
      FFFE0BFFFFFF60FFFFFF91EFFBFE6988B5FCCFEDFDFDCAEAFDFEB3E2FEFE9EDB
      FDF97FC7EEFF95BEE27300000000F9FBFD07F9FBFD06FFFFFF003A72B3C56388
      ABFFFFF5C5FBF8E2C3FFF6E0C0FFF7E1C0FFFDE6C3FFFCE5C3FFFAE4C3FFFFF6
      C5FB6388ABFF3A72B3C5FFFFFF00F7F9FC08A5A5A5FFDDDDDDFFDDDDDDFFDDDD
      DDFFDDDDDDFFDDDDDDFFDFDFDDFFE7E7DBFFF4F4D9FFFBFBD8FFF6F6D9FFE9E9
      DBFFE0E0DCFFDDDDDDFFDDDDDDFFA5A5A5FFAAB9C4D93EC2F6FF3EC2F6FF3EC2
      F6FF3EC2F6FF3EC2F6FF1318FEFF1318FEFF1318FEFF1318FEFF1318FEFF1318
      FEFF1318FEFF3EC2F6FFAAB9C4D9FFFFFF00EDF4F4122973C5D602C9FEFD15C3
      EBF53CA1C5E058EEF8FD7ADBEFFC6E87B6FFFAFFFFFFEDFAFFFBCAEEFFF8AAE7
      FFFF63A8D9FAE4E9F32600000000FDFDFE02FAFCFD05FFFFFF003E76B4C25784
      B1FCD5C8ADF89D9781FB97927AFC9A957DFE99937DFE959179FC9D9782FBD5C9
      AFF85784B1FC3E76B4C2FFFFFF00F8FAFC070101ABFF0101ECFF0101ECFF0101
      ECFF0101ECFF0101ECFF0101EBFF0202EAFF0202E9FF0202EAFF0101EBFF0101
      ECFF0101ECFF0101ECFF0101ECFF0101ABFFADBAC5D9EDF6FDFF94D0EBFFA4FA
      FCFFA4FAFCFF94D0EBFFADB8FDFF1318FEFFE5F2FCFF1318FEFFE5F2FCFF1318
      FEFFAEB9FDFFEDF6FDFFADBAC5D9FFFFFF00000000005D81C0A200C5FFFF12AB
      DEF05A6591A63ED6F3FF64C3E0FF868CA686AFC7D8E2C7DBE8FFADD4EAFF79AA
      CFEDC4D1E15B00000000FEFEFE0100000000F9FBFD06FFFFFF004279B4CF1D72
      C8FF336CA0FFB7BBB0FFCBD2CAFFB4BAACFFB5B9ACFFCAD2CAFFB5B8AEFF2E6A
      A2FF1E72C9FF4279B4CFFFFFFF00F7FAFC080101A3FF0101D9FF0101D9FF0101
      D9FF9999F0FFA1A1F0FFBBBBEFFFD8D8EEFFDCDCEEFFC4C4EFFFA8A8F0FF9B9B
      F0FF0101D9FF0101D9FF0101D9FF0101A3FFB5C3CAC6DDE6EEF5F4FAFEFFA8FB
      FDFFA8FBFDFFF4FAFEFFF4FAFEFFF4FAFEFFF4FAFEFFF4FAFEFFF4FAFEFFF4FA
      FEFFF4FAFEFFDDE6EEF5B5C3CAC6FFFFFF0000000000A2AACD5D1878C4E71F94
      CBE01882BEE7359DC9DF6083B3BE00000000EDEDF112B9C5D556B8C5D55AE4E4
      EA1B00000000FEFEFE010000000000000000FAFCFD05FFFFFF0089AACE805086
      C0C75E88B3BE798D9DC2A0A7A7D0A2A295F8A2A295F8A0A7A7D0798C9DC25E88
      B4BE5086C0C789AACE80FFFFFF00FAFBFD0501019BFF0202C6FF0202C6FF0202
      C6FF0202C6FF0202C6FF0202C4FF0202C4FF0202C4FF0202C5FF0202C6FF0202
      C6FF0202C6FF0202C6FF0202C6FF01019BFFEBEEF136C1CCD4ABAFBEC9D9AFBE
      C9D9AFBEC9D9AFBEC9D9AFBEC9D9AFBEC9D9AFBEC9D9AFBEC9D9AFBEC9D9AFBE
      C9D9AFBEC9D9C1CCD4ABEBEEF136FFFFFF0000000000FEFEFE01D7D7D728DEDE
      DE21E7E7E718E4E4E41BFEFEFE01FDFDFE020000000000000000000000000000
      0000FDFDFD05000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F6F6F50AC2C2BAD0C2C3BACFF7F6F609FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFCFC050000
      00000000000000000000F7F7FE08EAE9F116EBE9F016F5F5FA0A000000000000
      000000000000FDFCFC030000000000000000E8E8E817DEDEDE21D9D9D926D9D9
      D926D9D9D926D8D8D827D9D9D926D6D6D629FFFFFF00FFFFFF00ADC8D95B4F8D
      B3EC7BA5C0F35EA6D1F37DA9C1A2FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFB04E7FAFF2FEBED
      F236E6EBF43FDFE5F050E0E3E951E1E1E251E1E2E351E4EAF151E4E9EF4FEAEF
      F53DF1F6FD29F5FFFF21FEFEFE0100000000000000000000000000000000EAE4
      DF26C1A4928EC8904ECACC8D37E2B97A2FEBB5732FEBA6D0EF7890C9EF798EC8
      EE798EC8EF798EC8EE7990C9EF79AACCEB71959FA9718A96A48A8693A1928895
      A3908794A2918794A2918895A3918391A08F8D9D97ADA2BEBCBA5DB9E4E87AD1
      F7FFAEE7FBFD68C8EEFF4AB2E1FC91BAD49500000000FEFEFE01FEFEFE01FEFE
      FE01FEFEFE01FEFEFE01FEFEFE01FEFEFE01FEFEFE01FEFEFE01FEFEFF01FEFE
      FF01FEFEFE01FEFEFF01FEFEFE010000000000000000FDFDFC04E5DCCF50BFB6
      A3BAB3A079EAB79B62F3BB9B58F5BE9C56F5BD9B55F5AA7F3DF59F6A23F4A06A
      21F0AA875AE1DED7CC5600000000FEFDFD02FDFCFC0500000000DED4D14CD2B9
      A4EEEAB96DFFD48D20FFD3810DFF593558FF7B4C4BFF63C2EFF633B4F0F72DB3
      F0F82DB3F0F82DB3F0F832B5F1F75FAAE0F18798A7A5ACBDC8E4B3C5CFF7B1C3
      CDF4B2C3CEF5B1C2CDF5B2C3CEF5AEC1CDF494AD9CFF88B8B9FF4BBFF2FF46BA
      E9FE35BBE9FF1DAFDEFD2EC8F3FF71C8F5EF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFD02F7F4EC17C7AA6FB1B58E
      3FF7B9903CFFBF9642FFC39947FFC79E4DFFB17925FFA05800FFC18D45FFC494
      51FEA05B00FFBE9157B0FDFDFC03FDFCFB04FEFEFD0600000000D0B297BDF6D9
      A8FFDBA85EF6C27316FCDF820AFD2B38C2FE3E3695FE7CCDF3FD6CCDF5FE6ACD
      F5FF6CCEF5FF6CCEF5FF6FCEF5FF68B3E4FB92A3B3A1B3C2CEECBAC9D3FFB6C7
      D1FFB8C8D3FFB7C7D2FFB8C8D3FFB5C5D0FF99B4A7FDA7CACAFC70C1E9FE64BD
      EAFE66BEEAFE71CDF1FC80D9F8FD86B8C7ABF7F4F30CB5918899AC857BC1AE8B
      84BCAE8D88BEAD8A86BEB08D86BEB48D81BEB88C7BBEB88C7BBEB88B79BEB88A
      78BEB98A78BCB78775C1C18D77A00000000000000000EFE8DA2EAE8937FFB68F
      3FFDBD9545FEC49A4AFECBA353FEC69747FEAD6A15FEAF6306FEDAB17DFEE0BD
      91FEAD6307FBAC6A17FFE5D3BC4700000000FCFAF80900000000CDB29F80DEA1
      40FFCD8C2FF9BD5D00FFF2AE6EFE5157CEFF5654BDFF67C4F3EC5DC5F6EC63C7
      F5E692D0F3B29ED4F49E9DD4F59F99CAED999AABBA9CBACBD7E9BFD1DCFEBACC
      D7FDBBCBD4FEB9CAD4FEBACBD4FEB9CBD5FE9EBBB1FFA6C1B1FF99BCB4FE87C1
      D1FF85BFD0FF8BBDC4FE8EB7B5FFA9C0AEA6DCDCDC23A27A72EFE0DCE0FFE0C1
      B7FFDFA584FFE8B080FFDEA684FFD6B5ABFFCEC4C6FFD0C2C2FFD2C5C5FFD4C7
      C7FFD6C9C9FFDDD7D9FFAF7B67F700000000FDFDFC04FEFEFD02C5A96DBEB991
      41FFC19A4CF8C79D4DFED0A758FFC69343FEB7711BFFBD6F12FFD9A96FFFDDB2
      7FFFBA6E12FAB5721EFCDDC09C6D00000000FDFCFC0300000000F3EDE71AC87A
      21EDC66D0DFF955822FD4FACCCFF0E9FDDFF23ACE5FFBCE0F676BAE1F677C3E3
      F666F2F8FC17FBFDFE05FAFBFD06FBFCFE0499ABBB9AB0BEC8E9B3BCC0FFB1BF
      C8FEB6C7D3FFB7C8D2FFB6C7D2FFB2C0C8FE96B1A7F4A3C3B5FEAEC9BAFFBED2
      C2FEB8CDBCFEAEC8B6F6A4BEADF3B1C8BA8FDFDFDF20AC8F8ADFF4E2DEFBFFAC
      64F9F7B576FB7C5C9EFBECAC74FBF7A258FBC6A8A2FBD1C6C7FBD4C6C5FBD8CB
      CCFBDACECEF9EEECEEFBBA8C7CE600000000FEFDFC0300000000F8F4ED1BCCB0
      76C2BF984BFFC59D4EFFD4AB5CFDE1B061FFC87C22FFC9791CFCD69C57FCD7A1
      61FCC7791EF9C07924FFEFDFCB410000000000000000FEFEFE0100000000DBDA
      D4428E7250E313ABCFFC02D2FFFD25DFFFFF37E4FFFF3CE7FFFC56AAB6FDAEA7
      ABBFF1F3F415FEFEFE01000000000000000097A2AD98A6947AE8B28544FFA996
      78FEB6C4CCFEC0D4DFFFB6C3CAFFA9967AFEAD8646F6A49779FEAFC0C2FFB6CD
      D4FDBACFD4FEB6C9D1EEA2B5BF83F1F5F314DEDEDE21AD9390E3F5DCD0FFFEC7
      92FDF3E2CFFF5757E6FFDFD1C3FFFAC287FFD6B2A7FFD8D2D5FFDBCFCFFFDDD3
      D4FFE0D6D5FDF0EEF0FFBC8F7FEA00000000000000000000000000000000FDFD
      FB05E7D3AB76E3B96DEEF3D298FFE8DCBEFED6AE7AFED88220FFE0923BFFDE90
      38FFD1842CFFE0B57FADFEFEFD02FEFCFB050000000000000000FDFEFE020000
      000040BBE5BF00D2FFFF21D4FDFB35DBFDFF4BE2FDFF67ECFDFA68F2FFFF90CE
      DF8B00000000FDFEFE030000000000000000A48C74B1BE8D44EEE5A527FEBD87
      36FDAD9B80FFB5BCBDFEAD9B82FFBE8632FFE59E12FFBE8733FFAD9A82FFB7C2
      C9FEBFCFDCFFB8C8D5F1AAB8C872FCFCFB04DEDEDE21B19490E3F9F5F3FFFCD5
      BEFDF1DCD2FF6263B2FFEBD1C3FFFCD6C0FFD5C6C4FFD6CBCBFFDACFCFFFDDD2
      D2FFDED4D3FDF3F2F4FFBF9585EA000000000000000000000000FEFEFE010000
      000000000000F9FAFA1DCADDECD7B6D8F9FEBBDAF7FED5CAB9CBE8B882BDE2B5
      80C7EFCEA77BFEFDFC0400000000FEFEFE0100000000FEFEFE0100000000C9DE
      E93600BFF1FF0DCFFBFD27D6FCFE42E0FCFF5BE7FBFF73EFFBFD8BFBFDFF7AE0
      ECEEF0F3F612000000000000000000000000C18E54CAE0AC5FF0F4B950FFE5A9
      3EFDBE8A42FEB28B5AFFBE893FFEE0A12CFEEEAB23FFE09F29FEBC873EFEB09C
      7FFEC1CCD1FEC3D4E1F0ABB8C678E7E9EB18DEDEDE21B39694E3FDFFFFFFF1EC
      E9FD82A7C0FF3E75A4FF648DA6FFDCD5D2FFD3C5C4FFD3C6C6FFD7CACAFFDACE
      CEFFDBD0CFFDF5F4F6FFC39A8BEA000000000000000000000000000000000000
      0000FDFEFE0600000000E0EDF96AD0E3F3FFCFE3F4FEEEF6FE37000000000000
      00000000000000000000000000000000000000000000FCFDFE03000000009FDA
      EE6001CDFFFE07D6FFFA1EDCFFFF3CE5FFFF5CF1FFFF7CFAFFFEB0FEFEFDB9EF
      F4FFCDE5EF3400000000FEFEFE0100000000EBC19373D3A065BCE7B367F8F0B9
      65FEE0AA58FDCA9245FED7A04AFEDBA045FDD9A248F9D89E42FDD39841FEC08B
      44FDB9A78CFFBEC2C3F0B6A6949CC9A67F87DEDEDE21B69D9BE3FFFEFEFFCAE6
      F7FD9AD8FCFFA4D2EDFF72C4EFFFAACBE0FFE3D5D3FFDCD4D5FFE1D8D8FFE3DB
      DBFFE5DCDBFDF9F8F9FFC6A090EA000000000000000000000000000000000000
      000000000000FEFEFE04DCEAF7BDD2E5F6FFD2E5F5FFDFECF6B100000000FEFE
      FE01FCFCFC0300000000000000000000000000000000FCFDFD0300000000AAC7
      D4612D8BA8FE5790A3FA779CABFF82ADB9FF7BBDC7FF75D9DFFE98FFFFFD9BE6
      EAFED1DEE53500000000FEFEFE0100000000EDEDED12E3C8AB59D5A163C3EAB8
      6EF7F0BD71FEEBB86CFDE4AF62FFDAA65BF4CF9853D8D39F55F4D7A054FFD9A0
      53FDCA9754FEC19B6AF7C99559D0CB8E4AC8DFDFDF20BAA4A4DFFFFFFFFBDDEC
      F7F9CAE6F9FBD6F4FFFB8CD1F9FBCBD9E5FBCAB9B8FBC9BDBEFBCFC2C2FBD3C6
      C7FBD5C7C7F9F7F7F8FBCBA89AE600000000000000000000000000000000FEFE
      FE0200000000ECF3FA3EBAD7F0FFBAD7F1FDBAD6F0FDB5D1EAFFE0E5EC420000
      0000FEFEFE0200000000000000000000000000000000FEFEFE0100000000E0D3
      D235441C17FF623C38FB8C5A58FEB67D7BFED09897FECCA2A2FD9BB7B9FD8895
      98EDF7EFEF13000000000000000000000000FFFFFF00FBF7F30CE8CDAC5DDBA9
      68C3EEBE72F8F4C479FFECBB70F7DAA766C3DCB2808FDAA565C4E8B66AF8F1BE
      72FFEBB76BFEDAA458FEE7B269F3D89E58D1DDDDDD22B8A2A2EFFDFDFCFFFDFB
      FAFFE2ECF6FFC9E0F3FFD7E9F7FFF9F6F4FFE0D7D6FFE3DBDAFFE5DDDDFFE7DF
      DFFFE7DFDFFFF9F8F8FFC8A396F700000000000000000000000000000000FEFE
      FE0200000000A7BDD4ABA4CBEDFEA5CCECFAACD5F8FBA3CAECFE7C8899B80000
      0000FEFEFE020000000000000000000000000000000000000000FEFEFE01FCFC
      FC03574949C80B0C0DFF292223F8423334FD6B5151FD9F7979F6BE8C8CFFC6A6
      A69800000000FEFDFD030000000000000000FEFEFE01FFFFFF00FBF6F20DF2D3
      B05BE3B270C4EDBE70F7E3B16FC5F2D4B15AF8F0E719EDD1B25AE3B06FC2F1C2
      76F3F6C67BFCF6C87CFEF3C379F7DEA45DD2F7F5F50AB59C9C98B49B9AC5B69B
      9ABEBA9E9AC1BD9E98C1C09F97C1BB9E97C1C2A49CC1C3A49BC1C3A398C1C3A2
      97C1C4A094BFC19C8EC5C09788A0000000000000000000000000000000000000
      0000F9F9F9085D7594E691C2EEFD8BB9E3FD7699BFFD5A7596FE3E485CE7F7F7
      F80B000000000000000000000000000000000000000000000000FDFDFD020000
      0000E0D9D92D2E2020EB010101FF090707FF161111FF312424FF795E5ED1F2EF
      EF13FEFEFE01FEFEFE010000000000000000FFFFFF00FFFFFF00FFFFFF00F4F4
      F40BF0D4B25EE7B97FA8EFD3B15FF4F4F40BFFFFFF00FAF2E81BE9BE8B8FE8B5
      6CD9F9D085FBFDD489FFF7CB7FF8E4AB61D40000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9FAFB0646546FDF425A7CFF405471FC252E45FD252F47FF3A445AECF6F6
      F70A00000000000000000000000000000000000000000000000000000000FEFE
      FE0100000000E5DCDC2A7C6969A6382E2EDA403434D5927F7F92F2EEEE140000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFBF808FBF3EC14FDFBF808FFFFFF00FCFAF807F4D9B858EBB875BCF4CA
      7EECFBD286F4FBD085F7F7CD82EFEBB46DCA00000000FEFEFE01FFFFFF01FEFE
      FE01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FEFEFE01FFFFFF01FEFEFE0100000000000000000000000000000000FEFE
      FE0100000000C3C7CF4E424B5FE52E394FFB323F58FC3F4B63EEAAAFB86B0000
      0000FEFEFE010000000000000000000000000000000000000000000000000000
      0000FBFBFB040000000000000000FFF9F90EFFFDFD070000000000000000FDFD
      FD0200000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FEFE
      FE01FFFFFF00FFFFFF00FFFFFF00FFFFFE01FCF7F10FF1C99787ECAF64D0F2BD
      71DAF1BB70D7F0BA6DD9F0BB72D1EFBE7EAC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE0100000000D5D7DC37616C7FCF4A566CE9BDC1C95500000000FEFE
      FE01000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000078787800797979007878
      7800787878007979790000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFD02FDFC
      FC05FFFFFF08F5F5F50AFFFFFF060000000000000000FCFBFB08FEFEFE010000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000A0072000A0073000B00
      73000A0072000B00730000000000000000000000000000000000000000000000
      00000000000000000000000000000000000078787800C1C1C10000000000D0E3
      D20000000000C0C0C00078787800000000000000000000000000000000000000
      0000000000000000000097979700414140005454540000000000000000000000
      000000000000000000000000000000000000FDFCFC0300000000000000000000
      0000000000000000000000000000F8F7F50EF8F6F5100000000000000000FEFE
      FD03000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A0072001E0E900025159A003E2F
      BA003E30BA0012007F000B007300000000000000000000000000000000000000
      000000000000000000000000000078787800C1C1C100F5F5F500D0D0D0005195
      5D00E6E6E600F3F3F300C1C1C100787878000000000000000000000000000000
      0000000000007171700012121000000000000909070042414100000000000000
      0000000000000000000000000000000000000000000000000000F5F3F215E8E3
      DF39DDD6D063D5CBC291D0C6BBBCCABDAEE3C3B1A0E2D8CEC671FCFBFA090000
      0000FEFEFE01FDFDFD0300000000000000000000000000000000000000000000
      00000000000000000000000000000A00720022119600BDB8E800928CC6001300
      8000827BC500A39ECF0012007F000B00730035683D0035683C0035693D003569
      3D0035683D0035683D001A67AE0078787800F5F5F500C1D4C400C5D8C8005195
      5D00C8DCCB00C3D7C700F5F5F500787878000000000000000000000000000000
      00004949480003030100070704000C0C09000808050004040100292928000000
      000000000000000000000000000000000000D0BFB1AFCEBEAFCFCDBCABEFD2C1
      AFFFDAC9B8FFE3D1C0FFDCCFC2FFD7CABCFFC9B4A0FFB29C88FFB2A293D5DCD5
      CF580000000000000000FEFDFD02FEFDFD0235683C0035683C0035693D003568
      3D0035693D0035693D001A67AE000B007600392BB400756DC70000000000928C
      C50000000000625AB3003D2FBA000B00730035693D006AA874006AA8730069A7
      720067A5710066A46F002076B900787878000000000051955D0052955D005195
      5C0051955C0052955D00000000007878780000000000000000006E6E6E002929
      2800000000000000000000000000000000000000000000000000020200001717
      150051505000000000000000000000000000D4C4B3FFDDCCBBFFE2D2C2FFE5D7
      C9FCE5D9CEFAE5DBD3FAE6DED7FBE7E2DEFDCCC2B9FDBAA694FAA58F7AFF917C
      68FFA7978ABEE2DDD83E000000000000000035693D006BA8740069A8730068A7
      720068A6710067A570002077B9000A0072003E2FBA003022A900918BCD000000
      0000928CC600130080003E30BB000D00770035683C0035683C0035683D003568
      3C0035683C0035693D002688C500787D7E00F5F5F500EDEDED00F6F6F6005195
      5D00E9E9E900D7D7D700F5F5F50078787800000000007D7D7C00181816000000
      00000000000033333200656564008787860080807F0033333300000000000000
      00000706050050504F000000000000000000E2DBD3D9E1DCD7FADEDBD8FCDBD9
      D7FFD9D8D7FEDAD9D9FED7D8D7FFD9DBD9FFC3C5C7FEA39F9CFFAFA195FD9E88
      75FB8C7561FF8B7663FFAFA296A7E2DDD93C35683C0035693D0035693D003568
      3C0034683C0035683C002688C500100078003A2BB5008179CD0000000000A19C
      D60000000000827ABC00211195000B00730035683C006BA8740069A8730069A7
      720068A6710067A57000278BC70077909C00B8B8B800FAFAFA00EEEEEE005195
      5D00E8E8E800F5F5F500B9B9B900787878009191910019191700000000000606
      040080807F00F4F4F400F3F3F300BBBBBB00E7E7E700EDEDED008D8D8D000C0C
      0B000101000017171500807F7F0000000000F7F6F619D8D8D8E4DBDADAFFDDDC
      DAFAD8D7D5FED2D0D1FFD0D9D1FEBBCDB8FFD0CFCBFFBEC0C2FE909191FE9993
      8DFFA19183FC947F6BFD8D7662FF84705EFE35683C006AA8740069A8730069A7
      720068A6710067A57000278BC70032429D0022119500968EDA008179CD003123
      A900766DC8009D96D9001E0D90000A00720035683C0035683D0035683C003568
      3C0035693D0035693D00278BC8006BAFD200687B8600B8B8B800F5F5F5000000
      0000F5F5F500B8B8B8006B756C00000000002B2B2A000A0A0700000000007170
      6F0000000000ECECEC00929292006B6B6B0074737400CECECD00000000008585
      850000000000050503001E1E1D000000000000000000F8F8F82FE3E3E2C0DDDB
      DAFFC6C4C2FEC1BEBCFDC3BEBCFFD4CDC9FEDDCDBFFFE0D6CDFFD6D6D6FF9597
      99FE888482FF978D85FE9D8B7AFC8E7B69FF34683C0035693D0035693D003569
      3D0035683D0035693D00268AC70063A5D100100F80001E0E9000392BB4003E30
      BB003A2BB500211195000D006E000000000035683C0069A672006CAA76006AA9
      75006AA8730068A77200278BC70092D7EA002B88C1006B836F00767B77007878
      78007679760069826D003A6A410000000000060604000A0A0700000000009B9B
      9A00FCFCFC00EFEEEE00D1D1D1008E8D8D0079797900CFCFCF00F2F2F200D4D4
      D400191917000000000030302E0000000000FEFEFE0200000000FEFEFE01F2F2
      F276E0E3E3F5CDCECEFFC4CFD3FCB9CED6FFB6D0D8FE9EB6BBFF87A3ADFF80A5
      AFFF8AADB9FE7E898FFE888380F7B7B1AD7134683C0069A672006CA976006BA9
      750069A8730067A77200278BC70092D7EA002580C100273768000E0070000A00
      73000E007100212B6700305E3F000000000035693D00589261007FB888007EB8
      87007EB887007EB88700268AC70092D7EB00278BC7006FA778007FB888007FB8
      87007FB888004A87540035683D0000000000222220000C0C0900000000009898
      970000000000EFEFEF008F8D8D007F7E7E00C1C0C000EDEDED00F8F8F800C4C4
      C4000B0B0A0005050300212120000000000000000000FEFEFE01000000000000
      0000EBEEF12F92C0D1E378919AFF657378FC545C5FFF474C50FE404B48FD4661
      5BFC75B8CCFA7CC5E0FA74A7C0DF0000000035683C00579160007EB887007EB8
      87007EB887007FB88700278BC70091D6EA00278BC7006FA777007FB888007EB8
      87007FB887004A87540034683C000000000000000000457D4E006DAA76006AA8
      730068A772007FB88800268AC70092D7EA00268AC7006FA777005E9F68005C9D
      66005A9C65004077490000000000000000007A7A7A0014141200000000003434
      3100D5D5D50000000000D5D4D400A2A1A000BBBABA0000000000F4F4F4005F5F
      5F00000000000D0D0B007978780000000000000000000000000000000000FCFD
      FE0400000000E4F5F92C7DA6B2E5759AA4FF73A9B8FD7EB9C8FF7DBFD3FF83D2
      E7FF8FDEF0FF87D4EAFF69B2D3E2FEFFFF0100000000467D4E006CAA76006BA8
      740067A772007FB88800278BC70091D6EA00268AC7006FA778005F9F69005D9D
      6600599B64003F76480000000000000000000000000035693D006BA875006CAA
      76006BA974007EB88700278BC70092D7EB00278BC7006FA677005FA069005C9E
      6700599A640035683C000000000000000000000000005D5D5C000B0B08000000
      00000D0D0B00A1A1A000D8D8D900D8D9D900DEDEDE00B3B3B400434342000000
      0000040402005656550000000000000000000000000000000000000000000000
      0000FDFEFE0200000000EEF9FC29A1E1F2E2CAE8EFFADFEEF0FCA9BEC4E0AEDF
      EDBDA9D7E3B8A6DDEDA4C4E8F564000000000000000035683C006BA875006CAA
      76006BA974007FB88700268AC70092D7EA00278BC7006FA7780060A16A005C9E
      67005899630035683C0000000000000000000000000035683C005C95640070AD
      79006DAA76007FB88800268AC70092D7EB00278BC7006FA6770060A06A005D9F
      6800558F5E0035683D0000000000000000000000000000000000666665003636
      3500030301000000000000000000040402000303010000000000000000002626
      25007D7D7C000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE0400000000F8F8F749FBF5F3FFFEF9F8FFE6E4E1BDD8D5
      D290FBFAFA0D0000000000000000000000000000000035683C005B9464006FAC
      78006DAB76007FB88700278BC70092D7EB00268AC7006FA7780060A06A005D9F
      6800558F5E0035693D0000000000000000000000000034683C00407548007FB8
      88007FB887007EB88700268AC70082CCE500268AC70075AD7D007EB887007FB8
      8800477E500035683C0000000000000000000000000000000000000000000000
      000080807F0056565500363635002D2D2B002E2E2C00474645008D8D8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE02FEFEFD09F1EDEABDEFE9E5ECDFD8D1DEB3AE
      A8BBF9F8F811FDFDFD04FDFDFD04000000000000000035683D00417649007EB8
      87007FB888007EB88700278BC70082CBE400278BC70074AD7D007FB888007FB8
      8700477E500035683D000000000000000000000000000000000035693D003569
      3D0035693D0035683C002B809700268AC7002B80970035683C0035683C003568
      3C0035683C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE02FBF9F714000000000000
      000000000000000000000000000000000000000000000000000035683C003569
      3D0035683C0035683C002B809700278BC7002A80960035693D0034683C003568
      3C0034683C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE01000000000000000000000000FEFD
      FD06FEFEFE010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE01FEFDFD02F9F6F50ABA93936CB3888877C3BCBC43FFFEFD020000
      000000000000FFFEFE01FEFEFE01FEFEFE010000000000000000FEFEFE01FEFE
      FE01FEFEFE04FFFFFF04FFFFFF04FFFFFF04FFFFFF04FFFFFF04FFFFFF04FFFF
      FF04FFFFFF04FFFFFF03FFFFFF03000000000000000000000000000000000000
      00000000000000000000D5D5D82A94A5AC6F8F9DA573CBD0D234000000000000
      0000B1DBB45D9DD2A27700000000FCFDFC03D0D0C94CB7B7A9C5AEAE9EFCAEAE
      9DF3B4B5A6F5978A76F76E2E0BFC712B02FE712D04FD702C03FE6F2B03FE702B
      03FE712C03FD712D04FD702A01FF87583DC20000000000000000000000000000
      0000FEFDFD02FEFEFE01C98A64B2D89E78FFD59F7EFFC17A55F1BE7E5FB2C2A6
      A25DE3E3E31C0000000000000000000000000000000000000000FEFFFE02FFFF
      FF0400000000FFFFFF0100000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFC03000000000000000000000000FDFD
      FD0200000000ACB7C65E0D314FFD148297FE158399FD0E465FFF9BB4C165DBEF
      DA306DC07ABF48B55DE689CD938F00000000BBBBACEFE2E2D4FFF0F0E2FFECEB
      DCFFF6FAEEFFC4AC91FFA64302FFB85007FFB34C04FFB54F06FFB75107FFB650
      07FFB44D04FFB34C03FEB95107FF8B3F07FF000000000000000000000000FEFE
      FD0200000000D4A4897FD49E7CFFD3B9B6F9D3BBB8FBD4B2A8FFCF9980FFC47B
      56FEBB7653CEB891837CD1CFCF30F8F8F80700000000FEFEFE01000000000000
      0000EFECEE5CE8E1E8C2DFDBE0CBDBDBDBC7DADADCC6DBDBDBC6DADBDAC6DBDC
      DBC6DBDAD9C5DCDCDCC6D3D3D3C0F0F0F01000000000FDFDFD02FBFDFE04FBFC
      FD04FAFCFC05E8F4F61789C2CD7C25A6B8E623829AEB85A8B87EEEF4F217D7EB
      DA386BC582C953BD6DD7B8E1C064FEFEFE01D7D7C8F7E9E9DBFDE9E9DBFEE8E8
      D9FDECEEE1FEDCCFBAFEBD691AFED17213FED3781AFECD7017FEC46B17FEC76C
      16FED1761AFFD17718FDC96C12FFA16D3BF40000000000000000FEFEFE010000
      0000EDD9CB4FD39263FED5B6AEFBDBC2BCFDE7D5D1FFE0C9C5FEDBBFBAFCD0A6
      9AFED09B84FFCE8B66FFBB724BE7BF7D5FA3FEFEFE0100000000EEF6EE1EA7D6
      AA8F73BF7CE6C4E2C284E8E6E742F4F3EFF6F5F6F0FFF3F0F2FFF6EFF4FFF1F0
      F1FFEFF1F7FFF1F2F4FFE8E8E8FFEEEEEE110000000000000000000000000000
      00000000000000000000000000005DC5CFA6478FA0BE0000000000000000ECF7
      EE2792D6A1C581D298CACFEBD447FEFEFE01D4D4C6F6E9E9DBFDEBEBDEFFEAEA
      DDFEEAEADBFFECEEE2FFDEC5A6FFDC984DFFD98321FFB99C7AFF9DABB9FF9E9C
      9CFFCB863AFEDF8E34FEDCB386FFB4B2A2EA00000000FEFEFE0100000000F8EA
      DF20D18A53EAD5AC9DFEE0C9C5FCE5D1CEFFEFE5E6FEE3CDC9FEEEE3E3FEEADA
      D8FEDCBFBAFCCFAAA3FBDFAA87FFAA4B22E500000000C2E2C24F29A83FFB37B0
      4DFF2DAF49FF2CA740F387C5888DE1E2F2DACBCCE4FCE9F3EBFAC6E6CFFCEDF1
      EBFCEFE3CCFBF0ECE4FCE9E9EBF4EFEFEF1000000000CDE3E53380C6CD8270BC
      C59383AEB880D2EAEC2FFCFDFD039BCAD06B86B4BA7FFCFDFD03EDF6F712CEE7
      E43AAED6D25BB0C7C45DF2F6F40FFEFEFE01D7D7C9F6EBEBDEFEECECE0FFEBEB
      DFFEECECE0FFECEBDFFFEDF3EAFFEEEBDEFFDAD0BBFF72B7DAFF5DB1E7FF57AD
      E1FF9FBBBFFDF1E4CFFEEFF6EFFFB9BAACEA00000000FEFEFD0200000000E3B9
      957ED7A385FFDFC7C5FBEAD8D4FFEADBD9FEEEE4E5FFEADAD7FFE1C8C3FFEEE4
      E5FEEEE4E6FEDCBCB3FDC97E54FCB6A2A25D0000000080CA8AB76AC279CEA2D6
      A78551B964E485C890904DC35EFF6179D4FE2B2CD1FFB1ECC0FF0FDA47FFC6E8
      BEFFEEBF28FEE7CE94FFECF0FBF7EEEEEE110000000084B8C27F1D95A8EB12A9
      BCF41CA9B9E993D7DC6E0000000090DAE07B77C7CD950000000082B8C37F0590
      A5FF06A2B8FF0596ACFE7DCDD58300000000D9D9CBF7EDEDE0FEEEEEE2FFEDED
      E1FEEEEEE2FFEEEEE2FFECEBDFFFF2F0E3FFE0EBE5FF55A6CFFF7EB1D7FF4F97
      C5FF9FCCDBFEFBF7E8FEEDEEE2FFBABAACEBFEFEFE0100000000FEFEFD08DEA4
      72D5D5AD9FFEEFE3E0FCE5D0CBFEF2EAEAFFEEE1E1FFEEE3E4FFE4CEC9FFE7D5
      D2FEE7D8D9FCD8A790FEBF7248D9FFFCF809FEFEFE01F6FAF60BDBEFDE3084CE
      92A53BB85CFB30AE51F84FBE53E57685EBEC3034D8FFB3EEC3FE18E751FFC6EA
      BEFFF7CA2FFEEBD197FFEAEFFAF7EEEEEE1100000000F5F8F90AF4F7F80BF3F9
      FA0CF4F9F90BF2F7F70D0000000080C9D1886ABAC4A000000000E3EEF01CD0E1
      E430C8E8EB38D0ECED2FE5F1F21A00000000DBDBCDF7EEEEE2FEEFEFE4FFEEEE
      E3FEEFEFE4FFEFEFE4FFECEDE3FFFBF5E6FF90BFD0FF79B6DEFF94BDE3FF82AE
      D7FF599FC4FEE0E7E0FEF5F3E8FFBCBDAEEBFDFAF70900000000EDCFB44BD89D
      72FFDEC4C0FDECDCD8FEEAD8D5FEF6F2F3FEF0E6E6FFEDE2E2FFEBDBD9FFE3CC
      C8FFE1CBC9FBD08D67FFC597808200000000FEFEFE01CFE4CD4049B963ED3DBB
      62FF3CBC65F692CD9A7EF4F6F3147D8BF7E02C31D3FFB1EDC1FC17E450FFC7EA
      BEFFF4C82DFEEAD096FFEAEFFBF7EEEEEE1100000000F8FBFB07EDF3F4120000
      0000ECF3F413F6FAFB0900000000ABD8DF5699C5CD6800000000F6FAFB09F5F8
      F80A00000000F7F9FA08F8FAFA0700000000DDDDD1F7F0F0E5FEF1F1E7FFF0F0
      E6FEF1F1E7FFF0F0E6FFEEEEE5FFFBFBEFFF6E97A8FF7AA9CAFF97C9EFFF81AC
      CEFF4D7890FED8E3DEFEF9F6ECFFBEBFB2EBFEFDFC0600000000E7B786ACD5A7
      90FEE9DAD8F8E8D5CFFDF6F0F0FFF6F2F2FEF2E9E9FFF1E8E9FFE7D3CFFEE8D8
      D7FDDBB7A9FEC77C4CF1D5D4D42B0000000000000000B2E3BE9D76D29BFE83C9
      8BA95AC57BE597CE9E7EBCE6C19F8492EBE8373AD6FFB0EEC0FD16E44FFFC4E7
      BCFFF5C82EFEE9CF94FFE9EEF9F7EEEEEE110000000000000000E9F1F216F9FB
      FB06E9F1F2160000000000000000ABDAE05697C6CE6A00000000FDFEFE02E5EF
      F01AFBFCFC04E6EFF0190000000000000000DFDFD4F7F1F1E8FEF2F2E9FFF1F1
      E8FEF2F2E9FFF1F1E8FFEFEFE7FFFEFDF3FF9CA7A8FF2F5065FF395B6FFF0630
      48FF3D6071FEFBF9EEFEF3F4EBFFC3C3B6EBFEFEFE01F9EFE225DFA772F3D8B6
      AFFDF0E1DCFFEBD8D4FFFEFFFFFEF8F2F3FFF5EEEEFEF1E8E7FFE6D1CBFFE6D7
      D7FBD69F81FEC68B66AE00000000FEFDFC03FEFEFE01D1E5D1417DCE95F471D0
      96FE73D6A0FF59C47DFF8CCC919AEDEBF3D8D9D3F1FFBDF4CBFD0FDF4CFFC3E7
      BAFFF6C930FEE7CD94FFE7EDF8F7EEEEEE11FEFEFE0100000000F2F7F70DE6EF
      F019F0F5F60FFDFEFE0200000000AAD9E05798C6CE6A00000000FEFEFE01EDF4
      F512E8F0F117EEF4F51100000000FEFEFE01E0E0D7F7F3F3EBFEF4F4ECFFF3F3
      EBFEF4F4ECFFF4F4ECFFF3F3EBFFF5F4ECFFF2F3EBFF7A8A8EFF395563FF3F5F
      70FFB7C2C2FEFBFAF0FEF5F5EDFFC5C5B9EB00000000EEC79A7EDBAB87FFE2C9
      C7FFD8C6BFC1E4CFCADCFFFFFFFEFAF7F7FCF8F4F5FFECDEDBFDEAD9D5FBDFC6
      C0FBCF8A5CFFD1B2A85700000000FDFCFB04FEFEFE0100000000F1F7F024B1DD
      B89A8DD4A3E9BEDBBF69F9F9F825F4F3F3EAF8F7F2FFEBF0EDFDB9E8CCFFE7F2
      D7FFEDC51EFEE6C98CFFE6EBF7F7EEEEEE110000000000000000FEFEFE01C8DB
      DC37000000000000000000000000ACDBE15598C7D06900000000000000000000
      0000E0EBEB1F000000000000000000000000E2E2DAF7F4F4EDFEF5F5EEFFF4F4
      EDFEF5F5EEFFF5F5EEFFF5F5EEFFF4F4EDFFF6F6EEFFFCFBF4FFF1F2ECFFF5F5
      EEFFFBFAF2FEF4F4EDFEF7F7F1FFC8C8BCEBFEFBF51BEBBD87CCD9B3A3FED4B6
      AFE6F9F4F215ECDCD74BF1E7E4FFFEFFFFFBFAF8F7FDEAD6D1FFEBE1E1FFDBB1
      9DFFCB8957DBFAFAFC12000000000000000000000000FFFEFF01000000000000
      0000F4F3F280F0EAEFF3EDE9EEFBECECECFFE9EAEBFFECEBECFFF5EBF4FFEFF0
      EBFFE5D565FEE7D6AAFFE3E7F0F6EFEFEF10FBFCFD0400000000D2E5E92D52A3
      B0B17CAFB787BDDCE142F3F9FA0CA8D3DA5B98C0C96CFBFDFD04CDE6EB328EBA
      C2714A8F9DB5CAD5D93500000000FBFCFD04E6E6DFF6F9F9F4FDFAFAF4FFF9F9
      F4FDFAFAF4FFFAFAF4FFFAFAF4FFFBFBF5FFFAFAF4FFF8F9F3FFFBFBF5FFFAFA
      F4FFF8F9F3FDF9F9F3FEFCFCF8FFCBCBC0EAECAD5DB2E1AD7FFFC69A92FFE2D7
      D24C0000000000000000E1C7C0AAFCF9F8FFF9F4F2FDD4BCB7B9E9CFC9AED38B
      58F7D6AB8B8000000000FEFEFE01000000000000000000000000FEFEFE05FEFE
      FE01F6F5F67FE4E4E4FDE3E3E3F6E8E8E8F9E7E7E7FAE7E7E7FAE4E6E4FAE7E7
      E8FAE6E8EFF9EAECEEFAE1E1E0F2EEEEEE110000000000000000F8FCFD07EFF9
      FA11A3DFE66354C8D4C035C4D0DB18BBC4EB1EB9C2E63BAFBDCC4AAEBEBB95D0
      D972BCE0E645D8E9ED2700000000FCFDFD03DADAD1F6E7E7E0FEE8E8E1FFE7E7
      E0FEE8E8E1FFE8E8E1FFE8E8E1FFE8E8E1FFE8E8E1FFE8E8E0FFE8E8E0FFE8E8
      E0FFE7E7E0FEE8E8E0FDEAEAE3FFC9C9BDE9E7A350DFE3C5AA7DEDDFDA450000
      0000FEFFFF0200000000F9F4F31CECDBD7EDEADDDAFFDCD3D13700000000F1E7
      E12DFAF5F10F0000000000000000000000000000000000000000FEFEFE030000
      0000F3F3F38BE9E9E9FFE7E7E7FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEAEAE9FFEDEDEDFFE1E1E1FFF3F3F30D0000000000000000000000000000
      00000000000000000000D8F0F32A64C3D0A453B5C2B5D8EEF229000000000000
      000000000000000000000000000000000000DADAD1F9E3E3DBFEE3E3DAFFE2E2
      DAFEE3E3DBFFE3E3DBFFE3E3DBFFE3E3DBFFE3E3DBFFE3E3DBFFE3E3DBFFE3E3
      DBFFE2E2DAFEE2E2D9FEE6E6DEFFC9C9BDF0FAF2EA190000000000000000FEFE
      FE0100000000FEFEFE0200000000EAD8D370D5BAB3C3FEFDFD04FDFDFD020000
      0000000000000000000000000000000000000000000000000000FEFEFE010000
      0000F8F8F833F6F6F664F7F7F762F5F5F564F6F6F664F6F6F664F6F6F664F6F6
      F664F5F5F564F5F5F564F3F3F360FEFEFE010000000000000000000000000000
      0000FCFEFE03FBFDFD04000000009ECDD76987B7C48100000000FBFDFD04FCFE
      FE03FDFEFE02FEFEFE010000000000000000DEDED6E3F7F7F2FDFFFFFCFFFDFD
      F9FDFEFEFAFFFEFEFAFFFEFEFAFFFEFEFAFFFEFEFAFFFEFEFAFFFEFEFAFFFEFE
      FAFFFDFDF9FDFEFEFBFDF9F9F4FFD6D6CCB900000000FAF9F906FFF7F7080000
      00000000000000000000FEFDFD03F9F5F415E9D9D64E00000000FEFEFE02FDFA
      F906FEFDFD020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE01FBFDFD04DBF1F428D8EDF12BFBFDFD04FEFEFE010000
      000000000000000000000000000000000000CDCDC194DCDCD2E6EBEBE5FEE9E9
      E1FAEAEAE2FBEAEAE2FBEAEAE2FBEAEAE2FBEAEAE2FBEAEAE2FBEAEAE2FBEAEA
      E2FBE9E9E1FAEDEDE6FCD9D9CFEBE8E8E346FEFEFE01FFFFFF01FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF01FEFEFE01FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000D5D5D82A94A5AC6F8F9DA573CBD0D234000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFD0200000000000000000000000000000000000000000000
      0000FEFEFE01FEFDFD02FAF6F609BC93936CB0969669E1E1E11ECEDEC73C93C5
      8F7BDADADA25DDDDDD22ECEDEC13F3F8F40CFCFCFC03F3F3F30CE9E9E916E4E4
      E41BE1E1E11EDFDFDF20DCDCDC23E1E1E11ECDD5D33275C9B0C573CFADCF69A6
      B8C7719ED6D17D9FB6CAD4BC77CCCCBA7CC9000000000000000000000000FDFD
      FD0200000000ACB7C65E0D314FFD148297FE158399FD0D465FFF94AFB8700000
      0000FDFDFD020000000000000000000000000000000000000000000000000000
      000000000000FEFEFE01FEFEFE0100000000000000000000000000000000FEFE
      FE02000000000000000000000000000000000000000000000000000000000000
      0000FEFDFD02FEFEFE01C98B65B1D8A07AFFD48F73FFAF7F54CC2EC52EE05ACD
      68BBF2FCF30DEEF9EF12EEF5EF11000000009090927D666666CA5D5D5DDB5959
      59DC565657DD555555DD4F4F4FDD575455DB4E5D59E25ECBABFF66DCB1FF4A9E
      B4FF68AAF7FF6794B3FFE5C265FFCFB563FF00000000FDFDFD02FBFDFE04FBFC
      FD04FAFCFC05E8F4F61789C2CD7C25A6B8E623829AEB88AAB87DE8F0F218FBFC
      FC04FBFBFC04FCFCFC0300000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE01FDFDFD0200000000FEFEFE010000
      000000000000F4F3F31D0000000000000000000000000000000000000000FEFE
      FD0200000000D4A4897FD39E7CFFD5B8B9FCCABFA8EB55D02AE424DA00FF3CCB
      10EF51CF25DA4FD123DC4ACB21DE72CD61ACB9B9BA53606061EC595957FF5151
      50FF434342FF8B8B8BFF70706FFFA09C9CFF76837EFF55C3A5FC64DFB4FC4C9E
      B2FC65AEF8FC6694B0FDEBCC74FDD2B966FE0000000000000000000000000000
      00000000000000000000000000005DC5CFA6478FA0BE00000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FD04E9E9E93BE7E7E76FF2F2F2230000000000000000FEFEFE05F8F8F833EBEF
      F166FEFEFE03E1E0DE3FFEFDFD03000000000000000000000000FEFEFE010000
      0000EDD9CB4FD39163FED7B7B1FCD9BBB5F844D258E71BF054FF29EF58FB20F3
      5AFF1FF057FF21F258FF1EE852FF23C335FFFFFFFF00767676C16B6B6BFF5757
      56FF373736FAA9A9A9FB8C8D8CFCC6C2C3FC92A09BFC53BFA3FE70E5BFFF4A9D
      B2FD71B9F9FD6C9BB6F5DBC47EF6CDBA76EF00000000CDE3E53380C6CD8270BC
      C59383AEB880D2EAEC2FFCFDFD039BCAD06B86B4BA7FFCFDFD03EEF6F612BFDF
      E141ADD5D953BECDD242EEF1F111000000000000000000000000FEFEFE020000
      0000F1F0F02DE8E9E9A2E0E2E2E0C8CDCEBAE9EBEB35EFF0EF22DBDEE05EF1EF
      EE3100000000DCDAD837FAFAFA070000000000000000FEFEFE0100000000F8EA
      DF20D18A53EAD4AC9DFEE0CAC5FEE9D4D2ECC5EBC65218E993E700FDB9FF19E3
      8CEE2BEA9CDA28EBA1DB2FE28DDC65C76CBAFEFEFE01DEDEDE28A0A0A18A7777
      77DC5F5F5FFF7F7F7FFF3E3E3EFE625F5FFE7F8C88FF5CC8ACFE71E5C2FE4D9F
      B5FD88C8F9FF7BADD9D1F8FDFC1BEFF5F91F0000000084B8C27F1D95A8EB12A9
      BCF41CA9B9E993D7DC6E0000000090DAE07B77C7CD950000000083B9C47F0992
      A5FF08A3B5FF0897AAFF80CED48200000000FFFFFF010000000000000000E0E2
      E24BB6BEBECFD0D8D9FBEDEFF0FFEAEBEBFFD0D3D3FBC6CBCAB8A8C4D38EDADE
      E13EF3F2F119DCDAD737F6F6F50D0000000000000000FEFEFD0200000000E3B9
      957ED7A385FFDFC9C6FAEAD8D4FFEADCDBF200000000E9F8EA3228D66BE65AC7
      61D9EEDBD6E5D4BBA3EDC78351EDC1B0B04FFFFFFF00FFFFFF00FFFFFF00F8F8
      F80CCFCFCF51575757DA30302FFE332E30FF485752E672D8BEFB7EEACAFF57A8
      B6EC89B6DDF689B5D6B6FFFFFF00FDFEFE0200000000F5F8F90AF4F7F80BF3F9
      FA0CF4F9F90BF2F7F70D0000000080C9D1886ABAC4A000000000E3EEF01CD0E1
      E430C9E8EB37D1ECEE2EE5F1F21A00000000FEFEFE01F5F6F616C2C5C69BCCD2
      D3FFE7EDEEFFDCE4E6FEDBE2E4FEE2E7E7FBE8EAEAFEFBFBFCFFDADAD6F5A4C5
      D8A6DBE2E635DEDFDD36FAFAFA08FDFDFD03FEFEFE0100000000FEFEFD08DEA4
      72D5D5AD9FFEEFE3E0FBE5D0CBFEF2EBEBF2FCFBFA19FEFEFE01C3E7BF4695D9
      98A6EFDAE2FBDAA995FFBF7047DDFEFBF50DFFFFFF00FEFEFE01FBFBFB04FFFF
      FF00FFFFFF00696969CE51504FFF555253FE5C6865DC76CDB4DD78CBB4F2B5E1
      D559EEF8F614F4FAF90EFEFEFE01FDFDFE0200000000F8FBFB07EDF3F4120000
      0000ECF3F413F6FAFB0900000000ABD8DF5699C5CD6800000000F6FAFB09F5F8
      F80A00000000F7F9FA08F8FAFA0700000000FAFAFA0DBBC1C3C8C8D3D5FFE7ED
      EEF9F5F7F8FBF0F3F3FFE0E7E8FEDAE3E4FFE2E9EAFEECF1F2FCFBFBFAFFE3E4
      E2FFB5D2E2D4DFE7E85F0000000000000000FDFAF70900000000EDCFB44BD89D
      72FFDEC4C0FDECDCD8FEEAD8D5FFF6F2F3FDF0E4E5ECE6E0DBEDF5E0E4E5E5D0
      CBECE0CBC9FACF8E67FFC4977F8200000000FFFFFF00FFFFFF00FEFEFE01FFFF
      FF0097979880474747FF3D3D3DFB414140FC4E4D4DFF91979686F6F7F70CFEFE
      FE01FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000E9F1F216F9FB
      FB06E9F1F2160000000000000000ABDAE05697C6CE6A00000000FDFEFE02E5EF
      F01AFBFCFC04E6EFF0190000000000000000FEFEFE07F8F9F944E7EBEDBCC5D1
      D3FFCDD8DAFFEBF0F1FBF9FAFAFEEEF2F2FFDAE2E4FED5DEE0FFE2E9EBFEEEF0
      F0FBE6E7E7FFF6F8F9FFE7EAE9CAF5F7F734FEFDFC0600000000E7B786ACD5A7
      90FEE9DAD8F8E8D5CFFDF6F0F0FFF6F2F2FFF2EAEAFFF2E8EBFFE6D3CEFFE9D8
      D8FFDBB7A9FEC77C4CF1D5D4D42B00000000FFFFFF00FFFFFF00FFFFFF00FEFE
      FE06575758DB383838FE313131FC343433FC3F3F3FFF5E5B5DD8FCFBFB04FFFF
      FF00FEFEFE01FFFFFF00FFFFFF00FFFFFF00FEFEFE0100000000F2F7F70DE6EF
      F019F0F5F60FFDFEFE0200000000AAD9E05798C6CE6A00000000FEFEFE01EDF4
      F512E8F0F117EEF4F51100000000FEFEFE01000000000000000000000000F6F8
      F85ED5DCDEDAC7D2D4FFD5DEE0FFF0F3F4FBF6F8F8FEE3E9EAFED2DCDEFAD6DF
      E1FFE6ECEDFFF0F4F5D4F8FAFB6FFDFDFD1BFEFEFE01F9EFE225DFA772F3D8B6
      AFFDF0E1DCFFEBD8D4FFFEFFFFFEF8F2F3FFF5EEEEFEF1E8E7FEE6D1CBFEE6D7
      D7FAD69F81FEC68B66AE00000000FEFDFC03FFFFFF00FEFEFE01FFFFFF00E3E3
      E31C4D4D4EEC3B3B3AFE383837FD383838FE414141FE4E4E4EEFE4E4E41BFFFF
      FF00FEFEFE01FFFFFF00FFFFFF00FFFFFF000000000000000000FEFEFE01C8DB
      DC37000000000000000000000000ACDBE15598C7D06900000000000000000000
      0000E0EBEB1F00000000000000000000000000000000FEFEFE02FEFEFE010000
      0000FCFCFC0FF0F3F383CED8D9F2C4D0D2FFDBE3E4FCF4F6F7FCF0F3F3FFDCE4
      E5F3ECF0F17BFDFDFD0A000000000000000000000000EEC79A7EDBAB87FFE2C9
      C7FFD8C6BFC1E4CFCADCFFFFFFFEFAF7F7FCF8F4F5FFECDEDBFDEAD9D5FBDFC6
      C0FBCF8A5CFFD1B2A85700000000FDFCFB04FFFFFF00FFFFFF00FFFFFF00FDFD
      FD0C575757E5464645FC414140FC424241FD4C4C4BFC585859E7F8F8F80CFFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFCFD0400000000D2E5E92D52A3
      B0B17CAFB787BDDCE142F3F9FA0CA8D3DA5B98C0C96CFBFDFD04CDE6EB328EBA
      C2714A8F9DB5CAD5D93500000000FBFCFD04000000000000000000000000FEFE
      FE020000000000000000FCFDFD24ECEFF0A5C9D4D6FFCCD7D8FFF1F4F59EFBFC
      FC260000000000000000FEFEFE0300000000FEFBF51BEBBD87CCD9B3A3FED4B6
      AFE6F9F4F215ECDCD74BF1E7E4FFFEFFFFFBFAF8F7FDEAD6D1FFEBE1E1FFDBB1
      9DFFCB8957DBFAFAFC120000000000000000FFFFFF00FFFFFF00FEFEFE01FFFF
      FF0089898AA35C5C5CFF4E4E4DF74E4E4DF8606060FF8C8C8DA2FFFFFF00FEFE
      FE01FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000F8FCFD07EFF9
      FA11A3DFE66354C8D4C035C4D0DB18BBC4EB1EB9C2E63BAFBDCC4AAEBEBB95D0
      D972BCE0E645D8E9ED2700000000FCFDFD030000000000000000000000000000
      000000000000FEFEFE030000000000000000FAFBFB4EF0F3F46A000000000000
      0000FFFFFF03000000000000000000000000ECAD5DB2E1AD7FFFC69A92FFE2D7
      D24C0000000000000000E1C7C0AAFCF9F8FFF9F4F2FDD4BCB7B9E9CFC9AED38B
      58F7D6AB8B8000000000FEFEFE0100000000FFFFFF00FFFFFF00FEFEFE01FEFE
      FE01E8E8E81B737374CB6F6F6FFF70706FFF757576CCE8E8E81BFFFFFF00FEFE
      FE01FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000D8F0F32A64C3D0A453B5C2B5D8EEF229000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE02FEFEFE020000000000000000FEFEFE03FEFE
      FE0200000000000000000000000000000000E7A350DFE3C5AA7DEDDFDA450000
      0000FEFFFF0200000000F9F4F31CECDBD7EDEADDDAFFDCD3D13700000000F1E7
      E12DFAF5F10F000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FEFE
      FE01FFFFFF00F1F1F20FB4B4B564B3B3B463F0F0F010FFFFFF00FEFEFE01FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FCFEFE03FBFDFD04000000009ECDD76987B7C48100000000FBFDFD04FCFE
      FE03FDFEFE02FEFEFE0100000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD02FDFDFD02000000000000
      000000000000000000000000000000000000FAF2EA190000000000000000FEFE
      FE0100000000FEFEFE0200000000EAD8D370D5BAB3C3FEFDFD04FDFDFD020000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFCFC03FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFC03FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FEFEFE01FBFDFD04DBF1F428D8EDF12BFBFDFD04FEFEFE010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAF9F906FFF7F7080000
      00000000000000000000FEFDFD03F9F5F415E9D9D64E00000000FEFEFE02FDFA
      F906FEFDFD02000000000000000000000000000000009D653C009C633A009B61
      390099613700975F3500965E3400955D3300935B320092593100925A2F009058
      2E008F582E008E562C008D552C008C552B000000000000000000043989000439
      8900000000000439890000000000043989000539880000000000043989000000
      0000053989000000000004398900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EAEA
      EA00CACACA008169A700856BAC00F2F1F600FDFDFD02FAFAFA05FAFAFA05FAFA
      FA05FAFAFA05FAFAFA05FAFAFA05F5F2F11EDDCCC164CDA16BBBCA8A33E2AA6E
      35ECAA6A34ECBA7431E4B88058BEDAC3B85EA26A4200CDAD8300CBAA80009E6D
      49009C6D48009A6B4700C39C6D00C0976600BF956300BD905D009E6E49009C6D
      48009C6C4800B8875100B88751008E562D00083C8B003366AA003366AA003366
      AA003366AA000F438E002089BA00218BB400238CB4004C9AC9000E438E003366
      AA003366AA003366AA003366AA00083C8B0000000000E3CAAC00E4CAAC00E3CB
      AC00E3CBAC00E3CAAD00E4CAAD00E4CAAD00E4CAAC00DEC5A800CBB399006592
      AA0088A7BF008E8E9000D2D2D8008070D000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00D9C0AAA7E2BF8AF1D2923CF9D27F18FC654A
      80FD744E6BFDCC7312FCA9541BF9A85E38ECA56C4300CEAF8600CCAD8300EEE3
      D400ECDDCD00A2704A00C49E7000C2996900C0976600BE926000A5724C00ECDD
      CD00EAD9C400B9885200B88751008F572D000A3F8C00376BAF00386BAF00386B
      AF004274B50014489200007EB500FFFFFF00FFFFFF00137FB100144892004273
      B500386BAF00376AAF00376BAE000B3F8D0000000000E5CCAF00E4CCAF00E5CC
      AF00E5CCAF00E4CCAF00E4CCAF00E4CCAF00E3CBAE00C4B097009B9182002099
      F0002C9BF700D9DCE300838386006860CD00C7C8C63C575853B94B4E47C54B4D
      48C44C4E47C44A4B46C44A4C46C4E0C19C79D19341E6B46D1FFA978E6DFD4388
      CEFD5088BFFDA6834CFCAC663AF9C9A193D0A86F4700D0B38B00CFB18900F3F1
      EA00F3EEE600AE794F00C7A37600C49E6F00C39B6C00C0976500B27B5000F3EE
      E600F1EBE100BA8A5500BA895400925A31000F438F004276BA004275B90077A3
      D5007AA7D600194E95001A4E95001A4D96001A4D96001A4D9600194D950078A4
      D5007AA5D6004376B9004275BA000F438E0000000000E6D1B600E6D1B500E6D0
      B600E6D0B600E6D0B600E6D0B600D6C0A900B8A692001F95DF00239AF2003AA0
      FE0048A9FF0068C4F7006294A800ECECF000A1A29D6A202316FF202316FF1E22
      15FF1B1E13FF1B1E12FF1D2013FFF3F8F90FBEC8C26752989AEA19C0E5FC24D3
      F8FC3CDBF8FD56CFDAFE8CB6B9D6C2D09D7FA9714900D1B48E00CFB38B00B57D
      5200B57C5200B47C5100C8A57800C5A07200C49E6F00C1986800B57D5200B57C
      5200B47C5200BA8C5800BA8A5600945B320012459000487ABF00487BBF007AA6
      D70015499300E3C9AA00E4C9AA00E3C9AA00E3C9AA00E3C9AA00E3C9AA00E3C9
      AA007EA9D9004C7EC100487BBF001245910000000000E7D3BA00E7D3BA00E7D3
      BA00E7D3BA00E7D3B900E3D0B700B2A38F005C8BA0002499F300309CFA004AAB
      FE005AB8FA0083D6F9008DCDF10000000000A0A19D6C2A2D21F41D2015FC181A
      12FC3F4827FC262B1AFC181B12FC1A1D12FF9CDBF1630AC9F9F516D6FFFD38DE
      FDFD59E9FCFC78F4FEFE8BEAF4E9D2EDF349AD744C00D2B89200D1B69000148B
      D200148BD200148BD200CBA97F00C8A57800C6A27600C49D6F00C39B6B00148B
      D200148BD200BD8F5C00BB8E5A00975F3500164A93005386CB005588CC00E7D2
      B900A8744D00A8744D00A8744D00A8744D00A8744D00E7D2B900E7D3B900A874
      4D00E7D2B9005A8BCE005387CC00164A930000000000E9D9C300E9D9C200E9D9
      C300E9D9C300D6C5B200AC9F900047B1F10032A0F5003FA2FF004FAEFD006EC9
      F60087D8FB00DDEBF500FEFEFE00000000009B9D947A3A4128F8454F29FF4855
      26FF5B6C2DFF445222FF2C3318FF1A1D14FC8ABCCC852A94B1FE50A5B9FC6FB8
      C8FD7ECCD6FD8DE5E7FD9FE6E9FDC6DFE569AE754D00D3B99400D2B792006AE7
      FF004FDFFF0014D0FF00148BD200C9A77B00C8A47800C59F7100148BD2004FDF
      FF002FD8FF00148BD200BC905C0098603700184C9500598CD1008A614000E9D7
      C100E9D7C100E9D7C000E9D7C000E9D7C000E9D7C100E9D7C100E9D7C100E9D7
      C000E9D7C0008A614000598CD100194C940000000000EBDBC800EBDCC900EADC
      C800EBDBC900C1B4A40091999800D2F4FF00B7E9FF0050AFFD0060BDF90088D9
      FB0078C5F700FEFEFE0000000000000000008C8D868A2F3225FA383E29FF4149
      2BFF55642CFF232718FF495628FF404C21FFC1B9B950443535EA473334FE6F53
      53FD927373FCA39192FEA6A1A2D9C2D09D7FB1774F00D4BB96001073A90076EA
      FF0071E9FF003ADAFF00148BD200CBAB8100CAA97E001073A900148BD20071E9
      FF0059E2FF00148BD200BE9361009C633A001D50970000358600976A4500EDE0
      D100A8744D00A8744D00A8744D00A8744D00A8744D00A8744D00A8744D00A874
      4D00EDE0D10096694600003586001C51970000000000EDE1D200EDE1D100EDE1
      D200EBDFCF009D958A0097D2ED00CAF4FF00CAF4FF00A2E3FE008BD9FD00B5CA
      D400A5714A00000000000000000000000000757770A12D3125FB24261EFF2F33
      24FF69793FFF23241EFF25271EFF31381DFF181B0FFFA69F9F66474040C72922
      22E73C3232E47B6A6ABC8DAB3EFFC2D09D7FB1785000D4BB96001073A900148B
      D200148BD200148BD200CFB28A00CDAE8400CBAB81001073A90000B6F100148B
      D200148BD200C1976700C09564009E663C001F529800003586009D6D4800EEE5
      D800EFE5D800EFE5D900EFE5D800EFE5D800EFE6D800EEE5D800EFE5D800EFE5
      D800EEE5D8009D6D4800003586001E52990000000000EEE5D600EEE4D600EEE4
      D600E6DCCE0084837E008FA2A700BAEFFF00BAEFFF009FE2FF0066BDFA00ECE2
      D400A8754C0000000000000000000000000061645CBC323528FD2D3124FF363B
      29FF687646FF272A1FFF2F3324FF1E2019FF262B1BFF262B1BFF93B244FEA398
      9871A79E9E6A93B244FE93B244FEB9CB8D98B2795100D4BB9600D4BB96001073
      A900D3BA9400D2B79100D1B58F00CFB18900CEAF8600CCAB80001073A900C7A4
      7700C6A17300C39C6D00C2996A00A2694000FFFFFF00FFFFFF00A8754C00F3ED
      E600A8744D00A8744D00F2EDE500A8744D00A8744D00A8744D00A8744D00A874
      4D00F2EDE500A8744D00FFFFFF00FFFFFF0000000000F0EADE00F0EADE00F0E9
      DE00E0D9CF004A494700323130009CC9DB00A6C9D400D6D9D700EEE7DC00F0EA
      DE00AD774E000000000000000000000000004E504AD72B2D26FC2A2B25FF2C2E
      26FE383D2CFF262822FF282B22FF2B2E22FF202319FF333333FFA6AE92FF93B4
      40FF95B446FE94B344FE95B546FDB0C47AB5B2795100D4BB9600D4BB9600D4BB
      9600D4BB9600D2B99200D2B79100D0B48C00CEB28A00CCAD8400CBAB8000C8A5
      7A00C7A37600C59E7000C39C6D00A36B4200FFFFFF00FFFFFF00AD784E00F4F1
      EB00F3F1EB00F4F1EB00F4F1EA00F4F1EB00F3F1EA00F4F1EB00F4F1EB00F3F1
      EB00F4F0EB00AD784E00FFFFFF00FFFFFF0000000000F1ECE100F1ECE200A874
      4D00A4714B00D9D5CC00DBD7CF00E5E0D600E9E5DB00F0EAE100F1ECE200F1EB
      E200AE794F00000000000000000000000000A3A59DFFA3A69AFFA2A69AFEA2A5
      9BFEA0A39AFEA2A59AFEA2A59AFEA2A59AFE9FA397FEA7A8A4FEB2BC97FF93B5
      40FE98B748FF97B647FD96B646FF9FBA5AE96A6A6B006B6B6A006B6B6B006A6A
      6A006B6A6B006B6B6A006B6B6B006B6A6B006A6A6B006B6B6A006A6A6B006B6A
      6B006A6A6A006B6A6A006A6B6B006B6A6A00FFFFFF00FFFFFF00B47C5100B47C
      5100B47C5100B47C5100B47C5100B47C5100B47C5100B47C5100B47C5100B47C
      5100B47C5100B47C5100FFFFFF00FFFFFF0000000000F3EFE700F3F0E800F2F0
      E800F3EFE800F2EFE700F3EFE800F2F0E800F2EFE800F2F0E800F3F0E700F3F0
      E800B17A5000000000000000000000000000CED9AF6DA4BB69D692AE4AFF92AE
      4BFD93AF4BFF92AE4AFF92AE4AFF92AE4AFF92AE4AFF91AD4BFD8BA643FA88A6
      3EFB8BA741F889A63EFB9DB55ED3D1DCB55F7A797900F3F3F300F3F3F300F2F2
      F200F1F1F100EEEEEE00EDECEC00E9E8E900E6E7E600E3E2E200E0E1E000DCDC
      DC00DADADA00D5D6D600D4D4D4007A7A7900FFFFFF00FFFFFF00FFFFFF00D5A9
      7A00F5F3EF00F5F3EF00F5F4EF00F5F4EF00F5F3EF002D2DC400F5F4F000F5F4
      F000D5A97A00FFFFFF00FFFFFF00FFFFFF0000000000AEA27F00AEA27F00AEA2
      7F00AEA27F00AEA27F00AEA27F00AEA27F00AEA27F00AEA27F00AEA27F00AEA2
      7F007E3B1900000000000000000000000000FFFFFF00F2F5EC14E3E8D42EE3E8
      D62DE3E8D52EE3E8D52EE3E8D52EE8EDDA2DE3E9D23786A23CF483A036FF83A0
      37FF83A037FF83A036FFE5EBD535FFFFFF009D9D9D00F3F3F300F3F3F300F3F3
      F300F3F2F300F0F0F000EFEFEF00ECEBEC00EAE9EA00E6E6E600878787008787
      8700DEDDDD000000FF00D7D7D7009D9D9D00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F5F3EF0049802900F5F4F000F5F4F0004647EA00F5F4F000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000DEBFA100DBBC9C00D6B4
      9200D3AF8D00CCA58200CAA07C00C2977200C0936C00BA8A6200B8865E00B47F
      5500A2805B00000000000000000000000000FCFDFB04FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5EDD33CDDE6C351DDE7
      C450DCE6C252E0E9C949FDFEFC03FDFDFC04ADACAD00F3F3F300F3F3F300F3F3
      F300F3F3F300F2F1F100F0F0F000EDEDED00EBEBEB00E7E7E700999999009999
      9900DFDFDF00DBDBDA007B7BD800ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B47C510057943000B47C5100B47C5100B47C5100B47C5100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000E4CBB100E2C8AD00DEC1
      A500DBBDA000D7B69700D3B19200CEA98900CBA58400C59D7B00C39A7700BF94
      7000A0805C00000000000000000000000000FFFFFF00FEFEFE01FDFEFD02FDFE
      FD02FDFEFD02FDFEFD02FDFEFD02FEFEFD02FEFEFD02FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000A08A7800A08A7800A18A
      7700A28B7700A28B7600A48B7500A58C7500A68D7400A78D7500A98D7500AB8F
      74009D7D5C00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9F9F906FBFCF908FBFC
      F908FBFCF908F7F7F708FFFFFF00FFFFFF00FDF1EBFFFCF0EAFFFBEFE9FFFBEF
      E9FFFFF0EFFFF4F0E5FFF4ECE5FFFFF0F4FFFFF4ECFFFDF2EAFFFDF1EBFFFBEF
      EBFFFDF1EBFFFDF1EBFFFDF1EBFFFDF1EBFF0000000000000000000000000000
      0000000000000000000000000000158655000000000016875600000000000000
      000000000000000000000000000000000000000000009D9D9D00A5A5A500B4B5
      B400BBBBBB00BEBFBE00BFC0BF00C0C1C000C1C1C000C0C0BF00BFC0BF00BEBE
      BE00BBBCBB00ADAEAD00A5A5A500CBCBCB000000000000000000000000000000
      000000000000E1D2C800C6AB9800AB846800AB846800C6AB9900E2D4CB000000
      000000000000000000000000000000000000FCF0EAFFFBEFE9FFFEF2ECFFFDF1
      EBFFEFEADBFFD7D8CFFFC2C2B6FFDBD9C7FFF5EAE2FFF6EBE3FFFCF0EAFFFFF3
      EFFFFDF1EBFFFDF1EBFFFDF1EBFFFDF1EBFF0000000000000000000000000000
      000000000000CCE5DA00B1D7C600168A5700B1D7C600178B5800CCE5DA000000
      00000000000000000000000000000000000000000000D8D8D800E5CDB100E4CD
      B200E5CDB200E5CDB100E5CEB100E4CDB200D3B39400E5CDB200E5CEB200D3B2
      9400E4CDB200E5CEB200E5CEB200A5A5A400000000000000000000000000AC85
      690090664700815F30005A6F51005265450060431C006B5120006C502000936A
      4900AC856900000000000000000000000000FFF3EDFFFEF2ECFFF8ECE6FFECE0
      DAFF347029FFB1DCB1FFC8FCC6FF1D6512FFBAAFA7FFE0D5CDFFF9EDE7FFFAEE
      EAFFFDF1EBFFFDF1EBFFFDF1EBFFFDF1EBFF0000000000000000000000000000
      0000B1D7C7001587550015875500178C580015875500178C58001587550098CA
      B4000000000000000000000000000000000000000000D9D9D800E5CFB300E5CF
      B300E5CEB400E5CEB300E5CFB300E5CFB300D3B49500E5CFB300E5CFB400D3B4
      9500E5CFB400E6CEB400E5CFB400ADAEAD000000000000000000DACCC2007C55
      34006542170056592C002D7A540015735300515E4F005C3A06005F3D09006346
      12007A542E00DACCC2000000000000000000F9EDE1FFE3DDD6FF5B8A46FF5AA5
      67FFBDE0BEFFE0F7DBFFFFFFFCFFFFF3FFFFDCFAE1FF355F22FFC0C2A5FFE4C4
      D5FFFFEDEAFFF0EBEDFFFFF5F6FFF9EDE3FF000000000000000000000000329A
      6B00178C5800178C5800178C580019905C0065B3900019905C00178C5800178C
      5800178C580000000000000000000000000000000000DBDCDB00E3CCB400E6D2
      BA00E7D2B900E7D1B900E6D2B900E3CDB300D3B59800E7D1BA00E7D2BA00D4B6
      9900E7D2B900E7D2B900E7D2B900BBBCBB0000000000B0896B007B582D006F50
      220080591900258562000A8F6000149D69000775540098924800838532007367
      310079672F0079552400B0896B0000000000E5EBE0FF297A23FF65AC6AFF9CCD
      99FFCEDECCFFFBFFFCFFF7FAF8FFFBFFF9FFFFFEFEFFFFFBFFFFB0855EFF7059
      2BFFB0B99EFFD5DACBFFFBE3E5FFF0E9ECFF000000000000000000000000188F
      5B00188F5B0065B59200000000001A935E00000000001B945F0065B59200188F
      5B00188F5B0000000000000000000000000000000000DDDDDD00B4947C00D4B6
      9A00D5B79B00D4B79B00D3B69A00B4947B00CBAC9000D4B79B00D5B79B00D4B7
      9B00D5B79B00D4B79B00D5B79B00BDBEBD0000000000946D4800665A17009B66
      4D0095814E000D885F00149D6B0017A06B00037651009F9B520087913A007774
      43007674310070541300946C480000000000F1FAE5FF509754FF86AD87FFDBF3
      D5FF5E9262FF6DB072FF1D6A26FF89D693FFF1FFF2FFFAFFFCFFBC8C74FFBE91
      4DFFFEFFEAFF406943FFB9BEA1FFE6DBC7FF000000000000000000000000B3DC
      CA00B3DCCA00E6F4EE00000000001B986100000000001C996200E6F4EE001B95
      5F001B955F0000000000000000000000000000000000E0E0DF0021219D00AD96
      8E00DECBB500DECBB500AE968E0021219D0021219D00DECBB500E8D8C300D6BB
      A000E9D9C400EAD9C400E9D9C400BFC0BF00E5D8CD007A78290088795200C6A8
      6F005CB8760027C088003DD89F002AC68B0014AB6E0073A15D00ACA15800B4AF
      5400BAA547005B7D68005D785A00E4D7CB00EFF9DBFFB3E6B4FF689D6BFF3A9B
      3AFFC1D6C0FFFFFEFDFFFFFBFCFFF0FBF3FF0B6C16FF5D7C4FFFCAB588FFD78F
      88FFFFF6FFFFEBFBEAFFD0EFD2FFADD6B7FF0000000000000000000000000000
      00000000000000000000000000001C9B6300000000001D9C640068BB97001C99
      62001C99620000000000000000000000000000000000E1E2E100BEB1BF002323
      A600AF999100AF9991002323A600A69BB9002323A600AF989100DFCDB800D7BC
      A300EADCC800EBDCC800EBDCC800BFC0BF00CFB59F0088883D00958A5500B4BE
      860024AB6E0036D3980042E1A7001BBC7C0024A75C008BB66900DEC57600D3B6
      6F00A3A061001B6D440033995600CEB49E006AAC6BFF337C38FF79BA82FFA5D5
      A1FFE0E4D8FFFFFCFFFFFFFAFFFFFFFFFCFFFFF8FAFFD8D4C2FF82582EFF3A81
      3EFFABE9ADFFE8EFEAFFD6E4D8FFCECFB5FF0000000000000000000000000000
      000083CBAB001EA067001EA067001EA067001EA067001EA067001EA067001EA0
      670083CBAB0000000000000000000000000000000000E5E5E500D8C0A900B09E
      AC002626BB002626BB00B09EAC00D8C0A900D5BDA9002626BB002626BB00CFB4
      9D00D7BFA800D7BFA800D5BCA400C1C1C000BB9775009DA25D006492680041C0
      7E0015B6730010955B001B975B00BACC8E00F1D99B00E8D89A00FED8A2001770
      3800068257002DC58C002CD19000BA96750012540CFF5EA465FFA9BC9BFFE0F9
      DDFFD1FFE1FF56DD87FF97EDADFFFFFFF5FFFDFCFFFFEFDFD2FFF4B37CFFD0B3
      98FF38873DFF68B168FF398135FFFFE5EBFF0000000000000000000000009DD7
      BD0020A46A0020A46A0020A46A001FA3690020A46A001FA3690020A46A009DD7
      BD000000000000000000000000000000000000000000E7E6E600EDE3D400E9DF
      D400C1B8D000C1B8D000E9DFD400EDE3D400D8C2AC00C1B8D0002727C700A48A
      8700E1D3C500E2D3C500C6B3A800C1C1C000BD99750055A16600158B5D003EC9
      810032C783009AC59200ECDBA800EDD79900F1D89A00D8CF9700C3CD8C001BBF
      7B0027C3880034D197002CDB9200BD9975000D5D0AFFD2EDD3FFC6FFD6FF6FE0
      96FF53E872FF40EC66FF2FDC5CFF30D464FF76CB87FF958C71FFFFCCAFFFBCA7
      9FFFFDFEFAFFFFF6F8FF26691EFFF1EEE6FF00000000000000000000000022AC
      6F0022AC6F006CC89F000000000021A96D000000000022AA6E00000000000000
      00000000000000000000000000000000000000000000E9E9E800EFE8DB00EFE8
      DB00EFE8DB00EFE7DB00EFE8DA00F0E8DB00DBC5B000EFE8DB00ECE4DB002A2A
      DA002A2ADA002A2ADA002A2ADA00BFC0BF00D4BBA30019A86B0027C689000C8D
      5E0020B77A00CBD29E00E9D29A00EBD19A00EBD19A00EED7A300B1D298002BCC
      8F0036D2980030D795001AC17700D4BBA300CFE5C8FF2D6C22FF85CD99FF6BFF
      8DFF4ADD75FF47E573FF4A9F4AFF6A6C38FFF3B88AFFEDCB89FF806844FFC5C0
      B1FFDBFADFFFE3F6E7FF006300FFE9E4E1FF00000000000000000000000024AF
      720024AF7200B6E5D0000000000022AC6F000000000023AD70009EDCC1006DCA
      A1006DCAA10000000000000000000000000000000000EAEAEA00F0EADF00F0EA
      DF00F0EADE00F0EADE00F1EADE00F1EADE00DBC7B300F0EADF00F1EADF00B4A3
      BD002B2BE2002B2BE200C4BEDE00BFBFBE00E9DCCF0032A86D0023C8870017B4
      76000E9E6A00B4CDA000E5D2A300E7D09E00E7D09E00EAD2A900B7CCA2001CB7
      7C0034D399002DD9930020B27100EADDD100FFF2F3FFF5EDE0FFF2FFE4FF90B3
      8BFF4D6137FFC47056FFD69B56FF957446FF4B7F39FF37C848FF21B636FF25AC
      2EFF3CA048FF9BD299FF296420FFFFF2EBFF0000000000000000000000003FBE
      860026B5760026B5760088D7B40024B173000000000025B2740026B5760026B5
      76003FBE860000000000000000000000000000000000EDEEED00F2EDE500F2EE
      E500F2EDE500F2EDE500F2EDE400F2EDE500DCC9B700F2EDE400F1EDE400DCC9
      B700EEEAE500EEE9E500F1EDE500BBBCBB00000000009F89610050BE7E0037D8
      9B002CCF900068C19100DCD6B600E6D1A900E7D1A800E4D4B30078C8980022B9
      7F003ADDA00031BC7B009C87640000000000FFF1EFFFFFF2F1FFF8E8E9FFFFF6
      F7FFFDFBF3FFCCCFBFFF295F1EFF93CA9DFF5AC868FF19D028FF5BD063FF68AB
      6EFF386B2DFFC0D3B2FFECFADEFFFFEDFBFF000000000000000000000000A0E0
      C40027B8780027B8780027B8780025B3750027B8780025B3750027B8780027B8
      780088D8B50000000000000000000000000000000000EFEFEE00F3EFE600F2EF
      E600F3EEE600F3EEE600F3EFE600F3EFE600DCCAB800F2EFE600F3EFE600DDCA
      B800F2EEE600F3EFE600F3EFE600B5B5B50000000000C4A17A00889267002CD0
      920032D395000C9E660087CE9B00E7D1AC00E7D1AB00DBD1B00042BD840027C7
      8A0025D78D00898E6C00C29F790000000000F6F7E7FFF5F8E9FFF4EFE6FFFFF8
      F2FFFFF1F3FFFFEFE9FFFFF6EAFFF2FFE5FF849C7AFF196713FFA4BC9CFFFBF0
      F3FFFFFBF2FFFFF9F0FFFBF4EBFFFFF6EFFF0000000000000000000000000000
      000000000000B8E9D30070D3A70026B7780070D3A70026B77800A0E2C5000000
      00000000000000000000000000000000000000000000F0F1F100F3F0E800F3F0
      E800F3F0E800F3F0E800F3F0E800F3F0E800DDCBB900F3F0E800F3F0E800DDCB
      B900F3F0E800F3F0E800F3F0E800A4A5A4000000000000000000E9DDCF007390
      670022BF7B001CBF7E001BB97400F0DBC100C4D4B4005FBD6E0062E0AD009FE4
      BA008B937A00E8DBCD000000000000000000FFEFF3FFFFF3F5FFFCEBEEFFFFEE
      F2FFFFF0EDFFF6F2EDFFFFEFF1FFF6F6F0FFFFEBEDFFFDF9F4FFFCEFEDFFFFEF
      EAFFF5EDEDFFF7F1ECFFFEECEDFFFFFDF2FF0000000000000000000000000000
      000000000000000000000000000027B979000000000028BA7A00000000000000
      00000000000000000000000000000000000000000000F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F1009C9D9C00000000000000000000000000C9A7
      7E009F90690060DCA90067C58F00E5D5B900A6D0AA006CC89300CDF4DD009E88
      6800C6A37B00000000000000000000000000FEF3EFFFFEF3EFFFFEF3EFFFFEF3
      EFFFFDF4F0FFFDF4F0FFFDF4F0FFFDF4F0FFFCF3EFFFFCF3EFFFFCF3EFFFFCF3
      EFFFFCF3EFFFFCF3EFFFFCF3EFFFFCF3EFFF0000000000000000000000000000
      000000000000000000000000000028BC7B000000000029BD7C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EDE1D300DCC5A900CAA87F00C9A77F00DCC4A900ECE0D1000000
      000000000000000000000000000000000000000000000000000000000000FFFE
      FE010000000000000000E7C0936CF19E3DC2E5A75EA1F2EDE81700000000FEFD
      F80700000000000000000000000000000000FEFFFEFFFDFDFEFFDBE9F6FFC1D3
      E8FFC2D5EAFFC4D4EAFFC3D3E9FFBCD4E9FFBBD4E9FFBAD4E8FFBAD4E8FFBAD4
      E8FFBBD4E9FFBBD4E9FFBCD3E7FFD5E2F2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FAFAFA08000000000000000000000000CCCCCC495E5E5EEF6D6D
      6DD7F6F6F60C0000000000000000000000000000000000000000FEFDFD02FCF4
      E916F78B0DF2FF8B00FFFF8A01FEFF8901FEFF8A01FEFF8A00FFFF8800FFF4CD
      877800000000000000000000000000000000FDFDFEFFFDFEFFFF6DB7E8FF48AC
      F5FF43A9F3FF44AAF2FF41A7F0FF44A5EFFF44A4EEFF43A3EDFF42A2EBFF45A5
      E5FF42A2E8FF41A1E7FF42A2EAFF2B84D2FFC1C1C151999999B8929496DB9D8D
      8AEFA49B96E499908EFE979696FF979797FF979797FF949494FF949494F59393
      93F4949494E0969696C99F9F9F95000000000000000000000000000000000000
      0000F5F5F50B858585945F5F5FDF656565E84F4F4FFF737373FFADADADFEA4A4
      A4FE5D5D5DFF6F6F6FD5000000000000000000000000FEFEFD02F4CB8D72FF8A
      00FFFE8901FEFE8901FEFF8A00FFFF8A00FFFF8A00FFFF8A00FFFF8A00FFFF8C
      05FAF7880BF4000000000000000000000000FAFCFEFFFAFDFFFF73B8E9FF5CB9
      FFFF54B2FCFF55B1FAFF53AFF8FF55B0F9FF55B0F9FF53AFF7FF46B0F5FF4FAD
      F2FF4EAEF2FF50B1F5FF5CBDFFFF3088D3FF000000000000000000000000F1F9
      FD0E0089E3FF9DD0EE6200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005353
      53DA8A8A8AFF9C9C9CFBA1A2A2FD4D4D4DFDD1D1D1FEEFEFEFFEF7F7F7FFF5F5
      F5FFECECECFE9B9B9BFA6C6C6CDBFCFCFC04FEFEFD02F3D3AC53FF8B04FBFF8A
      00FFFF8900FFFF8B03FFFF8B03FFFF8B02FFFF8A01FFFF8B01FFFF8100FFFE8B
      01FEFE8902FDF9880AF50000000000000000C0A492FFBCA18FFF9B918BFF908F
      8EFF8D8D8BFF928C89FF908A87FF918A88FF928A88FF948B88FF6B7B8CFF64C0
      FBFF56B7F9FF5ABBFEFF5BBDFFFF3189D4FF0000000000000000000000000093
      E3FF018EE1FE058CDFFA2D98DDD2000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004D4D4DFF8C8C
      8CFCB7B7B7FEFDFDFEFFAAAAAAFF9D9D9DFFEFEFEFFFE4E4E4FF6F6F6FFFFFFF
      FFFFFBFBFBFFECECECFE616161FDF7F7F70D00000000FF8A00FFFF8A00FFFF8A
      00FFFF8700FFFFB35AFFFFB155FFFFA741FFFF9D2BFFFF951EFFFFFFFFFFFF99
      27FFFE8A01FEFE8B05FAF2C08877FEFBF708F7DACCFFFCE9DBFFFFECDEFFFFEC
      E1FFFAE7E0FFFBE6D9FFFAE6DAFFF9E8D8FFFAE7DBFFFBE9E1FFA19080FF5AC0
      FEFF58BBFEFF58BBFEFF59BDFFFF328AD5FF00000000FCFDFE03FCFDFE0327A5
      E6D80391E3FC72D9F8FE0386DDFC0187DCFFF7FBFD08FCFDFE03000000000000
      000000000000000000000000000000000000FEFEFE014C4C4CEA737373FCD9D9
      DBFEFDFDFEFFF9F9FAFF616161FFDCDCDCFFFAFAFAFFE0E0E0FF191919FF1E1E
      1EFFE2E2E2FFF4F4F4FFA7A7A7FD747474DDF6B1639CFE8B05FAFF8A00FFFF8A
      00FFFF8300FFFFFDFBFFFFFAF5FFFFDEB8FFFF9822FFFFFFFFFFFFFFFFFFFF88
      05FFFF8A00FFFF8A00FFFE8900FF00000000F4D8C9FFE7D0C2FFC1967CFFC097
      7BFFECCEB6FFCCB29EFFD1AF9CFFD0AF9AFFC8AA97FFFEEBDCFF9D8C83FF4BBA
      FCFF59BBFEFF59BAFEFF5ABCFEFF2F87D2FFFEFEFE01A8DBF35771C8EF8E02A0
      EDFD4FC7F0FF70E2FFFF79E4FBFE1997E3FF0189DFFFA4D0EC5B000000000000
      000000000000000000000000000000000000EBEBEB18959495FDB7B7B9FEF3F3
      F5FFB6B6B7FFF8F8FAFF606060FFDFDFDFFFFCFCFCFFE8E8E8FF474747FF4242
      42FF8F8F8FFFF9F9F9FFB0B0B0FE6B6B6BF3FD8A05FAFF8A01FEFF8A00FFFF8A
      00FFFF8200FFFFFEFEFFFFFBF7FFFFE1BFFFFFE6CAFFFFFBF8FFFFA53EFFFF8B
      02FFFF8A00FFFF8A00FFFE8900FFF9F5EA15F5DED3FFFEEBD8FFF8E7DBFFFAE6
      D9FFF8E4D8FFBB9E85FFCFA890FFD4A890FFCAA389FFFDEFE2FFA18074FF71C0
      F1FF3CADEEFF59BDFBFF56BAFEFF2E88D3FFD2EFFA2D03AEF5FC04ABF2FB21B2
      F0FE5FC1D1FF53ABBDFF56B1C7FF6FE1FBFF4DB9EEFF0389DEFC3CA0DEC30000
      000000000000000000000000000000000000828282B76E6E6EFBF5F5F6FFF1F1
      F3FFF1F1F3FFEFEFF1FF929292FFC2C2C2FFF7F7F7FFECECECFF626262FFEAEA
      EAFFFDFDFDFFEFEFEFFE828282FED4D4D447FF8A01FEFF8A01FEFF8A00FFFF8A
      00FFFF8301FFFFF6EDFFFFE5C7FFFFA844FFFFFFFFFFFFB96FFFFF9111FFFF8A
      00FFFF8A00FFFF8A00FFFF8A02FDF2AF5FA0F3D8CFFFD5BCAAFFFFF0E3FFFFED
      DDFFFFF1E1FFDCC4B6FFFFF0E3FFFFF1E5FFFFEDDDFFFCE4E0FFA5826EFF7460
      3FFF7E93A7FF42B1F2FF50BBFEFF2E88D3FF94D9F5760AB6F9FF00ABF4FF79E2
      F9FF6FE0F9FF438EA2FF377788FF438DA0FF6EE0FDFF77DAF9FE0485DDFB0086
      DBFF00000000FEFEFE010000000000000000898889EF6D6D6DFEF4F4F7FFEFEF
      F2FFF0F0F2FFF6F6F8FF858585FF6C6C69FFF2F2F2FFF0F0F0FFFFFFFFFFFBFB
      FBFFF1F1F1FFCFCFD0FE7B7B7BF1DEDEDE2DFF8A01FEFF8A00FFFF8A00FFFF8A
      01FFFF9B2AFFFFE7CDFFFFD9AFFFFFFFFFFFFFB967FFFF9A23FFFF8A00FFFF8A
      00FFFF8A00FFFF8A00FFFF8A02FDF59F3DC2E7C9BFFFCEAF9EFFD5BBACFFD3B8
      A5FFD6BBA8FFC19F8EFFD3B8A6FFD3B7ACFFD5B5A1FFEBD5C4FFA7806AFF7164
      47FF7D6443FF715E58FF53B6E7FF348EDAFFFEFEFE01DCF2FA2822BEF9FF02AC
      F6FD57CEF3FE71E4FFFF6EDDF4FF204D59FF408798FF6EDDF9FF7BE4FBFE1292
      E2FE0088DEFFD8EAF627FEFEFE0100000000999999F3777778FEEEEEF1FFE6E6
      E9FFEEEEF0FFE6E6EAFFA3A3ABFF37376FFF747476FFC1C1C1FFE3E3E3FFDDDD
      DDFFA7A7A7FF6E6E6EFF5E5E5FDF6F6F6FBCFE8901FEFE8900FFFF8A00FFFF7F
      00FFFFDAB0FFFFFFFFFFFF880AFFFFA139FFFFCE95FFFF9B26FFFF8A00FFFF8A
      00FFFF8A00FFFF8A00FFFF8A01FEECC1906FEEDFD8FFCEBAA8FFC6A793FFC3A4
      90FFC7A794FFB49381FFC3A692FFC4A594FFC19F8BFFF6F3EEFFA88675FF7D65
      42FF7B604EFF7A634AFFA3B7E0FFAACBDFFF00000000FDFEFF020000000037C1
      F5F405B2F8FA27B5EDFE75E3FCFF73E5FFFF3A7C8DFF4FA4B9FF5AB8D1FF24A9
      E7FD2B9DE0D4008ADFFF4DA8E0B2FCFDFE03999899D9797979FCC9C9CCFFE8E8
      EAFFD4D3E4FFE4E4E9FF6565BBFFFBFBFCFFA1A1A3FFA5A5A6FF808080FF8484
      84FF828283FEEFEDEFFE0000000000000000F99117E8FE8902FDFF8A00FFFF8B
      03FFFF9E2DFFFFA842FFFF8800FFFFE7CCFFFFE0BCFFFF8E0AFFFF8A00FFFF8A
      00FFFF8A00FFFE8901FEFF8A01FE00000000F7EDE8FFCABFB0FFD5B8A6FFD0B5
      A2FFD4B8A4FFB99B88FFCFB6A3FFD3B7A3FFCBB09EFFFAFDFDFFAC8B7CFF695A
      43FF99B5B8FF7EAED9FFFEFEFCFFF9FBFDFF0000000000000000000000000000
      000079D1F3A20AB6F9FD04A8EFFF76E3FCFF74E8FFFF1C4856FF59D8FFFE059B
      E8FA0A97E4F50390E2FC018BDFFE00000000B7B7B75CBBBABBFCE7E7EBFEE7E7
      EBFFE6E6EAFFEDEDECFFD8D8E7FFE8E8ECFFE9E9EDFFCFCFD2FFD4D4D8FFE4E4
      E8FF898989FDBBBBBBF50000000000000000F4D9B946FF8B04FBFF8A01FEFF80
      00FFFFF2E3FFFF8300FFFF8900FFFF9924FFFFBB6BFFFF8B03FFFF8A00FFFF8A
      00FFFF8A00FFFE8901FEFB8C0AF5FEFEFE01F9F1EDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAFAFFB29187FFAAD0
      F3FFB7CCDEFFFFFFFEFFFAFEFFFFFEFEFEFF0000000000000000000000000000
      0000FDFEFE02CDEBF8391DBCF9FF01AAF4FE60D3F4FE75E3FCFF009FEEFF2EAA
      E7D1009AE9FF1BA2E5E4B5DAF04AFBFDFE0400000000C4C4C4FF6B6B6BFFDDDD
      E1FFDADAE0FFAFAFD4FFE7E7EAFFE5E5EAFFE4E4E8FFD7D7DBFFBCBCBFFF7979
      7BFFF3F2F3FCDBDBDB32FEFEFE010000000000000000FA8804FBFE8902FDFF8A
      01FEFF8803FFFFF6EAFFFFEEDDFFFFCD95FFFF8800FFFF8900FFFF8A00FFFF8A
      00FFFF8A00FFFF8A02FDFCF7EC13FEFEFE01F7F3EFFFF9F7ECFFF0E8EAFFECE4
      E6FFFAF5F7FFF2EBE6FFE9E7E3FFFEFFFEFFFDFEFDFFFDFEFDFFB89E9BFFFAFF
      FFFFFDFDFAFFFEFEF9FFFBFEFFFFFEFEFFFF0000000000000000000000000000
      000000000000FCFEFE03000000002FBFF6FD04B1F8FB01A8F1FE44B8EBBB03A5
      EFFCACDCF35300000000FEFEFE0100000000FEFEFE01DDDDDD30F7F6F7FE6B6C
      6CFFD7D7DBFFDCDCE3FFE1E1E5FFE1E1E6FFC1C1C5FFB5B5B8FF6D6D6FFEE5E5
      E5FC757475E8F3F3F31100000000000000000000000000000000FF8800FFFE89
      01FEFF8A01FEFF8800FFFF8300FFFF8B03FFFF8900FFFF8A00FFFF8A00FFFF8A
      00FFFF8C04FBF1C58D72FEFEFD0200000000F8F4EEFFEDF5FDFF67C5F5FF68C6
      F6FF69C7F7FFAFE0F7FFFEFDFBFFFEFEFEFFFEFEFDFFFEFEFEFFCEB5AEFFFBFD
      FEFFFBFEFEFFFBFEFEFFFEFEFEFFFFFFFEFF0000000000000000000000000000
      00000000000000000000000000000000000069CCF3B338BEF3CC00AFF6FF02AA
      F2FDC8E8F737FDFEFE02000000000000000000000000FDFDFD03D5D5D543F8F7
      F8FF9D9D9DFC69696AFE7B7B7EFF78787BFF626263FE757575FEF5F3F5FF9696
      96DED8D8DCFFE1DFE1FFACACACB300000000000000000000000000000000F887
      06F9FF8B03FCFE8902FDFE8901FEFF8A00FFFF8A01FEFF8A01FEFF8B04FBFF89
      00FFF6DAAA55FEFEFD020000000000000000F9F2EFFFE8F3FBFF6EC9F4FF71CB
      F8FF71CBF8FFB2E2F6FFFDFDFCFFFCFCFEFFFCFCFDFFFCFDFEFFCBBCAEFFFBFF
      FFFFFFFEFEFFFFFEFEFFFFFFFEFFFFFFFEFF0000000000000000000000000000
      000000000000000000000000000000000000FDFEFE02C1E7F7491BBBFAFF03B1
      F7FFFDFEFE020000000000000000000000000000000000000000FDFDFD030000
      0000AFAFAFBBE7E6E7FFEAE9EAFFE8E7E8FFEFEEEFFFC3C2C3ECE1E1E130FDFD
      FD04CBCBCBFFEEEEEE27E9E9E928000000000000000000000000000000000000
      0000F5D7B54AF6911AE5FE8901FEFF8A01FEFE8901FEFC8B07F8F1B7659A0000
      0000FEFCFC03000000000000000000000000ECCFCCFFDFDAC9FFE5D3D1FFE5D4
      CEFFE3D4CEFFE9D4CFFFEBD3CFFFE0D5CDFFE0D5CDFFDFD5CEFFC7B9ADFFFAFE
      FFFFFFFFFEFFFFFFFEFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000000000000000000000000000000000000FDFEFE0200000000E2F4
      FB1DFEFEFE010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE010000
      0000BFBEBFB7E4E4E434D4D3D49CFEFEFE04FEFEFEFFFEFEFEFFFEFEFEFFFCFC
      FBFFF9F9F9FFF8F9F9FFFBFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9
      F9FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF61B8DAFF4CB8E1FF4CB9DFFF45B9
      E2FF45B8E5FF47B7E5FF3EB7E8FF47B6E6FF45B5EAFF45B7E6FF52BDDFFF5CC7
      E9FF54BFDBFF4EBBD7FF46B4D6FF58BFE0FFCE7E27FFB45F00FFC36813FFC668
      04FFC66902FFC76800FFC86800FFC56300FFC46500FFC66700FFC96703FF006B
      94FF006E98FF0A6896FF007098FFD7BDADFF0000000000000000000000000000
      0000FFFBF7080000000000000000000000000000000000000000FDFDFD02C9C9
      C94A848484B2000000000000000000000000FBFCFCFFFFFFFFFFF5F0EDFFD5D0
      CDFFACAEAFFF859199FF5C7786FF376077FF205878FF1A5E83FF134461FFA6AD
      B1FFFFFFFFFFF9FAFAFFFCFCFCFFFCFCFCFF0EB1EFFF00AEFFFF15BAF3FF0BBB
      FCFF06B4F6FF04ACF9FF00B4FFFF1FBFFFFF0BA8F8FF0BBBF8FF00B8F5FF05BE
      FEFF20C9EEFF1AC8ECFF04BBFBFF24BCF7FFB75C07FFF8C178FFEEAC7BFFDDAD
      6BFFDDAB69FFDAA663FFD6A35DFFD9A05BFFD59E55FFCE974EFFCA904EFF006C
      8BFF0FD0F2FF19D5FFFF0DD1FBFFD5BBABFF000000000000000000000000FCFB
      FA05C49D7B898F5325E5685F58FF4A4949FF323232FF262626FF161616FF0707
      07FF2D2D2DFD1F1F1FFF0000000000000000C4D9E3FF1A6E9AFF227AAAFF2D85
      B4FF3A89B5FF3484AEFF2B79A5FF27739EFF25739DFF25729DFF20506CFF1650
      71FF0E4D72FFABB4BBFFFCFCFDFFFBFBFBFF44B8EDFF42CCFFFF57CCFFFF51CE
      FFFF62D6FFFF5ECBFFFF45B9D0FF77937CFF8B846BFF717C5BFF7D7F5BFF8D8C
      70FF8F8359FF828869FFCCFBFFFFD6FDFFFFD56800FFF2D08EFFEAC29FFFEDD0
      93FFEDCE8FFFEBCA8BFFEAC787FFECC182FFEAC17CFFE2B974FFDAAE71FF1217
      30FF38C7E6FF1DCEFFFF0CCBFDFFD5BBABFF00000000000000008A5427E68446
      16FF915B2AFB8C4A19FD413C38FE272726FF181818FF040404FF010101FF0000
      00FF1B1B1BFE202020FEE5E5E52200000000FDFCFBFF1D78A8FF2980ADFF2B85
      B3FF183A4FFF162D4AFF101F37FF122531FF287CA7FF287EABFF3B7C9EFF1959
      7DFF134868FFA1ADB5FFECECEDFFFBFBFBFF52C2EDFF5BD6FFFF65E5FFFF5EE2
      FFFF5EE4FFFF57D4FFFF5FB8DAFFBF9168FFFFD9A6FFFFCC9FFFFFE0AEFFFFD8
      ADFFFFDAA0FFA15423FFFFFFFF00FFFFFF00CE6603FFF5D397FFE2C88CFFF663
      00FFC26704FFC65B06FFCA5D00FFB46215FFD1A05AFFE8AF71FFEEB26CFF0671
      97FF23D3F1FF1ADDF9FF19D4FFFFD4BAAAFF000000008C4914FF864F22FD8145
      0EFEC9C0B8FF8A5017FF74604CFF585756FF474747FF8C8987FF1D1D1DFF1616
      16FF1E1E1EFF333333FF0000000000000000FCFCFCFF4497C1FF308CBCFF1C3D
      52FF1A4156FF2D82B0FF2C87B3FF1D4159FF1A3F52FF2F8DBDFF3C8EB8FF2064
      8AFF0A4164FFFDFDFDFFFBFBFBFFFCFCFCFF46B4E4FF47C0FFFF40C9F7FF3DC9
      FEFF2CC2FFFF28BAFFFF47B5C7FFB6964DFFCE6100FFCB6E0BFFC96500FFCD61
      09FFDB6205FFBB631CFFFFFFFF00FFFFFF00CC6504FFFADA9FFFE2C88CFFCE67
      0AFFF5FFF3FFFBFCFFFFFFF3CCFFE8A43BFFE0BA7AFFE7C072FFE3BE74FF0B79
      9BFF1ADAF1FF16E3F8FF17D7FFFFD5BBABFF000000008E4F18FF97561AFE8D5D
      2FFFD8DBDEFFA46425FF201A15FF0D0D0DFF0C0C0CFF1C1C1CFF1B1B1BFF0C0C
      0CFF101010FF353535FF0000000000000000F8FAFBFF9ACAE1FF348EBAFF1E39
      5CFF318EBCFF3A9CCBFF3291C2FF3493C3FF234368FF2E7298FF368EBAFF2B73
      98FF134C70FFEBF3F5FFFBFAFBFFFCFCFCFF33B8DDFF5CD8FFFF69EEFFFF6CDD
      FFFF7DDBFFFF72D7FFFF73D0EFFFA0895BFFC0661FFFB26215FFA26B1AFFA668
      21FFB96A19FF9D6426FFFFFFFF00FFFFFF00CB6604FFFCDBA3FFE6CE94FFBD5D
      03FFF3FBFFFFFFF2DAFFE6A453FFDEC087FFF4CC8BFFF6C37AFFB45F19FF3C27
      36FF44E7E6FF44E4FCFF07D0FFFFD5BBABFF00000000905217FE9A5B1EFFAE7E
      51FFDCD9D6FFD0C1B2FF655341FF2A2928FF222222FF121212FF121212FF1515
      15FF111111FE353535FE0000000000000000F8FAFAFF8CCFEFFF26405EFF285D
      85FF42A8D8FF4DACD9FF42A9DBFF44AEDFFF132C54FF2F607EFF3887B1FF2166
      8CFF1B597CFFC3D8E2FFF9FAFAFFFBFBFBFF3EBEDBFF59C4FEFF62C9F0FF6BC8
      F5FF5DD2EFFF5DCBFFFF61BFCCFFA88B5EFFBE4C0DFFD05B10FFCE5811FFC958
      15FFC95F0AFFAA651FFFFFFFFF00FFFFFF00CE6808FFFEE0A7FFE8D199FFCF6C
      00FFF8F3E4FFF99D4EFFDDC78DFFF8CB88FFFDD08CFFA46612FFFFFEEFFF0280
      A2FF36DDF8FF2AE9FCFF1BD1F5FFD6BCACFFFEFEFE01A17144C9A56527F7C08A
      53FEAECCFBFF9FB3D0FFAE753AFF858483FF868788FF6B6E72FE838383FF7F80
      80FF727272FF303030FF0000000000000000FAFAFBFF8BC7E4FF4E919CFF4797
      8AFF459563FF276046FF298FA9FF2F5462FF385C8AFF325B8EFF2E526EFF2314
      0DFF2B363FFF8DB4C8FFF7F8F9FFFBFBFBFF3EC1ECFF38C8FFFF2CBFFDFF2DD0
      F7FF37C2FFFF29BCFFFF42C0D8FFB59270FFA75C0DFFB3480FFFA05412FFA152
      19FFA55613FFB66521FFFFFFFF00FFFFFF00CB6600FFF6E1AEFFF0D4A5FFB466
      13FFD6B076FFFFD396FFF8DD93FFFADA93FFA15F1EFFFFF6DEFFFFF5F3FF0383
      A6FF49EBFFFF30E1FFFF2EDFFFFFD4BAAEFF00000000F8F7F60DBC8C60A1CA87
      46FE5180C9FF88B4F8FF869FC4FEB17232FFCB9D6DFF8B7561F86A6A6AAFE5E5
      E426FAFAFA05000000000000000000000000FCFCFCFF4EA829FF48AE20FF4EB4
      25FF449035FF185912FF1A6B44FF100D6BFF12136AFF111362FF221A3CFF3623
      1DFF5A3627FFFBFBFCFFFBFBFBFFFCFCFCFF50C7E7FF32A7EAFF49ABF3FF46B1
      EAFF3DA8ECFF3AA9FFFF45ABC1FFB0916AFF946912FF9A611CFFAE601EFFB05D
      25FFB3621FFFBC6925FFFFFFFF00FFFFFF00CA6500FFF9E8B7FFEFD8AAFFE59B
      49FFF3D997FFF8D59DFFE1D9A4FFAD5E1BFFF8F7E9FFFCF7F9FFFBFAF0FF3F32
      4CFF5BEAEDFF5EE8FEFF0FD6FDFFD5BBAFFF0000000000000000FCFFFF086AA3
      F6FD6FA4F3FE7BA9EFFF6BA0EFFEA18063FFE0D8D03300000000000000000000
      000000000000000000000000000000000000FBFBFBFFE9F8E2FFA7F081FFA0E8
      87FFA0E989FF1C6611FF1F6117FF110E92FF0E0E82FF101078FF231A56FF5F3C
      2EFF5B4135FFFCFCFCFFFBFBFBFFFCFCFCFF74C7D6FF3FB0DBFF25BFFAFF17C2
      F6FF31BCF5FF3FACF0FF77B8C0FFCB966BFFA75E0AFF954E04FFAB5716FFAE54
      1DFFB05917FFBF6623FFFFFFFF00FFFFFF00CB6701FFFCEEBEFFEDDDAFFFDDB7
      7DFFEFE0B9FFFFEEB4FFB46417FFF4FFFEFFF2F1FAFFFFFFF5FFFCF1E9FF1A90
      A9FF4EF4F9FF46ECF1FF1BCEE9FFD5BBAFFF0000000000000000B7C4DA6A82AC
      ECFC83B1F7FE7EAEF5FF80AEF3FF000000000000000000000000000000000000
      000000000000000000000000000000000000F8FAFBFFB2E3EEFF0D90BBFF7AC5
      7DFF78B878FF7ECB97FF354394FF473AE2FF422ED7FF3028CDFF412C57FF7C4A
      37FF56605AFFFDFDFDFFFCFBFBFFFCFCFCFFFFFFFF00B0F5FFFF40B3D8FF25AE
      D5FF32C3F0FF52AEDDFFE5FFFBFFCF8C5BFFE1772AFFCE6F29FFD07C3BFFD379
      42FFD57E3CFFCD7431FFFFFFFF00FFFFFF00CC6704FFFCF0C0FFF4EABBFFE5BE
      87FFFFEEB6FFB66117FFF3FBFBFFFFFAFFFFFFFDFFFFEEF9FDFFF7F4F0FF0692
      B7FF61E8FCFF4AEBFAFF22D3FEFFD5BBAFFF000000000000000097BBF3D98EB3
      EAFD91B5EAFF91BCFAFF89B5F9FC669AC3A50000000000000000000000000000
      000000000000000000000000000000000000FCFCFCFF13BAE4FF0EB0D9FF1C96
      A8FF1E90C6FF796AE4FF847DD2FF4F88E5FF2D86E4FF569592FFBC8C7AFF9B92
      8EFFE0D9D5FFF9F9F9FFFBFBFBFFFBFBFBFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF0052B4DCFFC7FAFFFFFFFFFF00CA905CFFA64800FFAA631FFFA55514FFA853
      1BFFAB5715FFB8631FFFFFFFFF00FFFFFF00D06503FFFFF9D1FFFFF2CBFFF3C1
      85FFA5641FFFFDFAF6FFFAFFF8FFFFFFFFFFFFFFFFFFFEFEFEFFFDFDFDFF3343
      67FF9BE8F1FF63F7FFFF25DAFFFFD5BBADFF00000000000000009BC0F8F5A6C9
      FEFEA7C8F9FF9EC0F2FF88B6F4FF96BEFBFD0000000000000000000000000000
      000000000000000000000000000000000000EDF8F8FF1BC1E8FFA2D1DAFF39B6
      D4FF21BBE0FF0D596CFF0B5868FF0B4F5AFF98B4B2FFE5DAD4FFBF8369FF9F77
      66FFF9F9F9FFFBFBFBFFFCFCFCFFFCFCFCFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF0073B6D5FFE4FCFFFFFFFFFF00C08F57FFB45010FFAA5E23FFA55917FFA657
      1EFFAA5B18FFB2611DFFFFFFFF00FFFFFF00D06307FFFFFDD8FFFFF7CFFFC060
      00FFFFFFFEFFF2FFF7FFFFFEFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFF0097
      AFFF72FDFAFF70FCFDFF23D6F3FFD5BBADFF0000000000000000B4CEF5E9C7DC
      FEFDC0D6F8FFAFD0FFFF77A7D9FF00689FFFDBE7EF24FEFEFE01000000000000
      000000000000000000000000000000000000FEFCFBFF51D9FAFF3FD4F9FF51C5
      D5FF1DC7F5FF28B4D8FF0B6989FF0A6385FFFFFFFFFFFAFAF9FFFFFFFFFFFDFE
      FEFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F3FBFFFFFFFFFF00FFFFFF00BA8447FFC66A1DFFC0661FFFAA5C17FFC26A
      1DFFCE7322FFB26421FFFFFFFF00FFFFFF00CA660DFFFFFFC8FFA75827FFC286
      1CFFEBFAFFFFFFF7FFFFFFFFEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0099
      B4FF7FF4F3FF88F9FBFF31DDFFFFD7BDAFFF00000000FEFEFF02CAD8F7B12388
      C0FBC1D7F6FFC7DAFFFF2386BDFF137FB6FFE1ECF21EFEFEFE01000000000000
      000000000000000000000000000000000000FBFBFBFFFFFCFBFF4DD8F8FF44D7
      F7FF90CFD9FF1FCAF7FF1F98B9FF1C85A5FFFDFCFCFFFBFBFBFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A27853FFB65817FFD56217FFB95C17FFB859
      10FF9F5017FF8B593BFFFFFFFF00FFFFFF00CB6E00FFBC6424FFF9E8D5FFCE7B
      26FFE6FCFFFFFDFFE9FFFEF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0097
      C2FF81FFFFFF7DFDFCFF26DBFBFFD9BFB1FF0000000000000000298BBCD948A8
      D8FA1FA2E3FE23A7E8FE22A1E1FE3295C7FFF3F6F90C00000000000000000000
      000000000000000000000000000000000000FBFBFBFFFBFBFBFFFFFDFBFF83E2
      F7FF95E2F2FF68D2E5FF4FD7F9FFB8DBE3FFF8FAFAFFFBFBFBFFFBFBFBFFFBFB
      FBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D08E5DFFE07F35FFDA8626FFD887
      2CFFF1B377FFFFFFFF00FFFFFF00FFFFFF00FFE3C1FFFFEED1FFF7E2DAFFF9DF
      D3FFF9DFD3FFF9DFD3FFF9DFD3FFFAE2CEFFFAE2CEFFFAE2CEFFFAE2CEFFFDE0
      D9FFFDE0D9FFFDE0D9FFFDE0D9FFF5DECFFF0000000000000000FAFCFD0561B2
      D9CA74C6F0F98AD3F8FB61BAE8E9DDEAF127FDFDFD0200000000000000000000
      0000000000000000000000000000000000000000000000000000F5E5DFFFF6CC
      AFFF889995FF32899DFF2791A8FF1D87ACFF1B7D9BFF437F95FFA0A3B8FFC8C3
      C5FF000000000000000000000000000000007E331DFF653321FF793423FF6D31
      25FF6E381AFF6B2D2DFF622927FF76382EFF763429FF5E3126FF683A29FF7133
      33FF6C2930FF632B26FF5A3031FF4E3832FF0000000000000000000000000000
      000000000000E8D6D7FFC3898CFFBC7578FFBE7D7CFFBC7A7BFFC18187FFE0C6
      C8FF00000000000000000000000000000000EEEDECB8EEEDECB8F0F0F0BDEFEF
      EFC4EFEFEFC4EFEFEFC4EFEFEFC4EFEFEFC4EFEFEFC4EFEFEFC4EFEFEFC4EFEF
      EFC3EFEEEEB8EEEDECB8EDECECB8FBFBFB2400000000CBA299FFC4A97DFFF8D1
      82FF9ADFD4FF47D7FFFF16D7FFFF00CCFFFF00C5FAFF00C3F7FF00C0F5FF00AA
      DEFF396293FFD3CDD2FF00000000000000006F2936FF0D2FEDFF0C36FAFF152B
      F5FF004E1DFF0AA011FF129B17FF335400FFC7620CFFBF680CFFBA5F0AFF0B74
      ADFF09CFF9FF05D2FFFF137CA7FFE9D6CFFF0000000000000000000000000000
      0000B96F73FFE2A8A5FFFFD2D0FFFFEADAFFFFFFE4FFFDEEDCFFFFDED8FFE8AB
      AAFFB2686BFF000000000000000000000000FFFFFF00FEFEFE015E4030FF5737
      27FF573626FF573626FF573626FF573626FF573626FF573626FF573626FF5636
      25FFEFEDEB3AFFFFFF00FFFFFF00FFFFFF00846F50FFEDBB91FFFFEAAAFFF8D0
      7DFF82E2CAFF42DBFFFF27D9F2FF0AC9FAFF06C5F6FF04C1F4FF00BBEEFF0DBA
      ECFF00BBE8FF2585A9FFCFC1C5FF000000007B2A25FF0638FFFF1B3CEDFF1633
      FFFF0D5502FF08A925FF17A124FF0E5806FFE86914FFCD7209FFD56813FF0075
      A9FF0DD6F7FF16CBFFFF117C98FFE7D5CEFF000000000000000000000000D9B5
      B7FFDC9493FFEFB8B6FFFDD7CFFFFBD9CFFFFBDDD2FFFEE4D4FFFCE4D5FFE6B1
      ADFFCE8685FF000000000000000000000000FFFFFF00FEFEFE025D3B26FFD1C8
      C290EAE6E34AEAE6E34AEAE6E34AEAE6E34AEAE6E34AE9E5E34AEAE6E347E9E5
      E249FAFAF917FFFFFF00FFFFFF00FFFFFF00D7966FFFE6B289FFF7DAB3FFFFDB
      A1FFA9DDC5FF4DE6FFFF50DFFFFF31E0FFFF2ADAFFFF1DD2FFFF10C8F8FF00BF
      EDFF06B2EEFF00ADEEFF578492FF000000007F3316FF2A45F9FF2741FFFF1944
      FFFF005600FF1EB72CFF19B629FF0B5A00FFD46E25FFDB701BFFCA7017FF0072
      A2FF23D5FEFF19D6FCFF0072A5FFF0E0D9FF000000000000000000000000D5B4
      B6FFFCD6D0FFF1BAB9FFFAC3C3FFFBE2D3FFFEF9E0FFFCDCD2FFF4BDBBFFF7E4
      D2FFEACBBDFF000000000000000000000000FFFFFF00FEFEFE02623D24FFE1DA
      D663EFECEA3BAD9D93C3D6CDC873FFFFFF00FFFFFF00D1E0F48C5E9EF2F695BE
      F2CEFCFCFD17FFFFFF00FFFFFF00FFFFFF00DB956DFFEDD4A8FFFACE9FFFD7AC
      73FFCCA463FF6FD9D2FF4CE2FFFF38E0FFFF2DDAFBFF1FD6FDFF12D1FEFF06D1
      FFFF01CCF1FF00AAEAFF4F6D88FF00000000823515FF354DFDFF3348FFFF2249
      FFFF005700FF27C13CFF26C238FF0C5B00FFD6752BFFDC7721FFD1771EFF0071
      A2FF2BD8FEFF21DBFAFF0171A5FFF0E0D9FF0000000000000000000000000000
      0000BD7F85FFE9C3B7FFFFE9DAFFB76F73FFE1A1A5FFF5DAD1FFF7D0C7FFBF74
      79FFE4CBCFFF000000000000000000000000FFFFFF00FEFEFE02694022FFE1DA
      D563E5DAD051F6F4F134C2A78D9DFFFFFF00A1C5F2C4388BF5FF5EA1F3F2398C
      F5FF408FF5FDFDFDFE05FFFFFF00FFFFFF00F0C292FFF2C48AFFF4BE81FFE4B5
      61FFE4AB78FFF5AA36FF46CBECFF34E2F8FF31DBFDFF29D7FFFF1AD1FBFF00D7
      F8FF0DD4FFFF00D9FBFF2A627FFF9B91BBFF833211FF4056FCFF4152FDFF3556
      FFFF015800FF2FCF55FF30CB4BFF0C5800FFD87C33FFDA7F2AFFD77E26FF0070
      A3FF3ADDFEFF30E0F7FF0172A4FFF0E0D9FF000000000000000099C8E9FF0000
      00000000000000000000E2C9CBFFBB717AFFDB9D9FFFDCB9BDFF000000000000
      0000D7E8F4FFEFF5F8FF0000000000000000FFFFFF00FEFEFE026F4320FFE3DB
      D563F9F7F428E6D5C382F2EAE24EFFFFFF004495F5FE92BFF3D1F7F9FD1C8FBE
      F6B73E92F5FFD0E2F772FFFFFF00FFFFFF00FCCD9AFFFFD08EFFF1BC7DFFF3AE
      65FFF2AB5BFFE19866FFD8934AFF036FC7FF056DD0FF0166D3FF0065D2FF0860
      CAFF0063C6FF005FCCFF0538CEFF120D76FF83310EFF4D60FFFF505CFAFF445F
      FFFF025800FF3CDC6AFF3DD85FFF0E5700FFDB833CFFDC8632FFDE842FFF026E
      A4FF48E1FEFF3FE4F7FF0473A5FFF0E0D9FFCFE6F1FF2BC6EBFF39DCF5FF0BB8
      E7FF80C0E4FF0000000000000000B8767BFFE09DA1FF000000000000000019A4
      D8FF3FE4F6FF19C3EDFF3A9ED3FF00000000FFFFFF00FEFEFE0275461DFFE4DC
      D563E1D8D152D6CDC67BB49F8E9FFFFFFF00499BF6FEC5DBF3AC4399F7FFEBF2
      F94B85BAF6CAD3E5F86EFFFFFF00FFFFFF00B99167FFFFD197FFF0BD7FFFE8BA
      7AFFE0AA69FFF0B951FF1A157EFF090097FF0609A8FF000DB5FF0313BAFF060D
      C2FF010EC4FF1316CCFF0011C0FF19159CFF893610FF666EFEFF6267FFFF6862
      FDFF005A00FF42E46EFF4FDD74FF005200FFE08E47FFE38E3EFFDA8C3FFF006E
      A3FF58E7FCFF47E7F3FF0574A4FFEEE1D9FF30BDE6FF4EE6F6FF35D7F0FF1BC2
      EEFF00A6E3FF0000000000000000BF7B81FFE19DA1FF000000004FAFDCFF5CF1
      FBFF44E0F4FF1FC7ECFF0BBAEEFFC1DCF0FFFFFFFF00FEFEFE027B491BFFE4DC
      D463ECE0D450C29C71E8CFB1909CFFFFFF00B0D1F3BC4A9FF8FF4CA0F8FF4BA0
      F8FF5DA7F6FFFEFEFE03FFFFFF00FFFFFF0000000000B29775FFEEBD85FFE3B7
      7CFFEBA24CFF0D0C6AFF0100A5FF0004AFFF224AFDFF164DFFFF1245FFFF1643
      FFFF0F36F0FF0D33EBFF0827E8FF342E75FF89370EFF6B72FFFF696DFFFF6F6D
      FCFF005700FF53F682FF41EF79FF11500AFFE5954EFFE8994AFFEA9B52FF026E
      AEFF5CE3FFFF4EE4FCFF046FA9FFEEE1D9FF51E2F4FF12B0E5FF069BD8FF0D98
      D5FF4DD4EFFFA6CCE1FF00000000BE7A7FFFDE9BA0FF000000002AAEDCFF2CC6
      ECFF0BAAE0FF109ED9FF3DC3E4FF41A4D8FFFFFFFF00FEFEFE02814C19FFE5DC
      D463EFECEB32B3A49CA5D8D0CB61FFFFFF00FFFFFF00DDE9F57F7CB9F4EFADD1
      F3C3FDFDFD12FFFFFF00FFFFFF00FFFFFF000000000000000000D6CDC0FFA390
      5DFFFFE7C2FF130075FF0004A2FF2770FFFF236CFFFF1A64FFFF125AFEFF1D49
      FFFF004DFCFF0037FFFF1D2EC4FF000000008A370AFF7478FFFF7877FFFF7783
      FFFF0E4409FF054803FF0C530AFF335225FFE89C54FFEBA657FFE2944FFF0070
      A2FF65E8FBFF5BE8F5FF06719DFFEFE2DAFF9896ABFF58CCECFF34C2E7FF4BC4
      E6FF5C80A4FF0000000000000000BE7A7FFFDE9B9FFF00000000D1D2DBFF52BF
      E1FF30C1E7FF34BEE2FF51B4DAFFEFE5E7FFFFFFFF00FEFEFE02854E18FFE6DD
      D463E5DBD051FAF8F71CC2A78D9DFFFFFF00FFFFFF00FFFFFF00FFFFFF00E7DD
      D356FEFEFE0BFFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000001387FF2B7CFFFF277BFCFF2571FFFF2163FEFF1F5DF7FF1B4F
      FAFF2243F4FF2A3A93FF00000000000000008A3809FF7B7DFFFF847FFFFF767A
      FFFFD0D0C0FFFFEAE9FFFDE4E2FFF9FDE4FFEAA25CFFE2A456FFED9F5DFF0C79
      B7FF6EE7FFFF6EEDFFFF1478B2FFF3E6DEFF00000000CE989AFFFFFFFDFFF9F6
      F4FFDBBABCFF0000000000000000BE7B7FFFDD999DFF0000000000000000BE77
      79FFFFFFFFFFFFFFFFFFC07C81FF00000000FFFFFF00FEFEFE028B5115FFE8DE
      D363FBF9F614EBDCCC46F6EFE828FFFFFF00FFFFFF00FFFFFF00FEFDFD098A4E
      13FFEAE0D751FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000009394D1FF4E5DB3FF2340C0FF1F37B9FF2D3FB4FF4B5FB6FF9B9F
      D2FF000000000000000000000000000000006A141EFF0D0081FF0C00A4FF1400
      82FFD9C7F6FFFFF3D9FFFBEBE4FFFFF0DDFFF4A664FFEDBB68FFF0A868FFD3C5
      BFFFFDEFE9FFFBEDE7FFF9EBE5FFFCEFE7FF00000000D7B0B0FFF5F8F7FFC27D
      83FF000000000000000000000000BE7B7FFFDB989CFF00000000000000000000
      0000EAD4D7FFE3C1C5FF0000000000000000FFFFFF00FEFEFE02915413FFE8DE
      D363FFFFFF00FFFFFF00F9F6F422F7F4F022FEFEFE04FFFFFF00FEFDFD099153
      12FFEAE1D651FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000093320EFFFAE8E9FFFCEDDDFFEFFA
      D9FFF7F0DDFFFFF6F0FFFEF1E9FFFFF3DEFFEDA166FFE2AB66FFE89E66FFE2D4
      CEFFFDEFE9FFFDEFE9FFFCEEE8FFFCEFE7FF00000000F1F0F0FFA1707FFFE6CB
      CDFFE3CACCFFE3CACCFFE1CBCBFFB67577FFC8888BFFE2CCCDFFE3CACBFFE3C8
      CBFFD69C9CFFDAA8A5FF0000000000000000FFFFFF00FEFEFE02985711FFEAE0
      D55FFEFEFE03A16627FE985611FF985711FF9A5A17FFF8F6F428FEFEFE049756
      10FFECE1D651FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008A3704FFEAE7D9FFF0ECE1FFFFF0
      F3FFFFEBEFFFFCE8E7FFFDF4E6FFF0FFFBFFFEFADEFFF4FAE3FFFFF7E5FFFCEE
      E8FFFEF0EAFFF9EBE5FFFDEFE9FFFCEFE7FF00000000FDE3E0FF79FFFFFFF3E9
      E4FFFFF5E3FFFFF5E6FFFFF5E5FFFFF3E1FFFFF3E5FFFFF5E6FFFFF5E5FFFFF2
      E6FF7DBCDDFF467CAAFF0000000000000000FFFFFF00FEFEFE029D5A0FFFA160
      18FFA15F17FF9E5B11FF9F5E16FFA56926FD9E5B10FFA05E16FFA2621AFF9D59
      0EFFEDE3D752FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000933900FFECE2D8FFFAEFEBFFF8F1
      DEFFF9F2E3FFFEF4EAFFFAEAE4FFFDEEEBFFFCEEE2FFFDF1F7FFFFF4F3FFFFF1
      EBFFFDEFE9FFFAECE6FFFFF2ECFFFCEFE7FF00000000F7F8F8FFDAD2D7FFE9CF
      D2FFE8CFD3FFE8D0D2FFE6CFD3FFBC747BFFD89498FFDEBDC0FFE8CED0FFE6CF
      D2FFEBD2D1FFEED8D6FF0000000000000000FFFFFF00FFFFFF00E8DACA60DEC6
      AB6ADEC6AB6AD8BFA2A0D4B6959AF1E9E03BBC8B55E2EBE0D36ADEC6AB6AE0CC
      B56AFEFEFE01FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBEFE9FFFBEFE9FFFBEFE9FFFBEF
      E9FFFBEFE9FFFBEFE9FFFBEFE9FFFBEFE9FFFBEFE9FFFBEFE9FFFBEFE9FFFAEE
      E8FFFAEEE8FFFAEEE8FFFAEEE8FFFAEEE8FF0000000000000000000000000000
      0000000000000000000000000000C98C91FFBD767AFFF4EAEBFF000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFCFB07AD6A1EFDAA6413FFF7F4EF3EFFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5FEFCFF7EE19BFF08D24AFF06D7
      46FF07D748FF07D747FF07D749FF07D847FF07D749FF07D749FF07D749FF07D7
      48FF07D746FF0ECC4BFFFDFBFEFFFDFDFEFF0000000000000000000000000000
      00000000000000000000FBFBFE040000000000000000EBEBEB14FFFFFF070000
      000000000000FDFDFE02FEFEFE0100000000FAFAFEFFF8F8FBFFF3F3F6FFFEFE
      FFFFFFFFFFFFFFFFFFFFEAE9EDFFF7F7FBFFFAFAFDFFFAFAFEFFFAFAFEFFFAFA
      FEFFFAFAFDFFF5F5F9FFF3F3F7FFFAFAFEFFFFFFFFFFFFFEFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFFFFFFFFFFEFEFEFFFFFFFFFF0CD448FF01DA49FF00DD4CFF00E0
      4FFF00E050FF00E153FF00E254FF00E254FF00E455FF00E254FF00E154FF00E0
      50FF00DF4EFF00DD4BFF07D64EFFFCF9FDFF0000000000000000000000000000
      000000000000FEFEFE016363ADA91F1FACFF2525B9FF2626BDFF2626BFFF2423
      99FF0D0C97FF646499A1FBFBFB0400000000FFFFFFFFD8D4D9FF82757EFF2A30
      30FF00391CFF02743BFF1C6F43FFD9D8DBFFF9F9FBFFF7F7FAFFFEFEFFFFFFFF
      FFFFFEFEFFFFC0BFB7FF9A9A95FFFEFEFFFFFDFDFDFFF3F4F1FFF0E6E8FFDCDA
      D5FFD4CEC7FFC5C3C0FFBCBBBBFFC5BDB9FFCBC0C1FFC9C8C9FFD5D5D5FFE3E3
      E3FFF1F1F1FFFDFDFDFFFEFEFEFFFFFFFFFF00DA46FF00E24DFF03E359FF06E6
      63FF03E965FF05EB68FF05ED6CFF04EE6DFF06ED6AFF03F261FF00EE5BFF00EB
      5BFF01E756FF00E352FF00DE4CFF0ACD4CFF00000000FEFEFE01000000000000
      0000F3F3F30CF7F7FF153A3ACBFC3636D9FF3434DFFF3535E0FF2424B4FF1A1A
      B8FE4745C0FE2525C5FB2424B8FF00000000383639FF19A65FFF63C090FF9FD2
      B9FFB8DCCCFFB9DECFFF1E9755FFCAC6CCFFF3F3F6FF828176FF2B2C39FF0000
      53FF0005A3FF2A32D6FF1E23BFFFA7A7A0FFFDFEFEFFF6FBFDFF5EACEAFF60B1
      E8FF68B3E8FF67B3EBFF6CB9F0FF4EA0E1FF6AA7D9FF9FC4E0FFFCFBF6FFFDFD
      FDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF00DE43FFFEFBFBFFC4F6D5FFB8F5
      D5FFB9F5D6FFB8F6D6FFB7F6D6FFB4F6D7FFB6F7D5FFB5F3D9FFE7FEFBFF00EA
      5DFF00E957FF00E452FF00DF4DFF07D947FF00000000BAB9B9466C4A3AD76A45
      30FF7A472DFF8D5531FF3B3FEAFF3737E6FF3636F3FF2323C8FF2626E3FFEAE9
      F6FF7473D9FF3636F1FE3030E6FEA5A5D561414244FF89CAA9FFF0F8F7FFB6E3
      CFFFB1E1CCFFB6DDCCFF1E9957FFC8C3CAFF373740FF343DE6FFADAFE7FFB5B8
      E8FFB2B5F0FFB5B8EEFF1117BAFF88887DFFF9FDFCFFA0CFEFFF84C7F7FF86C7
      F6FF85C7F9FF85C6F1FF55B1CDFFBEE1FAFF97CEF7FF99D2FBFFE1EDF7FFFCFB
      FDFFFDFEFCFFFEFEFEFFFEFEFEFFFEFEFEFF00DA48FFFEFDFEFF00E151FF00E5
      52FF00E652FF00E756FF03E855FF02E957FF00E956FF03E758FFF5FEFAFF01E8
      50FF00E552FF00E24FFF00DE48FF06D845FFAB958D85955E45FF724228FDF6EE
      EAFE8D624AFFB17B5AFF4A49D9FF4242EDFF2525DDFF4445FFFF5151F4FFF7F5
      F4FF7D7DE8FF5151FEFF2F2FEDFFE8E8F01C404143FF86C9A6FFF2F8F8FFAEE1
      CAFFB3E2CEFFBDDFD0FF1D9755FF29242BFF3A3A46FF7C81DEFFEEEFFBFFAEB2
      F0FFB1B4F1FFB9BCECFF1117BBFF747468FFFEFEFBFF84C3F5FF90D0FDFF8FD1
      FDFF72B8EAFF6CB3EEFF75C5DAFFC9E8FFFF86CCFBFF88C8F9FF6AB1E8FFFEFF
      FBFFFDFDFEFFFEFEFEFFFFFFFFFFFFFFFFFF00DA42FFFCFCFCFF01DF4AFF00E0
      48FF04DB3DFF04DB3DFF04DB3DFF04DB3DFF04DB3DFF04DB3DFFFBFCFAFF01E3
      49FF00E149FF01DE49FF00DB45FF05D746FF9A644FE9A16E55FE9C725AFFA0EB
      FEFFA36E53FF9D715BFFBE9082FF5355EFFFFFFFF8FFEBE9F1FFF2F3F1FFC4E6
      F7FFE2DFEDFF7474D4FF5959D6FF00000000404143FF75C79DFFBDE7D5FFD8F1
      E8FFF6F7F9FFEBE2E6FF189250FF3B363DFF1E1F29FF7E82DFFFF7F7FDFFB1B5
      F1FFB3B7F1FFB5B8ECFF1218BBFF69695DFFFEFFFCFF82C7F3FF94D0FEFF83C6
      F6FF82C4F6FF89C6F9FF30B0ABFF8FC7F9FF75BBEDFF72B9ECFF71B7EBFFFCFE
      FCFFFEFEFBFFFEFEFDFFFFFFFFFFFFFFFFFF00D941FFFDFDFDFF02DA3FFF01DC
      3DFF04DB3DFF04DB3DFF04DB3DFF04DB3DFF04DB3DFF04DB3DFFDEE5DEFF01DF
      3FFF00DD44FF00DC44FF00DB44FF06D844FFB17F6CCDBB886EFCCAA18BFF9CD2
      ECFFEDD8CEFFD19D81FFA57660FFC29A9CFFFAF1E4FFFFEEE0FFA5D1F7FFC0E2
      F5FEF0E3DBFEECE9EDFFE2E2F228FCFCFE03414244FF68BA8FFF88BFA3FF58B3
      86FF42BC80FF36C37DFF61BC93FFD0CED2FF3A3A46FF676EE1FFCFD2F8FFF8F9
      FCFFE9E9F2FF9EA0D8FF1B20B6FFA9A99DFFFFFDFBFF94CDF6FF92CDFAFF85C7
      F6FF8DCDFCFF8FCFFBFF8FCEFDFF87C7E8FF84C8F4FF8BC8F6FF97D3FBFFD9EA
      F7FFFBFDFDFFFDFEFEFFFFFFFFFFFFFFFFFF04DB3DFFFDFCFAFF01DA3DFF00DA
      3BFF04DB3DFF04DB3DFF04DB3DFF04DB3DFF04DB3DFF02D73CFFF5FEFAFFF3FA
      F9FF00DA3DFF00D93FFF00D942FF06D644FFDEC7BE5CCB977DFBBA9582FEBDEE
      FFFF8198A5FFD49E82FFD9A488FFDCAC95FFDEC0B0FF29486FFF7BABD9FF7DB2
      E6FE98ABC2FDFBFBFB08FDFDFD0200000000544E54FF2CB771FF08703DFF1841
      2EFF2D292EFF968C94FFEAE9EDFFD1D1D4FF2F303FFF565CD8FF5D62D9FF4A52
      E8FF3841EEFF1E27C5FF23276EFFD2D2D4FFF8FDFEFFF4F9FDFFB4DAF4FF87C8
      F2FF8DCEFEFF96D1FDFF99D2FFFF97CBF5FFB7E3FEFF8BCCFCFF72BBEEFFE8EF
      F9FFFAFEFEFFFEFEFDFFFFFFFFFFFFFFFFFF04DB3DFFFEFDFDFF00D63CFF00D5
      3AFF0AD749FFF4FEFEFF0FDF50FF1CC450FF00D73AFF00D43BFFF8FEF8FFFAFD
      FBFFF4FBF6FF00D63FFF01D941FF05D841FF000000009D6E57FAB69A89FA5F76
      8BFEE1E2E5FFEAE5E3FFCC9A80FFCB9F87FB355F8CFE446992FF9DCEF7FFA1D0
      F6FFA4D6FEFE37557BFB0000000000000000FFFFFFFFF4EFF5FFFFFFFFFF6A6B
      6DFF3E3D3FFF7B7C7FFF4F5259FF2B2C30FF5B5B57FF0D1591FF0F1243FF2D2D
      2AFF403F34FFD5D6D6FFFFFFFFFFF8F8FBFFFFFEFEFFFCFEFEFFFBFDFCFFFFFF
      FBFFCDE6F9FF88C9FAFF91CCFBFF7EC2F4FF6CB1E8FF76BFEFFFBAE0FFFFE2F2
      F7FFFDFDFDFFFEFEFEFFFFFFFFFFFFFFFFFF20E662FFF5FDFCFF6FDC95FF6BE0
      97FF5FE693FFFBFEFAFFE5E5E8FF76CE9AFF73DF9CFF75E198FFF2FEF5FFFBFB
      FDFFFEF9FDFF31E169FF03D744FF06D543FF0000000000000000AB968BA6365F
      8AFD35506CFF94999EFF9C8173FF8F939DB04B6F98FE42658DFFB6E1FBFFBCE3
      F6FFB3DDF6FE5479A1FE0000000000000000FAFAFDFFF8F8FAFF505258FF2B23
      1BFF472C0CFF744C1AFFA48256FF8A5C21FF38393EFF96969CFFF4F4F9FF6F6F
      72FF424245FFC1C1C4FFE8E8EBFFFAFAFDFFFEFEFEFFFEFEFEFFFEFEFDFFFEFE
      FDFFF9FCFDFFF2FAFAFF95D0FAFF9DD6FFFF93CDFCFFA8DCFEFF41D0BBFFFFFF
      FEFFFCFEFEFFFEFDFEFFFEFEFEFFFEFEFEFF20E362FF26E45BFF51DA85FF4EDC
      81FF52DA83FFE7E7E7FFFBFCFDFF4EDD7DFF53D985FF57CF85FFD3FADDFFFBFD
      F8FFD8FFE6FFFDFEFDFF2ED869FF1CE465FF0000000000000000688AACE15B82
      AAFD47709CFF233649FF00000000BDC7D358577CA4FC52779FFFB4DBEEFFCEF0
      F6FFBFE5F5FE6D94B9FE0000000000000000F7F7FAFF9B9EA5FF9C6D2EFFEDE8
      E4FFD1C7BDFFD0C5B8FFD0C5B8FF81551DFF3C3E42FF848487FFC5C5C8FF7272
      75FF4A4B4DFFFCFCFFFFFBFBFEFFFBFBFEFFFFFFFFFFFFFFFFFFFFFEFFFFFEFE
      FFFFFFFEFCFFF9FDFCFFFFFFFEFF32D6ABFF2EC2A5FF79EEDFFF84FBE0FF8DDE
      C9FFF9FCFCFFFEFEFEFFFEFEFEFFFEFEFEFF21E361FF1FE361FF1EE361FF1CE4
      61FF1BE562FF1BE160FFFBFBF6FFFCFBFCFFFBFBFBFFFBFDFEFFFCFEF9FFD4FE
      E8FFFDFDFDFFE8FDFAFF20E363FF26E466FF0000000000000000759BC1FE7AA1
      C8FE6B93BAFE43688FFBFEFEFE01000000007698BAFE7FA0C1FF587DA3FFC5EB
      F8FFC0E9FDFD5F81A6F40000000000000000F7F7FAFF9EA1A8FF997036FFFCFC
      FDFFD0C4B6FFD2C6B9FFD2C6BAFF83561DFF5E6064FFF2F2F5FFCDCDD0FF3D3D
      40FF4B4C4EFFFAFAFDFFFBFBFEFFFBFBFEFFFFFFFFFFFFFFFFFFFFFEFFFFFFFE
      FFFFFEFEFEFFFCFDFDFFE9F7F3FF2BD5AAFF2BC99EFF64EACBFF45D8B6FF3DDB
      B2FFFEFFFDFFFDFEFDFFFEFEFEFFFEFEFEFF1CE05EFF1BE15DFF19E15DFF17E1
      5DFF18E35EFF18E25FFF30DB6FFF7AE9A0FFA3E9BFFFC6F5DBFFDFFFF2FFFDFC
      FDFFE9F8F5FF1CE562FF1DE160FF22DF65FF00000000000000009BB9DAFF9FBE
      DFFF82A8CDFE638DB6FC343435E800000000ABBDD0AD9CB8D6F891AFCDFE7299
      BCFE668CB3FCE3E8ED2CFEFEFE0100000000F7F7FAFF9EA1A8FF997037FFFFFF
      FFFFD4C9BDFFD4C9BDFFD1C6B9FF7F541BFF36373CFF616164FF6B6B6EFF4949
      4CFF67686AFFF9F9FCFFFBFBFEFFFBFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFEFEFFFAFDFDFF53D9B5FF25D0A4FF2CCFA5FF5AE8C6FF75F8DBFF43DA
      B2FF30CBA3FFFDFEFFFFFEFEFEFFFEFEFEFF18DF57FF15DE57FF15E059FF14E0
      57FF14DF58FF14E25AFF14E15DFF15E35FFF16E35FFF17E35DFFA2EBBCFFF8FD
      EEFF15E15EFF18E15BFF19E05BFF23DB55FF00000000000000009CBADBFFABCA
      EBFF9BBCDFFF2B2D2EFF222222FE0000000000000000A6BBD0BA7B9CBCFF799B
      BEFFD5DEE644FDFDFE020000000000000000F7F7FAFF9EA1A8FF976D34FFF0EE
      ECFFEAE6E3FFE6DED7FFBBA78FFF8A6333FF333539FFC8C9CBFFFFFFFFFFFFFF
      FFFFFCFCFFFFFBFBFEFFFBFBFEFFFBFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFDFDFFEBF8F3FF20C298FF17C192FF1BC193FF22C297FF54E9C6FF41DC
      B5FF17C393FFCCF1EAFFFBFEFDFFFEFEFFFF1BDE5CFF12DC53FF0FDC53FF0EDD
      52FF0DDD54FF0EDC53FF10DE54FF0DE054FF0EE054FF0DDF59FF10E052FF14DF
      53FF10DF53FF0FDC53FF45E67CFF80E49AFF0000000000000000575A5DFB5454
      54FF4D5359FE434343FD303030F10000000000000000FEFEFE01000000000000
      0000FDFEFE03000000000000000000000000F7F7FAFF9A9DA3FFAF8E62FFA88B
      64FFAB8251FFA1753FFF724F25FF40301DFFB0B1B4FFF5F5F8FFFBFBFEFFFBFB
      FEFFFBFBFEFFFBFBFEFFFBFBFEFFFBFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFF66D7BAFF21BD91FF15B989FF06A878FF0EC496FF1CBC8EFF20B9
      8EFFDFF8EFFFFEFEFDFFFFFFFEFFFEFFFEFFF7F7F5FF81F2A5FF8FEFB0FF96F0
      B6FF9EF0BCFFA4F2C2FFACF4C5FFBAF6C7FFC3F7D1FFCCF9D7FFD4FADEFFDAFB
      E4FFDFFCE7FFE5F9E8FF33C95DFFFDFEFCFF00000000FEFEFE019C9C9C865D5D
      5DF74F4F50FE3B3B3BF5ECECEC16FEFEFE010000000000000000000000000000
      000000000000000000000000000000000000FAFAFDFFF3F3F5FF372A19FF3934
      31FF70747CFFD0D2D8FFFFFFFFFFFFFFFFFFF9F9FCFFFBFBFEFFFBFBFEFFFBFB
      FEFFFBFBFEFFFBFBFEFFFBFBFEFFFBFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFFEFEFEFFFFFFFFFFD3F2EEFFFDFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFEFEFFFEFEFEFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005F98CCFF5C7FC1FF6289CEFF5974
      D6FF6190E6FF5077E1FFB0DEFDFF93D9B0FF4D9A67FF47A368FF4BA375FF419B
      5FFF5DB177FF5D9375FF6C9881FFFFFFFF000000000000000000000000000000
      0000CA993AFFBA7600FFBB7700FFC0820BFFC48B1FFFC8932FFFCF9F46FFD3AB
      5CFFD8B36DFFDDBE82FFEBD9B6FF00000000FDDBC3FFF2CEB6FFE9C3B1FFD4C1
      BAFFD4C1BAFFD4C1BAFFD3C0B9FFD3C0B9FFD8C5B8FFD7C4B7FFD7C4B7FFD6C3
      B6FFD6C3B6FFE4C2B5FFDBBDB2FFF3D9D2FF0000000000000000000000000000
      000000000000CFCAC7FFC6C0BCFFBFB8B3FFB9B2ADFFC1BFBEF06EC9E8FF60C5
      E9FF53C2E9FF48BDE9FF5CBFE6FF000000003576D2FF4F77E1FF5596F9FF5887
      FFFF5687F3FF658DFFFFAFCFF8FF86C9A4FFD0FFDCFFB5FFCEFFB3FFCFFFB8FF
      CCFF227531FFD6FFE0FF40754AFFFFFFFF00000000000000000000000000E9D7
      B2D3D6B068FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD0A652FF000000008A684AFFFFE8CDFFFFF9E7FFFFF4
      E1FFFFF3E0FFFEF0DDFFFDEFDCFFFBEDDAFFFFEAD1FFFFE9D0FFFFE6CDFFFFE3
      CAFFFFE2C9FFFFDAC3FFF3CEB8FFDDC4B4FF0000000000000000000000000000
      0000DADCC1D9C6C0BEFDC3BDB9FFBFB9B5FFBDB5B0FEB9B7B3FE4CB9E2FF4FBB
      E4FF43B9E5FF39B9E7FF3DAFDFFE000000001F63D4FF2A64E2FF0A6ADCFF115E
      F4FF1C5BEBFF275BEEFFA6D0FDFF79D29AFF9CE69AFF7CE791FF7DD49AFF88E3
      ABFF2A8B4BFF88E9A6FF3A8551FFFFFFFF00FEFEFE0100000000C48C22FBCD9C
      41FDCFA450FFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFF
      FEFFFEFFFFFFFEFEFDFFC99737FE00000000A56622FFFFFAF1FFFBF7F2FFAA54
      02FFBC5800FFA94D06FFB44E00FFB84F00FFB04200FFAD3F03FF993E07FF9F33
      03FFA82F03FFFDE2C8FFFFE3C5FFD7C4B5FF000000000000000000000000DFE5
      BCE4A7B469FCDFDCD9FED3CECBFFC9C2BEFFBDB6B1FFABAFAFFF7CD6EFFF57CB
      F0FF49C6EFFF2CBBECFF30B1E3FD000000007294E7FF96B8FFFFB6F1FFFFB3E5
      FFFF8BC8FFFFA8E4FFFFACCDF4FF7AC69DFFAEDCAEFF84DBA1FF90D2A9FF8FDC
      A9FF3A8E53FF9EECACFF4C8755FFFFFFFF00FEFEFE0200000000C99634FAD3AB
      5CFFD3A95AFFCD9F46FFFCFBF8FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFE
      FEFFFFFFFFFFD8B470FDFCFCFBC9FEFEFE01A66723FFFFFBF2FFFCF8F3FFFFFC
      E3FFFFFEF1FFF7EFF9FFFFEDE6FFE8E9F3FFFFF5DFFFFFF1D7FFFFF0D1FFFFE9
      D4FFFFE0CEFFFFE4CAFFFFE5C7FFD6C6B6FF0000000000000000DFE5BBE9C2CF
      97FD829935FEFFFFFFFFEAE3E9FFD6CDD1FFBCB3B6FF9AA4B1FFBBF9FEFF6FE2
      FDFF48D2F9FF33C5F2FF22B4E9FE00000000366AC4FF0D60EBFF0254EFFF1159
      E7FF206BEBFF135EE8FFAAD3FFFF6FCEA9FFD1FFD7FFAEFFD1FFABFFC3FFB6FF
      CFFF268F40FFCAFFDCFF518C60FFFFFFFF0000000000FDFDFBA9D3AB5EFBF8F3
      EAFFD4AB5DFFCFA149FFC28819FFBF8310FFE3CA99FFFDFCF9FFF9F6EEFFD0A4
      4FFFC99532FFDDBC7FFF0000000000000000A76824FFFFFCF3FFFEFAF5FFBE62
      00FFCA6800FFB45904FFB44F00FFF4D3BFFF974817FFA13E04FFA74300FFA33C
      00FFA73B01FFFFE7CDFFFFE7C9FFD7C7B7FF00000000DDE4B7E491A819FDB1C3
      6BFEA1B63EFF859F06FF749400FF6D9100FF739900FF81B152FFC6FCFFFF70E3
      FDFF50D5FAFF3EC7F2FF24B5E9FE0000000076A0E1FF7DBCFFFFADEBFFFFB6ED
      FFFF8EC3FFFFBCE8FFFFB4CAF4FF77C98EFFAFE9B3FF9FE8B0FF9FDBB2FF9BF0
      C3FF217B46FFBAFFC9FF439064FFFFFFFF00FFFFFF53D9B879FAFDFCFAFEFEFE
      FDFFCFA34EFFD2A756FFC7902AFFBD800CFFFFFFFFFFFEFEFEFFFEFFFFFFC58F
      26FFD2A858FFDEC187FF0000000000000000A86925FFFFFEF5FFFFFCF7FFD1A3
      69FFAD620CFFD69C61FFAE6210FFFFF7F4FFF1E7DDFFFFF8ECFFFFEFDFFFFFEB
      DBFFFFF1E2FFFFEAD0FFFFEACCFFD7C8B8FF00000000CAD5A3FAA3B63FFEA0BE
      54FF82A41DFF8BAC30FFA5C062FFBDD292FFC2D395FFA1BD6EFF8CDBF0FF64CF
      EDFF50C8EDFF42C0EAFF36B3E2FD00000000406ACFFF2C6BF1FF0B4CD7FF1F5E
      E4FF2569ECFF205DD5FFA0CCFFFF6BD9A5FF4DA871FF54AF6AFF5CAC67FF42B0
      5EFF2C9649FF6CB27DFF308356FFFFFFFF00E6D2AA5BFFFFFFFCFEFEFEFFFEFE
      FEFFD1A551FFD3AA5DFFC99634FFEBDABAFFFDFCFBFFFFFFFFFFFDFDFCFFF1E7
      D3FFD3AC5FFFE0C38CFF0000000000000000BD731BFFFCFEFFFFFFFFFEFFFFFF
      F0FFAA8A31FFC86400FFD39F5CFFFFF9E2FF9C5303FFB04904FFB34700FFB54D
      0AFFA43F01FFFEEDDAFFFFEBD5FFDBC1C1FF00000000D0D99BF2CAD49CFE82A4
      32FFD1E5D7FFB3DFC5FFB2CF9CFFC1DEC4FFA8C484FF8DAD3FFF42A3A4FF419E
      89FF52AFB0FF4EAFB3FF66AA79FC000000007BA0DCFF85C0FFFFADECFFFFAEEB
      FFFF84BDFFFFBDE9FFFFA8C2F8FF71CB96FFBCFED4FFB6F4C4FFBDE9C0FFC7FF
      D9FF2F7C43FFC8FFD9FF44976AFFFFFFFF00FCFCFA5EF5EEE0FBFDFDFDFFFFFF
      FFFFD5AD62FFD2AC5CFFC99330FFF8F6EEFFFEFEFEFFFFFFFFFFFEFDFEFFFDFC
      FBFFD1A756FFDFC38BFF0000000000000000BE741CFFFDFFFFFFFFFFFEFFEFF1
      FBFFFFFFF7FFFFFBF8FFFFFEFFFFF5FFEFFFFFFCEDFFF8EEE4FFFFFAF2FFFEF5
      E7FFFEF6E5FFFEEFDCFFFFEDD7FFD9C1C1FF0000000000000000DDE1CAFDCBD9
      B8FFB5D8B7FF9DC287FFB7C38CFFBAC68EFF9EB565FF95B158FF97B96EFFC0E4
      D6FF82A526FFB5CD87FFB0C15BFF000000005E7EC0FF4B7AD6FF4979E3FF4071
      D7FF4678D8FF5D87E0FFA5C8FAFF66D49AFF77DAA2FF70D891FF78D485FF70EB
      89FF22973CFF93D9A4FF34875AFFFFFFFF00FEFDFD1DD1AA5BFEFFFFFFFEC084
      11FFD2A756FFD3AB5EFFCB9A3BFFECDCBDFFFDFDFBFFFFFFFFFFFDFDFCFFF1E7
      D4FFD3AA5AFFDEBF85FF0000000000000000BE741CFFFDFFFFFFFFFFFEFF6E34
      39FF6E3C26FF603441FF692645FF563A29FF823427FF66412BFF4D2E3DFF4C2D
      2EFF614330FFFFF2DFFFFFF1DBFFD8C3C2FF00000000CCD792D4D8E0C3FDEDF4
      F5FFB8DBBCFFB5D8B7FFA9CD97FF90B860FF7EA225FF92B861FF9BC583FFA3D2
      A7FFDDEBE8FFC9D5AAFCC3D07FB800000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008ED683FF52975EFF449360FF4D9162FF379A
      5CFF309151FF4A905BFF217447FFFFFFFF0000000000D9B776F6FFFFFFFDF3EB
      DAFFD2A756FFD8B26CFFCFA24CFFC38B1DFFFFFFFFFFFEFEFFFFFFFFFFFFC792
      2CFFD2A858FFDDBC7EFF0000000000000000BF751DFFFDFFFFFFFFFFFEFF5232
      2CFFFFFBFFFF3655F0FF001095FF3BE16CFF8B4200FFE79E43FF007987FF0067
      8BFFF3F4FFFFFFF5E2FFFFF4DEFFD7C3C2FF00000000A9BB46D4E1E8D4FD98B2
      49FFD3EADAFFC0DFC3FFAFD3A6FF8CAB37FFC3D6A7FFB9DBBEFFB8DABAFFB2D7
      B4FFCCD9B3FFE0E3CEFCD5DE9DBA00000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0087D685FFBFFFD5FFB4FFD5FFB1FCC6FFB8FF
      D6FF268B40FFCFFFE0FF26794CFFFFFFFF00FEFEFE0200000000DCBF84FAFDFB
      F9FFD9B876FFD8B26DFFD4AD60FFCD9D42FFC38A1CFFCC9C3EFFC08512FFCB9B
      3DFFD3AB5DFFDBBC7BFF0000000000000000C77E16FFF9FFFBFFFFFCFFFF6C36
      25FFFFFFF7FF6362FFFF000690FF5AF760FF9B3A00FFFDA257FF006894FF0560
      9DFFF8F7E9FFFBF3F4FFFAF2EBFFD3C0BDFF00000000ABBC4AFEEDF1ECFECEDA
      B4FE9CB552FFA4BA5DFFCDD8A3FFEAEFDCFFF4FCFFFFE1F2EBFFC8E4CFFFEDF5
      F2FF94B047FFCDD59AFF0000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0085D28FFFC5FFDDFFBEFFD7FFBBFCC5FFCAFF
      D6FF288138FFC6FFDBFF388A59FFFFFFFF00FEFEFE0300000000BF810AFAFEFF
      FFFFFFFFFFFFCC9C40FFD1A653FFCC9A3CFFCA9836FFCA993AFFCA9838FFD2A7
      55FFD7B26AFFDCBB7DFF0000000000000000C77E16FFF9FFFBFFFFFCFFFF7240
      2EFFFAFFF1FF6771FEFF0004A1FF0A6208FF813300FFF5B06BFF00678CFF0867
      9FFFF7F3E8FFFCF4F5FFFBF3ECFFD3C0BDFF0000000000000000C2CE7EE6AFC0
      55EAADBE50FFCCD692FFF0F3E3FBF5F7F7FED3DEBDFEA8BE6FFF9AB34FFF8DAA
      37FFD9E2C5FFAEBD51FF0000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008DCB97FF298135FF349741FF1A812CFF399C
      4CFF2D9645FF128B36FF358647FFFFFFFF00FEFEFE0300000000C6902BF9C791
      2AFFFFFFFFFFFEFEFEFFC18514FFFCFCFAFFF9F5EDFFC89431FFD1A552FFD8B3
      6DFFD7B26BFFDBBB7BFE0000000000000000C87F17FFFAFFFCFFFFFDFFFF652E
      31FFFDFCFFFF7678EEFF130098FFF7FFFAFF78280FFF72340CFF046089FF016E
      A1FFECF5E8FFFFF7F8FFFDF5EEFFD4C1BEFF0000000000000000000000000000
      0000000000000000000000000000CDD796EE9BB032FD93AB1FFEB6C563FDD5DD
      A6FFF1F4E7FDA3B539FC0000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0049995CFF39A658FF26A54FFF23AC
      51FF26A952FF46A965FF579565FFFFFFFF000000000000000000D9B876FFC389
      1BFFC1881AFEFFFFFFFFFFFFFFFFFEFEFEFFFDFDFCFFFCFBF8FFC99532FFCD9E
      43FFC89432FFFDFCFB810000000000000000C87F17FFFAFFFCFFFFFDFFFF612B
      2BFFFFFEFCFFF6FBFFFFF7EEFFFFFBF7FFFFF3FDF7FFFAFFF8FF0061A1FF005E
      92FFFFFFF4FFFFF9FAFFFFF7F0FFD4C1BEFF0000000000000000000000000000
      000000000000000000000000000000000000D7DFAAE9C4D19CFBD8DFA9DC0000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00358D58FF0A883CFF0BA3
      44FF28AC59FF9CCEAEFFFFFFFF00FFFFFF000000000000000000000000000000
      000000000000C69532FFFFFFFFFFFDFCFAFEFEFEFDFFFFFFFFFFC69432FC0000
      000000000000000000000000000000000000AE791FFFFFFFE3FFEAF8FFFF4841
      44FFFFFBFEFFF9F4F6FFFFFEFFFFFFFEFFFFFDFFFFFFFDFFFFFFFCFEFFFFFBFD
      FEFFFBFDFEFFFFFFF0FFFFFFE9FFE4C4B9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00318249FF268F
      44FF6BC786FFFFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000E1C999F7E1C793FED3AD62FFD8B776FC000000000000
      000000000000000000000000000000000000C97C0EFFD48C26FFC27E15FFDA8F
      28FFC47912FFC57C14FFBF7810FFC37C14FFC0771CFFBF761BFFBF761BFFBE75
      1AFFBE751AFFAE6F1EFFB27329FFFBD7BFFF0000000087592200895B24008B5D
      26007E5019000F14A5001419A900262AB900272BBA00161BAC000F14A5001162
      1A001B6C24001F7028001E6F27000D5E16000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFEFF84A0E6FF063FCAFF0841
      CBFF0741CBFF0741CBFF0741CBFF0741CBFF0741CBFF0741CBFF0741CBFF0741
      CBFF0742CBFF0B44CDFFFBFAFEFFFCFCFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFDFDFEFFFFFEF4FFEED8C1FFF9FBFBFFFEFEFEFFE8E8E8FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF4F4F4FFFEFEFEFF7D4F1800B98B5400C7996200C799
      6200A1733C001318A8003135C3006265F200676AF7003C40CE001318A8002E7F
      37004FA0580062B36B005DAE660014651D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000346DD8FF0F53D4FF1456D3FF0A4E
      D2FF074ED0FF084ED1FF084ED1FF084ED1FF084ED1FF084ED1FF084ED1FF074E
      D1FF074DD0FF094DD0FF004ED3FFF9F8FCFFFEFEFEFFFEFEFEFFFFFFFFFF9693
      7FFFC4BDB1FF8B5A2FFFB97A4FFFAA9B47FFBEA755FFF7FFFFFFF3FFFFFFFEFC
      FDFFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFF81531C00BA8C5500C89A6300C89A
      6300A3753E00161BAB003033C2006265F200676AF7003A3ECC00161BAB002F80
      38004FA0580062B36B005DAE660018692100000000008894C2FF8694C3FF8594
      C2FF8693C2FF8696C4FF8598C6FF8699C7FF8598C5FF8695C3FF8693C2FF8794
      C2FF8693C2FF9FA9CBFF00000000000000000E52D3FF2967D6FF094ED1FF084E
      D1FF084FD1FF084FD2FF084FD2FF084FD2FF084FD2FF084FD2FF084FD2FF084F
      D2FF084ED1FF094ED2FF084ED1FF1257D7FFFDFDFDFFFEFCFEFFF2EFEEFFE3E2
      DEFFBEC6B2FFB26F44FF99653EFFA59D3FFFB7AB50FF2DBA9BFF88D1CFFF3DA4
      E7FFF1F6F4FFF8FDFCFFFAFCFDFFFDFBFFFF885A2300BA8C5500C89A6300C89A
      6300A57740001C21B1003236C4006365F300676AF6003D40CF001C21B1003485
      3D004FA0580062B36B005DAE660022732B0000000000002CA1FF0453BDFF0D5F
      C6FF166CD1FF1E7CDDFF258AE6FF2990EAFF2385E2FF1B76D8FF1267CCFF0A5A
      C3FF024FBBFF002899FFE0E1E9FF000000002D6DD9FF0B55D3FF0049D0FF004A
      D1FF0049CFFF0A54D1FF0450D1FF004AD1FF0049D2FF024FD0FF0B54D1FF004A
      D1FF0049D1FF0049D1FF0B54D3FF0853D4FFFEFEFEFFFEFEFEFFE3E2DBFFDADB
      DAFFC9C8B6FFCDC6B6FFB1B7A1FFA49D3EFFAB9F35FF1FB896FF2B909EFF33A9
      EBFF1C2DA2FF293ECDFFFCFEFFFFFEFCFFFF8C5E2700BA8C5500C89A6300C89A
      6300A77942002025B4003438C6006365F200696AF8003E42D0002025B4003889
      41004FA0580062B36B005DAE660028793100000000000032A5FF075EC9FF116D
      D2FF1C7BDDFF2489E9FF2992F0FF2C96F2FF288FEEFF2083E4FF1875D9FF0E67
      D0FF035AC6FF002798FFC5C8D5FF000000003071DBFF0F5BD5FFFFFFF3FFFFFB
      F3FFFFFFF3FF105AD5FFC0D1E9FFFEFBF1FFFEFAF1FFCEDAEBFF0452D3FFFFFF
      F4FFFFFBF3FFFFFFF3FF1E64D5FF0C58D4FFFEFEFEFFFEFEFEFFC6C4B9FFD5DE
      D9FFC8CAB9FFC8C8B6FFC4C9AFFF8F8E2BFF77AE86FF25BA97FF2B8EA3FF39A8
      ECFF172F9FFF253FD0FFFBFEFEFFFDFEFDFF96683100BA8C5500C89A6300C89A
      6300AB7D4600282DBC00393CC9006466F100686AF6004246D300282DBC004A9B
      530052A35B0062B36B005DAE660033843C00000000000033A5FF075EC9FF106B
      D1FF1877DAFF1F81E3FF2389E9FF248AEAFF2287E7FF1D7DDFFF1673D6FF0D66
      CFFF0459C5FF002697FFC4C7D4FF000000002F76DCFF1866D8FFF3F3F1FFF0F1
      F1FFF2F3EFFF9DBAE7FFE7EAF1FFF0F1F2FFF1F2EFFFEAEDF1FF9AB9E8FFF6F3
      F1FFF0F1F0FFF2F2F0FF246DDBFF0D5ED7FFFFFFFFFFFBFDFCFFB7B6A8FFE5DF
      DBFFD0D0BEFFCECEBFFFC9CBB8FFC9CAB0FF6BA98AFF24BA95FF288FA1FF2AA0
      E5FF162EA0FF253ED0FFFCFDFDFFF9FFFDFF9A6C3500BA8C5500C89A6300C89A
      6300AD7F48002C31BF00393EC9006266F000676BF5004448D4002C31BF0054A5
      5D0056A75F0062B36B005DAE660038894100000000000031A5FF045BC7FF0D65
      CFFF1370D5FF1A79DBFF1D7EE0FF1E7FE1FF1C7CDEFF1875D9FF116DD2FF0F66
      CBFF0045B6FF002EA3FFA4AFC9FF00000000307ADFFF1B6BD8FFF1F1F0FFEEEE
      F0FFF5F2F2FF1165D9FFDDE3EFFFEBEEF3FFEDEFF0FFE6EAF0FF095ED9FFF7F4
      F1FFEFEEF3FFEDEEF3FF2672DCFF0D64D9FFFFFFFFFFFDFDFCFFE5E5DCFFE1E0
      E4FFAFBDB7FFCECFBFFFCDCEBEFFCECFBFFF64B192FF249C80FF2673B4FF229A
      E6FF152E9FFF2542CCFFDFE1DCFFFFFFFDFFA4763F00C0925B00C89A6300C89A
      6300B2844D003439C7004144CE006466F100686BF600474BD8003439C7006ABB
      730062B36B0062B36B005DAE660042934B00000000000031A4FF0257C4FF0960
      CCFF0F69D0FF1370D4FF1674D8FF1775D8FF1572D6FF116DD3FF1269CEFF397F
      C9FF9A9EA6FF002CA5FF92A1C2FF00000000317DDFFF0762D9FFAAC7EBFFA6C3
      E9FFACC7E9FF0863D9FF5E98E1FFB8CFECFFBDD2EBFF669FE6FF0663D9FFACC6
      E9FFA4C3E9FFAAC7ECFF0B65D9FF0D68DAFFFFFFFFFFD9D9D0FFEBEAEBFFEBE0
      DDFF97938EFFC3D0BDFFCCCCC0FFCECFBFFFCECDBDFFCACEC1FF1A77B8FF1E9F
      E5FF182EA1FF2440CDFFC2C4BAFFFDFFFBFFA87A4300C5976000C89A6300C89A
      6300B3854E00383DCA00484CD1006466F100686BF600494DD900383DCA0075C6
      7E0067B8700062B36B005DAE660046974F00000000000030A3FF0052C0FF035A
      C6FF0961CBFF0D65CFFF0F6AD0FF106AD1FF0F68D1FF0C63CEFF095FC8FF307F
      D4FFA7B9D6FF002CA4FF92A1C2FF000000003281E1FF0B6ADCFF126EDDFF126E
      DDFF126EDDFF0F6CDDFF1972DEFF6BA0E4FF77A9E6FF2377DCFF0F6CDCFF126D
      DCFF126EDDFF126EDDFF0F6CDDFF0E6CDDFFFEFEFEFFB8B8ABFFE2E1E3FFDAE1
      E6FF65A2BFFFC4CDBCFFCFD1BBFFCCCCBFFFD2D3C3FFD1CAC3FF1275B5FF0D83
      CCFF1C2DA2FF233ECDFFC6C7BAFFFEFEFBFFAF814A00CFA16A00C89A6300C89A
      6300B4864F004045D2006063D8006466F000696BF6004D50DC004045D20089DA
      920081D28A006FC0780063B46C004D9E560000000000002EA2FF004CBBFF0053
      C0FF0259C5FF0A60C9FF0D63CDFF0E64CEFF0D63CCFF075EC8FF0157C3FF095B
      C2FF0045B3FF002DA0FF91A0C2FF000000003285E2FF0E6FDEFF0E70DEFF0F70
      DEFF0F70DEFF0D6FDDFFE3EAEFFFF1F0F0FFEDEFF1FFEDEFF1FF086CDDFF0E70
      DDFF0F70DEFF0F70DEFF0F70DEFF0F70DEFFFAFCFCFFB9B9AAFFD1D5D2FF3C9E
      8CFF25AB7CFF31A0F5FF2945B4FF9D9E8FFFCBCCB8FFD2D4C1FFC9CBBCFFCCCE
      C0FF1B2BA4FF2431C5FFCACCC1FFFCFDFEFFB3854E00D4A66F00C89A6300C89A
      6300B88A53004449D5006E70DD006466F000696BF6004F52DE004449D5004E9A
      61004F9B6200539F6600529E65004F9B620000000000002CA1FF064DBAFF2D77
      D5FF347DD9FF347CD9FF347DD9FF347EDAFF347DD9FF347DD9FF337DD9FF266F
      D0FF0046B7FF002898FFC0C4D2FF000000003489E5FF0E74E0FF0F75E0FF1075
      E0FF1075E0FF0E74DFFFDBE6EFFFEEF1F1FFF1F1F0FFE8ECF1FF0C73DFFF1075
      E0FF1075E0FF1075E0FF1075E0FF1075E0FFFBFCFDFFD5D6CDFFD4D3D1FFA28E
      3BFFB8AB5BFF1F3BCCFF2437C9FFD9D6DBFFA29B40FFD2D4CDFFA2A391FFCACD
      BCFF1E30ABFF1B2BA8FFC9CDBBFFFCFEFEFFB88A5300E7B98200D7A97200CEA0
      6900BB8D56004A4FDB008789E4006466F000686BF5005155E0004A4FDB00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000002BA0FF2061C5FF286B
      CBFF286ECDFF286FCEFF2870CFFF2871CFFF286FCFFF286FCEFF286DCDFF286B
      CBFF0E4DBAFF002798FFC5C8D5FF00000000348EE7FF0F7AE3FF0F7BE3FF107B
      E3FF107BE3FF0E7AE2FFDAE6F1FFFCF6F1FFFDF7F1FFEEEEF1FF0B79E1FF107B
      E2FF107BE3FF107BE3FF107BE3FF107BE3FFFFFFFDFFF1F3EFFFF1F0F1FFF5F1
      F8FFA46D34FF0D3AD6FFE3E9EFFFE3E5EBFF83D7E0FF2CA68BFF7F9187FFD4CD
      BBFFC9CCC1FFCACDBDFFCCCCBDFFFBFAFEFFB3885C00B4885C00BD926600BE92
      6600B4895D004D52DE009395E7006466F000686BF5005356E1004D52DE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000002499FF00319AFF012F
      9AFF012CA3FF0029A6FF002DA6FF0835A6FF022EA6FF002AA5FF042DA1FF0A32
      A0FF0129A1FF00248EFFC5C8D5FF000000003391E7FF117FE5FF1180E4FF1280
      E5FF1280E5FF117FE4FF057AE4FF0678E2FF0378E3FF067AE3FF1280E3FF127F
      E4FF1280E5FF1280E5FF117FE4FF1280E4FFBEBDB3FFF5F6F2FFEFEEF0FFD3D6
      D7FFD5D7C9FFEBEEF1FFE4EEE5FFE7E5F9FF202EB6FF9EC3F4FF2787CBFF3C9E
      CDFFD2D1CEFFA7A59DFFD3D2C5FFFFFEFDFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF005257E200A4A6EC00878AF1008082F400575BE3005257E200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000595E7FFF5A6280FF5C9C
      86FF19A759FF13AE87FF106FCAFF091CF4FF2427FEFF3C41FDFFACACD6FFDBD9
      CFFF3237CBFF595D7FFFECEEF2FF000000003087E4FF1084E5FF1285E5FF1285
      E6FF1385E6FF1284E5FF1285E5FF1184E6FF1384E6FF1283E4FF1284E6FF1284
      E6FF1385E6FF1385E6FF1285E6FF137EE3FFC5C4B7FFC7C9B4FFC7C7B5FFC2C4
      B3FFC1C2B8FFEBE9E7FFE4E6E6FFCFD1D2FFDDD6DFFFDDE4E2FFE1DDF2FF3744
      A9FF3340A7FFE4DED8FFFDFEFEFFFEFCFDFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF005156E1004E51DC005E61E9006164ED005458E2005257E200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000D0E7DBFF43B076FF1BB974FF28DCA9FF177A8DFF1033D4FF3134
      EFFFD6D7FAFF0000000000000000000000001E8CE8FF54A1ECFF1187E6FF1086
      E7FF0E87E6FF0F87E7FF0F87E7FF0F87E7FF0F87E7FF0F87E7FF0F87E7FF0F87
      E7FF0F86E7FF1589E6FF68A6EDFF85C4F3FFFDFEFDFFFDFEFEFFFFFFFDFFCECF
      C6FFCBCABBFFC7C6B4FFE7E8DEFFB9B9B0FFBFBDB9FFDCDFDDFFD5DBDCFFCBC6
      CAFFD7DADDFFDEDDE0FFFEFFFEFFFDFDFCFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000F2F7F4FF7DC7A1FF28AF6CFF68C193FF0000
      000000000000000000000000000000000000D8E9FAFF1F91E7FF96C9F6FF95C9
      F4FF96C8F3FF96C9F3FF96C9F3FF96C9F3FF96C9F3FF96C9F3FF96C9F3FF95C8
      F3FF94C8F3FF87BFF4FF349CE9FFFDFEFEFFFFFFFFFFFFFFFFFFFCFCFCFFFFFF
      FFFFFDFDFEFFFCFFFDFFFEFDFEFFFDFCFEFFFDFFFEFFFCFDFBFFF7F6F1FFBCBD
      B5FFF3F2F3FFFDFDFDFFFFFFFFFFFFFFFFFF424D3E000000000000003E000000
      2800000040000000400100000100010000000000000A00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000008FFFA00100009641E00040000000F980
      00000000000090000000000100000000C000000000008000F000000100008001
      000000000000E0028000000100009000000100000000C001000000020000E801
      000F00020000E801000B00020000F002000500020000F405800500020000FA0B
      438F00020000FD37BD7F40020000FECF8001F84FFFFF9622400000408001F9C0
      00012002FFFF9000000020018001000080008001800180010000800080018003
      000080008001E0020000000080019000000000008001C001000000008001E801
      000000018001E801000000000001F002000080040001F405002848188001FA0B
      00001100FFFFFD37000000008001FECFBFFF80000000FFFF000200000000E005
      4002000000004005400200000000400540020000000040054002000000004005
      4002000000004005400200000000400540020000000040054002000000004005
      4002000000004005400200000000400540020000000040054002000000004005
      400300000000C005FC3F00000000FF87FFFFFF878232800100000000FC000000
      18020000800080011802000080008002100000008000E0020000000080018002
      0000000080018002000000008001000218020000800140011E0E00008001A001
      1F1E00008001D001000000008001E801000000008001F401000000008001FA01
      000000008001FD1FFFFFFFFFFFFFFEE1800080020000FFFF8000000000008007
      8000000000008005800000000000800580000004000080058000000000008005
      0000000000008005000000200000800500000020000080078000002000008003
      8000000000008001800080000000800180000000000080028000000000008005
      8000000000008003800000000000FFFF80000000FFFFFFFF0000000080018001
      0000000080014001000000008001000100000000800100010000000080010001
      0000000080010001000000008001000100010000800100010000000080010001
      0000000080010001000000008001000100000000800100010000000080010001
      000200008001000100000000FFFF40010000DDF90000FFFF0000A20700000000
      0000400000000000000040010000000000004000000000000000400100000000
      0000400100000000000040010000000000008002000000000000800000000000
      0000800200000000000000020000000000000002000000000000800500000000
      0000810B00000000000080F70000FFFFDC3B0000FFFF8001E000000080018002
      40000000FFFF0000400000000001800140000000000100014000000000014001
      A00300000001E000D00B00000001D802A00700000001F43FA00500000001F827
      A00500000001E817A00700000001E817C00B00000001F00FD0030000FFFFF00F
      E81F00008001E817F66F0000FFFFF42FFF83FFFFC19FFF83FF29FC7F7E6FFF01
      FE00F83FC013FE000000F01F000C00280082C007000300100000800300000028
      00000001000000000011082180000001000100014000000100010801B0010001
      80030441E800800380038003F40180038003C007FA0780038003F01FFC018003
      C007FFFFFF3FC007FFFFFFFFFEE7FFFFF018C001FC320000F007CBFEE8010000
      E800B00080000000D0004000FE600000A000800080000000A000800082410000
      4000000082410000400100009249000040018000C64300000002000042420000
      80024000CE7700000003B000400200000C05C000C00200001427D000FC3F0000
      6A1FD000F24300009C47FFFFF81F00000000FC3FFFFBF0000000E817F9EFF001
      00008003FE5BE8000000FE7FE181D00000008001D009A000000082416001A080
      000082410000400000009249000340010000C6430000400100004242E0000002
      0000CE779003800200004002EC0D00030000C002FB370C050000FC3FFCCF1427
      0000F243FF3F6A1F0000F81FFFFF9C478000CA55FFE000000000000080000000
      0000000080000000000000008000000000000000800100000000000080010000
      0000000080030000000000008007000000000000800700000000000080070000
      0000000080070000000000008007000000000000800700000000000080070000
      000000008007000000000000800700000000FEBF8000F81F0000F81F8000E007
      0000F00F8000C0030000E007800080010000E287800080010000E28780000000
      0000FE87800000000000F007800000000000E00F800000000000E2BF80000000
      0000E287800000000000E087800080010000E007800080010000F81F8000C003
      0000FEBF8000E0070000FEBFFFFFF81FEC2F0000FFFFFB87C00F00000001F003
      80070000E3FFE00000030000E1FFC00080000000803F000000010000003F0000
      00000000001F000000000000000B0000000000000001000000000000A0000003
      00010000F001000300000000F000800180000000FA050003C0010000FF038001
      E0030000FF07D001F0170000FFA7FFD0000000000000F7C7000000000000E003
      000000000000C001000000000000800300000000000080030000000000008003
      00000000000000030000000000008007000000000000C07F000000000000C1FF
      000000000000C0FF000000000000C0FF000000000000C03F000000000000803F
      000000000000C07F000000000000C07FC00F0000F80F000080030000F0070000
      00010000E007000000010000E007000000010000F007000000000000DC330000
      000000000661000000000000064000008000000002400000C001000006400000
      F803000086610000F80F00008E730000FFFF000080030000FFFF000080030000
      FFFF000080030000FFFF0000FE3F00000000FD99000000000000F80100000000
      0000B00100000000000080000000000000000000000000000000000100000000
      0000000000000000000000010000000000008003000000000000C00300000000
      0000C203000000000000C103000000000000C101000000000000C18300000000
      0000C1B700000000000080FF00000000FFFF0000F0010000F8010000E0010000
      F001000040010000E001000040000000C0010000800300008001000000030000
      80010000000300008001000000030000C0010000000300008001000080030000
      80010000400300008003000040030000C003000040030000FE030000C0030000
      FF1F0000F81F0000FFFF0000FC3F00008000FFFF000000000000FFFF00000000
      0000800300000000000080010000000000008001000000000000800100000000
      0000800100000000000080010000000000008001000000000000800100000000
      0000800100000000000080010000000000008001000000000000800100000000
      0000F807000000000000FE1F0000000000000000000000000000000000000000
      000000000000}
  end
  object ilMainLarge: TImageList
    Left = 889
    Top = 100
  end
  object ActionList1: TActionList
    Images = ilSmall
    Left = 277
    Top = 100
    object actUp: TAction
      Category = 'OtherPlaces'
      Caption = 'Up'
      ImageIndex = 15
    end
    object actLargeIcons: TAction
      Category = 'ListViewOptions'
      Caption = 'Large Icons'
      ImageIndex = 10
    end
    object actSmallIcons: TAction
      Tag = 1
      Category = 'ListViewOptions'
      Caption = 'Small Icons'
      ImageIndex = 11
    end
    object actList: TAction
      Tag = 2
      Category = 'ListViewOptions'
      Caption = 'List'
      ImageIndex = 12
    end
    object actReport: TAction
      Tag = 3
      Category = 'ListViewOptions'
      Caption = 'Report'
      ImageIndex = 13
      OnExecute = actReportExecute
    end
    object actDesktop: TAction
      Category = 'OtherPlaces'
      Caption = 'Desktop'
      ImageIndex = 1
    end
    object actMyDocuments: TAction
      Category = 'OtherPlaces'
      Caption = 'My Documents'
      ImageIndex = 0
    end
    object actMyNetworkPlaces: TAction
      Category = 'OtherPlaces'
      Caption = 'My Network Places'
      ImageIndex = 3
    end
    object actSetParentForm: TAction
      Caption = 'Set As Parent Form'
      OnExecute = actSetParentFormExecute
    end
    object actAddToFavorite: TNAction
      Category = 'MainAction'
      Caption = 'Add To Favorite'
      ImageIndex = 44
      OnExecute = actAddToFavoriteExecute
      CheckPermission = False
    end
    object actRemoveFromFavorite: TNAction
      Category = 'MainAction'
      Caption = 'Remove From Favorite'
      ImageIndex = 45
      OnExecute = actRemoveFromFavoriteExecute
      OnUpdate = actRemoveFromFavoriteUpdate
      CheckPermission = False
    end
    object actChangePassword: TNAction
      Category = 'Main'
      Caption = 'Change User Password'
      Visible = False
      OnExecute = actChangePasswordExecute
      CheckPermission = False
    end
    object actLogout: TNAction
      Category = 'Main'
      Caption = 'Logout Application'
      OnExecute = actLogoutExecute
      CheckPermission = False
    end
  end
  object DockManager: TLMDDockManager
    StyleName = 'VS2012Blue'
    UseTabbedDocs = False
    Left = 277
    Top = 168
  end
  object pmHeader: TPopupMenu
    Left = 413
    Top = 168
    object SetAsParentPanel1: TMenuItem
      Action = actSetParentForm
    end
  end
  object pmMainMenu: TPopupMenu
    Images = ilSmall
    Left = 565
    Top = 168
    object AddToFavorite1: TMenuItem
      Action = actAddToFavorite
    end
  end
  object pmFavoriteMenu: TPopupMenu
    Images = ilSmall
    Left = 481
    Top = 168
    object RemoveFromFavorite1: TMenuItem
      Action = actRemoveFromFavorite
    end
  end
  object ilMessages: TcxImageList
    SourceDPI = 96
    Height = 64
    Width = 64
    FormatVersion = 1
    DesignInfo = 6553945
    ImageInfo = <
      item
        Image.Data = {
          36400000424D3640000000000000360000002800000040000000400000000100
          2000000000000040000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000200000004000000060000000700000008000000080000
          0007000000060000000400000003000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000003000000080000
          000E000000140000001B00000021000000270000002A0000002C0000002D0000
          002B00000028000000230000001D000000160000000F00000009000000040000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000300000009000000120000001E0000002B0000
          00390000004600000052020200610A0700780E09008411090089110900890E09
          00840A06007701000061000000550000004A0000003D0000002F000000210000
          00150000000B0000000400000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000040000000C0000001A0000002B0000004001010058120A0088311A
          00B5563209D87C4D16F0955E20FE996022FF985F20FF985E1DFF975D1AFF975C
          17FF965B14FF8F560FFC754507EB533002D42E1A00B00F0900840000005B0000
          0046000000310000001E00000010000000060000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          000C0000001C000000320000004E140B0089442604C88D5923F89D672FFF9D66
          2DFF975D1FFF915311FF8C4B04FF8B4900FF8C4A00FF8C4B00FF8D4C00FF8E4D
          00FF8F4E00FF915103FF945507FF96580AFF975909FF965807FF814C03F23F25
          01C10F0901830000005400000039000000210000000F00000005000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000008000000160000
          002F01010051231200A1744615EBA06C36FF9E6830FF8F500FFF894600FF8947
          00FF8A4800FF8B4900FF8C4A00FF8D4B00FF8D4C00FF8E4D00FF8F4E00FF904F
          00FF915000FF925100FF935200FF945300FF945400FF955500FF975802FF9859
          02FF985900FF693F01E01B11019800000056000000370000001C0000000B0000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000030000000D00000022000000421A0E
          0092784917ECA4703DFF9A6026FF8A4501FF8A4500FF8A4600FF8B4700FF8C48
          00FF8D4900FF8E4A00FF8E4B00FF8F4C00FF904D00FF914E00FF924F00FF9250
          00FF935200FF945300FF955400FF965500FF975600FF985700FF995800FF9A59
          00FF9B5A00FF9B5C00FF9C5D00FF6D4201E1120B01890000004C0000002A0000
          0011000000050000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000004000000120000002D06030061542F08D2A46F
          3DFF9C6229FF8A4500FF8A4500FF8B4600FF8C4700FF8D4800FF8D4900FF8E4A
          00FF8F4B00FF904C00FF904D00FF914E00FF924F00FF935000FF945100FF9552
          00FF965300FF965400FF975600FF985700FF995800FF9A5900FF9B5A00FF9C5B
          00FF9D5C00FF9E5E00FF9E5F00FF9F6000FF9E6100FE472C01C2020200620000
          0037000000180000000700000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000050000001600000036140B0085865421F2A7723FFF8E49
          06FF8B4500FF8C4600FF8D4700FF8D4700FF8E4900FF8F4900FF904A00FF914C
          00FF914C00FF924D00FF934F00FF945000FF955100FF955200FF965300FF9754
          00FF985500FF995600FF995700FF9A5800FF9B5A00FF9C5B00FF9D5C00FF9E5D
          00FF9F5E00FFA06000FFA16100FFA26200FFA36300FFA36400FF7A4C01E60C08
          007D000000410000001D00000008000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000006000000180000003B2C1701A6A36E3BFE9E6128FF8C4500FF8D45
          00FF8E4600FF8E4700FF8F4800FF904900FF914A00FF914B00FF924C00FF934D
          00FF944E00FF944F00FF955000FF965100FF975300FF985400FF995500FF9956
          00FF9A5700FF9B5800FF9C5900FF9D5B00FF9E5C00FF9F5D00FFA05E00FFA05F
          00FFA16000FFA26200FFA36300FFA46400FFA56500FFA66700FFA76700FF9C62
          00F81D1301950000004700000020000000090000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0005000000180000003D391F03B6AC7746FF965212FF8E4500FF8F4600FF8F47
          00FF904800FF914900FF914A00FF924B00FF934C00FF944D00FF944E00FF954F
          00FF965000FF975100FF985200FF985300FF995400FF9A5600FF9B5700FF9C58
          00FF9D5900FF9D5A00FF9E5B00FF9F5D00FFA05E00FFA15F00FFA26000FFA361
          00FFA46300FFA56400FFA56500FFA66600FFA76800FFA86800FFA96A00FFAA6B
          00FFA66A00FC271901A200000049000000200000000800000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          00150000003A402203BBAE7847FF954E0BFF904600FF914700FF914800FF9249
          00FF934900FF944B00FF944C00FF954D00FF964E00FF964F00FF975000FF9851
          00FF995200FF9A5300FF9A5400FF9B5500FF9C5600FF9C5700FF9D5900FF9E5A
          00FF9F5B00FFA05C00FFA15D00FFA25F00FFA36000FFA46100FFA46200FFA564
          00FFA66500FFA76600FFA86700FFA96800FFAA6900FFAA6B00FFAB6C00FFAC6D
          00FFAD6F00FFAC6F00FE2B1C01A4000000470000001D00000007000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000002000000100000
          0032331B01ABAF7846FF974E0BFF924700FF934700FF934800FF944900FF954A
          00FF954B00FF964C00FF974D00FF974F00FF984F00FF995100FF9A5200FF9B53
          00FF9B5400FF9C5500FF9C5600FF9B5600FF9B5600FF9B5700FF9C5800FF9E5A
          00FFA05C00FFA25E00FFA46000FFA46100FFA56200FFA66300FFA76400FFA866
          00FFA86700FFA96800FFAA6900FFAB6B00FFAC6C00FFAD6D00FFAE6E00FFAF70
          00FFB07100FFB17300FFAF7200FD211601970000004000000017000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000A000000281C0F
          008BAB723EFE9B5311FF944700FF954800FF954900FF964A00FF964B00FF974C
          00FF984D00FF984E00FF994F00FF9A5000FF9B5100FF9B5200FF9C5400FF9D55
          00FF9E5600FF9E5700FF9C5600FF975400FF915200FF8F5100FF905200FF9656
          00FF9E5B00FFA36000FFA66200FFA76300FFA76400FFA86500FFA96700FFAA68
          00FFAB6900FFAC6A00FFAC6C00FFAD6D00FFAE6E00FFAF6F00FFB07100FFB172
          00FFB27400FFB37500FFB47700FFA86F00F80F0A007E00000035000000100000
          0002000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000050000001C090500609C61
          2AF7A35F20FF964800FF974900FF974A00FF984B00FF994C00FF994D00FF9A4E
          00FF9B4F00FF9B5000FF9C5100FF9D5200FF9E5400FF9E5500FF9F5600FFA057
          00FFA15800FFA15900FF9B5700FFBF9968FFF7F3EFFFF7F3EFFFF7F3EFFFF7F4
          EFFF995900FFA46100FFA86400FFA96500FFAA6700FFAB6800FFAC6900FFAD6A
          00FFAE6C00FFAE6D00FFAF6F00FFB06F00FFB17100FFB27200FFB37400FFB475
          00FFB57700FFB57800FFB67900FFB77A00FF8F6001E90302005F000000270000
          0009000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000010000000396A3C0ED9AF71
          38FF984900FF994A00FF994B00FF9A4C00FF9B4D00FF9C4E00FF9C4F00FF9D50
          00FF9E5100FF9E5200FF9F5300FFA05400FFA05500FFA15700FFA25800FFA259
          00FFA35A00FFA35A00FF9B5700FFBF9C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF965800FFA56200FFAB6600FFAC6800FFAD6900FFAE6A00FFAE6B00FFAF6D
          00FFB06E00FFB16F00FFB27000FFB27200FFB37300FFB47500FFB57600FFB678
          00FFB77900FFB87A00FFB97B00FFB97D00FFBA7E00FF523802C1000000470000
          0019000000040000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000070000002427140097B57843FF9C4C
          03FF9B4A00FF9C4B00FF9C4C00FF9D4D00FF9E4F00FF9E5000FF9F5100FFA052
          00FFA05300FFA15400FFA25500FFA25600FFA35700FFA45900FFA55A00FFA65B
          00FFA65C00FFA55D00FF9C5800FFBF9D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF965900FFA76400FFAE6900FFAF6A00FFAF6B00FFB06D00FFB16E00FFB26F
          00FFB37000FFB37200FFB47300FFB57500FFB67600FFB77700FFB87900FFB97A
          00FFB97C00FFBA7D00FFBB7E00FFBC7F00FFBD8100FFBB8000FE150F01840000
          00310000000D0000000000000000000000000000000000000000000000000000
          00000000000000000000000000020000001303020049995C23F3A85F1CFF9D4B
          00FF9E4C00FF9E4D00FF9F4E00FFA04F00FFA05000FFA15100FFA25300FFA254
          00FFA35500FFA45600FFA45700FFA55800FFA65900FFA75B00FFA75C00FFA85D
          00FFA95F00FFA85F00FF9F5A00FFC09E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF985B00FFAA6700FFB06B00FFB16D00FFB26E00FFB36F00FFB37000FFB472
          00FFB57300FFB67400FFB67600FFB87700FFB97900FFB97A00FFBA7C00FFBB7D
          00FFBC7E00FFBD7F00FFBD8100FFBE8200FFBF8300FFC08500FF845C02DF0000
          004F0000001C0000000400000000000000000000000000000000000000000000
          000000000000000000000000000700000025381D01A8B7773DFFA04C00FFA14D
          00FFA14E00FFA24F00FFA25000FFA35200FFA45300FFA45400FFA55500FFA656
          00FFA65700FFA75800FFA85A00FFA85B00FFA95C00FFAA5D00FFAA5E00FFAB5F
          00FFAC6100FFAB6100FFA15C00FFC29F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF9B5E00FFAC6900FFB36E00FFB46F00FFB57000FFB57200FFB67300FFB774
          00FFB87600FFB97700FFBA7900FFBA7A00FFBB7C00FFBC7D00FFBD7E00FFBE80
          00FFBE8100FFBF8300FFC08300FFC18500FFC18600FFC28800FFC38900FF2318
          0193000000320000000C00000000000000000000000000000000000000000000
          000000000000000000010000001003020043A06124F4AA5D16FFA34E00FFA34F
          00FFA45000FFA45100FFA55200FFA65300FFA65500FFA75600FFA75700FFA858
          00FFA95900FFAA5A00FFAA5C00FFAB5D00FFAC5E00FFAC5F00FFAD6100FFAE62
          00FFAE6300FFAE6400FFA35E00FFC3A06FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF9D5F00FFAF6B00FFB57000FFB67200FFB77300FFB87400FFB97600FFB977
          00FFBA7900FFBB7A00FFBC7B00FFBD7D00FFBE7E00FFBE8000FFBF8100FFC082
          00FFC08400FFC18500FFC28600FFC38800FFC38900FFC48A00FFC58C00FF8760
          02DE0000004B0000001900000003000000000000000000000000000000000000
          000000000000000000040000001D28150092B97639FFA54F00FFA65000FFA651
          00FFA75200FFA85300FFA85400FFA95600FFAA5700FFAA5800FFAB5900FFAB5A
          00FFAC5B00FFAD5D00FFAD5E00FFAE5F00FFAF6100FFAF6200FFB06300FFB164
          00FFB16600FFB16600FFA76100FFC4A16FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA06200FFB26E00FFB87300FFB97500FFBA7600FFBB7700FFBB7900FFBC7A
          00FFBD7C00FFBE7D00FFBF7E00FFBF8000FFC08100FFC18300FFC28400FFC286
          00FFC38700FFC48800FFC48A00FFC58B00FFC68C00FFC78D00FFC78F00FFC890
          00FF150F017E0000002A00000008000000000000000000000000000000000000
          000000000000000000090000002D7B4510DCB46823FFA95100FFA95200FFAA53
          00FFAA5400FFAB5500FFAC5700FFAC5800FFAD5900FFAD5A00FFAE5B00FFAF5D
          00FFAF5E00FFB05F00FFB16100FFB16200FFB26300FFB26400FFB36500FFB467
          00FFB46800FFB46900FFAA6400FFC6A36FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA26400FFB57100FFBB7600FFBC7700FFBD7900FFBD7A00FFBE7C00FFBF7D
          00FFC07E00FFC18000FFC18100FFC28300FFC38400FFC38500FFC48700FFC588
          00FFC68A00FFC68B00FFC78C00FFC88E00FFC88F00FFC99000FFCA9200FFCB94
          02FF5A4202C00000003D00000010000000000000000000000000000000000000
          0000000000010000001108050055B8712FFEAC5504FFAB5300FFAC5400FFAC55
          00FFAD5600FFAD5800FFAE5900FFAF5A00FFAF5B00FFB05C00FFB05E00FFB15F
          00FFB26000FFB26200FFB36300FFB46400FFB46500FFB56700FFB66800FFB669
          00FFB76B00FFB66C00FFAB6600FFC7A46FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA46700FFB77300FFBD7900FFBE7A00FFBF7B00FFC07D00FFC17E00FFC180
          00FFC28100FFC38300FFC48400FFC48500FFC58700FFC68800FFC68A00FFC78B
          00FFC88C00FFC88E00FFC98F00FFCA9000FFCA9200FFCB9300FFCC9500FFCD97
          01FFB38505F2010000510000001B000000020000000000000000000000000000
          0000000000020000001A2D180093BD7430FFAE5500FFAE5600FFAF5700FFAF58
          00FFB05900FFB15A00FFB15C00FFB25D00FFB25E00FFB35F00FFB46100FFB462
          00FFB56300FFB56400FFB66600FFB76700FFB76800FFB86A00FFB86B00FFB96D
          00FFBA6E00FFB96F00FFAE6900FFC8A56FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA66900FFB97600FFC07C00FFC17D00FFC27F00FFC38000FFC38100FFC483
          00FFC58400FFC58600FFC68700FFC78800FFC78A00FFC88B00FFC98D00FFC98E
          00FFCA8F00FFCB9100FFCB9200FFCC9300FFCD9500FFCD9600FFCE9800FFCF99
          00FFD19D07FF1811017E00000027000000060000000000000000000000000000
          00000000000500000024623607C6BC6F25FFB15800FFB25900FFB25A00FFB35B
          00FFB35C00FFB45D00FFB45F00FFB56000FFB56100FFB66200FFB76400FFB765
          00FFB86600FFB86700FFB96800FFBA6A00FFBA6B00FFBB6C00FFBB6E00FFBC6F
          00FFBD7100FFBC7100FFB16C00FFCAA66FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA96C00FFBC7900FFC37E00FFC48000FFC58100FFC58300FFC68400FFC786
          00FFC78700FFC88800FFC98A00FFC98B00FFCA8D00FFCB8E00FFCB8F00FFCC91
          00FFCD9200FFCD9300FFCE9500FFCE9600FFCF9800FFD09900FFD09A00FFD19B
          00FFD3A009FF453401AD000000320000000B0000000000000000000000000000
          0000000000090000002EA5621AF0B8640FFFB45B00FFB55C00FFB55D00FFB65E
          00FFB66000FFB76100FFB76200FFB86300FFB86400FFB96600FFBA6700FFBA68
          00FFBB6900FFBB6B00FFBC6C00FFBD6D00FFBD6F00FFBE7000FFBE7100FFBF73
          00FFBF7400FFBE7400FFB36E00FFCBA86FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFAB6E00FFBE7C00FFC58100FFC78300FFC78400FFC88600FFC98700FFC989
          00FFCA8A00FFCA8B00FFCB8D00FFCC8E00FFCC9000FFCD9100FFCE9200FFCE94
          00FFCF9500FFCF9600FFD09700FFD19900FFD19A00FFD29B00FFD39D00FFD39E
          00FFD5A309FF7B5D04D10000003E000000100000000000000000000000000000
          00000000000C06040048C07426FEB75E01FFB75E00FFB85F00FFB86000FFB961
          00FFBA6200FFBA6300FFBA6500FFBB6600FFBC6700FFBC6900FFBD6A00FFBD6B
          00FFBE6C00FFBE6E00FFBF6F00FFBF7000FFC07100FFC17300FFC17400FFC275
          00FFC27700FFC17700FFB67100FFCCA96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFAE7100FFC17E00FFC88400FFC98600FFCA8700FFCB8900FFCB8A00FFCC8B
          00FFCC8D00FFCD8E00FFCE8F00FFCE9000FFCF9200FFCF9300FFD09500FFD196
          00FFD19700FFD29900FFD29A00FFD39B00FFD39C00FFD49E00FFD59F00FFD5A0
          00FFD7A406FFB68A0BEE00000048000000150000000100000000000000000000
          000000000010110A0065C47726FFBA6000FFBA6100FFBB6200FFBB6300FFBC65
          00FFBD6600FFBD6700FFBD6800FFBE6900FFBF6B00FFBF6C00FFC06D00FFC06E
          00FFC16F00FFC17100FFC27200FFC27300FFC37500FFC37600FFC47700FFC579
          00FFC57A00FFC47B00FFB97400FFCDAB6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB07400FFC48200FFCB8700FFCC8900FFCD8A00FFCD8C00FFCE8D00FFCE8E
          00FFCF9000FFD09100FFD09200FFD19300FFD19500FFD29600FFD29700FFD399
          00FFD39A00FFD49B00FFD59D00FFD59E00FFD69F00FFD6A000FFD7A200FFD7A3
          00FFD8A502FFD7A810FD020200540000001A0000000200000000000000000000
          00010000001325150180C67926FFBE6402FFBE6400FFBE6500FFBF6700FFBF68
          00FFBF6900FFC06A00FFC16B00FFC16C00FFC16E00FFC26F00FFC27000FFC371
          00FFC47300FFC47400FFC57500FFC57700FFC67800FFC67900FFC77A00FFC77C
          00FFC87D00FFC77D00FFBB7700FFCFAC6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB27600FFC78400FFCE8A00FFCF8C00FFCF8D00FFD08E00FFD09000FFD191
          00FFD19200FFD29400FFD29500FFD39600FFD49700FFD49900FFD59A00FFD59B
          00FFD69D00FFD69E00FFD79F00FFD7A000FFD8A100FFD8A300FFD9A400FFD9A5
          00FFDAA600FFDDAE14FF0F0B026A0000001E0000000300000000000000000000
          0001000000152F1A018FC97D27FFC26B08FFC26A05FFC16900FFC26A00FFC26B
          00FFC26C00FFC36D00FFC46E00FFC46F00FFC47100FFC57200FFC57300FFC674
          00FFC67600FFC77700FFC77800FFC87900FFC97B00FFC97C00FFC97D00FFCA7E
          00FFCB8000FFC98000FFBE7900FFD0AE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB57900FFC98700FFD08D00FFD18F00FFD19000FFD29100FFD39200FFD394
          00FFD49500FFD49600FFD59801FFD69A03FFD69C04FFD79D05FFD79F05FFD8A0
          06FFD8A106FFD9A205FFD9A304FFDAA403FFDAA502FFDAA500FFDBA600FFDBA7
          00FFDCA800FFDFB217FF16110177000000200000000300000000000000000000
          000100000016341C0094CC8028FFC6710DFFC7720DFFC7720BFFC56E03FFC56E
          00FFC56F00FFC67000FFC67100FFC77200FFC77400FFC87500FFC87600FFC977
          00FFC97900FFCA7A00FFCA7B00FFCB7C00FFCB7E00FFCC7F00FFCC8000FFCD81
          00FFCD8300FFCC8300FFC07C00FFD1AF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB77B00FFCC8A00FFD29000FFD39100FFD49300FFD49400FFD59501FFD698
          05FFD79B09FFD89E0CFFD99F0DFFD9A00DFFDAA20DFFDBA30DFFDBA40DFFDBA5
          0DFFDCA60DFFDDA70DFFDDA80DFFDDA90DFFDEAB0DFFDEAC0CFFDEAC0AFFDEAC
          06FFDEAB01FFE1B51AFF1A14007C000000210000000300000000000000000000
          000100000015351D0095CF8329FFCA7712FFCA7812FFCA7912FFCB7A12FFCA78
          0CFFC87403FFC87300FFC97400FFC97600FFCA7700FFCA7800FFCA7900FFCB7A
          00FFCB7B00FFCC7D00FFCC7E00FFCD7F00FFCD8000FFCE8200FFCE8300FFCF84
          00FFCF8500FFCE8600FFC27E00FFD2B06FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB97E00FFCD8C00FFD59200FFD59502FFD79908FFD89C0EFFDA9F12FFDAA0
          12FFDBA112FFDBA212FFDCA412FFDCA512FFDCA612FFDDA712FFDDA812FFDEA9
          12FFDEAA12FFDFAC12FFDFAD12FFDFAE12FFDFAE12FFE0B012FFE0B112FFE1B2
          12FFE1B312FFE4BA25FF1A14007C000000200000000300000000000000000000
          000100000013321D018FD18629FFCD7D18FFCE7E18FFCE7F18FFCF8018FFCF81
          18FFD08217FFCF7F11FFCD7B07FFCC7900FFCC7A00FFCD7B00FFCD7C00FFCE7E
          00FFCE7E00FFCF8000FFCF8100FFD08200FFD08300FFD08500FFD18600FFD187
          00FFD28900FFD18900FFC48100FFD3B26FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFBB8103FFD1940BFFDA9D13FFDBA018FFDCA218FFDCA318FFDDA418FFDDA5
          18FFDEA618FFDEA718FFDEA818FFDEA918FFDFAA18FFDFAB18FFE0AD18FFE0AE
          18FFE0AF18FFE1B018FFE1B118FFE2B218FFE2B318FFE3B318FFE3B418FFE3B6
          18FFE4B718FFE6BE2AFF181201760000001E0000000300000000000000000000
          00000100001129190181D38828FFD1821DFFD2831DFFD2841DFFD2861DFFD387
          1DFFD3871DFFD4891DFFD4891DFFD4891BFFD38612FFD18309FFD08001FFD080
          00FFD18100FFD18300FFD28400FFD28500FFD38600FFD38800FFD38800FFD48A
          00FFD48B00FFD38B00FFC68400FFD5B36FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC18D19FFD69D1CFFDDA41DFFDEA51DFFDEA61DFFDFA71DFFDFA81DFFE0A9
          1DFFE0AA1DFFE0AB1DFFE1AC1DFFE1AD1DFFE2AE1DFFE2AF1DFFE3B01DFFE3B1
          1DFFE3B31DFFE4B41DFFE4B41DFFE4B51DFFE4B61DFFE5B71DFFE5B81DFFE5B9
          1DFFE6BA1DFFE8C02CFF110D02690000001B0000000200000000000000000000
          00000000000D160D0066D58927FFD58924FFD68A24FFD68B24FFD68C24FFD68D
          24FFD78E24FFD78F24FFD89024FFD89124FFD89224FFD99324FFD99424FFD892
          1EFFD78F17FFD78E11FFD68C0BFFD68B07FFD68B03FFD68A00FFD68C00FFD78E
          03FFD89106FFD8940DFFCC8F12FFD8BA7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC3911FFFD9A223FFE1A924FFE1AA24FFE1AB24FFE2AC24FFE2AD24FFE3AE
          24FFE3AF24FFE3B024FFE4B124FFE4B224FFE4B324FFE4B424FFE5B524FFE5B6
          24FFE5B724FFE6B824FFE6B924FFE6BA24FFE7BB24FFE7BC24FFE8BC24FFE8BD
          24FFE8BF27FFE8BF29FE05030151000000160000000100000000000000000000
          0000010000090A060049D78922FFD98F2BFFD9902BFFDA912BFFDA922BFFDA93
          2BFFDA942BFFDB952BFFDB962BFFDB972BFFDC972BFFDC992BFFDC9A2BFFDD9B
          2BFFDD9C2BFFDE9C2BFFDE9D2BFFDE9F2BFFDEA02BFFDFA02BFFDFA12BFFDFA2
          2BFFDFA42BFFDEA32BFFD19A28FFDABE84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC69625FFDCA729FFE3AD2BFFE4AF2BFFE4B02BFFE4B02BFFE5B22BFFE5B3
          2BFFE5B42BFFE6B52BFFE6B52BFFE6B62BFFE7B72BFFE7B82BFFE8B92BFFE8BA
          2BFFE8BB2BFFE8BC2BFFE8BD2BFFE8BE2BFFE9BF2BFFE9BF2BFFE9C02BFFEAC1
          2BFFEBC537FFD3AB1EF300000040000000110000000000000000000000000000
          00000000000600000027C97E17F6DD9734FFDC9632FFDD9732FFDD9832FFDD99
          32FFDE9A32FFDE9B32FFDE9C32FFDF9C32FFDF9D32FFDF9E32FFE09F32FFE0A0
          32FFE0A132FFE0A232FFE0A332FFE1A432FFE1A532FFE2A632FFE2A732FFE2A8
          32FFE3A932FFE2A932FFD5A02EFFDCC187FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC99B2CFFDEAC30FFE6B232FFE6B332FFE7B432FFE7B532FFE8B632FFE8B7
          32FFE8B832FFE8B932FFE8BA32FFE8BB32FFE9BC32FFE9BC32FFE9BD32FFEABE
          32FFEABF32FFEAC032FFEBC032FFEBC232FFEBC232FFECC332FFECC432FFECC4
          32FFEECB47FF93760CD4000000350000000C0000000000000000000000000000
          0000000000030000001C845208CCE19E3FFFE09C39FFE09D39FFE19E39FFE19F
          39FFE1A039FFE1A139FFE1A139FFE2A239FFE2A339FFE2A439FFE3A539FFE3A6
          39FFE3A739FFE4A839FFE4A839FFE4A939FFE5AA39FFE5AB39FFE5AC39FFE5AD
          39FFE6AE39FFE4AE39FFDAA736FFE1C78CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFD1A334FFE2B238FFE8B739FFE9B839FFE9B939FFE9BA39FFEABB39FFEABC
          39FFEABC39FFEBBD39FFEBBE39FFEBBF39FFEBC039FFECC039FFECC139FFECC2
          39FFECC339FFECC439FFEDC539FFEDC539FFEDC639FFEDC739FFEEC839FFEEC8
          39FFF0CF4FFF574502AE00000029000000070000000000000000000000000000
          0000000000010000001344290198E3A03EFFE3A241FFE3A341FFE3A441FFE4A4
          41FFE4A541FFE4A641FFE5A741FFE5A741FFE5A941FFE6A941FFE6AA41FFE6AB
          41FFE6AC41FFE6AD41FFE6AE41FFE7AE41FFE7AF41FFE7B041FFE8B141FFE9B2
          41FFE9B341FFE8B340FFE2B03FFFDDB457FFDDBE77FFD9BC76FFDBBD77FFE0C2
          78FFDEB03DFFE7B840FFEBBC41FFEBBC41FFECBD41FFECBE41FFECBF41FFECC0
          41FFECC041FFEDC141FFEDC241FFEDC341FFEDC441FFEEC541FFEEC541FFEEC6
          41FFEFC741FFEFC741FFEFC841FFEFC941FFEFCA41FFEFCA41FFEFCB41FFF0CC
          41FFF0CE45FF231B027D0000001D000000030000000000000000000000000000
          0000000000000100000B110B0156E39A2EFFE7A849FFE7A949FFE7A949FFE7AA
          49FFE7AB49FFE7AC49FFE7AD49FFE8AE49FFE8AE49FFE8AF49FFE9B049FFE9B0
          49FFE9B149FFE9B249FFE9B349FFE9B449FFE9B549FFEAB649FFEBB749FFEBB7
          49FFEBB849FFEBB949FFE9B848FFE5B647FFE1B345FFDFB245FFE0B345FFE3B6
          46FFE9BB47FFECBE48FFEDC049FFEEC149FFEEC249FFEEC249FFEEC349FFEEC4
          49FFEEC549FFEEC649FFEFC649FFEFC749FFEFC849FFF0C849FFF0C949FFF0CA
          49FFF0CB49FFF1CB49FFF1CC49FFF1CC49FFF1CD49FFF1CE49FFF1CF49FFF2D2
          53FFE3BD2DF80302004500000012000000010000000000000000000000000000
          0000000000000000000500000021B57715E6E9AE52FFE9AE51FFE9AF51FFEAB0
          51FFEAB051FFEAB151FFEAB251FFEAB351FFEAB451FFEBB451FFEBB551FFEBB6
          51FFECB651FFECB751FFECB851FFECB951FFECBA51FFEDBB51FFEDBB51FFEDBC
          51FFEDBD51FFEEBE51FFEEBE51FFEDBF50FFEDBF50FFEDBF50FFEDC050FFEDC1
          50FFEEC350FFEFC451FFEFC451FFF0C551FFF0C651FFF0C751FFF0C751FFF1C8
          51FFF1C951FFF1C951FFF1CA51FFF1CB51FFF1CC51FFF1CC51FFF2CD51FFF2CD
          51FFF2CE51FFF2CF51FFF3CF51FFF3D051FFF3D151FFF3D151FFF3D251FFF5D9
          69FF7D6508C40000002E00000009000000000000000000000000000000000000
          0000000000000000000101000013482E0299EAAF4FFFECB459FFECB559FFECB5
          59FFECB659FFEDB759FFEDB759FFEDB859FFEDB959FFEDB959FFEDBA59FFEDBB
          59FFEEBB59FFEEBC59FFEEBD59FFEEBE59FFEFBF59FFEFBF59FFEFC059FFEFC1
          59FFEFC259FFF0C259FFEFC258FFECC057FFE9BE56FFE6BC54FFE7BE55FFEBC2
          57FFEFC558FFF0C859FFF1C959FFF1C959FFF2CA59FFF2CB59FFF2CB59FFF2CC
          59FFF2CC59FFF2CD59FFF2CE59FFF2CF59FFF3CF59FFF3D059FFF3D059FFF3D1
          59FFF4D259FFF4D259FFF4D359FFF4D359FFF4D459FFF4D559FFF4D559FFF4D5
          56FF241D027C0000001C00000004000000000000000000000000000000000000
          00000000000000000000010100080704003DE19E2FFBEEB961FFEEBA61FFEFBA
          61FFEFBB61FFEFBC61FFEFBC61FFEFBD61FFEFBE61FFEFBE61FFF0BF61FFF0C0
          61FFF0C061FFF0C161FFF1C261FFF1C361FFF1C361FFF1C461FFF1C561FFF1C5
          61FFF2C661FFF1C660FFECC35EFFE2BB5AFFDBB965FFE0C786FFDDC074FFDDB9
          58FFE9C45DFFF0CA60FFF2CD61FFF3CD61FFF4CE61FFF4CF61FFF4CF61FFF4D0
          61FFF4D161FFF4D161FFF4D161FFF4D261FFF4D361FFF5D361FFF5D461FFF5D4
          61FFF5D561FFF5D661FFF5D661FFF5D761FFF5D761FFF6D861FFF7DE76FFC2A1
          21E7010000390000000F00000001000000000000000000000000000000000000
          0000000000000000000000000002000000166A4608B2F0BC64FFF0BF69FFF0BF
          69FFF1C069FFF1C169FFF1C169FFF1C269FFF1C269FFF1C369FFF1C469FFF1C5
          69FFF2C569FFF2C669FFF2C669FFF2C769FFF2C869FFF2C969FFF3C969FFF3CA
          69FFF3CA69FFF0C867FFE4BF62FFE2CA8FFFFDFCF9FFFFFFFFFFFFFFFFFFF0E5
          C9FFDEBD61FFEDCA66FFF3D068FFF4D169FFF5D269FFF5D269FFF5D369FFF5D3
          69FFF5D469FFF5D569FFF5D569FFF5D669FFF5D669FFF6D769FFF6D769FFF6D8
          69FFF6D869FFF6D969FFF7D969FFF7DA69FFF7DA69FFF7DB69FFF7DE72FF3C30
          0292000000210000000600000000000000000000000000000000000000000000
          0000000000000000000000000000010100090A070143E5A83CFAF2C471FFF3C4
          71FFF3C571FFF3C571FFF3C671FFF3C671FFF3C771FFF3C871FFF3C871FFF3C9
          71FFF4C971FFF4CA71FFF4CB71FFF4CB71FFF4CC71FFF4CD71FFF5CD71FFF5CE
          71FFF5CE71FFEFCA6EFFDCBB67FFFAF8F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFE5D19BFFE9C86BFFF5D370FFF6D571FFF6D571FFF6D671FFF6D671FFF6D7
          71FFF6D771FFF6D871FFF7D871FFF7D971FFF7D971FFF7DA71FFF7DA71FFF8DB
          71FFF8DB71FFF8DC71FFF8DC71FFF8DD71FFF8DD71FFF9E387FFC9A92CE90201
          003B0000000F0000000100000000000000000000000000000000000000000000
          00000000000000000000000000000000000200000014573B06A1F3C46EFFF4C9
          79FFF4C979FFF5CA79FFF5CA79FFF5CB79FFF5CB79FFF5CC79FFF5CC79FFF5CD
          79FFF5CE79FFF6CF79FFF6CF79FFF6CF79FFF6D079FFF6D179FFF6D179FFF6D2
          79FFF6D279FFEECC75FFDEC37CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFEBDFBBFFE8C971FFF5D678FFF7D879FFF7D979FFF7D979FFF8D979FFF8DA
          79FFF8DA79FFF8DB79FFF8DB79FFF8DC79FFF9DC79FFF9DD79FFF9DD79FFF9DE
          79FFF9DE79FFF9DF79FFF9DF79FFF9DF79FFF9E07CFFF9E078FF2E2503820000
          001E000000050000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000010100070202002BC48E2AE7F6CD
          81FFF6CE81FFF6CE81FFF6CF81FFF6CF81FFF6D081FFF6D081FFF6D181FFF6D1
          81FFF7D281FFF7D281FFF7D381FFF7D381FFF7D481FFF7D481FFF7D581FFF7D5
          81FFF7D680FFF0D17DFFDEC277FFFCFBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFE7D7A9FFEBCF79FFF7DA80FFF8DB81FFF8DC81FFF8DC81FFF8DD81FFF9DD
          81FFF9DE81FFF9DE81FFF9DE81FFF9DF81FFF9DF81FFF9E081FFF9E081FFF9E1
          81FFF9E181FFF9E181FFF9E281FFF9E281FFFBE89BFF927917CB0000002D0101
          000C000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000010101000D1A12015FF1BD
          57FDF7D289FFF7D289FFF7D389FFF8D389FFF8D489FFF8D489FFF8D589FFF8D5
          89FFF8D689FFF8D689FFF8D789FFF8D789FFF8D889FFF9D889FFF9D889FFF9D9
          89FFF9D989FFF5D786FFE8CC80FFE7D6AAFFFEFDFCFFFFFFFFFFFFFFFFFFF5F0
          E0FFE1C980FFF1D784FFF9DD88FFFADE89FFFADF89FFFADF89FFFAE089FFFAE0
          89FFFAE089FFFAE189FFFAE189FFFAE289FFFAE289FFFAE289FFFAE389FFFAE3
          89FFFBE389FFFBE489FFFBE489FFFBE89AFFDFC24BF20A08014E000000140000
          0003000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001000003000000144F36
          0597F7CB73FFF8D690FFF8D690FFF9D790FFF9D790FFF9D890FFF9D890FFF9D9
          90FFF9D990FFF9DA90FFF9DA90FFF9DB90FFF9DB90FFFADB90FFFADC90FFFADC
          90FFFADD90FFF9DC8FFFF3D88DFFE8CE86FFE2CD92FFE7D8ADFFE5D4A3FFE3CB
          84FFEFD68AFFF8DE8EFFFAE190FFFBE190FFFBE290FFFBE290FFFBE290FFFBE3
          90FFFBE390FFFBE390FFFBE490FFFBE490FFFBE590FFFBE590FFFBE590FFFBE6
          90FFFBE690FFFBE690FFFBE898FFF8DF76FD271F02780000001C010100060000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010100050000
          001B835D0DBDF9D281FFFADA97FFFADB97FFFADB97FFFADC97FFFADC97FFFADC
          97FFFADD97FFFADD97FFFADE97FFFADE97FFFADE97FFFADF97FFFBDF97FFFBE0
          97FFFBE097FFFAE097FFF9DF96FFF6DD95FFF1D992FFEED790FFF0D891FFF4DC
          93FFF9E096FFFBE397FFFBE397FFFBE497FFFBE497FFFBE497FFFCE597FFFCE5
          97FFFCE697FFFCE697FFFCE697FFFCE797FFFCE797FFFCE797FFFCE797FFFCE8
          97FFFCE897FFFCE99CFFFBE587FF5040069B0000002301010009000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          0007020100269A6F12CDFAD88EFFFBDE9FFFFBDE9FFFFBDF9FFFFBDF9FFFFBDF
          9FFFFBE09FFFFBE09FFFFBE19FFFFBE19FFFFBE19FFFFBE19FFFFCE29FFFFCE2
          9FFFFCE39FFFFCE39FFFFCE39FFFFBE49FFFFBE39EFFFBE39EFFFBE49EFFFBE5
          9EFFFBE59FFFFCE69FFFFCE69FFFFCE69FFFFCE79FFFFCE79FFFFCE79FFFFCE8
          9FFFFCE89FFFFCE89FFFFCE99FFFFCE99FFFFCE99FFFFCE99FFFFCEA9FFFFCEA
          9FFFFCEBA3FFFCE78DFF6A5608AF000000280101000C00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000101010008030200299C7216CDFBDA92FFFCE1A5FFFCE2A5FFFCE2A5FFFCE2
          A5FFFCE3A5FFFCE3A5FFFCE3A5FFFCE4A5FFFCE4A5FFFCE4A5FFFCE5A5FFFCE5
          A5FFFCE5A5FFFCE6A5FFFCE6A5FFFCE6A5FFFCE7A5FFFCE7A5FFFCE7A5FFFCE7
          A5FFFCE8A5FFFCE8A5FFFDE8A5FFFDE9A5FFFDE9A5FFFDE9A5FFFDE9A5FFFDEA
          A5FFFDEAA5FFFDEBA5FFFDEBA5FFFDEBA5FFFDEBA5FFFDECA5FFFDECA5FFFDED
          ABFFFCE689FF6C5808B0000000290000000D0000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010101000802010025876313BDFCDC94FFFDE4ACFFFDE5ACFFFDE5
          ACFFFDE6ACFFFDE6ACFFFDE6ACFFFDE6ACFFFDE7ACFFFDE7ACFFFDE7ACFFFDE8
          ACFFFDE8ACFFFDE8ACFFFDE9ACFFFDE9ACFFFDE9ACFFFDE9ACFFFDEAACFFFDEA
          ACFFFDEAACFFFDEAACFFFDEAACFFFDEBACFFFDEBACFFFDEBACFFFDECACFFFDEC
          ACFFFDECACFFFDECACFFFDEDACFFFDEDACFFFDEDACFFFDEDACFFFDF0B7FFFBE2
          7AFE5746069F000000260101000C000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001010100070100001A523D0B96F9D786FDFDE7B2FFFDE7
          B2FFFDE8B2FFFDE8B2FFFDE8B2FFFDE9B2FFFDE9B2FFFDE9B2FFFDEAB2FFFDEA
          B2FFFDEAB2FFFDEAB2FFFDEAB2FFFDEBB2FFFDEBB2FFFDEBB2FFFDECB2FFFDEC
          B2FFFDECB2FFFDECB2FFFDEDB2FFFDEDB2FFFDEDB2FFFDEDB2FFFDEDB2FFFEEE
          B2FFFEEEB2FFFEEEB2FFFEEEB2FFFEEFB2FFFEEFB3FFFDF1BEFFEBCE55F52E24
          037A000000200101000B00000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000001010005000000121C14035DCDAA56E5FDE9
          B5FFFEEAB8FFFEEAB8FFFEEBB8FFFEEBB8FFFEEBB8FFFEEBB8FFFEECB8FFFEEC
          B8FFFEECB8FFFEECB8FFFEECB8FFFEEDB8FFFEEDB8FFFEEDB8FFFEEDB8FFFEED
          B8FFFEEEB8FFFEEEB8FFFEEEB8FFFEEEB8FFFEEFB8FFFEEFB8FFFEEFB8FFFEEF
          B8FFFEEFB8FFFEF0B8FFFEF0B8FFFEF2C0FFFDEDA7FFA88D23D20D0A014D0000
          0018010100070000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000020101000B020100255644
          1799F5D88CFAFEECBDFFFEECBDFFFEEDBDFFFEEDBDFFFEEDBDFFFEEDBDFFFEED
          BDFFFEEEBDFFFEEEBDFFFEEEBDFFFEEEBDFFFEEFBDFFFEEFBDFFFEEFBDFFFEEF
          BDFFFEEFBDFFFEF0BDFFFEF0BDFFFEF0BDFFFEF0BDFFFEF0BDFFFEF1BDFFFEF1
          BDFFFEF1BDFFFEF2C3FFFEF1BDFFE1C658F0392E0584000000250101000F0101
          0004000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001010100050101
          00110B08013F755F27AFF7DA8AFBFFEEC1FFFFEFC2FFFFEFC2FFFFEFC2FFFFEF
          C2FFFFEFC2FFFFEFC2FFFFF0C2FFFFF0C2FFFFF0C2FFFFF0C2FFFFF0C2FFFFF1
          C2FFFFF1C2FFFFF1C2FFFFF1C2FFFFF1C2FFFFF2C2FFFFF2C2FFFFF2C3FFFFF4
          CAFFFEF0B6FFE9CC5DF35747099D050400370000001501010008000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000101010107010100120705013752411395CDAE57E4FEE59CFFFFF0C5FFFFF1
          C8FFFFF1C7FFFFF1C7FFFFF1C7FFFFF1C7FFFFF2C7FFFFF2C7FFFFF2C7FFFFF2
          C7FFFFF2C7FFFFF2C7FFFFF2C7FFFFF3CAFFFFF4CFFFFFF1BBFFFDE47FFEB499
          33D73D31038604030132000000160101000A0100000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001010100060101000E0000001A140F02504F3D09939C80
          2DC9EFCB5AF5FEDE76FFFFE590FFFFEAA4FFFFEDB0FFFFEEB5FFFFEEB5FFFFED
          AEFFFFEBA2FFFFE68CFFFFE06FFFE4C34DEE8C731AC0413303880B0901450000
          001D010100110101000800000002000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000001010003010100070201010D0000
          00150000001D0C0902411A14015D33280377403103874636028F4435028E3E31
          038531270375161101590907013A00000020000000170101000F010100090101
          0004000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010101000301010005010100080202000A0101000C0101000D0101000D0101
          000D0201000B0101000801010006010000030000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36400000424D3640000000000000360000002800000040000000400000000100
          2000000000000040000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000200000004000000060000000700000008000000080000
          0007000000060000000400000003000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000003000000080000
          000E000000140000001B00000021000000270000002A0000002C0000002D0000
          002B00000028000000230000001D000000160000000F00000009000000040000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000300000009000000120000001E0000002B0000
          003900000046000000520002046000091177000B1A84000D1F89000C1E89000B
          19840008107800010262000000550000004A0000003D0000002F000000210000
          00150000000B0000000400000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000040000000C0000001A0000002B0000004000010358000F22860026
          5BB309449AD71663D4EF2077FAFD227AFFFF2079FFFF1D79FFFF1A78FFFF1777
          FFFF1476FFFF0F71F5FC085CC8ED034190D501244FB3010C19870000015C0000
          0046000000310000001E00000010000000060000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          000C0000001C000000320000014D0011258704367DC62272ECF72F7FFFFF2D7E
          FFFF1F77FFFF116FFFFF0469FFFF0067FFFF0068FFFF0069FFFF006AFFFF006C
          FFFF006DFFFF036FFFFF0773FFFF0A76FFFF0977FFFF0776FFFF0466DAF40233
          6BC4020D19880000005400000039000000210000000F00000005000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000008000000160000
          002F00010250001D419E145FC9E93683FFFF3080FFFF0F6DFFFF0064FFFF0065
          FFFF0066FFFF0067FFFF0068FFFF0069FFFF006BFFFF006CFFFF006DFFFF006E
          FFFF006FFFFF0070FFFF0071FFFF0072FFFF0074FFFF0075FFFF0277FFFF0279
          FFFF0079FFFF0356AFE502182E9D00000058000000370000001C0000000B0000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000030000000D00000022000000420017
          318F1762CEEA3D88FFFF267BFFFF0164FFFF0065FFFF0066FFFF0067FFFF0068
          FFFF0069FFFF006AFFFF006BFFFF006CFFFF006DFFFF006EFFFF006FFFFF0070
          FFFF0071FFFF0073FFFF0074FFFF0075FFFF0076FFFF0077FFFF0078FFFF0079
          FFFF007BFFFF007CFFFF007DFFFF035AB2E603111F8F0000004C0000002A0000
          0011000000050000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000004000000120000002D00050A5F074595CF3D88
          FFFF297DFFFF0064FFFF0065FFFF0066FFFF0067FFFF0068FFFF0069FFFF006A
          FFFF006BFFFF006CFFFF006DFFFF006EFFFF006FFFFF0070FFFF0071FFFF0073
          FFFF0074FFFF0075FFFF0076FFFF0077FFFF0078FFFF007AFFFF007BFFFF007C
          FFFF007DFFFF007EFFFF007FFFFF0081FFFF0080FBFE053F74CB010304660000
          0037000000180000000700000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000005000000160000003600122582216FDCF03F8AFFFF0669
          FFFF0065FFFF0066FFFF0067FFFF0068FFFF0069FFFF006AFFFF006BFFFF006C
          FFFF006DFFFF006EFFFF006FFFFF0071FFFF0072FFFF0073FFFF0074FFFF0075
          FFFF0076FFFF0077FFFF0078FFFF007AFFFF007BFFFF007CFFFF007DFFFF007E
          FFFF0080FFFF0080FFFF0082FFFF0083FFFF0084FFFF0085FFFF0468C1EB030D
          1584000000410000001D00000008000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000006000000180000003B01264EA23A89FBFD287EFFFF0066FFFF0067
          FFFF0068FFFF0069FFFF006AFFFF006BFFFF006CFFFF006DFFFF006EFFFF006F
          FFFF0070FFFF0071FFFF0072FFFF0073FFFF0074FFFF0076FFFF0077FFFF0078
          FFFF0079FFFF007AFFFF007BFFFF007CFFFF007DFFFF007FFFFF0080FFFF0081
          FFFF0082FFFF0083FFFF0085FFFF0086FFFF0087FFFF0088FFFF0089FFFF0282
          EDFA051D30A00000004700000020000000090000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0005000000180000003D033265B24691FFFF1273FFFF0068FFFF0069FFFF006A
          FFFF006BFFFF006CFFFF006DFFFF006DFFFF006FFFFF0070FFFF0070FFFF0072
          FFFF0073FFFF0074FFFF0075FFFF0076FFFF0077FFFF0078FFFF0079FFFF007A
          FFFF007CFFFF007CFFFF007EFFFF007FFFFF0080FFFF0081FFFF0082FFFF0084
          FFFF0085FFFF0086FFFF0087FFFF0088FFFF0089FFFF008BFFFF008CFFFF008D
          FFFF008BF7FD072842AD00000049000000200000000800000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          00150000003A03376FB74793FFFF0B70FFFF006AFFFF006BFFFF006CFFFF006D
          FFFF006EFFFF006FFFFF0070FFFF0070FFFF0072FFFF0072FFFF0074FFFF0075
          FFFF0076FFFF0077FFFF0078FFFF0079FEFF007AFEFF007AFDFF007CFDFF007D
          FEFF007EFEFF007FFFFF0080FFFF0082FFFF0083FFFF0084FFFF0085FFFF0086
          FFFF0088FFFF0089FFFF008AFFFF008BFFFF008CFFFF008DFFFF008FFFFF0090
          FFFF0091FFFF0091FCFE082D48B1000000470000001D00000007000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000002000000100000
          0032012D58A74694FFFF0B71FFFF006CFFFF006DFFFF006DFFFF006EFFFF006F
          FFFF0070FFFF0071FFFF0072FFFF0073FFFF0074FFFF0075FFFF0076FFFF0077
          FFFF0078FFFF0079FEFF007AFDFF0079F9FF0077F3FF0076F0FF0078F1FF007B
          F6FF007FFBFF0081FEFF0083FFFF0084FFFF0085FFFF0087FFFF0088FFFF0089
          FFFF008AFFFF008BFFFF008CFFFF008EFFFF008FFFFF0090FFFF0091FFFF0092
          FFFF0094FFFF0095FFFF0094F9FD072437A40000004000000017000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000A000000280019
          30873E91FDFE1177FFFF006DFFFF006EFFFF006FFFFF0070FFFF0071FFFF0072
          FFFF0073FFFF0074FFFF0075FFFF0076FFFF0077FFFF0078FFFF0079FFFF007A
          FFFF007BFFFF007CFDFF007AF7FF0074EAFF3990E6FF79B3ECFF64A8EAFF0E7C
          E5FF007DF1FF0082FBFF0086FEFF0087FFFF0088FFFF0089FFFF008AFFFF008B
          FFFF008DFFFF008EFFFF008FFFFF0090FFFF0091FFFF0092FFFF0094FFFF0095
          FFFF0096FFFF0098FFFF0099FFFF0292EFFB05131B8900000035000000100000
          0002000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000050000001C00080F5E2984
          EBF62081FFFF0070FFFF0070FFFF0071FFFF0072FFFF0073FFFF0074FFFF0075
          FFFF0076FFFF0077FFFF0078FFFF0079FFFF007AFFFF007BFFFF007CFFFF007D
          FFFF007EFEFF007DFBFF0077ECFF73B0EBFFFFFFFFFFFFFFFFFFFFFFFFFFE0ED
          FAFF1684E5FF0082F5FF0088FDFF0089FFFF008BFFFF008CFFFF008DFFFF008E
          FFFF008FFFFF0090FFFF0092FFFF0093FFFF0094FFFF0095FFFF0096FFFF0098
          FFFF0099FFFF009AFFFF009BFFFF009CFFFF0681CDEF02050666000000270000
          0009000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000010000001390D5BAAD63891
          FFFF0072FFFF0072FFFF0073FFFF0074FFFF0075FFFF0076FFFF0077FFFF0078
          FFFF0079FFFF007AFFFF007BFFFF007CFFFF007DFFFF007EFFFF007FFFFF0080
          FFFF0080FEFF007EF7FF0E7CE4FFF7FAFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF87BEEDFF0081EEFF008AFCFF008DFFFF008EFFFF008FFFFF0090FFFF0091
          FFFF0092FFFF0093FFFF0094FFFF0096FFFF0097FFFF0098FFFF0099FFFF009A
          FFFF009CFFFF009DFFFF009EFFFF009FFFFF00A0FFFF0B547FCE000000480000
          0019000000040000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000700000024002341934398FFFF0376
          FFFF0074FFFF0075FFFF0076FFFF0077FFFF0078FFFF0079FFFF007AFFFF007B
          FFFF007CFFFF007DFFFF007DFFFF007FFFFF007FFFFF0080FFFF0081FFFF0083
          FFFF0083FEFF0080F5FF2F8EE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFAFD4F2FF0082EAFF008CFBFF008FFFFF0090FFFF0091FFFF0092FFFF0094
          FFFF0095FFFF0096FFFF0097FFFF0098FFFF0099FFFF009BFFFF009CFFFF009D
          FFFF009EFFFF009FFFFF00A0FFFF00A2FFFF00A3FFFF00A2FCFE081B26920000
          00310000000D0000000000000000000000000000000000000000000000000000
          000000000000000000000000000200000013000306482383E2F11C85FFFF0076
          FFFF0077FFFF0078FFFF0079FFFF007AFFFF007BFFFF007CFFFF007DFFFF007D
          FFFF007FFFFF007FFFFF0081FFFF0081FFFF0082FFFF0083FFFF0084FFFF0085
          FFFF0086FEFF0083F6FF1B87E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF9CCBF0FF0086ECFF008FFCFF0092FFFF0093FFFF0094FFFF0095FFFF0096
          FFFF0097FFFF0099FFFF009AFFFF009BFFFF009CFFFF009DFFFF009FFFFF00A0
          FFFF00A1FFFF00A2FFFF00A3FFFF00A4FFFF00A5FFFF00A6FFFF097FBDE90101
          01540000001C0000000400000000000000000000000000000000000000000000
          000000000000000000000000000700000025013158A43D99FFFF0079FFFF007A
          FFFF007BFFFF007BFFFF007CFFFF007DFFFF007EFFFF007FFFFF0080FFFF0081
          FFFF0082FFFF0083FFFF0084FFFF0085FFFF0085FFFF0086FFFF0087FFFF0088
          FFFF0089FEFF0088FAFF0080E9FFAAD2F2FFFFFFFFFFFFFFFFFFFFFFFFFFF9FB
          FDFF349AE6FF008CF3FF0093FDFF0095FFFF0096FFFF0097FFFF0098FFFF0099
          FFFF009AFFFF009BFFFF009DFFFF009EFFFF009FFFFF00A0FFFF00A1FFFF00A2
          FFFF00A4FFFF00A5FFFF00A6FFFF00A7FFFF00A8FFFF00A9FFFF00AAFFFF092A
          39A1000000320000000C00000000000000000000000000000000000000000000
          000000000000000000010000001000030442248AE6F21687FFFF007CFFFF007D
          FFFF007EFFFF007FFFFF007FFFFF0080FFFF0081FFFF0082FFFF0083FFFF0084
          FFFF0085FFFF0086FFFF0086FFFF0088FFFF0089FFFF0089FFFF008BFFFF008B
          FFFF008CFFFF008DFDFF0089F5FF0785E6FF7CBCECFFBCDCF4FFABD4F2FF3C9F
          E6FF008BEDFF0093FAFF0096FEFF0098FFFF0099FFFF009AFFFF009BFFFF009C
          FFFF009DFFFF009EFFFF00A0FFFF00A1FFFF00A2FFFF00A3FFFF00A4FFFF00A5
          FFFF00A6FFFF00A7FFFF00A8FFFF00A9FFFF00AAFFFF00ABFFFF00ACFFFF0B84
          BEE9010101500000001900000003000000000000000000000000000000000000
          000000000000000000040000001D00243E8E399BFFFF007EFFFF007FFFFF0080
          FFFF0081FFFF0081FFFF0082FFFF0083FFFF0084FFFF0085FFFF0086FFFF0087
          FFFF0088FFFF0089FFFF0089FFFF008BFFFF008BFFFF008CFFFF008EFFFF008E
          FFFF008FFFFF0090FEFF0090FCFF008EF6FF008AEFFF0088EAFF008AEBFF008F
          F2FF0094F9FF0098FEFF009AFFFF009AFFFF009CFFFF009DFFFF009EFFFF009F
          FFFF00A0FFFF00A1FFFF00A2FFFF00A3FFFF00A4FFFF00A6FFFF00A6FFFF00A7
          FFFF00A9FFFF00AAFFFF00AAFFFF00ABFFFF00ADFFFF00AEFFFF00AFFFFF00B0
          FEFF091C258D0000002A00000008000000000000000000000000000000000000
          000000000000000000090000002D0F69B0D72392FFFF0081FFFF0082FFFF0083
          FFFF0084FFFF0085FFFF0085FFFF0086FFFF0087FFFF0088FFFF0089FFFF008A
          FFFF008BFFFF008CFFFF008DFFFF008EFFFF008EFFFF0090FFFF0090FFFF0091
          FFFF0092FFFF0093FFFF0094FEFF0094FDFF0094FBFF0095FAFF0096FAFF0098
          FCFF009AFEFF009BFFFF009CFFFF009EFFFF009EFFFF009FFFFF00A0FFFF00A2
          FFFF00A3FFFF00A4FFFF00A5FFFF00A6FFFF00A7FFFF00A8FFFF00A9FFFF00AA
          FFFF00ABFFFF00ACFFFF00ADFFFF00AEFFFF00AFFFFF00B0FFFF00B1FFFF02B3
          FFFF0E6286CF0000003D00000010000000000000000000000000000000000000
          0000000000010000001100080D522F9DFDFE0486FFFF0085FFFF0085FFFF0086
          FFFF0087FFFF0088FFFF0088FFFF008AFFFF008AFFFF008BFFFF008CFFFF008D
          FFFF008EFFFF008FFFFF0090FFFF0091FFFF0091FFFF0092FFFF0094FFFF0094
          FFFF0095FFFF0096FFFF0096FDFF0096FAFF0094F5FF0093F2FF0094F3FF0098
          F7FF009CFCFF009EFEFF009FFFFF00A0FFFF00A1FFFF00A2FFFF00A3FFFF00A5
          FFFF00A6FFFF00A7FFFF00A8FFFF00A9FFFF00AAFFFF00ABFFFF00ACFFFF00AD
          FFFF00AEFFFF00AFFFFF00B0FFFF00B1FFFF00B2FFFF00B3FFFF00B4FFFF01B5
          FFFF09A7E7F70404055B0000001B000000020000000000000000000000000000
          0000000000020000001A00284290309DFFFF0087FFFF0088FFFF0088FFFF0089
          FFFF008AFFFF008BFFFF008CFFFF008CFFFF008DFFFF008EFFFF008FFFFF0090
          FFFF0091FFFF0092FFFF0093FFFF0094FFFF0095FFFF0096FFFF0096FFFF0097
          FFFF0098FFFF0099FEFF0098FBFF0092F0FF4FB0EDFF4FADE7FF4FAFE9FF27A3
          EEFF009BF6FF00A0FEFF00A2FFFF00A3FFFF00A4FFFF00A5FFFF00A6FFFF00A7
          FFFF00A9FFFF00AAFFFF00AAFFFF00ABFFFF00ACFFFF00ADFFFF00AEFFFF00AF
          FFFF00B0FFFF00B1FFFF00B2FFFF00B3FFFF00B4FFFF00B5FFFF00B6FFFF00B7
          FFFF07BAFFFF0A20298E00000027000000060000000000000000000000000000
          0000000000050000002406558BC3259BFFFF008AFFFF008BFFFF008CFFFF008D
          FFFF008DFFFF008EFFFF008FFFFF0090FFFF0091FFFF0092FFFF0092FFFF0093
          FFFF0094FFFF0095FFFF0096FFFF0097FFFF0098FFFF0099FFFF009AFFFF009B
          FFFF009CFFFF009CFEFF0099F8FF008EE5FFFFFFFFFFFFFFFFFFFFFFFFFF7FC6
          EFFF009AF0FF00A3FCFF00A5FFFF00A6FFFF00A7FFFF00A8FFFF00A9FFFF00AA
          FFFF00ABFFFF00ACFFFF00ADFFFF00AEFFFF00AFFFFF00B0FFFF00B1FFFF00B2
          FFFF00B3FFFF00B4FFFF00B5FFFF00B6FFFF00B7FFFF00B8FFFF00B9FFFF00B9
          FFFF09BDFFFF0E4F67BC000000320000000B0000000000000000000000000000
          0000000000090000002E198EDEEC0F93FFFF008DFFFF008EFFFF008FFFFF008F
          FFFF0090FFFF0091FFFF0092FFFF0093FFFF0094FFFF0094FFFF0095FFFF0096
          FFFF0097FFFF0098FFFF0099FFFF009AFFFF009BFFFF009CFFFF009CFFFF009D
          FFFF009EFFFF009FFEFF009AF6FF0B92E0FFFFFFFFFFFFFFFFFFFFFFFFFF8ACA
          ECFF009AECFF00A5FCFF00A8FFFF00A9FFFF00AAFFFF00ABFFFF00ACFFFF00AD
          FFFF00AEFFFF00AFFFFF00B0FFFF00B1FFFF00B2FFFF00B2FFFF00B3FFFF00B4
          FFFF00B5FFFF00B6FFFF00B7FFFF00B8FFFF00B9FFFF00BAFFFF00BBFFFF00BC
          FFFF09BFFFFF1386ADE10000003E000000100000000000000000000000000000
          00000000000C0006094426A4FDFE0190FFFF0091FFFF0091FFFF0092FFFF0093
          FFFF0094FFFF0094FFFF0095FFFF0096FFFF0097FFFF0098FFFF0098FFFF0099
          FFFF009AFFFF009BFFFF009CFFFF009DFFFF009EFFFF009FFFFF00A0FFFF00A0
          FFFF00A1FFFF00A2FEFF009DF5FF1095DEFFFFFFFFFFFFFFFFFFFFFFFFFF8FCC
          ECFF009BEAFF00A7FBFF00ABFFFF00ACFFFF00ADFFFF00AEFFFF00AFFFFF00B0
          FFFF00B1FFFF00B2FFFF00B2FFFF00B3FFFF00B4FFFF00B5FFFF00B6FFFF00B7
          FFFF00B8FFFF00B9FFFF00BAFFFF00BBFFFF00BBFFFF00BCFFFF00BDFFFF00BE
          FFFF06C1FFFF11ADE1F403030350000000150000000100000000000000000000
          0000000001100010186326A4FFFF0093FFFF0094FFFF0094FFFF0095FFFF0096
          FFFF0097FFFF0098FFFF0099FFFF0099FFFF009AFFFF009BFFFF009CFFFF009D
          FFFF009DFFFF009EFFFF009FFFFF00A0FFFF00A1FFFF00A2FFFF00A3FFFF00A4
          FFFF00A5FFFF00A5FEFF009FF4FF179ADFFFFFFFFFFFFFFFFFFFFFFFFFFF97D1
          EDFF009DE9FF00AAFBFF00AEFFFF00AFFFFF00B0FFFF00B1FFFF00B2FFFF00B2
          FFFF00B3FFFF00B4FFFF00B5FFFF00B6FFFF00B7FFFF00B8FFFF00B9FFFF00B9
          FFFF00BAFFFF00BBFFFF00BCFFFF00BDFFFF00BEFFFF00BFFFFF00BFFFFF00C0
          FFFF02C2FFFF10C3FBFD07090A640000001A0000000200000000000000000000
          0001000000130021317B26A5FFFF0296FFFF0096FFFF0097FFFF0098FFFF0099
          FFFF009AFFFF009AFFFF009BFFFF009CFFFF009DFFFF009EFFFF009EFFFF009F
          FFFF00A0FFFF00A1FFFF00A2FFFF00A3FFFF00A4FFFF00A4FFFF00A5FFFF00A6
          FFFF00A7FFFF00A8FEFF00A2F4FF1FA0E0FFFFFFFFFFFFFFFFFFFFFFFFFF9FD5
          EEFF009FE9FF00ADFBFF00B0FFFF00B1FFFF00B2FFFF00B3FFFF00B4FFFF00B5
          FFFF00B6FFFF00B6FFFF00B7FFFF00B8FFFF00B9FFFF00BAFFFF00BBFFFF00BC
          FFFF00BDFFFF00BDFFFF00BEFFFF00BFFFFF00C0FFFF00C1FFFF00C2FFFF00C2
          FFFF00C3FFFF14C8FFFF0A181C790000001E0000000300000000000000000000
          000100000015002A3F8A27A8FFFF089CFFFF059CFFFF009BFFFF009BFFFF009C
          FFFF009DFFFF009EFFFF009FFFFF009FFFFF00A0FFFF00A1FFFF00A2FFFF00A3
          FFFF00A3FFFF00A4FFFF00A5FFFF00A6FFFF00A7FFFF00A7FFFF00A8FFFF00A9
          FFFF00AAFFFF00AAFEFF00A4F3FF25A4E0FFFFFFFFFFFFFFFFFFFFFFFFFFA5D8
          EFFF00A2E8FF00B0FAFF00B3FFFF00B4FFFF00B5FFFF00B6FFFF00B7FFFF00B7
          FFFF00B8FFFF00B9FFFF01BBFFFF03BCFFFF04BDFFFF05BEFFFF05BFFFFF06C0
          FFFF06C0FFFF05C1FFFF04C2FFFF03C2FFFF02C3FFFF00C3FFFF00C4FFFF00C5
          FFFF00C5FFFF17CBFFFF0C212787000000200000000300000000000000000000
          000100000016002D449028ABFFFF0DA1FFFF0DA2FFFF0BA2FFFF03A0FFFF009F
          FFFF00A0FFFF00A1FFFF00A2FFFF00A3FFFF00A3FFFF00A4FFFF00A5FFFF00A6
          FFFF00A6FFFF00A7FFFF00A8FFFF00A9FFFF00AAFFFF00ABFFFF00ABFFFF00AC
          FFFF00ADFFFF00ADFEFF00A7F3FF2FAAE1FFFFFFFFFFFFFFFFFFFFFFFFFFAFDD
          F0FF00A4E7FF00B2FAFF00B6FFFF00B7FFFF00B8FFFF00B8FFFF01BAFFFF05BB
          FFFF09BDFFFF0CBFFFFF0DC0FFFF0DC1FFFF0DC2FFFF0DC2FFFF0DC3FFFF0DC4
          FFFF0DC5FFFF0DC5FFFF0DC6FFFF0DC7FFFF0DC8FFFF0CC8FFFF0AC8FFFF06C8
          FFFF01C8FFFF1ACEFFFF0C262D8E000000210000000300000000000000000000
          000100000015002F459129AEFFFF12A6FFFF12A7FFFF12A7FFFF12A8FFFF0CA6
          FFFF03A4FFFF00A3FFFF00A4FFFF00A5FFFF00A6FFFF00A7FFFF00A7FFFF00A8
          FFFF00A9FFFF00AAFFFF00ABFFFF00ABFFFF00ACFFFF00ADFFFF00AEFFFF00AF
          FFFF00AFFFFF00AFFEFF00A9F2FF33ADE1FFFFFFFFFFFFFFFFFFFFFFFFFFB3DF
          F1FF00A5E6FF00B4FAFF00B8FFFF02BAFFFF08BCFFFF0EBEFFFF12C0FFFF12C1
          FFFF12C2FFFF12C3FFFF12C3FFFF12C4FFFF12C5FFFF12C5FFFF12C6FFFF12C7
          FFFF12C8FFFF12C8FFFF12C9FFFF12CAFFFF12CAFFFF12CBFFFF12CCFFFF12CC
          FFFF12CDFFFF25D2FFFF0C272E8E000000200000000300000000000000000000
          000100000013002C408A29B1FFFF18ABFFFF18ACFFFF18ACFFFF18ADFFFF18AE
          FFFF17AEFFFF11ADFFFF07AAFFFF00A8FFFF00A9FFFF00AAFFFF00ABFFFF00AB
          FFFF00ACFFFF00ADFFFF00AEFFFF00AEFFFF00AFFFFF00B0FFFF00B1FFFF00B2
          FFFF00B2FFFF00B2FEFF00ABF2FF3FB4E3FFFFFFFFFFFFFFFFFFFFFFFFFFBFE5
          F3FF03A8E5FF0CBAFAFF13C0FFFF18C2FFFF18C3FFFF18C3FFFF18C4FFFF18C5
          FFFF18C6FFFF18C6FFFF18C7FFFF18C8FFFF18C8FFFF18C9FFFF18CAFFFF18CA
          FFFF18CBFFFF18CCFFFF18CCFFFF18CDFFFF18CEFFFF18CEFFFF18CFFFFF18D0
          FFFF18D0FFFF2AD5FFFF0C2429870000001E0000000300000000000000000000
          0000000101110025357C28B3FFFF1DB0FFFF1DB0FFFF1DB1FFFF1DB2FFFF1DB2
          FFFF1DB3FFFF1DB4FFFF1DB4FFFF1BB4FFFF12B2FFFF09B0FFFF01AEFFFF00AE
          FFFF00AFFFFF00B0FFFF00B1FFFF00B1FFFF00B2FFFF00B3FFFF00B4FFFF00B5
          FFFF00B5FFFF00B5FEFF00ADF1FF40B5E3FFFFFFFFFFFFFFFFFFFFFFFFFFC5E7
          F3FF1AB0E5FF1DC0F9FF1DC5FFFF1DC6FFFF1DC6FFFF1DC7FFFF1DC8FFFF1DC9
          FFFF1DC9FFFF1DCAFFFF1DCBFFFF1DCBFFFF1DCCFFFF1DCCFFFF1DCDFFFF1DCD
          FFFF1DCEFFFF1DCFFFFF1DD0FFFF1DD0FFFF1DD1FFFF1DD1FFFF1DD2FFFF1DD3
          FFFF1DD3FFFF2CD7FFFF0C1C20780000001B0000000200000000000000000000
          00000000010D00141C6327B5FFFF24B5FFFF24B5FFFF24B6FFFF24B7FFFF24B7
          FFFF24B8FFFF24B8FFFF24B9FFFF24BAFFFF24BAFFFF24BBFFFF24BCFFFF1EBA
          FFFF17B9FFFF11B7FFFF0BB6FFFF07B6FFFF03B5FFFF00B6FFFF00B7FFFF03B8
          FFFF06BAFFFF0DBBFDFF12B4F0FF5FC1E5FFFFFFFFFFFFFFFFFFFFFFFFFFD4ED
          F6FF20B3E4FF23C4F9FF24C9FFFF24C9FFFF24CAFFFF24CBFFFF24CBFFFF24CC
          FFFF24CDFFFF24CDFFFF24CEFFFF24CFFFFF24CFFFFF24D0FFFF24D0FFFF24D1
          FFFF24D2FFFF24D2FFFF24D3FFFF24D3FFFF24D4FFFF24D5FFFF24D5FFFF24D6
          FFFF27D6FFFF29D6FDFE090D0F62000000160000000100000000000000000000
          00000001010900090C4422B8FFFF2BBAFFFF2BBAFFFF2BBBFFFF2BBBFFFF2BBB
          FFFF2BBCFFFF2BBDFFFF2BBDFFFF2BBEFFFF2BBFFFFF2BBFFFFF2BC0FFFF2BC0
          FFFF2BC1FFFF2BC2FFFF2BC2FFFF2BC3FFFF2BC4FFFF2BC4FFFF2BC5FFFF2BC5
          FFFF2BC6FFFF2BC6FDFF28BCF0FF69C4E4FFFFFFFFFFFFFFFFFFFFFFFFFFD5EE
          F5FF26B5E3FF2AC7F8FF2BCDFFFF2BCDFFFF2BCEFFFF2BCEFFFF2BCFFFFF2BCF
          FFFF2BD0FFFF2BD1FFFF2BD1FFFF2BD2FFFF2BD2FFFF2BD3FFFF2BD4FFFF2BD4
          FFFF2BD5FFFF2BD5FFFF2BD6FFFF2BD6FFFF2BD7FFFF2BD8FFFF2BD8FFFF2BD9
          FFFF37DBFFFF23C9ECF70505054C000000110000000000000000000000000000
          0000000000060000002716ACECF334BFFFFF32BFFFFF32BFFFFF32C0FFFF32C0
          FFFF32C1FFFF32C1FFFF32C2FFFF32C3FFFF32C3FFFF32C4FFFF32C4FFFF32C5
          FFFF32C5FFFF32C6FFFF32C7FFFF32C7FFFF32C8FFFF32C8FFFF32C9FFFF32CA
          FFFF32CAFFFF32CAFDFF2FBFEFFF79CBE6FFFFFFFFFFFFFFFFFFFFFFFFFFE3F3
          F8FF2CB8E2FF31CAF8FF32D0FFFF32D1FFFF32D1FFFF32D2FFFF32D2FFFF32D3
          FFFF32D4FFFF32D4FFFF32D5FFFF32D5FFFF32D6FFFF32D6FFFF32D7FFFF32D7
          FFFF32D8FFFF32D8FFFF32D9FFFF32D9FFFF32DAFFFF32DAFFFF32DBFFFF32DB
          FFFF47E0FFFF1FA4BFE5000000360000000C0000000000000000000000000000
          0000000000030000001C06719BC83FC4FFFF39C3FFFF39C4FFFF39C4FFFF39C5
          FFFF39C5FFFF39C6FFFF39C6FFFF39C6FFFF39C7FFFF39C8FFFF39C8FFFF39C9
          FFFF39C9FFFF39CAFFFF39CAFFFF39CBFFFF39CBFFFF39CCFFFF39CDFFFF39CD
          FFFF39CEFFFF39CDFDFF36C2EEFF7DCDE5FFFFFFFFFFFFFFFFFFFFFFFFFFE4F4
          F8FF33BAE1FF38CDF8FF39D4FFFF39D4FFFF39D4FFFF39D5FFFF39D6FFFF39D6
          FFFF39D7FFFF39D7FFFF39D7FFFF39D8FFFF39D8FFFF39D9FFFF39DAFFFF39DA
          FFFF39DBFFFF39DBFFFF39DBFFFF39DCFFFF39DCFFFF39DDFFFF39DDFFFF39DE
          FFFF4FE2FFFF146979BF00000029000000070000000000000000000000000000
          00000000000100000113003A4F943EC6FFFF41C7FFFF41C8FFFF41C8FFFF41C9
          FFFF41CAFFFF41CAFFFF41CAFFFF41CBFFFF41CBFFFF41CCFFFF41CCFFFF41CD
          FFFF41CDFFFF41CEFFFF41CEFFFF41CFFFFF41CFFFFF41D0FFFF41D0FFFF41D1
          FFFF41D2FFFF40D1FDFF3CC5EEFF8CD3E8FFFFFFFFFFFFFFFFFFFFFFFFFFEFF8
          FBFF39BCE0FF3FD0F7FF41D7FEFF41D7FFFF41D8FFFF41D8FFFF41D9FFFF41D9
          FFFF41DAFFFF41DAFFFF41DBFFFF41DBFFFF41DCFFFF41DCFFFF41DDFFFF41DD
          FFFF41DDFFFF41DEFFFF41DEFFFF41DFFFFF41DFFFFF41E0FFFF41E0FFFF41E0
          FFFF45E2FFFF0F32388E0000001D000000030000000000000000000000000000
          0000000000000001010B000F14522EC5FFFF49CCFFFF49CCFFFF49CDFFFF49CD
          FFFF49CEFFFF49CEFFFF49CFFFFF49CFFFFF49D0FFFF49D0FFFF49D0FFFF49D1
          FFFF49D1FFFF49D2FFFF49D3FFFF49D3FFFF49D3FFFF49D4FFFF49D5FFFF49D5
          FFFF49D6FFFF48D4FCFF43C8EDFF92D5E8FFFFFFFFFFFFFFFFFFFFFFFFFFF2FA
          FBFF40BEDFFF46D3F7FF49DAFEFF49DBFFFF49DBFFFF49DBFFFF49DCFFFF49DD
          FFFF49DDFFFF49DDFFFF49DEFFFF49DEFFFF49DFFFFF49DFFFFF49DFFFFF49E0
          FFFF49E0FFFF49E1FFFF49E1FFFF49E2FFFF49E2FFFF49E2FFFF49E2FFFF53E5
          FFFF2FD8F4FA080A0B5400000012000000010000000000000000000000000000
          0000000000000000010500000021139CCBE252D0FFFF51D0FFFF51D1FFFF51D1
          FFFF51D1FFFF51D2FFFF51D2FFFF51D3FFFF51D3FFFF51D4FFFF51D4FFFF51D4
          FFFF51D5FFFF51D5FFFF51D6FFFF51D6FFFF51D7FFFF51D7FFFF51D8FFFF51D8
          FFFF51D9FFFF50D7FCFF4BCAECFF9DD9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFAFD
          FDFF46C1DFFF4ED5F6FF51DDFEFF51DDFFFF51DEFFFF51DFFFFF51DFFFFF51DF
          FFFF51DFFFFF51E0FFFF51E1FFFF51E1FFFF51E1FFFF51E2FFFF51E2FFFF51E2
          FFFF51E3FFFF51E3FFFF51E4FFFF51E4FFFF51E4FFFF51E5FFFF51E5FFFF69E9
          FFFF1C90A4D50000002E00000009000000000000000000000000000000000000
          0000000000000000000100000113003E51944FD1FFFF59D4FFFF59D5FFFF59D5
          FFFF59D5FFFF59D6FFFF59D6FFFF59D6FFFF59D7FFFF59D7FFFF59D8FFFF59D8
          FFFF59D8FFFF59D9FFFF59DAFFFF59DAFFFF59DAFFFF59DBFFFF59DBFFFF59DC
          FFFF59DCFFFF58DAFCFF52CDECFFA4DCEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4DC3DEFF56D8F6FF59E0FEFF59E1FFFF59E1FFFF59E1FFFF59E2FFFF59E2
          FFFF59E2FFFF59E3FFFF59E3FFFF59E3FFFF59E4FFFF59E4FFFF59E4FFFF59E5
          FFFF59E5FFFF59E5FFFF59E6FFFF59E6FFFF59E6FFFF59E7FFFF59E7FFFF56E7
          FFFF10343A8D0000001C00000004000000000000000000000000000000000000
          00000000000000000000000101080006073A2EC6F6F961D8FFFF61D8FFFF61D8
          FFFF61D9FFFF61D9FFFF61DAFFFF61DAFFFF61DAFFFF61DBFFFF61DBFFFF61DB
          FFFF61DCFFFF61DCFFFF61DDFFFF61DDFFFF61DDFFFF61DEFFFF61DEFFFF61DF
          FFFF61DFFFFF60DDFCFF59CFEBFFADDFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF59C6DEFF5DDAF5FF61E2FEFF61E3FFFF61E4FFFF61E4FFFF61E4FFFF61E4
          FFFF61E5FFFF61E5FFFF61E5FFFF61E6FFFF61E6FFFF61E7FFFF61E7FFFF61E7
          FFFF61E7FFFF61E8FFFF61E8FFFF61E9FFFF61E9FFFF61E9FFFF76ECFFFF2CC5
          DCEF040404420001010F00000001000000000000000000000000000000000000
          000000000000000000000000000200000016055A73AD64DAFFFF69DBFFFF69DC
          FFFF69DCFFFF69DCFFFF69DDFFFF69DDFFFF69DDFFFF69DEFFFF69DEFFFF69DE
          FFFF69DFFFFF69DFFFFF69E0FFFF69E0FFFF69E0FFFF69E1FFFF69E1FFFF69E1
          FFFF69E2FFFF67E0FCFF60D0EAFFB5E2ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF65C9DFFF64DCF5FF69E5FEFF69E6FFFF69E6FFFF69E6FFFF69E7FFFF69E7
          FFFF69E7FFFF69E7FFFF69E8FFFF69E8FFFF69E8FFFF69E9FFFF69E9FFFF69E9
          FFFF69EAFFFF69EAFFFF69EAFFFF69EAFFFF69EBFFFF69EBFFFF72ECFFFF134E
          57A4000000210000000600000000000000000000000000000000000000000000
          00000000000000000000000000000001010900090B403CCCF6F971DFFFFF71DF
          FFFF71DFFFFF71E0FFFF71E0FFFF71E0FFFF71E1FFFF71E1FFFF71E1FFFF71E2
          FFFF71E2FFFF71E2FFFF71E3FFFF71E3FFFF71E3FFFF71E4FFFF71E4FFFF71E4
          FFFF71E5FFFF6FE2FBFF67D2E9FFBCE4ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF6ECCDFFF6CDEF4FF70E7FEFF71E8FFFF71E8FFFF71E9FFFF71E9FFFF71E9
          FFFF71E9FFFF71EAFFFF71EAFFFF71EAFFFF71EAFFFF71EBFFFF71EBFFFF71EB
          FFFF71EBFFFF71ECFFFF71ECFFFF71ECFFFF71EDFFFF87EFFFFF37CADFF00506
          06450000010F0000000100000000000000000000000000000000000000000000
          00000000000000000000000000000000000200000014044A5D9D6EDFFFFF79E2
          FFFF79E2FFFF79E2FFFF79E3FFFF79E3FFFF79E3FFFF79E4FFFF79E4FFFF79E4
          FFFF79E5FFFF79E5FFFF79E6FFFF79E6FFFF79E6FFFF79E6FFFF79E7FFFF79E7
          FFFF79E7FFFF77E4FBFF6ED4E9FFC4E7EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF7BD0E0FF73E0F4FF78EAFEFF79EAFFFF79EAFFFF79EBFFFF79EBFFFF79EB
          FFFF79EBFFFF79ECFFFF79ECFFFF79ECFFFF79ECFFFF79EDFFFF79EDFFFF79ED
          FFFF79EEFFFF79EEFFFF79EEFFFF79EEFFFF7CEFFFFF78EEFFFF123F45940000
          001E000101050000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000101070002032927ADCFE481E5
          FFFF81E5FFFF81E5FFFF81E6FFFF81E6FFFF81E6FFFF81E6FFFF81E7FFFF81E7
          FFFF81E7FFFF81E8FFFF81E8FFFF81E8FFFF81E8FFFF81E9FFFF81E9FFFF81E9
          FFFF81E9FFFF7FE6FBFF76D7EBFFC9EAF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF84D5E3FF7BE2F5FF80ECFEFF81ECFFFF81ECFFFF81EDFFFF81EDFFFF81ED
          FFFF81EDFFFF81EEFFFF81EEFFFF81EEFFFF81EEFFFF81EFFFFF81EFFFFF81EF
          FFFF81EFFFFF81EFFFFF81F0FFFF81F0FFFF9BF3FFFF29A0AFD8020202320001
          010C000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000010001010D00161B5B56DB
          FBFC89E8FFFF89E8FFFF89E8FFFF89E8FFFF89E9FFFF89E9FFFF89E9FFFF89EA
          FFFF89EAFFFF89EAFFFF89EAFFFF89EAFFFF89EBFFFF89EBFFFF89EBFFFF89EB
          FFFF89ECFFFF87EAFCFF81DFF0FFC4EBF2FFE5F4F7FFE4F3F6FFE4F3F6FFE5F5
          F8FF91DFECFF85E7F7FF88EDFEFF89EEFFFF89EEFFFF89EFFFFF89EFFFFF89EF
          FFFF89EFFFFF89F0FFFF89F0FFFF89F0FFFF89F0FFFF89F0FFFF89F0FFFF89F0
          FFFF89F1FFFF89F1FFFF89F1FFFF9AF3FFFF52DCEDF70912135B000000140000
          0003000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000010103000000140343
          519273E5FFFF90EAFFFF90EAFFFF90EBFFFF90EBFFFF90EBFFFF90EBFFFF90EC
          FFFF90ECFFFF90ECFFFF90ECFFFF90EDFFFF90EDFFFF90EDFFFF90EDFFFF90ED
          FFFF90EDFFFF8FEDFEFF8DE8F8FF87E0EFFF83D9E7FF81D5E4FF82D7E5FF85DD
          EBFF8AE5F4FF8EECFCFF90EFFEFF90F0FFFF90F0FFFF90F0FFFF90F0FFFF90F0
          FFFF90F1FFFF90F1FFFF90F1FFFF90F1FFFF90F1FFFF90F2FFFF90F2FFFF90F2
          FFFF90F2FFFF90F2FFFF98F3FFFF77EFFDFE12373C890000001C000101060000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000101050000
          001B0A7188B981E9FFFF97EDFFFF97EDFFFF97EDFFFF97EDFFFF97EEFFFF97EE
          FFFF97EEFFFF97EEFFFF97EEFFFF97EFFFFF97EFFFFF97EFFFFF97EFFFFF97EF
          FFFF97EFFFFF97F0FEFF96EFFDFF95EDFBFF94EBFAFF94EBF9FF94EBF9FF95EC
          FAFF96EEFCFF97F1FEFF97F1FFFF97F1FFFF97F2FFFF97F2FFFF97F2FFFF97F2
          FFFF97F2FFFF97F3FFFF97F3FFFF97F3FFFF97F3FFFF97F3FFFF97F3FFFF97F3
          FFFF97F3FFFF9CF4FFFF87F2FFFF18626BAC0000002400010109000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000001
          0107000102240F879FC98EECFFFF9FEFFFFF9FEFFFFF9FEFFFFF9FEFFFFF9FEF
          FFFF9FF0FFFF9FF0FFFF9FF0FFFF9FF0FFFF9FF1FFFF9FF1FFFF9FF1FFFF9FF1
          FFFF9FF1FFFF9FF1FFFF9FF2FFFF9FF2FFFF9FF2FFFF9FF2FFFF9FF2FFFF9FF2
          FFFF9FF2FFFF9FF3FFFF9FF3FFFF9FF3FFFF9FF3FFFF9FF3FFFF9FF3FFFF9FF3
          FFFF9FF4FFFF9FF4FFFF9FF4FFFF9FF4FFFF9FF4FFFF9FF4FFFF9FF5FFFF9FF5
          FFFFA3F5FFFF8DF3FFFF197983BD0101012B0001010C00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000101080002032813889EC992EDFFFFA5F1FFFFA5F1FFFFA5F1FFFFA5F1
          FFFFA5F1FFFFA5F2FFFFA5F2FFFFA5F2FFFFA5F2FFFFA5F2FFFFA5F2FFFFA5F2
          FFFFA5F3FFFFA5F3FFFFA5F3FFFFA5F3FFFFA5F3FFFFA5F3FFFFA5F3FFFFA5F4
          FFFFA5F4FFFFA5F4FFFFA5F4FFFFA5F4FFFFA5F4FFFFA5F4FFFFA5F5FFFFA5F5
          FFFFA5F5FFFFA5F5FFFFA5F5FFFFA5F5FFFFA5F5FFFFA5F5FFFFA5F6FFFFABF6
          FFFF89F3FFFF197A85BE0102022E0001010D0000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000100010108000202230E7587B894EFFFFFACF2FFFFACF3FFFFACF3
          FFFFACF3FFFFACF3FFFFACF3FFFFACF3FFFFACF3FFFFACF4FFFFACF4FFFFACF4
          FFFFACF4FFFFACF4FFFFACF4FFFFACF4FFFFACF5FFFFACF5FFFFACF5FFFFACF5
          FFFFACF5FFFFACF5FFFFACF5FFFFACF5FFFFACF6FFFFACF6FFFFACF6FFFFACF6
          FFFFACF6FFFFACF6FFFFACF6FFFFACF6FFFFACF7FFFFACF7FFFFB7F8FFFF7AF1
          FDFE15666EAD010101290001010C000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000101070000011A0947519184EAFBFCB2F4FFFFB2F4
          FFFFB2F4FFFFB2F4FFFFB2F4FFFFB2F5FFFFB2F5FFFFB2F5FFFFB2F5FFFFB2F5
          FFFFB2F5FFFFB2F6FFFFB2F6FFFFB2F6FFFFB2F6FFFFB2F6FFFFB2F6FFFFB2F6
          FFFFB2F6FFFFB2F6FFFFB2F6FFFFB2F6FFFFB2F7FFFFB2F7FFFFB2F7FFFFB2F7
          FFFFB2F7FFFFB2F7FFFFB2F7FFFFB2F7FFFFB3F8FFFFBEF9FFFF5AE5F4F90F3A
          3E88000000210001010B00000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000101050000001201171B5952BBCCE2B5F5
          FFFFB8F5FFFFB8F5FFFFB8F6FFFFB8F6FFFFB8F6FFFFB8F6FFFFB8F6FFFFB8F6
          FFFFB8F6FFFFB8F6FFFFB8F6FFFFB8F7FFFFB8F7FFFFB8F7FFFFB8F7FFFFB8F7
          FFFFB8F7FFFFB8F7FFFFB8F7FFFFB8F8FFFFB8F8FFFFB8F8FFFFB8F8FFFFB8F8
          FFFFB8F8FFFFB8F8FFFFB8F8FFFFC0F9FFFFA7F7FFFF2FADB9DA071314560000
          0018000101070000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000001020001010B00020224144B
          54958AE7F5F8BDF7FFFFBDF7FFFFBDF7FFFFBDF7FFFFBDF7FFFFBDF7FFFFBDF7
          FFFFBDF7FFFFBDF7FFFFBDF7FFFFBDF8FFFFBDF8FFFFBDF8FFFFBDF8FFFFBDF8
          FFFFBDF8FFFFBDF8FFFFBDF8FFFFBDF8FFFFBDF8FFFFBDF8FFFFBDF9FFFFBDF9
          FFFFBDF9FFFFC3F9FFFFBDF9FFFF60DEEAF40E41468E010101280001010F0001
          0104000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000101050001
          011100090A3C246872AB88E8F6F9C1F7FFFFC2F8FFFFC2F8FFFFC2F8FFFFC2F8
          FFFFC2F8FFFFC2F8FFFFC2F8FFFFC2F8FFFFC2F8FFFFC2F8FFFFC2F9FFFFC2F9
          FFFFC2F9FFFFC2F9FFFFC2F9FFFFC2F9FFFFC2F9FFFFC2F9FFFFC3F9FFFFCAFA
          FFFFB6F8FFFF62E2EEF5125D64A50307083C0000001500010108000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010101010700010112000607350F48509154BECBE29CF4FFFFC5F8FFFFC8F9
          FFFFC7F9FFFFC7F9FFFFC7F9FFFFC7F9FFFFC7F9FFFFC7F9FFFFC7F9FFFFC7F9
          FFFFC7FAFFFFC7FAFFFFC7FAFFFFCAFAFFFFCFFAFFFFBBF9FFFF7FF2FDFE3CB3
          BEDC0A41468D02050536000000160101010A0001010300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000101060001010E0000001A0010124C07454D902A8E
          9AC759DEEEF476F1FFFF90F4FFFFA4F6FFFFB0F7FFFFB5F8FFFFB5F8FFFFAEF7
          FFFFA2F6FFFF8CF5FFFF6FF2FFFF51D9E7F01F8791C30741468D040E0F4A0000
          001E000101110001010800000002000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000010103000101070001020D0000
          00150000001D010A0C3E00171A5C032E337603393F86023F468F023E448E0339
          3F86042E32760216185B03090A3D00000020000000170001010F000101090001
          0104000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010001010300010105000101080002020A0001010C0001010D0001010D0001
          010D0002020B0001010800010106000101030000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36400000424D3640000000000000360000002800000040000000400000000100
          2000000000000040000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000200000004000000060000000700000008000000080000
          0007000000060000000400000003000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000003000000080000
          000E000000140000001B00000021000000270000002A0000002C0000002D0000
          002B00000028000000230000001D000000160000000F00000009000000040000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000300000009000000120000001E0000002B0000
          003900000046000000520000026100000A7800000E8400001189000011890000
          0E8400000A7700000161000000550000004A0000003D0000002F000000210000
          00150000000B0000000400000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000040000000C0000001A0000002B0000004000000158000012880000
          31B5090956D816167CF0202095FE222299FF202098FF1D1D98FF1A1A97FF1717
          97FF141496FF0F0F8FFC070775EB020253D400002EB000000F840000005B0000
          0046000000310000001E00000010000000060000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          000C0000001C000000320000004E00001489040444C823238DF82F2F9DFF2D2D
          9DFF1F1F97FF111191FF04048CFF00008BFF00008CFF00008CFF00008DFF0000
          8EFF00008FFF030391FF070794FF0A0A96FF090997FF070796FF030381F20101
          3FC101010F830000005400000039000000210000000F00000005000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000008000000160000
          002F00000151000023A1151574EB3636A0FF30309EFF0F0F8FFF000089FF0000
          89FF00008AFF00008BFF00008CFF00008DFF00008DFF00008EFF00008FFF0000
          90FF000091FF000092FF000093FF000094FF000094FF000095FF020297FF0202
          98FF000098FF010169E001011B9800000056000000370000001C0000000B0000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000030000000D00000022000000420000
          1A92171778EC3D3DA4FF26269AFF01018AFF00008AFF00008AFF00008BFF0000
          8CFF00008DFF00008EFF00008EFF00008FFF000090FF000091FF000092FF0000
          92FF000093FF000094FF000095FF000096FF000097FF000098FF000099FF0000
          9AFF00009BFF00009BFF00009CFF01016DE1010112890000004C0000002A0000
          0011000000050000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000004000000120000002D00000661080854D23D3D
          A4FF29299CFF00008AFF00008AFF00008BFF00008CFF00008DFF00008DFF0000
          8EFF00008FFF000090FF000090FF000091FF000092FF000093FF000094FF0000
          95FF000096FF000096FF000097FF000098FF000099FF00009AFF00009BFF0000
          9CFF00009DFF00009EFF00009EFF00009FFF00009EFE010147C2000002620000
          0037000000180000000700000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000005000000160000003600001485212186F23F3FA7FF0606
          8EFF00008BFF00008CFF00008DFF00008DFF00008EFF00008FFF000090FF0000
          91FF000091FF000092FF000093FF000094FF000095FF000095FF000096FF0000
          97FF000098FF000099FF000099FF00009AFF00009BFF00009CFF00009DFF0000
          9EFF00009FFF0000A0FF0000A1FF0000A2FF0000A3FF0000A3FF01017AE60000
          0C7D000000410000001D00000008000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000006000000180000003B01012CA63B3BA3FE28289EFF00008CFF0000
          8DFF00008EFF00008EFF00008FFF000090FF000091FF000091FF000092FF0000
          93FF000094FF000094FF000095FF000096FF000097FF000098FF000099FF0000
          99FF00009AFF00009BFF00009CFF00009DFF00009EFF00009FFF0000A0FF0000
          A0FF0000A1FF0000A2FF0000A3FF0000A4FF0000A5FF0000A6FF0000A7FF0000
          9CF801011D950000004700000020000000090000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0005000000180000003D030339B64646ACFF121296FF00008EFF00008FFF0000
          8FFF000090FF000091FF000091FF000092FF000093FF000094FF000094FF0000
          95FF000096FF000097FF000098FF000098FF000099FF00009AFF00009BFF0000
          9CFF00009DFF00009DFF00009EFF00009FFF0000A0FF0000A1FF0000A2FF0000
          A3FF0000A4FF0000A5FF0000A5FF0000A6FF0000A7FF0000A8FF0000A9FF0000
          AAFF0000A6FC010127A200000049000000200000000800000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          00150000003A030340BB4747AEFF0B0B95FF000090FF000091FF000091FF0000
          92FF000093FF000094FF000094FF000095FF000096FF000096FF000097FF0000
          98FF000099FF00009AFF00009AFF00009BFF00009CFF00009DFF00009EFF0000
          9EFF00009FFF0000A0FF0000A1FF0000A2FF0000A3FF0000A4FF0000A4FF0000
          A5FF0000A6FF0000A7FF0000A8FF0000A9FF0000AAFF0000AAFF0000ABFF0000
          ACFF0000ADFF0000ACFE01012BA4000000470000001D00000007000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000002000000100000
          0032010133AB4646AFFF0B0B97FF000092FF000093FF000093FF000094FF0000
          95FF000095FF000096FF000097FF000097FF000098FF000099FF00009AFF0000
          9BFF00009BFF00009CFF00009DFF00009EFF00009FFF00009FFF0000A0FF0000
          A1FF0000A2FF0000A3FF0000A4FF0000A4FF0000A5FF0000A6FF0000A7FF0000
          A8FF0000A8FF0000A9FF0000AAFF0000ABFF0000ACFF0000ADFF0000AEFF0000
          AFFF0000B0FF0000B1FF0000AFFD010121970000004000000017000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000A000000280000
          1C8B3E3EABFE11119BFF000094FF000095FF000095FF000096FF000096FF0000
          97FF000098FF000098FF000099FF00009AFF00009BFF00009BFF00009CFF0000
          9DFF00009EFF00009EFF00009FFF0000A0FF0000A1FF0000A2FF0000A2FF0000
          A3FF0000A4FF0000A5FF0000A6FF0000A7FF0000A7FF0000A8FF0000A9FF0000
          AAFF0000ABFF0000ACFF0000ACFF0000ADFF0000AEFF0000AFFF0000B0FF0000
          B1FF0000B2FF0000B3FF0000B4FF0000A8F800000F7E00000035000000100000
          0002000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000050000001C000009602A2A
          9CF72020A3FF000096FF000097FF000097FF000098FF000099FF000099FF0000
          9AFF00009BFF00009BFF00009CFF00009DFF00009EFF00009EFF00009FFF0000
          A0FF0000A1FF0000A1FF0000A2FF0000A3FF0000A4FF0000A5FF0000A5FF0000
          A6FF0000A7FF0000A8FF0000A8FF0000A9FF0000AAFF0000ABFF0000ACFF0000
          ADFF0000AEFF0000AEFF0000AFFF0000B0FF0000B1FF0000B2FF0000B3FF0000
          B4FF0000B5FF0000B5FF0000B6FF0000B7FF01018FE90000035F000000270000
          0009000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000010000000390E0E6AD93838
          AFFF000098FF000099FF000099FF00009AFF00009BFF00009CFF00009CFF0000
          9DFF00009EFF00009EFF00009FFF00009FFF0000A0FF0000A1FF0000A2FF0000
          A2FF0000A3FF0000A4FF0000A5FF0000A5FF0000A6FF0000A7FF0000A8FF0000
          A9FF0000A9FF0000AAFF0000ABFF0000ACFF0000ADFF0000AEFF0000AEFF0000
          AFFF0000B0FF0000B0FF0000B2FF0000B2FF0000B3FF0000B4FF0000B5FF0000
          B6FF0000B7FF0000B8FF0000B9FF0000B9FF0000BAFF020252C1000000470000
          0019000000040000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000700000024000027974343B5FF0303
          9CFF00009BFF00009CFF00009CFF00009DFF00009EFF00009EFF00009FFF0000
          A0FF0000A0FF00009FFF00009DFF00009DFF00009FFF0000A2FF0000A4FF0000
          A6FF0000A6FF0000A7FF0000A8FF0000A8FF0000A9FF0000AAFF0000ABFF0000
          ABFF0000ACFF0000ADFF0000AEFF0000AFFF0000AFFF0000B0FF0000AFFF0000
          AEFF0000ADFF0000AEFF0000B2FF0000B4FF0000B6FF0000B7FF0000B8FF0000
          B9FF0000B9FF0000BAFF0000BBFF0000BCFF0000BDFF0000BBFE010115840000
          00310000000D0000000000000000000000000000000000000000000000000000
          00000000000000000000000000020000001300000349232399F31C1CA8FF0000
          9DFF00009EFF00009EFF00009FFF0000A0FF0000A0FF0000A1FF0000A2FF0000
          A2FF0000A0FF00009AFF0F0F9AFF3434A9FF040498FF00009EFF0000A5FF0000
          A8FF0000A9FF0000A9FF0000AAFF0000ABFF0000ACFF0000ACFF0000ADFF0000
          AEFF0000AFFF0000AFFF0000B0FF0000B1FF0000B1FF0000B0FF0000AAFF0404
          A5FF3434B4FF0F0FA8FF0000ABFF0000B4FF0000B8FF0000B9FF0000BAFF0000
          BBFF0000BCFF0000BDFF0000BDFF0000BEFF0000BFFF0000C0FF020284DF0000
          004F0000001C0000000400000000000000000000000000000000000000000000
          000000000000000000000000000700000025010138A83D3DB7FF0000A0FF0000
          A1FF0000A1FF0000A2FF0000A2FF0000A3FF0000A4FF0000A4FF0000A5FF0000
          A3FF00009CFF4141ADFFF1F1F8FFFFFFFFFFD0D0EAFF16169DFF0000A0FF0000
          A8FF0000ABFF0000ADFF0000ADFF0000AEFF0000AFFF0000B0FF0000B0FF0000
          B1FF0000B2FF0000B2FF0000B3FF0000B3FF0000B2FF0000ABFF1616A7FFD0D0
          ECFFFFFFFFFFF0F0F9FF4141B9FF0000AFFF0000B9FF0000BCFF0000BDFF0000
          BEFF0000BEFF0000BFFF0000C0FF0000C1FF0000C1FF0000C2FF0000C3FF0101
          2393000000320000000C00000000000000000000000000000000000000000000
          0000000000000000000100000010000003432424A0F41616AAFF0000A3FF0000
          A3FF0000A4FF0000A4FF0000A5FF0000A6FF0000A6FF0000A7FF0000A7FF0000
          A4FF0C0C9DFFEEEEF7FFFFFFFFFFFFFFFFFFFFFFFFFFD4D4ECFF16169FFF0000
          A3FF0000ABFF0000AFFF0000B0FF0000B0FF0000B1FF0000B2FF0000B3FF0000
          B3FF0000B4FF0000B5FF0000B5FF0000B3FF0000ACFF1616A8FFD4D4EDFFFFFF
          FFFFFFFFFFFFFFFFFFFFEEEEF8FF0C0CAEFF0000B9FF0000BEFF0000BFFF0000
          C0FF0000C0FF0000C1FF0000C2FF0000C3FF0000C3FF0000C4FF0000C5FF0202
          87DE0000004B0000001900000003000000000000000000000000000000000000
          000000000000000000040000001D000028923939B9FF0000A5FF0000A6FF0000
          A6FF0000A7FF0000A8FF0000A8FF0000A9FF0000AAFF0000AAFF0000ABFF0000
          A6FF2424A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4ECFF1616
          A2FF0000A7FF0000AFFF0000B2FF0000B3FF0000B4FF0000B5FF0000B6FF0000
          B6FF0000B7FF0000B7FF0000B5FF0000AEFF1616A9FFD4D4EDFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF2424B7FF0000BAFF0000C1FF0000C2FF0000
          C2FF0000C3FF0000C4FF0000C4FF0000C5FF0000C6FF0000C7FF0000C7FF0000
          C8FF0101157E0000002A00000008000000000000000000000000000000000000
          000000000000000000090000002D10107BDC2323B4FF0000A9FF0000A9FF0000
          AAFF0000AAFF0000ABFF0000ACFF0000ACFF0000ADFF0000ADFF0000AEFF0000
          ABFF0000A0FFB9B9E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4
          EDFF1616A5FF0000AAFF0000B3FF0000B6FF0000B7FF0000B8FF0000B8FF0000
          B9FF0000B9FF0000B8FF0000B0FF1616ABFFD4D4EEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFB9B9E6FF0000B1FF0000BFFF0000C3FF0000C4FF0000
          C5FF0000C6FF0000C6FF0000C7FF0000C8FF0000C8FF0000C9FF0000CAFF0202
          CBFF02025AC00000003D00000010000000000000000000000000000000000000
          00000000000100000011000008552F2FB8FE0404ACFF0000ABFF0000ACFF0000
          ACFF0000ADFF0000ADFF0000AEFF0000AFFF0000AFFF0000B0FF0000B0FF0000
          B0FF0000AAFF0B0BA1FFBFBFE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFD4D4EDFF1616A7FF0000ADFF0000B6FF0000B9FF0000BAFF0000BBFF0000
          BBFF0000B9FF0000B2FF1616ACFFD4D4EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFBFBFE8FF0B0BB0FF0000BCFF0000C3FF0000C6FF0000C6FF0000
          C7FF0000C8FF0000C8FF0000C9FF0000CAFF0000CAFF0000CBFF0000CCFF0101
          CDFF0505B3F2000001510000001B000000020000000000000000000000000000
          0000000000020000001A00002D933030BDFF0000AEFF0000AEFF0000AFFF0000
          AFFF0000B0FF0000B1FF0000B1FF0000B2FF0000B2FF0000B3FF0000B4FF0000
          B4FF0000B2FF0000ACFF0B0BA3FFBFBFE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFD5D5EDFF1616AAFF0000B0FF0000B9FF0000BDFF0000BDFF0000
          BBFF0000B4FF1616AEFFD4D4EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFBFBFE8FF0B0BB1FF0000BCFF0000C4FF0000C7FF0000C8FF0000C9FF0000
          C9FF0000CAFF0000CBFF0000CBFF0000CCFF0000CDFF0000CDFF0000CEFF0000
          CFFF0707D1FF0101187E00000027000000060000000000000000000000000000
          00000000000500000024070762C62525BCFF0000B1FF0000B2FF0000B2FF0000
          B3FF0000B3FF0000B4FF0000B4FF0000B5FF0000B5FF0000B6FF0000B7FF0000
          B7FF0000B8FF0000B6FF0000AFFF0B0BA7FFBFBFE5FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFD5D5EEFF1616ADFF0000B4FF0000BCFF0000BDFF0000
          B5FF1616AFFFD4D4EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBF
          E8FF0B0BB2FF0000BEFF0000C6FF0000C9FF0000CAFF0000CBFF0000CBFF0000
          CCFF0000CDFF0000CDFF0000CEFF0000CEFF0000CFFF0000D0FF0000D0FF0000
          D1FF0909D3FF010145AD000000320000000B0000000000000000000000000000
          0000000000090000002E1A1AA5F00F0FB8FF0000B4FF0000B5FF0000B5FF0000
          B6FF0000B6FF0000B7FF0000B7FF0000B8FF0000B8FF0000B9FF0000BAFF0000
          BAFF0000BBFF0000BBFF0000BAFF0000B3FF0B0BA9FFBFBFE6FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D5EEFF1616AFFF0000B4FF0000B5FF1616
          B0FFD4D4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFE9FF0B0B
          B4FF0000BFFF0000C8FF0000CBFF0000CCFF0000CCFF0000CDFF0000CEFF0000
          CEFF0000CFFF0000CFFF0000D0FF0000D1FF0000D1FF0000D2FF0000D3FF0000
          D3FF0909D5FF04047BD10000003E000000100000000000000000000000000000
          00000000000C000006482626C0FE0101B7FF0000B7FF0000B8FF0000B8FF0000
          B9FF0000BAFF0000BAFF0000BAFF0000BBFF0000BCFF0000BCFF0000BDFF0000
          BDFF0000BEFF0000BEFF0000BFFF0000BDFF0000B6FF0B0BACFFBFBFE7FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D5EFFF1616ACFF1616ACFFD4D4
          EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFE9FF0B0BB5FF0000
          C1FF0000CAFF0000CDFF0000CEFF0000CEFF0000CFFF0000CFFF0000D0FF0000
          D1FF0000D1FF0000D2FF0000D2FF0000D3FF0000D3FF0000D4FF0000D5FF0000
          D5FF0606D7FF0B0BB6EE00000048000000150000000100000000000000000000
          000000000010000011652626C4FF0000BAFF0000BAFF0000BBFF0000BBFF0000
          BCFF0000BDFF0000BDFF0000BDFF0000BEFF0000BFFF0000BFFF0000C0FF0000
          C0FF0000C1FF0000C1FF0000C2FF0000C2FF0000C0FF0000BAFF0B0BAFFFBFBF
          E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D5EFFFD4D4EFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFE9FF0B0BB7FF0000C3FF0000
          CCFF0000CEFF0000D0FF0000D0FF0000D1FF0000D1FF0000D2FF0000D2FF0000
          D3FF0000D3FF0000D4FF0000D5FF0000D5FF0000D6FF0000D6FF0000D7FF0000
          D7FF0202D8FF1010D7FD000002540000001A0000000200000000000000000000
          000100000013010125802626C6FF0202BEFF0000BEFF0000BEFF0000BFFF0000
          BFFF0000BFFF0000C0FF0000C1FF0000C1FF0000C1FF0000C2FF0000C2FF0000
          C3FF0000C4FF0000C4FF0000C5FF0000C5FF0000C5FF0000C4FF0000BDFF0B0B
          B2FFBFBFE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFEAFF0B0BB8FF0000C5FF0000CDFF0000
          D0FF0000D1FF0000D2FF0000D2FF0000D3FF0000D4FF0000D4FF0000D5FF0000
          D5FF0000D6FF0000D6FF0000D7FF0000D7FF0000D8FF0000D8FF0000D9FF0000
          D9FF0000DAFF1414DDFF02020F6A0000001E0000000300000000000000000000
          00010000001501012F8F2727C9FF0808C2FF0505C2FF0000C1FF0000C2FF0000
          C2FF0000C2FF0000C3FF0000C4FF0000C4FF0000C4FF0000C5FF0000C5FF0000
          C6FF0000C6FF0000C7FF0000C7FF0000C8FF0000C9FF0000C9FF0000C7FF0000
          C0FF0B0BB4FFBFBFE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFBFBFEAFF0B0BB9FF0000C7FF0000CFFF0000D2FF0000
          D3FF0000D4FF0000D4FF0101D5FF0303D6FF0404D6FF0505D7FF0505D7FF0606
          D8FF0606D8FF0505D9FF0404D9FF0303DAFF0202DAFF0000DAFF0000DBFF0000
          DBFF0000DCFF1717DFFF01011677000000200000000300000000000000000000
          000100000016000034942828CCFF0D0DC6FF0D0DC7FF0B0BC7FF0303C5FF0000
          C5FF0000C5FF0000C6FF0000C6FF0000C7FF0000C7FF0000C8FF0000C8FF0000
          C9FF0000C9FF0000CAFF0000CAFF0000CBFF0000CBFF0000CCFF0000CCFF0000
          C9FF0000BFFF0B0BAFFFC1C1E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC1C1EAFF0B0BB3FF0000C5FF0000D0FF0000D4FF0101D5FF0505
          D6FF0909D7FF0C0CD8FF0D0DD9FF0D0DD9FF0D0DDAFF0D0DDBFF0D0DDBFF0D0D
          DBFF0D0DDCFF0D0DDDFF0D0DDDFF0D0DDDFF0D0DDEFF0C0CDEFF0A0ADEFF0606
          DEFF0101DEFF1A1AE1FF00001A7C000000210000000300000000000000000000
          000100000015000035952929CFFF1212CAFF1212CAFF1212CAFF1212CBFF0C0C
          CAFF0303C8FF0000C8FF0000C9FF0000C9FF0000CAFF0000CAFF0000CAFF0000
          CBFF0000CBFF0000CCFF0000CCFF0000CDFF0000CDFF0000CEFF0000CEFF0000
          CBFF0000C0FF1616B4FFD4D4F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFD5D5F1FF1616B8FF0202C6FF0808D3FF0E0ED8FF1212DAFF1212
          DAFF1212DBFF1212DBFF1212DCFF1212DCFF1212DCFF1212DDFF1212DDFF1212
          DEFF1212DEFF1212DFFF1212DFFF1212DFFF1212DFFF1212E0FF1212E0FF1212
          E1FF1212E1FF2525E4FF00001A7C000000200000000300000000000000000000
          0001000000130101328F2929D1FF1818CDFF1818CEFF1818CEFF1818CFFF1818
          CFFF1717D0FF1111CFFF0707CDFF0000CCFF0000CCFF0000CDFF0000CDFF0000
          CEFF0000CEFF0000CFFF0000CFFF0000D0FF0000D0FF0000D0FF0000CDFF0000
          C5FF1616BCFFD4D4F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFD7D7F2FF2929C3FF1616CFFF1717D8FF1818DCFF1818
          DDFF1818DEFF1818DEFF1818DEFF1818DEFF1818DFFF1818DFFF1818E0FF1818
          E0FF1818E0FF1818E1FF1818E1FF1818E2FF1818E2FF1818E3FF1818E3FF1818
          E3FF1818E4FF2A2AE6FF010118760000001E0000000300000000000000000000
          000000000111010129812828D3FF1D1DD1FF1D1DD2FF1D1DD2FF1D1DD2FF1D1D
          D3FF1D1DD3FF1D1DD4FF1D1DD4FF1B1BD4FF1212D3FF0909D1FF0101D0FF0000
          D0FF0000D1FF0000D1FF0000D2FF0000D2FF0000D2FF0000D0FF0000C7FF1616
          BEFFD4D4F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8F2FF2D2DC6FF1B1BD2FF1D1DDBFF1D1D
          DFFF1D1DE0FF1D1DE0FF1D1DE1FF1D1DE1FF1D1DE2FF1D1DE2FF1D1DE3FF1D1D
          E3FF1D1DE3FF1D1DE4FF1D1DE4FF1D1DE4FF1D1DE4FF1D1DE5FF1D1DE5FF1D1D
          E5FF1D1DE6FF2C2CE8FF020211690000001B0000000200000000000000000000
          00000000000D000016662727D5FF2424D5FF2424D6FF2424D6FF2424D6FF2424
          D6FF2424D7FF2424D7FF2424D8FF2424D8FF2424D8FF2424D9FF2424D9FF1E1E
          D8FF1717D7FF1111D7FF0B0BD6FF0707D6FF0303D2FF0000C9FF1616C0FFD4D4
          F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7ECFFC7C7ECFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9F3FF3333C9FF2222D5FF2323
          DFFF2424E2FF2424E3FF2424E4FF2424E4FF2424E4FF2424E4FF2424E5FF2424
          E5FF2424E5FF2424E6FF2424E6FF2424E6FF2424E7FF2424E7FF2424E8FF2424
          E8FF2727E8FF2929E8FE01010551000000160000000100000000000000000000
          00000000010900000A492222D7FF2B2BD9FF2B2BD9FF2B2BDAFF2B2BDAFF2B2B
          DAFF2B2BDAFF2B2BDBFF2B2BDBFF2B2BDBFF2B2BDCFF2B2BDCFF2B2BDCFF2B2B
          DDFF2B2BDDFF2B2BDEFF2B2BDDFF2A2ADAFF2828D1FF3838C6FFDADAF2FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9EDFF2E2EC1FF2E2EC1FFC9C9
          EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADAF3FF3838CBFF2828
          D7FF2A2AE1FF2B2BE5FF2B2BE6FF2B2BE6FF2B2BE7FF2B2BE7FF2B2BE8FF2B2B
          E8FF2B2BE8FF2B2BE8FF2B2BE8FF2B2BE8FF2B2BE9FF2B2BE9FF2B2BE9FF2B2B
          EAFF3737EBFF1E1ED3F300000040000000110000000000000000000000000000
          000000000006000000271717C9F63434DDFF3232DCFF3232DDFF3232DDFF3232
          DDFF3232DEFF3232DEFF3232DEFF3232DFFF3232DFFF3232DFFF3232E0FF3232
          E0FF3232E0FF3232E0FF3131DDFF2F2FD4FF3E3EC8FFDBDBF3FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFCACAEEFF3535CAFF2F2FD5FF2F2FD6FF3535
          CAFFCACAEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBF4FF3E3E
          CEFF2F2FDAFF3131E4FF3232E8FF3232E8FF3232E9FF3232E9FF3232E9FF3232
          EAFF3232EAFF3232EAFF3232EBFF3232EBFF3232EBFF3232ECFF3232ECFF3232
          ECFF4747EEFF0C0C93D4000000350000000C0000000000000000000000000000
          0000000000030000001C080884CC3F3FE1FF3939E0FF3939E0FF3939E1FF3939
          E1FF3939E1FF3939E1FF3939E1FF3939E2FF3939E2FF3939E2FF3939E3FF3939
          E3FF3939E3FF3838E0FF3636D6FF4444CBFFDCDCF3FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCBCBEFFF3B3BCCFF3636DBFF3838E4FF3838E4FF3636
          DCFF3B3BCDFFCBCBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDC
          F4FF4444CFFF3636DDFF3838E7FF3939EBFF3939EBFF3939ECFF3939ECFF3939
          ECFF3939ECFF3939ECFF3939EDFF3939EDFF3939EDFF3939EDFF3939EEFF3939
          EEFF4F4FF0FF020257AE00000029000000070000000000000000000000000000
          00000000000100000013010144983E3EE3FF4141E3FF4141E3FF4141E3FF4141
          E4FF4141E4FF4141E4FF4141E5FF4141E5FF4141E5FF4141E6FF4141E6FF4040
          E6FF4040E3FF3D3DD9FF4949CCFFDCDCF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCDCDEFFF4141CEFF3D3DDDFF4040E6FF4141EAFF4141EAFF4040
          E7FF3D3DDFFF4141D0FFCDCDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFDDDDF4FF4949D2FF3D3DDFFF4040E9FF4040EDFF4141EEFF4141EEFF4141
          EEFF4141EFFF4141EFFF4141EFFF4141EFFF4141EFFF4141EFFF4141EFFF4141
          F0FF4545F0FF0202237D0000001D000000030000000000000000000000000000
          0000000000000000010B010111562E2EE3FF4949E7FF4949E7FF4949E7FF4949
          E7FF4949E7FF4949E7FF4949E7FF4949E8FF4949E8FF4949E8FF4949E9FF4848
          E7FF4545DEFF5050D0FFDEDEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFCFCFEFFF4848D0FF4545E0FF4848E9FF4848ECFF4949ECFF4949ECFF4848
          ECFF4848EAFF4545E1FF4848D2FFCFCFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFDEDEF5FF5050D5FF4545E3FF4848EDFF4949F0FF4949F0FF4949
          F0FF4949F0FF4949F1FF4949F1FF4949F1FF4949F1FF4949F1FF4949F1FF5353
          F2FF2D2DE3F80000034500000012000000010000000000000000000000000000
          00000000000000000005000000211515B5E65252E9FF5151E9FF5151E9FF5151
          EAFF5151EAFF5151EAFF5151EAFF5151EAFF5151EAFF5151EBFF5151EBFF4F4F
          E6FF4B4BD6FFDADAF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0
          F0FF4E4ED1FF4C4CE2FF4F4FEBFF5050EEFF5151EFFF5151EFFF5151EFFF5151
          EFFF5050EFFF4F4FECFF4C4CE3FF4E4ED4FFD0D0F0FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFDADAF4FF4B4BDBFF4F4FEBFF5151F1FF5151F2FF5151
          F2FF5151F2FF5151F2FF5151F3FF5151F3FF5151F3FF5151F3FF5151F3FF6969
          F5FF08087DC40000002E00000009000000000000000000000000000000000000
          0000000000000000000100000113020248994F4FEAFF5959ECFF5959ECFF5959
          ECFF5959ECFF5959EDFF5959EDFF5959EDFF5959EDFF5959EDFF5959EDFF5656
          E6FF6A6ADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2F0FF5555
          D3FF5454E3FF5757ECFF5858EFFF5959F0FF5959F1FF5959F1FF5959F1FF5959
          F1FF5959F1FF5858F0FF5757EDFF5454E5FF5555D5FFD2D2F1FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6ADEFF5656EBFF5959F2FF5959F3FF5959
          F3FF5959F4FF5959F4FF5959F4FF5959F4FF5959F4FF5959F4FF5959F4FF5656
          F4FF0202247C0000001C00000004000000000000000000000000000000000000
          00000000000000000000000001080000073D2F2FE1FB6161EEFF6161EEFF6161
          EFFF6161EFFF6161EFFF6161EFFF6161EFFF6161EFFF6161EFFF6161EFFF5E5E
          EAFF5C5CD9FFECECF9FFFFFFFFFFFFFFFFFFFFFFFFFFD4D4F1FF5C5CD5FF5C5C
          E5FF5F5FEEFF6060F1FF6161F2FF6161F2FF6161F2FF6161F2FF6161F2FF6161
          F2FF6161F3FF6161F3FF6060F2FF5F5FF0FF5C5CE7FF5C5CD7FFD4D4F1FFFFFF
          FFFFFFFFFFFFFFFFFFFFECECF9FF5C5CDDFF5E5EEEFF6161F4FF6161F5FF6161
          F5FF6161F5FF6161F5FF6161F5FF6161F5FF6161F5FF6161F6FF7676F7FF2121
          C2E7000001390000000F00000001000000000000000000000000000000000000
          00000000000000000000000000020000001608086AB26464F0FF6969F0FF6969
          F0FF6969F1FF6969F1FF6969F1FF6969F1FF6969F1FF6969F1FF6969F1FF6767
          EEFF6363E4FF7979DCFFEAEAF8FFFFFFFFFFCFCFF0FF6363D7FF6363E6FF6767
          F0FF6868F3FF6969F3FF6969F3FF6969F4FF6969F4FF6969F4FF6969F4FF6969
          F4FF6969F4FF6969F4FF6969F4FF6868F4FF6767F2FF6363E8FF6363DAFFCFCF
          F1FFFFFFFFFFEAEAF9FF7979DEFF6363E8FF6767F2FF6969F6FF6969F6FF6969
          F6FF6969F6FF6969F6FF6969F7FF6969F7FF6969F7FF6969F7FF7272F7FF0202
          3C92000000210000000600000000000000000000000000000000000000000000
          00000000000000000000000000000000010901010A433C3CE5FA7171F2FF7171
          F3FF7171F3FF7171F3FF7171F3FF7171F3FF7171F3FF7171F3FF7171F3FF7070
          F3FF6E6EEFFF6B6BE7FF6767DDFF7171DDFF6767DFFF6C6CE9FF6F6FF1FF7070
          F5FF7171F5FF7171F5FF7171F5FF7171F5FF7171F5FF7171F5FF7171F5FF7171
          F5FF7171F6FF7171F6FF7171F6FF7171F6FF7070F6FF6F6FF3FF6C6CEBFF6767
          E1FF7171DFFF6767E0FF6B6BEAFF6E6EF2FF7070F6FF7171F7FF7171F7FF7171
          F8FF7171F8FF7171F8FF7171F8FF7171F8FF7171F8FF8787F9FF2C2CC9E90000
          023B0000000F0000000100000000000000000000000000000000000000000000
          00000000000000000000000000000000000200000014060657A16E6EF3FF7979
          F4FF7979F4FF7979F5FF7979F5FF7979F5FF7979F5FF7979F5FF7979F5FF7979
          F5FF7878F5FF7777F3FF7676F0FF7575EFFF7676F1FF7878F4FF7979F6FF7979
          F6FF7979F6FF7979F6FF7979F6FF7979F7FF7979F7FF7979F7FF7979F7FF7979
          F7FF7979F7FF7979F7FF7979F7FF7979F7FF7979F7FF7979F7FF7878F6FF7676
          F3FF7575F1FF7676F2FF7777F5FF7878F8FF7979F9FF7979F9FF7979F9FF7979
          F9FF7979F9FF7979F9FF7979F9FF7979F9FF7C7CF9FF7878F9FF03032E820000
          001E000000050000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000001070000022B2A2AC4E78181
          F6FF8181F6FF8181F6FF8181F6FF8181F6FF8181F6FF8181F6FF8181F6FF8181
          F6FF8181F7FF8181F7FF8181F7FF8181F7FF8181F7FF8181F7FF8181F7FF8181
          F7FF8181F7FF8181F7FF8181F7FF8181F8FF8181F8FF8181F8FF8181F8FF8181
          F8FF8181F8FF8181F8FF8181F8FF8181F8FF8181F8FF8181F8FF8181F8FF8181
          F9FF8181F9FF8181F9FF8181F9FF8181F9FF8181F9FF8181F9FF8181F9FF8181
          F9FF8181F9FF8181F9FF8181F9FF8181F9FF9B9BFBFF171792CB0000002D0000
          010C000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000010000010D01011A5F5757
          F1FD8989F7FF8989F7FF8989F7FF8989F8FF8989F8FF8989F8FF8989F8FF8989
          F8FF8989F8FF8989F8FF8989F8FF8989F8FF8989F8FF8989F9FF8989F9FF8989
          F9FF8989F9FF8989F9FF8989F9FF8989F9FF8989F9FF8989F9FF8989F9FF8989
          F9FF8989F9FF8989F9FF8989FAFF8989FAFF8989FAFF8989FAFF8989FAFF8989
          FAFF8989FAFF8989FAFF8989FAFF8989FAFF8989FAFF8989FAFF8989FAFF8989
          FAFF8989FBFF8989FBFF8989FBFF9A9AFBFF4B4BDFF201010A4E000000140000
          0003000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000103000000140505
          4F977373F7FF9090F8FF9090F8FF9090F9FF9090F9FF9090F9FF9090F9FF9090
          F9FF9090F9FF9090F9FF9090F9FF9090F9FF9090F9FF9090FAFF9090FAFF9090
          FAFF9090FAFF9090FAFF9090FAFF9090FAFF9090FAFF9090FAFF9090FAFF9090
          FAFF9090FAFF9090FAFF9090FAFF9090FBFF9090FBFF9090FBFF9090FBFF9090
          FBFF9090FBFF9090FBFF9090FBFF9090FBFF9090FBFF9090FBFF9090FBFF9090
          FBFF9090FBFF9090FBFF9898FBFF7676F8FD020227780000001C000001060000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000001050000
          001B0D0D83BD8181F9FF9797FAFF9797FAFF9797FAFF9797FAFF9797FAFF9797
          FAFF9797FAFF9797FAFF9797FAFF9797FAFF9797FAFF9797FAFF9797FBFF9797
          FBFF9797FBFF9797FBFF9797FBFF9797FBFF9797FBFF9797FBFF9797FBFF9797
          FBFF9797FBFF9797FBFF9797FBFF9797FBFF9797FBFF9797FBFF9797FCFF9797
          FCFF9797FCFF9797FCFF9797FCFF9797FCFF9797FCFF9797FCFF9797FCFF9797
          FCFF9797FCFF9C9CFCFF8787FBFF0606509B0000002300000109000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          01070000022612129ACD8E8EFAFF9F9FFBFF9F9FFBFF9F9FFBFF9F9FFBFF9F9F
          FBFF9F9FFBFF9F9FFBFF9F9FFBFF9F9FFBFF9F9FFBFF9F9FFBFF9F9FFCFF9F9F
          FCFF9F9FFCFF9F9FFCFF9F9FFCFF9F9FFCFF9F9FFCFF9F9FFCFF9F9FFCFF9F9F
          FCFF9F9FFCFF9F9FFCFF9F9FFCFF9F9FFCFF9F9FFCFF9F9FFCFF9F9FFCFF9F9F
          FCFF9F9FFCFF9F9FFCFF9F9FFCFF9F9FFCFF9F9FFCFF9F9FFCFF9F9FFCFF9F9F
          FCFFA3A3FCFF8D8DFCFF08086AAF000000280000010C00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000001080000032916169CCD9292FBFFA5A5FCFFA5A5FCFFA5A5FCFFA5A5
          FCFFA5A5FCFFA5A5FCFFA5A5FCFFA5A5FCFFA5A5FCFFA5A5FCFFA5A5FCFFA5A5
          FCFFA5A5FCFFA5A5FCFFA5A5FCFFA5A5FCFFA5A5FCFFA5A5FCFFA5A5FCFFA5A5
          FCFFA5A5FCFFA5A5FCFFA5A5FDFFA5A5FDFFA5A5FDFFA5A5FDFFA5A5FDFFA5A5
          FDFFA5A5FDFFA5A5FDFFA5A5FDFFA5A5FDFFA5A5FDFFA5A5FDFFA5A5FDFFABAB
          FDFF8989FCFF08086CB0000000290000000D0000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000010800000225131387BD9494FCFFACACFDFFACACFDFFACAC
          FDFFACACFDFFACACFDFFACACFDFFACACFDFFACACFDFFACACFDFFACACFDFFACAC
          FDFFACACFDFFACACFDFFACACFDFFACACFDFFACACFDFFACACFDFFACACFDFFACAC
          FDFFACACFDFFACACFDFFACACFDFFACACFDFFACACFDFFACACFDFFACACFDFFACAC
          FDFFACACFDFFACACFDFFACACFDFFACACFDFFACACFDFFACACFDFFB7B7FDFF7A7A
          FBFE0606579F000000260000010C000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000001070000011A0B0B52968686F9FDB2B2FDFFB2B2
          FDFFB2B2FDFFB2B2FDFFB2B2FDFFB2B2FDFFB2B2FDFFB2B2FDFFB2B2FDFFB2B2
          FDFFB2B2FDFFB2B2FDFFB2B2FDFFB2B2FDFFB2B2FDFFB2B2FDFFB2B2FDFFB2B2
          FDFFB2B2FDFFB2B2FDFFB2B2FDFFB2B2FDFFB2B2FDFFB2B2FDFFB2B2FDFFB2B2
          FEFFB2B2FEFFB2B2FEFFB2B2FEFFB2B2FEFFB3B3FEFFBEBEFDFF5555EBF50303
          2E7A000000200000010B00000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000001050000001203031C5D5656CDE5B5B5
          FDFFB8B8FEFFB8B8FEFFB8B8FEFFB8B8FEFFB8B8FEFFB8B8FEFFB8B8FEFFB8B8
          FEFFB8B8FEFFB8B8FEFFB8B8FEFFB8B8FEFFB8B8FEFFB8B8FEFFB8B8FEFFB8B8
          FEFFB8B8FEFFB8B8FEFFB8B8FEFFB8B8FEFFB8B8FEFFB8B8FEFFB8B8FEFFB8B8
          FEFFB8B8FEFFB8B8FEFFB8B8FEFFC0C0FEFFA7A7FDFF2323A8D201010D4D0000
          0018000001070000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000020000010B000002251717
          56998C8CF5FABDBDFEFFBDBDFEFFBDBDFEFFBDBDFEFFBDBDFEFFBDBDFEFFBDBD
          FEFFBDBDFEFFBDBDFEFFBDBDFEFFBDBDFEFFBDBDFEFFBDBDFEFFBDBDFEFFBDBD
          FEFFBDBDFEFFBDBDFEFFBDBDFEFFBDBDFEFFBDBDFEFFBDBDFEFFBDBDFEFFBDBD
          FEFFBDBDFEFFC3C3FEFFBDBDFEFF5858E1F005053984000000250000010F0000
          0104000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000001050000
          011101010B3F272775AF8A8AF7FBC1C1FFFFC2C2FFFFC2C2FFFFC2C2FFFFC2C2
          FFFFC2C2FFFFC2C2FFFFC2C2FFFFC2C2FFFFC2C2FFFFC2C2FFFFC2C2FFFFC2C2
          FFFFC2C2FFFFC2C2FFFFC2C2FFFFC2C2FFFFC2C2FFFFC2C2FFFFC3C3FFFFCACA
          FFFFB6B6FEFF5D5DE9F30909579D000005370000001500000108000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001010101070000011201010737131352955757CDE49C9CFEFFC5C5FFFFC8C8
          FFFFC7C7FFFFC7C7FFFFC7C7FFFFC7C7FFFFC7C7FFFFC7C7FFFFC7C7FFFFC7C7
          FFFFC7C7FFFFC7C7FFFFC7C7FFFFCACAFFFFCFCFFFFFBBBBFFFF7F7FFDFE3333
          B4D703033D8601010432000000160000010A0000010300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000001060000010E0000001A0202145009094F932D2D
          9CC95A5AEFF57676FEFF9090FFFFA4A4FFFFB0B0FFFFB5B5FFFFB5B5FFFFAEAE
          FFFFA2A2FFFF8C8CFFFF6F6FFFFF4D4DE4EE1A1A8CC00303418801010B450000
          001D000001110000010800000002000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000103000001070101020D0000
          00150000001D02020C4101011A5D03033377030340870202468F0202448E0303
          3E8503033175010116590101093A00000020000000170000010F000001090000
          0104000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010000010300000105000001080000020A0000010C0000010D0000010D0000
          010D0000020B0000010800000106000001030000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object AlertManager: TdxAlertWindowManager
    OptionsAnimate.ShowingAnimation = awaSlide
    OptionsAnimate.ShowingAnimationTime = 600
    OptionsButtons.Buttons = <
      item
        ImageIndex = 0
        Visible = False
      end
      item
        ImageIndex = 3
      end>
    OptionsButtons.Images = ilToolBar
    OptionsCaptionButtons.PopupMenu = pmAlertWindow
    OptionsMessage.Caption.Font.Charset = DEFAULT_CHARSET
    OptionsMessage.Caption.Font.Color = clWindowText
    OptionsMessage.Caption.Font.Height = -13
    OptionsMessage.Caption.Font.Name = 'MS Sans Serif'
    OptionsMessage.Caption.Font.Style = [fsBold]
    OptionsMessage.Images = ilMessages
    OptionsMessage.Text.Font.Charset = DEFAULT_CHARSET
    OptionsMessage.Text.Font.Color = clWindowText
    OptionsMessage.Text.Font.Height = -11
    OptionsMessage.Text.Font.Name = 'MS Sans Serif'
    OptionsMessage.Text.Font.Style = []
    OptionsNavigationPanel.Font.Charset = DEFAULT_CHARSET
    OptionsNavigationPanel.Font.Color = clWindowText
    OptionsNavigationPanel.Font.Height = -11
    OptionsNavigationPanel.Font.Name = 'MS Sans Serif'
    OptionsNavigationPanel.Font.Style = []
    OptionsSize.Height = 110
    OptionsSize.Width = 240
    WindowPosition = awpBottomRight
    OnButtonClick = AlertManagerButtonClick
    Left = 685
    Top = 100
    PixelsPerInch = 96
  end
  object pmAlertWindow: TPopupMenu
    Left = 345
    Top = 168
    object pmUnqueueMessage: TMenuItem
      Caption = 'Unqueue message'
      OnClick = pmUnqueueMessageClick
    end
    object pmDeleteMessage: TMenuItem
      Caption = 'Delete message'
      OnClick = pmDeleteMessageClick
    end
    object pmCopyMessage: TMenuItem
      Caption = 'Copy message to clipboard '
      OnClick = pmCopyMessageClick
    end
  end
  object ilToolBar: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 6554081
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          000E00000014000000150000001700000018000000190000001B0000001C0000
          001E0000001F0000002000000021000000230000001C000000080000000BBF7F
          4DFFBE7E4CFFBE7D4BFFBD7D4AFFBD7C49FFBC7B49FFBC7B48FFBB7A48FFBB7A
          47FFBA7946FFBA7846FFB97846FFB97845FFB97744FF0000001C0000000CC181
          50FFF8DDC1FFFADDBFFFFBDFC1FFFCE1C3FFFDE1C3FFFDE1C2FFFCE0C1FFFBDE
          BFFFF9DBBBFFF7D9B8FFF6D5B4FFF3D1B0FFBA7947FF000000210000000AC385
          54FFEFD1B4FFF9E1C6FFFFE9D0FFFFE9CEFFFFE8CDFFFFE7CCFFFFE7CBFFFFE6
          CAFFFFE5C8FFFDE3C5FFF7D8B9FFECC7A4FFBC7C49FF0000001F00000008C589
          59FFFBE6D1FFF2D6BAFFF3D8BDFFFDE7CFFFFFEBD3FFFFEBD2FFFFEAD1FFFFE9
          CFFFFDE4CAFFF3D4B4FFF0D0AFFFF8DCBFFFBE7E4DFF0000001D00000006C88B
          5DFFFFF1E1FFFFF0DEFFF8E2CDFFF1D6BCFFF6DDC5FFE9CDB1FFE9CDB2FFF6DC
          C2FFF0D2B5FFF7DEC4FFFFEBD3FFFFEAD1FFC08150FF0000001B00000005C98F
          62FFFFF4E8FFFFF3E5FFFFF3E4FFFDEDDAFFD1A987FF9D6130FF9D6130FFD0A9
          85FFFAE5CFFFFEECD7FFFFEED9FFFFEDD8FFC28453FF0000001900000004CB92
          66FFFFF7EDFFFFF5EAFFE9D1BAFFB58157FFB88961FFEEDBC9FFEEDBC8FFB685
          5DFFAF7B4EFFE3C3A3FFFBE6D0FFFDEDD9FFC48758FF0000001600000003CD95
          69FFF6E9DDFFCBA281FFB57D51FFE2C9B4FFFFF9F1FFFFF8F0FFFFF8EFFFFFF7
          EEFFDFC4ADFFA97042FFC1926AFFEDCFB2FFC78B5DFF0000001400000002C58C
          5FFFBD885EFFDDC0A8FFFCF7F1FFFFFBF7FFFFFBF5FFFFFAF4FFFFFAF4FFFFFA
          F3FFFFFAF2FFFBF3E9FFD5B498FFAA6E3FFFB77949FF0000001200000001CC98
          6FFFF9F2EBFFFFFDFBFFFFFDFBFFFFFDFAFFFFFDF9FFFFFCF9FFFFFCF8FFFFFC
          F8FFFFFCF7FFFFFBF6FFFFFBF6FFF6ECE2FFBC8355FF0000001000000001DBB0
          8DFFDAAF8BFFD8AD89FFD8AD88FFD6AB86FFD5A983FFD3A781FFD2A580FFD0A3
          7DFFCFA17BFFCD9F78FFCB9D76FFCA9A73FFC89870FF0000000B000000000000
          0000000000010000000200000002000000030000000400000005000000060000
          00060000000800000008000000090000000B0000000900000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0005000000130000001A0000001B0000001C0000001D0000001E0000001F0000
          00210000002200000023000000240000001D0000000800000000000000000000
          0011BC7F4DFFBB7E4CFFBA7C49FFB87B49FFB87947FFB77846FFB67744FFB576
          43FFB47441FFB37340FFB3723FFFB1713EFF0000001C00000000000000000000
          0014BE8351FFEEE3D6FFF0E4D7FFF1E4D7FFEDE0D3FFEDE0D3FFF0E2D4FFF3E3
          D6FFF1E3D4FFECDDCFFFE6D7C8FFB47441FF0000002300000000000000000106
          091D99836BFFE0D7CDFFE2D9CFFFE3D9CFFFDFD5C9FFCDCDC7FFC0C8CAFFEBDF
          D3FFE7DBCEFFE0D3C6FFD9CDC0FF955A32FF492110CB341F1270000000000003
          041608327BFF26659FFF91AEBDFFB1BBBEFF3573A5FF083076FF85A9BDFFDED4
          CAFFDAD0C5FFB09687FF7A4C34FF7F4C2FFFA0785AFF8F7E6FB8000000000000
          000F11478AFF209ACEFF0C4A8EFF09397FFF0F81BDFF083980FFA9B8BFFFB6A1
          91FF85573EFF885634FFA98262FFC9AD92FF4C48466600000000000000000000
          000D266097FF3DB4DEFF46DFFFFF39D7FCFF2FD4FCFF092F77FF8E644AFF9563
          3DFFB28D6AFFD5C2ACFFEEE4D9FFBF8251FF0000001B00000000000000000E1E
          273C185596FF67D6F1FF69E8FFFF5DE5FFFF51DEFCFF185C9BFF5184A2FFD9C6
          B0FFEFE7DDFFF4EAE0FFF7EADDFFC18554FF0000001A000000000F1A2028226A
          A5F88AD8EEFF99F1FFFF8EEFFFFF84EEFFFF79EBFFFF68E0F9FF1B5698FFA0BC
          CDFFF3E9E0FFF7EADEFFF6E7D8FFC38958FF00000018000000003D85ACDD156D
          ADFF3782B7FF7EBEDCFFB2F5FFFFA8F4FFFF82D1E9FF2E6DA7FF13468CFF2257
          96FFD8DCDAFFF6E7DAFFF5E2D1FFC78D5CFF0000001600000000000000000609
          0A13ACA89BFF5898C3FF8CC3DFFFA5D9ECFF3775ADFFA7C2D4FFDCE0E0FFF6EB
          E0FFF5E6D9FFF4E1D0FFF0DAC6FFC99161FF0000001400000000000000000000
          0006D9A77AFFDDE3E7FF207DB7FF428BBEFFB8CEDCFFF8F1EAFFF8EEE5FFF6EA
          DEFFD09A6BFFCF9869FFCE9768FFCC9565FF0000000D00000000000000000000
          0005DBAB7FFFF7F6F5FF9BCBE1FF5CA5CEFFF7F1EBFFF9F0E8FFF7EADFFFF5E6
          D8FFD29E6FFFFFFCF9FFD5D2CFDC1717162A0000000400000000000000000000
          0003DDAF83FFFDFCFAFFF5F5F3FFDFEAECFFF9F1E9FFF7EBE1FFF4E5D7FFF2E0
          D0FFD5A274FFD5D2D0DB17171626000000040000000000000000000000000000
          0002E0B387FFDFB185FFDFB083FFDDAE82FFDCAD80FFDBAB7FFFDAAA7DFFD8A8
          7BFFD8A679FF1717172400000003000000000000000000000000000000000000
          0000000000020000000300000003000000040000000500000005000000060000
          0007000000060000000200000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00CED5DF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00749B
          CA000954B0004779BB00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00D9CB
          C000B27C5000B7855E00E1DBD600FF00FF00FF00FF00FF00FF00BACBDE002A74
          C5005AB0EA002D82D1004478BB00FF00FF00FF00FF00FF00FF00D9CBC000BA7E
          4B00E9AC7400BE7C4500D3BEAE00FF00FF00FF00FF00FF00FF00B8CBE0003B83
          CE00AFDBF6005AAFEA002E84D1004277BB00FF00FF00D9CBC000BA7E4B00F5BA
          8200F5BA8200B5784500DDD3CB00FF00FF00FF00FF00FF00FF00FF00FF00AEC6
          DE00448BD200AEDAF6005AB0EA002F85D20057749F00BA7E4C00F5BA8200F5BA
          8200B97D4A00DACDC200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00ABC5DF00478ED500AFDBF6006DA2C400B27A4C00F5BA8200F5BA8200B97D
          4A00DACDC200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00ACC5DF005B86B400BD824F00F5BB8200F5BA8200B67B4B00DACD
          C200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00DCCEC200BF855200F6BA8000F5BB8200B87F4E003968A200D3DA
          E200FF00FF00FF00FF00FF00FF007F766D00FF00FF00FF00FF00E1DAD400CEAC
          8C00BB804A00B46F3300FBC69100F6BA8000B77E4E007397BC0083B7E6004982
          C600FF00FF00FF00FF00847B7300ABA299007F766E00FF00FF00CEAC8D00DAA7
          7700F1C69D00F1C59B00FCC69000C1814700DCCFC40083AEDB003281D1005998
          D80071737600625549008D837800AFA59A00ABA3990080766E00BF865100C88D
          5500C88C5500FDD7B200F1C69B00BA7F4900FF00FF00FF00FF00C0D1E2005E6D
          7C00D2CFCB00C9C0B700B5ABA1008E837800847C7400FF00FF00BF865100DBCA
          BB00E3CEBB00C88C5500F1C69C00BC835000FF00FF00FF00FF00FF00FF007569
          5D00D5CEC900CCC4BB00C8C0B70062574A00FF00FF00FF00FF00E0D8D000FF00
          FF00DAC9B900C98E5600DAA77700CEAB8C00FF00FF00FF00FF009D958D00BCB5
          AD00B7AEA600D4CEC900D3CFCB008D857D00FF00FF00FF00FF00FF00FF00E0D7
          CF00BF865100BF865100CEAC8D00E1DAD400A69E9600877B7000DAD6D300FFFF
          FF00D7D4D000766A5E00948C8400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A69F9600887B70008478
          6C009F968D00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000100000009000000140000001F00000028000000290000
          0022000000180000000B00000002000000000000000000000000000000000000
          000000000003000000131E0F035D4A2407AC6E360BDE87420DF786410CF76D35
          0AE1482306B41D0E03680000001A000000050000000000000000000000000000
          0003000000143D1E078D965727EDD39869FFECC09BFFF9D9BAFFF8D6B6FFE9B9
          8FFFCD8E5BFF8F511FF23A1D059E0000001F0000000400000000000000010000
          000E3F200888B87946FAEEC6A4FFC4854FFFB06325FFAB5917FFA95816FFAA5E
          1FFFB36E34FFE7B488FFAE6A34FC3A1C069D0000001900000002000000052211
          054D9E6134E8F1D1B5FFEEAC72FFBF681FFFEAD4C1FFFFFFFFFFFFFFFFFFF4E8
          DFFFAC5612FFDC8B4DFFE7B68AFF905121F11D0E03650000000A00000009552C
          0C96E1B38DFFF8D5B3FFEEA15AFFC77731FFC5834CFFFFFFFFFFFFFFFFFFD3A6
          81FFB05813FFD0681AFFE8AC7BFFCF9160FF492408B1000000160000000B8645
          12CCF7E1CDFFF7C697FFF1AA65FFD68A45FFC68248FFFFFFFFFFFFFFFFFFD09D
          73FFC46519FFD56C1CFFDE8D4EFFEBBE98FF70390CDE0000001F0000000AAA59
          18F0FEF8F3FFF9C088FFF5B371FFDC9551FFE3C0A1FFFFFFFFFFFFFFFFFFD3A0
          75FFCB6A1CFFD9701FFFD9772CFFF9DDC4FF8E4610F60000002400000009B363
          1DF0FEFAF5FFFAC895FFF8BC7FFFE09D5DFFDFB38CFFF4E4D7FFFFFFFFFFD6A5
          7BFFD07122FFDC7421FFDD7C30FFF9E1CBFF914812F600000022000000069758
          1EC6FAEADBFFFCD9B5FFFAC48DFFE4A467FFD18B4BFFCB8240FFC67A36FFC172
          2DFFD67C30FFE17B27FFE79859FFF0CAAAFF783D10D80000001A000000036940
          1788EFCCA9FFFEEAD7FFFBCA99FFE7AD75FFEFD5BCFFFFFFFFFFF1DECCFFCA82
          42FFE38E41FFE78533FFF2C096FFDCA376FF532A0BA200000010000000012B1C
          0C3AC08B53E0FAEBDAFFFDDFC0FFEBB682FFE7BF98FFFCF8F4FFFFFFFFFFD599
          63FFE7974AFFF2B278FFF2D1B4FFA6632FE82312055100000006000000000000
          0002583B1A6DDFAF7DF7FAEBDBFFF6DEC8FFE2B58AFFDBA16AFFD5965AFFD194
          5EFFF2CBA7FFF5D9C0FFC9874FF948250A810000000D00000001000000000000
          000000000002593E1D6CC6945AE0F2D0ADFFFBECDCFFFEFAF5FFFEF9F4FFF9E5
          D1FFE9BB92FFB06E36E44B270A7B0000000C0000000200000000000000000000
          000000000000000000012D2010386E4B2285A26A2DC4C27B30EFBF7328EF9757
          1BC763370F8B2715054100000007000000010000000000000000000000000000
          0000000000000000000000000001000000020000000300000005000000050000
          0005000000040000000200000000000000000000000000000000}
      end>
  end
end

object frmUserAdministrator: TfrmUserAdministrator
  Left = 0
  Top = 0
  Caption = 'User Administrator'
  ClientHeight = 569
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClick = PermissionToGroup
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcPermissions: TcxPageControl
    Left = 0
    Top = 0
    Width = 792
    Height = 569
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tsUsers
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 565
    ClientRectLeft = 4
    ClientRectRight = 788
    ClientRectTop = 24
    object tsUsers: TcxTabSheet
      Caption = 'Users'
      ImageIndex = 0
      OnShow = tsUsersShow
      object Splitter1: TSplitter
        Left = 250
        Top = 0
        Width = 5
        Height = 541
        ExplicitLeft = 145
        ExplicitHeight = 213
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 250
        Height = 541
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 3
        TabOrder = 0
        object Label1: TLabel
          Left = 3
          Top = 3
          Width = 244
          Height = 15
          Align = alTop
          AutoSize = False
          Caption = '&Users:'
          ExplicitWidth = 139
        end
        object tvUsersUsers: TcxTreeView
          Left = 3
          Top = 18
          Width = 244
          Height = 520
          Align = alClient
          PopupMenu = popUsers
          TabOrder = 0
          HideSelection = False
          ReadOnly = True
        end
      end
      object Panel10: TPanel
        Left = 255
        Top = 0
        Width = 51
        Height = 541
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object btnPermissionToUser: TcxButton
          Left = 8
          Top = 80
          Width = 33
          Height = 25
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF004C2600FF602F00FF723800FF723800FF623000FF5028
            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00643100FF643100FF984B00FFB85B00FFBC5D00FFBC5D00FFBA5C00FF9C4D
            00FF6C3500FF6C3500FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF007439
            00FF884300FFC05F00FFC26000FFBC5D00FFB85B00FFBC5D00FFBC5D00FFC05F
            00FFC26000FF8A4400FF502800FFFF00FF00FF00FF00FF00FF00743900FF9449
            00FFD26800FFC86300FFBC5D00FFB85B00FFB85B00FFBA5C00FFBA5C00FFBA5C
            00FFBC5D00FFC26000FF8A4400FF6C3500FFFF00FF00FF00FF00743900FFDE6E
            00FFD86B00FFCA6400FFBC5D00FFD3975DFFFAF3EDFFF6EADEFFC37020FFBA5C
            00FFBA5C00FFBC5D00FFC26000FF6C3500FFFF00FF007A3C00FFB45900FFF077
            00FFD86B00FFC26000FFD39354FFFDFAF7FFFFFFFFFFE3BC96FFBC6108FFBA5C
            00FFBA5C00FFBA5C00FFC05F00FF9C4D00FF602F00FF7A3C00FFE06F00FFF077
            00FFDE6E00FFD69352FFFDF9F6FFFEFEFDFFE0B489FFBA5C00FFBA5C00FFBA5C
            00FFBA5C00FFBA5C00FFBE5E00FFB25800FF602F00FF904700FFF87B00FFFA7C
            00FFFCB26AFFFEF8F2FFFFFFFFFFFEFBF8FFF9DABCFFF8D8B9FFEDD5BDFFEDD5
            BDFFEDD5BEFFEED7C0FFBC5D00FFBC5D00FF6A3400FFA04F00FFFF9125FFFF84
            0BFFFEDCBAFFFFFFFFFFFFFFFFFFFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFBE5E00FFBC5D00FF723800FFA04F00FFFF9F41FFFF98
            33FFF58618FFFED0A3FFFFFFFFFFFFFCFAFFFCBD80FFE9923CFFE0954AFFDF94
            4AFFDE944BFFDE934AFFC86300FFB85B00FF663200FFA04F00FFFF9833FFFFBF
            81FFFF7E00FFF27902FFFEC792FFFFFFFFFFFFF1E3FFF39D49FFDE6E00FFDA6C
            00FFDA6C00FFD26800FFCA6400FFAA5400FF663200FFFF00FF00EC7500FFFFD3
            A9FFFFAD5DFFE87300FFF07802FFFEC38AFFFFFFFFFFFFFAF5FFE98522FFDA6C
            00FFD66A00FFCE6600FFD46900FF8E4600FFFF00FF00FF00FF00EC7500FFFFA0
            43FFFFE3C7FFFFAC5BFFFA7C00FFEE7905FFFDC893FFFED4AAFFEB7C0EFFE270
            00FFDE6E00FFE06F00FFC46100FF8E4600FFFF00FF00FF00FF00FF00FF00D268
            00FFFFAD5DFFFFE9D3FFFFCA97FFFF9E3FFFFF8E1FFFFF850DFFFF8813FFFF88
            13FFFF8105FFD66A00FF8A4400FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF9833FFFF9833FFFFC995FFFFDFBFFFFFD2A7FFFFC58DFFFFB873FFFF9B
            39FFE06F00FFE06F00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00E87300FFFF8A17FFFF952DFFFF9125FFFC7D00FFC662
            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 0
          OnClick = GroupToUser
        end
        object btnDelUserPermission: TcxButton
          Left = 8
          Top = 112
          Width = 33
          Height = 25
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF004C2600FF602F00FF723800FF723800FF623000FF5028
            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00643100FF643100FF984B00FFB85B00FFBC5D00FFBC5D00FFBA5C00FF9C4D
            00FF6C3500FF6C3500FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF007439
            00FF884300FFC05F00FFC26000FFBC5D00FFB85B00FFBC5D00FFBC5D00FFC05F
            00FFC26000FF8A4400FF502800FFFF00FF00FF00FF00FF00FF00743900FF9449
            00FFD26800FFC86300FFBC5D00FFB85B00FFB85B00FFBA5C00FFBA5C00FFBA5C
            00FFBC5D00FFC26000FF8A4400FF6C3500FFFF00FF00FF00FF00743900FFDE6E
            00FFD86B00FFCA6400FFBC5D00FFC37020FFF6EADEFFFAF3EDFFD3975DFFBA5C
            00FFBA5C00FFBC5D00FFC26000FF6C3500FFFF00FF007A3C00FFB45900FFF077
            00FFD86B00FFC26000FFBE5E00FFBC6108FFE3BC96FFFFFFFFFFFDFAF7FFD192
            54FFBA5C00FFBA5C00FFC05F00FF9C4D00FF602F00FF7A3C00FFE06F00FFF077
            00FFDE6E00FFC26000FFBC5D00FFBE5E00FFBC5D00FFDFB489FFFEFEFDFFFDF9
            F6FFD09052FFBA5C00FFBE5E00FFB25800FF602F00FF904700FFF87B00FFFA7C
            00FFFEDFC0FFFADCBEFFF7DABDFFFADBBDFFF9D9B9FFF8DABCFFFDFAF8FFFFFF
            FFFFFBF7F2FFD7A06AFFBC5D00FFBC5D00FF6A3400FFA04F00FFFF9125FFFF84
            0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFFFF
            FFFFFFFFFFFFECD3BAFFBE5E00FFBC5D00FF723800FFA04F00FFFF9F41FFFF98
            33FFF7A04AFFFDA34BFFFDA34AFFFDA34AFFFA9A3CFFF1B880FFFEFCFAFFFFFF
            FFFFEEC8A3FFD47518FFC86300FFB85B00FF663200FFA04F00FFFF9833FFFFBF
            81FFFF7E00FFF27800FFFC7D00FFFC7D00FFFDA249FFFDF0E3FFFFFFFFFFEFC0
            92FFDA6D02FFD26800FFCA6400FFAA5400FF663200FFFF00FF00EC7500FFFFD3
            A9FFFFAD5DFFE87300FFF07700FFFC8E22FFFFFAF5FFFFFFFFFFF4BE8AFFDA6D
            02FFD66A00FFCE6600FFD46900FF8E4600FFFF00FF00FF00FF00EC7500FFFFA0
            43FFFFE3C7FFFFAC5BFFFA7C00FFEF7E0EFFFDD3AAFFFEC893FFEA7705FFE270
            00FFDE6E00FFE06F00FFC46100FF8E4600FFFF00FF00FF00FF00FF00FF00D268
            00FFFFAD5DFFFFE9D3FFFFCA97FFFF9E3FFFFF8E1FFFFF850DFFFF8813FFFF88
            13FFFF8105FFD66A00FF8A4400FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF9833FFFF9833FFFFC995FFFFDFBFFFFFD2A7FFFFC58DFFFFB873FFFF9B
            39FFE06F00FFE06F00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00E87300FFFF8A17FFFF952DFFFF9125FFFC7D00FFC662
            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 1
          OnClick = DeleteGroupFromUser
        end
      end
      object Panel3: TPanel
        Left = 306
        Top = 0
        Width = 478
        Height = 541
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 3
        TabOrder = 2
        object Label2: TLabel
          Left = 3
          Top = 3
          Width = 472
          Height = 15
          Align = alTop
          AutoSize = False
          Caption = '&Groups:'
          ExplicitWidth = 163
        end
        object lvUsersGroups: TcxListView
          Left = 3
          Top = 18
          Width = 472
          Height = 520
          Align = alClient
          Columns = <
            item
              Caption = 'Group'
              Width = 150
            end
            item
              Caption = 'Description'
              Width = 250
            end>
          MultiSelect = True
          RowSelect = True
          TabOrder = 0
          ViewStyle = vsReport
        end
      end
    end
    object tsGroups: TcxTabSheet
      Caption = 'Groups'
      ImageIndex = 1
      object Splitter2: TSplitter
        Left = 250
        Top = 0
        Width = 5
        Height = 541
        ExplicitLeft = 145
        ExplicitHeight = 213
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 250
        Height = 541
        Align = alLeft
        BevelOuter = bvNone
        BorderWidth = 3
        TabOrder = 0
        object Label4: TLabel
          Left = 3
          Top = 3
          Width = 244
          Height = 15
          Align = alTop
          AutoSize = False
          Caption = '&Groups:'
          ExplicitWidth = 139
        end
        object tvGroupsGroups: TcxTreeView
          Left = 3
          Top = 18
          Width = 244
          Height = 520
          Align = alClient
          PopupMenu = popGroups
          TabOrder = 0
          HideSelection = False
          ReadOnly = True
        end
      end
      object Panel11: TPanel
        Left = 255
        Top = 0
        Width = 51
        Height = 541
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object btnPermissionToGroup: TcxButton
          Left = 6
          Top = 81
          Width = 33
          Height = 25
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF004C2600FF602F00FF723800FF723800FF623000FF5028
            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00643100FF643100FF984B00FFB85B00FFBC5D00FFBC5D00FFBA5C00FF9C4D
            00FF6C3500FF6C3500FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF007439
            00FF884300FFC05F00FFC26000FFBC5D00FFB85B00FFBC5D00FFBC5D00FFC05F
            00FFC26000FF8A4400FF502800FFFF00FF00FF00FF00FF00FF00743900FF9449
            00FFD26800FFC86300FFBC5D00FFB85B00FFB85B00FFBA5C00FFBA5C00FFBA5C
            00FFBC5D00FFC26000FF8A4400FF6C3500FFFF00FF00FF00FF00743900FFDE6E
            00FFD86B00FFCA6400FFBC5D00FFD3975DFFFAF3EDFFF6EADEFFC37020FFBA5C
            00FFBA5C00FFBC5D00FFC26000FF6C3500FFFF00FF007A3C00FFB45900FFF077
            00FFD86B00FFC26000FFD39354FFFDFAF7FFFFFFFFFFE3BC96FFBC6108FFBA5C
            00FFBA5C00FFBA5C00FFC05F00FF9C4D00FF602F00FF7A3C00FFE06F00FFF077
            00FFDE6E00FFD69352FFFDF9F6FFFEFEFDFFE0B489FFBA5C00FFBA5C00FFBA5C
            00FFBA5C00FFBA5C00FFBE5E00FFB25800FF602F00FF904700FFF87B00FFFA7C
            00FFFCB26AFFFEF8F2FFFFFFFFFFFEFBF8FFF9DABCFFF8D8B9FFEDD5BDFFEDD5
            BDFFEDD5BEFFEED7C0FFBC5D00FFBC5D00FF6A3400FFA04F00FFFF9125FFFF84
            0BFFFEDCBAFFFFFFFFFFFFFFFFFFFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFBE5E00FFBC5D00FF723800FFA04F00FFFF9F41FFFF98
            33FFF58618FFFED0A3FFFFFFFFFFFFFCFAFFFCBD80FFE9923CFFE0954AFFDF94
            4AFFDE944BFFDE934AFFC86300FFB85B00FF663200FFA04F00FFFF9833FFFFBF
            81FFFF7E00FFF27902FFFEC792FFFFFFFFFFFFF1E3FFF39D49FFDE6E00FFDA6C
            00FFDA6C00FFD26800FFCA6400FFAA5400FF663200FFFF00FF00EC7500FFFFD3
            A9FFFFAD5DFFE87300FFF07802FFFEC38AFFFFFFFFFFFFFAF5FFE98522FFDA6C
            00FFD66A00FFCE6600FFD46900FF8E4600FFFF00FF00FF00FF00EC7500FFFFA0
            43FFFFE3C7FFFFAC5BFFFA7C00FFEE7905FFFDC893FFFED4AAFFEB7C0EFFE270
            00FFDE6E00FFE06F00FFC46100FF8E4600FFFF00FF00FF00FF00FF00FF00D268
            00FFFFAD5DFFFFE9D3FFFFCA97FFFF9E3FFFFF8E1FFFFF850DFFFF8813FFFF88
            13FFFF8105FFD66A00FF8A4400FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF9833FFFF9833FFFFC995FFFFDFBFFFFFD2A7FFFFC58DFFFFB873FFFF9B
            39FFE06F00FFE06F00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00E87300FFFF8A17FFFF952DFFFF9125FFFC7D00FFC662
            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 0
          OnClick = PermissionToGroup
        end
        object btnDelGroupPermission: TcxButton
          Left = 6
          Top = 112
          Width = 33
          Height = 25
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF004C2600FF602F00FF723800FF723800FF623000FF5028
            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00643100FF643100FF984B00FFB85B00FFBC5D00FFBC5D00FFBA5C00FF9C4D
            00FF6C3500FF6C3500FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF007439
            00FF884300FFC05F00FFC26000FFBC5D00FFB85B00FFBC5D00FFBC5D00FFC05F
            00FFC26000FF8A4400FF502800FFFF00FF00FF00FF00FF00FF00743900FF9449
            00FFD26800FFC86300FFBC5D00FFB85B00FFB85B00FFBA5C00FFBA5C00FFBA5C
            00FFBC5D00FFC26000FF8A4400FF6C3500FFFF00FF00FF00FF00743900FFDE6E
            00FFD86B00FFCA6400FFBC5D00FFC37020FFF6EADEFFFAF3EDFFD3975DFFBA5C
            00FFBA5C00FFBC5D00FFC26000FF6C3500FFFF00FF007A3C00FFB45900FFF077
            00FFD86B00FFC26000FFBE5E00FFBC6108FFE3BC96FFFFFFFFFFFDFAF7FFD192
            54FFBA5C00FFBA5C00FFC05F00FF9C4D00FF602F00FF7A3C00FFE06F00FFF077
            00FFDE6E00FFC26000FFBC5D00FFBE5E00FFBC5D00FFDFB489FFFEFEFDFFFDF9
            F6FFD09052FFBA5C00FFBE5E00FFB25800FF602F00FF904700FFF87B00FFFA7C
            00FFFEDFC0FFFADCBEFFF7DABDFFFADBBDFFF9D9B9FFF8DABCFFFDFAF8FFFFFF
            FFFFFBF7F2FFD7A06AFFBC5D00FFBC5D00FF6A3400FFA04F00FFFF9125FFFF84
            0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFFFF
            FFFFFFFFFFFFECD3BAFFBE5E00FFBC5D00FF723800FFA04F00FFFF9F41FFFF98
            33FFF7A04AFFFDA34BFFFDA34AFFFDA34AFFFA9A3CFFF1B880FFFEFCFAFFFFFF
            FFFFEEC8A3FFD47518FFC86300FFB85B00FF663200FFA04F00FFFF9833FFFFBF
            81FFFF7E00FFF27800FFFC7D00FFFC7D00FFFDA249FFFDF0E3FFFFFFFFFFEFC0
            92FFDA6D02FFD26800FFCA6400FFAA5400FF663200FFFF00FF00EC7500FFFFD3
            A9FFFFAD5DFFE87300FFF07700FFFC8E22FFFFFAF5FFFFFFFFFFF4BE8AFFDA6D
            02FFD66A00FFCE6600FFD46900FF8E4600FFFF00FF00FF00FF00EC7500FFFFA0
            43FFFFE3C7FFFFAC5BFFFA7C00FFEF7E0EFFFDD3AAFFFEC893FFEA7705FFE270
            00FFDE6E00FFE06F00FFC46100FF8E4600FFFF00FF00FF00FF00FF00FF00D268
            00FFFFAD5DFFFFE9D3FFFFCA97FFFF9E3FFFFF8E1FFFFF850DFFFF8813FFFF88
            13FFFF8105FFD66A00FF8A4400FFFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF9833FFFF9833FFFFC995FFFFDFBFFFFFD2A7FFFFC58DFFFFB873FFFF9B
            39FFE06F00FFE06F00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00E87300FFFF8A17FFFF952DFFFF9125FFFC7D00FFC662
            00FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 1
          OnClick = DeletePermissionFromGroup
        end
      end
      object Panel6: TPanel
        Left = 306
        Top = 0
        Width = 478
        Height = 541
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 3
        TabOrder = 2
        object Label3: TLabel
          Left = 3
          Top = 3
          Width = 472
          Height = 15
          Align = alTop
          AutoSize = False
          Caption = 'P&ermissions:'
          ExplicitLeft = 6
          ExplicitTop = 0
          ExplicitWidth = 232
        end
        object lvGroupsPermissions: TcxListView
          Left = 3
          Top = 18
          Width = 472
          Height = 520
          Align = alClient
          Columns = <
            item
              Caption = 'Permission'
              Width = 150
            end
            item
              Caption = 'Description'
              Width = 250
            end>
          MultiSelect = True
          RowSelect = True
          TabOrder = 0
          ViewStyle = vsReport
        end
        object grdPermission: TcxGrid
          Left = 3
          Top = 18
          Width = 472
          Height = 520
          Align = alClient
          TabOrder = 1
          RootLevelOptions.DetailTabsPosition = dtpTop
          object gvwMenuPermission: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsMenuPermission
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.HideSelection = True
            OptionsSelection.InvertSelect = False
            OptionsView.GridLineColor = 16777088
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.BandHeaders = False
            Styles.ContentOdd = dmGlobal.BlueToggle
            Styles.FilterRowInfoText = dmGlobal.GridFilterBox
            Bands = <
              item
              end>
            object gvwMenuPermissionPermission: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Permission'
              Width = 200
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwMenuPermissionDescription: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Description'
              Width = 240
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
          end
          object gvwReportPermission: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsReportPermission
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.HideSelection = True
            OptionsSelection.InvertSelect = False
            OptionsView.GridLineColor = 16777088
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.BandHeaders = False
            Styles.ContentOdd = dmGlobal.BlueToggle
            Styles.FilterRowInfoText = dmGlobal.GridFilterBox
            Bands = <
              item
              end>
            object gvwReportPermissionPermission: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Permission'
              Width = 200
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwReportPermissionDescription: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Description'
              Width = 240
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
          end
          object gvwStaticPermission: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsStaticPermission
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.HideSelection = True
            OptionsSelection.InvertSelect = False
            OptionsView.GridLineColor = 16777088
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.BandHeaders = False
            Styles.ContentOdd = dmGlobal.BlueToggle
            Styles.FilterRowInfoText = dmGlobal.GridFilterBox
            Bands = <
              item
              end>
            object gvwStaticPermissionPermission: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Permission'
              Width = 200
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwStaticPermissionDescription: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Description'
              Width = 240
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
          end
          object gvwAdminPermission: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsAdminPermission
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsSelection.HideSelection = True
            OptionsSelection.InvertSelect = False
            OptionsView.GridLineColor = 16777088
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.BandHeaders = False
            Styles.ContentOdd = dmGlobal.BlueToggle
            Styles.FilterRowInfoText = dmGlobal.GridFilterBox
            Bands = <
              item
              end>
            object gvwAdminPermissionPermission: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Permission'
              Width = 200
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object gvwAdminPermissionDescription: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Description'
              Width = 240
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
          end
          object grdPermissionLevel1: TcxGridLevel
            Caption = 'Menu Permission'
            GridView = gvwMenuPermission
          end
          object grdPermissionLevel2: TcxGridLevel
            Caption = 'Report Permission'
            GridView = gvwReportPermission
          end
          object grdPermissionLevel3: TcxGridLevel
            Caption = 'Static Permission'
            GridView = gvwStaticPermission
          end
          object grdPermissionLevel4: TcxGridLevel
            Caption = 'Admin Permission'
            GridView = gvwAdminPermission
          end
        end
      end
    end
  end
  object popGroups: TPopupMenu
    Left = 24
    Top = 88
    object mnuAddGroup: TMenuItem
      Caption = 'Add'
      OnClick = AddGroup
    end
    object mnuEditGroup: TMenuItem
      Caption = 'Edit'
      Default = True
      OnClick = EditGroup
    end
    object mnuRemoveGroup: TMenuItem
      Caption = 'Delete'
      OnClick = DeleteGroup
    end
  end
  object popUsers: TPopupMenu
    Left = 24
    Top = 136
    object popUser: TMenuItem
      Caption = 'Add'
      OnClick = AddUser
    end
    object MenuItem2: TMenuItem
      Caption = 'Edit'
      Default = True
      OnClick = EditUser
    end
    object MenuItem3: TMenuItem
      Caption = 'Delete'
      OnClick = DeleteUser
    end
    object ResetPassword1: TMenuItem
      Caption = 'Reset Password'
      OnClick = ResetPassword1Click
    end
    object UnlockUser1: TMenuItem
      Caption = 'Unlock User'
      OnClick = UnlockUser1Click
    end
  end
  object cdsMenuPermission: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 408
    Top = 240
    object cdsMenuPermissionPermission: TStringField
      FieldName = 'Permission'
      Size = 200
    end
    object cdsMenuPermissionDescription: TStringField
      FieldName = 'Description'
      Size = 200
    end
  end
  object cdsReportPermission: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 408
    Top = 288
    object cdsReportPermissionPermission: TStringField
      FieldName = 'Permission'
      Size = 200
    end
    object cdsReportPermissionDescription: TStringField
      FieldName = 'Description'
      Size = 200
    end
  end
  object dsMenuPermission: TDataSource
    DataSet = cdsMenuPermission
    Left = 536
    Top = 240
  end
  object dsReportPermission: TDataSource
    DataSet = cdsReportPermission
    Left = 536
    Top = 288
  end
  object cdsStaticPermission: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 408
    Top = 384
    object cdsStaticPermissionPermission: TStringField
      FieldName = 'Permission'
      Size = 200
    end
    object cdsStaticPermissionDescription: TStringField
      FieldName = 'Description'
      Size = 200
    end
  end
  object cdsAdminPermission: TNClientDataset
    Aggregates = <>
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 408
    Top = 336
    object cdsAdminPermissionPermission: TStringField
      FieldName = 'Permission'
      Size = 200
    end
    object cdsAdminPermissionDescription: TStringField
      FieldName = 'Description'
      Size = 200
    end
  end
  object dsAdminPermission: TDataSource
    DataSet = cdsAdminPermission
    Left = 536
    Top = 336
  end
  object dsStaticPermission: TDataSource
    DataSet = cdsStaticPermission
    Left = 536
    Top = 384
  end
end

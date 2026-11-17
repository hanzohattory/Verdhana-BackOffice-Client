object frmLuAccounts: TfrmLuAccounts
  Left = 0
  Top = 0
  Caption = 'Accounts'
  ClientHeight = 516
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 471
    Width = 633
    Height = 45
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 536
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
  end
  object grdLuAccount: TcxGrid
    Left = 0
    Top = 0
    Width = 633
    Height = 471
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 120
    ExplicitTop = 120
    ExplicitWidth = 250
    ExplicitHeight = 200
    object gvwLuAccount: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Bands = <
        item
        end>
    end
    object glvLuAccount: TcxGridLevel
      GridView = gvwLuAccount
    end
  end
end

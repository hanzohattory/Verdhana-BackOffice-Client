object frmFilterInput: TfrmFilterInput
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmFilterInput'
  ClientHeight = 70
  ClientWidth = 381
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object dxBarManager1: TdxBarManager
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
    Left = 296
    Top = 8
    DockControlHeights = (
      0
      0
      70
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 24
      DockingStyle = dsTop
      FloatLeft = 435
      FloatTop = 8
      FloatClientWidth = 162
      FloatClientHeight = 22
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 182
          Visible = True
          ItemName = 'txtFilter'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 405
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 46
      DockingStyle = dsTop
      FloatLeft = 405
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      OneOnRow = True
      Row = 2
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object txtFilter: TcxBarEditItem
      Caption = 'Filter by : '
      Category = 0
      Hint = 'Filter by : '
      Visible = ivAlways
      OnCurChange = txtFilterCurChange
      OnEnter = txtFilterEnter
      ShowCaption = True
      PropertiesClassName = 'TcxTextEditProperties'
      Properties.AutoSelect = False
      Properties.ValidateOnEnter = True
      InternalEditValue = ' '
    end
  end
end

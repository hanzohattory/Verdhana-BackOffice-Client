object frmBasic: TfrmBasic
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmBasic'
  ClientHeight = 374
  ClientWidth = 607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 13
  object popDocking: TPopupMenu
    OwnerDraw = True
    Left = 408
    Top = 64
  end
  object ActionPermission: TNActionPermission
    MenuBar = dmGlobal.menuBar
    Actions = <>
    AssignedPermission = <>
    Left = 296
    Top = 64
  end
end

inherited frmReportTest: TfrmReportTest
  Caption = 'Test'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcParameter: TdxLayoutControl
    inherited lcParameterGroup_Root: TdxLayoutGroup
      Index = -1
    end
  end
  inherited spReport: TcxSplitter
    ExplicitWidth = 0
  end
  inherited ActionPermission: TNActionPermission
    AssignedPermission = <
      item
        Name = 'Reports'
        Description = 'View Reports'
      end>
    Top = 323
  end
  inherited barMReport: TdxBarManager
    DockControlHeights = (
      0
      0
      22
      0)
  end
end

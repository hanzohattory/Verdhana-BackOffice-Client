inherited frmSlikInterfaceList: TfrmSlikInterfaceList
  Caption = 'SLIK Inteface'
  TextHeight = 13
  inherited grdMaster: TcxGrid
    LevelTabs.Style = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.ScrollbarMode = sbmClassic
    RootLevelOptions.DetailTabsPosition = dtpTop
    inherited gvwMaster: TcxGridDBBandedTableView
      Bands = <
        item
        end
        item
        end>
      object gvwMasterID_LAPORAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID_LAPORAN'
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwMasterKODE_REGISTER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_REGISTER'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwMasterNOMOR_REKENING_FASILITAS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOMOR_REKENING_FASILITAS'
        Width = 157
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwMasterCIF_DEBITUR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CIF_DEBITUR'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwMasterKODE_JENIS_SEGMEN_FASILITAS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_JENIS_SEGMEN_FASILITAS'
        Width = 170
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwMasterKODE_STATUS_AGUNAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_STATUS_AGUNAN'
        Width = 125
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwMasterKODE_JENIS_AGUNAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_JENIS_AGUNAN'
        Width = 115
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwMasterPERINGKAT_AGUNAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PERINGKAT_AGUNAN'
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwMasterLEMBAGA_PEMERINGKAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEMBAGA_PEMERINGKAT'
        Width = 128
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwMasterKODE_JENIS_PENGIKATAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_JENIS_PENGIKATAN'
        Width = 136
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwMasterTANGGAL_PENGIKATAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TANGGAL_PENGIKATAN'
        Width = 121
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwMasterNAMA_PEMILIK_AGUNAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NAMA_PEMILIK_AGUNAN'
        Width = 128
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwMasterBUKTI_KEPEMILIKAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BUKTI_KEPEMILIKAN'
        Width = 106
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwMasterALAMAT_AGUNAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALAMAT_AGUNAN'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwMasterKODE_KOTA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_KOTA'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwMasterNILAI_AGUNAN_SESUAI_NJOP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NILAI_AGUNAN_SESUAI_NJOP'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwMasterNILAI_AGUNAN_MENURUT_PELAPOR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NILAI_AGUNAN_MENURUT_PELAPOR'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwMasterTANGGAL_PENILAIAN_AGUNAN_MENURUT_PELAPOR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TANGGAL_PENILAIAN_AGUNAN_MENURUT_PELAPOR'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwMasterNILAI_AGUNAN_MENURUT_PENILAI_INDEPENDEN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NILAI_AGUNAN_MENURUT_PENILAI_INDEPENDEN'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwMasterNAMA_PENILAI_INDEPENDEN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NAMA_PENILAI_INDEPENDEN'
        Width = 149
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwMasterTANGGAL_PENILAIAN_AGUNAN_MENURUT_PENILAI_INDEPENDEN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TANGGAL_PENILAIAN_AGUNAN_MENURUT_PENILAI_INDEPENDEN'
        Width = 327
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwMasterSTATUS_PARIPASU: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STATUS_PARIPASU'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwMasterPRESENTASE_PARIPASU: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRESENTASE_PARIPASU'
        Width = 125
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwMasterSTATUS_AGUNAN_KREDIT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STATUS_AGUNAN_KREDIT'
        Width = 134
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwMasterDIASURANSIKAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'DIASURANSIKAN'
        Width = 88
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwMasterKETERANGAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KETERANGAN'
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwMasterKODE_KANTOR_CABANG: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_KANTOR_CABANG'
        Width = 127
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwMasterOPERASI_DATA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OPERASI_DATA'
        Width = 83
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
    end
    object gvwD02: TcxGridDBBandedTableView [1]
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsD02
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Bands = <
        item
        end>
      object gvwD02ID_LAPORAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID_LAPORAN'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwD02CIF_DEBITUR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CIF_DEBITUR'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwD02ID_BADAN_USAHA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID_BADAN_USAHA'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwD02NAMA_BADAN_USAHA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NAMA_BADAN_USAHA'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwD02KODE_BENTUK_BADAN_USAHA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_BENTUK_BADAN_USAHA'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwD02TEMPAT_PENDIRIAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TEMPAT_PENDIRIAN'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwD02NOMOR_AKTA_PENDIRIAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOMOR_AKTA_PENDIRIAN'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwD02TANGGAL_AKTA_PENDIRIAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TANGGAL_AKTA_PENDIRIAN'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwD02NOMOR_AKTA_PERUBAHAN_TERAKHIR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOMOR_AKTA_PERUBAHAN_TERAKHIR'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwD02TANGGAL_AKTA_PERUBAHAN_TERAKHIR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TANGGAL_AKTA_PERUBAHAN_TERAKHIR'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwD02NOMOR_TELEPON: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOMOR_TELEPON'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwD02NOMOR_TELEPON_SELULER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOMOR_TELEPON_SELULER'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwD02EMAIL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EMAIL'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwD02ALAMAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALAMAT'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwD02KELURAHAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KELURAHAN'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwD02KECAMATAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KECAMATAN'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwD02KODE_KOTA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_KOTA'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwD02KODE_POS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_POS'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwD02KODE_NEGARA_DOMISILI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_NEGARA_DOMISILI'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwD02KODE_BIDANG_USAHA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_BIDANG_USAHA'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwD02KODE_HUBUNGAN_DENGAN_PELAPOR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_HUBUNGAN_DENGAN_PELAPOR'
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwD02MELANGGAR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MELANGGAR'
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwD02MELAMPAUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MELAMPAUI'
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwD02GO_PUBLIC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GO_PUBLIC'
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwD02KODE_GOLONGAN_DEBITUR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_GOLONGAN_DEBITUR'
        Width = 144
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwD02RATING_DEBITUR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RATING_DEBITUR'
        Width = 93
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwD02LEMBAGA_PEMERINGKAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LEMBAGA_PEMERINGKAT'
        Width = 128
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwD02TANGGAL_PEMERINGKATAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TANGGAL_PEMERINGKATAN'
        Width = 142
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwD02NAMA_GROUP_USAHA_DEBITUR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NAMA_GROUP_USAHA_DEBITUR'
        Width = 165
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwD02KODE_KANTOR_CABANG: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_KANTOR_CABANG'
        Width = 127
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwD02OPERASI_DATA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OPERASI_DATA'
        Width = 83
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
    end
    object gvwF06: TcxGridDBBandedTableView [2]
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsF06
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Bands = <
        item
        end>
      object gvwF06ID_LAPORAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID_LAPORAN'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwF06NOMOR_REKENING_FASILITAS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOMOR_REKENING_FASILITAS'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwF06CIF_DEBITUR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CIF_DEBITUR'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwF06KODE_JENIS_FASILITAS_LAIN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_JENIS_FASILITAS_LAIN'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwF06SUMBER_DANA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SUMBER_DANA'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwF06TANGGAL_MULAI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TANGGAL_MULAI'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwF06TANGGAL_JATUH_TEMPO: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TANGGAL_JATUH_TEMPO'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwF06SUKU_BUNGA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SUKU_BUNGA'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwF06KODE_VALUTA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_VALUTA'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwF06NOMINAL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOMINAL'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwF06NILAI_DALAM_MATA_UANG_ASAL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NILAI_DALAM_MATA_UANG_ASAL'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwF06KODE_KUALITAS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_KUALITAS'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwF06TANGGAL_MACET: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TANGGAL_MACET'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwF06KODE_SEBAB_MACET: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_SEBAB_MACET'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwF06TUNGGAKAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TUNGGAKAN'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwF06JUMLAH_HARI_TUNGGAKAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JUMLAH_HARI_TUNGGAKAN'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwF06KODE_KONDISI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_KONDISI'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwF06TANGGAL_KONDISI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TANGGAL_KONDISI'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwF06KETERANGAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KETERANGAN'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwF06KODE_KANTOR_CABANG: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_KANTOR_CABANG'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwF06OPERASI_DATA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OPERASI_DATA'
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
    end
    object gvwM01: TcxGridDBBandedTableView [3]
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsM01
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Bands = <
        item
        end>
      object gvwM01ID_LAPORAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID_LAPORAN'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwM01NOMOR_IDENTITAS_PENGURUS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOMOR_IDENTITAS_PENGURUS'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwM01CIF_DEBITUR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CIF_DEBITUR'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwM01KODE_JENIS_IDENTITAS_PENGURUS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_JENIS_IDENTITAS_PENGURUS'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwM01NAMA_PENGURUS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NAMA_PENGURUS'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwM01JENIS_KELAMIN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JENIS_KELAMIN'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwM01ALAMAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALAMAT'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwM01KELURAHAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KELURAHAN'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwM01KECAMATAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KECAMATAN'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwM01KODE_KOTA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_KOTA'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwM01KODE_JABATAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_JABATAN'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwM01PANGSA_KEPEMILIKAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PANGSA_KEPEMILIKAN'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwM01STATUS_PENGURUS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STATUS_PENGURUS'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwM01KODE_KANTOR_CABANG: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_KANTOR_CABANG'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwM01OPERASI_DATA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OPERASI_DATA'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
    end
    object gvwD01: TcxGridDBBandedTableView [4]
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsD01
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Bands = <
        item
        end>
      object gvwD01ID_LAPORAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID_LAPORAN'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwD01CIF_DEBITUR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CIF_DEBITUR'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwD01JENIS_IDENTITAS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JENIS_IDENTITAS'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwD01NOMOR_IDENTITAS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOMOR_IDENTITAS'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwD01NAMA_SESUAI_IDENTITAS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NAMA_SESUAI_IDENTITAS'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwD01NAMA_LENGKAP: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NAMA_LENGKAP'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwD01KODE_STATUS_PENDIDIKAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_STATUS_PENDIDIKAN'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwD01JENIS_KELAMIN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JENIS_KELAMIN'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwD01TEMPAT_LAHIR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TEMPAT_LAHIR'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwD01TANGGAL_LAHIR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TANGGAL_LAHIR'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwD01NOMOR_POKOK_WAJIB_PAJAK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOMOR_POKOK_WAJIB_PAJAK'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwD01ALAMAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALAMAT'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwD01KELURAHAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KELURAHAN'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwD01KECAMATAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KECAMATAN'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gvwD01KODE_KOTA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_KOTA'
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gvwD01KODE_POS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_POS'
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gvwD01NOMOR_TELEPON: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOMOR_TELEPON'
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gvwD01NOMOR_TELEPON_SELULER: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOMOR_TELEPON_SELULER'
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gvwD01EMAIL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'EMAIL'
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gvwD01KODE_NEGARA_DOMISILI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_NEGARA_DOMISILI'
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object gvwD01KODE_PEKERJAAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_PEKERJAAN'
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object gvwD01TEMPAT_BEKERJA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TEMPAT_BEKERJA'
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object gvwD01KODE_BIDANG_USAHA_TEMPAT_BEKERJA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_BIDANG_USAHA_TEMPAT_BEKERJA'
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object gvwD01ALAMAT_TEMPAT_BEKERJA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALAMAT_TEMPAT_BEKERJA'
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object gvwD01PENGHASILAN_KOTOR_PER_TAHUN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PENGHASILAN_KOTOR_PER_TAHUN'
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object gvwD01KODE_SUMBER_PENGHASILAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_SUMBER_PENGHASILAN'
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object gvwD01JUMLAH_TANGGUNGAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'JUMLAH_TANGGUNGAN'
        Position.BandIndex = 0
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object gvwD01KODE_HUBUNGAN_DENGAN_PELAPOR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_HUBUNGAN_DENGAN_PELAPOR'
        Position.BandIndex = 0
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object gvwD01KODE_GOLONGAN_DEBITUR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_GOLONGAN_DEBITUR'
        Position.BandIndex = 0
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
      object gvwD01STATUS_PERKAWINAN_DEBITUR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'STATUS_PERKAWINAN_DEBITUR'
        Position.BandIndex = 0
        Position.ColIndex = 29
        Position.RowIndex = 0
      end
      object gvwD01NOMOR_IDENTITAS_PASANGAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOMOR_IDENTITAS_PASANGAN'
        Position.BandIndex = 0
        Position.ColIndex = 30
        Position.RowIndex = 0
      end
      object gvwD01NAMA_PASANGAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NAMA_PASANGAN'
        Position.BandIndex = 0
        Position.ColIndex = 31
        Position.RowIndex = 0
      end
      object gvwD01TANGGAL_LAHIR_PASANGAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TANGGAL_LAHIR_PASANGAN'
        Position.BandIndex = 0
        Position.ColIndex = 32
        Position.RowIndex = 0
      end
      object gvwD01PERJANJIAN_PISAH_HARTA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PERJANJIAN_PISAH_HARTA'
        Position.BandIndex = 0
        Position.ColIndex = 33
        Position.RowIndex = 0
      end
      object gvwD01MELANGGAR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MELANGGAR'
        Position.BandIndex = 0
        Position.ColIndex = 34
        Position.RowIndex = 0
      end
      object gvwD01MELAMPAUI: TcxGridDBBandedColumn
        DataBinding.FieldName = 'MELAMPAUI'
        Position.BandIndex = 0
        Position.ColIndex = 35
        Position.RowIndex = 0
      end
      object gvwD01NAMA_GADIS_IBU_KANDUNG: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NAMA_GADIS_IBU_KANDUNG'
        Position.BandIndex = 0
        Position.ColIndex = 36
        Position.RowIndex = 0
      end
      object gvwD01KODE_KANTOR_CABANG: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_KANTOR_CABANG'
        Position.BandIndex = 0
        Position.ColIndex = 37
        Position.RowIndex = 0
      end
      object gvwD01OPERASI_DATA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OPERASI_DATA'
        Position.BandIndex = 0
        Position.ColIndex = 38
        Position.RowIndex = 0
      end
    end
    object gvwP01: TcxGridDBBandedTableView [5]
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dsP01
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GridLineColor = 16777088
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Bands = <
        item
        end>
      object gvwP01ID_LAPORAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID_LAPORAN'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gvwP01NOMOR_IDENTITAS_PENJAMIN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOMOR_IDENTITAS_PENJAMIN'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gvwP01NOMOR_REKENING_FASILITAS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NOMOR_REKENING_FASILITAS'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gvwP01CIF_DEBITUR: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CIF_DEBITUR'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gvwP01KODE_JENIS_SEGMEN_FASILITAS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_JENIS_SEGMEN_FASILITAS'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gvwP01KODE_JENIS_IDENTITAS_PENJAMIN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_JENIS_IDENTITAS_PENJAMIN'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gvwP01NAMA_PENJAMIN_SESUAI_IDENTITAS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NAMA_PENJAMIN_SESUAI_IDENTITAS'
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gvwP01NAMA_LENGKAP_PENJAMIN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NAMA_LENGKAP_PENJAMIN'
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gvwP01KODE_GOLONGAN_PENJAMIN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_GOLONGAN_PENJAMIN'
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gvwP01ALAMAT_PENJAMIN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ALAMAT_PENJAMIN'
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gvwP01PRESENTASE_FASILITAS_YANG_DIJAMIN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PRESENTASE_FASILITAS_YANG_DIJAMIN'
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gvwP01KETERANGAN: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KETERANGAN'
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gvwP01KODE_KANTOR_CABANG: TcxGridDBBandedColumn
        DataBinding.FieldName = 'KODE_KANTOR_CABANG'
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gvwP01OPERASI_DATA: TcxGridDBBandedColumn
        DataBinding.FieldName = 'OPERASI_DATA'
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
    end
    inherited grdMasterLevel1: TcxGridLevel
      Caption = 'A01'
    end
    object grdMasterLevel2: TcxGridLevel
      Caption = 'D02'
      GridView = gvwD02
    end
    object grdMasterLevel3: TcxGridLevel
      Caption = 'F06'
      GridView = gvwF06
    end
    object grdMasterLevel4: TcxGridLevel
      Caption = 'M01'
      GridView = gvwM01
    end
    object grdMasterLevel5: TcxGridLevel
      Caption = 'D01'
      GridView = gvwD01
    end
    object grdMasterLevel6: TcxGridLevel
      Caption = 'P01'
      GridView = gvwP01
    end
  end
  inherited ActionPermission: TNActionPermission
    Actions = <
      item
        ActionName = 'actGenerateSlikData'
        Permission = 'SLIK Interface Generate Data'
      end
      item
        ActionName = 'actSaveData'
        Permission = 'SLIK Interface Save Data'
      end>
    AssignedPermission = <
      item
        Name = 'SLIK Interface'
        Description = 'SLIK Interface'
      end>
    Left = 288
    Top = 232
  end
  inherited PrintComp: TdxComponentPrinter
    PixelsPerInch = 96
    inherited PrintCompMainGrid: TdxGridReportLink
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited saBrowse: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited dsBrowseMaster: TDataSource
    DataSet = cdsA01
  end
  inherited aclEditor: TActionList
    object actGenerateSlikData: TNAction
      Category = 'NActions'
      Caption = 'Generate SLIK Data'
      ImageIndex = 1
      OnExecute = actGenerateSlikDataExecute
      CheckPermission = True
    end
    object actSaveData: TNAction
      Category = 'NActions'
      Caption = 'Save Data'
      ImageIndex = 11
      OnExecute = actSaveDataExecute
      CheckPermission = True
    end
  end
  inherited BarMBrowse: TdxBarManager
    PixelsPerInch = 96
    inherited BarMBrowseBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'mnuInsert'
        end
        item
          Visible = True
          ItemName = 'mnuEdit'
        end
        item
          Visible = True
          ItemName = 'mnuDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'edMonth'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 55
          Visible = True
          ItemName = 'edYear'
        end
        item
          Visible = True
          ItemName = 'mnuRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnuCustomFilter'
        end>
    end
    inherited mnuRefresh: TdxBarButton
      Caption = 'Load Data'
    end
    object edMonth: TcxBarEditItem
      Caption = 'Period'
      Category = 0
      Hint = 'Period'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Items = <>
      RepositoryItem = dmGlobal.luMonth
    end
    object edYear: TcxBarEditItem
      Caption = 'Tahun'
      Category = 0
      Hint = 'Tahun'
      Visible = ivAlways
      PropertiesClassName = 'TcxSpinEditProperties'
      InternalEditValue = '2025'
    end
    object dxBarButton1: TdxBarButton
      Action = actGenerateSlikData
      Category = 0
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Action = actSaveData
      Category = 0
      PaintStyle = psCaptionGlyph
    end
  end
  object cdsSLIK: TNClientDataset
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'TAHUN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BULAN'
        ParamType = ptInput
      end>
    ProviderName = 'dspN_dmOJK_qrySLIK'
    RemoteServer = dmGlobal.dspConnection
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 136
    Top = 96
    object cdsSLIKID_LAPORAN: TIntegerField
      FieldName = 'ID_LAPORAN'
      Required = True
    end
    object cdsSLIKKODE_JENIS_PELAPOR: TStringField
      FieldName = 'KODE_JENIS_PELAPOR'
      Required = True
      Size = 4
    end
    object cdsSLIKKODE_PELAPOR: TStringField
      FieldName = 'KODE_PELAPOR'
      Required = True
      Size = 6
    end
    object cdsSLIKTAHUN: TIntegerField
      FieldName = 'TAHUN'
      Required = True
    end
    object cdsSLIKBULAN: TIntegerField
      FieldName = 'BULAN'
      Required = True
    end
    object cdsSLIKMODDA: TDateTimeField
      FieldName = 'MODDA'
    end
    object cdsSLIKMODUI: TStringField
      FieldName = 'MODUI'
      Size = 30
    end
    object cdsSLIKAPPDA: TDateTimeField
      FieldName = 'APPDA'
    end
    object cdsSLIKAPPUI: TStringField
      FieldName = 'APPUI'
      Size = 30
    end
    object cdsSLIKISDEL: TIntegerField
      FieldName = 'ISDEL'
    end
    object cdsSLIKID: TLargeintField
      FieldName = 'ID'
    end
    object cdsSLIKqryP01: TDataSetField
      FieldName = 'qryP01'
    end
    object cdsSLIKqryD01: TDataSetField
      FieldName = 'qryD01'
    end
    object cdsSLIKqryM01: TDataSetField
      FieldName = 'qryM01'
    end
    object cdsSLIKqryF06: TDataSetField
      FieldName = 'qryF06'
    end
    object cdsSLIKqryD02: TDataSetField
      FieldName = 'qryD02'
    end
    object cdsSLIKqryA01: TDataSetField
      FieldName = 'qryA01'
    end
  end
  object cdsA01: TNClientDataset
    Aggregates = <>
    DataSetField = cdsSLIKqryA01
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 232
    Top = 96
    object cdsA01ID_LAPORAN: TIntegerField
      FieldName = 'ID_LAPORAN'
      Required = True
    end
    object cdsA01KODE_REGISTER: TStringField
      FieldName = 'KODE_REGISTER'
      Required = True
      Size = 30
    end
    object cdsA01NOMOR_REKENING_FASILITAS: TStringField
      FieldName = 'NOMOR_REKENING_FASILITAS'
      Size = 25
    end
    object cdsA01CIF_DEBITUR: TStringField
      FieldName = 'CIF_DEBITUR'
    end
    object cdsA01KODE_JENIS_SEGMEN_FASILITAS: TStringField
      FieldName = 'KODE_JENIS_SEGMEN_FASILITAS'
      Size = 3
    end
    object cdsA01KODE_STATUS_AGUNAN: TStringField
      FieldName = 'KODE_STATUS_AGUNAN'
      Size = 1
    end
    object cdsA01KODE_JENIS_AGUNAN: TStringField
      FieldName = 'KODE_JENIS_AGUNAN'
      Size = 12
    end
    object cdsA01PERINGKAT_AGUNAN: TStringField
      FieldName = 'PERINGKAT_AGUNAN'
      Size = 6
    end
    object cdsA01LEMBAGA_PEMERINGKAT: TStringField
      FieldName = 'LEMBAGA_PEMERINGKAT'
      Size = 3
    end
    object cdsA01KODE_JENIS_PENGIKATAN: TStringField
      FieldName = 'KODE_JENIS_PENGIKATAN'
      Size = 2
    end
    object cdsA01TANGGAL_PENGIKATAN: TDateField
      FieldName = 'TANGGAL_PENGIKATAN'
    end
    object cdsA01NAMA_PEMILIK_AGUNAN: TStringField
      FieldName = 'NAMA_PEMILIK_AGUNAN'
      Size = 150
    end
    object cdsA01BUKTI_KEPEMILIKAN: TStringField
      FieldName = 'BUKTI_KEPEMILIKAN'
      Size = 150
    end
    object cdsA01ALAMAT_AGUNAN: TStringField
      FieldName = 'ALAMAT_AGUNAN'
      Size = 300
    end
    object cdsA01KODE_KOTA: TStringField
      FieldName = 'KODE_KOTA'
      Size = 4
    end
    object cdsA01NILAI_AGUNAN_SESUAI_NJOP: TFloatField
      FieldName = 'NILAI_AGUNAN_SESUAI_NJOP'
    end
    object cdsA01NILAI_AGUNAN_MENURUT_PELAPOR: TFloatField
      FieldName = 'NILAI_AGUNAN_MENURUT_PELAPOR'
    end
    object cdsA01TANGGAL_PENILAIAN_AGUNAN_MENURUT_PELAPOR: TDateField
      FieldName = 'TANGGAL_PENILAIAN_AGUNAN_MENURUT_PELAPOR'
    end
    object cdsA01NILAI_AGUNAN_MENURUT_PENILAI_INDEPENDEN: TFloatField
      FieldName = 'NILAI_AGUNAN_MENURUT_PENILAI_INDEPENDEN'
    end
    object cdsA01NAMA_PENILAI_INDEPENDEN: TStringField
      FieldName = 'NAMA_PENILAI_INDEPENDEN'
      Size = 150
    end
    object cdsA01TANGGAL_PENILAIAN_AGUNAN_MENURUT_PENILAI_INDEPENDEN: TDateField
      FieldName = 'TANGGAL_PENILAIAN_AGUNAN_MENURUT_PENILAI_INDEPENDEN'
    end
    object cdsA01STATUS_PARIPASU: TStringField
      FieldName = 'STATUS_PARIPASU'
      Size = 1
    end
    object cdsA01PRESENTASE_PARIPASU: TFloatField
      FieldName = 'PRESENTASE_PARIPASU'
    end
    object cdsA01STATUS_AGUNAN_KREDIT: TStringField
      FieldName = 'STATUS_AGUNAN_KREDIT'
      Size = 1
    end
    object cdsA01DIASURANSIKAN: TStringField
      FieldName = 'DIASURANSIKAN'
      Size = 1
    end
    object cdsA01KETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 300
    end
    object cdsA01KODE_KANTOR_CABANG: TStringField
      FieldName = 'KODE_KANTOR_CABANG'
      Size = 3
    end
    object cdsA01OPERASI_DATA: TStringField
      FieldName = 'OPERASI_DATA'
      Size = 1
    end
  end
  object cdsD02: TNClientDataset
    Aggregates = <>
    DataSetField = cdsSLIKqryD02
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 288
    Top = 96
    object cdsD02ID_LAPORAN: TIntegerField
      FieldName = 'ID_LAPORAN'
      Required = True
    end
    object cdsD02CIF_DEBITUR: TStringField
      FieldName = 'CIF_DEBITUR'
      Required = True
    end
    object cdsD02ID_BADAN_USAHA: TStringField
      FieldName = 'ID_BADAN_USAHA'
      Required = True
      Size = 25
    end
    object cdsD02NAMA_BADAN_USAHA: TStringField
      FieldName = 'NAMA_BADAN_USAHA'
      Required = True
      Size = 150
    end
    object cdsD02KODE_BENTUK_BADAN_USAHA: TStringField
      FieldName = 'KODE_BENTUK_BADAN_USAHA'
      Required = True
      Size = 2
    end
    object cdsD02TEMPAT_PENDIRIAN: TStringField
      FieldName = 'TEMPAT_PENDIRIAN'
      Required = True
      Size = 50
    end
    object cdsD02NOMOR_AKTA_PENDIRIAN: TStringField
      FieldName = 'NOMOR_AKTA_PENDIRIAN'
      Required = True
      Size = 30
    end
    object cdsD02TANGGAL_AKTA_PENDIRIAN: TDateField
      FieldName = 'TANGGAL_AKTA_PENDIRIAN'
      Required = True
    end
    object cdsD02NOMOR_AKTA_PERUBAHAN_TERAKHIR: TStringField
      FieldName = 'NOMOR_AKTA_PERUBAHAN_TERAKHIR'
      Required = True
      Size = 30
    end
    object cdsD02TANGGAL_AKTA_PERUBAHAN_TERAKHIR: TDateField
      FieldName = 'TANGGAL_AKTA_PERUBAHAN_TERAKHIR'
      Required = True
    end
    object cdsD02NOMOR_TELEPON: TStringField
      FieldName = 'NOMOR_TELEPON'
      Required = True
      Size = 15
    end
    object cdsD02NOMOR_TELEPON_SELULER: TStringField
      FieldName = 'NOMOR_TELEPON_SELULER'
      Size = 15
    end
    object cdsD02EMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object cdsD02ALAMAT: TStringField
      FieldName = 'ALAMAT'
      Required = True
      Size = 300
    end
    object cdsD02KELURAHAN: TStringField
      FieldName = 'KELURAHAN'
      Required = True
      Size = 50
    end
    object cdsD02KECAMATAN: TStringField
      FieldName = 'KECAMATAN'
      Required = True
      Size = 50
    end
    object cdsD02KODE_KOTA: TStringField
      FieldName = 'KODE_KOTA'
      Required = True
      Size = 4
    end
    object cdsD02KODE_POS: TStringField
      FieldName = 'KODE_POS'
      Required = True
      Size = 5
    end
    object cdsD02KODE_NEGARA_DOMISILI: TStringField
      FieldName = 'KODE_NEGARA_DOMISILI'
      Required = True
      Size = 2
    end
    object cdsD02KODE_BIDANG_USAHA: TStringField
      FieldName = 'KODE_BIDANG_USAHA'
      Required = True
      Size = 6
    end
    object cdsD02KODE_HUBUNGAN_DENGAN_PELAPOR: TStringField
      FieldName = 'KODE_HUBUNGAN_DENGAN_PELAPOR'
      Required = True
      Size = 2
    end
    object cdsD02MELANGGAR: TStringField
      FieldName = 'MELANGGAR'
      Required = True
      Size = 1
    end
    object cdsD02MELAMPAUI: TStringField
      FieldName = 'MELAMPAUI'
      Required = True
      Size = 1
    end
    object cdsD02GO_PUBLIC: TStringField
      FieldName = 'GO_PUBLIC'
      Required = True
      Size = 1
    end
    object cdsD02KODE_GOLONGAN_DEBITUR: TStringField
      FieldName = 'KODE_GOLONGAN_DEBITUR'
      Required = True
      Size = 11
    end
    object cdsD02RATING_DEBITUR: TStringField
      FieldName = 'RATING_DEBITUR'
      Size = 6
    end
    object cdsD02LEMBAGA_PEMERINGKAT: TStringField
      FieldName = 'LEMBAGA_PEMERINGKAT'
      Size = 3
    end
    object cdsD02TANGGAL_PEMERINGKATAN: TDateField
      FieldName = 'TANGGAL_PEMERINGKATAN'
    end
    object cdsD02NAMA_GROUP_USAHA_DEBITUR: TStringField
      FieldName = 'NAMA_GROUP_USAHA_DEBITUR'
      Size = 150
    end
    object cdsD02KODE_KANTOR_CABANG: TStringField
      FieldName = 'KODE_KANTOR_CABANG'
      Required = True
      Size = 3
    end
    object cdsD02OPERASI_DATA: TStringField
      FieldName = 'OPERASI_DATA'
      Required = True
      Size = 1
    end
  end
  object cdsF06: TNClientDataset
    Aggregates = <>
    DataSetField = cdsSLIKqryF06
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 344
    Top = 96
    object cdsF06ID_LAPORAN: TIntegerField
      FieldName = 'ID_LAPORAN'
      Required = True
    end
    object cdsF06NOMOR_REKENING_FASILITAS: TStringField
      FieldName = 'NOMOR_REKENING_FASILITAS'
      Required = True
      Size = 25
    end
    object cdsF06CIF_DEBITUR: TStringField
      FieldName = 'CIF_DEBITUR'
      Required = True
    end
    object cdsF06KODE_JENIS_FASILITAS_LAIN: TStringField
      FieldName = 'KODE_JENIS_FASILITAS_LAIN'
      Required = True
      Size = 3
    end
    object cdsF06SUMBER_DANA: TStringField
      FieldName = 'SUMBER_DANA'
      Required = True
      Size = 6
    end
    object cdsF06TANGGAL_MULAI: TDateField
      FieldName = 'TANGGAL_MULAI'
      Required = True
    end
    object cdsF06TANGGAL_JATUH_TEMPO: TDateField
      FieldName = 'TANGGAL_JATUH_TEMPO'
      Required = True
    end
    object cdsF06SUKU_BUNGA: TFloatField
      FieldName = 'SUKU_BUNGA'
      Required = True
    end
    object cdsF06KODE_VALUTA: TStringField
      FieldName = 'KODE_VALUTA'
      Required = True
      Size = 3
    end
    object cdsF06NOMINAL: TFloatField
      FieldName = 'NOMINAL'
      Required = True
    end
    object cdsF06NILAI_DALAM_MATA_UANG_ASAL: TFloatField
      FieldName = 'NILAI_DALAM_MATA_UANG_ASAL'
    end
    object cdsF06KODE_KUALITAS: TStringField
      FieldName = 'KODE_KUALITAS'
      Required = True
      Size = 1
    end
    object cdsF06TANGGAL_MACET: TDateField
      FieldName = 'TANGGAL_MACET'
    end
    object cdsF06KODE_SEBAB_MACET: TStringField
      FieldName = 'KODE_SEBAB_MACET'
      Size = 2
    end
    object cdsF06TUNGGAKAN: TFloatField
      FieldName = 'TUNGGAKAN'
      Required = True
    end
    object cdsF06JUMLAH_HARI_TUNGGAKAN: TIntegerField
      FieldName = 'JUMLAH_HARI_TUNGGAKAN'
      Required = True
    end
    object cdsF06KODE_KONDISI: TStringField
      FieldName = 'KODE_KONDISI'
      Required = True
      Size = 2
    end
    object cdsF06TANGGAL_KONDISI: TDateField
      FieldName = 'TANGGAL_KONDISI'
    end
    object cdsF06KETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 300
    end
    object cdsF06KODE_KANTOR_CABANG: TStringField
      FieldName = 'KODE_KANTOR_CABANG'
      Required = True
      Size = 3
    end
    object cdsF06OPERASI_DATA: TStringField
      FieldName = 'OPERASI_DATA'
      Required = True
      Size = 1
    end
  end
  object cdsP01: TNClientDataset
    Aggregates = <>
    DataSetField = cdsSLIKqryP01
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 504
    Top = 96
    object cdsP01ID_LAPORAN: TIntegerField
      FieldName = 'ID_LAPORAN'
      Required = True
    end
    object cdsP01NOMOR_IDENTITAS_PENJAMIN: TStringField
      FieldName = 'NOMOR_IDENTITAS_PENJAMIN'
      Required = True
      Size = 25
    end
    object cdsP01NOMOR_REKENING_FASILITAS: TStringField
      FieldName = 'NOMOR_REKENING_FASILITAS'
      Required = True
      Size = 25
    end
    object cdsP01CIF_DEBITUR: TStringField
      FieldName = 'CIF_DEBITUR'
      Required = True
    end
    object cdsP01KODE_JENIS_SEGMEN_FASILITAS: TStringField
      FieldName = 'KODE_JENIS_SEGMEN_FASILITAS'
      Size = 3
    end
    object cdsP01KODE_JENIS_IDENTITAS_PENJAMIN: TStringField
      FieldName = 'KODE_JENIS_IDENTITAS_PENJAMIN'
      Size = 1
    end
    object cdsP01NAMA_PENJAMIN_SESUAI_IDENTITAS: TStringField
      FieldName = 'NAMA_PENJAMIN_SESUAI_IDENTITAS'
      Size = 150
    end
    object cdsP01NAMA_LENGKAP_PENJAMIN: TStringField
      FieldName = 'NAMA_LENGKAP_PENJAMIN'
      Size = 150
    end
    object cdsP01KODE_GOLONGAN_PENJAMIN: TStringField
      FieldName = 'KODE_GOLONGAN_PENJAMIN'
      Size = 11
    end
    object cdsP01ALAMAT_PENJAMIN: TStringField
      FieldName = 'ALAMAT_PENJAMIN'
      Size = 300
    end
    object cdsP01PRESENTASE_FASILITAS_YANG_DIJAMIN: TFloatField
      FieldName = 'PRESENTASE_FASILITAS_YANG_DIJAMIN'
    end
    object cdsP01KETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 300
    end
    object cdsP01KODE_KANTOR_CABANG: TStringField
      FieldName = 'KODE_KANTOR_CABANG'
      Size = 3
    end
    object cdsP01OPERASI_DATA: TStringField
      FieldName = 'OPERASI_DATA'
      Size = 1
    end
  end
  object cdsD01: TNClientDataset
    Aggregates = <>
    DataSetField = cdsSLIKqryD01
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 456
    Top = 96
    object cdsD01ID_LAPORAN: TIntegerField
      FieldName = 'ID_LAPORAN'
      Required = True
    end
    object cdsD01CIF_DEBITUR: TStringField
      FieldName = 'CIF_DEBITUR'
      Required = True
    end
    object cdsD01JENIS_IDENTITAS: TStringField
      FieldName = 'JENIS_IDENTITAS'
      Size = 1
    end
    object cdsD01NOMOR_IDENTITAS: TStringField
      FieldName = 'NOMOR_IDENTITAS'
      Size = 25
    end
    object cdsD01NAMA_SESUAI_IDENTITAS: TStringField
      FieldName = 'NAMA_SESUAI_IDENTITAS'
      Size = 150
    end
    object cdsD01NAMA_LENGKAP: TStringField
      FieldName = 'NAMA_LENGKAP'
      Size = 150
    end
    object cdsD01KODE_STATUS_PENDIDIKAN: TStringField
      FieldName = 'KODE_STATUS_PENDIDIKAN'
      Size = 2
    end
    object cdsD01JENIS_KELAMIN: TStringField
      FieldName = 'JENIS_KELAMIN'
      Size = 1
    end
    object cdsD01TEMPAT_LAHIR: TStringField
      FieldName = 'TEMPAT_LAHIR'
      Size = 50
    end
    object cdsD01TANGGAL_LAHIR: TDateField
      FieldName = 'TANGGAL_LAHIR'
    end
    object cdsD01NOMOR_POKOK_WAJIB_PAJAK: TStringField
      FieldName = 'NOMOR_POKOK_WAJIB_PAJAK'
      Size = 25
    end
    object cdsD01ALAMAT: TStringField
      FieldName = 'ALAMAT'
      Size = 300
    end
    object cdsD01KELURAHAN: TStringField
      FieldName = 'KELURAHAN'
      Size = 50
    end
    object cdsD01KECAMATAN: TStringField
      FieldName = 'KECAMATAN'
      Size = 50
    end
    object cdsD01KODE_KOTA: TStringField
      FieldName = 'KODE_KOTA'
      Size = 4
    end
    object cdsD01KODE_POS: TStringField
      FieldName = 'KODE_POS'
      Size = 5
    end
    object cdsD01NOMOR_TELEPON: TStringField
      FieldName = 'NOMOR_TELEPON'
      Size = 15
    end
    object cdsD01NOMOR_TELEPON_SELULER: TStringField
      FieldName = 'NOMOR_TELEPON_SELULER'
      Size = 15
    end
    object cdsD01EMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object cdsD01KODE_NEGARA_DOMISILI: TStringField
      FieldName = 'KODE_NEGARA_DOMISILI'
      Size = 2
    end
    object cdsD01KODE_PEKERJAAN: TStringField
      FieldName = 'KODE_PEKERJAAN'
      Size = 3
    end
    object cdsD01TEMPAT_BEKERJA: TStringField
      FieldName = 'TEMPAT_BEKERJA'
      Size = 50
    end
    object cdsD01KODE_BIDANG_USAHA_TEMPAT_BEKERJA: TStringField
      FieldName = 'KODE_BIDANG_USAHA_TEMPAT_BEKERJA'
      Size = 6
    end
    object cdsD01ALAMAT_TEMPAT_BEKERJA: TStringField
      FieldName = 'ALAMAT_TEMPAT_BEKERJA'
      Size = 300
    end
    object cdsD01PENGHASILAN_KOTOR_PER_TAHUN: TFloatField
      FieldName = 'PENGHASILAN_KOTOR_PER_TAHUN'
    end
    object cdsD01KODE_SUMBER_PENGHASILAN: TStringField
      FieldName = 'KODE_SUMBER_PENGHASILAN'
      Size = 1
    end
    object cdsD01JUMLAH_TANGGUNGAN: TIntegerField
      FieldName = 'JUMLAH_TANGGUNGAN'
    end
    object cdsD01KODE_HUBUNGAN_DENGAN_PELAPOR: TStringField
      FieldName = 'KODE_HUBUNGAN_DENGAN_PELAPOR'
      Size = 2
    end
    object cdsD01KODE_GOLONGAN_DEBITUR: TStringField
      FieldName = 'KODE_GOLONGAN_DEBITUR'
      Size = 11
    end
    object cdsD01STATUS_PERKAWINAN_DEBITUR: TStringField
      FieldName = 'STATUS_PERKAWINAN_DEBITUR'
      Size = 1
    end
    object cdsD01NOMOR_IDENTITAS_PASANGAN: TStringField
      FieldName = 'NOMOR_IDENTITAS_PASANGAN'
      Size = 25
    end
    object cdsD01NAMA_PASANGAN: TStringField
      FieldName = 'NAMA_PASANGAN'
      Size = 150
    end
    object cdsD01TANGGAL_LAHIR_PASANGAN: TDateField
      FieldName = 'TANGGAL_LAHIR_PASANGAN'
    end
    object cdsD01PERJANJIAN_PISAH_HARTA: TStringField
      FieldName = 'PERJANJIAN_PISAH_HARTA'
      Size = 1
    end
    object cdsD01MELANGGAR: TStringField
      FieldName = 'MELANGGAR'
      Size = 1
    end
    object cdsD01MELAMPAUI: TStringField
      FieldName = 'MELAMPAUI'
      Size = 1
    end
    object cdsD01NAMA_GADIS_IBU_KANDUNG: TStringField
      FieldName = 'NAMA_GADIS_IBU_KANDUNG'
      Size = 150
    end
    object cdsD01KODE_KANTOR_CABANG: TStringField
      FieldName = 'KODE_KANTOR_CABANG'
      Size = 3
    end
    object cdsD01OPERASI_DATA: TStringField
      FieldName = 'OPERASI_DATA'
      Size = 1
    end
  end
  object cdsM01: TNClientDataset
    Aggregates = <>
    DataSetField = cdsSLIKqryM01
    Params = <>
    AutoSequence = False
    AutoApplyUpdate = False
    AutoUserAuditTrail = False
    Control4Eyes = False
    Left = 400
    Top = 96
    object cdsM01ID_LAPORAN: TIntegerField
      FieldName = 'ID_LAPORAN'
      Required = True
    end
    object cdsM01NOMOR_IDENTITAS_PENGURUS: TStringField
      FieldName = 'NOMOR_IDENTITAS_PENGURUS'
      Required = True
      Size = 25
    end
    object cdsM01CIF_DEBITUR: TStringField
      FieldName = 'CIF_DEBITUR'
      Required = True
    end
    object cdsM01KODE_JENIS_IDENTITAS_PENGURUS: TStringField
      FieldName = 'KODE_JENIS_IDENTITAS_PENGURUS'
      Required = True
      Size = 1
    end
    object cdsM01NAMA_PENGURUS: TStringField
      FieldName = 'NAMA_PENGURUS'
      Size = 150
    end
    object cdsM01JENIS_KELAMIN: TStringField
      FieldName = 'JENIS_KELAMIN'
      Size = 1
    end
    object cdsM01ALAMAT: TStringField
      FieldName = 'ALAMAT'
      Size = 300
    end
    object cdsM01KELURAHAN: TStringField
      FieldName = 'KELURAHAN'
      Size = 50
    end
    object cdsM01KECAMATAN: TStringField
      FieldName = 'KECAMATAN'
      Size = 50
    end
    object cdsM01KODE_KOTA: TStringField
      FieldName = 'KODE_KOTA'
      Size = 4
    end
    object cdsM01KODE_JABATAN: TStringField
      FieldName = 'KODE_JABATAN'
      Size = 2
    end
    object cdsM01PANGSA_KEPEMILIKAN: TFloatField
      FieldName = 'PANGSA_KEPEMILIKAN'
    end
    object cdsM01STATUS_PENGURUS: TStringField
      FieldName = 'STATUS_PENGURUS'
      Size = 1
    end
    object cdsM01KODE_KANTOR_CABANG: TStringField
      FieldName = 'KODE_KANTOR_CABANG'
      Size = 3
    end
    object cdsM01OPERASI_DATA: TStringField
      FieldName = 'OPERASI_DATA'
      Size = 1
    end
  end
  object dsD02: TDataSource
    DataSet = cdsD02
    Left = 288
    Top = 152
  end
  object dsF06: TDataSource
    DataSet = cdsF06
    Left = 344
    Top = 152
  end
  object dsM01: TDataSource
    DataSet = cdsM01
    Left = 400
    Top = 152
  end
  object dsD01: TDataSource
    DataSet = cdsD01
    Left = 456
    Top = 152
  end
  object dsP01: TDataSource
    DataSet = cdsP01
    Left = 504
    Top = 152
  end
  object SaveData: TSaveDialog
    DefaultExt = '.txt'
    Filter = 'Text File|*.txt'
    Left = 440
    Top = 328
  end
end

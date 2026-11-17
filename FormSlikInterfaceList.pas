unit FormSlikInterfaceList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FormBrowseData, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, cxImageComboBox, cxSpinEdit, dxBar, cxBarEditItem,
  NReportClient, NDatasetContainer, cxClasses, System.Actions, Vcl.ActnList,
  NDatasetAction, Vcl.Menus, dxPSCore, dxPScxCommon, System.ImageList,
  Vcl.ImgList, cxPropertiesStore, NActionPermission, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, Datasnap.DBClient,
  NClientDataset, DateUtils, StrUtils;

type
  TfrmSlikInterfaceList = class(TfrmBrowseData)
    edMonth: TcxBarEditItem;
    edYear: TcxBarEditItem;
    grdMasterLevel2: TcxGridLevel;
    gvwD02: TcxGridDBBandedTableView;
    grdMasterLevel3: TcxGridLevel;
    grdMasterLevel4: TcxGridLevel;
    grdMasterLevel5: TcxGridLevel;
    grdMasterLevel6: TcxGridLevel;
    gvwF06: TcxGridDBBandedTableView;
    gvwM01: TcxGridDBBandedTableView;
    gvwD01: TcxGridDBBandedTableView;
    gvwP01: TcxGridDBBandedTableView;
    cdsSLIK: TNClientDataset;
    cdsA01: TNClientDataset;
    cdsD02: TNClientDataset;
    cdsF06: TNClientDataset;
    cdsP01: TNClientDataset;
    cdsD01: TNClientDataset;
    cdsM01: TNClientDataset;
    dsD02: TDataSource;
    dsF06: TDataSource;
    dsM01: TDataSource;
    dsD01: TDataSource;
    dsP01: TDataSource;
    cdsSLIKID_LAPORAN: TIntegerField;
    cdsSLIKKODE_JENIS_PELAPOR: TStringField;
    cdsSLIKKODE_PELAPOR: TStringField;
    cdsSLIKTAHUN: TIntegerField;
    cdsSLIKBULAN: TIntegerField;
    cdsSLIKMODDA: TDateTimeField;
    cdsSLIKMODUI: TStringField;
    cdsSLIKAPPDA: TDateTimeField;
    cdsSLIKAPPUI: TStringField;
    cdsSLIKISDEL: TIntegerField;
    cdsSLIKID: TLargeintField;
    cdsSLIKqryP01: TDataSetField;
    cdsSLIKqryD01: TDataSetField;
    cdsSLIKqryM01: TDataSetField;
    cdsSLIKqryF06: TDataSetField;
    cdsSLIKqryD02: TDataSetField;
    cdsSLIKqryA01: TDataSetField;
    cdsA01ID_LAPORAN: TIntegerField;
    cdsA01KODE_REGISTER: TStringField;
    cdsA01NOMOR_REKENING_FASILITAS: TStringField;
    cdsA01CIF_DEBITUR: TStringField;
    cdsA01KODE_JENIS_SEGMEN_FASILITAS: TStringField;
    cdsA01KODE_STATUS_AGUNAN: TStringField;
    cdsA01KODE_JENIS_AGUNAN: TStringField;
    cdsA01PERINGKAT_AGUNAN: TStringField;
    cdsA01LEMBAGA_PEMERINGKAT: TStringField;
    cdsA01KODE_JENIS_PENGIKATAN: TStringField;
    cdsA01TANGGAL_PENGIKATAN: TDateField;
    cdsA01NAMA_PEMILIK_AGUNAN: TStringField;
    cdsA01BUKTI_KEPEMILIKAN: TStringField;
    cdsA01ALAMAT_AGUNAN: TStringField;
    cdsA01KODE_KOTA: TStringField;
    cdsA01NILAI_AGUNAN_SESUAI_NJOP: TFloatField;
    cdsA01NILAI_AGUNAN_MENURUT_PELAPOR: TFloatField;
    cdsA01TANGGAL_PENILAIAN_AGUNAN_MENURUT_PELAPOR: TDateField;
    cdsA01NILAI_AGUNAN_MENURUT_PENILAI_INDEPENDEN: TFloatField;
    cdsA01NAMA_PENILAI_INDEPENDEN: TStringField;
    cdsA01TANGGAL_PENILAIAN_AGUNAN_MENURUT_PENILAI_INDEPENDEN: TDateField;
    cdsA01STATUS_PARIPASU: TStringField;
    cdsA01PRESENTASE_PARIPASU: TFloatField;
    cdsA01STATUS_AGUNAN_KREDIT: TStringField;
    cdsA01DIASURANSIKAN: TStringField;
    cdsA01KETERANGAN: TStringField;
    cdsA01KODE_KANTOR_CABANG: TStringField;
    cdsA01OPERASI_DATA: TStringField;
    cdsD02ID_LAPORAN: TIntegerField;
    cdsD02CIF_DEBITUR: TStringField;
    cdsD02ID_BADAN_USAHA: TStringField;
    cdsD02NAMA_BADAN_USAHA: TStringField;
    cdsD02KODE_BENTUK_BADAN_USAHA: TStringField;
    cdsD02TEMPAT_PENDIRIAN: TStringField;
    cdsD02NOMOR_AKTA_PENDIRIAN: TStringField;
    cdsD02TANGGAL_AKTA_PENDIRIAN: TDateField;
    cdsD02NOMOR_AKTA_PERUBAHAN_TERAKHIR: TStringField;
    cdsD02TANGGAL_AKTA_PERUBAHAN_TERAKHIR: TDateField;
    cdsD02NOMOR_TELEPON: TStringField;
    cdsD02NOMOR_TELEPON_SELULER: TStringField;
    cdsD02EMAIL: TStringField;
    cdsD02ALAMAT: TStringField;
    cdsD02KELURAHAN: TStringField;
    cdsD02KECAMATAN: TStringField;
    cdsD02KODE_KOTA: TStringField;
    cdsD02KODE_POS: TStringField;
    cdsD02KODE_NEGARA_DOMISILI: TStringField;
    cdsD02KODE_BIDANG_USAHA: TStringField;
    cdsD02KODE_HUBUNGAN_DENGAN_PELAPOR: TStringField;
    cdsD02MELANGGAR: TStringField;
    cdsD02MELAMPAUI: TStringField;
    cdsD02GO_PUBLIC: TStringField;
    cdsD02KODE_GOLONGAN_DEBITUR: TStringField;
    cdsD02RATING_DEBITUR: TStringField;
    cdsD02LEMBAGA_PEMERINGKAT: TStringField;
    cdsD02TANGGAL_PEMERINGKATAN: TDateField;
    cdsD02NAMA_GROUP_USAHA_DEBITUR: TStringField;
    cdsD02KODE_KANTOR_CABANG: TStringField;
    cdsD02OPERASI_DATA: TStringField;
    cdsF06ID_LAPORAN: TIntegerField;
    cdsF06NOMOR_REKENING_FASILITAS: TStringField;
    cdsF06CIF_DEBITUR: TStringField;
    cdsF06KODE_JENIS_FASILITAS_LAIN: TStringField;
    cdsF06SUMBER_DANA: TStringField;
    cdsF06TANGGAL_MULAI: TDateField;
    cdsF06TANGGAL_JATUH_TEMPO: TDateField;
    cdsF06SUKU_BUNGA: TFloatField;
    cdsF06KODE_VALUTA: TStringField;
    cdsF06NOMINAL: TFloatField;
    cdsF06NILAI_DALAM_MATA_UANG_ASAL: TFloatField;
    cdsF06KODE_KUALITAS: TStringField;
    cdsF06TANGGAL_MACET: TDateField;
    cdsF06KODE_SEBAB_MACET: TStringField;
    cdsF06TUNGGAKAN: TFloatField;
    cdsF06JUMLAH_HARI_TUNGGAKAN: TIntegerField;
    cdsF06KODE_KONDISI: TStringField;
    cdsF06TANGGAL_KONDISI: TDateField;
    cdsF06KETERANGAN: TStringField;
    cdsF06KODE_KANTOR_CABANG: TStringField;
    cdsF06OPERASI_DATA: TStringField;
    cdsM01ID_LAPORAN: TIntegerField;
    cdsM01NOMOR_IDENTITAS_PENGURUS: TStringField;
    cdsM01CIF_DEBITUR: TStringField;
    cdsM01KODE_JENIS_IDENTITAS_PENGURUS: TStringField;
    cdsM01NAMA_PENGURUS: TStringField;
    cdsM01JENIS_KELAMIN: TStringField;
    cdsM01ALAMAT: TStringField;
    cdsM01KELURAHAN: TStringField;
    cdsM01KECAMATAN: TStringField;
    cdsM01KODE_KOTA: TStringField;
    cdsM01KODE_JABATAN: TStringField;
    cdsM01PANGSA_KEPEMILIKAN: TFloatField;
    cdsM01STATUS_PENGURUS: TStringField;
    cdsM01KODE_KANTOR_CABANG: TStringField;
    cdsM01OPERASI_DATA: TStringField;
    cdsD01ID_LAPORAN: TIntegerField;
    cdsD01CIF_DEBITUR: TStringField;
    cdsD01JENIS_IDENTITAS: TStringField;
    cdsD01NOMOR_IDENTITAS: TStringField;
    cdsD01NAMA_SESUAI_IDENTITAS: TStringField;
    cdsD01NAMA_LENGKAP: TStringField;
    cdsD01KODE_STATUS_PENDIDIKAN: TStringField;
    cdsD01JENIS_KELAMIN: TStringField;
    cdsD01TEMPAT_LAHIR: TStringField;
    cdsD01TANGGAL_LAHIR: TDateField;
    cdsD01NOMOR_POKOK_WAJIB_PAJAK: TStringField;
    cdsD01ALAMAT: TStringField;
    cdsD01KELURAHAN: TStringField;
    cdsD01KECAMATAN: TStringField;
    cdsD01KODE_KOTA: TStringField;
    cdsD01KODE_POS: TStringField;
    cdsD01NOMOR_TELEPON: TStringField;
    cdsD01NOMOR_TELEPON_SELULER: TStringField;
    cdsD01EMAIL: TStringField;
    cdsD01KODE_NEGARA_DOMISILI: TStringField;
    cdsD01KODE_PEKERJAAN: TStringField;
    cdsD01TEMPAT_BEKERJA: TStringField;
    cdsD01KODE_BIDANG_USAHA_TEMPAT_BEKERJA: TStringField;
    cdsD01ALAMAT_TEMPAT_BEKERJA: TStringField;
    cdsD01PENGHASILAN_KOTOR_PER_TAHUN: TFloatField;
    cdsD01KODE_SUMBER_PENGHASILAN: TStringField;
    cdsD01JUMLAH_TANGGUNGAN: TIntegerField;
    cdsD01KODE_HUBUNGAN_DENGAN_PELAPOR: TStringField;
    cdsD01KODE_GOLONGAN_DEBITUR: TStringField;
    cdsD01STATUS_PERKAWINAN_DEBITUR: TStringField;
    cdsD01NOMOR_IDENTITAS_PASANGAN: TStringField;
    cdsD01NAMA_PASANGAN: TStringField;
    cdsD01TANGGAL_LAHIR_PASANGAN: TDateField;
    cdsD01PERJANJIAN_PISAH_HARTA: TStringField;
    cdsD01MELANGGAR: TStringField;
    cdsD01MELAMPAUI: TStringField;
    cdsD01NAMA_GADIS_IBU_KANDUNG: TStringField;
    cdsD01KODE_KANTOR_CABANG: TStringField;
    cdsD01OPERASI_DATA: TStringField;
    cdsP01ID_LAPORAN: TIntegerField;
    cdsP01NOMOR_IDENTITAS_PENJAMIN: TStringField;
    cdsP01NOMOR_REKENING_FASILITAS: TStringField;
    cdsP01CIF_DEBITUR: TStringField;
    cdsP01KODE_JENIS_SEGMEN_FASILITAS: TStringField;
    cdsP01KODE_JENIS_IDENTITAS_PENJAMIN: TStringField;
    cdsP01NAMA_PENJAMIN_SESUAI_IDENTITAS: TStringField;
    cdsP01NAMA_LENGKAP_PENJAMIN: TStringField;
    cdsP01KODE_GOLONGAN_PENJAMIN: TStringField;
    cdsP01ALAMAT_PENJAMIN: TStringField;
    cdsP01PRESENTASE_FASILITAS_YANG_DIJAMIN: TFloatField;
    cdsP01KETERANGAN: TStringField;
    cdsP01KODE_KANTOR_CABANG: TStringField;
    cdsP01OPERASI_DATA: TStringField;
    gvwMasterID_LAPORAN: TcxGridDBBandedColumn;
    gvwMasterKODE_REGISTER: TcxGridDBBandedColumn;
    gvwMasterNOMOR_REKENING_FASILITAS: TcxGridDBBandedColumn;
    gvwMasterCIF_DEBITUR: TcxGridDBBandedColumn;
    gvwMasterKODE_JENIS_SEGMEN_FASILITAS: TcxGridDBBandedColumn;
    gvwMasterKODE_STATUS_AGUNAN: TcxGridDBBandedColumn;
    gvwMasterKODE_JENIS_AGUNAN: TcxGridDBBandedColumn;
    gvwMasterPERINGKAT_AGUNAN: TcxGridDBBandedColumn;
    gvwMasterLEMBAGA_PEMERINGKAT: TcxGridDBBandedColumn;
    gvwMasterKODE_JENIS_PENGIKATAN: TcxGridDBBandedColumn;
    gvwMasterTANGGAL_PENGIKATAN: TcxGridDBBandedColumn;
    gvwMasterNAMA_PEMILIK_AGUNAN: TcxGridDBBandedColumn;
    gvwMasterBUKTI_KEPEMILIKAN: TcxGridDBBandedColumn;
    gvwMasterALAMAT_AGUNAN: TcxGridDBBandedColumn;
    gvwMasterKODE_KOTA: TcxGridDBBandedColumn;
    gvwMasterNILAI_AGUNAN_SESUAI_NJOP: TcxGridDBBandedColumn;
    gvwMasterNILAI_AGUNAN_MENURUT_PELAPOR: TcxGridDBBandedColumn;
    gvwMasterTANGGAL_PENILAIAN_AGUNAN_MENURUT_PELAPOR: TcxGridDBBandedColumn;
    gvwMasterNILAI_AGUNAN_MENURUT_PENILAI_INDEPENDEN: TcxGridDBBandedColumn;
    gvwMasterNAMA_PENILAI_INDEPENDEN: TcxGridDBBandedColumn;
    gvwMasterTANGGAL_PENILAIAN_AGUNAN_MENURUT_PENILAI_INDEPENDEN: TcxGridDBBandedColumn;
    gvwMasterSTATUS_PARIPASU: TcxGridDBBandedColumn;
    gvwMasterPRESENTASE_PARIPASU: TcxGridDBBandedColumn;
    gvwMasterSTATUS_AGUNAN_KREDIT: TcxGridDBBandedColumn;
    gvwMasterDIASURANSIKAN: TcxGridDBBandedColumn;
    gvwMasterKETERANGAN: TcxGridDBBandedColumn;
    gvwMasterKODE_KANTOR_CABANG: TcxGridDBBandedColumn;
    gvwMasterOPERASI_DATA: TcxGridDBBandedColumn;
    gvwD02ID_LAPORAN: TcxGridDBBandedColumn;
    gvwD02CIF_DEBITUR: TcxGridDBBandedColumn;
    gvwD02ID_BADAN_USAHA: TcxGridDBBandedColumn;
    gvwD02NAMA_BADAN_USAHA: TcxGridDBBandedColumn;
    gvwD02KODE_BENTUK_BADAN_USAHA: TcxGridDBBandedColumn;
    gvwD02TEMPAT_PENDIRIAN: TcxGridDBBandedColumn;
    gvwD02NOMOR_AKTA_PENDIRIAN: TcxGridDBBandedColumn;
    gvwD02TANGGAL_AKTA_PENDIRIAN: TcxGridDBBandedColumn;
    gvwD02NOMOR_AKTA_PERUBAHAN_TERAKHIR: TcxGridDBBandedColumn;
    gvwD02TANGGAL_AKTA_PERUBAHAN_TERAKHIR: TcxGridDBBandedColumn;
    gvwD02NOMOR_TELEPON: TcxGridDBBandedColumn;
    gvwD02NOMOR_TELEPON_SELULER: TcxGridDBBandedColumn;
    gvwD02EMAIL: TcxGridDBBandedColumn;
    gvwD02ALAMAT: TcxGridDBBandedColumn;
    gvwD02KELURAHAN: TcxGridDBBandedColumn;
    gvwD02KECAMATAN: TcxGridDBBandedColumn;
    gvwD02KODE_KOTA: TcxGridDBBandedColumn;
    gvwD02KODE_POS: TcxGridDBBandedColumn;
    gvwD02KODE_NEGARA_DOMISILI: TcxGridDBBandedColumn;
    gvwD02KODE_BIDANG_USAHA: TcxGridDBBandedColumn;
    gvwD02KODE_HUBUNGAN_DENGAN_PELAPOR: TcxGridDBBandedColumn;
    gvwD02MELANGGAR: TcxGridDBBandedColumn;
    gvwD02MELAMPAUI: TcxGridDBBandedColumn;
    gvwD02GO_PUBLIC: TcxGridDBBandedColumn;
    gvwD02KODE_GOLONGAN_DEBITUR: TcxGridDBBandedColumn;
    gvwD02RATING_DEBITUR: TcxGridDBBandedColumn;
    gvwD02LEMBAGA_PEMERINGKAT: TcxGridDBBandedColumn;
    gvwD02TANGGAL_PEMERINGKATAN: TcxGridDBBandedColumn;
    gvwD02NAMA_GROUP_USAHA_DEBITUR: TcxGridDBBandedColumn;
    gvwD02KODE_KANTOR_CABANG: TcxGridDBBandedColumn;
    gvwD02OPERASI_DATA: TcxGridDBBandedColumn;
    gvwF06ID_LAPORAN: TcxGridDBBandedColumn;
    gvwF06NOMOR_REKENING_FASILITAS: TcxGridDBBandedColumn;
    gvwF06CIF_DEBITUR: TcxGridDBBandedColumn;
    gvwF06KODE_JENIS_FASILITAS_LAIN: TcxGridDBBandedColumn;
    gvwF06SUMBER_DANA: TcxGridDBBandedColumn;
    gvwF06TANGGAL_MULAI: TcxGridDBBandedColumn;
    gvwF06TANGGAL_JATUH_TEMPO: TcxGridDBBandedColumn;
    gvwF06SUKU_BUNGA: TcxGridDBBandedColumn;
    gvwF06KODE_VALUTA: TcxGridDBBandedColumn;
    gvwF06NOMINAL: TcxGridDBBandedColumn;
    gvwF06NILAI_DALAM_MATA_UANG_ASAL: TcxGridDBBandedColumn;
    gvwF06KODE_KUALITAS: TcxGridDBBandedColumn;
    gvwF06TANGGAL_MACET: TcxGridDBBandedColumn;
    gvwF06KODE_SEBAB_MACET: TcxGridDBBandedColumn;
    gvwF06TUNGGAKAN: TcxGridDBBandedColumn;
    gvwF06JUMLAH_HARI_TUNGGAKAN: TcxGridDBBandedColumn;
    gvwF06KODE_KONDISI: TcxGridDBBandedColumn;
    gvwF06TANGGAL_KONDISI: TcxGridDBBandedColumn;
    gvwF06KETERANGAN: TcxGridDBBandedColumn;
    gvwF06KODE_KANTOR_CABANG: TcxGridDBBandedColumn;
    gvwF06OPERASI_DATA: TcxGridDBBandedColumn;
    gvwM01ID_LAPORAN: TcxGridDBBandedColumn;
    gvwM01NOMOR_IDENTITAS_PENGURUS: TcxGridDBBandedColumn;
    gvwM01CIF_DEBITUR: TcxGridDBBandedColumn;
    gvwM01KODE_JENIS_IDENTITAS_PENGURUS: TcxGridDBBandedColumn;
    gvwM01NAMA_PENGURUS: TcxGridDBBandedColumn;
    gvwM01JENIS_KELAMIN: TcxGridDBBandedColumn;
    gvwM01ALAMAT: TcxGridDBBandedColumn;
    gvwM01KELURAHAN: TcxGridDBBandedColumn;
    gvwM01KECAMATAN: TcxGridDBBandedColumn;
    gvwM01KODE_KOTA: TcxGridDBBandedColumn;
    gvwM01KODE_JABATAN: TcxGridDBBandedColumn;
    gvwM01PANGSA_KEPEMILIKAN: TcxGridDBBandedColumn;
    gvwM01STATUS_PENGURUS: TcxGridDBBandedColumn;
    gvwM01KODE_KANTOR_CABANG: TcxGridDBBandedColumn;
    gvwM01OPERASI_DATA: TcxGridDBBandedColumn;
    gvwD01ID_LAPORAN: TcxGridDBBandedColumn;
    gvwD01CIF_DEBITUR: TcxGridDBBandedColumn;
    gvwD01JENIS_IDENTITAS: TcxGridDBBandedColumn;
    gvwD01NOMOR_IDENTITAS: TcxGridDBBandedColumn;
    gvwD01NAMA_SESUAI_IDENTITAS: TcxGridDBBandedColumn;
    gvwD01NAMA_LENGKAP: TcxGridDBBandedColumn;
    gvwD01KODE_STATUS_PENDIDIKAN: TcxGridDBBandedColumn;
    gvwD01JENIS_KELAMIN: TcxGridDBBandedColumn;
    gvwD01TEMPAT_LAHIR: TcxGridDBBandedColumn;
    gvwD01TANGGAL_LAHIR: TcxGridDBBandedColumn;
    gvwD01NOMOR_POKOK_WAJIB_PAJAK: TcxGridDBBandedColumn;
    gvwD01ALAMAT: TcxGridDBBandedColumn;
    gvwD01KELURAHAN: TcxGridDBBandedColumn;
    gvwD01KECAMATAN: TcxGridDBBandedColumn;
    gvwD01KODE_KOTA: TcxGridDBBandedColumn;
    gvwD01KODE_POS: TcxGridDBBandedColumn;
    gvwD01NOMOR_TELEPON: TcxGridDBBandedColumn;
    gvwD01NOMOR_TELEPON_SELULER: TcxGridDBBandedColumn;
    gvwD01EMAIL: TcxGridDBBandedColumn;
    gvwD01KODE_NEGARA_DOMISILI: TcxGridDBBandedColumn;
    gvwD01KODE_PEKERJAAN: TcxGridDBBandedColumn;
    gvwD01TEMPAT_BEKERJA: TcxGridDBBandedColumn;
    gvwD01KODE_BIDANG_USAHA_TEMPAT_BEKERJA: TcxGridDBBandedColumn;
    gvwD01ALAMAT_TEMPAT_BEKERJA: TcxGridDBBandedColumn;
    gvwD01PENGHASILAN_KOTOR_PER_TAHUN: TcxGridDBBandedColumn;
    gvwD01KODE_SUMBER_PENGHASILAN: TcxGridDBBandedColumn;
    gvwD01JUMLAH_TANGGUNGAN: TcxGridDBBandedColumn;
    gvwD01KODE_HUBUNGAN_DENGAN_PELAPOR: TcxGridDBBandedColumn;
    gvwD01KODE_GOLONGAN_DEBITUR: TcxGridDBBandedColumn;
    gvwD01STATUS_PERKAWINAN_DEBITUR: TcxGridDBBandedColumn;
    gvwD01NOMOR_IDENTITAS_PASANGAN: TcxGridDBBandedColumn;
    gvwD01NAMA_PASANGAN: TcxGridDBBandedColumn;
    gvwD01TANGGAL_LAHIR_PASANGAN: TcxGridDBBandedColumn;
    gvwD01PERJANJIAN_PISAH_HARTA: TcxGridDBBandedColumn;
    gvwD01MELANGGAR: TcxGridDBBandedColumn;
    gvwD01MELAMPAUI: TcxGridDBBandedColumn;
    gvwD01NAMA_GADIS_IBU_KANDUNG: TcxGridDBBandedColumn;
    gvwD01KODE_KANTOR_CABANG: TcxGridDBBandedColumn;
    gvwD01OPERASI_DATA: TcxGridDBBandedColumn;
    gvwP01ID_LAPORAN: TcxGridDBBandedColumn;
    gvwP01NOMOR_IDENTITAS_PENJAMIN: TcxGridDBBandedColumn;
    gvwP01NOMOR_REKENING_FASILITAS: TcxGridDBBandedColumn;
    gvwP01CIF_DEBITUR: TcxGridDBBandedColumn;
    gvwP01KODE_JENIS_SEGMEN_FASILITAS: TcxGridDBBandedColumn;
    gvwP01KODE_JENIS_IDENTITAS_PENJAMIN: TcxGridDBBandedColumn;
    gvwP01NAMA_PENJAMIN_SESUAI_IDENTITAS: TcxGridDBBandedColumn;
    gvwP01NAMA_LENGKAP_PENJAMIN: TcxGridDBBandedColumn;
    gvwP01KODE_GOLONGAN_PENJAMIN: TcxGridDBBandedColumn;
    gvwP01ALAMAT_PENJAMIN: TcxGridDBBandedColumn;
    gvwP01PRESENTASE_FASILITAS_YANG_DIJAMIN: TcxGridDBBandedColumn;
    gvwP01KETERANGAN: TcxGridDBBandedColumn;
    gvwP01KODE_KANTOR_CABANG: TcxGridDBBandedColumn;
    gvwP01OPERASI_DATA: TcxGridDBBandedColumn;
    actGenerateSlikData: TNAction;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    actSaveData: TNAction;
    SaveData: TSaveDialog;
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSaveDataExecute(Sender: TObject);
    procedure actGenerateSlikDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CreateSLIKFile(AFolderPath: String);
  end;

var
  frmSlikInterfaceList: TfrmSlikInterfaceList;

implementation

{$R *.dfm}

uses DataGlobal;

procedure TfrmSlikInterfaceList.actGenerateSlikDataExecute(Sender: TObject);
var
  sAsk, sMsg: String;
  iYear, iMonth: Word;
  dtSystem, eoDate: TDate;
  bRes: Boolean;
  oErrorList: TStringList;
  sFileName: string;
begin
  inherited;
  iYear := StrToIntDef(VarToStrDef(edYear.EditValue, '2022'), 2022);
  iMonth := StrToIntDef(VarToStrDef(edMonth.EditValue, '1'), 1);
  eoDate := EndOfAMonth(iYear, iMonth);

  dtSystem := dmGlobal.RemoteServer.GetTransDate;
  if (eoDate >= dtSystem ) then
  begin
    MessageError('Generate SLIK Data maximum for Period ' + QuotedStr(FormatDateTime('MMMM YYYY', IncMonth(dtSystem, -1))));
    Exit;
  end;

  if (Not cdsSLIK.Active) or (cdsSLIK.Params[0].AsInteger = iYear) or (cdsSLIK.Params[1].AsInteger = iMonth) then
  begin
    cdsSLIK.Close;
    cdsSLIK.Params[0].AsInteger := iYear;
    cdsSLIK.Params[1].AsInteger := iMonth;
    cdsSLIK.Open;
  end;

  if cdsSLIK.IsEmpty then
  begin
    sAsk := 'Are you sure to generate SLIK Data for period "'
      + VarToStrDef(edYear.EditValue, '2022') + '-'
      + RIGHTSTR('00' + VarToStrDef(edMonth.EditValue, '01'), 2) + '" ?';
  end
  else
  begin
    sAsk := 'Data already generated' + #13#10
      + 'Are you sure to re-generate SLIK Data for period "'
      + VarToStrDef(edYear.EditValue, '2022') + '-'
      + RIGHTSTR('00' + VarToStrDef(edMonth.EditValue, '01'), 2) + '" ?';
  end;

  if MessageDlg(sAsk, mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    bRes := dmGlobal.RemoteServer.GenerateSLIKData(edYear.EditValue, edMonth.EditValue, sMsg);

    if bRes then
      MessageDlg(sMsg, TMsgDlgType.mtInformation, [mbOk], 0)
    else
    begin
      MessageDlg(sMsg, TMsgDlgType.mtError, [mbOk], 0)
//      if MessageQuestion(sMsg + #10#13 + 'Show error generate slik ?') then
//      begin
//        try
//          oForm := TfrmErrorGenerateSlikList.Create(nil);
//          oForm.ShowModal;
//        finally
//          FreeAndNil(oForm);
//        end;
//      end;
    end;
  end;
end;

procedure TfrmSlikInterfaceList.actRefreshExecute(Sender: TObject);
var
  iYear, iMonth: Integer;
begin
  inherited;
  iYear := StrToIntDef(VarToStrDef(edYear.EditValue, '2022'), 2022);
  iMonth := StrToIntDef(VarToStrDef(edMonth.EditValue, '1'), 1);

  if (cdsSLIK.Params[0].AsInteger = iYear) And (cdsSLIK.Params[1].AsInteger = iMonth) then
  begin
    cdsSLIK.Close;
    cdsSLIK.Params[0].AsInteger := 0;
    cdsSLIK.Params[1].AsInteger := 0;
    cdsSLIK.Open;
  end;

  cdsSLIK.Close;
  cdsSLIK.Params[0].AsInteger := iYear;
  cdsSLIK.Params[1].AsInteger := iMonth;
  cdsSLIK.Open;

  gvwMaster.ApplyBestFit();
  gvwD02.ApplyBestFit();
  gvwF06.ApplyBestFit();
  gvwM01.ApplyBestFit();
end;

procedure TfrmSlikInterfaceList.actSaveDataExecute(Sender: TObject);
var
  sFileName, sPath: string;
  bRes: Boolean;
begin
  inherited;
  if (not cdsSLIK.Active) then
    Exit;

  SaveData.DefaultExt  := '.txt';
  SaveData.Filter      := 'Text File|*.txt';
  SaveData.FileName    := 'SLIK-' + FormatDateTime('MMMM YYYY', EncodeDate(cdsSLIK.Params[0].AsInteger, cdsSLIK.Params[1].AsInteger, 1)) + '.txt';

  if SaveData.Execute then
  begin
    sFileName := SaveData.FileName;
    sPath := ExtractFilePath(sFileName);

    CreateSLIKFile(sPath);
  end;
end;

procedure TfrmSlikInterfaceList.CreateSLIKFile(AFolderPath: String);
var
  sFileName, sData: String;
  slFile, slMsg: TStringList;

  sTanggalMacet, sTanggalKondisi, sTanggalPenilaiIndependen, sTanggalPemeringkatan: String;
  sTanggalLahir, sTanggalLahirPasangan, sTanggalMulai, sTanggalJatuhTempo: string;
  sTanggalPengikatan, sTanggalAktaPendirian, sTanggalAktaPerubahan: string;
begin
  slFile := TStringList.Create;
  slMsg := TStringList.Create;
  Try
    //Create SLIK A01
    sFileName := AFolderPath + cdsSLIKKODE_JENIS_PELAPOR.AsString + '.'
      + cdsSLIKKODE_PELAPOR.AsString + '.'
      + cdsSLIKTAHUN.AsString + '.'
      + FormatFloat('00', cdsSLIKBULAN.AsInteger) + '.A01.1.txt';

    slFile.Clear;
    slFile.Add('H|' + cdsSLIKKODE_JENIS_PELAPOR.AsString + '|'
      + cdsSLIKKODE_PELAPOR.AsString + '|'
      + cdsSLIKTAHUN.AsString + '|'
      + FormatFloat('00', cdsSLIKBULAN.AsInteger) + '|A01|'
      + IntToStr(cdsA01.RecordCount) + '|'
      + IntToStr(cdsA01.RecordCount)
      );

    cdsA01.First;
    while not cdsA01.Eof do
    begin
      if cdsA01TANGGAL_PENILAIAN_AGUNAN_MENURUT_PENILAI_INDEPENDEN.IsNull then
        sTanggalPenilaiIndependen := ''
      else
        sTanggalPenilaiIndependen := FormatDateTime('YYYYMMDD', cdsA01TANGGAL_PENILAIAN_AGUNAN_MENURUT_PENILAI_INDEPENDEN.AsDateTime);

      if cdsA01TANGGAL_PENILAIAN_AGUNAN_MENURUT_PELAPOR.IsNull then
        sTanggalPengikatan := ''
      else
        sTanggalPengikatan := FormatDateTime('YYYYMMDD', cdsA01TANGGAL_PENILAIAN_AGUNAN_MENURUT_PELAPOR.AsDateTime);


      slFile.Add('D|' + cdsA01KODE_REGISTER.AsString + '|'
        + cdsA01NOMOR_REKENING_FASILITAS.AsString + '|'
        + cdsA01CIF_DEBITUR.AsString + '|'
        + cdsA01KODE_JENIS_SEGMEN_FASILITAS.AsString + '|'
        + cdsA01KODE_STATUS_AGUNAN.AsString + '|'
        + cdsA01KODE_JENIS_AGUNAN.AsString + '|'
        + cdsA01PERINGKAT_AGUNAN.AsString + '|'
        + cdsA01LEMBAGA_PEMERINGKAT.AsString + '|'
        + cdsA01KODE_JENIS_PENGIKATAN.AsString + '|'
        + FormatDateTime('YYYYMMDD', cdsA01TANGGAL_PENGIKATAN.AsDateTime) + '|'
        + cdsA01NAMA_PEMILIK_AGUNAN.AsString + '|'
        + cdsA01BUKTI_KEPEMILIKAN.AsString + '|'
        + cdsA01ALAMAT_AGUNAN.AsString + '|'
        + cdsA01KODE_KOTA.AsString + '|'
        + FormatFloat('0', cdsA01NILAI_AGUNAN_SESUAI_NJOP.AsFloat) + '|'
        + FormatFloat('0', cdsA01NILAI_AGUNAN_MENURUT_PELAPOR.AsFloat) + '|'
        + sTanggalPengikatan + '|'
        + FormatFloat('#', cdsA01NILAI_AGUNAN_MENURUT_PENILAI_INDEPENDEN.AsFloat) + '|'
        + cdsA01NAMA_PENILAI_INDEPENDEN.AsString + '|'
        + sTanggalPenilaiIndependen + '|'
        + cdsA01STATUS_PARIPASU.AsString + '|'
        + FormatFloat('#', cdsA01PRESENTASE_PARIPASU.AsFloat) + '|'
        + cdsA01STATUS_AGUNAN_KREDIT.AsString + '|'
        + cdsA01DIASURANSIKAN.AsString + '|'
        + cdsA01KETERANGAN.AsString + '|'
        + cdsA01KODE_KANTOR_CABANG.AsString + '|'
        + cdsA01OPERASI_DATA.AsString
        );

      cdsA01.Next;
    end;

    slFile.SaveToFile(sFileName);

    if FileExists(sFileName) then
    begin
      slMsg.Add('A01 --> ' + sFileName);
    end;

    //Create SLIK D02
    sFileName := AFolderPath + cdsSLIKKODE_JENIS_PELAPOR.AsString + '.'
      + cdsSLIKKODE_PELAPOR.AsString + '.'
      + cdsSLIKTAHUN.AsString + '.'
      + FormatFloat('00', cdsSLIKBULAN.AsInteger) + '.D02.1.txt';

    slFile.Clear;
    slFile.Add('H|' + cdsSLIKKODE_JENIS_PELAPOR.AsString + '|'
      + cdsSLIKKODE_PELAPOR.AsString + '|'
      + cdsSLIKTAHUN.AsString + '|'
      + FormatFloat('00', cdsSLIKBULAN.AsInteger) + '|D02|'
      + IntToStr(cdsD02.RecordCount) + '|'
      + IntToStr(cdsD02.RecordCount)
      );

    cdsD02.First;
    while not cdsD02.Eof do
    begin
      if cdsD02TANGGAL_PEMERINGKATAN.IsNull then
        sTanggalPemeringkatan := ''
      else
        sTanggalPemeringkatan := FormatDateTime('YYYYMMDD', cdsD02TANGGAL_PEMERINGKATAN.AsDateTime);

      if cdsD02TANGGAL_AKTA_PENDIRIAN.IsNull then
        sTanggalAktaPendirian := ''
      else
        sTanggalAktaPendirian := FormatDateTime('YYYYMMDD', cdsD02TANGGAL_AKTA_PENDIRIAN.AsDateTime);

      if cdsD02TANGGAL_AKTA_PERUBAHAN_TERAKHIR.IsNull then
        sTanggalAktaPerubahan := ''
      else
        sTanggalAktaPerubahan := FormatDateTime('YYYYMMDD', cdsD02TANGGAL_AKTA_PERUBAHAN_TERAKHIR.AsDateTime);

      slFile.Add('D|' + cdsD02CIF_DEBITUR.AsString + '|'
        + cdsD02ID_BADAN_USAHA.AsString + '|'
        + cdsD02NAMA_BADAN_USAHA.AsString + '|'
        + cdsD02KODE_BENTUK_BADAN_USAHA.AsString + '|'
        + cdsD02TEMPAT_PENDIRIAN.AsString + '|'
        + cdsD02NOMOR_AKTA_PENDIRIAN.AsString + '|'
        + sTanggalAktaPendirian + '|'
        + cdsD02NOMOR_AKTA_PERUBAHAN_TERAKHIR.AsString + '|'
        + sTanggalAktaPerubahan + '|'
        + cdsD02NOMOR_TELEPON.AsString + '|'
        + cdsD02NOMOR_TELEPON_SELULER.AsString + '|'
        + cdsD02EMAIL.AsString + '|'
        + cdsD02ALAMAT.AsString + '|'
        + cdsD02KELURAHAN.AsString + '|'
        + cdsD02KECAMATAN.AsString + '|'
        + cdsD02KODE_KOTA.AsString + '|'
        + cdsD02KODE_POS.AsString + '|'
        + cdsD02KODE_NEGARA_DOMISILI.AsString + '|'
        + cdsD02KODE_BIDANG_USAHA.AsString + '|'
        + cdsD02KODE_HUBUNGAN_DENGAN_PELAPOR.AsString + '|'
        + cdsD02MELANGGAR.AsString + '|'
        + cdsD02MELAMPAUI.AsString + '|'
        + cdsD02GO_PUBLIC.AsString + '|'
        + cdsD02KODE_GOLONGAN_DEBITUR.AsString + '|'
        + cdsD02RATING_DEBITUR.AsString + '|'
        + cdsD02LEMBAGA_PEMERINGKAT.AsString + '|'
        + sTanggalPemeringkatan + '|'
        + cdsD02NAMA_GROUP_USAHA_DEBITUR.AsString + '|'
        + cdsD02KODE_KANTOR_CABANG.AsString + '|'
        + cdsD02OPERASI_DATA.AsString
        );

      cdsD02.Next;
    end;

    slFile.SaveToFile(sFileName);

    if FileExists(sFileName) then
    begin
      slMsg.Add('D02 --> ' + sFileName);
    end;

    //Create SLIK F06
    sFileName := AFolderPath + cdsSLIKKODE_JENIS_PELAPOR.AsString + '.'
      + cdsSLIKKODE_PELAPOR.AsString + '.'
      + cdsSLIKTAHUN.AsString + '.'
      + FormatFloat('00', cdsSLIKBULAN.AsInteger) + '.F06.1.txt';

    slFile.Clear;
    slFile.Add('H|' + cdsSLIKKODE_JENIS_PELAPOR.AsString + '|'
      + cdsSLIKKODE_PELAPOR.AsString + '|'
      + cdsSLIKTAHUN.AsString + '|'
      + FormatFloat('00', cdsSLIKBULAN.AsInteger) + '|F06|'
      + IntToStr(cdsF06.RecordCount) + '|'
      + IntToStr(cdsF06.RecordCount)
      );

    cdsF06.First;
    while not cdsF06.Eof do
    begin
      if cdsF06KODE_KUALITAS.AsString = '5' then
      begin
        if cdsF06TANGGAL_MACET.IsNull then
          sTanggalMacet := ''
        else
          sTanggalMacet := FormatDateTime('YYYYMMDD', cdsF06TANGGAL_MACET.AsDateTime);
      end
      else
        sTanggalMacet := '';

      if cdsF06KODE_KONDISI.AsString = '00' then
      begin
        sTanggalKondisi := '';
      end
      else
      begin
        if cdsF06TANGGAL_KONDISI.IsNull then
          sTanggalKondisi := ''
        else
          sTanggalKondisi := FormatDateTime('YYYYMMDD', cdsF06TANGGAL_KONDISI.AsDateTime);
      end;

      if cdsF06TANGGAL_MULAI.IsNull then
        sTanggalMulai := ''
      else
        sTanggalMulai := FormatDateTime('YYYYMMDD', cdsF06TANGGAL_MULAI.AsDateTime);

      if cdsF06TANGGAL_JATUH_TEMPO.IsNull then
        sTanggalJatuhTempo := ''
      else
        sTanggalJatuhTempo := FormatDateTime('YYYYMMDD', cdsF06TANGGAL_JATUH_TEMPO.AsDateTime);


      slFile.Add('D|' + cdsF06NOMOR_REKENING_FASILITAS.AsString + '|'
        + cdsF06CIF_DEBITUR.AsString + '|'
        + cdsF06KODE_JENIS_FASILITAS_LAIN.AsString + '|'
        + cdsF06SUMBER_DANA.AsString + '|'
        + sTanggalMulai + '|'
        + sTanggalJatuhTempo + '|'
        + StringReplace(FormatFloat('#.00', cdsF06SUKU_BUNGA.AsFloat), '.', ',', [rfReplaceAll]) + '|'
        + cdsF06KODE_VALUTA.AsString + '|'
        + FormatFloat('#;#;0', cdsF06NOMINAL.AsFloat) + '|'
        + FormatFloat('#', cdsF06NILAI_DALAM_MATA_UANG_ASAL.AsFloat) + '|'
        + cdsF06KODE_KUALITAS.AsString + '|'
        + sTanggalMacet + '|'
        + cdsF06KODE_SEBAB_MACET.AsString + '|'
        + FormatFloat('#;#;0', cdsF06TUNGGAKAN.AsFloat) + '|'
        + FormatFloat('#;#;0', cdsF06JUMLAH_HARI_TUNGGAKAN.AsInteger) + '|'
        + cdsF06KODE_KONDISI.AsString + '|'
        + sTanggalKondisi + '|'
        + cdsF06KETERANGAN.AsString + '|'
        + cdsF06KODE_KANTOR_CABANG.AsString + '|'
        + cdsF06OPERASI_DATA.AsString
        );

      cdsF06.Next;
    end;

    slFile.SaveToFile(sFileName);

    if FileExists(sFileName) then
    begin
      slMsg.Add('F06 --> ' + sFileName);
    end;

    //Create SLIK M01
    sFileName := AFolderPath + cdsSLIKKODE_JENIS_PELAPOR.AsString + '.'
      + cdsSLIKKODE_PELAPOR.AsString + '.'
      + cdsSLIKTAHUN.AsString + '.'
      + FormatFloat('00', cdsSLIKBULAN.AsInteger) + '.M01.1.txt';

    slFile.Clear;
    slFile.Add('H|' + cdsSLIKKODE_JENIS_PELAPOR.AsString + '|'
      + cdsSLIKKODE_PELAPOR.AsString + '|'
      + cdsSLIKTAHUN.AsString + '|'
      + FormatFloat('00', cdsSLIKBULAN.AsInteger) + '|M01|'
      + IntToStr(cdsM01.RecordCount) + '|'
      + IntToStr(cdsM01.RecordCount)
      );

    cdsM01.First;
    while not cdsM01.Eof do
    begin
      slFile.Add('D|' + cdsM01NOMOR_IDENTITAS_PENGURUS.AsString + '|'
        + cdsM01CIF_DEBITUR.AsString + '|'
        + cdsM01KODE_JENIS_IDENTITAS_PENGURUS.AsString + '|'
        + cdsM01NAMA_PENGURUS.AsString + '|'
        + cdsM01JENIS_KELAMIN.AsString + '|'
        + cdsM01ALAMAT.AsString + '|'
        + cdsM01KELURAHAN.AsString + '|'
        + cdsM01KECAMATAN.AsString + '|'
        + cdsM01KODE_KOTA.AsString + '|'
        + cdsM01KODE_JABATAN.AsString + '|'
        + StringReplace(FormatFloat('#.00', cdsM01PANGSA_KEPEMILIKAN.AsFloat), '.', ',', [rfReplaceAll]) + '|'
        + cdsM01STATUS_PENGURUS.AsString + '|'
        + cdsM01KODE_KANTOR_CABANG.AsString + '|'
        + cdsM01OPERASI_DATA.AsString
        );

      cdsM01.Next;
    end;

    slFile.SaveToFile(sFileName);

    if FileExists(sFileName) then
    begin
      slMsg.Add('M01 --> ' + sFileName);
    end;

    //Create SLIK D01
    sFileName := AFolderPath + cdsSLIKKODE_JENIS_PELAPOR.AsString + '.'
      + cdsSLIKKODE_PELAPOR.AsString + '.'
      + cdsSLIKTAHUN.AsString + '.'
      + FormatFloat('00', cdsSLIKBULAN.AsInteger) + '.D01.1.txt';

    slFile.Clear;
    slFile.Add('H|' + cdsSLIKKODE_JENIS_PELAPOR.AsString + '|'
      + cdsSLIKKODE_PELAPOR.AsString + '|'
      + cdsSLIKTAHUN.AsString + '|'
      + FormatFloat('00', cdsSLIKBULAN.AsInteger) + '|D01|'
      + IntToStr(cdsD01.RecordCount) + '|'
      + IntToStr(cdsD01.RecordCount)
      );

    cdsD01.First;
    while not cdsD01.Eof do
    begin
      if cdsD01TANGGAL_LAHIR.IsNull then
        sTanggalLahir := ''
      else
        sTanggalLahir := FormatDateTime('yyyymmdd', cdsD01TANGGAL_LAHIR.AsDateTime);

      if cdsD01TANGGAL_LAHIR_PASANGAN.IsNull then
        sTanggalLahirPasangan := ''
      else
        sTanggalLahirPasangan := FormatDateTime('yyyymmdd', cdsD01TANGGAL_LAHIR_PASANGAN.AsDateTime);

      slFile.Add('D|'+ cdsD01CIF_DEBITUR.AsString + '|'
        + cdsD01JENIS_IDENTITAS.AsString + '|'
        + cdsD01NOMOR_IDENTITAS.AsString + '|'
        + cdsD01NAMA_SESUAI_IDENTITAS.AsString + '|'
        + cdsD01NAMA_LENGKAP.AsString + '|'
        + cdsD01KODE_STATUS_PENDIDIKAN.AsString + '|'
        + cdsD01JENIS_KELAMIN.AsString + '|'
        + cdsD01TEMPAT_LAHIR.AsString + '|'
        + sTanggalLahir + '|'
        + cdsD01NOMOR_POKOK_WAJIB_PAJAK.AsString + '|'
        + cdsD01ALAMAT.AsString + '|'
        + cdsD01KELURAHAN.AsString + '|'
        + cdsD01KECAMATAN.AsString + '|'
        + cdsD01KODE_KOTA.AsString + '|'
        + cdsD01KODE_POS.AsString + '|'
        + cdsD01NOMOR_TELEPON.AsString + '|'
        + cdsD01NOMOR_TELEPON_SELULER.AsString + '|'
        + cdsD01EMAIL.AsString + '|'
        + cdsD01KODE_NEGARA_DOMISILI.AsString + '|'
        + cdsD01KODE_PEKERJAAN.AsString + '|'
        + cdsD01TEMPAT_BEKERJA.AsString + '|'
        + cdsD01KODE_BIDANG_USAHA_TEMPAT_BEKERJA.AsString + '|'
        + cdsD01ALAMAT_TEMPAT_BEKERJA.AsString + '|'
        + FormatFloat('#', cdsD01PENGHASILAN_KOTOR_PER_TAHUN.AsFloat) + '|'
        + cdsD01KODE_SUMBER_PENGHASILAN.AsString + '|'
        + cdsD01JUMLAH_TANGGUNGAN.AsString + '|'
        + cdsD01KODE_HUBUNGAN_DENGAN_PELAPOR.AsString + '|'
        + cdsD01KODE_GOLONGAN_DEBITUR.AsString + '|'
        + cdsD01STATUS_PERKAWINAN_DEBITUR.AsString + '|'
        + cdsD01NOMOR_IDENTITAS_PASANGAN.AsString + '|'
        + cdsD01NAMA_PASANGAN.AsString + '|'
        + sTanggalLahirPasangan + '|'
        + cdsD01PERJANJIAN_PISAH_HARTA.AsString + '|'
        + cdsD01MELANGGAR.AsString + '|'
        + cdsD01MELAMPAUI.AsString + '|'
        + cdsD01NAMA_GADIS_IBU_KANDUNG.AsString + '|'
        + cdsD01KODE_KANTOR_CABANG.AsString + '|'
        + cdsD01OPERASI_DATA.AsString
      );
      cdsD01.Next;
    end;

    slFile.SaveToFile(sFileName);

    if FileExists(sFileName) then
    begin
      slMsg.Add('D01 --> ' + sFileName);
    end;


    //Create SLIK P01
    sFileName := AFolderPath + cdsSLIKKODE_JENIS_PELAPOR.AsString + '.'
      + cdsSLIKKODE_PELAPOR.AsString + '.'
      + cdsSLIKTAHUN.AsString + '.'
      + FormatFloat('00', cdsSLIKBULAN.AsInteger) + '.P01.1.txt';

    slFile.Clear;
    slFile.Add('H|' + cdsSLIKKODE_JENIS_PELAPOR.AsString + '|'
      + cdsSLIKKODE_PELAPOR.AsString + '|'
      + cdsSLIKTAHUN.AsString + '|'
      + FormatFloat('00', cdsSLIKBULAN.AsInteger) + '|P01|'
      + IntToStr(cdsP01.RecordCount) + '|'
      + IntToStr(cdsP01.RecordCount)
      );

    cdsP01.First;
    while not cdsP01.Eof do
    begin
      slFile.Add('D|' + cdsP01NOMOR_IDENTITAS_PENJAMIN.AsString + '|'
        + cdsP01NOMOR_REKENING_FASILITAS.AsString + '|'
        + cdsP01CIF_DEBITUR.AsString + '|'
        + cdsP01KODE_JENIS_SEGMEN_FASILITAS.AsString + '|'
        + cdsP01KODE_JENIS_IDENTITAS_PENJAMIN.AsString + '|'
        + cdsP01NAMA_PENJAMIN_SESUAI_IDENTITAS.AsString + '|'
        + cdsP01NAMA_LENGKAP_PENJAMIN.AsString + '|'
        + cdsP01KODE_GOLONGAN_PENJAMIN.AsString + '|'
        + cdsP01ALAMAT_PENJAMIN.AsString + '|'
        + cdsP01PRESENTASE_FASILITAS_YANG_DIJAMIN.AsString + '|'
        + cdsP01KETERANGAN.AsString + '|'
        + cdsP01KODE_KANTOR_CABANG.AsString + '|'
        + cdsP01OPERASI_DATA.AsString
      );
      cdsP01.Next;
    end;

    slFile.SaveToFile(sFileName);

    if FileExists(sFileName) then
    begin
      slMsg.Add('P01 --> ' + sFileName);
    end;

    if slMsg.Count > 0 then
    begin
      slMsg.Insert(0, 'SLIK Data Have Been Saved.');

      ShowMessage(slMsg.Text);
    end;
  Finally
    FreeAndNil(slMsg);
    FreeAndNil(slFile);
  End;
end;

procedure TfrmSlikInterfaceList.FormCreate(Sender: TObject);
var
  dtSystem: TDate;
  iYear, iMonth, iDay: Word;
begin
  inherited;
  dtSystem := dmGlobal.RemoteServer.GetTransDate;
  DecodeDate(dtSystem, iYear, iMonth, iDay);

  if iMonth = 1 then
  begin
    iYear := iYear - 1;
    iMonth := 12;
  end
  else
    iMonth := iMonth - 1;

  edYear.EditValue := iYear;
  edMonth.EditValue := iMonth;

  actRefresh.Execute;
end;

Initialization
  RegisterClass(TfrmSlikInterfaceList);

end.

class LaporanModel {
  final String nama;
  final String judul;
  final String deskripsi;
  final DateTime tanggal;
  final String image;
  LaporanModel({
    required this.nama,
    required this.judul,
    required this.deskripsi,
    required this.tanggal,
    required this.image,
  });
}

// ini data dami
List<LaporanModel> report = [
  LaporanModel(
      nama: 'likaaa',
      judul: 'Berita 1',
      deskripsi: 'kklasjhewgfbcbghcvegwudhiqdjbcvyuu bhgud3irf hfyu3rfhiuewbf',
      tanggal: DateTime(2025, 5, 3, 32),
      image: 'assets/images/onboarding.png'),
  LaporanModel(
      nama: 'likaaa',
      judul: 'Berita 2',
      deskripsi: 'kklasjhewgfbcbghcvegwudhiqdjbcvyuu bhgud3irf hfyu3rfhiuewbf',
      tanggal: DateTime(2025, 5, 3, 32),
      image: 'assets/images/onboarding.png'),
  LaporanModel(
      nama: 'likaaa',
      judul: 'Berita 3',
      deskripsi: 'kklasjhewgfbcbghcvegwudhiqdjbcvyuu bhgud3irf hfyu3rfhiuewbf',
      tanggal: DateTime(2025, 5, 3, 32),
      image: 'assets/images/onboarding.png'),
  LaporanModel(
      nama: 'likaaa',
      judul: 'Berita 4',
      deskripsi: 'kklasjhewgfbcbghcvegwudhiqdjbcvyuu bhgud3irf hfyu3rfhiuewbf',
      tanggal: DateTime(2025, 5, 3, 32),
      image: 'assets/images/onboarding.png'),
];

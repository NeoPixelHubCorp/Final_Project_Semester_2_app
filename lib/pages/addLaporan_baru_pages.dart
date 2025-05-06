import 'package:final_project_pengaduan_masyarakat_sem2/constants/color.dart';
import 'package:final_project_pengaduan_masyarakat_sem2/extentions/google_maps_ext.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LaporanBaruPage extends StatefulWidget {
  const LaporanBaruPage({super.key});

  @override
  State<LaporanBaruPage> createState() => _LaporanBaruPageState();
}

class _LaporanBaruPageState extends State<LaporanBaruPage> {
  final TextEditingController _judulController = TextEditingController();
  final TextEditingController _lokasiController = TextEditingController();
  final TextEditingController _kategoriController = TextEditingController();
  final TextEditingController _detailController = TextEditingController();

  bool get _isButtonEnabled =>
      _judulController.text.isNotEmpty &&
      _lokasiController.text.isNotEmpty &&
      _kategoriController.text.isNotEmpty &&
      _detailController.text.isNotEmpty;

  @override
  void initState() {
    super.initState();
    _judulController.addListener(_onChanged);
    _lokasiController.addListener(_onChanged);
    _kategoriController.addListener(_onChanged);
    _detailController.addListener(_onChanged);
  }

  void _onChanged() {
    setState(() {});
  }

  @override
  void dispose() {
    _judulController.dispose();
    _lokasiController.dispose();
    _kategoriController.dispose();
    _detailController.dispose();
    super.dispose();
  }

  void _pilihGambar() {
    // TODO: Tambahkan logika pemilihan gambar
  }

  void _pilihLokasi() async {
    final LatLng? lokasi = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const GoogleMaps()),
    );

    if (lokasi != null) {
      setState(() {
        _lokasiController.text =
            'Lat: ${lokasi.latitude}, Lng: ${lokasi.longitude}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Laporan Baru', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: _pilihGambar,
              child: Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: const Text('Tambah Gambar'),
              ),
            ),
            const SizedBox(height: 24),
            const Text('Judul Laporan'),
            const SizedBox(height: 8),
            TextField(
              controller: _judulController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Judul',
              ),
            ),
            const SizedBox(height: 16),
            const Text('Lokasi Laporan'),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _lokasiController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Lokasi laporan',
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: _pilihLokasi,
                  child: Container(
                    width: 100,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage(
                            'assets/images/Logo.png'), // ganti dengan gambar map
                        fit: BoxFit.cover,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      color: Colors.black45,
                      child: const Text('Pilih Lokasi',
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 16),
            const Text('Kategori Laporan'),
            const SizedBox(height: 8),
            TextField(
              controller: _kategoriController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Pilih kategori',
              ),
            ),
            const SizedBox(height: 16),
            const Text('Detail Laporan'),
            const SizedBox(height: 8),
            TextField(
              controller: _detailController,
              maxLines: 4,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Detail laporan',
              ),
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _isButtonEnabled
                    ? () {
                        // TODO: Tambahkan aksi submit laporan
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      _isButtonEnabled ? Colors.blue : Colors.grey[300],
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  'Konfirmasi',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColor.gray),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

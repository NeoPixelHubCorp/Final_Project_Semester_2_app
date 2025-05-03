import 'dart:core';

import 'package:flutter/material.dart';
import '../models/laporan_model.dart'; // sesuaikan path

class LaporanCard extends StatelessWidget {
  final List<LaporanModel> laporanList;

  const LaporanCard({super.key, required this.laporanList});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Laporan Terbaru',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 12),

        // List laporan
        ...laporanList.map(
          (laporan) => Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text('N', style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        laporan.nama,
                        style: const TextStyle(
                            fontSize: 12, color: Colors.grey),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        laporan.judul,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        laporan.deskripsi,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 12),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        laporan.tanggal.toString(),
                        style: const TextStyle(
                            fontSize: 10, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMaps extends StatefulWidget {
  const GoogleMaps({super.key});

  @override
  State<GoogleMaps> createState() => _GoogleMapsState();
}

class _GoogleMapsState extends State<GoogleMaps> {
  late GoogleMapController mapController;
  LatLng _titikPilih = LatLng(-6.1751, 106.8650); // Default titik di Jakarta

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _onTap(LatLng latLng) {
    setState(() {
      _titikPilih = latLng;
    });
    Navigator.pop(context, _titikPilih); // Kembali dengan lokasi yang dipilih
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pilih Lokasi'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: _titikPilih,
          zoom: 14.0,
        ),
        onMapCreated: _onMapCreated,
        onTap: _onTap,
        markers: {
          Marker(
            markerId: MarkerId('pilih-lokasi'),
            position: _titikPilih,
          ),
        },
      ),
    );
  }
}

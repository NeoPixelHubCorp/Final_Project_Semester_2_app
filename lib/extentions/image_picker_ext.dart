import 'package:image_picker/image_picker.dart';

Future<void> _pilihGambar() async {
  final ImagePicker picker = ImagePicker();
  final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
    // Lakukan sesuatu dengan gambar yang dipilih, misalnya simpan path gambar
    print('Gambar dipilih: ${pickedFile.path}');
  } else {
    print('Tidak ada gambar yang dipilih');
  }
}

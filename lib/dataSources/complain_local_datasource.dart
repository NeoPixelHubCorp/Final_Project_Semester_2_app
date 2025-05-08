import 'package:final_project_pengaduan_masyarakat_sem2/response/complain_response_model.dart';
import 'package:sqflite/sqflite.dart';

class ProductLocalDataSource {
  ProductLocalDataSource._init();

  static final ProductLocalDataSource instance = ProductLocalDataSource._init();

  static Database? _database;

  final String tableComplain = 'complains';

  // Buat tabel complains
  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $tableComplain (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER,
        category_id INTEGER,
        no_aduan TEXT UNIQUE,
        title TEXT,
        description TEXT,
        image TEXT,
        latitude REAL,
        longitude REAL,
        address TEXT,
        city TEXT,
        district TEXT,
        status TEXT,
        created_at TEXT,
        updated_at TEXT
      )
    ''');
  }

  // Inisialisasi database
  Future<Database> _initDB() async {
    final path = await getDatabasesPath();
    final databasePath = '$path/ticketing3.db';
    return openDatabase(databasePath, version: 1, onCreate: _createDB);
  }

  // Getter untuk instance database
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  // Ambil data complain dari database lokal
  Future<List<Complain>> getComplains() async {
    final db = await instance.database;
    final List<Map<String, dynamic>> maps = await db.query(tableComplain);
    return maps.map((map) => Complain.fromLocalMap(map)).toList();
  }

  // Simpan banyak complain ke database lokal
  Future<void> insertAllComplains(List<Complain> complains) async {
    final db = await instance.database;
    for (var complain in complains) {
      await db.insert(
        tableComplain,
        complain.toLocalMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  // Hapus semua data complain
  Future<void> removeAllComplains() async {
    final db = await instance.database;
    await db.delete(tableComplain);
  }
}

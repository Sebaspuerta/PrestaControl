import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'daos/cliente_dao.dart';
import 'daos/firma_remota_dao.dart';
import 'daos/pago_dao.dart';
import 'daos/prestamo_dao.dart';
import 'tables.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [Clientes, Prestamos, Pagos, FirmasRemotas],
  daos: [ClienteDao, PrestamoDao, PagoDao, FirmaRemotaDao],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'prestacontrol.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}

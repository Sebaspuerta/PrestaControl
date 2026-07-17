import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../database/app_database.dart';
import '../database/daos/cliente_dao.dart';
import '../database/daos/firma_remota_dao.dart';
import '../database/daos/pago_dao.dart';
import '../database/daos/prestamo_dao.dart';

/// Instancia singleton de la base de datos local. Se cierra automáticamente
/// cuando el provider se destruye.
final appDatabaseProvider = Provider<AppDatabase>((ref) {
  final db = AppDatabase();
  ref.onDispose(db.close);
  return db;
});

final clienteDaoProvider = Provider<ClienteDao>((ref) {
  return ref.watch(appDatabaseProvider).clienteDao;
});

final prestamoDaoProvider = Provider<PrestamoDao>((ref) {
  return ref.watch(appDatabaseProvider).prestamoDao;
});

final pagoDaoProvider = Provider<PagoDao>((ref) {
  return ref.watch(appDatabaseProvider).pagoDao;
});

final firmaRemotaDaoProvider = Provider<FirmaRemotaDao>((ref) {
  return ref.watch(appDatabaseProvider).firmaRemotaDao;
});

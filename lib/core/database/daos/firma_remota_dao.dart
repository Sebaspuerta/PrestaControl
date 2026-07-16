import 'package:drift/drift.dart';

import '../app_database.dart';
import '../tables.dart';

part 'firma_remota_dao.g.dart';

@DriftAccessor(tables: [FirmasRemotas])
class FirmaRemotaDao extends DatabaseAccessor<AppDatabase>
    with _$FirmaRemotaDaoMixin {
  FirmaRemotaDao(super.db);

  Future<FirmaRemota?> getFirmaByToken(String token) {
    return (select(firmasRemotas)..where((t) => t.tokenAcceso.equals(token)))
        .getSingleOrNull();
  }

  Future<FirmaRemota?> getFirmaByPrestamo(String prestamoId) {
    return (select(
      firmasRemotas,
    )..where((t) => t.prestamoId.equals(prestamoId))).getSingleOrNull();
  }

  Future<int> insertFirma(FirmasRemotasCompanion firma) {
    return into(firmasRemotas).insert(firma);
  }

  Future<bool> marcarComoFirmada(
    String token, {
    required DateTime fechaFirma,
    required String firmaImagenPath,
    String? ipFirmante,
    double? latitud,
    double? longitud,
    required String hashDocumento,
  }) {
    return (update(firmasRemotas)..where((t) => t.tokenAcceso.equals(token)))
        .write(
          FirmasRemotasCompanion(
            firmado: const Value(true),
            fechaFirma: Value(fechaFirma),
            firmaImagenPath: Value(firmaImagenPath),
            ipFirmante: Value(ipFirmante),
            latitud: Value(latitud),
            longitud: Value(longitud),
            hashDocumento: Value(hashDocumento),
          ),
        )
        .then((rows) => rows > 0);
  }
}

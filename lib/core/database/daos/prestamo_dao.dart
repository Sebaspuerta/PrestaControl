import 'package:drift/drift.dart';

import '../app_database.dart';
import '../tables.dart';

part 'prestamo_dao.g.dart';

@DriftAccessor(tables: [Prestamos])
class PrestamoDao extends DatabaseAccessor<AppDatabase>
    with _$PrestamoDaoMixin {
  PrestamoDao(super.db);

  Stream<List<Prestamo>> watchPrestamosActivos() {
    return (select(prestamos)
          ..where(
            (t) =>
                t.estado.equalsValue(EstadoPrestamo.activo) |
                t.estado.equalsValue(EstadoPrestamo.enMora),
          )
          ..orderBy([(t) => OrderingTerm(expression: t.fechaPagoEsperada)]))
        .watch();
  }

  Stream<List<Prestamo>> watchPrestamosByCliente(String clienteId) {
    return (select(prestamos)..where((t) => t.clienteId.equals(clienteId)))
        .watch();
  }

  Stream<List<Prestamo>> watchPrestamosByMes(int year, int month) {
    final inicio = DateTime(year, month, 1);
    final fin = DateTime(year, month + 1, 1);
    return (select(prestamos)
          ..where(
            (t) =>
                t.fechaDesembolso.isBiggerOrEqualValue(inicio) &
                t.fechaDesembolso.isSmallerThanValue(fin),
          ))
        .watch();
  }

  Future<Prestamo?> getPrestamoById(String id) {
    return (select(prestamos)..where((t) => t.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insertPrestamo(PrestamosCompanion prestamo) {
    return into(prestamos).insert(prestamo);
  }

  Future<bool> updateEstadoPrestamo(String id, EstadoPrestamo nuevoEstado) {
    return (update(prestamos)..where((t) => t.id.equals(id)))
        .write(PrestamosCompanion(estado: Value(nuevoEstado)))
        .then((rows) => rows > 0);
  }

  Future<bool> updatePrestamo(PrestamosCompanion prestamo) {
    return update(prestamos).replace(prestamo);
  }
}

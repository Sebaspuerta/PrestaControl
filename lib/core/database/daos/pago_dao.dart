import 'package:drift/drift.dart';

import '../app_database.dart';
import '../tables.dart';

part 'pago_dao.g.dart';

@DriftAccessor(tables: [Pagos])
class PagoDao extends DatabaseAccessor<AppDatabase> with _$PagoDaoMixin {
  PagoDao(super.db);

  Stream<List<Pago>> watchPagosByPrestamo(String prestamoId) {
    return (select(pagos)
          ..where((t) => t.prestamoId.equals(prestamoId))
          ..orderBy([
            (t) => OrderingTerm(expression: t.fechaPago, mode: OrderingMode.desc),
          ]))
        .watch();
  }

  Future<int> insertPago(PagosCompanion pago) {
    return into(pagos).insert(pago);
  }

  Future<double> totalPagadoByPrestamo(String prestamoId) async {
    final totalExp = pagos.montoPagado.sum();
    final query = selectOnly(pagos)
      ..addColumns([totalExp])
      ..where(pagos.prestamoId.equals(prestamoId));
    final row = await query.getSingle();
    return row.read(totalExp) ?? 0;
  }
}

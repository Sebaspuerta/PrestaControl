import 'package:drift/drift.dart';

import '../app_database.dart';
import '../tables.dart';

part 'cliente_dao.g.dart';

@DriftAccessor(tables: [Clientes])
class ClienteDao extends DatabaseAccessor<AppDatabase>
    with _$ClienteDaoMixin {
  ClienteDao(super.db);

  Stream<List<Cliente>> watchAllClientes() {
    return (select(clientes)
          ..orderBy([(t) => OrderingTerm(expression: t.nombre)]))
        .watch();
  }

  Future<Cliente?> getClienteById(String id) {
    return (select(clientes)..where((t) => t.id.equals(id)))
        .getSingleOrNull();
  }

  Future<int> insertCliente(ClientesCompanion cliente) {
    return into(clientes).insert(cliente);
  }

  Future<bool> updateCliente(ClientesCompanion cliente) {
    return update(clientes).replace(cliente);
  }

  Future<int> deleteCliente(String id) {
    return (delete(clientes)..where((t) => t.id.equals(id))).go();
  }
}

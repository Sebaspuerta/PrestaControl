import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../core/database/app_database.dart';
import '../../core/database/daos/cliente_dao.dart';
import '../../core/providers/database_provider.dart';

/// Envuelve [ClienteDao] exponiendo operaciones de alto nivel sobre
/// clientes, listas para usar desde providers/pantallas.
class ClienteRepository {
  ClienteRepository(this._dao);

  final ClienteDao _dao;

  Stream<List<Cliente>> watchClientes() => _dao.watchAllClientes();

  Future<Cliente?> getCliente(String id) => _dao.getClienteById(id);

  /// Crea un cliente nuevo y retorna su id generado.
  Future<String> crearCliente({
    required String nombre,
    required String direccion,
    String? referidoPor,
    String? fotoCedulaFrente,
    String? fotoCedulaReverso,
  }) async {
    final id = const Uuid().v4();
    await _dao.insertCliente(
      ClientesCompanion.insert(
        id: id,
        nombre: nombre,
        direccion: direccion,
        referidoPor: Value(referidoPor),
        fotoCedulaFrente: Value(fotoCedulaFrente),
        fotoCedulaReverso: Value(fotoCedulaReverso),
        fechaRegistro: DateTime.now(),
      ),
    );
    return id;
  }

  Future<bool> actualizarCliente(Cliente cliente) {
    return _dao.updateCliente(cliente.toCompanion(false));
  }

  Future<int> eliminarCliente(String id) => _dao.deleteCliente(id);
}

final clienteRepositoryProvider = Provider<ClienteRepository>((ref) {
  return ClienteRepository(ref.watch(clienteDaoProvider));
});

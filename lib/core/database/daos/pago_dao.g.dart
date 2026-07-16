// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pago_dao.dart';

// ignore_for_file: type=lint
mixin _$PagoDaoMixin on DatabaseAccessor<AppDatabase> {
  $ClientesTable get clientes => attachedDatabase.clientes;
  $PrestamosTable get prestamos => attachedDatabase.prestamos;
  $PagosTable get pagos => attachedDatabase.pagos;
  PagoDaoManager get managers => PagoDaoManager(this);
}

class PagoDaoManager {
  final _$PagoDaoMixin _db;
  PagoDaoManager(this._db);
  $$ClientesTableTableManager get clientes =>
      $$ClientesTableTableManager(_db.attachedDatabase, _db.clientes);
  $$PrestamosTableTableManager get prestamos =>
      $$PrestamosTableTableManager(_db.attachedDatabase, _db.prestamos);
  $$PagosTableTableManager get pagos =>
      $$PagosTableTableManager(_db.attachedDatabase, _db.pagos);
}

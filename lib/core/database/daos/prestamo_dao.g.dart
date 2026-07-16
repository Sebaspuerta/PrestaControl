// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prestamo_dao.dart';

// ignore_for_file: type=lint
mixin _$PrestamoDaoMixin on DatabaseAccessor<AppDatabase> {
  $ClientesTable get clientes => attachedDatabase.clientes;
  $PrestamosTable get prestamos => attachedDatabase.prestamos;
  PrestamoDaoManager get managers => PrestamoDaoManager(this);
}

class PrestamoDaoManager {
  final _$PrestamoDaoMixin _db;
  PrestamoDaoManager(this._db);
  $$ClientesTableTableManager get clientes =>
      $$ClientesTableTableManager(_db.attachedDatabase, _db.clientes);
  $$PrestamosTableTableManager get prestamos =>
      $$PrestamosTableTableManager(_db.attachedDatabase, _db.prestamos);
}

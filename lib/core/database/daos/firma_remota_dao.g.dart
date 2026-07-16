// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firma_remota_dao.dart';

// ignore_for_file: type=lint
mixin _$FirmaRemotaDaoMixin on DatabaseAccessor<AppDatabase> {
  $ClientesTable get clientes => attachedDatabase.clientes;
  $PrestamosTable get prestamos => attachedDatabase.prestamos;
  $FirmasRemotasTable get firmasRemotas => attachedDatabase.firmasRemotas;
  FirmaRemotaDaoManager get managers => FirmaRemotaDaoManager(this);
}

class FirmaRemotaDaoManager {
  final _$FirmaRemotaDaoMixin _db;
  FirmaRemotaDaoManager(this._db);
  $$ClientesTableTableManager get clientes =>
      $$ClientesTableTableManager(_db.attachedDatabase, _db.clientes);
  $$PrestamosTableTableManager get prestamos =>
      $$PrestamosTableTableManager(_db.attachedDatabase, _db.prestamos);
  $$FirmasRemotasTableTableManager get firmasRemotas =>
      $$FirmasRemotasTableTableManager(_db.attachedDatabase, _db.firmasRemotas);
}

import 'package:drift/drift.dart';

enum EstadoPrestamo { activo, pagado, enMora, cancelado }

@DataClassName('Cliente')
class Clientes extends Table {
  TextColumn get id => text()();
  TextColumn get nombre => text()();
  TextColumn get direccion => text()();
  TextColumn get referidoPor => text().nullable()();
  TextColumn get fotoCedulaFrente => text().nullable()();
  TextColumn get fotoCedulaReverso => text().nullable()();
  DateTimeColumn get fechaRegistro => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('Prestamo')
class Prestamos extends Table {
  TextColumn get id => text()();
  TextColumn get clienteId => text().references(Clientes, #id)();
  RealColumn get capitalInicial => real()();
  IntColumn get tasaInteres => integer()();
  IntColumn get plazoDias => integer()();
  DateTimeColumn get fechaDesembolso => dateTime()();
  DateTimeColumn get fechaPagoEsperada => dateTime()();
  RealColumn get valorTotalAPagar => real()();
  IntColumn get montoMoraPorDia => integer()();
  TextColumn get estado => textEnum<EstadoPrestamo>()
      .withDefault(Constant(EstadoPrestamo.activo.name))();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('Pago')
class Pagos extends Table {
  TextColumn get id => text()();
  TextColumn get prestamoId => text().references(Prestamos, #id)();
  RealColumn get montoPagado => real()();
  DateTimeColumn get fechaPago => dateTime()();
  RealColumn get aplicadoAMora => real().withDefault(const Constant(0))();
  RealColumn get aplicadoAInteres => real().withDefault(const Constant(0))();
  RealColumn get aplicadoACapital => real().withDefault(const Constant(0))();
  TextColumn get registradoPor => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('FirmaRemota')
class FirmasRemotas extends Table {
  TextColumn get id => text()();
  TextColumn get prestamoId => text().references(Prestamos, #id)();
  TextColumn get tokenAcceso => text().unique()();
  BoolColumn get firmado => boolean().withDefault(const Constant(false))();
  DateTimeColumn get fechaFirma => dateTime().nullable()();
  TextColumn get firmaImagenPath => text().nullable()();
  TextColumn get ipFirmante => text().nullable()();
  RealColumn get latitud => real().nullable()();
  RealColumn get longitud => real().nullable()();
  TextColumn get hashDocumento => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

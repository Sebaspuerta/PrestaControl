// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ClientesTable extends Clientes with TableInfo<$ClientesTable, Cliente> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClientesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  @override
  late final GeneratedColumn<String> nombre = GeneratedColumn<String>(
    'nombre',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _direccionMeta = const VerificationMeta(
    'direccion',
  );
  @override
  late final GeneratedColumn<String> direccion = GeneratedColumn<String>(
    'direccion',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _referidoPorMeta = const VerificationMeta(
    'referidoPor',
  );
  @override
  late final GeneratedColumn<String> referidoPor = GeneratedColumn<String>(
    'referido_por',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _fotoCedulaFrenteMeta = const VerificationMeta(
    'fotoCedulaFrente',
  );
  @override
  late final GeneratedColumn<String> fotoCedulaFrente = GeneratedColumn<String>(
    'foto_cedula_frente',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _fotoCedulaReversoMeta = const VerificationMeta(
    'fotoCedulaReverso',
  );
  @override
  late final GeneratedColumn<String> fotoCedulaReverso =
      GeneratedColumn<String>(
        'foto_cedula_reverso',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _fechaRegistroMeta = const VerificationMeta(
    'fechaRegistro',
  );
  @override
  late final GeneratedColumn<DateTime> fechaRegistro =
      GeneratedColumn<DateTime>(
        'fecha_registro',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    nombre,
    direccion,
    referidoPor,
    fotoCedulaFrente,
    fotoCedulaReverso,
    fechaRegistro,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'clientes';
  @override
  VerificationContext validateIntegrity(
    Insertable<Cliente> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('nombre')) {
      context.handle(
        _nombreMeta,
        nombre.isAcceptableOrUnknown(data['nombre']!, _nombreMeta),
      );
    } else if (isInserting) {
      context.missing(_nombreMeta);
    }
    if (data.containsKey('direccion')) {
      context.handle(
        _direccionMeta,
        direccion.isAcceptableOrUnknown(data['direccion']!, _direccionMeta),
      );
    } else if (isInserting) {
      context.missing(_direccionMeta);
    }
    if (data.containsKey('referido_por')) {
      context.handle(
        _referidoPorMeta,
        referidoPor.isAcceptableOrUnknown(
          data['referido_por']!,
          _referidoPorMeta,
        ),
      );
    }
    if (data.containsKey('foto_cedula_frente')) {
      context.handle(
        _fotoCedulaFrenteMeta,
        fotoCedulaFrente.isAcceptableOrUnknown(
          data['foto_cedula_frente']!,
          _fotoCedulaFrenteMeta,
        ),
      );
    }
    if (data.containsKey('foto_cedula_reverso')) {
      context.handle(
        _fotoCedulaReversoMeta,
        fotoCedulaReverso.isAcceptableOrUnknown(
          data['foto_cedula_reverso']!,
          _fotoCedulaReversoMeta,
        ),
      );
    }
    if (data.containsKey('fecha_registro')) {
      context.handle(
        _fechaRegistroMeta,
        fechaRegistro.isAcceptableOrUnknown(
          data['fecha_registro']!,
          _fechaRegistroMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_fechaRegistroMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Cliente map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Cliente(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      nombre: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nombre'],
      )!,
      direccion: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}direccion'],
      )!,
      referidoPor: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}referido_por'],
      ),
      fotoCedulaFrente: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}foto_cedula_frente'],
      ),
      fotoCedulaReverso: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}foto_cedula_reverso'],
      ),
      fechaRegistro: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}fecha_registro'],
      )!,
    );
  }

  @override
  $ClientesTable createAlias(String alias) {
    return $ClientesTable(attachedDatabase, alias);
  }
}

class Cliente extends DataClass implements Insertable<Cliente> {
  final String id;
  final String nombre;
  final String direccion;
  final String? referidoPor;
  final String? fotoCedulaFrente;
  final String? fotoCedulaReverso;
  final DateTime fechaRegistro;
  const Cliente({
    required this.id,
    required this.nombre,
    required this.direccion,
    this.referidoPor,
    this.fotoCedulaFrente,
    this.fotoCedulaReverso,
    required this.fechaRegistro,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['nombre'] = Variable<String>(nombre);
    map['direccion'] = Variable<String>(direccion);
    if (!nullToAbsent || referidoPor != null) {
      map['referido_por'] = Variable<String>(referidoPor);
    }
    if (!nullToAbsent || fotoCedulaFrente != null) {
      map['foto_cedula_frente'] = Variable<String>(fotoCedulaFrente);
    }
    if (!nullToAbsent || fotoCedulaReverso != null) {
      map['foto_cedula_reverso'] = Variable<String>(fotoCedulaReverso);
    }
    map['fecha_registro'] = Variable<DateTime>(fechaRegistro);
    return map;
  }

  ClientesCompanion toCompanion(bool nullToAbsent) {
    return ClientesCompanion(
      id: Value(id),
      nombre: Value(nombre),
      direccion: Value(direccion),
      referidoPor: referidoPor == null && nullToAbsent
          ? const Value.absent()
          : Value(referidoPor),
      fotoCedulaFrente: fotoCedulaFrente == null && nullToAbsent
          ? const Value.absent()
          : Value(fotoCedulaFrente),
      fotoCedulaReverso: fotoCedulaReverso == null && nullToAbsent
          ? const Value.absent()
          : Value(fotoCedulaReverso),
      fechaRegistro: Value(fechaRegistro),
    );
  }

  factory Cliente.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Cliente(
      id: serializer.fromJson<String>(json['id']),
      nombre: serializer.fromJson<String>(json['nombre']),
      direccion: serializer.fromJson<String>(json['direccion']),
      referidoPor: serializer.fromJson<String?>(json['referidoPor']),
      fotoCedulaFrente: serializer.fromJson<String?>(json['fotoCedulaFrente']),
      fotoCedulaReverso: serializer.fromJson<String?>(
        json['fotoCedulaReverso'],
      ),
      fechaRegistro: serializer.fromJson<DateTime>(json['fechaRegistro']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'nombre': serializer.toJson<String>(nombre),
      'direccion': serializer.toJson<String>(direccion),
      'referidoPor': serializer.toJson<String?>(referidoPor),
      'fotoCedulaFrente': serializer.toJson<String?>(fotoCedulaFrente),
      'fotoCedulaReverso': serializer.toJson<String?>(fotoCedulaReverso),
      'fechaRegistro': serializer.toJson<DateTime>(fechaRegistro),
    };
  }

  Cliente copyWith({
    String? id,
    String? nombre,
    String? direccion,
    Value<String?> referidoPor = const Value.absent(),
    Value<String?> fotoCedulaFrente = const Value.absent(),
    Value<String?> fotoCedulaReverso = const Value.absent(),
    DateTime? fechaRegistro,
  }) => Cliente(
    id: id ?? this.id,
    nombre: nombre ?? this.nombre,
    direccion: direccion ?? this.direccion,
    referidoPor: referidoPor.present ? referidoPor.value : this.referidoPor,
    fotoCedulaFrente: fotoCedulaFrente.present
        ? fotoCedulaFrente.value
        : this.fotoCedulaFrente,
    fotoCedulaReverso: fotoCedulaReverso.present
        ? fotoCedulaReverso.value
        : this.fotoCedulaReverso,
    fechaRegistro: fechaRegistro ?? this.fechaRegistro,
  );
  Cliente copyWithCompanion(ClientesCompanion data) {
    return Cliente(
      id: data.id.present ? data.id.value : this.id,
      nombre: data.nombre.present ? data.nombre.value : this.nombre,
      direccion: data.direccion.present ? data.direccion.value : this.direccion,
      referidoPor: data.referidoPor.present
          ? data.referidoPor.value
          : this.referidoPor,
      fotoCedulaFrente: data.fotoCedulaFrente.present
          ? data.fotoCedulaFrente.value
          : this.fotoCedulaFrente,
      fotoCedulaReverso: data.fotoCedulaReverso.present
          ? data.fotoCedulaReverso.value
          : this.fotoCedulaReverso,
      fechaRegistro: data.fechaRegistro.present
          ? data.fechaRegistro.value
          : this.fechaRegistro,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Cliente(')
          ..write('id: $id, ')
          ..write('nombre: $nombre, ')
          ..write('direccion: $direccion, ')
          ..write('referidoPor: $referidoPor, ')
          ..write('fotoCedulaFrente: $fotoCedulaFrente, ')
          ..write('fotoCedulaReverso: $fotoCedulaReverso, ')
          ..write('fechaRegistro: $fechaRegistro')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    nombre,
    direccion,
    referidoPor,
    fotoCedulaFrente,
    fotoCedulaReverso,
    fechaRegistro,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Cliente &&
          other.id == this.id &&
          other.nombre == this.nombre &&
          other.direccion == this.direccion &&
          other.referidoPor == this.referidoPor &&
          other.fotoCedulaFrente == this.fotoCedulaFrente &&
          other.fotoCedulaReverso == this.fotoCedulaReverso &&
          other.fechaRegistro == this.fechaRegistro);
}

class ClientesCompanion extends UpdateCompanion<Cliente> {
  final Value<String> id;
  final Value<String> nombre;
  final Value<String> direccion;
  final Value<String?> referidoPor;
  final Value<String?> fotoCedulaFrente;
  final Value<String?> fotoCedulaReverso;
  final Value<DateTime> fechaRegistro;
  final Value<int> rowid;
  const ClientesCompanion({
    this.id = const Value.absent(),
    this.nombre = const Value.absent(),
    this.direccion = const Value.absent(),
    this.referidoPor = const Value.absent(),
    this.fotoCedulaFrente = const Value.absent(),
    this.fotoCedulaReverso = const Value.absent(),
    this.fechaRegistro = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ClientesCompanion.insert({
    required String id,
    required String nombre,
    required String direccion,
    this.referidoPor = const Value.absent(),
    this.fotoCedulaFrente = const Value.absent(),
    this.fotoCedulaReverso = const Value.absent(),
    required DateTime fechaRegistro,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       nombre = Value(nombre),
       direccion = Value(direccion),
       fechaRegistro = Value(fechaRegistro);
  static Insertable<Cliente> custom({
    Expression<String>? id,
    Expression<String>? nombre,
    Expression<String>? direccion,
    Expression<String>? referidoPor,
    Expression<String>? fotoCedulaFrente,
    Expression<String>? fotoCedulaReverso,
    Expression<DateTime>? fechaRegistro,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nombre != null) 'nombre': nombre,
      if (direccion != null) 'direccion': direccion,
      if (referidoPor != null) 'referido_por': referidoPor,
      if (fotoCedulaFrente != null) 'foto_cedula_frente': fotoCedulaFrente,
      if (fotoCedulaReverso != null) 'foto_cedula_reverso': fotoCedulaReverso,
      if (fechaRegistro != null) 'fecha_registro': fechaRegistro,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ClientesCompanion copyWith({
    Value<String>? id,
    Value<String>? nombre,
    Value<String>? direccion,
    Value<String?>? referidoPor,
    Value<String?>? fotoCedulaFrente,
    Value<String?>? fotoCedulaReverso,
    Value<DateTime>? fechaRegistro,
    Value<int>? rowid,
  }) {
    return ClientesCompanion(
      id: id ?? this.id,
      nombre: nombre ?? this.nombre,
      direccion: direccion ?? this.direccion,
      referidoPor: referidoPor ?? this.referidoPor,
      fotoCedulaFrente: fotoCedulaFrente ?? this.fotoCedulaFrente,
      fotoCedulaReverso: fotoCedulaReverso ?? this.fotoCedulaReverso,
      fechaRegistro: fechaRegistro ?? this.fechaRegistro,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (nombre.present) {
      map['nombre'] = Variable<String>(nombre.value);
    }
    if (direccion.present) {
      map['direccion'] = Variable<String>(direccion.value);
    }
    if (referidoPor.present) {
      map['referido_por'] = Variable<String>(referidoPor.value);
    }
    if (fotoCedulaFrente.present) {
      map['foto_cedula_frente'] = Variable<String>(fotoCedulaFrente.value);
    }
    if (fotoCedulaReverso.present) {
      map['foto_cedula_reverso'] = Variable<String>(fotoCedulaReverso.value);
    }
    if (fechaRegistro.present) {
      map['fecha_registro'] = Variable<DateTime>(fechaRegistro.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClientesCompanion(')
          ..write('id: $id, ')
          ..write('nombre: $nombre, ')
          ..write('direccion: $direccion, ')
          ..write('referidoPor: $referidoPor, ')
          ..write('fotoCedulaFrente: $fotoCedulaFrente, ')
          ..write('fotoCedulaReverso: $fotoCedulaReverso, ')
          ..write('fechaRegistro: $fechaRegistro, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PrestamosTable extends Prestamos
    with TableInfo<$PrestamosTable, Prestamo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PrestamosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _clienteIdMeta = const VerificationMeta(
    'clienteId',
  );
  @override
  late final GeneratedColumn<String> clienteId = GeneratedColumn<String>(
    'cliente_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES clientes (id)',
    ),
  );
  static const VerificationMeta _capitalInicialMeta = const VerificationMeta(
    'capitalInicial',
  );
  @override
  late final GeneratedColumn<double> capitalInicial = GeneratedColumn<double>(
    'capital_inicial',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tasaInteresMeta = const VerificationMeta(
    'tasaInteres',
  );
  @override
  late final GeneratedColumn<int> tasaInteres = GeneratedColumn<int>(
    'tasa_interes',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _plazoDiasMeta = const VerificationMeta(
    'plazoDias',
  );
  @override
  late final GeneratedColumn<int> plazoDias = GeneratedColumn<int>(
    'plazo_dias',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fechaDesembolsoMeta = const VerificationMeta(
    'fechaDesembolso',
  );
  @override
  late final GeneratedColumn<DateTime> fechaDesembolso =
      GeneratedColumn<DateTime>(
        'fecha_desembolso',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _fechaPagoEsperadaMeta = const VerificationMeta(
    'fechaPagoEsperada',
  );
  @override
  late final GeneratedColumn<DateTime> fechaPagoEsperada =
      GeneratedColumn<DateTime>(
        'fecha_pago_esperada',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _valorTotalAPagarMeta = const VerificationMeta(
    'valorTotalAPagar',
  );
  @override
  late final GeneratedColumn<double> valorTotalAPagar = GeneratedColumn<double>(
    'valor_total_a_pagar',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _montoMoraPorDiaMeta = const VerificationMeta(
    'montoMoraPorDia',
  );
  @override
  late final GeneratedColumn<int> montoMoraPorDia = GeneratedColumn<int>(
    'monto_mora_por_dia',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<EstadoPrestamo, String> estado =
      GeneratedColumn<String>(
        'estado',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultValue: Constant(EstadoPrestamo.activo.name),
      ).withConverter<EstadoPrestamo>($PrestamosTable.$converterestado);
  @override
  List<GeneratedColumn> get $columns => [
    id,
    clienteId,
    capitalInicial,
    tasaInteres,
    plazoDias,
    fechaDesembolso,
    fechaPagoEsperada,
    valorTotalAPagar,
    montoMoraPorDia,
    estado,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'prestamos';
  @override
  VerificationContext validateIntegrity(
    Insertable<Prestamo> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('cliente_id')) {
      context.handle(
        _clienteIdMeta,
        clienteId.isAcceptableOrUnknown(data['cliente_id']!, _clienteIdMeta),
      );
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    if (data.containsKey('capital_inicial')) {
      context.handle(
        _capitalInicialMeta,
        capitalInicial.isAcceptableOrUnknown(
          data['capital_inicial']!,
          _capitalInicialMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_capitalInicialMeta);
    }
    if (data.containsKey('tasa_interes')) {
      context.handle(
        _tasaInteresMeta,
        tasaInteres.isAcceptableOrUnknown(
          data['tasa_interes']!,
          _tasaInteresMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_tasaInteresMeta);
    }
    if (data.containsKey('plazo_dias')) {
      context.handle(
        _plazoDiasMeta,
        plazoDias.isAcceptableOrUnknown(data['plazo_dias']!, _plazoDiasMeta),
      );
    } else if (isInserting) {
      context.missing(_plazoDiasMeta);
    }
    if (data.containsKey('fecha_desembolso')) {
      context.handle(
        _fechaDesembolsoMeta,
        fechaDesembolso.isAcceptableOrUnknown(
          data['fecha_desembolso']!,
          _fechaDesembolsoMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_fechaDesembolsoMeta);
    }
    if (data.containsKey('fecha_pago_esperada')) {
      context.handle(
        _fechaPagoEsperadaMeta,
        fechaPagoEsperada.isAcceptableOrUnknown(
          data['fecha_pago_esperada']!,
          _fechaPagoEsperadaMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_fechaPagoEsperadaMeta);
    }
    if (data.containsKey('valor_total_a_pagar')) {
      context.handle(
        _valorTotalAPagarMeta,
        valorTotalAPagar.isAcceptableOrUnknown(
          data['valor_total_a_pagar']!,
          _valorTotalAPagarMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_valorTotalAPagarMeta);
    }
    if (data.containsKey('monto_mora_por_dia')) {
      context.handle(
        _montoMoraPorDiaMeta,
        montoMoraPorDia.isAcceptableOrUnknown(
          data['monto_mora_por_dia']!,
          _montoMoraPorDiaMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_montoMoraPorDiaMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Prestamo map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Prestamo(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      clienteId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}cliente_id'],
      )!,
      capitalInicial: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}capital_inicial'],
      )!,
      tasaInteres: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}tasa_interes'],
      )!,
      plazoDias: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}plazo_dias'],
      )!,
      fechaDesembolso: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}fecha_desembolso'],
      )!,
      fechaPagoEsperada: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}fecha_pago_esperada'],
      )!,
      valorTotalAPagar: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}valor_total_a_pagar'],
      )!,
      montoMoraPorDia: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}monto_mora_por_dia'],
      )!,
      estado: $PrestamosTable.$converterestado.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}estado'],
        )!,
      ),
    );
  }

  @override
  $PrestamosTable createAlias(String alias) {
    return $PrestamosTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<EstadoPrestamo, String, String> $converterestado =
      const EnumNameConverter<EstadoPrestamo>(EstadoPrestamo.values);
}

class Prestamo extends DataClass implements Insertable<Prestamo> {
  final String id;
  final String clienteId;
  final double capitalInicial;
  final int tasaInteres;
  final int plazoDias;
  final DateTime fechaDesembolso;
  final DateTime fechaPagoEsperada;
  final double valorTotalAPagar;
  final int montoMoraPorDia;
  final EstadoPrestamo estado;
  const Prestamo({
    required this.id,
    required this.clienteId,
    required this.capitalInicial,
    required this.tasaInteres,
    required this.plazoDias,
    required this.fechaDesembolso,
    required this.fechaPagoEsperada,
    required this.valorTotalAPagar,
    required this.montoMoraPorDia,
    required this.estado,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['cliente_id'] = Variable<String>(clienteId);
    map['capital_inicial'] = Variable<double>(capitalInicial);
    map['tasa_interes'] = Variable<int>(tasaInteres);
    map['plazo_dias'] = Variable<int>(plazoDias);
    map['fecha_desembolso'] = Variable<DateTime>(fechaDesembolso);
    map['fecha_pago_esperada'] = Variable<DateTime>(fechaPagoEsperada);
    map['valor_total_a_pagar'] = Variable<double>(valorTotalAPagar);
    map['monto_mora_por_dia'] = Variable<int>(montoMoraPorDia);
    {
      map['estado'] = Variable<String>(
        $PrestamosTable.$converterestado.toSql(estado),
      );
    }
    return map;
  }

  PrestamosCompanion toCompanion(bool nullToAbsent) {
    return PrestamosCompanion(
      id: Value(id),
      clienteId: Value(clienteId),
      capitalInicial: Value(capitalInicial),
      tasaInteres: Value(tasaInteres),
      plazoDias: Value(plazoDias),
      fechaDesembolso: Value(fechaDesembolso),
      fechaPagoEsperada: Value(fechaPagoEsperada),
      valorTotalAPagar: Value(valorTotalAPagar),
      montoMoraPorDia: Value(montoMoraPorDia),
      estado: Value(estado),
    );
  }

  factory Prestamo.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Prestamo(
      id: serializer.fromJson<String>(json['id']),
      clienteId: serializer.fromJson<String>(json['clienteId']),
      capitalInicial: serializer.fromJson<double>(json['capitalInicial']),
      tasaInteres: serializer.fromJson<int>(json['tasaInteres']),
      plazoDias: serializer.fromJson<int>(json['plazoDias']),
      fechaDesembolso: serializer.fromJson<DateTime>(json['fechaDesembolso']),
      fechaPagoEsperada: serializer.fromJson<DateTime>(
        json['fechaPagoEsperada'],
      ),
      valorTotalAPagar: serializer.fromJson<double>(json['valorTotalAPagar']),
      montoMoraPorDia: serializer.fromJson<int>(json['montoMoraPorDia']),
      estado: $PrestamosTable.$converterestado.fromJson(
        serializer.fromJson<String>(json['estado']),
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'clienteId': serializer.toJson<String>(clienteId),
      'capitalInicial': serializer.toJson<double>(capitalInicial),
      'tasaInteres': serializer.toJson<int>(tasaInteres),
      'plazoDias': serializer.toJson<int>(plazoDias),
      'fechaDesembolso': serializer.toJson<DateTime>(fechaDesembolso),
      'fechaPagoEsperada': serializer.toJson<DateTime>(fechaPagoEsperada),
      'valorTotalAPagar': serializer.toJson<double>(valorTotalAPagar),
      'montoMoraPorDia': serializer.toJson<int>(montoMoraPorDia),
      'estado': serializer.toJson<String>(
        $PrestamosTable.$converterestado.toJson(estado),
      ),
    };
  }

  Prestamo copyWith({
    String? id,
    String? clienteId,
    double? capitalInicial,
    int? tasaInteres,
    int? plazoDias,
    DateTime? fechaDesembolso,
    DateTime? fechaPagoEsperada,
    double? valorTotalAPagar,
    int? montoMoraPorDia,
    EstadoPrestamo? estado,
  }) => Prestamo(
    id: id ?? this.id,
    clienteId: clienteId ?? this.clienteId,
    capitalInicial: capitalInicial ?? this.capitalInicial,
    tasaInteres: tasaInteres ?? this.tasaInteres,
    plazoDias: plazoDias ?? this.plazoDias,
    fechaDesembolso: fechaDesembolso ?? this.fechaDesembolso,
    fechaPagoEsperada: fechaPagoEsperada ?? this.fechaPagoEsperada,
    valorTotalAPagar: valorTotalAPagar ?? this.valorTotalAPagar,
    montoMoraPorDia: montoMoraPorDia ?? this.montoMoraPorDia,
    estado: estado ?? this.estado,
  );
  Prestamo copyWithCompanion(PrestamosCompanion data) {
    return Prestamo(
      id: data.id.present ? data.id.value : this.id,
      clienteId: data.clienteId.present ? data.clienteId.value : this.clienteId,
      capitalInicial: data.capitalInicial.present
          ? data.capitalInicial.value
          : this.capitalInicial,
      tasaInteres: data.tasaInteres.present
          ? data.tasaInteres.value
          : this.tasaInteres,
      plazoDias: data.plazoDias.present ? data.plazoDias.value : this.plazoDias,
      fechaDesembolso: data.fechaDesembolso.present
          ? data.fechaDesembolso.value
          : this.fechaDesembolso,
      fechaPagoEsperada: data.fechaPagoEsperada.present
          ? data.fechaPagoEsperada.value
          : this.fechaPagoEsperada,
      valorTotalAPagar: data.valorTotalAPagar.present
          ? data.valorTotalAPagar.value
          : this.valorTotalAPagar,
      montoMoraPorDia: data.montoMoraPorDia.present
          ? data.montoMoraPorDia.value
          : this.montoMoraPorDia,
      estado: data.estado.present ? data.estado.value : this.estado,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Prestamo(')
          ..write('id: $id, ')
          ..write('clienteId: $clienteId, ')
          ..write('capitalInicial: $capitalInicial, ')
          ..write('tasaInteres: $tasaInteres, ')
          ..write('plazoDias: $plazoDias, ')
          ..write('fechaDesembolso: $fechaDesembolso, ')
          ..write('fechaPagoEsperada: $fechaPagoEsperada, ')
          ..write('valorTotalAPagar: $valorTotalAPagar, ')
          ..write('montoMoraPorDia: $montoMoraPorDia, ')
          ..write('estado: $estado')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    clienteId,
    capitalInicial,
    tasaInteres,
    plazoDias,
    fechaDesembolso,
    fechaPagoEsperada,
    valorTotalAPagar,
    montoMoraPorDia,
    estado,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Prestamo &&
          other.id == this.id &&
          other.clienteId == this.clienteId &&
          other.capitalInicial == this.capitalInicial &&
          other.tasaInteres == this.tasaInteres &&
          other.plazoDias == this.plazoDias &&
          other.fechaDesembolso == this.fechaDesembolso &&
          other.fechaPagoEsperada == this.fechaPagoEsperada &&
          other.valorTotalAPagar == this.valorTotalAPagar &&
          other.montoMoraPorDia == this.montoMoraPorDia &&
          other.estado == this.estado);
}

class PrestamosCompanion extends UpdateCompanion<Prestamo> {
  final Value<String> id;
  final Value<String> clienteId;
  final Value<double> capitalInicial;
  final Value<int> tasaInteres;
  final Value<int> plazoDias;
  final Value<DateTime> fechaDesembolso;
  final Value<DateTime> fechaPagoEsperada;
  final Value<double> valorTotalAPagar;
  final Value<int> montoMoraPorDia;
  final Value<EstadoPrestamo> estado;
  final Value<int> rowid;
  const PrestamosCompanion({
    this.id = const Value.absent(),
    this.clienteId = const Value.absent(),
    this.capitalInicial = const Value.absent(),
    this.tasaInteres = const Value.absent(),
    this.plazoDias = const Value.absent(),
    this.fechaDesembolso = const Value.absent(),
    this.fechaPagoEsperada = const Value.absent(),
    this.valorTotalAPagar = const Value.absent(),
    this.montoMoraPorDia = const Value.absent(),
    this.estado = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PrestamosCompanion.insert({
    required String id,
    required String clienteId,
    required double capitalInicial,
    required int tasaInteres,
    required int plazoDias,
    required DateTime fechaDesembolso,
    required DateTime fechaPagoEsperada,
    required double valorTotalAPagar,
    required int montoMoraPorDia,
    this.estado = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       clienteId = Value(clienteId),
       capitalInicial = Value(capitalInicial),
       tasaInteres = Value(tasaInteres),
       plazoDias = Value(plazoDias),
       fechaDesembolso = Value(fechaDesembolso),
       fechaPagoEsperada = Value(fechaPagoEsperada),
       valorTotalAPagar = Value(valorTotalAPagar),
       montoMoraPorDia = Value(montoMoraPorDia);
  static Insertable<Prestamo> custom({
    Expression<String>? id,
    Expression<String>? clienteId,
    Expression<double>? capitalInicial,
    Expression<int>? tasaInteres,
    Expression<int>? plazoDias,
    Expression<DateTime>? fechaDesembolso,
    Expression<DateTime>? fechaPagoEsperada,
    Expression<double>? valorTotalAPagar,
    Expression<int>? montoMoraPorDia,
    Expression<String>? estado,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (clienteId != null) 'cliente_id': clienteId,
      if (capitalInicial != null) 'capital_inicial': capitalInicial,
      if (tasaInteres != null) 'tasa_interes': tasaInteres,
      if (plazoDias != null) 'plazo_dias': plazoDias,
      if (fechaDesembolso != null) 'fecha_desembolso': fechaDesembolso,
      if (fechaPagoEsperada != null) 'fecha_pago_esperada': fechaPagoEsperada,
      if (valorTotalAPagar != null) 'valor_total_a_pagar': valorTotalAPagar,
      if (montoMoraPorDia != null) 'monto_mora_por_dia': montoMoraPorDia,
      if (estado != null) 'estado': estado,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PrestamosCompanion copyWith({
    Value<String>? id,
    Value<String>? clienteId,
    Value<double>? capitalInicial,
    Value<int>? tasaInteres,
    Value<int>? plazoDias,
    Value<DateTime>? fechaDesembolso,
    Value<DateTime>? fechaPagoEsperada,
    Value<double>? valorTotalAPagar,
    Value<int>? montoMoraPorDia,
    Value<EstadoPrestamo>? estado,
    Value<int>? rowid,
  }) {
    return PrestamosCompanion(
      id: id ?? this.id,
      clienteId: clienteId ?? this.clienteId,
      capitalInicial: capitalInicial ?? this.capitalInicial,
      tasaInteres: tasaInteres ?? this.tasaInteres,
      plazoDias: plazoDias ?? this.plazoDias,
      fechaDesembolso: fechaDesembolso ?? this.fechaDesembolso,
      fechaPagoEsperada: fechaPagoEsperada ?? this.fechaPagoEsperada,
      valorTotalAPagar: valorTotalAPagar ?? this.valorTotalAPagar,
      montoMoraPorDia: montoMoraPorDia ?? this.montoMoraPorDia,
      estado: estado ?? this.estado,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (clienteId.present) {
      map['cliente_id'] = Variable<String>(clienteId.value);
    }
    if (capitalInicial.present) {
      map['capital_inicial'] = Variable<double>(capitalInicial.value);
    }
    if (tasaInteres.present) {
      map['tasa_interes'] = Variable<int>(tasaInteres.value);
    }
    if (plazoDias.present) {
      map['plazo_dias'] = Variable<int>(plazoDias.value);
    }
    if (fechaDesembolso.present) {
      map['fecha_desembolso'] = Variable<DateTime>(fechaDesembolso.value);
    }
    if (fechaPagoEsperada.present) {
      map['fecha_pago_esperada'] = Variable<DateTime>(fechaPagoEsperada.value);
    }
    if (valorTotalAPagar.present) {
      map['valor_total_a_pagar'] = Variable<double>(valorTotalAPagar.value);
    }
    if (montoMoraPorDia.present) {
      map['monto_mora_por_dia'] = Variable<int>(montoMoraPorDia.value);
    }
    if (estado.present) {
      map['estado'] = Variable<String>(
        $PrestamosTable.$converterestado.toSql(estado.value),
      );
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PrestamosCompanion(')
          ..write('id: $id, ')
          ..write('clienteId: $clienteId, ')
          ..write('capitalInicial: $capitalInicial, ')
          ..write('tasaInteres: $tasaInteres, ')
          ..write('plazoDias: $plazoDias, ')
          ..write('fechaDesembolso: $fechaDesembolso, ')
          ..write('fechaPagoEsperada: $fechaPagoEsperada, ')
          ..write('valorTotalAPagar: $valorTotalAPagar, ')
          ..write('montoMoraPorDia: $montoMoraPorDia, ')
          ..write('estado: $estado, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PagosTable extends Pagos with TableInfo<$PagosTable, Pago> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PagosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _prestamoIdMeta = const VerificationMeta(
    'prestamoId',
  );
  @override
  late final GeneratedColumn<String> prestamoId = GeneratedColumn<String>(
    'prestamo_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES prestamos (id)',
    ),
  );
  static const VerificationMeta _montoPagadoMeta = const VerificationMeta(
    'montoPagado',
  );
  @override
  late final GeneratedColumn<double> montoPagado = GeneratedColumn<double>(
    'monto_pagado',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fechaPagoMeta = const VerificationMeta(
    'fechaPago',
  );
  @override
  late final GeneratedColumn<DateTime> fechaPago = GeneratedColumn<DateTime>(
    'fecha_pago',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _aplicadoAMoraMeta = const VerificationMeta(
    'aplicadoAMora',
  );
  @override
  late final GeneratedColumn<double> aplicadoAMora = GeneratedColumn<double>(
    'aplicado_a_mora',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _aplicadoAInteresMeta = const VerificationMeta(
    'aplicadoAInteres',
  );
  @override
  late final GeneratedColumn<double> aplicadoAInteres = GeneratedColumn<double>(
    'aplicado_a_interes',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _aplicadoACapitalMeta = const VerificationMeta(
    'aplicadoACapital',
  );
  @override
  late final GeneratedColumn<double> aplicadoACapital = GeneratedColumn<double>(
    'aplicado_a_capital',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _registradoPorMeta = const VerificationMeta(
    'registradoPor',
  );
  @override
  late final GeneratedColumn<String> registradoPor = GeneratedColumn<String>(
    'registrado_por',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    prestamoId,
    montoPagado,
    fechaPago,
    aplicadoAMora,
    aplicadoAInteres,
    aplicadoACapital,
    registradoPor,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pagos';
  @override
  VerificationContext validateIntegrity(
    Insertable<Pago> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('prestamo_id')) {
      context.handle(
        _prestamoIdMeta,
        prestamoId.isAcceptableOrUnknown(data['prestamo_id']!, _prestamoIdMeta),
      );
    } else if (isInserting) {
      context.missing(_prestamoIdMeta);
    }
    if (data.containsKey('monto_pagado')) {
      context.handle(
        _montoPagadoMeta,
        montoPagado.isAcceptableOrUnknown(
          data['monto_pagado']!,
          _montoPagadoMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_montoPagadoMeta);
    }
    if (data.containsKey('fecha_pago')) {
      context.handle(
        _fechaPagoMeta,
        fechaPago.isAcceptableOrUnknown(data['fecha_pago']!, _fechaPagoMeta),
      );
    } else if (isInserting) {
      context.missing(_fechaPagoMeta);
    }
    if (data.containsKey('aplicado_a_mora')) {
      context.handle(
        _aplicadoAMoraMeta,
        aplicadoAMora.isAcceptableOrUnknown(
          data['aplicado_a_mora']!,
          _aplicadoAMoraMeta,
        ),
      );
    }
    if (data.containsKey('aplicado_a_interes')) {
      context.handle(
        _aplicadoAInteresMeta,
        aplicadoAInteres.isAcceptableOrUnknown(
          data['aplicado_a_interes']!,
          _aplicadoAInteresMeta,
        ),
      );
    }
    if (data.containsKey('aplicado_a_capital')) {
      context.handle(
        _aplicadoACapitalMeta,
        aplicadoACapital.isAcceptableOrUnknown(
          data['aplicado_a_capital']!,
          _aplicadoACapitalMeta,
        ),
      );
    }
    if (data.containsKey('registrado_por')) {
      context.handle(
        _registradoPorMeta,
        registradoPor.isAcceptableOrUnknown(
          data['registrado_por']!,
          _registradoPorMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Pago map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Pago(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      prestamoId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}prestamo_id'],
      )!,
      montoPagado: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}monto_pagado'],
      )!,
      fechaPago: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}fecha_pago'],
      )!,
      aplicadoAMora: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}aplicado_a_mora'],
      )!,
      aplicadoAInteres: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}aplicado_a_interes'],
      )!,
      aplicadoACapital: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}aplicado_a_capital'],
      )!,
      registradoPor: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}registrado_por'],
      ),
    );
  }

  @override
  $PagosTable createAlias(String alias) {
    return $PagosTable(attachedDatabase, alias);
  }
}

class Pago extends DataClass implements Insertable<Pago> {
  final String id;
  final String prestamoId;
  final double montoPagado;
  final DateTime fechaPago;
  final double aplicadoAMora;
  final double aplicadoAInteres;
  final double aplicadoACapital;
  final String? registradoPor;
  const Pago({
    required this.id,
    required this.prestamoId,
    required this.montoPagado,
    required this.fechaPago,
    required this.aplicadoAMora,
    required this.aplicadoAInteres,
    required this.aplicadoACapital,
    this.registradoPor,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['prestamo_id'] = Variable<String>(prestamoId);
    map['monto_pagado'] = Variable<double>(montoPagado);
    map['fecha_pago'] = Variable<DateTime>(fechaPago);
    map['aplicado_a_mora'] = Variable<double>(aplicadoAMora);
    map['aplicado_a_interes'] = Variable<double>(aplicadoAInteres);
    map['aplicado_a_capital'] = Variable<double>(aplicadoACapital);
    if (!nullToAbsent || registradoPor != null) {
      map['registrado_por'] = Variable<String>(registradoPor);
    }
    return map;
  }

  PagosCompanion toCompanion(bool nullToAbsent) {
    return PagosCompanion(
      id: Value(id),
      prestamoId: Value(prestamoId),
      montoPagado: Value(montoPagado),
      fechaPago: Value(fechaPago),
      aplicadoAMora: Value(aplicadoAMora),
      aplicadoAInteres: Value(aplicadoAInteres),
      aplicadoACapital: Value(aplicadoACapital),
      registradoPor: registradoPor == null && nullToAbsent
          ? const Value.absent()
          : Value(registradoPor),
    );
  }

  factory Pago.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Pago(
      id: serializer.fromJson<String>(json['id']),
      prestamoId: serializer.fromJson<String>(json['prestamoId']),
      montoPagado: serializer.fromJson<double>(json['montoPagado']),
      fechaPago: serializer.fromJson<DateTime>(json['fechaPago']),
      aplicadoAMora: serializer.fromJson<double>(json['aplicadoAMora']),
      aplicadoAInteres: serializer.fromJson<double>(json['aplicadoAInteres']),
      aplicadoACapital: serializer.fromJson<double>(json['aplicadoACapital']),
      registradoPor: serializer.fromJson<String?>(json['registradoPor']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'prestamoId': serializer.toJson<String>(prestamoId),
      'montoPagado': serializer.toJson<double>(montoPagado),
      'fechaPago': serializer.toJson<DateTime>(fechaPago),
      'aplicadoAMora': serializer.toJson<double>(aplicadoAMora),
      'aplicadoAInteres': serializer.toJson<double>(aplicadoAInteres),
      'aplicadoACapital': serializer.toJson<double>(aplicadoACapital),
      'registradoPor': serializer.toJson<String?>(registradoPor),
    };
  }

  Pago copyWith({
    String? id,
    String? prestamoId,
    double? montoPagado,
    DateTime? fechaPago,
    double? aplicadoAMora,
    double? aplicadoAInteres,
    double? aplicadoACapital,
    Value<String?> registradoPor = const Value.absent(),
  }) => Pago(
    id: id ?? this.id,
    prestamoId: prestamoId ?? this.prestamoId,
    montoPagado: montoPagado ?? this.montoPagado,
    fechaPago: fechaPago ?? this.fechaPago,
    aplicadoAMora: aplicadoAMora ?? this.aplicadoAMora,
    aplicadoAInteres: aplicadoAInteres ?? this.aplicadoAInteres,
    aplicadoACapital: aplicadoACapital ?? this.aplicadoACapital,
    registradoPor: registradoPor.present
        ? registradoPor.value
        : this.registradoPor,
  );
  Pago copyWithCompanion(PagosCompanion data) {
    return Pago(
      id: data.id.present ? data.id.value : this.id,
      prestamoId: data.prestamoId.present
          ? data.prestamoId.value
          : this.prestamoId,
      montoPagado: data.montoPagado.present
          ? data.montoPagado.value
          : this.montoPagado,
      fechaPago: data.fechaPago.present ? data.fechaPago.value : this.fechaPago,
      aplicadoAMora: data.aplicadoAMora.present
          ? data.aplicadoAMora.value
          : this.aplicadoAMora,
      aplicadoAInteres: data.aplicadoAInteres.present
          ? data.aplicadoAInteres.value
          : this.aplicadoAInteres,
      aplicadoACapital: data.aplicadoACapital.present
          ? data.aplicadoACapital.value
          : this.aplicadoACapital,
      registradoPor: data.registradoPor.present
          ? data.registradoPor.value
          : this.registradoPor,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Pago(')
          ..write('id: $id, ')
          ..write('prestamoId: $prestamoId, ')
          ..write('montoPagado: $montoPagado, ')
          ..write('fechaPago: $fechaPago, ')
          ..write('aplicadoAMora: $aplicadoAMora, ')
          ..write('aplicadoAInteres: $aplicadoAInteres, ')
          ..write('aplicadoACapital: $aplicadoACapital, ')
          ..write('registradoPor: $registradoPor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    prestamoId,
    montoPagado,
    fechaPago,
    aplicadoAMora,
    aplicadoAInteres,
    aplicadoACapital,
    registradoPor,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Pago &&
          other.id == this.id &&
          other.prestamoId == this.prestamoId &&
          other.montoPagado == this.montoPagado &&
          other.fechaPago == this.fechaPago &&
          other.aplicadoAMora == this.aplicadoAMora &&
          other.aplicadoAInteres == this.aplicadoAInteres &&
          other.aplicadoACapital == this.aplicadoACapital &&
          other.registradoPor == this.registradoPor);
}

class PagosCompanion extends UpdateCompanion<Pago> {
  final Value<String> id;
  final Value<String> prestamoId;
  final Value<double> montoPagado;
  final Value<DateTime> fechaPago;
  final Value<double> aplicadoAMora;
  final Value<double> aplicadoAInteres;
  final Value<double> aplicadoACapital;
  final Value<String?> registradoPor;
  final Value<int> rowid;
  const PagosCompanion({
    this.id = const Value.absent(),
    this.prestamoId = const Value.absent(),
    this.montoPagado = const Value.absent(),
    this.fechaPago = const Value.absent(),
    this.aplicadoAMora = const Value.absent(),
    this.aplicadoAInteres = const Value.absent(),
    this.aplicadoACapital = const Value.absent(),
    this.registradoPor = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PagosCompanion.insert({
    required String id,
    required String prestamoId,
    required double montoPagado,
    required DateTime fechaPago,
    this.aplicadoAMora = const Value.absent(),
    this.aplicadoAInteres = const Value.absent(),
    this.aplicadoACapital = const Value.absent(),
    this.registradoPor = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       prestamoId = Value(prestamoId),
       montoPagado = Value(montoPagado),
       fechaPago = Value(fechaPago);
  static Insertable<Pago> custom({
    Expression<String>? id,
    Expression<String>? prestamoId,
    Expression<double>? montoPagado,
    Expression<DateTime>? fechaPago,
    Expression<double>? aplicadoAMora,
    Expression<double>? aplicadoAInteres,
    Expression<double>? aplicadoACapital,
    Expression<String>? registradoPor,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (prestamoId != null) 'prestamo_id': prestamoId,
      if (montoPagado != null) 'monto_pagado': montoPagado,
      if (fechaPago != null) 'fecha_pago': fechaPago,
      if (aplicadoAMora != null) 'aplicado_a_mora': aplicadoAMora,
      if (aplicadoAInteres != null) 'aplicado_a_interes': aplicadoAInteres,
      if (aplicadoACapital != null) 'aplicado_a_capital': aplicadoACapital,
      if (registradoPor != null) 'registrado_por': registradoPor,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PagosCompanion copyWith({
    Value<String>? id,
    Value<String>? prestamoId,
    Value<double>? montoPagado,
    Value<DateTime>? fechaPago,
    Value<double>? aplicadoAMora,
    Value<double>? aplicadoAInteres,
    Value<double>? aplicadoACapital,
    Value<String?>? registradoPor,
    Value<int>? rowid,
  }) {
    return PagosCompanion(
      id: id ?? this.id,
      prestamoId: prestamoId ?? this.prestamoId,
      montoPagado: montoPagado ?? this.montoPagado,
      fechaPago: fechaPago ?? this.fechaPago,
      aplicadoAMora: aplicadoAMora ?? this.aplicadoAMora,
      aplicadoAInteres: aplicadoAInteres ?? this.aplicadoAInteres,
      aplicadoACapital: aplicadoACapital ?? this.aplicadoACapital,
      registradoPor: registradoPor ?? this.registradoPor,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (prestamoId.present) {
      map['prestamo_id'] = Variable<String>(prestamoId.value);
    }
    if (montoPagado.present) {
      map['monto_pagado'] = Variable<double>(montoPagado.value);
    }
    if (fechaPago.present) {
      map['fecha_pago'] = Variable<DateTime>(fechaPago.value);
    }
    if (aplicadoAMora.present) {
      map['aplicado_a_mora'] = Variable<double>(aplicadoAMora.value);
    }
    if (aplicadoAInteres.present) {
      map['aplicado_a_interes'] = Variable<double>(aplicadoAInteres.value);
    }
    if (aplicadoACapital.present) {
      map['aplicado_a_capital'] = Variable<double>(aplicadoACapital.value);
    }
    if (registradoPor.present) {
      map['registrado_por'] = Variable<String>(registradoPor.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PagosCompanion(')
          ..write('id: $id, ')
          ..write('prestamoId: $prestamoId, ')
          ..write('montoPagado: $montoPagado, ')
          ..write('fechaPago: $fechaPago, ')
          ..write('aplicadoAMora: $aplicadoAMora, ')
          ..write('aplicadoAInteres: $aplicadoAInteres, ')
          ..write('aplicadoACapital: $aplicadoACapital, ')
          ..write('registradoPor: $registradoPor, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FirmasRemotasTable extends FirmasRemotas
    with TableInfo<$FirmasRemotasTable, FirmaRemota> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FirmasRemotasTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _prestamoIdMeta = const VerificationMeta(
    'prestamoId',
  );
  @override
  late final GeneratedColumn<String> prestamoId = GeneratedColumn<String>(
    'prestamo_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES prestamos (id)',
    ),
  );
  static const VerificationMeta _tokenAccesoMeta = const VerificationMeta(
    'tokenAcceso',
  );
  @override
  late final GeneratedColumn<String> tokenAcceso = GeneratedColumn<String>(
    'token_acceso',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _firmadoMeta = const VerificationMeta(
    'firmado',
  );
  @override
  late final GeneratedColumn<bool> firmado = GeneratedColumn<bool>(
    'firmado',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("firmado" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _fechaFirmaMeta = const VerificationMeta(
    'fechaFirma',
  );
  @override
  late final GeneratedColumn<DateTime> fechaFirma = GeneratedColumn<DateTime>(
    'fecha_firma',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _firmaImagenPathMeta = const VerificationMeta(
    'firmaImagenPath',
  );
  @override
  late final GeneratedColumn<String> firmaImagenPath = GeneratedColumn<String>(
    'firma_imagen_path',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _ipFirmanteMeta = const VerificationMeta(
    'ipFirmante',
  );
  @override
  late final GeneratedColumn<String> ipFirmante = GeneratedColumn<String>(
    'ip_firmante',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _latitudMeta = const VerificationMeta(
    'latitud',
  );
  @override
  late final GeneratedColumn<double> latitud = GeneratedColumn<double>(
    'latitud',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _longitudMeta = const VerificationMeta(
    'longitud',
  );
  @override
  late final GeneratedColumn<double> longitud = GeneratedColumn<double>(
    'longitud',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _hashDocumentoMeta = const VerificationMeta(
    'hashDocumento',
  );
  @override
  late final GeneratedColumn<String> hashDocumento = GeneratedColumn<String>(
    'hash_documento',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    prestamoId,
    tokenAcceso,
    firmado,
    fechaFirma,
    firmaImagenPath,
    ipFirmante,
    latitud,
    longitud,
    hashDocumento,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'firmas_remotas';
  @override
  VerificationContext validateIntegrity(
    Insertable<FirmaRemota> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('prestamo_id')) {
      context.handle(
        _prestamoIdMeta,
        prestamoId.isAcceptableOrUnknown(data['prestamo_id']!, _prestamoIdMeta),
      );
    } else if (isInserting) {
      context.missing(_prestamoIdMeta);
    }
    if (data.containsKey('token_acceso')) {
      context.handle(
        _tokenAccesoMeta,
        tokenAcceso.isAcceptableOrUnknown(
          data['token_acceso']!,
          _tokenAccesoMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_tokenAccesoMeta);
    }
    if (data.containsKey('firmado')) {
      context.handle(
        _firmadoMeta,
        firmado.isAcceptableOrUnknown(data['firmado']!, _firmadoMeta),
      );
    }
    if (data.containsKey('fecha_firma')) {
      context.handle(
        _fechaFirmaMeta,
        fechaFirma.isAcceptableOrUnknown(data['fecha_firma']!, _fechaFirmaMeta),
      );
    }
    if (data.containsKey('firma_imagen_path')) {
      context.handle(
        _firmaImagenPathMeta,
        firmaImagenPath.isAcceptableOrUnknown(
          data['firma_imagen_path']!,
          _firmaImagenPathMeta,
        ),
      );
    }
    if (data.containsKey('ip_firmante')) {
      context.handle(
        _ipFirmanteMeta,
        ipFirmante.isAcceptableOrUnknown(data['ip_firmante']!, _ipFirmanteMeta),
      );
    }
    if (data.containsKey('latitud')) {
      context.handle(
        _latitudMeta,
        latitud.isAcceptableOrUnknown(data['latitud']!, _latitudMeta),
      );
    }
    if (data.containsKey('longitud')) {
      context.handle(
        _longitudMeta,
        longitud.isAcceptableOrUnknown(data['longitud']!, _longitudMeta),
      );
    }
    if (data.containsKey('hash_documento')) {
      context.handle(
        _hashDocumentoMeta,
        hashDocumento.isAcceptableOrUnknown(
          data['hash_documento']!,
          _hashDocumentoMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FirmaRemota map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FirmaRemota(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      prestamoId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}prestamo_id'],
      )!,
      tokenAcceso: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}token_acceso'],
      )!,
      firmado: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}firmado'],
      )!,
      fechaFirma: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}fecha_firma'],
      ),
      firmaImagenPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}firma_imagen_path'],
      ),
      ipFirmante: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ip_firmante'],
      ),
      latitud: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}latitud'],
      ),
      longitud: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}longitud'],
      ),
      hashDocumento: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}hash_documento'],
      ),
    );
  }

  @override
  $FirmasRemotasTable createAlias(String alias) {
    return $FirmasRemotasTable(attachedDatabase, alias);
  }
}

class FirmaRemota extends DataClass implements Insertable<FirmaRemota> {
  final String id;
  final String prestamoId;
  final String tokenAcceso;
  final bool firmado;
  final DateTime? fechaFirma;
  final String? firmaImagenPath;
  final String? ipFirmante;
  final double? latitud;
  final double? longitud;
  final String? hashDocumento;
  const FirmaRemota({
    required this.id,
    required this.prestamoId,
    required this.tokenAcceso,
    required this.firmado,
    this.fechaFirma,
    this.firmaImagenPath,
    this.ipFirmante,
    this.latitud,
    this.longitud,
    this.hashDocumento,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['prestamo_id'] = Variable<String>(prestamoId);
    map['token_acceso'] = Variable<String>(tokenAcceso);
    map['firmado'] = Variable<bool>(firmado);
    if (!nullToAbsent || fechaFirma != null) {
      map['fecha_firma'] = Variable<DateTime>(fechaFirma);
    }
    if (!nullToAbsent || firmaImagenPath != null) {
      map['firma_imagen_path'] = Variable<String>(firmaImagenPath);
    }
    if (!nullToAbsent || ipFirmante != null) {
      map['ip_firmante'] = Variable<String>(ipFirmante);
    }
    if (!nullToAbsent || latitud != null) {
      map['latitud'] = Variable<double>(latitud);
    }
    if (!nullToAbsent || longitud != null) {
      map['longitud'] = Variable<double>(longitud);
    }
    if (!nullToAbsent || hashDocumento != null) {
      map['hash_documento'] = Variable<String>(hashDocumento);
    }
    return map;
  }

  FirmasRemotasCompanion toCompanion(bool nullToAbsent) {
    return FirmasRemotasCompanion(
      id: Value(id),
      prestamoId: Value(prestamoId),
      tokenAcceso: Value(tokenAcceso),
      firmado: Value(firmado),
      fechaFirma: fechaFirma == null && nullToAbsent
          ? const Value.absent()
          : Value(fechaFirma),
      firmaImagenPath: firmaImagenPath == null && nullToAbsent
          ? const Value.absent()
          : Value(firmaImagenPath),
      ipFirmante: ipFirmante == null && nullToAbsent
          ? const Value.absent()
          : Value(ipFirmante),
      latitud: latitud == null && nullToAbsent
          ? const Value.absent()
          : Value(latitud),
      longitud: longitud == null && nullToAbsent
          ? const Value.absent()
          : Value(longitud),
      hashDocumento: hashDocumento == null && nullToAbsent
          ? const Value.absent()
          : Value(hashDocumento),
    );
  }

  factory FirmaRemota.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FirmaRemota(
      id: serializer.fromJson<String>(json['id']),
      prestamoId: serializer.fromJson<String>(json['prestamoId']),
      tokenAcceso: serializer.fromJson<String>(json['tokenAcceso']),
      firmado: serializer.fromJson<bool>(json['firmado']),
      fechaFirma: serializer.fromJson<DateTime?>(json['fechaFirma']),
      firmaImagenPath: serializer.fromJson<String?>(json['firmaImagenPath']),
      ipFirmante: serializer.fromJson<String?>(json['ipFirmante']),
      latitud: serializer.fromJson<double?>(json['latitud']),
      longitud: serializer.fromJson<double?>(json['longitud']),
      hashDocumento: serializer.fromJson<String?>(json['hashDocumento']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'prestamoId': serializer.toJson<String>(prestamoId),
      'tokenAcceso': serializer.toJson<String>(tokenAcceso),
      'firmado': serializer.toJson<bool>(firmado),
      'fechaFirma': serializer.toJson<DateTime?>(fechaFirma),
      'firmaImagenPath': serializer.toJson<String?>(firmaImagenPath),
      'ipFirmante': serializer.toJson<String?>(ipFirmante),
      'latitud': serializer.toJson<double?>(latitud),
      'longitud': serializer.toJson<double?>(longitud),
      'hashDocumento': serializer.toJson<String?>(hashDocumento),
    };
  }

  FirmaRemota copyWith({
    String? id,
    String? prestamoId,
    String? tokenAcceso,
    bool? firmado,
    Value<DateTime?> fechaFirma = const Value.absent(),
    Value<String?> firmaImagenPath = const Value.absent(),
    Value<String?> ipFirmante = const Value.absent(),
    Value<double?> latitud = const Value.absent(),
    Value<double?> longitud = const Value.absent(),
    Value<String?> hashDocumento = const Value.absent(),
  }) => FirmaRemota(
    id: id ?? this.id,
    prestamoId: prestamoId ?? this.prestamoId,
    tokenAcceso: tokenAcceso ?? this.tokenAcceso,
    firmado: firmado ?? this.firmado,
    fechaFirma: fechaFirma.present ? fechaFirma.value : this.fechaFirma,
    firmaImagenPath: firmaImagenPath.present
        ? firmaImagenPath.value
        : this.firmaImagenPath,
    ipFirmante: ipFirmante.present ? ipFirmante.value : this.ipFirmante,
    latitud: latitud.present ? latitud.value : this.latitud,
    longitud: longitud.present ? longitud.value : this.longitud,
    hashDocumento: hashDocumento.present
        ? hashDocumento.value
        : this.hashDocumento,
  );
  FirmaRemota copyWithCompanion(FirmasRemotasCompanion data) {
    return FirmaRemota(
      id: data.id.present ? data.id.value : this.id,
      prestamoId: data.prestamoId.present
          ? data.prestamoId.value
          : this.prestamoId,
      tokenAcceso: data.tokenAcceso.present
          ? data.tokenAcceso.value
          : this.tokenAcceso,
      firmado: data.firmado.present ? data.firmado.value : this.firmado,
      fechaFirma: data.fechaFirma.present
          ? data.fechaFirma.value
          : this.fechaFirma,
      firmaImagenPath: data.firmaImagenPath.present
          ? data.firmaImagenPath.value
          : this.firmaImagenPath,
      ipFirmante: data.ipFirmante.present
          ? data.ipFirmante.value
          : this.ipFirmante,
      latitud: data.latitud.present ? data.latitud.value : this.latitud,
      longitud: data.longitud.present ? data.longitud.value : this.longitud,
      hashDocumento: data.hashDocumento.present
          ? data.hashDocumento.value
          : this.hashDocumento,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FirmaRemota(')
          ..write('id: $id, ')
          ..write('prestamoId: $prestamoId, ')
          ..write('tokenAcceso: $tokenAcceso, ')
          ..write('firmado: $firmado, ')
          ..write('fechaFirma: $fechaFirma, ')
          ..write('firmaImagenPath: $firmaImagenPath, ')
          ..write('ipFirmante: $ipFirmante, ')
          ..write('latitud: $latitud, ')
          ..write('longitud: $longitud, ')
          ..write('hashDocumento: $hashDocumento')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    prestamoId,
    tokenAcceso,
    firmado,
    fechaFirma,
    firmaImagenPath,
    ipFirmante,
    latitud,
    longitud,
    hashDocumento,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FirmaRemota &&
          other.id == this.id &&
          other.prestamoId == this.prestamoId &&
          other.tokenAcceso == this.tokenAcceso &&
          other.firmado == this.firmado &&
          other.fechaFirma == this.fechaFirma &&
          other.firmaImagenPath == this.firmaImagenPath &&
          other.ipFirmante == this.ipFirmante &&
          other.latitud == this.latitud &&
          other.longitud == this.longitud &&
          other.hashDocumento == this.hashDocumento);
}

class FirmasRemotasCompanion extends UpdateCompanion<FirmaRemota> {
  final Value<String> id;
  final Value<String> prestamoId;
  final Value<String> tokenAcceso;
  final Value<bool> firmado;
  final Value<DateTime?> fechaFirma;
  final Value<String?> firmaImagenPath;
  final Value<String?> ipFirmante;
  final Value<double?> latitud;
  final Value<double?> longitud;
  final Value<String?> hashDocumento;
  final Value<int> rowid;
  const FirmasRemotasCompanion({
    this.id = const Value.absent(),
    this.prestamoId = const Value.absent(),
    this.tokenAcceso = const Value.absent(),
    this.firmado = const Value.absent(),
    this.fechaFirma = const Value.absent(),
    this.firmaImagenPath = const Value.absent(),
    this.ipFirmante = const Value.absent(),
    this.latitud = const Value.absent(),
    this.longitud = const Value.absent(),
    this.hashDocumento = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FirmasRemotasCompanion.insert({
    required String id,
    required String prestamoId,
    required String tokenAcceso,
    this.firmado = const Value.absent(),
    this.fechaFirma = const Value.absent(),
    this.firmaImagenPath = const Value.absent(),
    this.ipFirmante = const Value.absent(),
    this.latitud = const Value.absent(),
    this.longitud = const Value.absent(),
    this.hashDocumento = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       prestamoId = Value(prestamoId),
       tokenAcceso = Value(tokenAcceso);
  static Insertable<FirmaRemota> custom({
    Expression<String>? id,
    Expression<String>? prestamoId,
    Expression<String>? tokenAcceso,
    Expression<bool>? firmado,
    Expression<DateTime>? fechaFirma,
    Expression<String>? firmaImagenPath,
    Expression<String>? ipFirmante,
    Expression<double>? latitud,
    Expression<double>? longitud,
    Expression<String>? hashDocumento,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (prestamoId != null) 'prestamo_id': prestamoId,
      if (tokenAcceso != null) 'token_acceso': tokenAcceso,
      if (firmado != null) 'firmado': firmado,
      if (fechaFirma != null) 'fecha_firma': fechaFirma,
      if (firmaImagenPath != null) 'firma_imagen_path': firmaImagenPath,
      if (ipFirmante != null) 'ip_firmante': ipFirmante,
      if (latitud != null) 'latitud': latitud,
      if (longitud != null) 'longitud': longitud,
      if (hashDocumento != null) 'hash_documento': hashDocumento,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FirmasRemotasCompanion copyWith({
    Value<String>? id,
    Value<String>? prestamoId,
    Value<String>? tokenAcceso,
    Value<bool>? firmado,
    Value<DateTime?>? fechaFirma,
    Value<String?>? firmaImagenPath,
    Value<String?>? ipFirmante,
    Value<double?>? latitud,
    Value<double?>? longitud,
    Value<String?>? hashDocumento,
    Value<int>? rowid,
  }) {
    return FirmasRemotasCompanion(
      id: id ?? this.id,
      prestamoId: prestamoId ?? this.prestamoId,
      tokenAcceso: tokenAcceso ?? this.tokenAcceso,
      firmado: firmado ?? this.firmado,
      fechaFirma: fechaFirma ?? this.fechaFirma,
      firmaImagenPath: firmaImagenPath ?? this.firmaImagenPath,
      ipFirmante: ipFirmante ?? this.ipFirmante,
      latitud: latitud ?? this.latitud,
      longitud: longitud ?? this.longitud,
      hashDocumento: hashDocumento ?? this.hashDocumento,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (prestamoId.present) {
      map['prestamo_id'] = Variable<String>(prestamoId.value);
    }
    if (tokenAcceso.present) {
      map['token_acceso'] = Variable<String>(tokenAcceso.value);
    }
    if (firmado.present) {
      map['firmado'] = Variable<bool>(firmado.value);
    }
    if (fechaFirma.present) {
      map['fecha_firma'] = Variable<DateTime>(fechaFirma.value);
    }
    if (firmaImagenPath.present) {
      map['firma_imagen_path'] = Variable<String>(firmaImagenPath.value);
    }
    if (ipFirmante.present) {
      map['ip_firmante'] = Variable<String>(ipFirmante.value);
    }
    if (latitud.present) {
      map['latitud'] = Variable<double>(latitud.value);
    }
    if (longitud.present) {
      map['longitud'] = Variable<double>(longitud.value);
    }
    if (hashDocumento.present) {
      map['hash_documento'] = Variable<String>(hashDocumento.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FirmasRemotasCompanion(')
          ..write('id: $id, ')
          ..write('prestamoId: $prestamoId, ')
          ..write('tokenAcceso: $tokenAcceso, ')
          ..write('firmado: $firmado, ')
          ..write('fechaFirma: $fechaFirma, ')
          ..write('firmaImagenPath: $firmaImagenPath, ')
          ..write('ipFirmante: $ipFirmante, ')
          ..write('latitud: $latitud, ')
          ..write('longitud: $longitud, ')
          ..write('hashDocumento: $hashDocumento, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ClientesTable clientes = $ClientesTable(this);
  late final $PrestamosTable prestamos = $PrestamosTable(this);
  late final $PagosTable pagos = $PagosTable(this);
  late final $FirmasRemotasTable firmasRemotas = $FirmasRemotasTable(this);
  late final ClienteDao clienteDao = ClienteDao(this as AppDatabase);
  late final PrestamoDao prestamoDao = PrestamoDao(this as AppDatabase);
  late final PagoDao pagoDao = PagoDao(this as AppDatabase);
  late final FirmaRemotaDao firmaRemotaDao = FirmaRemotaDao(
    this as AppDatabase,
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    clientes,
    prestamos,
    pagos,
    firmasRemotas,
  ];
}

typedef $$ClientesTableCreateCompanionBuilder = ClientesCompanion Function({
  required String id,
  required String nombre,
  required String direccion,
  Value<String?> referidoPor,
  Value<String?> fotoCedulaFrente,
  Value<String?> fotoCedulaReverso,
  required DateTime fechaRegistro,
  Value<int> rowid,
});
typedef $$ClientesTableUpdateCompanionBuilder = ClientesCompanion Function({
  Value<String> id,
  Value<String> nombre,
  Value<String> direccion,
  Value<String?> referidoPor,
  Value<String?> fotoCedulaFrente,
  Value<String?> fotoCedulaReverso,
  Value<DateTime> fechaRegistro,
  Value<int> rowid,
});

final class $$ClientesTableReferences
    extends BaseReferences<_$AppDatabase, $ClientesTable, Cliente> {
  $$ClientesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PrestamosTable, List<Prestamo>>
  _prestamosRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.prestamos,
    aliasName: 'clientes__id__prestamos__cliente_id',
  );

  $$PrestamosTableProcessedTableManager get prestamosRefs {
    final manager = $$PrestamosTableTableManager(
      $_db,
      $_db.prestamos,
    ).filter((f) => f.clienteId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_prestamosRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ClientesTableFilterComposer
    extends Composer<_$AppDatabase, $ClientesTable> {
  $$ClientesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nombre => $composableBuilder(
    column: $table.nombre,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get direccion => $composableBuilder(
    column: $table.direccion,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get referidoPor => $composableBuilder(
    column: $table.referidoPor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fotoCedulaFrente => $composableBuilder(
    column: $table.fotoCedulaFrente,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fotoCedulaReverso => $composableBuilder(
    column: $table.fotoCedulaReverso,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get fechaRegistro => $composableBuilder(
    column: $table.fechaRegistro,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> prestamosRefs(
    Expression<bool> Function($$PrestamosTableFilterComposer f) f,
  ) {
    final $$PrestamosTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.prestamos,
      getReferencedColumn: (t) => t.clienteId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PrestamosTableFilterComposer(
            $db: $db,
            $table: $db.prestamos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ClientesTableOrderingComposer
    extends Composer<_$AppDatabase, $ClientesTable> {
  $$ClientesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nombre => $composableBuilder(
    column: $table.nombre,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get direccion => $composableBuilder(
    column: $table.direccion,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get referidoPor => $composableBuilder(
    column: $table.referidoPor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fotoCedulaFrente => $composableBuilder(
    column: $table.fotoCedulaFrente,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fotoCedulaReverso => $composableBuilder(
    column: $table.fotoCedulaReverso,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get fechaRegistro => $composableBuilder(
    column: $table.fechaRegistro,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ClientesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClientesTable> {
  $$ClientesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nombre =>
      $composableBuilder(column: $table.nombre, builder: (column) => column);

  GeneratedColumn<String> get direccion =>
      $composableBuilder(column: $table.direccion, builder: (column) => column);

  GeneratedColumn<String> get referidoPor => $composableBuilder(
    column: $table.referidoPor,
    builder: (column) => column,
  );

  GeneratedColumn<String> get fotoCedulaFrente => $composableBuilder(
    column: $table.fotoCedulaFrente,
    builder: (column) => column,
  );

  GeneratedColumn<String> get fotoCedulaReverso => $composableBuilder(
    column: $table.fotoCedulaReverso,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get fechaRegistro => $composableBuilder(
    column: $table.fechaRegistro,
    builder: (column) => column,
  );

  Expression<T> prestamosRefs<T extends Object>(
    Expression<T> Function($$PrestamosTableAnnotationComposer a) f,
  ) {
    final $$PrestamosTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.prestamos,
      getReferencedColumn: (t) => t.clienteId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PrestamosTableAnnotationComposer(
            $db: $db,
            $table: $db.prestamos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ClientesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ClientesTable,
          Cliente,
          $$ClientesTableFilterComposer,
          $$ClientesTableOrderingComposer,
          $$ClientesTableAnnotationComposer,
          $$ClientesTableCreateCompanionBuilder,
          $$ClientesTableUpdateCompanionBuilder,
          (Cliente, $$ClientesTableReferences),
          Cliente,
          PrefetchHooks Function({bool prestamosRefs})
        > {
  $$ClientesTableTableManager(_$AppDatabase db, $ClientesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ClientesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ClientesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ClientesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> nombre = const Value.absent(),
                Value<String> direccion = const Value.absent(),
                Value<String?> referidoPor = const Value.absent(),
                Value<String?> fotoCedulaFrente = const Value.absent(),
                Value<String?> fotoCedulaReverso = const Value.absent(),
                Value<DateTime> fechaRegistro = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ClientesCompanion(
                id: id,
                nombre: nombre,
                direccion: direccion,
                referidoPor: referidoPor,
                fotoCedulaFrente: fotoCedulaFrente,
                fotoCedulaReverso: fotoCedulaReverso,
                fechaRegistro: fechaRegistro,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String nombre,
                required String direccion,
                Value<String?> referidoPor = const Value.absent(),
                Value<String?> fotoCedulaFrente = const Value.absent(),
                Value<String?> fotoCedulaReverso = const Value.absent(),
                required DateTime fechaRegistro,
                Value<int> rowid = const Value.absent(),
              }) => ClientesCompanion.insert(
                id: id,
                nombre: nombre,
                direccion: direccion,
                referidoPor: referidoPor,
                fotoCedulaFrente: fotoCedulaFrente,
                fotoCedulaReverso: fotoCedulaReverso,
                fechaRegistro: fechaRegistro,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ClientesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({prestamosRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (prestamosRefs) db.prestamos],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (prestamosRefs)
                    await $_getPrefetchedData<
                      Cliente,
                      $ClientesTable,
                      Prestamo
                    >(
                      currentTable: table,
                      referencedTable: $$ClientesTableReferences
                          ._prestamosRefsTable(db),
                      managerFromTypedResult: (p0) => $$ClientesTableReferences(
                        db,
                        table,
                        p0,
                      ).prestamosRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.clienteId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ClientesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ClientesTable,
      Cliente,
      $$ClientesTableFilterComposer,
      $$ClientesTableOrderingComposer,
      $$ClientesTableAnnotationComposer,
      $$ClientesTableCreateCompanionBuilder,
      $$ClientesTableUpdateCompanionBuilder,
      (Cliente, $$ClientesTableReferences),
      Cliente,
      PrefetchHooks Function({bool prestamosRefs})
    >;
typedef $$PrestamosTableCreateCompanionBuilder = PrestamosCompanion Function({
  required String id,
  required String clienteId,
  required double capitalInicial,
  required int tasaInteres,
  required int plazoDias,
  required DateTime fechaDesembolso,
  required DateTime fechaPagoEsperada,
  required double valorTotalAPagar,
  required int montoMoraPorDia,
  Value<EstadoPrestamo> estado,
  Value<int> rowid,
});
typedef $$PrestamosTableUpdateCompanionBuilder = PrestamosCompanion Function({
  Value<String> id,
  Value<String> clienteId,
  Value<double> capitalInicial,
  Value<int> tasaInteres,
  Value<int> plazoDias,
  Value<DateTime> fechaDesembolso,
  Value<DateTime> fechaPagoEsperada,
  Value<double> valorTotalAPagar,
  Value<int> montoMoraPorDia,
  Value<EstadoPrestamo> estado,
  Value<int> rowid,
});

final class $$PrestamosTableReferences
    extends BaseReferences<_$AppDatabase, $PrestamosTable, Prestamo> {
  $$PrestamosTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ClientesTable _clienteIdTable(_$AppDatabase db) =>
      db.clientes.createAlias('prestamos__cliente_id__clientes__id');

  $$ClientesTableProcessedTableManager get clienteId {
    final $_column = $_itemColumn<String>('cliente_id')!;

    final manager = $$ClientesTableTableManager(
      $_db,
      $_db.clientes,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_clienteIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$PagosTable, List<Pago>> _pagosRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.pagos,
    aliasName: 'prestamos__id__pagos__prestamo_id',
  );

  $$PagosTableProcessedTableManager get pagosRefs {
    final manager = $$PagosTableTableManager(
      $_db,
      $_db.pagos,
    ).filter((f) => f.prestamoId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_pagosRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$FirmasRemotasTable, List<FirmaRemota>>
  _firmasRemotasRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.firmasRemotas,
    aliasName: 'prestamos__id__firmas_remotas__prestamo_id',
  );

  $$FirmasRemotasTableProcessedTableManager get firmasRemotasRefs {
    final manager = $$FirmasRemotasTableTableManager(
      $_db,
      $_db.firmasRemotas,
    ).filter((f) => f.prestamoId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_firmasRemotasRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$PrestamosTableFilterComposer
    extends Composer<_$AppDatabase, $PrestamosTable> {
  $$PrestamosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get capitalInicial => $composableBuilder(
    column: $table.capitalInicial,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get tasaInteres => $composableBuilder(
    column: $table.tasaInteres,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get plazoDias => $composableBuilder(
    column: $table.plazoDias,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get fechaDesembolso => $composableBuilder(
    column: $table.fechaDesembolso,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get fechaPagoEsperada => $composableBuilder(
    column: $table.fechaPagoEsperada,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get valorTotalAPagar => $composableBuilder(
    column: $table.valorTotalAPagar,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get montoMoraPorDia => $composableBuilder(
    column: $table.montoMoraPorDia,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<EstadoPrestamo, EstadoPrestamo, String>
  get estado => $composableBuilder(
    column: $table.estado,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  $$ClientesTableFilterComposer get clienteId {
    final $$ClientesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.clienteId,
      referencedTable: $db.clientes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClientesTableFilterComposer(
            $db: $db,
            $table: $db.clientes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> pagosRefs(
    Expression<bool> Function($$PagosTableFilterComposer f) f,
  ) {
    final $$PagosTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pagos,
      getReferencedColumn: (t) => t.prestamoId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PagosTableFilterComposer(
            $db: $db,
            $table: $db.pagos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> firmasRemotasRefs(
    Expression<bool> Function($$FirmasRemotasTableFilterComposer f) f,
  ) {
    final $$FirmasRemotasTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.firmasRemotas,
      getReferencedColumn: (t) => t.prestamoId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FirmasRemotasTableFilterComposer(
            $db: $db,
            $table: $db.firmasRemotas,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PrestamosTableOrderingComposer
    extends Composer<_$AppDatabase, $PrestamosTable> {
  $$PrestamosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get capitalInicial => $composableBuilder(
    column: $table.capitalInicial,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get tasaInteres => $composableBuilder(
    column: $table.tasaInteres,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get plazoDias => $composableBuilder(
    column: $table.plazoDias,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get fechaDesembolso => $composableBuilder(
    column: $table.fechaDesembolso,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get fechaPagoEsperada => $composableBuilder(
    column: $table.fechaPagoEsperada,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get valorTotalAPagar => $composableBuilder(
    column: $table.valorTotalAPagar,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get montoMoraPorDia => $composableBuilder(
    column: $table.montoMoraPorDia,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get estado => $composableBuilder(
    column: $table.estado,
    builder: (column) => ColumnOrderings(column),
  );

  $$ClientesTableOrderingComposer get clienteId {
    final $$ClientesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.clienteId,
      referencedTable: $db.clientes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClientesTableOrderingComposer(
            $db: $db,
            $table: $db.clientes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PrestamosTableAnnotationComposer
    extends Composer<_$AppDatabase, $PrestamosTable> {
  $$PrestamosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get capitalInicial => $composableBuilder(
    column: $table.capitalInicial,
    builder: (column) => column,
  );

  GeneratedColumn<int> get tasaInteres => $composableBuilder(
    column: $table.tasaInteres,
    builder: (column) => column,
  );

  GeneratedColumn<int> get plazoDias =>
      $composableBuilder(column: $table.plazoDias, builder: (column) => column);

  GeneratedColumn<DateTime> get fechaDesembolso => $composableBuilder(
    column: $table.fechaDesembolso,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get fechaPagoEsperada => $composableBuilder(
    column: $table.fechaPagoEsperada,
    builder: (column) => column,
  );

  GeneratedColumn<double> get valorTotalAPagar => $composableBuilder(
    column: $table.valorTotalAPagar,
    builder: (column) => column,
  );

  GeneratedColumn<int> get montoMoraPorDia => $composableBuilder(
    column: $table.montoMoraPorDia,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<EstadoPrestamo, String> get estado =>
      $composableBuilder(column: $table.estado, builder: (column) => column);

  $$ClientesTableAnnotationComposer get clienteId {
    final $$ClientesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.clienteId,
      referencedTable: $db.clientes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ClientesTableAnnotationComposer(
            $db: $db,
            $table: $db.clientes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> pagosRefs<T extends Object>(
    Expression<T> Function($$PagosTableAnnotationComposer a) f,
  ) {
    final $$PagosTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.pagos,
      getReferencedColumn: (t) => t.prestamoId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PagosTableAnnotationComposer(
            $db: $db,
            $table: $db.pagos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> firmasRemotasRefs<T extends Object>(
    Expression<T> Function($$FirmasRemotasTableAnnotationComposer a) f,
  ) {
    final $$FirmasRemotasTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.firmasRemotas,
      getReferencedColumn: (t) => t.prestamoId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FirmasRemotasTableAnnotationComposer(
            $db: $db,
            $table: $db.firmasRemotas,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PrestamosTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PrestamosTable,
          Prestamo,
          $$PrestamosTableFilterComposer,
          $$PrestamosTableOrderingComposer,
          $$PrestamosTableAnnotationComposer,
          $$PrestamosTableCreateCompanionBuilder,
          $$PrestamosTableUpdateCompanionBuilder,
          (Prestamo, $$PrestamosTableReferences),
          Prestamo,
          PrefetchHooks Function({
            bool clienteId,
            bool pagosRefs,
            bool firmasRemotasRefs,
          })
        > {
  $$PrestamosTableTableManager(_$AppDatabase db, $PrestamosTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PrestamosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PrestamosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PrestamosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> clienteId = const Value.absent(),
                Value<double> capitalInicial = const Value.absent(),
                Value<int> tasaInteres = const Value.absent(),
                Value<int> plazoDias = const Value.absent(),
                Value<DateTime> fechaDesembolso = const Value.absent(),
                Value<DateTime> fechaPagoEsperada = const Value.absent(),
                Value<double> valorTotalAPagar = const Value.absent(),
                Value<int> montoMoraPorDia = const Value.absent(),
                Value<EstadoPrestamo> estado = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PrestamosCompanion(
                id: id,
                clienteId: clienteId,
                capitalInicial: capitalInicial,
                tasaInteres: tasaInteres,
                plazoDias: plazoDias,
                fechaDesembolso: fechaDesembolso,
                fechaPagoEsperada: fechaPagoEsperada,
                valorTotalAPagar: valorTotalAPagar,
                montoMoraPorDia: montoMoraPorDia,
                estado: estado,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String clienteId,
                required double capitalInicial,
                required int tasaInteres,
                required int plazoDias,
                required DateTime fechaDesembolso,
                required DateTime fechaPagoEsperada,
                required double valorTotalAPagar,
                required int montoMoraPorDia,
                Value<EstadoPrestamo> estado = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PrestamosCompanion.insert(
                id: id,
                clienteId: clienteId,
                capitalInicial: capitalInicial,
                tasaInteres: tasaInteres,
                plazoDias: plazoDias,
                fechaDesembolso: fechaDesembolso,
                fechaPagoEsperada: fechaPagoEsperada,
                valorTotalAPagar: valorTotalAPagar,
                montoMoraPorDia: montoMoraPorDia,
                estado: estado,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$PrestamosTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                clienteId = false,
                pagosRefs = false,
                firmasRemotasRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (pagosRefs) db.pagos,
                    if (firmasRemotasRefs) db.firmasRemotas,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (clienteId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.clienteId,
                            referencedTable: $$PrestamosTableReferences
                                ._clienteIdTable(db),
                            referencedColumn: $$PrestamosTableReferences
                                ._clienteIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (pagosRefs)
                        await $_getPrefetchedData<
                          Prestamo,
                          $PrestamosTable,
                          Pago
                        >(
                          currentTable: table,
                          referencedTable: $$PrestamosTableReferences
                              ._pagosRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PrestamosTableReferences(
                                db,
                                table,
                                p0,
                              ).pagosRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.prestamoId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (firmasRemotasRefs)
                        await $_getPrefetchedData<
                          Prestamo,
                          $PrestamosTable,
                          FirmaRemota
                        >(
                          currentTable: table,
                          referencedTable: $$PrestamosTableReferences
                              ._firmasRemotasRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$PrestamosTableReferences(
                                db,
                                table,
                                p0,
                              ).firmasRemotasRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.prestamoId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$PrestamosTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PrestamosTable,
      Prestamo,
      $$PrestamosTableFilterComposer,
      $$PrestamosTableOrderingComposer,
      $$PrestamosTableAnnotationComposer,
      $$PrestamosTableCreateCompanionBuilder,
      $$PrestamosTableUpdateCompanionBuilder,
      (Prestamo, $$PrestamosTableReferences),
      Prestamo,
      PrefetchHooks Function({
        bool clienteId,
        bool pagosRefs,
        bool firmasRemotasRefs,
      })
    >;
typedef $$PagosTableCreateCompanionBuilder = PagosCompanion Function({
  required String id,
  required String prestamoId,
  required double montoPagado,
  required DateTime fechaPago,
  Value<double> aplicadoAMora,
  Value<double> aplicadoAInteres,
  Value<double> aplicadoACapital,
  Value<String?> registradoPor,
  Value<int> rowid,
});
typedef $$PagosTableUpdateCompanionBuilder = PagosCompanion Function({
  Value<String> id,
  Value<String> prestamoId,
  Value<double> montoPagado,
  Value<DateTime> fechaPago,
  Value<double> aplicadoAMora,
  Value<double> aplicadoAInteres,
  Value<double> aplicadoACapital,
  Value<String?> registradoPor,
  Value<int> rowid,
});

final class $$PagosTableReferences
    extends BaseReferences<_$AppDatabase, $PagosTable, Pago> {
  $$PagosTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PrestamosTable _prestamoIdTable(_$AppDatabase db) =>
      db.prestamos.createAlias('pagos__prestamo_id__prestamos__id');

  $$PrestamosTableProcessedTableManager get prestamoId {
    final $_column = $_itemColumn<String>('prestamo_id')!;

    final manager = $$PrestamosTableTableManager(
      $_db,
      $_db.prestamos,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_prestamoIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PagosTableFilterComposer extends Composer<_$AppDatabase, $PagosTable> {
  $$PagosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get montoPagado => $composableBuilder(
    column: $table.montoPagado,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get fechaPago => $composableBuilder(
    column: $table.fechaPago,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get aplicadoAMora => $composableBuilder(
    column: $table.aplicadoAMora,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get aplicadoAInteres => $composableBuilder(
    column: $table.aplicadoAInteres,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get aplicadoACapital => $composableBuilder(
    column: $table.aplicadoACapital,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get registradoPor => $composableBuilder(
    column: $table.registradoPor,
    builder: (column) => ColumnFilters(column),
  );

  $$PrestamosTableFilterComposer get prestamoId {
    final $$PrestamosTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.prestamoId,
      referencedTable: $db.prestamos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PrestamosTableFilterComposer(
            $db: $db,
            $table: $db.prestamos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PagosTableOrderingComposer
    extends Composer<_$AppDatabase, $PagosTable> {
  $$PagosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get montoPagado => $composableBuilder(
    column: $table.montoPagado,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get fechaPago => $composableBuilder(
    column: $table.fechaPago,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get aplicadoAMora => $composableBuilder(
    column: $table.aplicadoAMora,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get aplicadoAInteres => $composableBuilder(
    column: $table.aplicadoAInteres,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get aplicadoACapital => $composableBuilder(
    column: $table.aplicadoACapital,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get registradoPor => $composableBuilder(
    column: $table.registradoPor,
    builder: (column) => ColumnOrderings(column),
  );

  $$PrestamosTableOrderingComposer get prestamoId {
    final $$PrestamosTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.prestamoId,
      referencedTable: $db.prestamos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PrestamosTableOrderingComposer(
            $db: $db,
            $table: $db.prestamos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PagosTableAnnotationComposer
    extends Composer<_$AppDatabase, $PagosTable> {
  $$PagosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get montoPagado => $composableBuilder(
    column: $table.montoPagado,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get fechaPago =>
      $composableBuilder(column: $table.fechaPago, builder: (column) => column);

  GeneratedColumn<double> get aplicadoAMora => $composableBuilder(
    column: $table.aplicadoAMora,
    builder: (column) => column,
  );

  GeneratedColumn<double> get aplicadoAInteres => $composableBuilder(
    column: $table.aplicadoAInteres,
    builder: (column) => column,
  );

  GeneratedColumn<double> get aplicadoACapital => $composableBuilder(
    column: $table.aplicadoACapital,
    builder: (column) => column,
  );

  GeneratedColumn<String> get registradoPor => $composableBuilder(
    column: $table.registradoPor,
    builder: (column) => column,
  );

  $$PrestamosTableAnnotationComposer get prestamoId {
    final $$PrestamosTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.prestamoId,
      referencedTable: $db.prestamos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PrestamosTableAnnotationComposer(
            $db: $db,
            $table: $db.prestamos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PagosTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PagosTable,
          Pago,
          $$PagosTableFilterComposer,
          $$PagosTableOrderingComposer,
          $$PagosTableAnnotationComposer,
          $$PagosTableCreateCompanionBuilder,
          $$PagosTableUpdateCompanionBuilder,
          (Pago, $$PagosTableReferences),
          Pago,
          PrefetchHooks Function({bool prestamoId})
        > {
  $$PagosTableTableManager(_$AppDatabase db, $PagosTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PagosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PagosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PagosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> prestamoId = const Value.absent(),
                Value<double> montoPagado = const Value.absent(),
                Value<DateTime> fechaPago = const Value.absent(),
                Value<double> aplicadoAMora = const Value.absent(),
                Value<double> aplicadoAInteres = const Value.absent(),
                Value<double> aplicadoACapital = const Value.absent(),
                Value<String?> registradoPor = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PagosCompanion(
                id: id,
                prestamoId: prestamoId,
                montoPagado: montoPagado,
                fechaPago: fechaPago,
                aplicadoAMora: aplicadoAMora,
                aplicadoAInteres: aplicadoAInteres,
                aplicadoACapital: aplicadoACapital,
                registradoPor: registradoPor,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String prestamoId,
                required double montoPagado,
                required DateTime fechaPago,
                Value<double> aplicadoAMora = const Value.absent(),
                Value<double> aplicadoAInteres = const Value.absent(),
                Value<double> aplicadoACapital = const Value.absent(),
                Value<String?> registradoPor = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PagosCompanion.insert(
                id: id,
                prestamoId: prestamoId,
                montoPagado: montoPagado,
                fechaPago: fechaPago,
                aplicadoAMora: aplicadoAMora,
                aplicadoAInteres: aplicadoAInteres,
                aplicadoACapital: aplicadoACapital,
                registradoPor: registradoPor,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$PagosTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({prestamoId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (prestamoId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.prestamoId,
                        referencedTable: $$PagosTableReferences
                            ._prestamoIdTable(db),
                        referencedColumn: $$PagosTableReferences
                            ._prestamoIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PagosTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PagosTable,
      Pago,
      $$PagosTableFilterComposer,
      $$PagosTableOrderingComposer,
      $$PagosTableAnnotationComposer,
      $$PagosTableCreateCompanionBuilder,
      $$PagosTableUpdateCompanionBuilder,
      (Pago, $$PagosTableReferences),
      Pago,
      PrefetchHooks Function({bool prestamoId})
    >;
typedef $$FirmasRemotasTableCreateCompanionBuilder =
    FirmasRemotasCompanion Function({
      required String id,
      required String prestamoId,
      required String tokenAcceso,
      Value<bool> firmado,
      Value<DateTime?> fechaFirma,
      Value<String?> firmaImagenPath,
      Value<String?> ipFirmante,
      Value<double?> latitud,
      Value<double?> longitud,
      Value<String?> hashDocumento,
      Value<int> rowid,
    });
typedef $$FirmasRemotasTableUpdateCompanionBuilder =
    FirmasRemotasCompanion Function({
      Value<String> id,
      Value<String> prestamoId,
      Value<String> tokenAcceso,
      Value<bool> firmado,
      Value<DateTime?> fechaFirma,
      Value<String?> firmaImagenPath,
      Value<String?> ipFirmante,
      Value<double?> latitud,
      Value<double?> longitud,
      Value<String?> hashDocumento,
      Value<int> rowid,
    });

final class $$FirmasRemotasTableReferences
    extends BaseReferences<_$AppDatabase, $FirmasRemotasTable, FirmaRemota> {
  $$FirmasRemotasTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $PrestamosTable _prestamoIdTable(_$AppDatabase db) =>
      db.prestamos.createAlias('firmas_remotas__prestamo_id__prestamos__id');

  $$PrestamosTableProcessedTableManager get prestamoId {
    final $_column = $_itemColumn<String>('prestamo_id')!;

    final manager = $$PrestamosTableTableManager(
      $_db,
      $_db.prestamos,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_prestamoIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$FirmasRemotasTableFilterComposer
    extends Composer<_$AppDatabase, $FirmasRemotasTable> {
  $$FirmasRemotasTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tokenAcceso => $composableBuilder(
    column: $table.tokenAcceso,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get firmado => $composableBuilder(
    column: $table.firmado,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get fechaFirma => $composableBuilder(
    column: $table.fechaFirma,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get firmaImagenPath => $composableBuilder(
    column: $table.firmaImagenPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get ipFirmante => $composableBuilder(
    column: $table.ipFirmante,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get latitud => $composableBuilder(
    column: $table.latitud,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get longitud => $composableBuilder(
    column: $table.longitud,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get hashDocumento => $composableBuilder(
    column: $table.hashDocumento,
    builder: (column) => ColumnFilters(column),
  );

  $$PrestamosTableFilterComposer get prestamoId {
    final $$PrestamosTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.prestamoId,
      referencedTable: $db.prestamos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PrestamosTableFilterComposer(
            $db: $db,
            $table: $db.prestamos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FirmasRemotasTableOrderingComposer
    extends Composer<_$AppDatabase, $FirmasRemotasTable> {
  $$FirmasRemotasTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tokenAcceso => $composableBuilder(
    column: $table.tokenAcceso,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get firmado => $composableBuilder(
    column: $table.firmado,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get fechaFirma => $composableBuilder(
    column: $table.fechaFirma,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get firmaImagenPath => $composableBuilder(
    column: $table.firmaImagenPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get ipFirmante => $composableBuilder(
    column: $table.ipFirmante,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get latitud => $composableBuilder(
    column: $table.latitud,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get longitud => $composableBuilder(
    column: $table.longitud,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get hashDocumento => $composableBuilder(
    column: $table.hashDocumento,
    builder: (column) => ColumnOrderings(column),
  );

  $$PrestamosTableOrderingComposer get prestamoId {
    final $$PrestamosTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.prestamoId,
      referencedTable: $db.prestamos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PrestamosTableOrderingComposer(
            $db: $db,
            $table: $db.prestamos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FirmasRemotasTableAnnotationComposer
    extends Composer<_$AppDatabase, $FirmasRemotasTable> {
  $$FirmasRemotasTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get tokenAcceso => $composableBuilder(
    column: $table.tokenAcceso,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get firmado =>
      $composableBuilder(column: $table.firmado, builder: (column) => column);

  GeneratedColumn<DateTime> get fechaFirma => $composableBuilder(
    column: $table.fechaFirma,
    builder: (column) => column,
  );

  GeneratedColumn<String> get firmaImagenPath => $composableBuilder(
    column: $table.firmaImagenPath,
    builder: (column) => column,
  );

  GeneratedColumn<String> get ipFirmante => $composableBuilder(
    column: $table.ipFirmante,
    builder: (column) => column,
  );

  GeneratedColumn<double> get latitud =>
      $composableBuilder(column: $table.latitud, builder: (column) => column);

  GeneratedColumn<double> get longitud =>
      $composableBuilder(column: $table.longitud, builder: (column) => column);

  GeneratedColumn<String> get hashDocumento => $composableBuilder(
    column: $table.hashDocumento,
    builder: (column) => column,
  );

  $$PrestamosTableAnnotationComposer get prestamoId {
    final $$PrestamosTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.prestamoId,
      referencedTable: $db.prestamos,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PrestamosTableAnnotationComposer(
            $db: $db,
            $table: $db.prestamos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FirmasRemotasTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FirmasRemotasTable,
          FirmaRemota,
          $$FirmasRemotasTableFilterComposer,
          $$FirmasRemotasTableOrderingComposer,
          $$FirmasRemotasTableAnnotationComposer,
          $$FirmasRemotasTableCreateCompanionBuilder,
          $$FirmasRemotasTableUpdateCompanionBuilder,
          (FirmaRemota, $$FirmasRemotasTableReferences),
          FirmaRemota,
          PrefetchHooks Function({bool prestamoId})
        > {
  $$FirmasRemotasTableTableManager(_$AppDatabase db, $FirmasRemotasTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FirmasRemotasTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FirmasRemotasTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FirmasRemotasTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> prestamoId = const Value.absent(),
                Value<String> tokenAcceso = const Value.absent(),
                Value<bool> firmado = const Value.absent(),
                Value<DateTime?> fechaFirma = const Value.absent(),
                Value<String?> firmaImagenPath = const Value.absent(),
                Value<String?> ipFirmante = const Value.absent(),
                Value<double?> latitud = const Value.absent(),
                Value<double?> longitud = const Value.absent(),
                Value<String?> hashDocumento = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FirmasRemotasCompanion(
                id: id,
                prestamoId: prestamoId,
                tokenAcceso: tokenAcceso,
                firmado: firmado,
                fechaFirma: fechaFirma,
                firmaImagenPath: firmaImagenPath,
                ipFirmante: ipFirmante,
                latitud: latitud,
                longitud: longitud,
                hashDocumento: hashDocumento,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String prestamoId,
                required String tokenAcceso,
                Value<bool> firmado = const Value.absent(),
                Value<DateTime?> fechaFirma = const Value.absent(),
                Value<String?> firmaImagenPath = const Value.absent(),
                Value<String?> ipFirmante = const Value.absent(),
                Value<double?> latitud = const Value.absent(),
                Value<double?> longitud = const Value.absent(),
                Value<String?> hashDocumento = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FirmasRemotasCompanion.insert(
                id: id,
                prestamoId: prestamoId,
                tokenAcceso: tokenAcceso,
                firmado: firmado,
                fechaFirma: fechaFirma,
                firmaImagenPath: firmaImagenPath,
                ipFirmante: ipFirmante,
                latitud: latitud,
                longitud: longitud,
                hashDocumento: hashDocumento,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$FirmasRemotasTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({prestamoId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (prestamoId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.prestamoId,
                        referencedTable: $$FirmasRemotasTableReferences
                            ._prestamoIdTable(db),
                        referencedColumn: $$FirmasRemotasTableReferences
                            ._prestamoIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$FirmasRemotasTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FirmasRemotasTable,
      FirmaRemota,
      $$FirmasRemotasTableFilterComposer,
      $$FirmasRemotasTableOrderingComposer,
      $$FirmasRemotasTableAnnotationComposer,
      $$FirmasRemotasTableCreateCompanionBuilder,
      $$FirmasRemotasTableUpdateCompanionBuilder,
      (FirmaRemota, $$FirmasRemotasTableReferences),
      FirmaRemota,
      PrefetchHooks Function({bool prestamoId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ClientesTableTableManager get clientes =>
      $$ClientesTableTableManager(_db, _db.clientes);
  $$PrestamosTableTableManager get prestamos =>
      $$PrestamosTableTableManager(_db, _db.prestamos);
  $$PagosTableTableManager get pagos =>
      $$PagosTableTableManager(_db, _db.pagos);
  $$FirmasRemotasTableTableManager get firmasRemotas =>
      $$FirmasRemotasTableTableManager(_db, _db.firmasRemotas);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class Processo extends DataClass implements Insertable<Processo> {
  final int id;
  final String numero;
  final String nome;
  final DateTime data_alt;
  final bool alguma_alt;
  Processo(
      {@required this.id,
      @required this.numero,
      @required this.nome,
      this.data_alt,
      @required this.alguma_alt});
  factory Processo.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Processo(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      numero:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}numero']),
      nome: stringType.mapFromDatabaseResponse(data['${effectivePrefix}nome']),
      data_alt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_alt']),
      alguma_alt: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}alguma_alt']),
    );
  }
  factory Processo.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Processo(
      id: serializer.fromJson<int>(json['id']),
      numero: serializer.fromJson<String>(json['numero']),
      nome: serializer.fromJson<String>(json['nome']),
      data_alt: serializer.fromJson<DateTime>(json['data_alt']),
      alguma_alt: serializer.fromJson<bool>(json['alguma_alt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'numero': serializer.toJson<String>(numero),
      'nome': serializer.toJson<String>(nome),
      'data_alt': serializer.toJson<DateTime>(data_alt),
      'alguma_alt': serializer.toJson<bool>(alguma_alt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Processo>>(bool nullToAbsent) {
    return ProcessosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      numero:
          numero == null && nullToAbsent ? const Value.absent() : Value(numero),
      nome: nome == null && nullToAbsent ? const Value.absent() : Value(nome),
      data_alt: data_alt == null && nullToAbsent
          ? const Value.absent()
          : Value(data_alt),
      alguma_alt: alguma_alt == null && nullToAbsent
          ? const Value.absent()
          : Value(alguma_alt),
    ) as T;
  }

  Processo copyWith(
          {int id,
          String numero,
          String nome,
          DateTime data_alt,
          bool alguma_alt}) =>
      Processo(
        id: id ?? this.id,
        numero: numero ?? this.numero,
        nome: nome ?? this.nome,
        data_alt: data_alt ?? this.data_alt,
        alguma_alt: alguma_alt ?? this.alguma_alt,
      );
  @override
  String toString() {
    return (StringBuffer('Processo(')
          ..write('id: $id, ')
          ..write('numero: $numero, ')
          ..write('nome: $nome, ')
          ..write('data_alt: $data_alt, ')
          ..write('alguma_alt: $alguma_alt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          numero.hashCode,
          $mrjc(
              nome.hashCode, $mrjc(data_alt.hashCode, alguma_alt.hashCode)))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Processo &&
          other.id == id &&
          other.numero == numero &&
          other.nome == nome &&
          other.data_alt == data_alt &&
          other.alguma_alt == alguma_alt);
}

class ProcessosCompanion extends UpdateCompanion<Processo> {
  final Value<int> id;
  final Value<String> numero;
  final Value<String> nome;
  final Value<DateTime> data_alt;
  final Value<bool> alguma_alt;
  const ProcessosCompanion({
    this.id = const Value.absent(),
    this.numero = const Value.absent(),
    this.nome = const Value.absent(),
    this.data_alt = const Value.absent(),
    this.alguma_alt = const Value.absent(),
  });
  ProcessosCompanion copyWith(
      {Value<int> id,
      Value<String> numero,
      Value<String> nome,
      Value<DateTime> data_alt,
      Value<bool> alguma_alt}) {
    return ProcessosCompanion(
      id: id ?? this.id,
      numero: numero ?? this.numero,
      nome: nome ?? this.nome,
      data_alt: data_alt ?? this.data_alt,
      alguma_alt: alguma_alt ?? this.alguma_alt,
    );
  }
}

class $ProcessosTable extends Processos
    with TableInfo<$ProcessosTable, Processo> {
  final GeneratedDatabase _db;
  final String _alias;
  $ProcessosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _numeroMeta = const VerificationMeta('numero');
  GeneratedTextColumn _numero;
  @override
  GeneratedTextColumn get numero => _numero ??= _constructNumero();
  GeneratedTextColumn _constructNumero() {
    return GeneratedTextColumn('numero', $tableName, false,
        minTextLength: 3, maxTextLength: 50, $customConstraints: 'UNIQUE');
  }

  final VerificationMeta _nomeMeta = const VerificationMeta('nome');
  GeneratedTextColumn _nome;
  @override
  GeneratedTextColumn get nome => _nome ??= _constructNome();
  GeneratedTextColumn _constructNome() {
    return GeneratedTextColumn('nome', $tableName, false,
        minTextLength: 3, maxTextLength: 50, $customConstraints: 'UNIQUE');
  }

  final VerificationMeta _data_altMeta = const VerificationMeta('data_alt');
  GeneratedDateTimeColumn _data_alt;
  @override
  GeneratedDateTimeColumn get data_alt => _data_alt ??= _constructDataAlt();
  GeneratedDateTimeColumn _constructDataAlt() {
    return GeneratedDateTimeColumn('data_alt', $tableName, true,
        defaultValue: Constant(DateTime.now()));
  }

  final VerificationMeta _alguma_altMeta = const VerificationMeta('alguma_alt');
  GeneratedBoolColumn _alguma_alt;
  @override
  GeneratedBoolColumn get alguma_alt => _alguma_alt ??= _constructAlgumaAlt();
  GeneratedBoolColumn _constructAlgumaAlt() {
    return GeneratedBoolColumn('alguma_alt', $tableName, false,
        defaultValue: Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, numero, nome, data_alt, alguma_alt];
  @override
  $ProcessosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'processos';
  @override
  final String actualTableName = 'processos';
  @override
  VerificationContext validateIntegrity(ProcessosCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.numero.present) {
      context.handle(
          _numeroMeta, numero.isAcceptableValue(d.numero.value, _numeroMeta));
    } else if (numero.isRequired && isInserting) {
      context.missing(_numeroMeta);
    }
    if (d.nome.present) {
      context.handle(
          _nomeMeta, nome.isAcceptableValue(d.nome.value, _nomeMeta));
    } else if (nome.isRequired && isInserting) {
      context.missing(_nomeMeta);
    }
    if (d.data_alt.present) {
      context.handle(_data_altMeta,
          data_alt.isAcceptableValue(d.data_alt.value, _data_altMeta));
    } else if (data_alt.isRequired && isInserting) {
      context.missing(_data_altMeta);
    }
    if (d.alguma_alt.present) {
      context.handle(_alguma_altMeta,
          alguma_alt.isAcceptableValue(d.alguma_alt.value, _alguma_altMeta));
    } else if (alguma_alt.isRequired && isInserting) {
      context.missing(_alguma_altMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Processo map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Processo.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ProcessosCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.numero.present) {
      map['numero'] = Variable<String, StringType>(d.numero.value);
    }
    if (d.nome.present) {
      map['nome'] = Variable<String, StringType>(d.nome.value);
    }
    if (d.data_alt.present) {
      map['data_alt'] = Variable<DateTime, DateTimeType>(d.data_alt.value);
    }
    if (d.alguma_alt.present) {
      map['alguma_alt'] = Variable<bool, BoolType>(d.alguma_alt.value);
    }
    return map;
  }

  @override
  $ProcessosTable createAlias(String alias) {
    return $ProcessosTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
  $ProcessosTable _processos;
  $ProcessosTable get processos => _processos ??= $ProcessosTable(this);
  @override
  List<TableInfo> get allTables => [processos];
}

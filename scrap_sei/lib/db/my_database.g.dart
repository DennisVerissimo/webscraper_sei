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

class Resumo extends DataClass implements Insertable<Resumo> {
  final int processo_id;
  final String descricao;
  final String unidade;
  final DateTime data;
  Resumo(
      {this.processo_id,
      @required this.descricao,
      @required this.unidade,
      @required this.data});
  factory Resumo.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Resumo(
      processo_id: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}processo_id']),
      descricao: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}descricao']),
      unidade:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}unidade']),
      data:
          dateTimeType.mapFromDatabaseResponse(data['${effectivePrefix}data']),
    );
  }
  factory Resumo.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Resumo(
      processo_id: serializer.fromJson<int>(json['processo_id']),
      descricao: serializer.fromJson<String>(json['descricao']),
      unidade: serializer.fromJson<String>(json['unidade']),
      data: serializer.fromJson<DateTime>(json['data']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'processo_id': serializer.toJson<int>(processo_id),
      'descricao': serializer.toJson<String>(descricao),
      'unidade': serializer.toJson<String>(unidade),
      'data': serializer.toJson<DateTime>(data),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Resumo>>(bool nullToAbsent) {
    return ResumosCompanion(
      processo_id: processo_id == null && nullToAbsent
          ? const Value.absent()
          : Value(processo_id),
      descricao: descricao == null && nullToAbsent
          ? const Value.absent()
          : Value(descricao),
      unidade: unidade == null && nullToAbsent
          ? const Value.absent()
          : Value(unidade),
      data: data == null && nullToAbsent ? const Value.absent() : Value(data),
    ) as T;
  }

  Resumo copyWith(
          {int processo_id, String descricao, String unidade, DateTime data}) =>
      Resumo(
        processo_id: processo_id ?? this.processo_id,
        descricao: descricao ?? this.descricao,
        unidade: unidade ?? this.unidade,
        data: data ?? this.data,
      );
  @override
  String toString() {
    return (StringBuffer('Resumo(')
          ..write('processo_id: $processo_id, ')
          ..write('descricao: $descricao, ')
          ..write('unidade: $unidade, ')
          ..write('data: $data')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(processo_id.hashCode,
      $mrjc(descricao.hashCode, $mrjc(unidade.hashCode, data.hashCode))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Resumo &&
          other.processo_id == processo_id &&
          other.descricao == descricao &&
          other.unidade == unidade &&
          other.data == data);
}

class ResumosCompanion extends UpdateCompanion<Resumo> {
  final Value<int> processo_id;
  final Value<String> descricao;
  final Value<String> unidade;
  final Value<DateTime> data;
  const ResumosCompanion({
    this.processo_id = const Value.absent(),
    this.descricao = const Value.absent(),
    this.unidade = const Value.absent(),
    this.data = const Value.absent(),
  });
  ResumosCompanion copyWith(
      {Value<int> processo_id,
      Value<String> descricao,
      Value<String> unidade,
      Value<DateTime> data}) {
    return ResumosCompanion(
      processo_id: processo_id ?? this.processo_id,
      descricao: descricao ?? this.descricao,
      unidade: unidade ?? this.unidade,
      data: data ?? this.data,
    );
  }
}

class $ResumosTable extends Resumos with TableInfo<$ResumosTable, Resumo> {
  final GeneratedDatabase _db;
  final String _alias;
  $ResumosTable(this._db, [this._alias]);
  final VerificationMeta _processo_idMeta =
      const VerificationMeta('processo_id');
  GeneratedIntColumn _processo_id;
  @override
  GeneratedIntColumn get processo_id => _processo_id ??= _constructProcessoId();
  GeneratedIntColumn _constructProcessoId() {
    return GeneratedIntColumn('processo_id', $tableName, true,
        $customConstraints: 'NULL REFERENCES Processos(id)');
  }

  final VerificationMeta _descricaoMeta = const VerificationMeta('descricao');
  GeneratedTextColumn _descricao;
  @override
  GeneratedTextColumn get descricao => _descricao ??= _constructDescricao();
  GeneratedTextColumn _constructDescricao() {
    return GeneratedTextColumn(
      'descricao',
      $tableName,
      false,
    );
  }

  final VerificationMeta _unidadeMeta = const VerificationMeta('unidade');
  GeneratedTextColumn _unidade;
  @override
  GeneratedTextColumn get unidade => _unidade ??= _constructUnidade();
  GeneratedTextColumn _constructUnidade() {
    return GeneratedTextColumn(
      'unidade',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dataMeta = const VerificationMeta('data');
  GeneratedDateTimeColumn _data;
  @override
  GeneratedDateTimeColumn get data => _data ??= _constructData();
  GeneratedDateTimeColumn _constructData() {
    return GeneratedDateTimeColumn(
      'data',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [processo_id, descricao, unidade, data];
  @override
  $ResumosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'resumos';
  @override
  final String actualTableName = 'resumos';
  @override
  VerificationContext validateIntegrity(ResumosCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.processo_id.present) {
      context.handle(_processo_idMeta,
          processo_id.isAcceptableValue(d.processo_id.value, _processo_idMeta));
    } else if (processo_id.isRequired && isInserting) {
      context.missing(_processo_idMeta);
    }
    if (d.descricao.present) {
      context.handle(_descricaoMeta,
          descricao.isAcceptableValue(d.descricao.value, _descricaoMeta));
    } else if (descricao.isRequired && isInserting) {
      context.missing(_descricaoMeta);
    }
    if (d.unidade.present) {
      context.handle(_unidadeMeta,
          unidade.isAcceptableValue(d.unidade.value, _unidadeMeta));
    } else if (unidade.isRequired && isInserting) {
      context.missing(_unidadeMeta);
    }
    if (d.data.present) {
      context.handle(
          _dataMeta, data.isAcceptableValue(d.data.value, _dataMeta));
    } else if (data.isRequired && isInserting) {
      context.missing(_dataMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Resumo map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Resumo.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ResumosCompanion d) {
    final map = <String, Variable>{};
    if (d.processo_id.present) {
      map['processo_id'] = Variable<int, IntType>(d.processo_id.value);
    }
    if (d.descricao.present) {
      map['descricao'] = Variable<String, StringType>(d.descricao.value);
    }
    if (d.unidade.present) {
      map['unidade'] = Variable<String, StringType>(d.unidade.value);
    }
    if (d.data.present) {
      map['data'] = Variable<DateTime, DateTimeType>(d.data.value);
    }
    return map;
  }

  @override
  $ResumosTable createAlias(String alias) {
    return $ResumosTable(_db, alias);
  }
}

class Detalhe extends DataClass implements Insertable<Detalhe> {
  final int processo_id;
  final String docu_processo;
  final String tipo_docu;
  final DateTime data_regi;
  final String unidade;
  Detalhe(
      {this.processo_id,
      @required this.docu_processo,
      @required this.tipo_docu,
      @required this.data_regi,
      @required this.unidade});
  factory Detalhe.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Detalhe(
      processo_id: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}processo_id']),
      docu_processo: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}docu_processo']),
      tipo_docu: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}tipo_docu']),
      data_regi: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}data_regi']),
      unidade:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}unidade']),
    );
  }
  factory Detalhe.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Detalhe(
      processo_id: serializer.fromJson<int>(json['processo_id']),
      docu_processo: serializer.fromJson<String>(json['docu_processo']),
      tipo_docu: serializer.fromJson<String>(json['tipo_docu']),
      data_regi: serializer.fromJson<DateTime>(json['data_regi']),
      unidade: serializer.fromJson<String>(json['unidade']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'processo_id': serializer.toJson<int>(processo_id),
      'docu_processo': serializer.toJson<String>(docu_processo),
      'tipo_docu': serializer.toJson<String>(tipo_docu),
      'data_regi': serializer.toJson<DateTime>(data_regi),
      'unidade': serializer.toJson<String>(unidade),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Detalhe>>(bool nullToAbsent) {
    return DetalhesCompanion(
      processo_id: processo_id == null && nullToAbsent
          ? const Value.absent()
          : Value(processo_id),
      docu_processo: docu_processo == null && nullToAbsent
          ? const Value.absent()
          : Value(docu_processo),
      tipo_docu: tipo_docu == null && nullToAbsent
          ? const Value.absent()
          : Value(tipo_docu),
      data_regi: data_regi == null && nullToAbsent
          ? const Value.absent()
          : Value(data_regi),
      unidade: unidade == null && nullToAbsent
          ? const Value.absent()
          : Value(unidade),
    ) as T;
  }

  Detalhe copyWith(
          {int processo_id,
          String docu_processo,
          String tipo_docu,
          DateTime data_regi,
          String unidade}) =>
      Detalhe(
        processo_id: processo_id ?? this.processo_id,
        docu_processo: docu_processo ?? this.docu_processo,
        tipo_docu: tipo_docu ?? this.tipo_docu,
        data_regi: data_regi ?? this.data_regi,
        unidade: unidade ?? this.unidade,
      );
  @override
  String toString() {
    return (StringBuffer('Detalhe(')
          ..write('processo_id: $processo_id, ')
          ..write('docu_processo: $docu_processo, ')
          ..write('tipo_docu: $tipo_docu, ')
          ..write('data_regi: $data_regi, ')
          ..write('unidade: $unidade')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      processo_id.hashCode,
      $mrjc(
          docu_processo.hashCode,
          $mrjc(tipo_docu.hashCode,
              $mrjc(data_regi.hashCode, unidade.hashCode)))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Detalhe &&
          other.processo_id == processo_id &&
          other.docu_processo == docu_processo &&
          other.tipo_docu == tipo_docu &&
          other.data_regi == data_regi &&
          other.unidade == unidade);
}

class DetalhesCompanion extends UpdateCompanion<Detalhe> {
  final Value<int> processo_id;
  final Value<String> docu_processo;
  final Value<String> tipo_docu;
  final Value<DateTime> data_regi;
  final Value<String> unidade;
  const DetalhesCompanion({
    this.processo_id = const Value.absent(),
    this.docu_processo = const Value.absent(),
    this.tipo_docu = const Value.absent(),
    this.data_regi = const Value.absent(),
    this.unidade = const Value.absent(),
  });
  DetalhesCompanion copyWith(
      {Value<int> processo_id,
      Value<String> docu_processo,
      Value<String> tipo_docu,
      Value<DateTime> data_regi,
      Value<String> unidade}) {
    return DetalhesCompanion(
      processo_id: processo_id ?? this.processo_id,
      docu_processo: docu_processo ?? this.docu_processo,
      tipo_docu: tipo_docu ?? this.tipo_docu,
      data_regi: data_regi ?? this.data_regi,
      unidade: unidade ?? this.unidade,
    );
  }
}

class $DetalhesTable extends Detalhes with TableInfo<$DetalhesTable, Detalhe> {
  final GeneratedDatabase _db;
  final String _alias;
  $DetalhesTable(this._db, [this._alias]);
  final VerificationMeta _processo_idMeta =
      const VerificationMeta('processo_id');
  GeneratedIntColumn _processo_id;
  @override
  GeneratedIntColumn get processo_id => _processo_id ??= _constructProcessoId();
  GeneratedIntColumn _constructProcessoId() {
    return GeneratedIntColumn('processo_id', $tableName, true,
        $customConstraints: 'NULL REFERENCES Processos(id)');
  }

  final VerificationMeta _docu_processoMeta =
      const VerificationMeta('docu_processo');
  GeneratedTextColumn _docu_processo;
  @override
  GeneratedTextColumn get docu_processo =>
      _docu_processo ??= _constructDocuProcesso();
  GeneratedTextColumn _constructDocuProcesso() {
    return GeneratedTextColumn(
      'docu_processo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tipo_docuMeta = const VerificationMeta('tipo_docu');
  GeneratedTextColumn _tipo_docu;
  @override
  GeneratedTextColumn get tipo_docu => _tipo_docu ??= _constructTipoDocu();
  GeneratedTextColumn _constructTipoDocu() {
    return GeneratedTextColumn(
      'tipo_docu',
      $tableName,
      false,
    );
  }

  final VerificationMeta _data_regiMeta = const VerificationMeta('data_regi');
  GeneratedDateTimeColumn _data_regi;
  @override
  GeneratedDateTimeColumn get data_regi => _data_regi ??= _constructDataRegi();
  GeneratedDateTimeColumn _constructDataRegi() {
    return GeneratedDateTimeColumn(
      'data_regi',
      $tableName,
      false,
    );
  }

  final VerificationMeta _unidadeMeta = const VerificationMeta('unidade');
  GeneratedTextColumn _unidade;
  @override
  GeneratedTextColumn get unidade => _unidade ??= _constructUnidade();
  GeneratedTextColumn _constructUnidade() {
    return GeneratedTextColumn(
      'unidade',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [processo_id, docu_processo, tipo_docu, data_regi, unidade];
  @override
  $DetalhesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'detalhes';
  @override
  final String actualTableName = 'detalhes';
  @override
  VerificationContext validateIntegrity(DetalhesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.processo_id.present) {
      context.handle(_processo_idMeta,
          processo_id.isAcceptableValue(d.processo_id.value, _processo_idMeta));
    } else if (processo_id.isRequired && isInserting) {
      context.missing(_processo_idMeta);
    }
    if (d.docu_processo.present) {
      context.handle(
          _docu_processoMeta,
          docu_processo.isAcceptableValue(
              d.docu_processo.value, _docu_processoMeta));
    } else if (docu_processo.isRequired && isInserting) {
      context.missing(_docu_processoMeta);
    }
    if (d.tipo_docu.present) {
      context.handle(_tipo_docuMeta,
          tipo_docu.isAcceptableValue(d.tipo_docu.value, _tipo_docuMeta));
    } else if (tipo_docu.isRequired && isInserting) {
      context.missing(_tipo_docuMeta);
    }
    if (d.data_regi.present) {
      context.handle(_data_regiMeta,
          data_regi.isAcceptableValue(d.data_regi.value, _data_regiMeta));
    } else if (data_regi.isRequired && isInserting) {
      context.missing(_data_regiMeta);
    }
    if (d.unidade.present) {
      context.handle(_unidadeMeta,
          unidade.isAcceptableValue(d.unidade.value, _unidadeMeta));
    } else if (unidade.isRequired && isInserting) {
      context.missing(_unidadeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Detalhe map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Detalhe.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(DetalhesCompanion d) {
    final map = <String, Variable>{};
    if (d.processo_id.present) {
      map['processo_id'] = Variable<int, IntType>(d.processo_id.value);
    }
    if (d.docu_processo.present) {
      map['docu_processo'] =
          Variable<String, StringType>(d.docu_processo.value);
    }
    if (d.tipo_docu.present) {
      map['tipo_docu'] = Variable<String, StringType>(d.tipo_docu.value);
    }
    if (d.data_regi.present) {
      map['data_regi'] = Variable<DateTime, DateTimeType>(d.data_regi.value);
    }
    if (d.unidade.present) {
      map['unidade'] = Variable<String, StringType>(d.unidade.value);
    }
    return map;
  }

  @override
  $DetalhesTable createAlias(String alias) {
    return $DetalhesTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
  $ProcessosTable _processos;
  $ProcessosTable get processos => _processos ??= $ProcessosTable(this);
  $ResumosTable _resumos;
  $ResumosTable get resumos => _resumos ??= $ResumosTable(this);
  $DetalhesTable _detalhes;
  $DetalhesTable get detalhes => _detalhes ??= $DetalhesTable(this);
  @override
  List<TableInfo> get allTables => [processos, resumos, detalhes];
}

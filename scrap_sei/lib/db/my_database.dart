import 'package:moor_flutter/moor_flutter.dart';
import 'package:scrap_sei/ui/meus_processos.dart';
import 'package:scrap_sei/ui/resumo_processo.dart';
import 'dart:async';


part 'my_database.g.dart';

class Processos extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get numero => text().withLength(min: 3, max: 50).customConstraint('UNIQUE')();
  TextColumn get nome => text().withLength(min: 3, max: 50).customConstraint('UNIQUE')();
  DateTimeColumn get data_alt => dateTime().nullable().withDefault(Constant(DateTime.now()))();
  BoolColumn get alguma_alt => boolean().withDefault(Constant(false))();

  @override
  Set<Column> get primaryKey => {id};

}

class Resumos extends Table{

  IntColumn get processo_id => integer().nullable().customConstraint('NULL REFERENCES Processos(id)')();

  TextColumn get descricao => text()();
  TextColumn get unidade => text()();
  DateTimeColumn get data => dateTime()();


}

class Detalhes  extends Table{

  IntColumn get processo_id => integer().nullable().customConstraint('NULL REFERENCES Processos(id)')();

  TextColumn get docu_processo => text()();
  TextColumn get tipo_docu => text()();
  DateTimeColumn get data_regi => dateTime()();
  TextColumn get unidade => text()();
}



@UseMoor(tables: [Processos, Resumos, Detalhes])
class MyDatabase extends _$MyDatabase {

  static final MyDatabase instance =   MyDatabase._internal();
  MyDatabase._internal():
        super(FlutterQueryExecutor.inDatabaseFolder(path: 'db8.sqlite'));

  Stream<List<Processo>> getAllProcessos(){
    return select(processos).watch();
  }

  Future addProcesso(Processo processo){
    return into(processos).insert(processo);
  }

  Future deleteProcesso(numero){
    return (delete(processos)..where((processo) => processo.numero.equals(numero))).go();
  }


  Future<Processo> existe(Processo encontrarProcesso){
    return (select(processos)..where((processo) => processo.numero.equals(encontrarProcesso.numero))).getSingle();

    //ver se o numero já existe
    //ver se a descrição já existe
    //usar um OU (OR)
  }

  @override
  // TODO: implement schemaVersion
  int get schemaVersion => 1;


}

/* Future<User> userById(int id) {
  return (select(users)..where((user) => user.id.equals(id))).getSingle();
  // runs SELECT * FROM users WHERE id = ?, automatically binds the parameter
  // and parses the result row.
} */
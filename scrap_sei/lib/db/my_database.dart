import 'package:moor_flutter/moor_flutter.dart';
import 'package:scrap_sei/ui/meus_processos.dart';
import 'package:scrap_sei/ui/resumo_processo.dart';


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



@UseMoor(tables: [Processos])
class MyDatabase extends _$MyDatabase {

  static final MyDatabase instance =   MyDatabase._internal();
  MyDatabase._internal():
        super(FlutterQueryExecutor.inDatabaseFolder(path: 'db6.sqlite'));

  Stream<List<Processo>> getAllProcessos(){
    return select(processos).watch();
  }

  Future addProcesso(Processo processo){
    print(processo);
    return into(processos).insert(processo);
  }

  Future deleteProcesso(numero){
    return (delete(processos)..where((processo) => processo.numero.equals(numero))).go();
  }

  @override
  // TODO: implement schemaVersion
  int get schemaVersion => 1;


}
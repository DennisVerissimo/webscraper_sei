import 'package:moor_flutter/moor_flutter.dart';


part 'my_database.g.dart';

class Processos extends Table{
  TextColumn get numero => text().withLength(min: 3, max: 50)();
  TextColumn get nome => text().withLength(min: 3, max: 50)();
  DateTimeColumn get data_alt => dateTime()();
  BoolColumn get alguma_alt => boolean()();
}



@UseMoor(tables: [Processos])
class MyDatabase extends _$MyDatase {
  MyDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'dd.sqlite'));

  @override
  // TODO: implement schemaVersion
  int get schemaVersion => 1;


}
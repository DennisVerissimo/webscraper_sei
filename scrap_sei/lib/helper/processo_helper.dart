import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:collection/collection.dart';
import 'package:scrap_sei/helper/processo.dart';




class ProcessoHelper{

 static final String tabelaProcesso = "processoTabela";
 static final String numeroColuna = "colunaNumero";
 static final String nomeColuna = "colunaNome";
 static final String dataAltColuna = "colunaDataAlt";
 static final String linkColuna = "colunaLink";
 static final String algumaaltColuna = "colunaAlgumaAlt";

 ProcessoHelper.internal();
 factory ProcessoHelper() => _instance;

 static final ProcessoHelper _instance = ProcessoHelper.internal();

 Database _db;


 Future<Database> get db async{
   if(_db != null){
     return _db;
   }else{
     _db = await initDb();
     return _db;
   }
 }

 Future<Database> initDb() async{
   final databasesPath = await getDatabasesPath();
   final path = join(databasesPath, "webscrapersei.db");

   return await openDatabase(path, version: 1, onCreate: (Database db, int newerVersion) async{
      await db.execute(
          "CREATE TABLE $tabelaProcesso($numeroColuna TEXT, $nomeColuna TEXT, $nomeColuna TEXT,"
              "$dataAltColuna DATE, $linkColuna TEXT, $algumaaltColuna TEXT)"
      );
    }
   );
 }

 Future<int> deleteProcesso(int numero) async{
   Database dbProcesso = await db;
   return await dbProcesso.delete(tabelaProcesso, where: "$numeroColuna = ?", whereArgs: [numero]);
 }

 Future<int> updateProceso(Processo processo) async{
   Database dbProcesso = await db;
   return await dbProcesso.update(tabelaProcesso, processo.toMap(),
        where: "$numeroColuna = ?",
        whereArgs: [processo.numero]
   );

 }

 void insertProcesso(Processo processo) async{
   processo.numero = await _db.insert(tabelaProcesso, processo.toMap()
   );

 }



}
















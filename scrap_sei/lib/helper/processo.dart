import 'package:scrap_sei/helper/processo_helper.dart';

class Processo{
  int numero;
  String nome;
  DateTime data_alt;
  String link;
  bool alguma_alt;


  Processo.fromMap(Map map){

    numero = map[ProcessoHelper.numeroColuna];
    nome = map[ProcessoHelper.nomeColuna];
    data_alt = map[ProcessoHelper.dataAltColuna];
    link = map[ProcessoHelper.linkColuna];
    alguma_alt = map[ProcessoHelper.algumaaltColuna];

  }

  Map toMap() {
    Map<String, dynamic> map = {
      ProcessoHelper.numeroColuna: numero,
      ProcessoHelper.nomeColuna: nome,
      ProcessoHelper.dataAltColuna: data_alt,
      ProcessoHelper.linkColuna: link,
      ProcessoHelper.algumaaltColuna: alguma_alt,
    };
  }

  @override
  String toString() {
    return "Processo(numero: $numero, nome: $nome, dataalt: $data_alt, link: $link, algumaalt: $alguma_alt)";
  }


}



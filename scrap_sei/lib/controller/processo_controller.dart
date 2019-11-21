import 'package:scrap_sei/db/my_database.dart';
import 'package:scrap_sei/ui/meus_processos.dart';
import 'package:flutter/material.dart';



class ProcessoController{

  static void adicionar(Processo novoProcesso, context) async{
    MyDatabase.instance.existe(novoProcesso).then((processo_encontrado) {
      print('Adicionar processo');
      print(processo_encontrado);
      if(processo_encontrado == null){
        MyDatabase.instance.addProcesso(novoProcesso);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (contexto) => MeusProcessos() ));
      }else{
        print('processo já existe');
      }
    });
  }

}
import 'package:scrap_sei/db/my_database.dart';
import 'package:scrap_sei/ui/meus_processos.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart';
import 'package:html/dom.dart' as dom;
import 'package:http/io_client.dart';



class ProcessoController{



  static void adicionar(Processo novoProcesso, context) async{
    MyDatabase.instance.existe(novoProcesso).then((processo_encontrado) {
      print('Adicionar processo');
      print(processo_encontrado);
      if(processo_encontrado == null){
        MyDatabase.instance.addProcesso(novoProcesso);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (contexto) => MeusProcessos() ));
      }else{
        final snackBar = SnackBar(
            content: Text('Você já cadastrou esse processo com a descrição: ${processo_encontrado.nome}'),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 3),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      }
    });

  }

  static Future<String> urlCaptcha() async{
    HttpClient httpClient = new HttpClient()
      ..badCertificateCallback =
      ((X509Certificate cert, String host, int port) {
        // tests that cert is self signed, correct subject and correct date(s)
        return true;/**(cert.issuer == cert.subject &&
            cert.subject == 'MySelfSignedCertCN' &&
            cert.endValidity.millisecondsSinceEpoch == 1234567890);**/
      });

    IOClient ioClient = new IOClient(httpClient);
    http.Response response = await ioClient.get('https://sei.ifce.edu.br/sei/modulos/pesquisa/md_pesq_processo_pesquisar.php?acao_externa=protocolo_pesquisar&acao_origem_externa=protocolo_pesquisar&id_orgao_acesso_externo=0');

    ioClient.close();

    print(response.statusCode);
    if (response.statusCode != 200) return response.body;
    // TODO tratar quando ocorrer erro de conexão
    // Use html parser
    var document = parse(response.body);

    ioClient.close();
  //  List<dom.Element> links = document.querySelectorAll('label#lblCaptcha > img');

    dom.Element imagem = document.querySelector('label#lblCaptcha > img');

  //  print(imagem.attributes['src']);

    print ('https://sei.ifce.edu.br' + imagem.attributes['src']);

    return 'https://sei.ifce.edu.br' + imagem.attributes['src'];

  }



}
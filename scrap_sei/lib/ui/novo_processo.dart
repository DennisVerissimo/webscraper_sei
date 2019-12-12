
import 'package:flutter/material.dart';
import 'package:scrap_sei/ui/meus_processos.dart';
import 'package:scrap_sei/db/my_database.dart';
import 'package:scrap_sei/controller/processo_controller.dart';


class NovoProcesso extends StatefulWidget {
  @override
  _NovoProcessoState createState() => _NovoProcessoState();
}

class _NovoProcessoState extends State<NovoProcesso> {


  void irParaMeusProcessos(){
   // Navigator.push(_meuContexto, MaterialPageRoute(builder: (contexto) => MeusProcessos()));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (contexto) => MeusProcessos()));

  }

  String num = "";
  String des = "";

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context){


    return Scaffold(
    /*  floatingActionButton: Container(
        padding: EdgeInsets.only(top: 45),
        child: FloatingActionButton(
          child: Icon(Icons.line_style,),
          backgroundColor: Colors.deepPurple,
          onPressed: irParaMeusProcessos,

        ),
      ), */
   /*   bottomNavigationBar: BottomAppBar(
        color: Colors.deepPurple,
        child: Container(

          height: 50.0,),
      ), */
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      backgroundColor: Colors.white,

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          actions: <Widget>[
            IconButton(icon: Icon(Icons.list), onPressed: irParaMeusProcessos,)
          ],
          backgroundColor: Colors.deepPurple,
          title: Text("Adicionar processo", style: TextStyle(color: Colors.white)),
          centerTitle: true,
        ),
      ),

      body: Builder(
        builder: (context) => SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Center(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: TextFormField(
                          // autofocus: true,
                          validator: validarProcesso,
                          style: new TextStyle(color: Colors.black45, fontSize: 15),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              labelText: "Processo",
                              labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                            /* hintText: "000.0000/222-00", */
                          ),
                          onChanged: (value){
                            num = value;
                          },
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: TextFormField(
                          // autofocus: true,
                          validator: validarDes,
                          keyboardType: TextInputType.text,
                          style: new TextStyle(color: Colors.black45, fontSize: 15),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              labelText: "Descrição",
                              labelStyle: TextStyle(color: Colors.black, fontSize: 20, )
                          ),
                          onChanged: (value){
                            des = value;
                          },
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Row(
                          children: <Widget>[
                            Container(
                                /* child: Image.asset("imagens/infra.png",
                                    fit: BoxFit.fitWidth ,
                                  ), */
                              margin: EdgeInsets.only(right: 10), child: FutureBuilder<String>(
                        future: ProcessoController.urlCaptcha(),
                        builder: (context, snapshot){
                          switch(snapshot.connectionState){
                            case ConnectionState.none:
                            case ConnectionState.waiting:
                              return Center(
                                child: CircularProgressIndicator(),);
                              default:
                                if (snapshot.hasError){
                                  final snackbar = SnackBar(
                                    content: Text('erro'),
                                    duration: Duration(seconds: 3),
                                  );
                                  Scaffold.of(context).showSnackBar(snackbar);
                                }else {
                                  return Image.network(snapshot.data, fit: BoxFit.fitWidth,);
                                }

                          }
                        },
                      ),
                           // Image.network(ProcessoController.urlCaptcha(), fit: BoxFit.fitWidth,),
                            ),
                            Expanded(child: TextFormField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintText: "Código da imagem",
                              ),

                              style: new TextStyle(color: Colors.black45, fontSize: 15),
                            ),
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: RaisedButton(
                          onPressed: () async{
                            if(_formKey.currentState.validate()){
                              ProcessoController.adicionar(Processo(numero: num, nome: des,), context);
                            }
                          },
                          child:
                          Text("ADICIONAR",
                            style: TextStyle(color: Colors.white),),
                          color: Colors.deepPurpleAccent,
                        ),
                      )
                    ],
                  ),
                ),
            ),
          ),
      ),
    );
  }

  String validarProcesso(String value){

    if(value.isEmpty)
      return "o campo é obrigatório.";
    if (value.length <  19 )
      return "o campo precisa ter mais de 18 caracteres.";
    if (value.length > 22 )
      return "campo precisa ter no máximo 22 caracteres";
    Pattern pattern =
        r'^\d{5}\.\d{6}\/\d{4}\-\d{1,4}$';
    RegExp regex = new RegExp(pattern);
    print(regex.hasMatch(value));
    print(value);
    if (!regex.hasMatch(value))
      return 'processo incorreto';
    return null;

  }
  String validarDes(String value){
    if(value.isEmpty)
      return "o campo é obrigatório.";
    if (value.length < 2 )
      return "o campo precisa ter mais de 1 caractere.";
    Pattern pattern =
        r'[A-Za-z0-9]';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'tipo de descrição inválida';
    return null;
  }


}


/*
Scaffold.of(context).showSnackBar(SnackBar(content: Text("Adicionando processo"),
                           duration: Duration( seconds: 3),));
 */
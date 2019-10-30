
import 'package:flutter/material.dart';
import 'package:scrap_sei/ui/meus_processos.dart';
import 'package:scrap_sei/db/my_database.dart';


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
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepPurple,
        child: Container(

          height: 50.0,),
      ),
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

      body: SingleChildScrollView(
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
                        validator: (value){
                          if(value.isEmpty) return "o campo é obrigatório.";
                          if (value.length < 3 )
                            return "o campo precisa ter mais de 2 caracteres.";
                          return null;
                        },

                        keyboardType: TextInputType.text,
                        style: new TextStyle(color: Colors.black45, fontSize: 15),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            labelText: "Processo",
                            labelStyle: TextStyle(color: Colors.black, fontSize: 20)
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
                        validator: (value){
                          if(value.isEmpty) return "o campo é obrigatório.";
                          if (value.length < 3 )
                            return "o campo precisa ter mais de 2 caracteres.";
                          return null;
                        },
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
                              child: Image.asset("imagens/infra.png",
                                  fit: BoxFit.fitWidth ,
                                ),
                            margin: EdgeInsets.only(right: 10),
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
                            await MyDatabase.instance.addProcesso(Processo(numero: num, nome: des,));
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (contexto) => MeusProcessos() ));
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
    );
  }


}

/*
Scaffold.of(context).showSnackBar(SnackBar(content: Text("Adicionando processo"),
                           duration: Duration( seconds: 3),));
 */
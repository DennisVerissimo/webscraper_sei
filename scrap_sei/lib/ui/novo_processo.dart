
import 'package:flutter/material.dart';
import 'package:scrap_sei/ui/meus_processos.dart';


class NovoProcesso extends StatefulWidget {
  @override
  _NovoProcessoState createState() => _NovoProcessoState();
}

class _NovoProcessoState extends State<NovoProcesso> {

  BuildContext _meuContexto;

  void irParaMeusProcessos(){
   // Navigator.push(_meuContexto, MaterialPageRoute(builder: (contexto) => MeusProcessos()));
    Navigator.pushReplacement(_meuContexto, MaterialPageRoute(builder: (contexto) => MeusProcessos()));

  }

  @override
  Widget build(BuildContext context){

    _meuContexto = context;

    return Scaffold(


      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.line_style,),
        backgroundColor: Colors.purple,
        onPressed: irParaMeusProcessos,

      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepPurple,
        child: Container(

          height: 50.0,),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      backgroundColor: Colors.white,
      appBar: AppBar(

        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Adicionar processo", style: TextStyle(color: Colors.white) ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                // autofocus: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.white, fontSize: 15),
                decoration: InputDecoration(
                    labelText: "Processo",
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20)
                ),
              ),

              Divider(),
              TextFormField(
                // autofocus: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.white, fontSize: 15),
                decoration: InputDecoration(
                    labelText: "Descrição",
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20, )
                ),
              ),

              Divider(),

              Row(

                children: <Widget>[
                  Image.asset("imagens/infra.png", width: 200,),
                  Expanded(child:
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Código da imagem",
                    ),

                    style: new TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  )
                ],
              ),


              Divider(),
              RaisedButton(
                onPressed: () => {

                },
                child:
                Text("ADICIONAR",
                  style: TextStyle(color: Colors.white),),
                color: Colors.deepPurpleAccent,

              )

            ],
          ),
        ),
      ),
    );
  }


}
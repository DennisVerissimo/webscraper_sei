
import 'package:flutter/material.dart';
import 'package:scrap_sei/ui/meus_processos.dart';


class NovoProcesso extends StatefulWidget {
  @override
  _NovoProcessoState createState() => _NovoProcessoState();
}

class _NovoProcessoState extends State<NovoProcesso> {


  void irParaMeusProcessos(){
   // Navigator.push(_meuContexto, MaterialPageRoute(builder: (contexto) => MeusProcessos()));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (contexto) => MeusProcessos()));

  }

  @override
  Widget build(BuildContext context){


    return Scaffold(


      floatingActionButton: Container(
        padding: EdgeInsets.only(top: 45),
        child: FloatingActionButton(
          child: Icon(Icons.line_style,),
          backgroundColor: Colors.deepPurple,
          onPressed: irParaMeusProcessos,

        ),
      ),
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
          backgroundColor: Colors.deepPurple,
          title: Text("Adicionar processo", style: TextStyle(color: Colors.white)),
          centerTitle: true,
        ),
      ),

      body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: TextFormField(
                    // autofocus: true,
                    keyboardType: TextInputType.text,
                    style: new TextStyle(color: Colors.black45, fontSize: 15),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        labelText: "Processo",
                        labelStyle: TextStyle(color: Colors.black, fontSize: 20)
                    ),
                  ),
                ),


                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: TextFormField(
                    // autofocus: true,
                    keyboardType: TextInputType.text,
                    style: new TextStyle(color: Colors.black45, fontSize: 15),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        labelText: "Descrição",
                        labelStyle: TextStyle(color: Colors.black, fontSize: 20, )
                    ),
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
                    onPressed: () => {

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
    );
  }


}
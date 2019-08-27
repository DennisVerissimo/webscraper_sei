
import 'package:scrap_sei/ui/resumo_processo.dart';
import 'package:flutter/material.dart';
import 'package:scrap_sei/ui/novo_processo.dart';

class MeusProcessos extends StatefulWidget {
  @override
  _MeusProcessosState createState() => _MeusProcessosState();
}

class _MeusProcessosState extends State<MeusProcessos> {

  BuildContext _meuContexto;

  void irParaNovoProcesso(){
    Navigator.pushReplacement(_meuContexto, MaterialPageRoute(builder: (contexto) => NovoProcesso() ));
  }

  void irParaResumo(){
    Navigator.push(_meuContexto, MaterialPageRoute(builder: (context) => ResumoProcesso()));
  }

  @override
  Widget build(BuildContext context) {

    _meuContexto = context;


    return Scaffold(

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,),
        backgroundColor: Colors.purple,
        onPressed: irParaNovoProcesso,

      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepPurple,
        child: Container(
          height: 50.0,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,

      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Meus processos", style: TextStyle(color: Colors.white),),
        centerTitle: true,

      ),

      body: Container(

          child: ListView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(8.0),
            children: <Widget>[

              Dismissible(
                key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
                background: Container(
                  color: Colors.deepPurpleAccent,
                ),
                direction: DismissDirection.startToEnd,
                child: ListTile(
                  trailing: Column(
                    children: <Widget>[
                         Container(
                          height: 32,
                          child: Icon(Icons.notifications_active, size: 15, color: Colors.green,),
                        ),
                      Text("10/10/10", style: TextStyle(fontSize: 12),),
                    ],
                  ) ,

                  title: Text("Viagem"),
                  subtitle: Text("23487.000815/2019-97"),
                  onTap: irParaResumo
                ),
              ),



              Dismissible(
                key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
                background: Container(
                  color: Colors.deepPurpleAccent,
                ),
                direction: DismissDirection.startToEnd,
                child: ListTile(
                    trailing: Column(
                      children: <Widget>[
                        Container(
                          height: 32,
                          child: Icon(Icons.calendar_today, size: 15, color: Colors.grey,),
                        ),
                        Text("10/10/10", style: TextStyle(fontSize: 12),),
                      ],
                    ) ,

                    title: Text("Declaração"),
                    subtitle: Text("23487.000815/2019-97"),
                    onTap: irParaResumo
                ),
              ),


              Dismissible(
                key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
                background: Container(
                  color: Colors.deepPurpleAccent,
                ),
                direction: DismissDirection.startToEnd,
                child: ListTile(
                    trailing: Column(
                      children: <Widget>[
                        Container(
                          height: 32,
                          child: Icon(Icons.notifications_active, size: 15, color: Colors.green,),
                        ),
                        Text("10/10/10", style: TextStyle(fontSize: 12),),
                      ],
                    ) ,

                    title: Text("Atestado médico"),
                    subtitle: Text("23487.000815/2019-97"),
                    onTap: irParaResumo
                ),
              ),

              Dismissible(
                key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
                background: Container(
                  color: Colors.deepPurpleAccent,
                ),
                direction: DismissDirection.startToEnd,
                child: ListTile(
                    trailing: Column(
                      children: <Widget>[
                        Container(
                          height: 32,
                          child: Icon(Icons.calendar_today, size: 15, color: Colors.grey,),
                        ),
                        Text("10/10/10", style: TextStyle(fontSize: 12),),
                      ],
                    ) ,

                    title: Text("Ajuda de custo"),
                    subtitle: Text("23487.000815/2019-97"),
                    onTap: irParaResumo
                ),
              ),

            ],
          ),
        ),
    );
  }
}
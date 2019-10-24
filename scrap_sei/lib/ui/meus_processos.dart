
import 'package:scrap_sei/ui/resumo_processo.dart';
import 'package:flutter/material.dart';
import 'package:scrap_sei/ui/novo_processo.dart';
import 'package:scrap_sei/db/my_database.dart';
import 'package:intl/intl.dart';


class MeusProcessos extends StatefulWidget {
  @override
  _MeusProcessosState createState() => _MeusProcessosState();
}

class _MeusProcessosState extends State<MeusProcessos> {


  void irParaNovoProcesso(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (contexto) => NovoProcesso() ));
  }

  void irParaResumo(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => ResumoProcesso()));
  }

  @override
  Widget build(BuildContext context) {

    var _now = new DateTime.now();
    var formatter = new DateFormat('dd-MM-yyy');
    String formatted = formatter.format(_now);

    return Scaffold(

    /*  floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,),
        backgroundColor: Colors.purple,
        onPressed: irParaNovoProcesso,

      ), */
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepPurple,
        child: Container(
          height: 50.0,),
      ),
     /* floatingActionButtonLocation: FloatingActionButtonLocation.endDocked, */

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add), onPressed: irParaNovoProcesso,)
          ],
          backgroundColor: Colors.deepPurpleAccent,
          title: Text("Meus processos", style: TextStyle(color: Colors.white),),
          centerTitle: true,
        ),
      ),

      body: StreamBuilder<List<Processo>>(
        stream: MyDatabase.instance.getAllProcessos(),
        builder:(context, snapshot){

          List<Processo> list = snapshot.data;

        return ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index){
              return Dismissible(
                key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
                background: Container(
                  color: Colors.red,
                  child: Align(
                    alignment: Alignment(-0.9, 0.0),
                    child: Icon(
                      Icons.delete, color: Colors.white,
                    ),
                  ),
                ),
                direction: DismissDirection.startToEnd,



                child: ListTile(
                 /* leading: IconButton(icon: Icon(Icons.delete), onPressed:(){
                    MyDatabase.instance.deleteProcesso((list[index].numero));
                  },
                  ), */
                  trailing: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: Text(formatted, style: TextStyle(fontSize: 12),),
                      )
                    ],
                  ),

                  title: Text(list[index].nome),
                  subtitle: Text(list[index].numero),
                  onTap: irParaResumo,
                ),
                onDismissed: (double){
                  setState(() {
                    MyDatabase.instance.deleteProcesso(list[index].numero);
                  });
                },
              );
            });
      },),
    );
  }
}


/* Container(

          child: ListView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(8.0),
            children: <Widget>[

              Dismissible(
                key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
                background: Container(
                  color: Colors.red,
                  child: Align(
                    alignment: Alignment(-0.9, 0.0),
                    child: Icon(
                      Icons.delete, color: Colors.white,
                    ),
                  ),
                ),
                direction: DismissDirection.startToEnd,
                child: ListTile(
                  trailing: Column(
                    children: <Widget>[
                         Container(
                             height: 32,
                             child: Icon(Icons.notifications_active, size: 15, color: Colors.green,)),
                      Text("21/05/2019", style: TextStyle(fontSize: 12),),
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
                  color: Colors.red,
                  child: Align(
                    alignment: Alignment(-0.9, 0.0),
                    child: Icon(
                      Icons.delete, color: Colors.white,
                    ),
                  ),
                ),
                direction: DismissDirection.startToEnd,
                child: ListTile(
                    trailing: Column(
                      children: <Widget>[
                        Container(
                          height: 32,
                          child: Icon(Icons.notifications_active, size: 15, color: Colors.green,),
                        ),
                        Text("22/09/2019", style: TextStyle(fontSize: 12),),
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
                  color: Colors.red,
                  child: Align(
                    alignment: Alignment(-0.9, 0.0),
                    child: Icon(
                      Icons.delete, color: Colors.white,
                    ),
                  ),
                ),
                direction: DismissDirection.startToEnd,
                child: ListTile(
                    trailing: Column(
                      children: <Widget>[
                        Container(
                          height: 32,
                          child: Icon(Icons.calendar_today, size: 15, color: Colors.grey,),
                        ),
                        Text("07/06/2019", style: TextStyle(fontSize: 12),),
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
                  color: Colors.red,
                  child: Align(
                    alignment: Alignment(-0.9, 0.0),
                    child: Icon(
                      Icons.delete, color: Colors.white,
                    ),
                  ),
                ),
                direction: DismissDirection.startToEnd,
                child: ListTile(
                    trailing: Column(
                      children: <Widget>[
                        Container(
                          height: 32,
                          child: Icon(Icons.calendar_today, size: 15, color: Colors.grey,),
                        ),
                        Text("03/06/2019", style: TextStyle(fontSize: 12),),
                      ],
                    ),

                    title: Text("Ajuda de custo"),
                    subtitle: Text("23487.000815/2019-97"),
                    onTap: irParaResumo
                ),
              ),

            ],
          ),
        ),*/
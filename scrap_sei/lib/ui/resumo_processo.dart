
import 'package:flutter/material.dart';


class ResumoProcesso extends StatefulWidget {
  @override
  _ResumoProcessoState createState() => _ResumoProcessoState();
}

class _ResumoProcessoState extends State<ResumoProcesso> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.deepPurple,
          title: new Text('Resumo processo'),
          centerTitle: true,
        ),

        body: new DefaultTabController(
          length: 2,
          child: new Column(
            children: <Widget>[
              new Container(
                constraints: BoxConstraints(maxHeight: 50.0),
                child: new Material(
                  color: Colors.deepPurpleAccent,
                  child: new TabBar(
                    tabs: [
                      Tab(
                          text: "Resumo",
                      ),
                      Tab(
                          text: "Detalhe",
                      ),
                    ],
                  ),
                ),
              ),
              new Expanded(
                child: new TabBarView(
                  children: [
                    DataTable(
                        columns: <DataColumn>[
                          DataColumn(label: Text("DATA/HORA")
                          ),
                          DataColumn(label: Text("UNIDADE")
                          ),
                          DataColumn(label: Text("DESCRIÇÃO")
                          ),
                        ]
                        , 
                        rows: [
                          DataRow(cells: [
                            DataCell(Text("25/05/2019")
                            ),
                            DataCell(Text("ARQUIVO- PROGEP")
                            ),
                            DataCell(Text("Processo recebido na unidade")
                            ),
                          ])
                        ]
                    ),
                    DataTable(
                        columns: <DataColumn>[
                          DataColumn(label: Text(" ")
                          ),
                          DataColumn(label: Text(" ")
                          ),
                          DataColumn(label: Text(" ")
                          ),
                        ]
                        ,
                        rows: [
                          DataRow(cells: [
                            DataCell(Text(" ")
                            ),
                            DataCell(Text(" ")
                            ),
                            DataCell(Text(" ")
                            ),
                          ])
                        ]
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

 /* @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Resumo do processo"),
        backgroundColor: Colors.deepPurple,
      ),

      body: Padding(
        padding: const EdgeInsets.all(0.0),
          child: DataTable(
              columns: <DataColumn>[
                DataColumn(label: Text("DATA/HORA")
                ),
                DataColumn(label: Text("UNIDADE")
                ),
                DataColumn(label: Text("DESCRIÇÃO")
                ),


              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text("25/05/2019 15:36")
                  ),
                  DataCell(Text("ARQUIVO- PROGEP")
                  ),
                  DataCell(Text("Processo recebido na unidade")
                  ),
                ]),

              ],

          ),
        ),
    );
  }
} */


/* Table(
            children: [
              TableRow(
                children:[
                  Text("DATA/HORA", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                  Text("UNIDADE", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                  Text("DESCRIÇÃO", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),),
                ]),

              TableRow(
                  children:[
                    Text("21/05/2019 15:14",  textAlign: TextAlign.center, style: TextStyle(fontSize: 14),),
                    Text("ARQUIVO-PROGEP", textAlign: TextAlign.center, style: TextStyle(fontSize: 14),),
                    Text("Processo recebido na unidade", textAlign: TextAlign.center, style: TextStyle(fontSize: 14),),
                  ]),
              /*TableRow(
                  children:[
                    Text("Data/Hora", textAlign: TextAlign.center,),
                    Text("Unidade", textAlign: TextAlign.center,),
                    Text("Descrição", textAlign: TextAlign.center,),
                  ]), */
            ],
          ), */
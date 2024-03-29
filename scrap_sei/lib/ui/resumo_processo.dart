
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumoProcesso extends StatefulWidget {
  @override
  _ResumoProcessoState createState() => _ResumoProcessoState();
}

class _ResumoProcessoState extends State<ResumoProcesso> {

  List<Map> resumos = [
    {
      "data": '21/05/2019 15:14',
      "unidade": 'ARQUIVO-PROGEP',
      "descricao": 'Processo recebido na unidade'
  },
    {
      "data": '21/05/2019 15:01',
      "unidade": 'ARQUIVO-PROGEP',
      "descricao": 'Processo remetido pela unidade CCB'
    },
    {
      "data": '21/05/2019 14:51',
      "unidade": 'CCB',
      "descricao": 'Processo recebido na unidade'
    },
    {
      "data": '21/05/2019 07:55',
      "unidade": 'DCP',
      "descricao": 'Processo recebido na unidade'
    },
    {
      "data": '21/05/2019 07:55',
      "unidade": 'CCB',
      "descricao": 'Processo remetido pela unidade DCP'
    },
    {
      "data": '21/05/2019 16:21',
      "unidade": 'DCP',
      "descricao": 'Processo remetido pela unidade CDA'
    },
    {
      "data": '21/05/2019 15:55',
      "unidade": 'CDA',
      "descricao": 'Processo recebido pela unidade'
    },
    {
      "data": '21/05/2019 09:12',
      "unidade": 'CDA',
      "descricao": 'Processo remetido pela unidade CODAR'
    },
    {
      "data": '21/05/2019 08:08',
      "unidade": 'CODAR',
      "descricao": 'Processo recebido pela unidade'
    },


  ];

  List<Map> detalhes = [
    {
      "documento": '0661961',
      "tipo": 'oficio',
      "data_registro": "29/04/2019",
      "unidade": 'GAB-JAG',
      "link": 'https://sei.ifce.edu.br/sei/modulos/pesquisa/md_pesq_documento_consulta_externa.php?RkR_pcJjZVlGubyMvqtHr3aWiFYqB9yUArU3co5SFAMpRlEE9OieWzHrSRz4cm4RV5NbgieVOW7J5rg2ZVhv7-8-QEANephkN_m57ISXpbr8K3UM6q237LiMT6qQWA6e'
    },
    {
      "documento": '0661988',
      "tipo": 'convite',
      "data_registro": "29/04/2019",
      "unidade": 'GAB-JAG',
      "link": 'https://sei.ifce.edu.br/sei/modulos/pesquisa/md_pesq_documento_consulta_externa.php?RkR_pcJjZVlGubyMvqtHr3aWiFYqB9yUArU3co5SFANrZBzylfLFNsY9fr2YBRpJGN8GcvVN3GFbi6IedEsH5axofjYQ9Tf6Sto9DuSJc_aZIRjYiH-F5psoUNSTKgfM'
    },
    {
      "documento": '0661999',
      "tipo": 'convite',
      "data_registro": "29/04/2019",
      "unidade": 'GAB-JAG',
      "link": 'https://sei.ifce.edu.br/sei/modulos/pesquisa/md_pesq_documento_consulta_externa.php?RkR_pcJjZVlGubyMvqtHr3aWiFYqB9yUArU3co5SFANrZBzylfLFNsY9fr2YBRpJGN8GcvVN3GFbi6IedEsH5axofjYQ9Tf6Sto9DuSJc_aZIRjYiH-F5psoUNSTKgfM'
    },
    {
      "documento": '0662007',
      "tipo": 'convite',
      "data_registro": "29/04/2019",
      "unidade": 'GAB-JAG',
      "link": 'https://sei.ifce.edu.br/sei/modulos/pesquisa/md_pesq_documento_consulta_externa.php?RkR_pcJjZVlGubyMvqtHr3aWiFYqB9yUArU3co5SFAMpnnte7A9hmClaUwk03lvdcekSAU8SJaFFCG_F5e222_JPC-RC6F-t7Z086W0LseIIZffE4EomvoVymTlbDqUR'

    },
    {
      "documento": '0662013',
      "tipo": 'convite',
      "data_registro": "29/04/2019",
      "unidade": 'GAB-JAG',
      "link": 'https://sei.ifce.edu.br/sei/modulos/pesquisa/md_pesq_documento_consulta_externa.php?RkR_pcJjZVlGubyMvqtHr3aWiFYqB9yUArU3co5SFAPjwIR21a4cKyiN3FAJ1H6T8eM1XN8ojah7J61tuWur5NSHKONFkx0mQHPpDD0p5EML08eZiMHB2pXdwP7ZCVY_'

    },
    {
      "documento": '0662030',
      "tipo": 'termo',
      "data_registro": "29/04/2019",
      "unidade": 'GAB-JAG',
      "link": 'https://sei.ifce.edu.br/sei/modulos/pesquisa/md_pesq_documento_consulta_externa.php?RkR_pcJjZVlGubyMvqtHr3aWiFYqB9yUArU3co5SFAN6wn4Av9rFx7IYovkJZqJzjQ_GKbRhCGit8HLDHLIu8vPsnJOzgIqYcgtFUQzp4d_SUWsVLd52d8_RV1nbPtaZ'

    },
    {
      "documento": '0662051',
      "tipo": 'comprovante',
      "data_registro": "29/04/2019",
      "unidade": 'GAB-JAG',
      "link": 'https://sei.ifce.edu.br/sei/modulos/pesquisa/md_pesq_documento_consulta_externa.php?RkR_pcJjZVlGubyMvqtHr3aWiFYqB9yUArU3co5SFAOEzVCo7IJf-S5QPxfI39H50kqPdickxEuC9a28JNe3k1WUlDmkoOWytQIi6whbvVMNM1zYomrep1yJDKsSdr7P'

    },
    {
      "documento": '0662060',
      "tipo": 'comprovante',
      "data_registro": "29/04/2019",
      "unidade": 'GAB-JAG',
      "link": 'https://sei.ifce.edu.br/sei/modulos/pesquisa/md_pesq_documento_consulta_externa.php?RkR_pcJjZVlGubyMvqtHr3aWiFYqB9yUArU3co5SFAP4563v5OZu7K2uAnia8C2q6RXvYZZ8_ksgsorT9WXIuEDJggEGuvBevATuRik3ZJiCJPDcRuFZnTxPq63L6Vkr'

    },
    {
      "documento": '0662065',
      "tipo": 'comprovante',
      "data_registro": "29/04/2019",
      "unidade": 'GAB-JAG',
      "link": 'https://sei.ifce.edu.br/sei/modulos/pesquisa/md_pesq_documento_consulta_externa.php?RkR_pcJjZVlGubyMvqtHr3aWiFYqB9yUArU3co5SFAPEwEZ28WFHL2YaeBqB1txGg0T1T5jFXj4f8fKdYvde7rexgOQhPCEWZtF0uOOUMc3k5GoDFgdfhEe3ZbW8t4qM'

    },
    {
      "documento": '0662078',
      "tipo": 'comprovante',
      "data_registro": "29/04/2019",
      "unidade": 'GAB-JAG',
      "link": 'https://sei.ifce.edu.br/sei/modulos/pesquisa/md_pesq_documento_consulta_externa.php?RkR_pcJjZVlGubyMvqtHr3aWiFYqB9yUArU3co5SFAOHD2Gw0DXT0Uvbo5vs9RZaiSsKjGYwp4TOMC9Q-wDPrA6qddkELM8LxLfLaLUO1qZaQX_foPBnzYwMGXbyiYOT'

    },
    

  ];

  List<Widget> getResumo(){
    List<Widget> lista = [];

    for (int i = 0; i < resumos.length; i++){
      lista.add(ListTile(
          trailing: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Text(resumos[i]["data"] , style: TextStyle(fontSize: 11),),
              ),
            ],
          ),
          title: Text(resumos[i]["descricao"]),
          subtitle: Text(resumos[i]["unidade"])
        )
      );
    }
    return lista;
  }

  List<Widget> getDetalhe(){
    List<Widget> lista = [];

    for (int i = 0; i < detalhes.length; i++){
      lista.add(ListTile(
        trailing: Column(
          children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 8),
                height: 30,
                child: Text(detalhes[i]["tipo"]),
              ),
            Text(detalhes[i]["data_registro"], style: TextStyle(fontSize: 11),),
            ],
          ),

          title:  InkWell(
            child: Text(detalhes[i]["documento"], style: TextStyle(color: Colors.blue),),
            onTap: () async{
              if (await canLaunch(detalhes[i]["link"])){
                await launch(detalhes[i]["link"]);
              }
            },
          ),
         /* */
          subtitle: Text(detalhes[i]["unidade"]),
        )
      );
    }
    return lista;
  }

  @override

  Widget build(BuildContext context) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(35),
          child: AppBar(
              backgroundColor: Colors.deepPurpleAccent,
              title: new Text(' '),
              centerTitle: true,
            ),
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
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Column(
                        children: getResumo()
                      ),
                    ),
                    SingleChildScrollView(
                      child: new Column(
                        children: getDetalhe()
                      ),
                    )
                  ],
                ),
              ),
            ],
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


/* [
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
                  ],*/


/* ListTile(
                      trailing: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Text("21/05/2019 15:14", style: TextStyle(fontSize: 11),),
                          ),
                        ],
                      ),
                      title: Text("Processo recebido na unidade"),
                      subtitle: Text("ARQUIVO-PROGEP"),
                    ),
                    ListTile(
                      trailing: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Text("21/05/2019 15:14", style: TextStyle(fontSize: 11),),
                          ),
                        ],
                      ),
                      title: Text("P "),
                      subtitle: Text("ARQUIVO-PROGEP"),
                    ),
                    ListTile(
                      trailing: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Text("21/05/2019 15:14", style: TextStyle(fontSize: 11),),
                          ),
                        ],
                      ),
                      title: Text(" recebido na unidade"),
                      subtitle: Text("ARQUIVO-PROGEP"),
                    ),
                    ListTile(
                      trailing: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text("10/10/2019",),
                          ),
                        ],
                      ),
                      title: Text("Atestado médico"),
                      subtitle: Text("23487.000815/2019-97"),
                    ), */
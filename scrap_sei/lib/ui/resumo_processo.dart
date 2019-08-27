
import 'package:flutter/material.dart';


class ResumoProcesso extends StatefulWidget {
  @override
  _ResumoProcessoState createState() => _ResumoProcessoState();
}

class _ResumoProcessoState extends State<ResumoProcesso> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text("Resumo do processo"),
        backgroundColor: Colors.deepPurple,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Table(
          children: [TableRow(
              children:[
                Text("Data/Hora", textAlign: TextAlign.center,),
                Text("Unidade", textAlign: TextAlign.center,),
                Text("Descrição", textAlign: TextAlign.center,),
              ]),
          ],
        ),
      ),

    );
  }
}

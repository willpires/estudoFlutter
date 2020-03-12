import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/componets/ItemTransferencia.dart';
import 'package:untitled1/model/transferencia.dart';
import 'formulario.dart';

class ListaTransferencias extends StatefulWidget{
  final List<Transferencia> _transferencias = List();

  @override
  State<StatefulWidget> createState() {
    return ListaTransferenciasState();
  }
}

class ListaTransferenciasState extends State<ListaTransferencias> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice) {
          final transferencia = widget._transferencias[indice];
          return ItemTransferencia(transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          })).then((transferenciaRecebida) {
          _atualiza(transferenciaRecebida);

          });
        },),
    );
  }

  void _atualiza(Transferencia transferencia){
    if(transferencia != null){
      setState(() {
        widget._transferencias.add(transferencia);

      });
    }
  }

}


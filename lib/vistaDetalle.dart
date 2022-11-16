import 'package:flutter/material.dart';
import 'package:semana11_networking_m/api/post.dart';

class vistaDetalle extends StatelessWidget {

  post p;

  vistaDetalle({
    required this.p
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalle de Post'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text("Detalle de Elemento: ",style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ListTile(
              title: Text("Titulo: "+this.p.title+"\n"),
              subtitle: Text("Contenido: "+this.p.body+"\n"),
              leading: Icon(Icons.local_post_office,size: 50,),
            ),
          ),
        ],
      ),
    );
  }
}

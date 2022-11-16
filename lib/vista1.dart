import 'package:flutter/material.dart';
import 'package:semana11_networking_m/api/service.dart';
import 'package:semana11_networking_m/vistaDetalle.dart';

class vista1 extends StatelessWidget {
  const vista1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Networking 1'),
      ),
      body: FutureBuilder(
        initialData: [],
        future: service.getPost(),
        builder: (context, AsyncSnapshot<List> snapshot){
          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder:(context,index){
                var posteo=snapshot.data![index];
                return ListTile(
                  title: Text('Id: '+posteo.id.toString()),
                  subtitle: Text('Titulo: '+posteo.title.toString()),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>vistaDetalle(p: posteo)));
                  },
                );
              },
          );
        },
      ),
    );
  }
}

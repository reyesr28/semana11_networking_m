import 'package:semana11_networking_m/api/post.dart';

class listPost{
  static List<post> listaPost(List<dynamic> listaJson) {
    List<post> listadoPost = [];
    if(listaJson!=null){
      for(var p in listaJson){
        final po=post.objJson(p);
        listadoPost.add(po);
      }
    }
    return listadoPost;
  }
}
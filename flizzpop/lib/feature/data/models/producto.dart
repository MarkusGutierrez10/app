class Producto{
  int? userId;
  int? id;
  String? title;
  String body = '';

  Producto(Map map){
    this.userId = map['userId'];
    this.id = map['id'];
    this.title = map['title'];
    this.body = map['body'];
  }
}
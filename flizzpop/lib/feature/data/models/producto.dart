class Producto{
  String? nombre;
  String? img;
  int? precio;
  String body = '';

  Producto(Map map){
    this.nombre = map['nombre'];
    this.img = map['img'];
    this.precio= map['precio'];
    this.body = map['body'];
  }
}
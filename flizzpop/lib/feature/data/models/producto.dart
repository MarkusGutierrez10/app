class Producto{
  String? nombre;
  String? imagen;
  int? precio;
  String? nombre2;
  String? imagen2;
  int? precio2;
  String? nombre3;
  String? imagen3;
  int? precio3;
  String? nombre4;
  String? imagen4;
  int? precio4;

  Producto(Map map){
    this.nombre = map['nombre'];
    this.imagen = map['imagen'];
    this.precio = map['precio'];
    this.nombre2 = map['nombre2'];
    this.imagen2 = map['imagen2'];
    this.precio2 = map['precio2'];
    this.nombre3 = map['nombre3'];
    this.imagen3 = map['imagen3'];
    this.precio3 = map['precio3'];
    this.nombre4 = map['nombre4'];
    this.imagen4 = map['imagen4'];
    this.precio4 = map['precio4'];
  }
}


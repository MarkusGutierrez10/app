class Producto{
  List<Ventas> products = [];

  Producto(Map map){
    List<dynamic> listaVentas = map['productos'];
    // Recorremos la lista y creamos un objeto Ventas para cada producto
    for (var item in listaVentas) {
      products.add(Ventas(
        nombre: item['nombre'],
        imagen: item['imagen'],
        precio: item['precio'],
      ));
    }
  }
}

class Ventas{
  String? nombre;
  String? imagen;
  int? precio;
  //Ventas(){
  Ventas({this.nombre, this.imagen, this.precio});
  


}
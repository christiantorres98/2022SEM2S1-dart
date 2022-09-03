void main() {

  int variable1 = 24;
  double variable2 = 1.5;
  var variable3 = 24;
  var variable4 = -1.5;
  num variable5 = 24;
  num variable6 = 1.5;

  // print(variable1);
  // print(variable2);
  // print(variable2.ceil());
  // print(variable2.floor());
  // print(variable4.abs());
  // print(variable1+variable2);

  String texto1 = "El calculo de la edad es ${15 + 8}";
  String texto2 = "la suma es igual a ${variable1 + variable5}";
  String texto3 = "Mi nombre es " + "christian";
  String texto4 = "Mi nombre es " "christian";
  String texto5 = texto1 + texto2;
  String texto6 = "el valor del texto es = $texto5";
  String texto7 = '''CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
   ....
);''';
  String texto8 = r'Texto con signos especiales \n esto es una prueba';

  // print(texto1);
  // print(texto2);
  // print(texto7);
  // print(texto8);

  //LISTAS

  var lista1 = ["mazda", "chevrolet", "kia"];
  var lista2 = ["mazda", "chevrolet", "kia", 123, true];
  List<String> lista3 = ["mazda", "chevrolet", "kia"];
  var lista4 = ["manzana", ...lista2];
  var lista5;
  var lista6 = ["uno", ...lista1, ...?lista5];

  // print(lista1);
  // print(lista4);
  // print(lista4.reversed);
  // print(lista6);

  var set1 = {"mazda","chevrolet", "kia", ...lista1};
  set1.add("jeep");
  set1.add("kia");
  print(set1);

  var map1 = {
    'red': 'rojo',
    'blue': 'azul'
  };
  map1 ['green'] = 'verde';
  print(map1);

}

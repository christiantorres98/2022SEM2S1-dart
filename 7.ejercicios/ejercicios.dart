

void main(){
// 1
  List<int> edades = [23, 34, 54, 45, 56, 12];
  edades.sort();
  print("Ejercicion #1");
  print("Menor edad: ${edades.first}");
  print("Mayor edad: ${edades.last}");
  print("Promedio de  edad: ${edades.reduce((a,b) => a+b)/edades.length}");

// 2
  List<int> list1 = [1,2,3,4,6,8,12];
  List<int> list2 = [1,2,4,12,13,14];
  List<int> list3 = [];

  list1.forEach((element){
    if (list2.contains(element)){
      list3.add(element);
    };
  });
  print("\nEjercicion #2");
  print("Lista 1: ${list1}");
  print("Lista 2: ${list2}");
  print("Elementos en comun: ${list3}");

// 3
  print("\nEjercicion #3");
  String cadena = "amo la pacifica paloma";
  String cadenaUnida = cadena.split(' ').join('').toLowerCase();
  print(cadenaUnida == cadenaUnida.split('').reversed.join('') ? 'La cadena es un palindromo': 'La cadena no es un palíndromo');
  
// 4
  List<int> lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> pares = [];
  lista.forEach((element){
    if(element.isEven){
      pares.add(element);
    }
  });
  print("\nEjercicion #4");
  print(pares);
  
// 5
  Artista artista = Artista("musica", 10, "Axl", "Rose", 50);
  Ingeniero ingeniero = Ingeniero("Sistemas", "Google", "Christian", "Torres", 23);
  Doctor doctor = Doctor("Neurocirugía", "Javier", "Torres", 40);
  Boxeador boxeador = Atleta(85, 190, 'Usain', 'Bolt', 45);
 
}

abstract class Persona{
  String nombre;
  String apellido;
  int edad;
  bool dibujar(){return false;}
  bool leer(){return false;}
  bool ejercitarse(){return false;}
  bool atleta(){return false;}
  
  Persona(this.nombre, this.apellido, this.edad);
}


class Artista extends Persona {
  
  String area;
  int exp;
  
  Artista(this.area, this.exp, String nombre, String apellido, int edad): super(nombre, apellido, edad);
  @override
  bool dibujar() {
    return true;
  }
}

class Ingeniero extends Persona {
  
  String area;
  String empresa;
  
  Ingeniero(this.area, this.empresa, String nombre, String apellido, int edad): super(nombre, apellido, edad);
  @override
  bool dibujar() {
    return true;
  }
  
  @override
  bool leer() {
    return true;
  }
}

class Doctor extends Persona {
  String especialidad;
  
  Doctor(this.especialidad, String nombre, String apellido, int edad): super(nombre, apellido, edad);
  @override
  bool leer() {
    return true;
  }
  @override
  bool ejercitarse() {
    return true;
  }
}

class Atleta extends Persona with Boxeador{
  int peso;
  int altura;
  
  Atleta(this.peso, this.altura, String nombre, String apellido, int edad): super(nombre, apellido, edad);
  
  @override
  bool ejercitarse() {
    return true;
  }
}

mixin Boxeador{
  int? victorias;
  int? derrotas;

  bool boxeador(){
    return true;
  }
}
void main() {
  Persona objetoPersona = Persona(nombre: "christian", apellido: "torres", edad: 23);
  Padre objetoPadre = Padre(1);
  print(objetoPadre.apellido);

  var objetoTaxi = Taxi();
  objetoTaxi.placa = "123";
  print(objetoTaxi.placa);
  print(objetoTaxi.tipoVehiculo());

  if (objetoTaxi is Taxi){
    print("Si es de tipo taxi");
  } else {
    print("No es de tipo taxi");
  }
}

class Persona{
  String nombre;
  String? apellido;
  int? edad;

  Persona({required this.nombre, required this.apellido, required this.edad});
  Persona.completo(this.nombre);
}

class Padre extends Persona {
  int hijos;

  // Padre(this.hijos):super(nombre: "chistian", apellido: "torres", edad: 23);
  Padre(this.hijos):super.completo("chistian");

}

abstract class Vehiculo {
  late String placa;
  bool vehiculoEncendido();
}

class Taxi extends Vehiculo with Terrestre, Acuatico {
  @override
  bool vehiculoEncendido() {
    return true;
  }

}

mixin Terrestre {
  int? llantas;
  int? kilometraje;

  tipoVehiculo() {
    return "Terrestre";
  }
}

mixin Acuatico {
  int? motores;

  tipoVehiculo() {
    return "Acuatico";
  }
}
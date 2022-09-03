void main() {
  print(obtenerNombre("Christian"));
  print(obtenerNombreApellido("Christian", "Torres"));
  print(obtenerNombreApellidoNameParameter(apellido: "Torres"));
}

String obtenerNombre(String valor){
  return 'mi nombre es $valor';
}

String obtenerNombreApellido(String nombre, String apellido){
  return 'mi nombre es $nombre $apellido';
}

String obtenerNombreApellidoNameParameter({String? nombre, required String apellido, int edad = 0}){
  return 'mi nombre es $nombre $apellido , edad $edad';
}

String obtenerNombreApellidoDos(String nombre, [String? apellido]){
  return 'mi nombre es $nombre $apellido';
}

var miFuncionAnonima = (String valor){
  return 'el valor es $valor';
};
void main() {
  try{
    String elNombre = obtenerNombre("leonardo");
    print(elNombre);
  } on FormatException catch(e){
      print("Se presentó una excepcion FormatException = $e");
  } on Exception catch(e){
      print("Se presentó una excepcion Exception = $e");
  } catch(e){
      print("Se presento una excepción general = $e");
  } finally{
      print("Este es el finally");
  }
}

String obtenerNombre(String nombre){
  if (nombre == 'christian'){
    throw FormatException("Este nombre no esta permitido");
  }
  if (nombre == 'leonardo'){
    throw Exception("Este nombre no esta permitido");
  }
  return 'Mi nombre es $nombre';
}

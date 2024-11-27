// Nombre: Isaac
// País: México
// Expriencia: Poquita
import Debug "mo:base/Debug";
import Nat8 "mo:base/Nat8";
import Iter "mo:base/Iter";

actor Nombre {
  // stable var nombreUsuario: Text = "";
  // stable var edadUsuario: Nat8 = 0;
  stable var contador: Int = 0;
  stable var datos: (Text, Nat8) = ("", 0);

  public query func obtenerFalso(): async Bool {
    let falso: Bool = false;
    let _caracter: Char = 'b';
    falso
  };

  public func leerDatosUsuario(nombre: Text, edad: Nat8): async Bool {
    if (edad >= 18) {
      let datosUsuario: (Text, Nat8) = (nombre, edad);
      datos := datosUsuario;
      Debug.print("Guardado exitosamente.");
      true
    } else {
      Debug.print("Lo siento, no puedes continuar.");
      false
    };
  };

  public func obtenerSaludos(indice: Nat): async Text {
    switch(indice) {
      case(0) {
        return "Hola";
      };
      case(1) {
        return "Adios";
      };
      case(2) {
        return "Que onda";
      };
      case _ {
        return "";
      };
    };
  };

  public func loopContador() {
    var cont: Nat8 = 0;
    // loop {
    //   cont += 1;
    //   Debug.print(Nat8.toText(cont));
    // } while(cont < 11);

    for (j in Iter.range(1, 10)) {
      cont += 1;
      Debug.print(Nat8.toText(cont));
    };

  };

  public func obtenerArreglo(indice: Nat): async Text {
    let arreglo: [Text] = ["Hola", "Adios", "Que onda"];
    
    let saludo: Text = arreglo[0] # " " # arreglo[2];
    Debug.print(saludo);

    return arreglo[indice];
  };

  public func aumentarContador(): async Int {
    //contador := contador + 1;
    contador += 1;
    return contador;
  };

  public func decrementarContador(): async Int {
    //contador := contador - 1;
    contador -= 1;
    return contador;
  };

  // public query func obtenerNombre(): async Text {
  //   return nombre;
  // };

  // public func guardarNombre(name: Text) {
  //   nombre := name;
  // };
};

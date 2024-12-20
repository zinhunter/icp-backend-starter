import Map "mo:map/Map";
import Text "mo:base/Text";
import Iter "mo:base/Iter";
import Debug "mo:base/Debug";
import { thash } "mo:map/Map";
import HashMap "mo:base/HashMap";

actor Crud {
  type Nombre = Text;
  type Perro = {
    nombre: Text;
    raza: Text;
    edad: Nat8;
    adoptado: Bool;
    color: Text;
  };

  let map = Map.new<Nombre, Perro>();
  let perritos = HashMap.HashMap<Nombre, Perro>(0, Text.equal, Text.hash);

  public func crearPerrito(perro: Perro) {
    Map.set(map, thash, perro.nombre, perro);
  };

  public func borrarPerrito(nombre: Nombre) {
    Map.delete(map, thash, nombre);
  };

  public func crearRegistro(nombre: Nombre, raza: Text, edad: Nat8) {
    let perrito = {nombre; raza; edad; adoptado= false; color="Blanco"};
    perritos.put(nombre, perrito);
    Debug.print("Registro creado exitosamente.");
  };

  public query func leerRegistro(nombre: Nombre): async ?Perro {
    perritos.get(nombre);
  };

  public query func leerRegistros(): async [(Nombre, Perro)] {
    let primerPaso: Iter.Iter<(Nombre, Perro)> = perritos.entries();
    let segundoPaso: [(Nombre, Perro)] = Iter.toArray(primerPaso);

    return segundoPaso;
  };

  public func guardarNombre(name: Text) {
    nombre := name;
  };
};


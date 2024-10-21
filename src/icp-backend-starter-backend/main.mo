import Nat "mo:base/Nat";
import Nat8 "mo:base/Nat8";
import Nat16 "mo:base/Nat16";
import Nat32 "mo:base/Nat32";
import Nat64 "mo:base/Nat64";
import Text "mo:base/Text";

actor {
  // Practica 2
  stable var contador : Nat8 = 0;

  public func aumentarContador() {
    contador += 1;
  };

  public query func obtenerContador() : async Nat8 {
    return contador;
  };

  // Practica 3
  public query func arreglos() : async Nat {
    // En C++ se declara asi:
    //int nums[3] = {10, 20, 30};

    let nums : [Nat] = [10, 20, 30];

    return nums[1];
  };

  public query func practica() : async Text {
    let numero_natural : Nat = 133;
    let numero_natural_8_bits : Nat8 = 8;
    let numero_natural_16_bits : Nat16 = 155;
    let numero_natural_32_bits : Nat32 = 10;
    let numero_natural_64_bits : Nat64 = 1;

    let saludo : Text = "Hola mundo!";

    return saludo;
  };
};
// Nombre:
// País:
// Expriencia: 
actor Nombre {
  var nombre: Text = "";

  public query func obtenerNombre(): async Text {
    return nombre;
  };

  public func guardarNombre(name: Text) {
    nombre := name;
  };
};


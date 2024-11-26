// Nombre: 
// País:
// Expriencia: 
actor Nombre {
  // Comentario
  var nombre: Text = "";

  public query func obtenerNombre(): async Text {
    return nombre;
  };

  public func guardarNombre(name: Text) {
    nombre := name;
  };
};


{ Unidad base para personas }
unit uPersona;

interface

type

  // Definición de registros y tipos enumerados


procedure CrearPersona(var persona: TPersona; Nombre, Apellido, DNI, FechaNacimiento: String; Rol: TRol);
procedure MostrarPersona(P: TPersona);

implementation

// Implementación de las funciones y procedimientos para la gestión de personas

end.
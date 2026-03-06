{ Unidad base para personas }
unit uPersona;

interface

type

    TRol= (rProfesor,rAlumno);

    TPersona= record // Definición de registros y tipos enumerados
      Nombre: string;
      Apellido: String;
      DNI: string;
      FechaNacimiento: string;
      Rol: TRol;
    end;

    PPersona= ^TPersona;


procedure CrearPersona(var persona: TPersona; Nombre, Apellido, DNI, FechaNacimiento: String; Rol: TRol);
procedure MostrarPersona(P: TPersona);

implementation

// Implementación de las funciones y procedimientos para la gestión de personas

   procedure CrearPersona(var persona: TPersona; Nombre, Apellido, DNI, FechaNacimiento: String; Rol: TRol);
   begin
     persona.nombre:= Nombre;
     persona.Apellido:= apellido;
     persona.DNI:= dni;
     persona.FechaNacimiento:= fechanacimiento;
     persona.Rol:= rol
   end;

   procedure MostrarPersona(P: TPersona);
   begin
     with P do begin
       writeln('Nombre: ',nombre);
       writeln('Apelliso: ',apellido);
       writeln('DNI: ',dni);
       writeln('Fecha de nacimiento: ',fechaNacimiento);
       writeln('Rol: ',rol);
     end;
   end;

end.

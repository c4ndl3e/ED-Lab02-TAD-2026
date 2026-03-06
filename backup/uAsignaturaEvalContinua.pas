{ Unidad para asignatura con evaluación continua }
unit uAsignaturaEvalContinua;

interface
uses uPersona;

const
  MAX_ALUMNOS = 30;

type

  // Definición de registros y tipos enumerados

  TAsignatura= record
    profesor: PPersona;
    alumnos: array [1..MAX_ALUMNOS] of PPersona;
    notasPrimerParcial: array [1..MAX_ALUMNOS] of real;
    notasSegundoParcial: array [1..MAX_ALUMNOS] of real;
    numAlumnos: integer;

  end;

procedure InicializarAsignatura(var A: TAsignatura; Prof: PPersona);
procedure AnadirAlumno(var A: TAsignatura; Alumno: PPersona);
procedure Evaluar(var A: TAsignatura; AlumnoDNI: string; Nota: Real; Parcial: Integer);
function CalcularNotaFinal(A: TAsignatura; AlumnoDNI: string): Real;

implementation

function BuscarAlumno(A: TAsignatura; AlumnoDNI: string): Integer;
var
  i: Integer;
begin
    BuscarAlumno := 0;
    i := 1;
    while (i <= A.NumAlumnos) and (A.Alumnos[i]^.DNI <> AlumnoDNI) do
        Inc(i);
    if i > A.NumAlumnos then
        i := -1;
    BuscarAlumno := i;
end;

// Implementación de las funciones y procedimientos para la asignatura con evaluación continua


procedure InicializarAsignatura(var A: TAsignatura; Prof: PPersona);
begin
    a.profesor:= prof;
    a.numAlumnos:= 1;
end;

procedure AnadirAlumno(var A: TAsignatura; Alumno: PPersona);
begin
    a.alumnos[a.alumnos.numAlumnos]:= alumno;
    inc(a.alumnos.numAlumnos);
end;


end.

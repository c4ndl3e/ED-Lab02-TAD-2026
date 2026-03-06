{ Unidad para asignatura con evaluación final }
unit uAsignaturaEvalFinal;

interface
uses uPersona;

const
  MAX_ALUMNOS = 30;

type
// Definición de registros y tipos enumerados

  TAsignatura= record
      profesor: PPersona;
      alumnos: array [1..MAX_ALUMNOS] of PPersona;
      notas: array [1..MAX_ALUMNOS] of real;
      numAlumnos: integer;
  end;


procedure InicializarAsignatura(var A: TAsignatura; Prof: PPersona);
procedure AnadirAlumno(var A: TAsignatura; Alumno: PPersona);
procedure Evaluar(var A: TAsignatura; AlumnoDNI: string; Nota: Real);
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


// Implementación de las funciones y procedimientos para la asignatura con evaluación final

procedure InicializarAsignatura(var A: TAsignatura; Prof: PPersona);
begin
    a.profesor:= prof;
    a.numAlumnos:= 0;
end;

procedure AnadirAlumno(var A: TAsignatura; Alumno: PPersona);
begin
    inc(a.numAlumnos);
    a.alumnos[a.numAlumnos]:= alumno;
end;

procedure Evaluar(var A: TAsignatura; AlumnoDNI: string; Nota: Real);
var
  i: integer;
begin
    i:= buscarAlumno(a,alumnoDni);
    a.notas[i]:= nota;
end;

function CalcularNotaFinal(A: TAsignatura; AlumnoDNI: string): Real;
var
  i: integer;
begin
    i:= buscarAlumno(alumnoDNI);
    calcularNotaFinal:= a.notas[i];
end;


end.

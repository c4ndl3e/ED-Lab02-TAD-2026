unit uComplejo;

interface

type
    TComplejo = record

    end;

procedure CrearComplejo(var c: TComplejo; r: Double; i: Double);
procedure SetParteReal(var c: TComplejo; r: Double);
procedure SetParteImaginaria(var c: TComplejo; i: Double);
function GetParteReal(c: TComplejo): Double;
function GetParteImaginaria(c: TComplejo): Double;
procedure Sumar(var res: TComplejo; c1, c2: TComplejo);
procedure Restar(var res: TComplejo; c1, c2: TComplejo);
procedure Multiplicar(var res: TComplejo; c1, c2: TComplejo);
procedure Dividir(var res: TComplejo; c1, c2: TComplejo);
procedure Potencia(var res: TComplejo; c: TComplejo; exponente: Integer);

implementation

procedure CrearComplejo(var c: TComplejo; r: Double; i: Double);
begin
    // To be implemented
end;

procedure SetParteReal(var c: TComplejo; r: Double);
begin
    // To be implemented
end;

procedure SetParteImaginaria(var c: TComplejo; i: Double);
begin
    // To be implemented
end;

function GetParteReal(c: TComplejo): Double;
begin
    // To be implemented
end;

function GetParteImaginaria(c: TComplejo): Double;
begin
    // To be implemented
end;

procedure Sumar(var res: TComplejo; c1, c2: TComplejo);
begin
    // To be implemented
end;

procedure Restar(var res: TComplejo; c1, c2: TComplejo);
begin
    // To be implemented
end;

procedure Multiplicar(var res: TComplejo; c1, c2: TComplejo);
begin
    // To be implemented
end;

procedure Dividir(var res: TComplejo; c1, c2: TComplejo);
var
begin
    // To be implemented
end;

procedure Potencia(var res: TComplejo; c: TComplejo; exponente: Integer);
begin
    // To be implemented
end;

end.
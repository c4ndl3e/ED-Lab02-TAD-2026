unit uComplejo;

interface

type
    TComplejo = record
      r: double;
      i: double;
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
  c.r:= r;
  c.i:= i;
  { with c begin
      r:= r;
      i:= i;
   end }
end;

procedure SetParteReal(var c: TComplejo; r: Double);
begin
    c.r:= r;
end;

procedure SetParteImaginaria(var c: TComplejo; i: Double);
begin
    c.i:= i;
end;

function GetParteReal(c: TComplejo): Double;
begin
    GetParteReal:= c.r;
end;

function GetParteImaginaria(c: TComplejo): Double;
begin
  GetParteImaginaria:= c.i;
end;

procedure Sumar(var res: TComplejo; c1, c2: TComplejo);
begin
    res.r:= c1.r + c2.r;
    res.i:= c1.i + c2.i;
end;

procedure Restar(var res: TComplejo; c1, c2: TComplejo);
begin
  res.r:= c1.r - c2.r;
  res.i:= c1.i - c2.i;
end;

procedure Multiplicar(var res: TComplejo; c1, c2: TComplejo);
begin
  res.r:= (c1.r * c2.r) - (c1.i * c2.i);
  res.i:= (c1.r * c2.i) + (c1.i * c2.r);
end;

procedure Dividir(var res: TComplejo; c1, c2: TComplejo);
begin
  res.r:= (((c1.r * c2.r) + (c1.i * c2.i)) / ( (c2.r * c2.r) + (c2.i * c2.i) ));
  res.i:= (((c1.i * c2.r) - (c1.r * c2.i)) / ( (c2.r * c2.r) + (c2.i * c2.i) ));
end;

procedure Potencia(var res: TComplejo; c: TComplejo; exponente: Integer);
var
  i: integer;
  real,imaginario: double;
  res_aux: TComplejo;
begin
  res_aux:= c;
  for i:= 1 to (exponente-1) do begin
    multiplicar(res,res_aux,c);
    res_aux:= res;
  end;
end;

end.

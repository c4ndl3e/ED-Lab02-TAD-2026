unit uPagoBizum;

interface

procedure IniciarPago;
procedure RealizarPago(numeroTelefono: string; monto: real);
function ValidarPago(numeroTelefono: string): boolean;

implementation

// Implementación de las funciones y procedimientos para el pago con Bizum

procedure IniciarPago;
begin
  write('Numero de telefono: ');
end;

procedure RealizarPago(numeroTelefono: string; monto: real);
begin
  writeln('Se va a realizar un pago de ',monto,' al numero de TELEFONO: ',numeroTelefono);
end;

function ValidarPago(numeroTelefono: string): boolean;
begin
  validarPago:= length(numeroTelefono) = 9;
end;

end.

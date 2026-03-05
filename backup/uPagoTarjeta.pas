unit uPagoTarjeta;

interface

procedure IniciarPago;
procedure RealizarPago(numeroTarjeta: string; monto: real);
function ValidarPago(numeroTarjeta: string): boolean;

implementation

// Implementación de las funciones y procedimientos para el pago con tarjeta de crédito

procedure IniciarPago;
begin
  write('Numero de tarjeta: ');
end;

procedure RealizarPago(numeroTarjeta: string; monto: real);
begin
  writeln('Se va a realizar un pago de ',monto,' al numero de TARJETA ',numeroTarjeta);
end;

function ValidarPago(numeroTarjeta: string): boolean;
begin
  validarPago:= length(numeroTarjeta) = 16;
end;

end.

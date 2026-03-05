unit uPagoTransferencia;

interface

procedure IniciarPago;
procedure RealizarPago(numeroCuenta: string; monto: real);
function ValidarPago(numeroCuenta: string): boolean;

implementation

// Implementación de las funciones y procedimientos para el pago por transferencia bancaria

procedure IniciarPago;
begin
  write('Numero de IBAN: ');
end;

procedure RealizarPago(numeroCuenta: string; monto: real);
begin
  writeln('Se va a realizar un pago de ',monto,' al numero de IBAN: ',numeroCuenta);
end;

function ValidarPago(numeroCuenta: string): boolean;
begin
  validarPago:= length(numeroCuenta) = 24;
end;

end.

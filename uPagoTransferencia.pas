unit uPagoTransferencia;

interface

procedure IniciarPago;
procedure RealizarPago(numeroCuenta: string; monto: real);
function ValidarPago(numeroCuenta: string): boolean;

implementation

// Implementación de las funciones y procedimientos para el pago por transferencia bancaria

end.

unit uPagoTarjeta;

interface

procedure IniciarPago;
procedure RealizarPago(numeroTarjeta: string; monto: real);
function ValidarPago(numeroTarjeta: string): boolean;

implementation

// Implementación de las funciones y procedimientos para el pago con tarjeta de crédito

end.
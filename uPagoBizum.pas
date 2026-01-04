unit uPagoBizum;

interface

procedure IniciarPago;
procedure RealizarPago(numeroTelefono: string; monto: real);
function ValidarPago(numeroTelefono: string): boolean;

implementation

// Implementación de las funciones y procedimientos para el pago con Bizum

end.